--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
--Date        : Tue Jul 30 15:53:03 2019
--Host        : dt-205 running 64-bit major release  (build 9200)
--Command     : generate_target semicap_wrapper.bd
--Design      : semicap_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity semicap_wrapper is
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
end semicap_wrapper;

architecture STRUCTURE of semicap_wrapper is
  component semicap is
  port (
    spi_q_0 : in STD_LOGIC;
    spi_c_0 : out STD_LOGIC;
    spi_d_0 : out STD_LOGIC;
    spi_s_n_0 : out STD_LOGIC;
    IRq : out STD_LOGIC;
    oRpReset_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    iRpMinVoter_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_axi : in STD_LOGIC;
    areset_n : in STD_LOGIC;
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
    AXI_ENG_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_ENG_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_ENG_awvalid : in STD_LOGIC;
    AXI_ENG_awready : out STD_LOGIC;
    AXI_ENG_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_ENG_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_ENG_wvalid : in STD_LOGIC;
    AXI_ENG_wready : out STD_LOGIC;
    AXI_ENG_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_ENG_bvalid : out STD_LOGIC;
    AXI_ENG_bready : in STD_LOGIC;
    AXI_ENG_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_ENG_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_ENG_arvalid : in STD_LOGIC;
    AXI_ENG_arready : out STD_LOGIC;
    AXI_ENG_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_ENG_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_ENG_rvalid : out STD_LOGIC;
    AXI_ENG_rready : in STD_LOGIC
  );
  end component semicap;
begin
semicap_i: component semicap
     port map (
      AXI_ENG_araddr(4 downto 0) => AXI_ENG_araddr(4 downto 0),
      AXI_ENG_arprot(2 downto 0) => AXI_ENG_arprot(2 downto 0),
      AXI_ENG_arready => AXI_ENG_arready,
      AXI_ENG_arvalid => AXI_ENG_arvalid,
      AXI_ENG_awaddr(4 downto 0) => AXI_ENG_awaddr(4 downto 0),
      AXI_ENG_awprot(2 downto 0) => AXI_ENG_awprot(2 downto 0),
      AXI_ENG_awready => AXI_ENG_awready,
      AXI_ENG_awvalid => AXI_ENG_awvalid,
      AXI_ENG_bready => AXI_ENG_bready,
      AXI_ENG_bresp(1 downto 0) => AXI_ENG_bresp(1 downto 0),
      AXI_ENG_bvalid => AXI_ENG_bvalid,
      AXI_ENG_rdata(31 downto 0) => AXI_ENG_rdata(31 downto 0),
      AXI_ENG_rready => AXI_ENG_rready,
      AXI_ENG_rresp(1 downto 0) => AXI_ENG_rresp(1 downto 0),
      AXI_ENG_rvalid => AXI_ENG_rvalid,
      AXI_ENG_wdata(31 downto 0) => AXI_ENG_wdata(31 downto 0),
      AXI_ENG_wready => AXI_ENG_wready,
      AXI_ENG_wstrb(3 downto 0) => AXI_ENG_wstrb(3 downto 0),
      AXI_ENG_wvalid => AXI_ENG_wvalid,
      AXI_HW_araddr(8 downto 0) => AXI_HW_araddr(8 downto 0),
      AXI_HW_arready => AXI_HW_arready,
      AXI_HW_arvalid => AXI_HW_arvalid,
      AXI_HW_awaddr(8 downto 0) => AXI_HW_awaddr(8 downto 0),
      AXI_HW_awready => AXI_HW_awready,
      AXI_HW_awvalid => AXI_HW_awvalid,
      AXI_HW_bready => AXI_HW_bready,
      AXI_HW_bresp(1 downto 0) => AXI_HW_bresp(1 downto 0),
      AXI_HW_bvalid => AXI_HW_bvalid,
      AXI_HW_rdata(31 downto 0) => AXI_HW_rdata(31 downto 0),
      AXI_HW_rready => AXI_HW_rready,
      AXI_HW_rresp(1 downto 0) => AXI_HW_rresp(1 downto 0),
      AXI_HW_rvalid => AXI_HW_rvalid,
      AXI_HW_wdata(31 downto 0) => AXI_HW_wdata(31 downto 0),
      AXI_HW_wready => AXI_HW_wready,
      AXI_HW_wstrb(3 downto 0) => AXI_HW_wstrb(3 downto 0),
      AXI_HW_wvalid => AXI_HW_wvalid,
      IRq => IRq,
      areset_n => areset_n,
      clk_axi => clk_axi,
      iRpMinVoter_0(3 downto 0) => iRpMinVoter_0(3 downto 0),
      oRpReset_n_0(2 downto 0) => oRpReset_n_0(2 downto 0),
      spi_c_0 => spi_c_0,
      spi_d_0 => spi_d_0,
      spi_q_0 => spi_q_0,
      spi_s_n_0 => spi_s_n_0
    );
end STRUCTURE;
