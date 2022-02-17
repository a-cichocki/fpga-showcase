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
   
entity CLAMPClkDivider is
    port (
        clk,
        rst : in std_logic;
        clkout : out std_logic
    );
end;

architecture rtl of CLAMPClkDivider is
        signal clkout_i : std_logic;
begin
    process (clk, rst)
        variable v : std_logic_vector(4 downto 0) := "00000";
    begin
        if (rst = '1') then
            v := (others => '0');
            clkout_i <= '0';
        elsif (clk'event and clk = '1') then
            if (unsigned (v) = 20) then
                clkout_i <= not clkout_i;
                v := (others => '0');
            else
                v := unsigned(v) + 1;
                clkout_i <= clkout_i;
            end if;
        end if;
    end process;
end;
