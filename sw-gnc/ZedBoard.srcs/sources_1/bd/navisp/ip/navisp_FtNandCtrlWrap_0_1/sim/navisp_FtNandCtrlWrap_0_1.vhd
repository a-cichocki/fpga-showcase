-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: cbkpan:hipero:FtNandCtrlWrap:1.0
-- IP Revision: 8

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY navisp_FtNandCtrlWrap_0_1 IS
  PORT (
    iRST_N : IN STD_LOGIC;
    iCLK : IN STD_LOGIC;
    iAHBM_hready : IN STD_LOGIC;
    iAHBM_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    iAHBM_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAHBM_hlock : OUT STD_LOGIC;
    oAHBM_htrans : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    oAHBM_haddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAHBM_hwrite : OUT STD_LOGIC;
    oAHBM_hsel : OUT STD_LOGIC;
    oAHBM_hsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oAHBM_hburst : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oAHBM_hprot : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    oAHBM_hwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    iAPB_psel : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    iAPB_penable : IN STD_LOGIC;
    iAPB_paddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    iAPB_pwrite : IN STD_LOGIC;
    iAPB_pwdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAPB_prdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAPB_pready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    oAPB_pslverr : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    bFIOA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    bFIOB : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oFCLE : OUT STD_LOGIC_VECTOR(1 TO 2);
    oFALE : OUT STD_LOGIC_VECTOR(1 TO 2);
    oFCE_N : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    oFWE_N : OUT STD_LOGIC_VECTOR(1 TO 2);
    oFRE_N : OUT STD_LOGIC_VECTOR(1 TO 2);
    iFBSY_N : IN STD_LOGIC_VECTOR(1 TO 2);
    oFWP_N : OUT STD_LOGIC_VECTOR(1 TO 2)
  );
END navisp_FtNandCtrlWrap_0_1;

ARCHITECTURE navisp_FtNandCtrlWrap_0_1_arch OF navisp_FtNandCtrlWrap_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF navisp_FtNandCtrlWrap_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT FtNandCtrlWrap IS
    PORT (
      iRST_N : IN STD_LOGIC;
      iCLK : IN STD_LOGIC;
      iAHBM_hready : IN STD_LOGIC;
      iAHBM_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      iAHBM_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAHBM_hlock : OUT STD_LOGIC;
      oAHBM_htrans : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      oAHBM_haddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAHBM_hwrite : OUT STD_LOGIC;
      oAHBM_hsel : OUT STD_LOGIC;
      oAHBM_hsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oAHBM_hburst : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oAHBM_hprot : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      oAHBM_hwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      iAPB_psel : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      iAPB_penable : IN STD_LOGIC;
      iAPB_paddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      iAPB_pwrite : IN STD_LOGIC;
      iAPB_pwdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAPB_prdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAPB_pready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      oAPB_pslverr : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      bFIOA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      bFIOB : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oFCLE : OUT STD_LOGIC_VECTOR(1 TO 2);
      oFALE : OUT STD_LOGIC_VECTOR(1 TO 2);
      oFCE_N : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      oFWE_N : OUT STD_LOGIC_VECTOR(1 TO 2);
      oFRE_N : OUT STD_LOGIC_VECTOR(1 TO 2);
      iFBSY_N : IN STD_LOGIC_VECTOR(1 TO 2);
      oFWP_N : OUT STD_LOGIC_VECTOR(1 TO 2)
    );
  END COMPONENT FtNandCtrlWrap;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF navisp_FtNandCtrlWrap_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF oAPB_pslverr: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PSLVERR";
  ATTRIBUTE X_INTERFACE_INFO OF oAPB_pready: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PREADY";
  ATTRIBUTE X_INTERFACE_INFO OF oAPB_prdata: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PRDATA";
  ATTRIBUTE X_INTERFACE_INFO OF iAPB_pwdata: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PWDATA";
  ATTRIBUTE X_INTERFACE_INFO OF iAPB_pwrite: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PWRITE";
  ATTRIBUTE X_INTERFACE_INFO OF iAPB_paddr: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PADDR";
  ATTRIBUTE X_INTERFACE_INFO OF iAPB_penable: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF iAPB_psel: SIGNAL IS "xilinx.com:interface:apb:1.0 APBS PSEL";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hwdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HWDATA";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hprot: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HPROT";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hburst: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HBURST";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hsize: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hwrite: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HWRITE";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_haddr: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HADDR";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_htrans: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HTRANS";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hlock: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HMASTLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hrdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HRDATA";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hresp: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HRESP";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hready: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iCLK: SIGNAL IS "XIL_INTERFACENAME iCLK, ASSOCIATED_RESET iRST_N, ASSOCIATED_BUSIF APBS:AHBM, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN navisp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iCLK: SIGNAL IS "xilinx.com:signal:clock:1.0 iCLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iRST_N: SIGNAL IS "XIL_INTERFACENAME iRST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iRST_N: SIGNAL IS "xilinx.com:signal:reset:1.0 iRST_N RST";
BEGIN
  U0 : FtNandCtrlWrap
    PORT MAP (
      iRST_N => iRST_N,
      iCLK => iCLK,
      iAHBM_hready => iAHBM_hready,
      iAHBM_hresp => iAHBM_hresp,
      iAHBM_hrdata => iAHBM_hrdata,
      oAHBM_hlock => oAHBM_hlock,
      oAHBM_htrans => oAHBM_htrans,
      oAHBM_haddr => oAHBM_haddr,
      oAHBM_hwrite => oAHBM_hwrite,
      oAHBM_hsel => oAHBM_hsel,
      oAHBM_hsize => oAHBM_hsize,
      oAHBM_hburst => oAHBM_hburst,
      oAHBM_hprot => oAHBM_hprot,
      oAHBM_hwdata => oAHBM_hwdata,
      iAPB_psel => iAPB_psel,
      iAPB_penable => iAPB_penable,
      iAPB_paddr => iAPB_paddr,
      iAPB_pwrite => iAPB_pwrite,
      iAPB_pwdata => iAPB_pwdata,
      oAPB_prdata => oAPB_prdata,
      oAPB_pready => oAPB_pready,
      oAPB_pslverr => oAPB_pslverr,
      bFIOA => bFIOA,
      bFIOB => bFIOB,
      oFCLE => oFCLE,
      oFALE => oFALE,
      oFCE_N => oFCE_N,
      oFWE_N => oFWE_N,
      oFRE_N => oFRE_N,
      iFBSY_N => iFBSY_N,
      oFWP_N => oFWP_N
    );
END navisp_FtNandCtrlWrap_0_1_arch;
