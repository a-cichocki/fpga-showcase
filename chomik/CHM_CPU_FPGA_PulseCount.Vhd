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

entity PulseCounter is
    port (
        clk         : in std_logic;
        rst         : in std_logic;
        pulse       : in std_logic;
        ov          : out std_logic;
        PulseCount  : out std_logic_vector(15 downto 0)
    );
end;

architecture rtl of PulseCounter is
    signal changed : bit;
    signal v : std_logic_vector(15 downto 0);
begin
    process (clk, rst, pulse)
    begin
        if (rst = '1') then
            ov <= '0';
            changed <= '0';
            v <= (others => '0');
        elsif (clk'event and clk = '1') then
            if ( pulse = '0' and changed = '0') then
                changed <= '1';
                if (unsigned(v) = 65535) then
                   v <= (others => '0');
                   ov <= '1';
                else
                    v <= unsigned(v) + 1;
                    ov <= '0';
                end if;
            elsif (pulse = '1' and changed = '1' ) then
                changed <= '0';
                ov <= '0';
                v <= v;
            else
                changed <= changed;
                ov <= '0';
                v <= v;
            end if;
        end if;
    end process;
    PulseCount <= v;
end;
