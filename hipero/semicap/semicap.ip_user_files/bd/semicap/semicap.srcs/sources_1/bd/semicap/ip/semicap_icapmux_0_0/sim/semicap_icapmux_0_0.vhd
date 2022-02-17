-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:icapmux:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY semicap_icapmux_0_0 IS
  PORT (
    oIcapCsib : OUT STD_LOGIC;
    oIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oIcapRdWrb : OUT STD_LOGIC;
    iIcapAvail : IN STD_LOGIC;
    iIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    iIcapPrDone : IN STD_LOGIC;
    iIcapPrError : IN STD_LOGIC;
    oHwIcapAvail : OUT STD_LOGIC;
    oHwIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    iHwIcapCsib : IN STD_LOGIC;
    iHwIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    iHwIcapWr_n : IN STD_LOGIC;
    oSemIcapAvail : OUT STD_LOGIC;
    oSemIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oSemIcapPrDone : OUT STD_LOGIC;
    oSemIcapPrError : OUT STD_LOGIC;
    iSemIcapCsib : IN STD_LOGIC;
    iSemIcapWr_n : IN STD_LOGIC;
    iSemIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    iEngSemSelect : IN STD_LOGIC
  );
END semicap_icapmux_0_0;

ARCHITECTURE semicap_icapmux_0_0_arch OF semicap_icapmux_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF semicap_icapmux_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT icapmux IS
    PORT (
      oIcapCsib : OUT STD_LOGIC;
      oIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oIcapRdWrb : OUT STD_LOGIC;
      iIcapAvail : IN STD_LOGIC;
      iIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      iIcapPrDone : IN STD_LOGIC;
      iIcapPrError : IN STD_LOGIC;
      oHwIcapAvail : OUT STD_LOGIC;
      oHwIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      iHwIcapCsib : IN STD_LOGIC;
      iHwIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      iHwIcapWr_n : IN STD_LOGIC;
      oSemIcapAvail : OUT STD_LOGIC;
      oSemIcapI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oSemIcapPrDone : OUT STD_LOGIC;
      oSemIcapPrError : OUT STD_LOGIC;
      iSemIcapCsib : IN STD_LOGIC;
      iSemIcapWr_n : IN STD_LOGIC;
      iSemIcapO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      iEngSemSelect : IN STD_LOGIC
    );
  END COMPONENT icapmux;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF semicap_icapmux_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : icapmux
    PORT MAP (
      oIcapCsib => oIcapCsib,
      oIcapI => oIcapI,
      oIcapRdWrb => oIcapRdWrb,
      iIcapAvail => iIcapAvail,
      iIcapO => iIcapO,
      iIcapPrDone => iIcapPrDone,
      iIcapPrError => iIcapPrError,
      oHwIcapAvail => oHwIcapAvail,
      oHwIcapI => oHwIcapI,
      iHwIcapCsib => iHwIcapCsib,
      iHwIcapO => iHwIcapO,
      iHwIcapWr_n => iHwIcapWr_n,
      oSemIcapAvail => oSemIcapAvail,
      oSemIcapI => oSemIcapI,
      oSemIcapPrDone => oSemIcapPrDone,
      oSemIcapPrError => oSemIcapPrError,
      iSemIcapCsib => iSemIcapCsib,
      iSemIcapWr_n => iSemIcapWr_n,
      iSemIcapO => iSemIcapO,
      iEngSemSelect => iEngSemSelect
    );
END semicap_icapmux_0_0_arch;
