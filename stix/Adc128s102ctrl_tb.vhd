--------------------------------------------------------------------------------
-- Project           :  
-- Drawing           :  
-- File title        :  
-- Design unit name  :  
-- Authors           :  
-- Company           :  
-- Current revision  :   (2014-11-20 12:14:06)
--------------------------------------------------------------------------------
-- Description       :  Testbench for entity Adc128s102ctrl
--------------------------------------------------------------------------------


library Cbk;
   use Cbk.Adc_pkg.all;
   use Cbk.Sim_pkg.all;
library ieee;
   use ieee.numeric_std.all;
   use ieee.std_logic_1164.all;
   use ieee.math_real.all;
   
library bitvis_util;
    use bitvis_util.types_pkg.all;
    use bitvis_util.string_methods_pkg.all;
    use bitvis_util.adaptations_pkg.all;
    use bitvis_util.methods_pkg.all;



entity Adc128s102ctrl_tb is
end entity;


architecture behavioral of Adc128s102ctrl_tb is
   -- constant CLK_PERIOD                  : natural := 10;
   constant CLK_PERIOD                 : natural := 27777;
   constant NUM_ADCS                   : integer := 1;
   constant TRACK_PRESCALER            : natural := 1;
   signal Clk                          : std_logic;
   signal Rst_n                        : std_logic;
   signal AdcOn                        : std_logic;
   signal Addr                         : std_logic_vector(2 downto 0);
   signal ClkDiv                       : std_logic_vector(7 downto 0) := x"02";
   signal Dout                         : std_logic;
   signal Go                           : std_logic;
   signal Cs_n                         : std_logic_vector(NUM_ADCS - 1 to 0);
   signal DataVal                      : std_logic_vector(11 downto 0);
   signal Din                          : std_logic;
   signal Ready                        : std_logic;
   signal Sclk                         : std_logic;
   signal Va                           : Real := 5.008;
   signal Channels                     : RealVector_t(0 to 7) := (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
   constant C_SCOPE                    : string  := C_TB_SCOPE_DEFAULT;
   
   
    -- clk cycle length: (TRACK_PRESCALER+1)*(iADCDIV)+1
    --                    1 * 2 + 1 = 3
    signal sclk_cycle_len : natural := 0;
    
    type tb_rec is record
        sclk_edge_cnt   : natural;
        clk_edge_cnt    : natural;
        sclk            : std_logic;
        sclk_cnt_finished : std_logic;
        sclk_cycle_len    : natural;
    end record;
    signal r, r_in    : tb_rec;
    
   
begin
    -- PSL default clock is rising_edge(clk);
    -------------------- RST requirements ---------------------------------------------------------
    -- ADC digital supply line must be held low at reset.
    -- not fool proof, checked on clk edge
    
    -- PSL DIGITAL_SUPPLY_ON_RST: assert never (rst_n = '0' and AdcOn /= '0');       
    -- PSL SCLK_RST: assert never (rst_n = '0' and Sclk /= '0');
    -- PSL DIN_RST: assert never (rst_n = '0' and Din /= '0');
    -- PSL CS_N_RST: assert never (rst_n = '0' and Cs_n /= "0");
    -- PSL READY_RST: assert never (rst_n = '0' and Ready /= '0');
    -- PSL DATA_VAL_RST: assert never (rst_n = '0' and DataVal /= x"000");
    
    --------------------Normal Operation requirements----------------------------------------------
    -- starting from next clock edge, oSclk, oCs_n, and oDin must stay low when iAdcOn = 0
    
    -- -- PSL endpoint adc_on_edge is {AdcOn;(not AdcOn)};
    -- PSL sequence sclk_low is (not sclk[+]);
    -- PSL sequence cs_n_low is (not cs_n[+]);
    -- PSL sequence din_low  is (not din[+]);
    -- PSL SCLK_LOW_AFTER_ADC_OFF: assert always ({not AdcOn} |=> sclk_low);
    -- PSL CS_N_LOW_AFTER_ADC_OFF: assert always ({not AdcOn} |=> cs_n_low);
    -- PSL DIN_LOW_AFTER_ADC_OFF: assert always ({not AdcOn} |=> din_low);
    
    -- oReady must go 0 next state after iGo goes 1
    -- PSL READY_AFTER_GO: assert always Go -> {not Ready};
    
    -- PSL sequence conversion is {Go[+]; not Ready[+]; Ready};
    
    -- Selected oCs_n bit must be held 0 all the time during both conversion cycles
    -- PSL CS_N_LOW_CONV: assert always conversion |-> (Cs_n(0));
    
    -- for each conversion oCs_n must be enabled for only one ADC 
    -- corresponding to msb of iAddr given at iGo = 1 (only for NumAdcs = 1)
    -- -- PSL CS_N_TO_IADDR_0: assert never (Cs_n(0) = '0' and Addr(3) = '1');
    -- -- PSL CS_N_TO_IADDR_1: assert never (Cs_n(1) = '0' and Addr(3) = '0');

    -- for each conversion oCs_n must be enabled for only one ADC corresponding to msb of iAddr given at iGo = 1 (only for NumAdcs = 1)
    -- PSL CLK_CYCLES_NUMBER: assert never ((r.sclk_cnt_finished = '1') and (r.sclk_edge_cnt /= r.sclk_cycle_len*2));
    
    -- -- PSL READY_AFTER_CONV is assert always
    
    -- clk cycle length: (TRACK_PRESCALER+1)*(iADCDIV)+1
    --                    1 * 2 + 1 = 3
    
    

    C_DUT : entity Cbk.Adc128s102ctrl
    generic map (
        NumAdcs                       => NUM_ADCS,
        TrackPrescaler                => TRACK_PRESCALER
    )
    port map (
        iAdcOn                        => AdcOn,
        iAddr                         => Addr,
        iClkDiv                       => ClkDiv,
        iDout                         => Dout,
        iGo                           => Go,
        iRst_n                        => Rst_n,
        oCs_n                         => Cs_n,
        oDataVal                      => DataVal,
        oDin                          => Din,
        oReady                        => Ready,
        oSclk                         => Sclk,
        iClk                          => Clk
    );
    
        -- iAddr                    : in std_logic_vector(NumAdcs + 1 downto 0); --

   
    C_ADC: adc128s102 
    port map(
        iVd         => AdcOn,
        iVa         => Va,
        iChannels   => Channels,
        iSclk       => Sclk,
        oDout       => Dout,
        iDin        => Din,
        iCs_n       => Cs_n(0)
    );

    P_Clk : process
    begin
        Clk <= '0';
        Wait for (CLK_PERIOD/2)*ps;
        Clk <= '1';
        Wait for (CLK_PERIOD/2)*ps;
    end process;
    
    
    -- process used to test clock cycles
    P_CLK_CNT: process(clk, cs_n(0))
    begin
        if(cs_n(0) = '1') then
            r.sclk_edge_cnt         <= 0;
            r.clk_edge_cnt          <= 0;
            r.sclk                  <= '0';
            r.sclk_cnt_finished     <= '0';
            r.sclk_cycle_len        <= 0;
        elsif(rising_edge(clk)) then
            r <= r_in;
        end if;
    end process;
    
    P_COMB_CNT: process(sclk, r, go)
        variable r_v : tb_rec;
    begin
        r_v := r;
        r_v.sclk := sclk;
        r_v.sclk_cnt_finished := '0';
        
        if(r.sclk = '1' and sclk = '0') then
            r_v.sclk_edge_cnt := r.sclk_edge_cnt + 1;
        end if;
        if(r_v.sclk_edge_cnt = 16) or (r_v.sclk_edge_cnt = 17) then
            r_v.clk_edge_cnt := r.clk_edge_cnt + 1;
        end if;
        
        if(r_v.sclk_edge_cnt = 18) then
            r_v.sclk_cnt_finished := '1';
        end if;
        
        if(go = '1') then
            r_v.sclk_cycle_len := (TRACK_PRESCALER+1)*(to_integer(unsigned(ClkDiv)) + 1);
        end if;
        
        r_in <= r_v;
    end process;
    

    P_STIMULUS : process
    
        procedure ReadFromADC(channel : in integer) is
            -- declarations
        begin
            -- sequential statements
            wait until rising_edge(clk);
                Go     <= '1';
                Addr   <= std_logic_vector(to_unsigned(channel,3));
                
                log(ID_LOG_HDR, "Read from ADC", C_SCOPE);
            wait for (CLK_PERIOD)*ps;
                Go     <= '0';
            wait until Ready = '1';
                -- iGo     <= '0';
                -- await_value(oDataVal, std_logic_vector(to_unsigned(integer(round(4095.0*(iChannels(channel)/iVa))),12)), 0 ns, 1 ms, WARNING, "Read from ADC");
                check_value(DataVal, std_logic_vector(to_unsigned(integer(round(4095.0*(Channels(channel)/Va))),12)), WARNING, "Read from ADC");
        end ReadFromADC;
    
        procedure SetChannelValue(channel : in natural;
                              value   : in real
                              ) is
        begin
            Channels(channel) <= value;
        end SetChannelValue;
    
    begin
        Go    <= '0';
        AdcOn <= '0';
        -- Sclk <= '1';
        Rst_n <= '0';
        Wait for (CLK_PERIOD*5/4)*ps;
        Rst_n <= '1';
        AdcOn <= '1';
        -- testing of oSclk / oCs_n / oDin going low after AdcOn = 0
        Wait for (CLK_PERIOD*2)*ps;
        AdcOn <= '0';
        
        -- turn Adc back ON
        Wait for (CLK_PERIOD*2)*ps;
        AdcOn <= '1';
                
        Wait for (CLK_PERIOD*2)*ps;
        SetChannelValue(0, 5.000);
        ReadFromADC(0);
        
        SetChannelValue(5, 3.000);
        ReadFromADC(5);

        /*
        
        SetChannelValue(1, 4.000);
        ReadFromADC(1);
        SetChannelValue(2, 3.000);
        ReadFromADC(2);
        SetChannelValue(3, 2.000);
        ReadFromADC(3);
        SetChannelValue(4, 1.000);
        ReadFromADC(4);
        
        SetChannelValue(6, 3.700);
        ReadFromADC(6);
        SetChannelValue(7, 3.751);
        ReadFromADC(7);
        */
        -- insert stimuli here
        Wait;
    end process;
end architecture;
   
