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
   use ieee.numeric_std.all;

entity PFACQ is
    port (
        clk         : in    std_logic;
        adc0_cs     : out   std_logic;
        adc1_cs     : out   std_logic;
        go          : in std_logic;
        adc_addr    : out   std_logic_vector(2 downto 0);
        adc_data    : in    std_logic_vector(11 downto 0);
        adc_go      : out   std_logic;
        pf_pwm : out   std_logic_vector(7 downto 0);
        adc_rdy     : in    std_logic;
        irq         : out std_logic;
        rdy         : out std_logic;
        rst         : in    std_logic;
        COUNT       : out std_logic_vector(7 downto 0);
        PF1_CURR    : out   std_logic_vector(7 downto 0);
        PF1_VOLT    : out   std_logic_vector(7 downto 0);
        PF2_CURR    : out   std_logic_vector(7 downto 0);
        PF2_VOLT    : out   std_logic_vector(7 downto 0)
    );
end PFACQ;

architecture rtl of PFACQ is
    type TState is (stIdle, stCount, stCheckRdy, stRdy, stIrq);
    type TContext is record
        state               : TState;
        pf1_volt    : unsigned(11 downto 0);
        pf1_curr    : unsigned(11 downto 0);
        pf2_volt    : unsigned(11 downto 0);
        pf2_curr    : unsigned(11 downto 0);
        pwm         : unsigned (7 downto 0);
        addr        : unsigned (2 downto 0);
        irq         : std_logic;
    end record;
    signal r, rin           : TContext;
begin
    SEQ:process (clk, rst )
    begin
        if (rst = '1') then
            r.state <= stIdle;
            r.pf1_volt <= (others => '0');
            r.pf2_volt <= (others => '0');
            r.pf1_curr <= (others => '0');
            r.pf2_curr <= (others => '0');
            r.pwm <= (others => '1');
            r.addr <= (others => '0');
            r.irq <= '0';
        elsif (clk'event and clk='1') then
            r <= rin;
        end if;
    end process;

    COMB: process (r, go, adc_data, adc_rdy)
        variable v          : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                if (go = '1') then
                    v.state := stCheckRdy;
                    v.pwm := (others => '1');
                end if;
                adc_go <= '0';
            when stCheckRdy =>
                v.irq := '0';
                v.state := stCount;
                if (r.addr = 0) then
                    if (r.pwm = 0) then
                        v.state := stRdy;
                    else
                        v.pwm := r.pwm - 1;
                    end if;
                end if;
                adc_go <= '1';
            when stCount =>
                if (adc_rdy = '1') then
                    case r.addr is
                        when "000" =>     --PF1_V
                            v.pf1_volt := unsigned(adc_data);
                            v.addr := "001";
                        when "001" =>     --PF1_C
                            v.pf1_curr := unsigned(adc_data);
                            v.addr := "010";
                        when "010" =>     --PF2_V
                            v.pf2_volt := unsigned(adc_data);
                            v.addr := "011";
                        when "011" =>     --PF2_C
                            v.pf2_curr := unsigned(adc_data);
                            v.addr := "000";
                        when others =>
                            v.addr := "000";
                    end case;
                    v.irq := '1';
                    v.state := stCheckRdy;
                end if;
                adc_go <= '0';
            when stRdy =>
                v.state := stIdle;
                adc_go <= '0';
            when others =>
                v.state := stIdle;
                adc_go <= '0';
        end case;
        rin <= v;
    end process;

    rdy <= '1' when r.state = stRdy else '0';
    irq <= r.irq;
    pf_pwm <= (others => '0') when r.state = stIdle else std_logic_vector(r.pwm);
    adc_addr <= std_logic_vector(r.addr);
    adc0_cs <= '0';
    adc1_cs<= '1';
    count <= std_logic_vector(255 - r.pwm);
    pf1_volt <= std_logic_vector(r.pf1_volt(11 downto 4)) when r.pf1_volt(3 downto 0) < 8 else std_logic_vector(r.pf1_volt(11 downto 4) + 1);
    pf2_volt <= std_logic_vector(r.pf2_volt(11 downto 4)) when r.pf2_volt(3 downto 0) < 8 else std_logic_vector(r.pf2_volt(11 downto 4) + 1);
    pf1_curr <= std_logic_vector(r.pf1_curr(11 downto 4)) when r.pf1_curr(3 downto 0) < 8 else std_logic_vector(r.pf1_curr(11 downto 4) + 1);
    pf2_curr <= std_logic_vector(r.pf2_curr(11 downto 4)) when r.pf2_curr(3 downto 0) < 8 else std_logic_vector(r.pf2_curr(11 downto 4) + 1);

end;
