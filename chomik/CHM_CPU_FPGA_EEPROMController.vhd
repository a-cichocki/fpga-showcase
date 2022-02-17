--------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
-- Last Save Date:      24/02/2010
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         EEPROM Controller.
-- Dependencies:        None.
-- Comments:            DM#2 Delivery - VHDL Code ver 4.7
--------------------------------------------------------------------------------
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_arith.all;

entity EEPROM_Controller is
    port (
        clk,
        clkfast,
        rst,
        wb_we,
        wb_ack,
        sda_in,
        wr,
        sck_ext,
        en       : in std_logic;
        wb_addr  : in std_logic_vector(1 downto 0);
        addr_in,
        data_in  : in std_logic_vector(7 downto 0);
        sda_noe,
        sda_out,
        scl,
        rdy     : out std_logic;
        data_out    : out std_logic_vector(7 downto 0)
    );
end entity EEPROM_Controller;

architecture beh of EEPROM_Controller is
    constant control_write : std_logic_vector(7 downto 0) := "10100000";
    constant control_read : std_logic_vector(7 downto 0) := "10100001";
    signal go : std_logic;
    type Tstate is (stIdle, stRead, stWrite,stShift);
    type Tcontext is record
        state : Tstate;
        rdy     : std_logic;
        data    : std_logic_vector(7 downto 0);
        noe     : std_logic;
        sda     : std_logic;
        bitcount: natural range 0 to 63;
        addr    : std_logic_vector( 7 downto 0);
    end record;
    signal r, rin : Tcontext;
begin
    SEQ: process (clk, rst)
    begin
        if (rst ='1') then
            r.state <= stIdle;
            r.rdy <= '1';
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;
    COMB: process (r, go, sck_ext,data_in, sda_in, addr_in,wr)
        variable v : Tcontext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                if (go = '1') then
                    v.addr := addr_in;
                    v.data := data_in;
                    if (wr = '1') then
                        v.state := stWrite;
                    else
                        v.state := stRead;
                    end if;
                end if;
                v.bitcount := 0;
                v.rdy := '1';
            when stWrite =>
                if (r.bitcount = 0 and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif(r.bitcount = 1 and (sck_ext = '1')) then
                    v.sda := '0';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount >1) and (r.bitcount <10) and (sck_ext = '0')) then
                    v.sda := control_write(9-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 10) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount > 10) and (r.bitcount <19) and (sck_ext = '0')) then
                    v.sda := addr_in(18-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 19) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount > 19) and (r.bitcount <28) and (sck_ext = '0')) then
                    v.sda := data_in(27-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 28) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif (r.bitcount = 29 and (sck_ext = '0')) then
                    v.sda := '0';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif (r.bitcount = 30 and (sck_ext = '1')) then
                    v.sda := '1';
                    v.noe := '0';
                    v.state := stIdle;
                    v.bitcount := r.bitcount + 1;
                end if;
                v.rdy := '0';
            when stRead =>
                if (r.bitcount = 0 and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif(r.bitcount = 1 and (sck_ext = '1')) then
                    v.sda := '0';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount >1) and (r.bitcount <10) and (sck_ext = '0')) then
                    v.sda := control_write(9-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 10) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount > 10) and (r.bitcount <19) and (sck_ext = '0')) then
                    v.sda := addr_in(18-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 19) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.bitcount := r.bitcount + 1;
                    v.noe := '1';
                elsif (r.bitcount = 20 and (sck_ext = '0')) then
                    v.sda := '1';
                    v.bitcount := r.bitcount + 1;
                    v.noe := '0';
                elsif(r.bitcount = 21 and (sck_ext = '1')) then
                    v.sda := '0';
                    v.bitcount := r.bitcount + 1;
                    v.noe := '0';
                elsif ((r.bitcount > 21) and (r.bitcount <30) and (sck_ext = '0')) then
                    v.sda := control_read(29-r.bitcount);
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 30) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount > 30) and (r.bitcount <39) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.data(38-r.bitcount) := sda_in;
                    v.bitcount := r.bitcount + 1;
                elsif ((r.bitcount = 39) and (sck_ext = '0')) then
                    v.sda := '1';
                    v.noe := '1';
                    v.bitcount := r.bitcount + 1;
                elsif (r.bitcount = 40 and (sck_ext = '0')) then
                    v.sda := '0';
                    v.noe := '0';
                    v.bitcount := r.bitcount + 1;
                elsif (r.bitcount = 41 and (sck_ext = '1')) then
                    v.sda := '1';
                    v.noe := '0';
                    v.state := stIdle;
                    v.bitcount := r.bitcount + 1;
                    v.state := stIdle;
                end if;
                v.rdy := '0';
            when others =>
                v.state := stIdle;
                v.noe := '1';
                v.sda := '1';
                v.rdy := '1';
        end case;
        rin <= v;
    end process COMB;
    SEQF: process (clkfast, rst, r, en)
    begin
        if (rst ='1') then
            go <= '0';
        elsif (clkfast'event and clkfast = '1') then
            if (r.rdy = '1' and en ='1') then
                if (wb_addr(1)='1' and  wb_addr(0)='0' and wb_we = '1' and wb_ack = '1') then
                     go <= '1';
                else
                    go <= go;
                end if;
            else
                go <= '0';
            end if;
        end if;
    end process SEQF;
    scl <= sck_ext and (not r.rdy);
    sda_out <= r.sda;
    sda_noe <= r.noe;
    data_out <= r.data;
    rdy <= r.rdy;
end architecture beh;


