--------------------------------------------------------------------------------
-- File Name         :   Adc128s102ctrl.vhd
-- Project           :   ASIM
-- Drawing           :   ASIM-SRC-MXGS-CD-020
-- Title             :   PSU Controller FPGA Diagrams
-- Design unit name  :   Adc128s102ctrl
-- Authors           :   A.Cichocki
-- Company           :   Space Research Centre
-- Current revision  :   9(2014-10-17)
--------------------------------------------------------------------------------
-- Description       :   ADC128s102 Controller
--------------------------------------------------------------------------------

library Cbk;
    use Cbk.Adc_pkg.all;
library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

entity Adc128s102ctrl is
    generic (
        NumAdcs                  : integer range 1 to 2     := 1;
        TrackPrescaler           : natural                  := 0
    );
    port (
    -- Group :
        iAdcOn                   : in std_logic; --
        iAddr                    : in std_logic_vector(NumAdcs + 1 downto 0); --
        iClkDiv                  : in std_logic_vector(7 downto 0); --
        iDout                    : in std_logic; --
        iGo                      : in std_logic; --
        iRst_n                   : in std_logic; --
        oCs_n                    : out std_logic_vector(NumAdcs - 1 to 0); --
        oDataVal                 : out std_logic_vector(11 downto 0); --
        oDin                     : out std_logic; --
        oReady                   : out std_logic; --
        oSclk                    : out std_logic; --
    -- Group : !Basic signals
        iClk                     : in std_logic --
    );
end entity;

architecture Mixed of Adc128s102ctrl is

    -- Written manually : begin
    type State_t is (stOff, stIdle,stSelect,stSclk1,stSclk0);
    type Context_t is record
        State       : State_t;
        ClkDiv      : integer range 0 to 255;
        ClkDivCount : integer range 0 to 255;
        SclkCount   : integer range 0 to 33;
        DataVal     : std_logic_vector(11 downto 0);
        Addr        : std_logic_vector(7 downto 0);
        AdcNum      : integer range 0 to NumAdcs - 1;
        TrackCount  : natural;
    end record;

    signal Cs_n     : std_logic_vector(NumAdcs - 1 to 0);
    signal r, rIn   : Context_t;
    -- Written manually : end
begin
    -- Written manually : begin
    P_SEQ: process(iClk, iRst_n)
    begin
        if (iRst_n = '0') then
           r.State <= stOff;
           r.Addr <= (others => '0');
           r.DataVal <= (others => '0');
           r.SclkCount <= 0;
           r.ClkDivCount <= 0;
           r.ClkDiv <= 0;
           r.AdcNum <= 0;
           r.TrackCount <= 0;
        elsif (iClk'event and iClk = '1') then
            r <= rIn;
        end if;
    end process P_SEQ;

    P_CMB: process(r, iDout, iAddr, iGo, iClkDiv, iAdcOn)
        variable v      : Context_t;
    begin
        v := r;
        case (r.State) is
            when stOff =>
                if (iAdcOn = '1') then
                    v.state := stIdle;
                end if;
                oDin <= '0';
                oReady <= '0';
                Cs_n <= (others => '0');
                oSclk <= '0';
            when stIdle =>
                if (iGo = '1') then
                    v.State := stSelect;
                    v.Addr(5 downto 3) := iAddr(2 downto 0);
                    if NumAdcs = 1 then
                        v.AdcNum := 0;
                    else
                        v.AdcNum := to_integer(unsigned(iAddr(iAddr'length downto 3)));
                    end if;
                    v.ClkDiv := to_integer(unsigned(iClkDiv));
                    v.ClkDivCount := to_integer(unsigned(iClkDiv));
                    v.SclkCount := 1;
                end if;
                oDin <= '0';
                oReady <= '1';
                Cs_n <= (others => '1');
                oSclk <= '1';
            when stSelect =>
                if (r.clkdivcount = 0) then
                    v.clkdivcount := r.clkdiv;
                    v.state := stSclk0;
                    v.TrackCount := TrackPrescaler;
                    v.sclkcount := 1;
                else
                    v.clkdivcount := r.clkdivcount - 1;
                end if;
                oDin <= '0';
                oReady <= '1';
                Cs_n <= (others => '1');
                Cs_n(r.AdcNum) <= '0';
                oSclk <= '1';
            when stSclk0 =>
                if (r.clkdivcount = 0) then
                    if ((r.SclkCount > 16) and (r.SclkCount < 20) ) then
                        if (r.TrackCount = 0) then
                            v.TrackCount := TrackPrescaler;
                            v.state := stSclk1;
                            v.clkdivcount := r.clkdiv;
                        else
                            v.TrackCount := r.TrackCount - 1;
                        end if;
                    else
                        v.state := stSclk1;
                        v.clkdivcount := r.clkdiv;
                    end if;
                else
                    v.clkdivcount := r.clkdivcount - 1;
                end if;
                if (r.SclkCount < 9) then
                    oDin <= r.Addr(8 - r.SclkCount);
                elsif (r.SclkCount < 17) then
                    oDin <= '0';
                elsif (r.SclkCount < 25) then
                    oDin <= r.Addr(24 - r.SclkCount);
                else
                    oDin <= '0';
                end if;
                oReady <= '0';
                Cs_n <= (others => '1');
                Cs_n(r.AdcNum) <= '0';
                oSclk <= '0';
            when stSclk1 =>
                if (r.ClkDivCount = 0) then
                    v.SclkCount := r.SclkCount + 1;
                    v.ClkDivCount := r.ClkDiv;
                    v.State := stSclk0;
                    v.TrackCount := TrackPrescaler;
                    if (r.SclkCount > 20) then
                        v.DataVal(32 - r.SclkCount)  := iDout;
                    end if;
                    if (r.SclkCount = 32) then
                        v.State := stIdle;
                    end if;
                else
                    v.ClkDivCount := r.ClkDivCount - 1;
                end if;
                if (r.SclkCount < 9) then
                    oDin <= r.Addr(8 - r.SclkCount);
                elsif (r.SclkCount < 17) then
                    oDin <= '0';
                elsif (r.SclkCount < 25) then
                    oDin <= r.Addr(24 - r.SclkCount);
                else
                    oDin <= '0';
                end if;
                Cs_n <= (others => '1');
                Cs_n(r.AdcNum) <= '0';
                oReady <= '0';
                oSclk <= '1';
            when others =>
                v.State := stIdle;
                oReady <= '0';
                oDin <= '0';
                Cs_n <= (others => '1');
                oSclk <= '1';
        end case;
        if (iAdcOn = '0') then
            v.state := stOff;
        end if;
        rIn <= v;
    end process P_CMB;

    oCs_n <= Cs_n;
    oDataVal <= r.DataVal;

    -- Written manually : end
end architecture;