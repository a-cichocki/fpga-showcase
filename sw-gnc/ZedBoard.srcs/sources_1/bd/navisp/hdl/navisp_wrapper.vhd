--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
--Date        : Thu Feb  6 06:07:45 2020
--Host        : dt-205 running 64-bit major release  (build 9200)
--Command     : generate_target navisp_wrapper.bd
--Design      : navisp_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity navisp_wrapper is
  port (
    ALE : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLE : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GPOUT : out STD_LOGIC_VECTOR ( 12 downto 0 );
    IMU_RX : in STD_LOGIC;
    IMU_TX : out STD_LOGIC;
    NADQ : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    PJTAG_TCK : in STD_LOGIC;
    PJTAG_TDI : in STD_LOGIC;
    PJTAG_TDO : out STD_LOGIC;
    PJTAG_TMS : in STD_LOGIC;
    RB : in STD_LOGIC_VECTOR ( 0 to 0 );
    RE : out STD_LOGIC_VECTOR ( 0 to 0 );
    WE : out STD_LOGIC_VECTOR ( 0 to 0 );
    bFIOB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    iMAxI0 : in STD_LOGIC;
    iMaxClk : in STD_LOGIC
  );
end navisp_wrapper;

architecture STRUCTURE of navisp_wrapper is
  component navisp is
  port (
    PJTAG_TCK : in STD_LOGIC;
    PJTAG_TMS : in STD_LOGIC;
    PJTAG_TDI : in STD_LOGIC;
    PJTAG_TDO : out STD_LOGIC;
    iMAxI0 : in STD_LOGIC;
    iMaxClk : in STD_LOGIC;
    NADQ : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    CLE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALE : out STD_LOGIC_VECTOR ( 0 to 0 );
    RE : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE : out STD_LOGIC_VECTOR ( 0 to 0 );
    WE : out STD_LOGIC_VECTOR ( 0 to 0 );
    RB : in STD_LOGIC_VECTOR ( 0 to 0 );
    GPIN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IMU_RX : in STD_LOGIC;
    IMU_TX : out STD_LOGIC;
    bFIOB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    GPOUT : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component navisp;
begin
navisp_i: component navisp
     port map (
      ALE(0) => ALE(0),
      CE(0) => CE(0),
      CLE(0) => CLE(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIN(2 downto 0) => GPIN(2 downto 0),
      GPOUT(12 downto 0) => GPOUT(12 downto 0),
      IMU_RX => IMU_RX,
      IMU_TX => IMU_TX,
      NADQ(7 downto 0) => NADQ(7 downto 0),
      PJTAG_TCK => PJTAG_TCK,
      PJTAG_TDI => PJTAG_TDI,
      PJTAG_TDO => PJTAG_TDO,
      PJTAG_TMS => PJTAG_TMS,
      RB(0) => RB(0),
      RE(0) => RE(0),
      WE(0) => WE(0),
      bFIOB(7 downto 0) => bFIOB(7 downto 0),
      iMAxI0 => iMAxI0,
      iMaxClk => iMaxClk
    );
end STRUCTURE;
