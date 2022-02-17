// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May  9 17:09:19 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_semicap_engine_0_1_stub.v
// Design      : semicap_semicap_engine_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "semicap_engine_v1_0,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(hw_icap_avail, hw_icap_csib, hw_icap_o, 
  hw_icap_i, hw_icap_rdwr, hw_cap_gnt, hw_cap_rel, hw_cap_req, hw_eos_in, hw_ip2intc_irpt, 
  sem_icap_prerror, sem_icap_prdone, sem_icap_avail, sem_icap_csib, sem_icap_o, sem_icap_i, 
  sem_icap_rdwr, sem_cap_gnt, sem_cap_rel, sem_cap_req, sem_monitor_txfull, 
  sem_monitor_rxdata, sem_monitor_rxempty, sem_monitor_txdata, sem_monitor_txwrite, 
  sem_monitor_rxread, sem_command_strobe, sem_command_code, sem_command_busy, 
  sem_status_heartbeat, sem_status_initialization, sem_status_observation, 
  sem_status_correction, sem_status_classification, sem_status_injection, 
  sem_status_essential, sem_status_uncorrectable, sem_status_diagnostic_scan, 
  sem_status_detect_only, sem_aux_error_cr_ne, sem_aux_error_cr_es, sem_aux_error_uc, 
  icap_csib, icap_rdwrb, icap_i, icap_o, icap_prerror, icap_prdone, icap_avail, icap_clk, extirq, 
  s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="hw_icap_avail,hw_icap_csib,hw_icap_o[31:0],hw_icap_i,hw_icap_rdwr,hw_cap_gnt,hw_cap_rel,hw_cap_req,hw_eos_in,hw_ip2intc_irpt,sem_icap_prerror,sem_icap_prdone,sem_icap_avail,sem_icap_csib,sem_icap_o[31:0],sem_icap_i[31:0],sem_icap_rdwr,sem_cap_gnt,sem_cap_rel,sem_cap_req,sem_monitor_txfull,sem_monitor_rxdata[7:0],sem_monitor_rxempty,sem_monitor_txdata[7:0],sem_monitor_txwrite,sem_monitor_rxread,sem_command_strobe,sem_command_code[39:0],sem_command_busy,sem_status_heartbeat,sem_status_initialization,sem_status_observation,sem_status_correction,sem_status_classification,sem_status_injection,sem_status_essential,sem_status_uncorrectable,sem_status_diagnostic_scan,sem_status_detect_only,sem_aux_error_cr_ne,sem_aux_error_cr_es,sem_aux_error_uc,icap_csib,icap_rdwrb,icap_i[31:0],icap_o[31:0],icap_prerror,icap_prdone,icap_avail,icap_clk,extirq,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output hw_icap_avail;
  input hw_icap_csib;
  input [31:0]hw_icap_o;
  output hw_icap_i;
  input hw_icap_rdwr;
  output hw_cap_gnt;
  output hw_cap_rel;
  input hw_cap_req;
  output hw_eos_in;
  input hw_ip2intc_irpt;
  output sem_icap_prerror;
  output sem_icap_prdone;
  output sem_icap_avail;
  input sem_icap_csib;
  output [31:0]sem_icap_o;
  input [31:0]sem_icap_i;
  input sem_icap_rdwr;
  output sem_cap_gnt;
  output sem_cap_rel;
  input sem_cap_req;
  output sem_monitor_txfull;
  output [7:0]sem_monitor_rxdata;
  output sem_monitor_rxempty;
  input [7:0]sem_monitor_txdata;
  input sem_monitor_txwrite;
  input sem_monitor_rxread;
  output sem_command_strobe;
  output [39:0]sem_command_code;
  input sem_command_busy;
  input sem_status_heartbeat;
  input sem_status_initialization;
  input sem_status_observation;
  input sem_status_correction;
  input sem_status_classification;
  input sem_status_injection;
  input sem_status_essential;
  input sem_status_uncorrectable;
  input sem_status_diagnostic_scan;
  input sem_status_detect_only;
  output sem_aux_error_cr_ne;
  output sem_aux_error_cr_es;
  output sem_aux_error_uc;
  output icap_csib;
  output icap_rdwrb;
  output [31:0]icap_i;
  input [31:0]icap_o;
  input icap_prerror;
  input icap_prdone;
  input icap_avail;
  input icap_clk;
  output extirq;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
