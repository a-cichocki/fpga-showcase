--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue May 21 13:38:56 2019
--Host        : dt-205 running 64-bit major release  (build 9200)
--Command     : generate_target payload_partition.bd
--Design      : payload_partition
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity payload_partition is
  port (
    M_AXI_0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_arready : in STD_LOGIC;
    M_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_arvalid : out STD_LOGIC;
    M_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_awready : in STD_LOGIC;
    M_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_awvalid : out STD_LOGIC;
    M_AXI_0_bready : out STD_LOGIC;
    M_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_bvalid : in STD_LOGIC;
    M_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_rlast : in STD_LOGIC;
    M_AXI_0_rready : out STD_LOGIC;
    M_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_rvalid : in STD_LOGIC;
    M_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_wlast : out STD_LOGIC;
    M_AXI_0_wready : in STD_LOGIC;
    M_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_0_wvalid : out STD_LOGIC;
    S_AXI_LITE_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_LITE_0_arready : out STD_LOGIC;
    S_AXI_LITE_0_arvalid : in STD_LOGIC;
    S_AXI_LITE_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_LITE_0_awready : out STD_LOGIC;
    S_AXI_LITE_0_awvalid : in STD_LOGIC;
    S_AXI_LITE_0_bready : in STD_LOGIC;
    S_AXI_LITE_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_0_bvalid : out STD_LOGIC;
    S_AXI_LITE_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_0_rready : in STD_LOGIC;
    S_AXI_LITE_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_0_rvalid : out STD_LOGIC;
    S_AXI_LITE_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_0_wready : out STD_LOGIC;
    S_AXI_LITE_0_wvalid : in STD_LOGIC;
    s_axi_lite_aclk_0 : in STD_LOGIC;
    s_axi_lite_aresetn_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of payload_partition : entity is "payload_partition,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=payload_partition,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of payload_partition : entity is "payload_partition.hwdef";
end payload_partition;

architecture STRUCTURE of payload_partition is
  component payload_partition_axi_cdma_0_0 is
  port (
    m_axi_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    cdma_introut : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component payload_partition_axi_cdma_0_0;
  signal S_AXI_LITE_0_1_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal S_AXI_LITE_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE_0_1_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  signal S_AXI_LITE_0_1_WVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cdma_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cdma_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_WVALID : STD_LOGIC;
  signal s_axi_lite_aclk_0_1 : STD_LOGIC;
  signal s_axi_lite_aresetn_0_1 : STD_LOGIC;
  signal NLW_axi_cdma_0_cdma_introut_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_0_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_0_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_0_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_0_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_0_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 BREADY";
  attribute X_INTERFACE_INFO of M_AXI_0_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 BVALID";
  attribute X_INTERFACE_INFO of M_AXI_0_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 RLAST";
  attribute X_INTERFACE_INFO of M_AXI_0_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 RREADY";
  attribute X_INTERFACE_INFO of M_AXI_0_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 RVALID";
  attribute X_INTERFACE_INFO of M_AXI_0_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 WLAST";
  attribute X_INTERFACE_INFO of M_AXI_0_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 WREADY";
  attribute X_INTERFACE_INFO of M_AXI_0_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 WVALID";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BREADY";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BVALID";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RREADY";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RVALID";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WREADY";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_LITE_ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aclk_0 : signal is "XIL_INTERFACENAME CLK.S_AXI_LITE_ACLK_0, ASSOCIATED_BUSIF S_AXI_LITE_0:M_AXI_0, ASSOCIATED_RESET s_axi_lite_aresetn_0, CLK_DOMAIN payload_partition_s_axi_lite_aclk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_lite_aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_LITE_ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aresetn_0 : signal is "XIL_INTERFACENAME RST.S_AXI_LITE_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M_AXI_0_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARADDR";
  attribute X_INTERFACE_PARAMETER of M_AXI_0_araddr : signal is "XIL_INTERFACENAME M_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN payload_partition_s_axi_lite_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M_AXI_0_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARBURST";
  attribute X_INTERFACE_INFO of M_AXI_0_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARCACHE";
  attribute X_INTERFACE_INFO of M_AXI_0_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARLEN";
  attribute X_INTERFACE_INFO of M_AXI_0_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_0_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 ARSIZE";
  attribute X_INTERFACE_INFO of M_AXI_0_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_0_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_0_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWCACHE";
  attribute X_INTERFACE_INFO of M_AXI_0_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_0_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_0_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_0_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 BRESP";
  attribute X_INTERFACE_INFO of M_AXI_0_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 RDATA";
  attribute X_INTERFACE_INFO of M_AXI_0_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 RRESP";
  attribute X_INTERFACE_INFO of M_AXI_0_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 WDATA";
  attribute X_INTERFACE_INFO of M_AXI_0_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_0 WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_LITE_0_araddr : signal is "XIL_INTERFACENAME S_AXI_LITE_0, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN payload_partition_s_axi_lite_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 BRESP";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RDATA";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 RRESP";
  attribute X_INTERFACE_INFO of S_AXI_LITE_0_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE_0 WDATA";
begin
  M_AXI_0_araddr(31 downto 0) <= axi_cdma_0_M_AXI_ARADDR(31 downto 0);
  M_AXI_0_arburst(1 downto 0) <= axi_cdma_0_M_AXI_ARBURST(1 downto 0);
  M_AXI_0_arcache(3 downto 0) <= axi_cdma_0_M_AXI_ARCACHE(3 downto 0);
  M_AXI_0_arlen(7 downto 0) <= axi_cdma_0_M_AXI_ARLEN(7 downto 0);
  M_AXI_0_arprot(2 downto 0) <= axi_cdma_0_M_AXI_ARPROT(2 downto 0);
  M_AXI_0_arsize(2 downto 0) <= axi_cdma_0_M_AXI_ARSIZE(2 downto 0);
  M_AXI_0_arvalid <= axi_cdma_0_M_AXI_ARVALID;
  M_AXI_0_awaddr(31 downto 0) <= axi_cdma_0_M_AXI_AWADDR(31 downto 0);
  M_AXI_0_awburst(1 downto 0) <= axi_cdma_0_M_AXI_AWBURST(1 downto 0);
  M_AXI_0_awcache(3 downto 0) <= axi_cdma_0_M_AXI_AWCACHE(3 downto 0);
  M_AXI_0_awlen(7 downto 0) <= axi_cdma_0_M_AXI_AWLEN(7 downto 0);
  M_AXI_0_awprot(2 downto 0) <= axi_cdma_0_M_AXI_AWPROT(2 downto 0);
  M_AXI_0_awsize(2 downto 0) <= axi_cdma_0_M_AXI_AWSIZE(2 downto 0);
  M_AXI_0_awvalid <= axi_cdma_0_M_AXI_AWVALID;
  M_AXI_0_bready <= axi_cdma_0_M_AXI_BREADY;
  M_AXI_0_rready <= axi_cdma_0_M_AXI_RREADY;
  M_AXI_0_wdata(31 downto 0) <= axi_cdma_0_M_AXI_WDATA(31 downto 0);
  M_AXI_0_wlast <= axi_cdma_0_M_AXI_WLAST;
  M_AXI_0_wstrb(3 downto 0) <= axi_cdma_0_M_AXI_WSTRB(3 downto 0);
  M_AXI_0_wvalid <= axi_cdma_0_M_AXI_WVALID;
  S_AXI_LITE_0_1_ARADDR(5 downto 0) <= S_AXI_LITE_0_araddr(5 downto 0);
  S_AXI_LITE_0_1_ARVALID <= S_AXI_LITE_0_arvalid;
  S_AXI_LITE_0_1_AWADDR(5 downto 0) <= S_AXI_LITE_0_awaddr(5 downto 0);
  S_AXI_LITE_0_1_AWVALID <= S_AXI_LITE_0_awvalid;
  S_AXI_LITE_0_1_BREADY <= S_AXI_LITE_0_bready;
  S_AXI_LITE_0_1_RREADY <= S_AXI_LITE_0_rready;
  S_AXI_LITE_0_1_WDATA(31 downto 0) <= S_AXI_LITE_0_wdata(31 downto 0);
  S_AXI_LITE_0_1_WVALID <= S_AXI_LITE_0_wvalid;
  S_AXI_LITE_0_arready <= S_AXI_LITE_0_1_ARREADY;
  S_AXI_LITE_0_awready <= S_AXI_LITE_0_1_AWREADY;
  S_AXI_LITE_0_bresp(1 downto 0) <= S_AXI_LITE_0_1_BRESP(1 downto 0);
  S_AXI_LITE_0_bvalid <= S_AXI_LITE_0_1_BVALID;
  S_AXI_LITE_0_rdata(31 downto 0) <= S_AXI_LITE_0_1_RDATA(31 downto 0);
  S_AXI_LITE_0_rresp(1 downto 0) <= S_AXI_LITE_0_1_RRESP(1 downto 0);
  S_AXI_LITE_0_rvalid <= S_AXI_LITE_0_1_RVALID;
  S_AXI_LITE_0_wready <= S_AXI_LITE_0_1_WREADY;
  axi_cdma_0_M_AXI_ARREADY <= M_AXI_0_arready;
  axi_cdma_0_M_AXI_AWREADY <= M_AXI_0_awready;
  axi_cdma_0_M_AXI_BRESP(1 downto 0) <= M_AXI_0_bresp(1 downto 0);
  axi_cdma_0_M_AXI_BVALID <= M_AXI_0_bvalid;
  axi_cdma_0_M_AXI_RDATA(31 downto 0) <= M_AXI_0_rdata(31 downto 0);
  axi_cdma_0_M_AXI_RLAST <= M_AXI_0_rlast;
  axi_cdma_0_M_AXI_RRESP(1 downto 0) <= M_AXI_0_rresp(1 downto 0);
  axi_cdma_0_M_AXI_RVALID <= M_AXI_0_rvalid;
  axi_cdma_0_M_AXI_WREADY <= M_AXI_0_wready;
  s_axi_lite_aclk_0_1 <= s_axi_lite_aclk_0;
  s_axi_lite_aresetn_0_1 <= s_axi_lite_aresetn_0;
axi_cdma_0: component payload_partition_axi_cdma_0_0
     port map (
      cdma_introut => NLW_axi_cdma_0_cdma_introut_UNCONNECTED,
      m_axi_aclk => s_axi_lite_aclk_0_1,
      m_axi_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_cdma_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_cdma_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_cdma_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_cdma_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_cdma_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_cdma_0_M_AXI_AWVALID,
      m_axi_bready => axi_cdma_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_cdma_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_cdma_0_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => axi_cdma_0_M_AXI_RLAST,
      m_axi_rready => axi_cdma_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_cdma_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_cdma_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => axi_cdma_0_M_AXI_WLAST,
      m_axi_wready => axi_cdma_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_cdma_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_cdma_0_M_AXI_WVALID,
      s_axi_lite_aclk => s_axi_lite_aclk_0_1,
      s_axi_lite_araddr(5 downto 0) => S_AXI_LITE_0_1_ARADDR(5 downto 0),
      s_axi_lite_aresetn => s_axi_lite_aresetn_0_1,
      s_axi_lite_arready => S_AXI_LITE_0_1_ARREADY,
      s_axi_lite_arvalid => S_AXI_LITE_0_1_ARVALID,
      s_axi_lite_awaddr(5 downto 0) => S_AXI_LITE_0_1_AWADDR(5 downto 0),
      s_axi_lite_awready => S_AXI_LITE_0_1_AWREADY,
      s_axi_lite_awvalid => S_AXI_LITE_0_1_AWVALID,
      s_axi_lite_bready => S_AXI_LITE_0_1_BREADY,
      s_axi_lite_bresp(1 downto 0) => S_AXI_LITE_0_1_BRESP(1 downto 0),
      s_axi_lite_bvalid => S_AXI_LITE_0_1_BVALID,
      s_axi_lite_rdata(31 downto 0) => S_AXI_LITE_0_1_RDATA(31 downto 0),
      s_axi_lite_rready => S_AXI_LITE_0_1_RREADY,
      s_axi_lite_rresp(1 downto 0) => S_AXI_LITE_0_1_RRESP(1 downto 0),
      s_axi_lite_rvalid => S_AXI_LITE_0_1_RVALID,
      s_axi_lite_wdata(31 downto 0) => S_AXI_LITE_0_1_WDATA(31 downto 0),
      s_axi_lite_wready => S_AXI_LITE_0_1_WREADY,
      s_axi_lite_wvalid => S_AXI_LITE_0_1_WVALID
    );
end STRUCTURE;
