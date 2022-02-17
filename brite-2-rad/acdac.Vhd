--------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
-- Last Save Date:      23/07/2010
-- Design Name:         CHOMIK CTRL Module IP-Core
-- Description:         Sigma-delata DAC converter.
-- Dependencies:        None.
-- Comments:            Based on XAPP154 application note from Xilinx.
--------------------------------------------------------------------------------
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_signed.all;

entity acDAC is
    generic (
        Nbit            : integer := 8                                         -- resolution of DAC
    );
    port(
        clk,                                                                    -- clock signal
        rst           : in std_logic;                                         -- #reset signal
        DACout          : out std_logic;                                        -- one bit dac out
        DACval          : in std_logic_vector(Nbit - 1 downto 0)                -- DAC value
    );
end;

architecture behavioral of acDAC is
    signal
        SigmaLatch,
        SigmaAdder,
        DeltaAdder,
        DeltaB          : std_logic_vector(Nbit + 1 downto 0);
begin
    SEQ: process (clk, rst)
    begin
        if (rst = '1') then
            SigmaLatch(Nbit + 1) <= '1';
            SigmaLatch(Nbit downto 0) <= (others => '0');
            DACout <= '0';
        elsif (clk'event and clk = '1') then
            SigmaLatch <= SigmaAdder;
            DACout <= SigmaLatch(Nbit + 1);
        end if;
    end process SEQ;

    DeltaB(Nbit + 1 downto Nbit) <= (SigmaLatch(Nbit + 1) & SigmaLatch(Nbit + 1));
    DeltaB(Nbit - 1 downto 0) <= (others => '0');
    DeltaAdder <= ("00" & DACval) + DeltaB;
    SigmaAdder <= DeltaAdder + SigmaLatch;
end behavioral;

