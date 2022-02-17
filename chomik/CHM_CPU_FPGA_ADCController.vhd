--------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
-- Last Save Date:      24/02/2010
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         Step counter.
-- Dependencies:        None.
-- Comments:            DM#2 Delivery - VHDL Code ver 4.7
--------------------------------------------------------------------------------
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_arith.all;

entity ADCController is
    port (
        clk, rst                                                                       : in    std_logic;
        ADC_CLKDIV                                                                     : in    std_logic_vector(15 downto 0);
        DACVAL                                                                         : out   std_logic_vector(7 downto 0);
        adc_valid                                                                      : out   std_logic;
        volt5_cmp, th_dcdc_cmp, th_ctrl_cmp, depth_full_cmp, depth_mid_cmp, th_ham_cmp : in    std_logic;
        adc_volt5                                                                      : out   std_logic_vector(7 downto 0);
        adc_th_dcdc                                                                    : out   std_logic_vector(7 downto 0);
        adc_th_ctrl                                                                    : out   std_logic_vector(7 downto 0);
        adc_depth_full                                                                 : out   std_logic_vector(7 downto 0);
        adc_depth_mid                                                                  : out   std_logic_vector(7 downto 0);
        adc_th_ham                                                                     : out   std_logic_vector(7 downto 0)
    );
end ADCController;

architecture rtl of ADCController is
    type TState is (stIdle, stRising, stFalling);
    type TContext is record
        state               : TState;
        volt5_trigd         : std_logic;
        th_dcdc_trigd       : std_logic;
        th_ctrl_trigd       : std_logic;
        depth_full_trigd    : std_logic;
        depth_mid_trigd     : std_logic;
        th_ham_trigd        : std_logic;
        val_volt5           : std_logic_vector(7 downto 0);
        val_th_dcdc         : std_logic_vector(7 downto 0);
        val_th_ctrl         : std_logic_vector(7 downto 0);
        val_depth_full      : std_logic_vector(7 downto 0);
        val_depth_mid       : std_logic_vector(7 downto 0);
        val_th_ham          : std_logic_vector(7 downto 0);
        data_valid          : std_logic;
        CLKDELAY            : std_logic_vector(15 downto 0);
        CURDACVAL           : std_logic_vector(7 downto 0);
    end record;
    signal r, rin           : TContext;
