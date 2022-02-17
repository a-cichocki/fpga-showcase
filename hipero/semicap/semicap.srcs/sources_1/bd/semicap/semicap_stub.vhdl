-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
-- Date        : Tue Jul 30 15:55:15 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.vhdl
-- Design      : semicap
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semicap is
  Port ( 
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

end semicap;

architecture stub of semicap is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "AXI_ENG_araddr[4:0],AXI_ENG_arprot[2:0],AXI_ENG_arready,AXI_ENG_arvalid,AXI_ENG_awaddr[4:0],AXI_ENG_awprot[2:0],AXI_ENG_awready,AXI_ENG_awvalid,AXI_ENG_bready,AXI_ENG_bresp[1:0],AXI_ENG_bvalid,AXI_ENG_rdata[31:0],AXI_ENG_rready,AXI_ENG_rresp[1:0],AXI_ENG_rvalid,AXI_ENG_wdata[31:0],AXI_ENG_wready,AXI_ENG_wstrb[3:0],AXI_ENG_wvalid,AXI_HW_araddr[8:0],AXI_HW_arready,AXI_HW_arvalid,AXI_HW_awaddr[8:0],AXI_HW_awready,AXI_HW_awvalid,AXI_HW_bready,AXI_HW_bresp[1:0],AXI_HW_bvalid,AXI_HW_rdata[31:0],AXI_HW_rready,AXI_HW_rresp[1:0],AXI_HW_rvalid,AXI_HW_wdata[31:0],AXI_HW_wready,AXI_HW_wstrb[3:0],AXI_HW_wvalid,IRq,areset_n,clk_axi,iRpMinVoter_0[3:0],oRpReset_n_0[2:0],spi_c_0,spi_d_0,spi_q_0,spi_s_n_0";
begin
end;
