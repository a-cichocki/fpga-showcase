--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
--Date        : Tue Jul 30 15:53:03 2019
--Host        : dt-205 running 64-bit major release  (build 9200)
--Command     : generate_target semicap.bd
--Design      : semicap
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity semicap is
  port (
    AXI_ENG_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_ENG_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_ENG_arready : out STD_LOGIC;
    AXI_ENG_arvalid : in STD_LOGIC;
    AXI_ENG_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_ENG_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_ENG_awready : out STD_LOGIC;
    AXI_ENG_awvalid : in STD_LOGIC;
    AXI_ENG_bready : in STD_LOGIC;
    AXI_ENG_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_ENG_bvalid : out STD_LOGIC;
    AXI_ENG_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_ENG_rready : in STD_LOGIC;
    AXI_ENG_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_ENG_rvalid : out STD_LOGIC;
    AXI_ENG_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_ENG_wready : out STD_LOGIC;
    AXI_ENG_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_ENG_wvalid : in STD_LOGIC;
    AXI_HW_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_HW_arready : out STD_LOGIC;
    AXI_HW_arvalid : in STD_LOGIC;
    AXI_HW_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_HW_awready : out STD_LOGIC;
    AXI_HW_awvalid : in STD_LOGIC;
    AXI_HW_bready : in STD_LOGIC;
    AXI_HW_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_HW_bvalid : out STD_LOGIC;
    AXI_HW_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_HW_rready : in STD_LOGIC;
    AXI_HW_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_HW_rvalid : out STD_LOGIC;
    AXI_HW_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_HW_wready : out STD_LOGIC;
    AXI_HW_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_HW_wvalid : in STD_LOGIC;
    IRq : out STD_LOGIC;
    areset_n : in STD_LOGIC;
    clk_axi : in STD_LOGIC;
    iRpMinVoter_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oRpReset_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    spi_c_0 : out STD_LOGIC;
    spi_d_0 : out STD_LOGIC;
    spi_q_0 : in STD_LOGIC;
    spi_s_n_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of semicap : entity is "semicap,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=semicap,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=9,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of semicap : entity is "semicap.hwdef";
end semicap;

architecture STRUCTURE of semicap is
  component semicap_hipero_icap_0_0 is
  port (
    icap_avail : out STD_LOGIC;
    icap_prdone : out STD_LOGIC;
    icap_prerror : out STD_LOGIC;
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fecc_crcerror : out STD_LOGIC;
    fecc_eccerrornotsingle : out STD_LOGIC;
    fecc_eccerrorsingle : out STD_LOGIC;
    fecc_endofframe : out STD_LOGIC;
    fecc_endofscan : out STD_LOGIC;
    fecc_far : out STD_LOGIC_VECTOR ( 25 downto 0 );
    icap_clk : in STD_LOGIC;
    icap_csib : in STD_LOGIC;
    icap_rdwrb : in STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fecc_farsel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component semicap_hipero_icap_0_0;
  component semicap_axi_hwicap_0 is
  port (
    icap_clk : in STD_LOGIC;
    eos_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    cap_req : out STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cap_gnt : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    cap_rel : in STD_LOGIC
  );
  end component semicap_axi_hwicap_0;
  component semicap_hipero_sem_0 is
  port (
    status_heartbeat : out STD_LOGIC;
    status_initialization : out STD_LOGIC;
    status_observation : out STD_LOGIC;
    status_correction : out STD_LOGIC;
    status_classification : out STD_LOGIC;
    status_injection : out STD_LOGIC;
    status_essential : out STD_LOGIC;
    status_uncorrectable : out STD_LOGIC;
    status_diagnostic_scan : out STD_LOGIC;
    status_detect_only : out STD_LOGIC;
    fetch_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_txwrite : out STD_LOGIC;
    fetch_txfull : in STD_LOGIC;
    fetch_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_rxread : out STD_LOGIC;
    fetch_rxempty : in STD_LOGIC;
    fetch_tbladdr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_txwrite : out STD_LOGIC;
    monitor_txfull : in STD_LOGIC;
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_rxread : out STD_LOGIC;
    monitor_rxempty : in STD_LOGIC;
    command_strobe : in STD_LOGIC;
    command_busy : out STD_LOGIC;
    command_code : in STD_LOGIC_VECTOR ( 39 downto 0 );
    icap_clk : in STD_LOGIC;
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_prerror : in STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_req : out STD_LOGIC;
    fecc_eccerrornotsingle : in STD_LOGIC;
    fecc_eccerrorsingle : in STD_LOGIC;
    fecc_endofframe : in STD_LOGIC;
    fecc_endofscan : in STD_LOGIC;
    fecc_crcerror : in STD_LOGIC;
    fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aux_error_cr_ne : in STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    aux_error_uc : in STD_LOGIC
  );
  end component semicap_hipero_sem_0;
  component semicap_semicap_axi_0_0 is
  port (
    iMinVoterRegTmrStat : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iDevInfoId : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iDevInfoVersionMajor : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iDevInfoVersionMinor : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iMinVoterRegCmpStat : in STD_LOGIC;
    iStatusRegFifoCmdFull : in STD_LOGIC;
    iStatusRegFifoStatFull : in STD_LOGIC;
    iStatusRegMonEmpty : in STD_LOGIC;
    iStatusRegState : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oMinVoterRegClearStrobe : out STD_LOGIC;
    oMonitorRegGetByte : out STD_LOGIC;
    oMonitorRegPutByte : out STD_LOGIC;
    oMonitorRegWriteStrobe : out STD_LOGIC;
    oResetsReg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    iConfigRegIrqMask : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iConfigRegSemEn : in STD_LOGIC;
    iMonitorRegByte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iTblAddReg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oConfigRegIrqMask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    oConfigRegSemEn : out STD_LOGIC;
    oMonitorRegByte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oTblAddReg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component semicap_semicap_axi_0_0;
  component semicap_icapmux_0_0 is
  port (
    oIcapCsib : out STD_LOGIC;
    oIcapI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    oIcapRdWrb : out STD_LOGIC;
    iIcapAvail : in STD_LOGIC;
    iIcapO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iIcapPrDone : in STD_LOGIC;
    iIcapPrError : in STD_LOGIC;
    oHwIcapAvail : out STD_LOGIC;
    oHwIcapI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    iHwIcapCsib : in STD_LOGIC;
    iHwIcapO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iHwIcapWr_n : in STD_LOGIC;
    oSemIcapAvail : out STD_LOGIC;
    oSemIcapI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    oSemIcapPrDone : out STD_LOGIC;
    oSemIcapPrError : out STD_LOGIC;
    iSemIcapCsib : in STD_LOGIC;
    iSemIcapWr_n : in STD_LOGIC;
    iSemIcapO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iEngSemSelect : in STD_LOGIC
  );
  end component semicap_icapmux_0_0;
  component semicap_semicap_engine_0_0 is
  port (
    iClk : in STD_LOGIC;
    iConfigRegIrqMask : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iConfigRegSemEn : in STD_LOGIC;
    iHwIcapIrq : in STD_LOGIC;
    iHwIcapRequest : in STD_LOGIC;
    iMinVoterRegClearStrobe : in STD_LOGIC;
    iMonitorRegByte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iMonitorRegGetByte : in STD_LOGIC;
    iMonitorRegPutByte : in STD_LOGIC;
    iMonitorRegWriteStrobe : in STD_LOGIC;
    iResetsReg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iRpMinVoter : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iRst_n : in STD_LOGIC;
    iSemCapRequest : in STD_LOGIC;
    iSemCmdBusy : in STD_LOGIC;
    iSemMonRxRead : in STD_LOGIC;
    iSemMonTxData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iSemMonTxWrite : in STD_LOGIC;
    iSemStatusclassification : in STD_LOGIC;
    iSemStatuscorrection : in STD_LOGIC;
    iSemStatusdetectOnly : in STD_LOGIC;
    iSemStatusdiagnosticScan : in STD_LOGIC;
    iSemStatusessential : in STD_LOGIC;
    iSemStatusheartbeat : in STD_LOGIC;
    iSemStatusinitialization : in STD_LOGIC;
    iSemStatusinjection : in STD_LOGIC;
    iSemStatusobservation : in STD_LOGIC;
    iSemStatusuncorrectable : in STD_LOGIC;
    iTblAddReg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oConfigRegIrqMask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    oConfigRegSemEn : out STD_LOGIC;
    oDevInfoId : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oDevInfoVersionMajor : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oDevInfoVersionMinor : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oHwIcapEos : out STD_LOGIC;
    oHwIcapGrant : out STD_LOGIC;
    oHwIcapRelinquish : out STD_LOGIC;
    oIRq : out STD_LOGIC;
    oMinVoterRegCmpStat : out STD_LOGIC;
    oMinVoterRegTmrStat : out STD_LOGIC_VECTOR ( 2 downto 0 );
    oMonitorRegByte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oMuxSemSelect : out STD_LOGIC;
    oRpReset_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    oSemAuxErrorCrEs : out STD_LOGIC;
    oSemAuxErrorCrNe : out STD_LOGIC;
    oSemAuxErrorUc : out STD_LOGIC;
    oSemCapGrant : out STD_LOGIC;
    oSemCapRelinquish : out STD_LOGIC;
    oSemCmdCode : out STD_LOGIC_VECTOR ( 39 downto 0 );
    oSemCmdStrobe : out STD_LOGIC;
    oSemFetchTblAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    oSemMonRxData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oSemMonRxEmpty : out STD_LOGIC;
    oSemMonTxFull : out STD_LOGIC;
    oStatusRegFifoCmdFull : out STD_LOGIC;
    oStatusRegFifoStatFull : out STD_LOGIC;
    oStatusRegMonEmpty : out STD_LOGIC;
    oStatusRegState : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oTblAddReg : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component semicap_semicap_engine_0_0;
  component semicap_semicap_spihelper_0_0 is
  port (
    icap_clk : in STD_LOGIC;
    spi_c : out STD_LOGIC;
    spi_d : out STD_LOGIC;
    spi_s_n : out STD_LOGIC;
    spi_q : in STD_LOGIC;
    fetch_txdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_txwrite : in STD_LOGIC;
    fetch_txfull : out STD_LOGIC;
    fetch_rxdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_rxread : in STD_LOGIC;
    fetch_rxempty : out STD_LOGIC
  );
  end component semicap_semicap_spihelper_0_0;
  signal S00_AXI_0_1_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S00_AXI_0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_0_1_ARREADY : STD_LOGIC;
  signal S00_AXI_0_1_ARVALID : STD_LOGIC;
  signal S00_AXI_0_1_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S00_AXI_0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_0_1_AWREADY : STD_LOGIC;
  signal S00_AXI_0_1_AWVALID : STD_LOGIC;
  signal S00_AXI_0_1_BREADY : STD_LOGIC;
  signal S00_AXI_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_0_1_BVALID : STD_LOGIC;
  signal S00_AXI_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_RREADY : STD_LOGIC;
  signal S00_AXI_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_0_1_RVALID : STD_LOGIC;
  signal S00_AXI_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_WREADY : STD_LOGIC;
  signal S00_AXI_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_0_1_WVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal S_AXI_LITE_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal S_AXI_LITE_0_1_AWREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_AWVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_BREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_0_1_BVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_0_1_RREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE_0_1_RVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE_0_1_WREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_LITE_0_1_WVALID : STD_LOGIC;
  signal axi_hwicap_cap_req : STD_LOGIC;
  signal axi_hwicap_icap_csib : STD_LOGIC;
  signal axi_hwicap_icap_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_hwicap_icap_rdwrb : STD_LOGIC;
  signal axi_hwicap_ip2intc_irpt : STD_LOGIC;
  signal clk_100MHz_1 : STD_LOGIC;
  signal hipero_icap_0_fecc_crcerror : STD_LOGIC;
  signal hipero_icap_0_fecc_eccerrornotsingle : STD_LOGIC;
  signal hipero_icap_0_fecc_eccerrorsingle : STD_LOGIC;
  signal hipero_icap_0_fecc_endofframe : STD_LOGIC;
  signal hipero_icap_0_fecc_endofscan : STD_LOGIC;
  signal hipero_icap_0_fecc_far : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal hipero_icap_0_icap_avail : STD_LOGIC;
  signal hipero_icap_0_icap_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hipero_icap_0_icap_prdone : STD_LOGIC;
  signal hipero_icap_0_icap_prerror : STD_LOGIC;
  signal hipero_sem_cap_req : STD_LOGIC;
  signal hipero_sem_command_busy : STD_LOGIC;
  signal hipero_sem_fecc_farsel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hipero_sem_fetch_rxread : STD_LOGIC;
  signal hipero_sem_fetch_txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hipero_sem_fetch_txwrite : STD_LOGIC;
  signal hipero_sem_icap_csib : STD_LOGIC;
  signal hipero_sem_icap_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hipero_sem_icap_rdwrb : STD_LOGIC;
  signal hipero_sem_monitor_rxread : STD_LOGIC;
  signal hipero_sem_monitor_txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hipero_sem_monitor_txwrite : STD_LOGIC;
  signal hipero_sem_status_classification : STD_LOGIC;
  signal hipero_sem_status_correction : STD_LOGIC;
  signal hipero_sem_status_detect_only : STD_LOGIC;
  signal hipero_sem_status_diagnostic_scan : STD_LOGIC;
  signal hipero_sem_status_essential : STD_LOGIC;
  signal hipero_sem_status_heartbeat : STD_LOGIC;
  signal hipero_sem_status_initialization : STD_LOGIC;
  signal hipero_sem_status_injection : STD_LOGIC;
  signal hipero_sem_status_observation : STD_LOGIC;
  signal hipero_sem_status_uncorrectable : STD_LOGIC;
  signal iRpMinVoter_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal icapmux_0_oHwIcapAvail : STD_LOGIC;
  signal icapmux_0_oHwIcapI : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icapmux_0_oIcapCsib : STD_LOGIC;
  signal icapmux_0_oIcapI : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icapmux_0_oIcapRdWrb : STD_LOGIC;
  signal icapmux_0_oSemIcapAvail : STD_LOGIC;
  signal icapmux_0_oSemIcapI : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icapmux_0_oSemIcapPrDone : STD_LOGIC;
  signal icapmux_0_oSemIcapPrError : STD_LOGIC;
  signal s00_axi_aresetn_0_1 : STD_LOGIC;
  signal semicap_axi_0_oConfigRegIrqMask : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal semicap_axi_0_oConfigRegSemEn : STD_LOGIC;
  signal semicap_axi_0_oMinVoterRegClearStrobe : STD_LOGIC;
  signal semicap_axi_0_oMonitorRegByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_axi_0_oMonitorRegGetByte : STD_LOGIC;
  signal semicap_axi_0_oMonitorRegPutByte : STD_LOGIC;
  signal semicap_axi_0_oMonitorRegWriteStrobe : STD_LOGIC;
  signal semicap_axi_0_oResetsReg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal semicap_axi_0_oTblAddReg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal semicap_engine_0_oConfigRegIrqMask : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal semicap_engine_0_oConfigRegSemEn : STD_LOGIC;
  signal semicap_engine_0_oDevInfoId : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_engine_0_oDevInfoVersionMajor : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_engine_0_oDevInfoVersionMinor : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_engine_0_oHwIcapEos : STD_LOGIC;
  signal semicap_engine_0_oHwIcapGrant : STD_LOGIC;
  signal semicap_engine_0_oHwIcapRelinquish : STD_LOGIC;
  signal semicap_engine_0_oIRq : STD_LOGIC;
  signal semicap_engine_0_oMinVoterRegCmpStat : STD_LOGIC;
  signal semicap_engine_0_oMinVoterRegTmrStat : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal semicap_engine_0_oMonitorRegByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_engine_0_oMuxSemSelect : STD_LOGIC;
  signal semicap_engine_0_oRpReset_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal semicap_engine_0_oSemAuxErrorCrEs : STD_LOGIC;
  signal semicap_engine_0_oSemAuxErrorCrNe : STD_LOGIC;
  signal semicap_engine_0_oSemAuxErrorUc : STD_LOGIC;
  signal semicap_engine_0_oSemCapGrant : STD_LOGIC;
  signal semicap_engine_0_oSemCapRelinquish : STD_LOGIC;
  signal semicap_engine_0_oSemCmdCode : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal semicap_engine_0_oSemCmdStrobe : STD_LOGIC;
  signal semicap_engine_0_oSemFetchTblAddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal semicap_engine_0_oSemMonRxData : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_engine_0_oSemMonRxEmpty : STD_LOGIC;
  signal semicap_engine_0_oSemMonTxFull : STD_LOGIC;
  signal semicap_engine_0_oStatusRegFifoCmdFull : STD_LOGIC;
  signal semicap_engine_0_oStatusRegFifoStatFull : STD_LOGIC;
  signal semicap_engine_0_oStatusRegMonEmpty : STD_LOGIC;
  signal semicap_engine_0_oStatusRegState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal semicap_engine_0_oTblAddReg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal semicap_spihelper_0_fetch_rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal semicap_spihelper_0_fetch_rxempty : STD_LOGIC;
  signal semicap_spihelper_0_fetch_txfull : STD_LOGIC;
  signal semicap_spihelper_0_spi_c : STD_LOGIC;
  signal semicap_spihelper_0_spi_d : STD_LOGIC;
  signal semicap_spihelper_0_spi_s_n : STD_LOGIC;
  signal spi_q_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXI_ENG_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG ARREADY";
  attribute X_INTERFACE_INFO of AXI_ENG_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG ARVALID";
  attribute X_INTERFACE_INFO of AXI_ENG_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG AWREADY";
  attribute X_INTERFACE_INFO of AXI_ENG_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG AWVALID";
  attribute X_INTERFACE_INFO of AXI_ENG_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG BREADY";
  attribute X_INTERFACE_INFO of AXI_ENG_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG BVALID";
  attribute X_INTERFACE_INFO of AXI_ENG_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG RREADY";
  attribute X_INTERFACE_INFO of AXI_ENG_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG RVALID";
  attribute X_INTERFACE_INFO of AXI_ENG_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG WREADY";
  attribute X_INTERFACE_INFO of AXI_ENG_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG WVALID";
  attribute X_INTERFACE_INFO of AXI_HW_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_HW ARREADY";
  attribute X_INTERFACE_INFO of AXI_HW_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_HW ARVALID";
  attribute X_INTERFACE_INFO of AXI_HW_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_HW AWREADY";
  attribute X_INTERFACE_INFO of AXI_HW_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_HW AWVALID";
  attribute X_INTERFACE_INFO of AXI_HW_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_HW BREADY";
  attribute X_INTERFACE_INFO of AXI_HW_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_HW BVALID";
  attribute X_INTERFACE_INFO of AXI_HW_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_HW RREADY";
  attribute X_INTERFACE_INFO of AXI_HW_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_HW RVALID";
  attribute X_INTERFACE_INFO of AXI_HW_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_HW WREADY";
  attribute X_INTERFACE_INFO of AXI_HW_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_HW WVALID";
  attribute X_INTERFACE_INFO of areset_n : signal is "xilinx.com:signal:reset:1.0 RST.ARESET_N RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of areset_n : signal is "XIL_INTERFACENAME RST.ARESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk_axi : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_AXI CLK";
  attribute X_INTERFACE_PARAMETER of clk_axi : signal is "XIL_INTERFACENAME CLK.CLK_AXI, ASSOCIATED_BUSIF AXI_ENG:AXI_HW, ASSOCIATED_RESET areset_n, CLK_DOMAIN semicap_clk_axi, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of AXI_ENG_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG ARADDR";
  attribute X_INTERFACE_PARAMETER of AXI_ENG_araddr : signal is "XIL_INTERFACENAME AXI_ENG, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN semicap_clk_axi, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of AXI_ENG_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG ARPROT";
  attribute X_INTERFACE_INFO of AXI_ENG_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG AWADDR";
  attribute X_INTERFACE_INFO of AXI_ENG_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG AWPROT";
  attribute X_INTERFACE_INFO of AXI_ENG_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG BRESP";
  attribute X_INTERFACE_INFO of AXI_ENG_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG RDATA";
  attribute X_INTERFACE_INFO of AXI_ENG_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG RRESP";
  attribute X_INTERFACE_INFO of AXI_ENG_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG WDATA";
  attribute X_INTERFACE_INFO of AXI_ENG_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_ENG WSTRB";
  attribute X_INTERFACE_INFO of AXI_HW_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_HW ARADDR";
  attribute X_INTERFACE_PARAMETER of AXI_HW_araddr : signal is "XIL_INTERFACENAME AXI_HW, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN semicap_clk_axi, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of AXI_HW_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_HW AWADDR";
  attribute X_INTERFACE_INFO of AXI_HW_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_HW BRESP";
  attribute X_INTERFACE_INFO of AXI_HW_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_HW RDATA";
  attribute X_INTERFACE_INFO of AXI_HW_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_HW RRESP";
  attribute X_INTERFACE_INFO of AXI_HW_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_HW WDATA";
  attribute X_INTERFACE_INFO of AXI_HW_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_HW WSTRB";
begin
  AXI_ENG_arready <= S00_AXI_0_1_ARREADY;
  AXI_ENG_awready <= S00_AXI_0_1_AWREADY;
  AXI_ENG_bresp(1 downto 0) <= S00_AXI_0_1_BRESP(1 downto 0);
  AXI_ENG_bvalid <= S00_AXI_0_1_BVALID;
  AXI_ENG_rdata(31 downto 0) <= S00_AXI_0_1_RDATA(31 downto 0);
  AXI_ENG_rresp(1 downto 0) <= S00_AXI_0_1_RRESP(1 downto 0);
  AXI_ENG_rvalid <= S00_AXI_0_1_RVALID;
  AXI_ENG_wready <= S00_AXI_0_1_WREADY;
  AXI_HW_arready <= S_AXI_LITE_0_1_ARREADY;
  AXI_HW_awready <= S_AXI_LITE_0_1_AWREADY;
  AXI_HW_bresp(1 downto 0) <= S_AXI_LITE_0_1_BRESP(1 downto 0);
  AXI_HW_bvalid <= S_AXI_LITE_0_1_BVALID;
  AXI_HW_rdata(31 downto 0) <= S_AXI_LITE_0_1_RDATA(31 downto 0);
  AXI_HW_rresp(1 downto 0) <= S_AXI_LITE_0_1_RRESP(1 downto 0);
  AXI_HW_rvalid <= S_AXI_LITE_0_1_RVALID;
  AXI_HW_wready <= S_AXI_LITE_0_1_WREADY;
  IRq <= semicap_engine_0_oIRq;
  S00_AXI_0_1_ARADDR(4 downto 0) <= AXI_ENG_araddr(4 downto 0);
  S00_AXI_0_1_ARPROT(2 downto 0) <= AXI_ENG_arprot(2 downto 0);
  S00_AXI_0_1_ARVALID <= AXI_ENG_arvalid;
  S00_AXI_0_1_AWADDR(4 downto 0) <= AXI_ENG_awaddr(4 downto 0);
  S00_AXI_0_1_AWPROT(2 downto 0) <= AXI_ENG_awprot(2 downto 0);
  S00_AXI_0_1_AWVALID <= AXI_ENG_awvalid;
  S00_AXI_0_1_BREADY <= AXI_ENG_bready;
  S00_AXI_0_1_RREADY <= AXI_ENG_rready;
  S00_AXI_0_1_WDATA(31 downto 0) <= AXI_ENG_wdata(31 downto 0);
  S00_AXI_0_1_WSTRB(3 downto 0) <= AXI_ENG_wstrb(3 downto 0);
  S00_AXI_0_1_WVALID <= AXI_ENG_wvalid;
  S_AXI_LITE_0_1_ARADDR(8 downto 0) <= AXI_HW_araddr(8 downto 0);
  S_AXI_LITE_0_1_ARVALID <= AXI_HW_arvalid;
  S_AXI_LITE_0_1_AWADDR(8 downto 0) <= AXI_HW_awaddr(8 downto 0);
  S_AXI_LITE_0_1_AWVALID <= AXI_HW_awvalid;
  S_AXI_LITE_0_1_BREADY <= AXI_HW_bready;
  S_AXI_LITE_0_1_RREADY <= AXI_HW_rready;
  S_AXI_LITE_0_1_WDATA(31 downto 0) <= AXI_HW_wdata(31 downto 0);
  S_AXI_LITE_0_1_WSTRB(3 downto 0) <= AXI_HW_wstrb(3 downto 0);
  S_AXI_LITE_0_1_WVALID <= AXI_HW_wvalid;
  clk_100MHz_1 <= clk_axi;
  iRpMinVoter_0_1(3 downto 0) <= iRpMinVoter_0(3 downto 0);
  oRpReset_n_0(2 downto 0) <= semicap_engine_0_oRpReset_n(2 downto 0);
  s00_axi_aresetn_0_1 <= areset_n;
  spi_c_0 <= semicap_spihelper_0_spi_c;
  spi_d_0 <= semicap_spihelper_0_spi_d;
  spi_q_0_1 <= spi_q_0;
  spi_s_n_0 <= semicap_spihelper_0_spi_s_n;
axi_hwicap: component semicap_axi_hwicap_0
     port map (
      cap_gnt => semicap_engine_0_oHwIcapGrant,
      cap_rel => semicap_engine_0_oHwIcapRelinquish,
      cap_req => axi_hwicap_cap_req,
      eos_in => semicap_engine_0_oHwIcapEos,
      icap_avail => icapmux_0_oHwIcapAvail,
      icap_clk => clk_100MHz_1,
      icap_csib => axi_hwicap_icap_csib,
      icap_i(31 downto 0) => icapmux_0_oHwIcapI(31 downto 0),
      icap_o(31 downto 0) => axi_hwicap_icap_o(31 downto 0),
      icap_rdwrb => axi_hwicap_icap_rdwrb,
      ip2intc_irpt => axi_hwicap_ip2intc_irpt,
      s_axi_aclk => clk_100MHz_1,
      s_axi_araddr(8 downto 0) => S_AXI_LITE_0_1_ARADDR(8 downto 0),
      s_axi_aresetn => s00_axi_aresetn_0_1,
      s_axi_arready => S_AXI_LITE_0_1_ARREADY,
      s_axi_arvalid => S_AXI_LITE_0_1_ARVALID,
      s_axi_awaddr(8 downto 0) => S_AXI_LITE_0_1_AWADDR(8 downto 0),
      s_axi_awready => S_AXI_LITE_0_1_AWREADY,
      s_axi_awvalid => S_AXI_LITE_0_1_AWVALID,
      s_axi_bready => S_AXI_LITE_0_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_LITE_0_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_LITE_0_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_LITE_0_1_RDATA(31 downto 0),
      s_axi_rready => S_AXI_LITE_0_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_LITE_0_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_LITE_0_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_LITE_0_1_WDATA(31 downto 0),
      s_axi_wready => S_AXI_LITE_0_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_LITE_0_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_LITE_0_1_WVALID
    );
hipero_icap_0: component semicap_hipero_icap_0_0
     port map (
      fecc_crcerror => hipero_icap_0_fecc_crcerror,
      fecc_eccerrornotsingle => hipero_icap_0_fecc_eccerrornotsingle,
      fecc_eccerrorsingle => hipero_icap_0_fecc_eccerrorsingle,
      fecc_endofframe => hipero_icap_0_fecc_endofframe,
      fecc_endofscan => hipero_icap_0_fecc_endofscan,
      fecc_far(25 downto 0) => hipero_icap_0_fecc_far(25 downto 0),
      fecc_farsel(1 downto 0) => hipero_sem_fecc_farsel(1 downto 0),
      icap_avail => hipero_icap_0_icap_avail,
      icap_clk => clk_100MHz_1,
      icap_csib => icapmux_0_oIcapCsib,
      icap_i(31 downto 0) => icapmux_0_oIcapI(31 downto 0),
      icap_o(31 downto 0) => hipero_icap_0_icap_o(31 downto 0),
      icap_prdone => hipero_icap_0_icap_prdone,
      icap_prerror => hipero_icap_0_icap_prerror,
      icap_rdwrb => icapmux_0_oIcapRdWrb
    );
hipero_sem: component semicap_hipero_sem_0
     port map (
      aux_error_cr_es => semicap_engine_0_oSemAuxErrorCrEs,
      aux_error_cr_ne => semicap_engine_0_oSemAuxErrorCrNe,
      aux_error_uc => semicap_engine_0_oSemAuxErrorUc,
      cap_gnt => semicap_engine_0_oSemCapGrant,
      cap_rel => semicap_engine_0_oSemCapRelinquish,
      cap_req => hipero_sem_cap_req,
      command_busy => hipero_sem_command_busy,
      command_code(39 downto 0) => semicap_engine_0_oSemCmdCode(39 downto 0),
      command_strobe => semicap_engine_0_oSemCmdStrobe,
      fecc_crcerror => hipero_icap_0_fecc_crcerror,
      fecc_eccerrornotsingle => hipero_icap_0_fecc_eccerrornotsingle,
      fecc_eccerrorsingle => hipero_icap_0_fecc_eccerrorsingle,
      fecc_endofframe => hipero_icap_0_fecc_endofframe,
      fecc_endofscan => hipero_icap_0_fecc_endofscan,
      fecc_far(25 downto 0) => hipero_icap_0_fecc_far(25 downto 0),
      fecc_farsel(1 downto 0) => hipero_sem_fecc_farsel(1 downto 0),
      fetch_rxdata(7 downto 0) => semicap_spihelper_0_fetch_rxdata(7 downto 0),
      fetch_rxempty => semicap_spihelper_0_fetch_rxempty,
      fetch_rxread => hipero_sem_fetch_rxread,
      fetch_tbladdr(31 downto 0) => semicap_engine_0_oSemFetchTblAddr(31 downto 0),
      fetch_txdata(7 downto 0) => hipero_sem_fetch_txdata(7 downto 0),
      fetch_txfull => semicap_spihelper_0_fetch_txfull,
      fetch_txwrite => hipero_sem_fetch_txwrite,
      icap_avail => icapmux_0_oSemIcapAvail,
      icap_clk => clk_100MHz_1,
      icap_csib => hipero_sem_icap_csib,
      icap_i(31 downto 0) => hipero_sem_icap_i(31 downto 0),
      icap_o(31 downto 0) => icapmux_0_oSemIcapI(31 downto 0),
      icap_prdone => icapmux_0_oSemIcapPrDone,
      icap_prerror => icapmux_0_oSemIcapPrError,
      icap_rdwrb => hipero_sem_icap_rdwrb,
      monitor_rxdata(7 downto 0) => semicap_engine_0_oSemMonRxData(7 downto 0),
      monitor_rxempty => semicap_engine_0_oSemMonRxEmpty,
      monitor_rxread => hipero_sem_monitor_rxread,
      monitor_txdata(7 downto 0) => hipero_sem_monitor_txdata(7 downto 0),
      monitor_txfull => semicap_engine_0_oSemMonTxFull,
      monitor_txwrite => hipero_sem_monitor_txwrite,
      status_classification => hipero_sem_status_classification,
      status_correction => hipero_sem_status_correction,
      status_detect_only => hipero_sem_status_detect_only,
      status_diagnostic_scan => hipero_sem_status_diagnostic_scan,
      status_essential => hipero_sem_status_essential,
      status_heartbeat => hipero_sem_status_heartbeat,
      status_initialization => hipero_sem_status_initialization,
      status_injection => hipero_sem_status_injection,
      status_observation => hipero_sem_status_observation,
      status_uncorrectable => hipero_sem_status_uncorrectable
    );
icapmux_0: component semicap_icapmux_0_0
     port map (
      iEngSemSelect => semicap_engine_0_oMuxSemSelect,
      iHwIcapCsib => axi_hwicap_icap_csib,
      iHwIcapO(31 downto 0) => axi_hwicap_icap_o(31 downto 0),
      iHwIcapWr_n => axi_hwicap_icap_rdwrb,
      iIcapAvail => hipero_icap_0_icap_avail,
      iIcapO(31 downto 0) => hipero_icap_0_icap_o(31 downto 0),
      iIcapPrDone => hipero_icap_0_icap_prdone,
      iIcapPrError => hipero_icap_0_icap_prerror,
      iSemIcapCsib => hipero_sem_icap_csib,
      iSemIcapO(31 downto 0) => hipero_sem_icap_i(31 downto 0),
      iSemIcapWr_n => hipero_sem_icap_rdwrb,
      oHwIcapAvail => icapmux_0_oHwIcapAvail,
      oHwIcapI(31 downto 0) => icapmux_0_oHwIcapI(31 downto 0),
      oIcapCsib => icapmux_0_oIcapCsib,
      oIcapI(31 downto 0) => icapmux_0_oIcapI(31 downto 0),
      oIcapRdWrb => icapmux_0_oIcapRdWrb,
      oSemIcapAvail => icapmux_0_oSemIcapAvail,
      oSemIcapI(31 downto 0) => icapmux_0_oSemIcapI(31 downto 0),
      oSemIcapPrDone => icapmux_0_oSemIcapPrDone,
      oSemIcapPrError => icapmux_0_oSemIcapPrError
    );
semicap_axi_0: component semicap_semicap_axi_0_0
     port map (
      iConfigRegIrqMask(2 downto 0) => semicap_engine_0_oConfigRegIrqMask(2 downto 0),
      iConfigRegSemEn => semicap_engine_0_oConfigRegSemEn,
      iDevInfoId(7 downto 0) => semicap_engine_0_oDevInfoId(7 downto 0),
      iDevInfoVersionMajor(7 downto 0) => semicap_engine_0_oDevInfoVersionMajor(7 downto 0),
      iDevInfoVersionMinor(7 downto 0) => semicap_engine_0_oDevInfoVersionMinor(7 downto 0),
      iMinVoterRegCmpStat => semicap_engine_0_oMinVoterRegCmpStat,
      iMinVoterRegTmrStat(2 downto 0) => semicap_engine_0_oMinVoterRegTmrStat(2 downto 0),
      iMonitorRegByte(7 downto 0) => semicap_engine_0_oMonitorRegByte(7 downto 0),
      iStatusRegFifoCmdFull => semicap_engine_0_oStatusRegFifoCmdFull,
      iStatusRegFifoStatFull => semicap_engine_0_oStatusRegFifoStatFull,
      iStatusRegMonEmpty => semicap_engine_0_oStatusRegMonEmpty,
      iStatusRegState(3 downto 0) => semicap_engine_0_oStatusRegState(3 downto 0),
      iTblAddReg(31 downto 0) => semicap_engine_0_oTblAddReg(31 downto 0),
      oConfigRegIrqMask(2 downto 0) => semicap_axi_0_oConfigRegIrqMask(2 downto 0),
      oConfigRegSemEn => semicap_axi_0_oConfigRegSemEn,
      oMinVoterRegClearStrobe => semicap_axi_0_oMinVoterRegClearStrobe,
      oMonitorRegByte(7 downto 0) => semicap_axi_0_oMonitorRegByte(7 downto 0),
      oMonitorRegGetByte => semicap_axi_0_oMonitorRegGetByte,
      oMonitorRegPutByte => semicap_axi_0_oMonitorRegPutByte,
      oMonitorRegWriteStrobe => semicap_axi_0_oMonitorRegWriteStrobe,
      oResetsReg(2 downto 0) => semicap_axi_0_oResetsReg(2 downto 0),
      oTblAddReg(31 downto 0) => semicap_axi_0_oTblAddReg(31 downto 0),
      s00_axi_aclk => clk_100MHz_1,
      s00_axi_araddr(4 downto 0) => S00_AXI_0_1_ARADDR(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_0_1,
      s00_axi_arprot(2 downto 0) => S00_AXI_0_1_ARPROT(2 downto 0),
      s00_axi_arready => S00_AXI_0_1_ARREADY,
      s00_axi_arvalid => S00_AXI_0_1_ARVALID,
      s00_axi_awaddr(4 downto 0) => S00_AXI_0_1_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => S00_AXI_0_1_AWPROT(2 downto 0),
      s00_axi_awready => S00_AXI_0_1_AWREADY,
      s00_axi_awvalid => S00_AXI_0_1_AWVALID,
      s00_axi_bready => S00_AXI_0_1_BREADY,
      s00_axi_bresp(1 downto 0) => S00_AXI_0_1_BRESP(1 downto 0),
      s00_axi_bvalid => S00_AXI_0_1_BVALID,
      s00_axi_rdata(31 downto 0) => S00_AXI_0_1_RDATA(31 downto 0),
      s00_axi_rready => S00_AXI_0_1_RREADY,
      s00_axi_rresp(1 downto 0) => S00_AXI_0_1_RRESP(1 downto 0),
      s00_axi_rvalid => S00_AXI_0_1_RVALID,
      s00_axi_wdata(31 downto 0) => S00_AXI_0_1_WDATA(31 downto 0),
      s00_axi_wready => S00_AXI_0_1_WREADY,
      s00_axi_wstrb(3 downto 0) => S00_AXI_0_1_WSTRB(3 downto 0),
      s00_axi_wvalid => S00_AXI_0_1_WVALID
    );
semicap_engine_0: component semicap_semicap_engine_0_0
     port map (
      iClk => clk_100MHz_1,
      iConfigRegIrqMask(2 downto 0) => semicap_axi_0_oConfigRegIrqMask(2 downto 0),
      iConfigRegSemEn => semicap_axi_0_oConfigRegSemEn,
      iHwIcapIrq => axi_hwicap_ip2intc_irpt,
      iHwIcapRequest => axi_hwicap_cap_req,
      iMinVoterRegClearStrobe => semicap_axi_0_oMinVoterRegClearStrobe,
      iMonitorRegByte(7 downto 0) => semicap_axi_0_oMonitorRegByte(7 downto 0),
      iMonitorRegGetByte => semicap_axi_0_oMonitorRegGetByte,
      iMonitorRegPutByte => semicap_axi_0_oMonitorRegPutByte,
      iMonitorRegWriteStrobe => semicap_axi_0_oMonitorRegWriteStrobe,
      iResetsReg(2 downto 0) => semicap_axi_0_oResetsReg(2 downto 0),
      iRpMinVoter(3 downto 0) => iRpMinVoter_0_1(3 downto 0),
      iRst_n => s00_axi_aresetn_0_1,
      iSemCapRequest => hipero_sem_cap_req,
      iSemCmdBusy => hipero_sem_command_busy,
      iSemMonRxRead => hipero_sem_monitor_rxread,
      iSemMonTxData(7 downto 0) => hipero_sem_monitor_txdata(7 downto 0),
      iSemMonTxWrite => hipero_sem_monitor_txwrite,
      iSemStatusclassification => hipero_sem_status_classification,
      iSemStatuscorrection => hipero_sem_status_correction,
      iSemStatusdetectOnly => hipero_sem_status_detect_only,
      iSemStatusdiagnosticScan => hipero_sem_status_diagnostic_scan,
      iSemStatusessential => hipero_sem_status_essential,
      iSemStatusheartbeat => hipero_sem_status_heartbeat,
      iSemStatusinitialization => hipero_sem_status_initialization,
      iSemStatusinjection => hipero_sem_status_injection,
      iSemStatusobservation => hipero_sem_status_observation,
      iSemStatusuncorrectable => hipero_sem_status_uncorrectable,
      iTblAddReg(31 downto 0) => semicap_axi_0_oTblAddReg(31 downto 0),
      oConfigRegIrqMask(2 downto 0) => semicap_engine_0_oConfigRegIrqMask(2 downto 0),
      oConfigRegSemEn => semicap_engine_0_oConfigRegSemEn,
      oDevInfoId(7 downto 0) => semicap_engine_0_oDevInfoId(7 downto 0),
      oDevInfoVersionMajor(7 downto 0) => semicap_engine_0_oDevInfoVersionMajor(7 downto 0),
      oDevInfoVersionMinor(7 downto 0) => semicap_engine_0_oDevInfoVersionMinor(7 downto 0),
      oHwIcapEos => semicap_engine_0_oHwIcapEos,
      oHwIcapGrant => semicap_engine_0_oHwIcapGrant,
      oHwIcapRelinquish => semicap_engine_0_oHwIcapRelinquish,
      oIRq => semicap_engine_0_oIRq,
      oMinVoterRegCmpStat => semicap_engine_0_oMinVoterRegCmpStat,
      oMinVoterRegTmrStat(2 downto 0) => semicap_engine_0_oMinVoterRegTmrStat(2 downto 0),
      oMonitorRegByte(7 downto 0) => semicap_engine_0_oMonitorRegByte(7 downto 0),
      oMuxSemSelect => semicap_engine_0_oMuxSemSelect,
      oRpReset_n(2 downto 0) => semicap_engine_0_oRpReset_n(2 downto 0),
      oSemAuxErrorCrEs => semicap_engine_0_oSemAuxErrorCrEs,
      oSemAuxErrorCrNe => semicap_engine_0_oSemAuxErrorCrNe,
      oSemAuxErrorUc => semicap_engine_0_oSemAuxErrorUc,
      oSemCapGrant => semicap_engine_0_oSemCapGrant,
      oSemCapRelinquish => semicap_engine_0_oSemCapRelinquish,
      oSemCmdCode(39 downto 0) => semicap_engine_0_oSemCmdCode(39 downto 0),
      oSemCmdStrobe => semicap_engine_0_oSemCmdStrobe,
      oSemFetchTblAddr(31 downto 0) => semicap_engine_0_oSemFetchTblAddr(31 downto 0),
      oSemMonRxData(7 downto 0) => semicap_engine_0_oSemMonRxData(7 downto 0),
      oSemMonRxEmpty => semicap_engine_0_oSemMonRxEmpty,
      oSemMonTxFull => semicap_engine_0_oSemMonTxFull,
      oStatusRegFifoCmdFull => semicap_engine_0_oStatusRegFifoCmdFull,
      oStatusRegFifoStatFull => semicap_engine_0_oStatusRegFifoStatFull,
      oStatusRegMonEmpty => semicap_engine_0_oStatusRegMonEmpty,
      oStatusRegState(3 downto 0) => semicap_engine_0_oStatusRegState(3 downto 0),
      oTblAddReg(31 downto 0) => semicap_engine_0_oTblAddReg(31 downto 0)
    );
semicap_spihelper_0: component semicap_semicap_spihelper_0_0
     port map (
      fetch_rxdata(7 downto 0) => semicap_spihelper_0_fetch_rxdata(7 downto 0),
      fetch_rxempty => semicap_spihelper_0_fetch_rxempty,
      fetch_rxread => hipero_sem_fetch_rxread,
      fetch_txdata(7 downto 0) => hipero_sem_fetch_txdata(7 downto 0),
      fetch_txfull => semicap_spihelper_0_fetch_txfull,
      fetch_txwrite => hipero_sem_fetch_txwrite,
      icap_clk => clk_100MHz_1,
      spi_c => semicap_spihelper_0_spi_c,
      spi_d => semicap_spihelper_0_spi_d,
      spi_q => spi_q_0_1,
      spi_s_n => semicap_spihelper_0_spi_s_n
    );
end STRUCTURE;
