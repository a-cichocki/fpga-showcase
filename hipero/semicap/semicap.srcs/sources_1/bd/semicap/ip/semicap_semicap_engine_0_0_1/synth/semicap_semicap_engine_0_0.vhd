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

-- IP VLNV: cbkpan:hipero:semicap_engine:1.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY semicap_semicap_engine_0_0 IS
  PORT (
    iClk : IN STD_LOGIC;
    iConfigRegIrqMask : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    iConfigRegSemEn : IN STD_LOGIC;
    iHwIcapIrq : IN STD_LOGIC;
    iHwIcapRequest : IN STD_LOGIC;
    iMinVoterRegClearStrobe : IN STD_LOGIC;
    iMonitorRegByte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    iMonitorRegGetByte : IN STD_LOGIC;
    iMonitorRegPutByte : IN STD_LOGIC;
    iMonitorRegWriteStrobe : IN STD_LOGIC;
    iResetsReg : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    iRpMinVoter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    iRst_n : IN STD_LOGIC;
    iSemCapRequest : IN STD_LOGIC;
    iSemCmdBusy : IN STD_LOGIC;
    iSemMonRxRead : IN STD_LOGIC;
    iSemMonTxData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    iSemMonTxWrite : IN STD_LOGIC;
    iSemStatusclassification : IN STD_LOGIC;
    iSemStatuscorrection : IN STD_LOGIC;
    iSemStatusdetectOnly : IN STD_LOGIC;
    iSemStatusdiagnosticScan : IN STD_LOGIC;
    iSemStatusessential : IN STD_LOGIC;
    iSemStatusheartbeat : IN STD_LOGIC;
    iSemStatusinitialization : IN STD_LOGIC;
    iSemStatusinjection : IN STD_LOGIC;
    iSemStatusobservation : IN STD_LOGIC;
    iSemStatusuncorrectable : IN STD_LOGIC;
    iTblAddReg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    oConfigRegIrqMask : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oConfigRegSemEn : OUT STD_LOGIC;
    oDevInfoId : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oDevInfoVersionMajor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oDevInfoVersionMinor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oHwIcapEos : OUT STD_LOGIC;
    oHwIcapGrant : OUT STD_LOGIC;
    oHwIcapRelinquish : OUT STD_LOGIC;
    oIRq : OUT STD_LOGIC;
    oMinVoterRegCmpStat : OUT STD_LOGIC;
    oMinVoterRegTmrStat : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oMonitorRegByte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oMuxSemSelect : OUT STD_LOGIC;
    oRpReset_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    oSemAuxErrorCrEs : OUT STD_LOGIC;
    oSemAuxErrorCrNe : OUT STD_LOGIC;
    oSemAuxErrorUc : OUT STD_LOGIC;
    oSemCapGrant : OUT STD_LOGIC;
    oSemCapRelinquish : OUT STD_LOGIC;
    oSemCmdCode : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    oSemCmdStrobe : OUT STD_LOGIC;
    oSemFetchTblAddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    oSemMonRxData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    oSemMonRxEmpty : OUT STD_LOGIC;
    oSemMonTxFull : OUT STD_LOGIC;
    oStatusRegFifoCmdFull : OUT STD_LOGIC;
    oStatusRegFifoStatFull : OUT STD_LOGIC;
    oStatusRegMonEmpty : OUT STD_LOGIC;
    oStatusRegState : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    oTblAddReg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END semicap_semicap_engine_0_0;

ARCHITECTURE semicap_semicap_engine_0_0_arch OF semicap_semicap_engine_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF semicap_semicap_engine_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT semicap_engine IS
    PORT (
      iClk : IN STD_LOGIC;
      iConfigRegIrqMask : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      iConfigRegSemEn : IN STD_LOGIC;
      iHwIcapIrq : IN STD_LOGIC;
      iHwIcapRequest : IN STD_LOGIC;
      iMinVoterRegClearStrobe : IN STD_LOGIC;
      iMonitorRegByte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      iMonitorRegGetByte : IN STD_LOGIC;
      iMonitorRegPutByte : IN STD_LOGIC;
      iMonitorRegWriteStrobe : IN STD_LOGIC;
      iResetsReg : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      iRpMinVoter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      iRst_n : IN STD_LOGIC;
      iSemCapRequest : IN STD_LOGIC;
      iSemCmdBusy : IN STD_LOGIC;
      iSemMonRxRead : IN STD_LOGIC;
      iSemMonTxData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      iSemMonTxWrite : IN STD_LOGIC;
      iSemStatusclassification : IN STD_LOGIC;
      iSemStatuscorrection : IN STD_LOGIC;
      iSemStatusdetectOnly : IN STD_LOGIC;
      iSemStatusdiagnosticScan : IN STD_LOGIC;
      iSemStatusessential : IN STD_LOGIC;
      iSemStatusheartbeat : IN STD_LOGIC;
      iSemStatusinitialization : IN STD_LOGIC;
      iSemStatusinjection : IN STD_LOGIC;
      iSemStatusobservation : IN STD_LOGIC;
      iSemStatusuncorrectable : IN STD_LOGIC;
      iTblAddReg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      oConfigRegIrqMask : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oConfigRegSemEn : OUT STD_LOGIC;
      oDevInfoId : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oDevInfoVersionMajor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oDevInfoVersionMinor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oHwIcapEos : OUT STD_LOGIC;
      oHwIcapGrant : OUT STD_LOGIC;
      oHwIcapRelinquish : OUT STD_LOGIC;
      oIRq : OUT STD_LOGIC;
      oMinVoterRegCmpStat : OUT STD_LOGIC;
      oMinVoterRegTmrStat : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oMonitorRegByte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oMuxSemSelect : OUT STD_LOGIC;
      oRpReset_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      oSemAuxErrorCrEs : OUT STD_LOGIC;
      oSemAuxErrorCrNe : OUT STD_LOGIC;
      oSemAuxErrorUc : OUT STD_LOGIC;
      oSemCapGrant : OUT STD_LOGIC;
      oSemCapRelinquish : OUT STD_LOGIC;
      oSemCmdCode : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      oSemCmdStrobe : OUT STD_LOGIC;
      oSemFetchTblAddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      oSemMonRxData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      oSemMonRxEmpty : OUT STD_LOGIC;
      oSemMonTxFull : OUT STD_LOGIC;
      oStatusRegFifoCmdFull : OUT STD_LOGIC;
      oStatusRegFifoStatFull : OUT STD_LOGIC;
      oStatusRegMonEmpty : OUT STD_LOGIC;
      oStatusRegState : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      oTblAddReg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT semicap_engine;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF semicap_semicap_engine_0_0_arch: ARCHITECTURE IS "semicap_engine,Vivado 2019.1.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF semicap_semicap_engine_0_0_arch : ARCHITECTURE IS "semicap_semicap_engine_0_0,semicap_engine,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF semicap_semicap_engine_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF oRpReset_n: SIGNAL IS "XIL_INTERFACENAME oRpReset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF oRpReset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 oRpReset_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF oIRq: SIGNAL IS "XIL_INTERFACENAME oIRq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF oIRq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 oIRq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iRst_n: SIGNAL IS "XIL_INTERFACENAME iRst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iRst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 iRst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF iClk: SIGNAL IS "XIL_INTERFACENAME iClk, ASSOCIATED_RESET iRst_n:oRpReset_n, PHASE 0.000, CLK_DOMAIN semicap_clk_axi, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF iClk: SIGNAL IS "xilinx.com:signal:clock:1.0 iClk CLK";
BEGIN
  U0 : semicap_engine
    PORT MAP (
      iClk => iClk,
      iConfigRegIrqMask => iConfigRegIrqMask,
      iConfigRegSemEn => iConfigRegSemEn,
      iHwIcapIrq => iHwIcapIrq,
      iHwIcapRequest => iHwIcapRequest,
      iMinVoterRegClearStrobe => iMinVoterRegClearStrobe,
      iMonitorRegByte => iMonitorRegByte,
      iMonitorRegGetByte => iMonitorRegGetByte,
      iMonitorRegPutByte => iMonitorRegPutByte,
      iMonitorRegWriteStrobe => iMonitorRegWriteStrobe,
      iResetsReg => iResetsReg,
      iRpMinVoter => iRpMinVoter,
      iRst_n => iRst_n,
      iSemCapRequest => iSemCapRequest,
      iSemCmdBusy => iSemCmdBusy,
      iSemMonRxRead => iSemMonRxRead,
      iSemMonTxData => iSemMonTxData,
      iSemMonTxWrite => iSemMonTxWrite,
      iSemStatusclassification => iSemStatusclassification,
      iSemStatuscorrection => iSemStatuscorrection,
      iSemStatusdetectOnly => iSemStatusdetectOnly,
      iSemStatusdiagnosticScan => iSemStatusdiagnosticScan,
      iSemStatusessential => iSemStatusessential,
      iSemStatusheartbeat => iSemStatusheartbeat,
      iSemStatusinitialization => iSemStatusinitialization,
      iSemStatusinjection => iSemStatusinjection,
      iSemStatusobservation => iSemStatusobservation,
      iSemStatusuncorrectable => iSemStatusuncorrectable,
      iTblAddReg => iTblAddReg,
      oConfigRegIrqMask => oConfigRegIrqMask,
      oConfigRegSemEn => oConfigRegSemEn,
      oDevInfoId => oDevInfoId,
      oDevInfoVersionMajor => oDevInfoVersionMajor,
      oDevInfoVersionMinor => oDevInfoVersionMinor,
      oHwIcapEos => oHwIcapEos,
      oHwIcapGrant => oHwIcapGrant,
      oHwIcapRelinquish => oHwIcapRelinquish,
      oIRq => oIRq,
      oMinVoterRegCmpStat => oMinVoterRegCmpStat,
      oMinVoterRegTmrStat => oMinVoterRegTmrStat,
      oMonitorRegByte => oMonitorRegByte,
      oMuxSemSelect => oMuxSemSelect,
      oRpReset_n => oRpReset_n,
      oSemAuxErrorCrEs => oSemAuxErrorCrEs,
      oSemAuxErrorCrNe => oSemAuxErrorCrNe,
      oSemAuxErrorUc => oSemAuxErrorUc,
      oSemCapGrant => oSemCapGrant,
      oSemCapRelinquish => oSemCapRelinquish,
      oSemCmdCode => oSemCmdCode,
      oSemCmdStrobe => oSemCmdStrobe,
      oSemFetchTblAddr => oSemFetchTblAddr,
      oSemMonRxData => oSemMonRxData,
      oSemMonRxEmpty => oSemMonRxEmpty,
      oSemMonTxFull => oSemMonTxFull,
      oStatusRegFifoCmdFull => oStatusRegFifoCmdFull,
      oStatusRegFifoStatFull => oStatusRegFifoStatFull,
      oStatusRegMonEmpty => oStatusRegMonEmpty,
      oStatusRegState => oStatusRegState,
      oTblAddReg => oTblAddReg
    );
END semicap_semicap_engine_0_0_arch;
