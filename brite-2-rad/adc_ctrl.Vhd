library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        sclk    : out std_logic;
        dout    : in std_logic;
        din     : out std_logic;
        csn0    : out std_logic;
        csn1    : out std_logic;
        addr    : in std_logic_vector(3 downto 0);
        go      : in std_logic;
        data_val: out std_logic_vector(11 downto 0);
        clkdiv  : in std_logic_vector(7 downto 0);
        rdy     : out std_logic
    );
end entity adc;

architecture prim of adc is
    type TState is (stIdle,stSelect,stSclk1,stSclk0);
    type TContext is record
        state       :   TState;
        clkdiv      :   natural range 0 to 255;
        clkdivcount :   natural range 0 to 255;
        sclkcount   :   natural range 0 to 33;
        data_val    :   std_logic_vector(11 downto 0);
        addr_reg    :   std_logic_vector(7 downto 0);
    end record;

    signal r, rin   :   TContext;
    signal cs_n     : std_logic;

begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
           r.state <= stIdle;
           r.addr_reg <= (others => '0');
           r.data_val <= (others => '0');
           r.sclkcount <= 0;
           r.clkdivcount <= 0;
           r.clkdiv <= 0;
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;

    CMB: process (r, dout, addr, go, clkdiv)
        variable v      : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                if (go = '1') then
                    v.state := stSelect;
                    v.addr_reg(6 downto 3) := addr;
                    v.clkdiv := to_integer(unsigned(clkdiv));
                    v.clkdivcount := to_integer(unsigned(clkdiv));
                    v.sclkcount := 1;
                end if;
                din <= '0';
                rdy <= '1';
                cs_n <= '1';
                sclk <= '1';
            when stSelect =>
                if (r.clkdivcount = 0) then
                    v.clkdivcount := r.clkdiv;
                    v.state := stSclk0;
                    v.sclkcount := 1;
                else
                    v.clkdivcount := r.clkdivcount - 1;
                end if;
                din <= '0';
                rdy <= '0';
                cs_n <= '0';
                sclk <= '1';
            when stSclk0 =>
                if (r.clkdivcount = 0) then
                    v.state := stSclk1;
                    v.clkdivcount := r.clkdiv;
                else
                    v.clkdivcount := r.clkdivcount - 1;
                end if;
                if (r.sclkcount < 9) then
                    din <= r.addr_reg(8 - r.sclkcount);
                elsif (r.sclkcount < 17) then
                    din <= '0';
                elsif (r.sclkcount < 25) then
                    din <= r.addr_reg(24 - r.sclkcount);
                else
                    din <= '0';
                end if;
                rdy <= '0';
                cs_n <= '0';
                sclk <= '0';
            when stSclk1 =>
                if (r.clkdivcount = 0) then
                    v.sclkcount := r.sclkcount + 1;
                    v.clkdivcount := r.clkdiv;
                    v.state := stSclk0;
                    if (r.sclkcount > 20) then
                        v.data_val(32 - r.sclkcount)  := dout;
                    end if;
                    if (r.sclkcount = 32) then
                        v.state := stIdle;
                    end if;
                else
                    v.clkdivcount := r.clkdivcount - 1;
                end if;
                if (r.sclkcount < 9) then
                    din <= r.addr_reg(8 - r.sclkcount);
                elsif (r.sclkcount < 17) then
                    din <= '0';
                elsif (r.sclkcount < 25) then
                    din <= r.addr_reg(24 - r.sclkcount);
                else
                    din <= '0';
                end if;
                cs_n <= '0';
                rdy <= '0';
                sclk <= '1';
            when others =>
                v.state := stIdle;
                rdy <= '0';
                din <= '0';
                cs_n <= '1';
                sclk <= '1';
        end case;

        rin <= v;
    end process CMB;

    data_val <= r.data_val;
    csn0 <= cs_n when r.addr_reg(6) = '0' else '1';
    csn1 <= cs_n when r.addr_reg(6) = '1' else '1';
end architecture;
