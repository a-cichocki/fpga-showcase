--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue May 21 13:38:56 2019
--Host        : dt-205 running 64-bit major release  (build 9200)
--Command     : generate_target payload_partition_wrapper.bd
--Design      : payload_partition_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity payload_partition_wrapper is
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
end payload_partition_wrapper;

architecture STRUCTURE of payload_partition_wrapper is
  component payload_partition is
  port (
    s_axi_lite_aclk_0 : in STD_LOGIC;
    s_axi_lite_aresetn_0 : in STD_LOGIC;
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
    M_AXI_0_wvalid : out STD_LOGIC
  );
  end component payload_partition;
begin
payload_partition_i: component payload_partition
     port map (
      M_AXI_0_araddr(31 downto 0) => M_AXI_0_araddr(31 downto 0),
      M_AXI_0_arburst(1 downto 0) => M_AXI_0_arburst(1 downto 0),
      M_AXI_0_arcache(3 downto 0) => M_AXI_0_arcache(3 downto 0),
      M_AXI_0_arlen(7 downto 0) => M_AXI_0_arlen(7 downto 0),
      M_AXI_0_arprot(2 downto 0) => M_AXI_0_arprot(2 downto 0),
      M_AXI_0_arready => M_AXI_0_arready,
      M_AXI_0_arsize(2 downto 0) => M_AXI_0_arsize(2 downto 0),
      M_AXI_0_arvalid => M_AXI_0_arvalid,
      M_AXI_0_awaddr(31 downto 0) => M_AXI_0_awaddr(31 downto 0),
      M_AXI_0_awburst(1 downto 0) => M_AXI_0_awburst(1 downto 0),
      M_AXI_0_awcache(3 downto 0) => M_AXI_0_awcache(3 downto 0),
      M_AXI_0_awlen(7 downto 0) => M_AXI_0_awlen(7 downto 0),
      M_AXI_0_awprot(2 downto 0) => M_AXI_0_awprot(2 downto 0),
      M_AXI_0_awready => M_AXI_0_awready,
      M_AXI_0_awsize(2 downto 0) => M_AXI_0_awsize(2 downto 0),
      M_AXI_0_awvalid => M_AXI_0_awvalid,
      M_AXI_0_bready => M_AXI_0_bready,
      M_AXI_0_bresp(1 downto 0) => M_AXI_0_bresp(1 downto 0),
      M_AXI_0_bvalid => M_AXI_0_bvalid,
      M_AXI_0_rdata(31 downto 0) => M_AXI_0_rdata(31 downto 0),
      M_AXI_0_rlast => M_AXI_0_rlast,
      M_AXI_0_rready => M_AXI_0_rready,
      M_AXI_0_rresp(1 downto 0) => M_AXI_0_rresp(1 downto 0),
      M_AXI_0_rvalid => M_AXI_0_rvalid,
      M_AXI_0_wdata(31 downto 0) => M_AXI_0_wdata(31 downto 0),
      M_AXI_0_wlast => M_AXI_0_wlast,
      M_AXI_0_wready => M_AXI_0_wready,
      M_AXI_0_wstrb(3 downto 0) => M_AXI_0_wstrb(3 downto 0),
      M_AXI_0_wvalid => M_AXI_0_wvalid,
      S_AXI_LITE_0_araddr(5 downto 0) => S_AXI_LITE_0_araddr(5 downto 0),
      S_AXI_LITE_0_arready => S_AXI_LITE_0_arready,
      S_AXI_LITE_0_arvalid => S_AXI_LITE_0_arvalid,
      S_AXI_LITE_0_awaddr(5 downto 0) => S_AXI_LITE_0_awaddr(5 downto 0),
      S_AXI_LITE_0_awready => S_AXI_LITE_0_awready,
      S_AXI_LITE_0_awvalid => S_AXI_LITE_0_awvalid,
      S_AXI_LITE_0_bready => S_AXI_LITE_0_bready,
      S_AXI_LITE_0_bresp(1 downto 0) => S_AXI_LITE_0_bresp(1 downto 0),
      S_AXI_LITE_0_bvalid => S_AXI_LITE_0_bvalid,
      S_AXI_LITE_0_rdata(31 downto 0) => S_AXI_LITE_0_rdata(31 downto 0),
      S_AXI_LITE_0_rready => S_AXI_LITE_0_rready,
      S_AXI_LITE_0_rresp(1 downto 0) => S_AXI_LITE_0_rresp(1 downto 0),
      S_AXI_LITE_0_rvalid => S_AXI_LITE_0_rvalid,
      S_AXI_LITE_0_wdata(31 downto 0) => S_AXI_LITE_0_wdata(31 downto 0),
      S_AXI_LITE_0_wready => S_AXI_LITE_0_wready,
      S_AXI_LITE_0_wvalid => S_AXI_LITE_0_wvalid,
      s_axi_lite_aclk_0 => s_axi_lite_aclk_0,
      s_axi_lite_aresetn_0 => s_axi_lite_aresetn_0
    );
end STRUCTURE;
