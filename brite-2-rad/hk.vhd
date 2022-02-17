library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HKctrl is
    port (
        clk         : in std_logic;
        s1V2B_C_R   : in std_logic;
        s3V3B_C_R   : in std_logic;
        s1V2B_V_R   : in std_logic;
        TEMP1_R     : in std_logic;
        TEMP2_R     : in std_logic;
        ref         : out std_logic;
        rst         : in std_logic;
        interval    : in std_logic_vector(31 downto 0);
        V1V2        : out std_logic_vector(7 downto 0);
        C1V2        : out std_logic_vector(7 downto 0);
        C3V3        : out std_logic_vector(7 downto 0);
        TEMP1       : out std_logic_vector(7 downto 0);
        TEMP2       : out std_logic_vector(7 downto 0)
    );
end entity;

architecture prim of HKctrl is
    type TState is (stIdle, stMeasure, stSwitch);
    type TContext is record
        state           :   TState;
        timecount       :   natural;
        cursignal       :   natural;
        v1v2            :   std_logic_vector(7 downto 0);
        c1v2            :   std_logic_vector(7 downto 0);
        c3v3            :   std_logic_vector(7 downto 0);
        temp1           :   std_logic_vector(7 downto 0);
        temp2           :   std_logic_vector(7 downto 0);
    end record;
    signal r, rin : TContext;
    signal rstn : std_logic;
    signal digital_out : std_logic_vector(7 downto 0);
    signal curcmp, sample_rdy : std_logic;

begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
            r.state <= stIdle;
            r.timecount <= 0;
            r.cursignal <= 0;
            r.v1v2 <= (others => '0');
            r.c1v2 <= (others => '0');
            r.c3v3 <= (others => '0');
            r.temp1 <= (others => '0');
            r.temp2 <= (others => '0');
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;

    CMB: process (r, sample_rdy, interval, digital_out)
        variable v      : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle=>
                if (r.timecount >= to_integer(unsigned(interval))) then
                    v.state := stSwitch;
                    v.cursignal := 0;
                else
                    v.timecount := r.timecount + 1;
                end if;
                rstn <= '0';
            when stMeasure =>
                v.state := stSwitch;
                if (sample_rdy = '1') then
                    case (r.cursignal) is
                        when 0 =>
                            v.v1v2 := digital_out;
                        when 1 =>
                            v.c1v2 := digital_out;
                        when 2 =>
                            v.c3v3 := digital_out;
                        when 4 =>
                            v.temp1 := digital_out;
                        when 5 =>
                            v.temp2 := digital_out;
                        when others =>
                            null;
                    end case;
                    if (r.cursignal >= 5) then
                        v.timecount := 0;
                        v.state := stIdle;
                    else
                        v.cursignal := r.cursignal + 1;
                    end if;
                end if;
                rstn <= '1';
            when stSwitch =>
                if (sample_rdy = '0') then
                    v.state := stMeasure;
                end if;
                rstn <= '1';
            when others =>
                v.state := stIdle;
                rstn <= '0';
        end case;
        rin <= v;
    end process CMB;


    curcmp <=   s1V2B_V_R when r.cursignal = 0 else
                s1V2B_C_R when r.cursignal = 1 else
                s3V3B_C_R when r.cursignal = 2 else
                TEMP1_R when r.cursignal = 4 else
                TEMP2_R when r.cursignal = 5 else
                '0';

    adc : entity work.sigmadelta_adc port map (
        clk => clk,
        rstn => rstn,
        digital_out => digital_out,
        sample_rdy => sample_rdy,
        analog_out => ref,
        analog_cmp => curcmp
    );

    V1V2  <= r.v1v2;
    C1V2  <= r.c1v2;
    C3V3  <= r.c3v3;
    TEMP1  <= r.temp1;
    TEMP2  <= r.temp2;

end architecture;
