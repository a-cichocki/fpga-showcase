// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Tue Jul 30 15:55:15 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.v
// Design      : semicap
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module semicap(AXI_ENG_araddr, AXI_ENG_arprot, 
  AXI_ENG_arready, AXI_ENG_arvalid, AXI_ENG_awaddr, AXI_ENG_awprot, AXI_ENG_awready, 
  AXI_ENG_awvalid, AXI_ENG_bready, AXI_ENG_bresp, AXI_ENG_bvalid, AXI_ENG_rdata, 
  AXI_ENG_rready, AXI_ENG_rresp, AXI_ENG_rvalid, AXI_ENG_wdata, AXI_ENG_wready, 
  AXI_ENG_wstrb, AXI_ENG_wvalid, AXI_HW_araddr, AXI_HW_arready, AXI_HW_arvalid, 
  AXI_HW_awaddr, AXI_HW_awready, AXI_HW_awvalid, AXI_HW_bready, AXI_HW_bresp, AXI_HW_bvalid, 
  AXI_HW_rdata, AXI_HW_rready, AXI_HW_rresp, AXI_HW_rvalid, AXI_HW_wdata, AXI_HW_wready, 
  AXI_HW_wstrb, AXI_HW_wvalid, IRq, areset_n, clk_axi, iRpMinVoter_0, oRpReset_n_0, spi_c_0, 
  spi_d_0, spi_q_0, spi_s_n_0)
/* synthesis syn_black_box black_box_pad_pin="AXI_ENG_araddr[4:0],AXI_ENG_arprot[2:0],AXI_ENG_arready,AXI_ENG_arvalid,AXI_ENG_awaddr[4:0],AXI_ENG_awprot[2:0],AXI_ENG_awready,AXI_ENG_awvalid,AXI_ENG_bready,AXI_ENG_bresp[1:0],AXI_ENG_bvalid,AXI_ENG_rdata[31:0],AXI_ENG_rready,AXI_ENG_rresp[1:0],AXI_ENG_rvalid,AXI_ENG_wdata[31:0],AXI_ENG_wready,AXI_ENG_wstrb[3:0],AXI_ENG_wvalid,AXI_HW_araddr[8:0],AXI_HW_arready,AXI_HW_arvalid,AXI_HW_awaddr[8:0],AXI_HW_awready,AXI_HW_awvalid,AXI_HW_bready,AXI_HW_bresp[1:0],AXI_HW_bvalid,AXI_HW_rdata[31:0],AXI_HW_rready,AXI_HW_rresp[1:0],AXI_HW_rvalid,AXI_HW_wdata[31:0],AXI_HW_wready,AXI_HW_wstrb[3:0],AXI_HW_wvalid,IRq,areset_n,clk_axi,iRpMinVoter_0[3:0],oRpReset_n_0[2:0],spi_c_0,spi_d_0,spi_q_0,spi_s_n_0" */;
  input [4:0]AXI_ENG_araddr;
  input [2:0]AXI_ENG_arprot;
  output AXI_ENG_arready;
  input AXI_ENG_arvalid;
  input [4:0]AXI_ENG_awaddr;
  input [2:0]AXI_ENG_awprot;
  output AXI_ENG_awready;
  input AXI_ENG_awvalid;
  input AXI_ENG_bready;
  output [1:0]AXI_ENG_bresp;
  output AXI_ENG_bvalid;
  output [31:0]AXI_ENG_rdata;
  input AXI_ENG_rready;
  output [1:0]AXI_ENG_rresp;
  output AXI_ENG_rvalid;
  input [31:0]AXI_ENG_wdata;
  output AXI_ENG_wready;
  input [3:0]AXI_ENG_wstrb;
  input AXI_ENG_wvalid;
  input [8:0]AXI_HW_araddr;
  output AXI_HW_arready;
  input AXI_HW_arvalid;
  input [8:0]AXI_HW_awaddr;
  output AXI_HW_awready;
  input AXI_HW_awvalid;
  input AXI_HW_bready;
  output [1:0]AXI_HW_bresp;
  output AXI_HW_bvalid;
  output [31:0]AXI_HW_rdata;
  input AXI_HW_rready;
  output [1:0]AXI_HW_rresp;
  output AXI_HW_rvalid;
  input [31:0]AXI_HW_wdata;
  output AXI_HW_wready;
  input [3:0]AXI_HW_wstrb;
  input AXI_HW_wvalid;
  output IRq;
  input areset_n;
  input clk_axi;
  input [3:0]iRpMinVoter_0;
  output [2:0]oRpReset_n_0;
  output spi_c_0;
  output spi_d_0;
  input spi_q_0;
  output spi_s_n_0;
endmodule
