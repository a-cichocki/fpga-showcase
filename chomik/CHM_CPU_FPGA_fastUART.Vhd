library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fastUART is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        rxd     : in std_logic;
        txd     : out std_logic;
        tx_rdy  : out std_logic;
        rx_rdy  : out std_logic;
        tx_stb  : in std_logic;
        brdiv_h,
        brdiv_l,
        txdata  : in std_logic_vector (7 downto 0);
        rxdata  : out std_logic_vector(7 downto 0)
    );
end entity;

architecture prim of fastUART is
    type TState is (stIdle, stShift);
    type TRXContext is record
        state           :   TState;
        data            :   std_logic_vector(7 downto 0);
        rdy_data        :   std_logic_vector(7 downto 0);
        bitcount        :   natural range 0 to 10;
        delaycount      :   natural range 0 to 65535;
    end record;
    type TTXContext is record
        state           :   TState;
        data            :   std_logic_vector(9 downto 0);
        bitcount        :   natural range 0 to 9;
        delaycount      :   natural range 0 to 65535;
    end record;
    signal rrx, rrxin   :   TRXContext;
    signal rtx, rtxin   :   TTXContext;
    signal delayvalue   :   natural range 0 to 65535;

begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
            rrx.state <= stIdle;
            rtx.state <= stIdle;
            rrx.data <= (others => '0');
            rtx.data <= (others => '0');
            rtx.bitcount <= 0;
            rrx.bitcount <= 0;
            rrx.rdy_data <= (others => '0');
        elsif (clk'event and clk = '1') then
            rrx <= rrxin;
            rtx <= rtxin;
        end if;
    end process SEQ;

    delayvalue <= to_integer(unsigned(brdiv_h & brdiv_l));
    rxdata <= rrx.rdy_data;

    RXCMB: process (rrx, rxd, delayvalue)
        variable v      : TRXContext;
    begin
        v := rrx;
        case (rrx.state) is
            when stIdle =>
                if (rxd = '0') then
                    v.state := stShift;
                    v.bitcount := 0;
                    v.delaycount := 0;
                end if;
                rx_rdy <= '1';
            when stShift =>
                if (rrx.bitcount = 0) then
                    if (rrx.delaycount >= delayvalue + 10) then
                        v.bitcount := 1;
                        v.delaycount := 0;
                    else
                        v.delaycount := rrx.delaycount + 1;
                    end if;
                else
                    if (rrx.delaycount >= delayvalue) then
                        if (rrx.bitcount >= 8) then
                            v.rdy_data := rrx.data;
                            v.state := stIdle;
                            v.delaycount := 0;
                            v.bitcount := 0;
                        else
                             v.delaycount := 0;
                             v.bitcount := rrx.bitcount + 1;
                        end if;
                    else
                        v.delaycount := rrx.delaycount + 1;
                    end if;
                    if (rrx.delaycount = 0 and rrx.bitcount < 9) then
                        v.data(rrx.bitcount - 1) := rxd;
                    end if;
                end if;
                rx_rdy <= '0';
            when others =>
                v.state := stIdle;
                rx_rdy <= '1';
        end case;
        rrxin <= v;
    end process RXCMB;

    TXCMB: process (rtx, txdata, delayvalue, tx_stb)
        variable v      : TTXContext;
    begin
        v := rtx;
        case (rtx.state) is
            when stIdle =>
                if (tx_stb = '1') then
                    v.state := stShift;
                    v.data(8 downto 1) := txdata;
                    v.data(0) := '0';
                    v.data(9) := '1';
                    v.bitcount := 0;
                    v.delaycount := 0;
                end if;
                tx_rdy <= '1';
                txd <= '1';
            when stShift =>
                if (rtx.delaycount >= delayvalue) then
                    v.bitcount := rtx.bitcount + 1;
                    if (rtx.bitcount = 9) then
                        v.state := stIdle;
                    end if;
                    v.delaycount := 0;
                else
                    v.delaycount := rtx.delaycount + 1;
                end if;
                txd <= rtx.data (rtx.bitcount);
                tx_rdy <= '0';
            when others =>
                v.state := stIdle;
                tx_rdy <= '1';
                txd <= '1';
        end case;
        rtxin <= v;
    end process TXCMB;
end architecture;