begin
    SEQ:process (clk, rst )
    begin
        if (rst = '1') then
            r.volt5_trigd <= '0';
            r.th_dcdc_trigd <= '0';
            r.th_ctrl_trigd <= '0';
            r.depth_full_trigd <= '0';
            r.depth_mid_trigd <= '0';
            r.th_ham_trigd <= '0';
            r.val_volt5 <= (others =>'1');
            r.val_th_dcdc <= (others =>'1');
            r.val_th_ctrl <= (others =>'1');
            r.val_depth_full <= (others =>'1');
            r.val_depth_mid <= (others =>'1');
            r.val_th_ham <= (others =>'1');
            r.data_valid <= '0';
            r.CLKDELAY <= (5 => '1', others => '0');
            r.CURDACVAL <= (others => '0');
            r.state <= stIdle;
        elsif (clk'event and clk='1') then
            r <= rin;
        end if;
    end process;

    COMB: process (r, volt5_cmp, th_dcdc_cmp, th_ctrl_cmp, depth_full_cmp, depth_mid_cmp, th_ham_cmp, ADC_CLKDIV)
        variable v          : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                v.volt5_trigd := '0';
                v.th_dcdc_trigd := '0';
                v.th_ctrl_trigd := '0';
                v.depth_full_trigd := '0';
                v.depth_mid_trigd := '0';
                v.th_ham_trigd := '0';
                v.val_volt5 := (others =>'1');
                v.val_th_dcdc := (others =>'1');
                v.val_th_ctrl := (others =>'1');
                v.val_depth_full := (others =>'1');
                v.val_depth_mid := (others =>'1');
                v.val_th_ham := (others =>'1');
                v.CURDACVAL := (others =>'0');
                v.CLKDELAY := ADC_CLKDIV;
                v.state := stRising;
                v.data_valid := '0';
            when stRising =>
                if (unsigned(r.CLKDELAY) = 0) then
                    if (r.CURDACVAL = "11111111") then
                        v.state := stFalling;
                        v.data_valid := '1';
                        v.volt5_trigd := '0';
                        v.th_dcdc_trigd := '0';
                        v.th_ctrl_trigd := '0';
                        v.depth_full_trigd := '0';
                        v.depth_mid_trigd := '0';
                        v.th_ham_trigd := '0';
                    else
                        v.CURDACVAL := unsigned(r.CURDACVAL) + 1 ;
                    end if;
                    v.CLKDELAY := ADC_CLKDIV;
                else
                    v.CLKDELAY := unsigned(r.CLKDELAY) - 1;
                    v.data_valid := '0';
                end if;

                if (volt5_cmp = '0' and r.volt5_trigd = '0') then
                    v.volt5_trigd := '1';
                    v.val_volt5 := r.CURDACVAL;
                end if;
                if (th_dcdc_cmp = '0' and r.th_dcdc_trigd = '0' ) then
                    v.th_dcdc_trigd := '1';
                    v.val_th_dcdc := r.CURDACVAL;
                end if;
                if (th_ctrl_cmp = '0' and r.th_ctrl_trigd = '0' ) then
                    v.th_ctrl_trigd := '1';
                    v.val_th_ctrl := r.CURDACVAL;
                end if;
                if (depth_full_cmp = '0' and r.depth_full_trigd = '0' ) then
                    v.depth_full_trigd := '1';
                    v.val_depth_full := r.CURDACVAL;
                end if;
                if (depth_mid_cmp = '0' and r.depth_mid_trigd = '0' ) then
                    v.depth_mid_trigd := '1';
                    v.val_depth_mid := r.CURDACVAL;
                end if;
                if (th_ham_cmp = '0' and r.th_ham_trigd = '0' ) then
                    v.th_ham_trigd := '1';
                    v.val_th_ham := r.CURDACVAL;
                end if;
            when stFalling =>
                if (unsigned(r.CLKDELAY) = 0) then
                    if (r.CURDACVAL = "00000000") then
                        v.state := stRising;
                        v.data_valid := '0';        -- v.data_valid := '1';
                        v.volt5_trigd := '0';
                        v.th_dcdc_trigd := '0';
                        v.th_ctrl_trigd := '0';
                        v.depth_full_trigd := '0';
                        v.depth_mid_trigd := '0';
                        v.th_ham_trigd := '0';
                    else
                        v.CURDACVAL := unsigned(r.CURDACVAL) - 1 ;
                    end if;
                    v.CLKDELAY := ADC_CLKDIV;
                else
                    v.CLKDELAY := unsigned(r.CLKDELAY) - 1;
                    v.data_valid := '0';
                end if;

--                if (volt5_cmp = '1' and r.volt5_trigd = '0') then
--                    v.volt5_trigd := '1';
--                    v.val_volt5 := r.CURDACVAL;
--                end if;
--                if (th_dcdc_cmp = '1' and r.th_dcdc_trigd = '0' ) then
--                    v.th_dcdc_trigd := '1';
--                    v.val_th_dcdc := r.CURDACVAL;
--                end if;
--                if (th_ctrl_cmp = '1' and r.th_ctrl_trigd = '0' ) then
--                    v.th_ctrl_trigd := '1';
--                    v.val_th_ctrl := r.CURDACVAL;
--                end if;
--                if (depth_full_cmp = '1' and r.depth_full_trigd = '0' ) then
--                    v.depth_full_trigd := '1';
--                    v.val_depth_full := r.CURDACVAL;
--                end if;
--                if (depth_mid_cmp = '1' and r.depth_mid_trigd = '0' ) then
--                    v.depth_mid_trigd := '1';
--                    v.val_depth_mid := r.CURDACVAL;
--                end if;
--                if (th_ham_cmp = '1' and r.th_ham_trigd = '0' ) then
--                    v.th_ham_trigd := '1';
--                    v.val_th_ham := r.CURDACVAL;
--                end if;
            when others =>
                v.state := stIdle;
                v.data_valid := '0';
        end case;
        rin <= v;
    end process;
    DACVAL <= r.CURDACVAL;
    adc_volt5 <= r.val_volt5;
    adc_th_dcdc <= r.val_th_dcdc;
    adc_th_ctrl <= r.val_th_ctrl;
    adc_depth_full <= r.val_depth_full;
    adc_depth_mid <= r.val_depth_mid;
    adc_th_ham <= r.val_th_ham;
    adc_valid <= r.data_valid;
end;
