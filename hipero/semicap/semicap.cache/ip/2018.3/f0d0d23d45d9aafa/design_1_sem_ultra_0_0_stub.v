// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 23 19:19:22 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sem_ultra_0_0_stub.v
// Design      : design_1_sem_ultra_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sem_ultra_v3_1_9,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(icap_clk, status_heartbeat, 
  status_initialization, status_observation, status_correction, status_classification, 
  status_injection, status_diagnostic_scan, status_detect_only, status_essential, 
  status_uncorrectable, monitor_txdata, monitor_txwrite, monitor_txfull, monitor_rxdata, 
  monitor_rxread, monitor_rxempty, command_strobe, command_busy, command_code, cap_rel, 
  cap_gnt, cap_req, aux_error_cr_ne, aux_error_cr_es, aux_error_uc)
/* synthesis syn_black_box black_box_pad_pin="icap_clk,status_heartbeat,status_initialization,status_observation,status_correction,status_classification,status_injection,status_diagnostic_scan,status_detect_only,status_essential,status_uncorrectable,monitor_txdata[7:0],monitor_txwrite,monitor_txfull,monitor_rxdata[7:0],monitor_rxread,monitor_rxempty,command_strobe,command_busy,command_code[39:0],cap_rel,cap_gnt,cap_req,aux_error_cr_ne,aux_error_cr_es,aux_error_uc" */;
  input icap_clk;
  output status_heartbeat;
  output status_initialization;
  output status_observation;
  output status_correction;
  output status_classification;
  output status_injection;
  output status_diagnostic_scan;
  output status_detect_only;
  output status_essential;
  output status_uncorrectable;
  output [7:0]monitor_txdata;
  output monitor_txwrite;
  input monitor_txfull;
  input [7:0]monitor_rxdata;
  output monitor_rxread;
  input monitor_rxempty;
  input command_strobe;
  output command_busy;
  input [39:0]command_code;
  input cap_rel;
  input cap_gnt;
  output cap_req;
  input aux_error_cr_ne;
  input aux_error_cr_es;
  input aux_error_uc;
endmodule
