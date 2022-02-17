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

-- IP VLNV: cbkpan:hipero:MaxAcqWrap:1.0
-- IP Revision: 16

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY cbk;
USE cbk.MaxAcqWrap;

ENTITY navisp_MaxAcqWrap_0_1 IS
  PORT (
    iRST_N : IN STD_LOGIC;
    iCLK : IN STD_LOGIC;
    iAHBM_hready : IN STD_LOGIC;
    iAHBM_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    iAHBM_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAHBM_htrans : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    oAHBM_haddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oAHBM_hwrite : OUT STD_LOGIC;
    oAHBM_hsel : OUT STD_LOGIC;
    oAHBM_hsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oAHBM_hburst : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oAHBM_hprot : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    oAHBM_hwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    iMAxI0 : IN STD_LOGIC;
    iMaxClk : IN STD_LOGIC;
    iRecEn : IN STD_LOGIC;
    iEn : IN STD_LOGIC;
    oIrq : OUT STD_LOGIC
  );
END navisp_MaxAcqWrap_0_1;

ARCHITECTURE navisp_MaxAcqWrap_0_1_arch OF navisp_MaxAcqWrap_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF navisp_MaxAcqWrap_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT MaxAcqWrap IS
    PORT (
      iRST_N : IN STD_LOGIC;
      iCLK : IN STD_LOGIC;
      iAHBM_hready : IN STD_LOGIC;
      iAHBM_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      iAHBM_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAHBM_htrans : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      oAHBM_haddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oAHBM_hwrite : OUT STD_LOGIC;
      oAHBM_hsel : OUT STD_LOGIC;
      oAHBM_hsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oAHBM_hburst : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oAHBM_hprot : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      oAHBM_hwdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      iMAxI0 : IN STD_LOGIC;
      iMaxClk : IN STD_LOGIC;
      iRecEn : IN STD_LOGIC;
      iEn : IN STD_LOGIC;
      oIrq : OUT STD_LOGIC
    );
  END COMPONENT MaxAcqWrap;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF navisp_MaxAcqWrap_0_1_arch: ARCHITECTURE IS "MaxAcqWrap,Vivado 2019.1.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF navisp_MaxAcqWrap_0_1_arch : ARCHITECTURE IS "navisp_MaxAcqWrap_0_1,MaxAcqWrap,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF navisp_MaxAcqWrap_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF oIrq: SIGNAL IS "XIL_INTERFACENAME oIrq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF oIrq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 oIrq INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hwdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HWDATA";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hprot: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HPROT";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hburst: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HBURST";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hsize: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_hwrite: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HWRITE";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_haddr: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HADDR";
  ATTRIBUTE X_INTERFACE_INFO OF oAHBM_htrans: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HTRANS";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hrdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HRDATA";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hresp: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HRESP";
  ATTRIBUTE X_INTERFACE_INFO OF iAHBM_hready: SIGNAL IS "xilinx.com:interface:ahblite:2.0 AHBM HREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iCLK: SIGNAL IS "XIL_INTERFACENAME iCLK, ASSOCIATED_BUSIF AHBM, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN navisp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iCLK: SIGNAL IS "xilinx.com:signal:clock:1.0 iCLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iRST_N: SIGNAL IS "XIL_INTERFACENAME iRST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iRST_N: SIGNAL IS "xilinx.com:signal:reset:1.0 iRST_N RST";
BEGIN
  U0 : MaxAcqWrap
    PORT MAP (
      iRST_N => iRST_N,
      iCLK => iCLK,
      iAHBM_hready => iAHBM_hready,
      iAHBM_hresp => iAHBM_hresp,
      iAHBM_hrdata => iAHBM_hrdata,
      oAHBM_htrans => oAHBM_htrans,
      oAHBM_haddr => oAHBM_haddr,
      oAHBM_hwrite => oAHBM_hwrite,
      oAHBM_hsel => oAHBM_hsel,
      oAHBM_hsize => oAHBM_hsize,
      oAHBM_hburst => oAHBM_hburst,
      oAHBM_hprot => oAHBM_hprot,
      oAHBM_hwdata => oAHBM_hwdata,
      iMAxI0 => iMAxI0,
      iMaxClk => iMaxClk,
      iRecEn => iRecEn,
      iEn => iEn,
      oIrq => oIrq
    );
END navisp_MaxAcqWrap_0_1_arch;
