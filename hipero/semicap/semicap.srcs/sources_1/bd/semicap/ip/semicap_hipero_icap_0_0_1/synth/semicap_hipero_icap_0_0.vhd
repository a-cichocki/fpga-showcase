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

-- IP VLNV: cbkpan:hipero:hipero_icap:2.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY cbkpan;
USE cbkpan.hipero_icap;

ENTITY semicap_hipero_icap_0_0 IS
  PORT (
    icap_avail : OUT STD_LOGIC;
    icap_prdone : OUT STD_LOGIC;
    icap_prerror : OUT STD_LOGIC;
    icap_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fecc_crcerror : OUT STD_LOGIC;
    fecc_eccerrornotsingle : OUT STD_LOGIC;
    fecc_eccerrorsingle : OUT STD_LOGIC;
    fecc_endofframe : OUT STD_LOGIC;
    fecc_endofscan : OUT STD_LOGIC;
    fecc_far : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    icap_clk : IN STD_LOGIC;
    icap_csib : IN STD_LOGIC;
    icap_rdwrb : IN STD_LOGIC;
    icap_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fecc_farsel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END semicap_hipero_icap_0_0;

ARCHITECTURE semicap_hipero_icap_0_0_arch OF semicap_hipero_icap_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF semicap_hipero_icap_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT hipero_icap IS
    PORT (
      icap_avail : OUT STD_LOGIC;
      icap_prdone : OUT STD_LOGIC;
      icap_prerror : OUT STD_LOGIC;
      icap_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      fecc_crcerror : OUT STD_LOGIC;
      fecc_eccerrornotsingle : OUT STD_LOGIC;
      fecc_eccerrorsingle : OUT STD_LOGIC;
      fecc_endofframe : OUT STD_LOGIC;
      fecc_endofscan : OUT STD_LOGIC;
      fecc_far : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      icap_clk : IN STD_LOGIC;
      icap_csib : IN STD_LOGIC;
      icap_rdwrb : IN STD_LOGIC;
      icap_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      fecc_farsel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT hipero_icap;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF semicap_hipero_icap_0_0_arch: ARCHITECTURE IS "hipero_icap,Vivado 2018.3.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF semicap_hipero_icap_0_0_arch : ARCHITECTURE IS "semicap_hipero_icap_0_0,hipero_icap,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF semicap_hipero_icap_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF icap_clk: SIGNAL IS "XIL_INTERFACENAME icap_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN semicap_clk_100MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF icap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 icap_clk CLK";
BEGIN
  U0 : hipero_icap
    PORT MAP (
      icap_avail => icap_avail,
      icap_prdone => icap_prdone,
      icap_prerror => icap_prerror,
      icap_o => icap_o,
      fecc_crcerror => fecc_crcerror,
      fecc_eccerrornotsingle => fecc_eccerrornotsingle,
      fecc_eccerrorsingle => fecc_eccerrorsingle,
      fecc_endofframe => fecc_endofframe,
      fecc_endofscan => fecc_endofscan,
      fecc_far => fecc_far,
      icap_clk => icap_clk,
      icap_csib => icap_csib,
      icap_rdwrb => icap_rdwrb,
      icap_i => icap_i,
      fecc_farsel => fecc_farsel
    );
END semicap_hipero_icap_0_0_arch;
