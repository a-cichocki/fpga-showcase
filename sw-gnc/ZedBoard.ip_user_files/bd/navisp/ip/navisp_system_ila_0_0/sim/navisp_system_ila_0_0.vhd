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

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY navisp_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AHBLITE_haddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AHBLITE_hprot : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AHBLITE_htrans : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AHBLITE_hsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AHBLITE_hwrite : IN STD_LOGIC;
    SLOT_0_AHBLITE_hburst : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AHBLITE_hwdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AHBLITE_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AHBLITE_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AHBLITE_hmastlock : IN STD_LOGIC;
    SLOT_0_AHBLITE_hready : IN STD_LOGIC
  );
END navisp_system_ila_0_0;

ARCHITECTURE navisp_system_ila_0_0_arch OF navisp_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF navisp_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_1828 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AHBLITE_haddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AHBLITE_hprot : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AHBLITE_htrans : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AHBLITE_hsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AHBLITE_hwrite : IN STD_LOGIC;
      SLOT_0_AHBLITE_hburst : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AHBLITE_hwdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AHBLITE_hrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AHBLITE_hresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AHBLITE_hmastlock : IN STD_LOGIC;
      SLOT_0_AHBLITE_hready : IN STD_LOGIC
    );
  END COMPONENT bd_1828;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hready: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hmastlock: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HMASTLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hresp: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hrdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hwdata: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hburst: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hwrite: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWRITE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hsize: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_htrans: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HTRANS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_hprot: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AHBLITE_haddr: SIGNAL IS "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN navisp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_1828
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      SLOT_0_AHBLITE_haddr => SLOT_0_AHBLITE_haddr,
      SLOT_0_AHBLITE_hprot => SLOT_0_AHBLITE_hprot,
      SLOT_0_AHBLITE_htrans => SLOT_0_AHBLITE_htrans,
      SLOT_0_AHBLITE_hsize => SLOT_0_AHBLITE_hsize,
      SLOT_0_AHBLITE_hwrite => SLOT_0_AHBLITE_hwrite,
      SLOT_0_AHBLITE_hburst => SLOT_0_AHBLITE_hburst,
      SLOT_0_AHBLITE_hwdata => SLOT_0_AHBLITE_hwdata,
      SLOT_0_AHBLITE_hrdata => SLOT_0_AHBLITE_hrdata,
      SLOT_0_AHBLITE_hresp => SLOT_0_AHBLITE_hresp,
      SLOT_0_AHBLITE_hmastlock => SLOT_0_AHBLITE_hmastlock,
      SLOT_0_AHBLITE_hready => SLOT_0_AHBLITE_hready
    );
END navisp_system_ila_0_0_arch;
