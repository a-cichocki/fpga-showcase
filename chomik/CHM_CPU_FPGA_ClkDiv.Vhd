library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NDIV is
    port (
        clk,
        rst     : in std_logic;
        stb     : out std_logic;
        div     : in std_logic_vector(15 downto 0)
    );
end entity;

architecture prim of NDIV is
    type Tstate is (stCount, stRdy);
    type TContext is record
        state    :  TState;
        cnt      :  natural range 0 to 65535;
    end record;
    signal r,rin: TContext;
begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
            r.cnt <= 0;
            r.state <= stCount;
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;

    CMB: process (r,div)
        variable v      : TContext;
    begin
        v := r;
        case (r.state) is
            when stCount =>
                if(r.cnt >= to_integer(unsigned(div))) then
                    v.cnt := 0;
                    v.state := stRdy;
                else
                    v.cnt := r.cnt + 1;
                end if;
                stb <= '0';
            when stRdy =>
                v.state:=stCount;
                stb <= '1';
            when others =>
                v.state:=stRdy;
                stb <= '0';
                v.cnt := 0;
        end case;
        rin <= v;
    end process CMB;
end architecture;
