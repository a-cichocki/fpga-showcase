// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 23 19:26:46 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_sem_0_stub.v
// Design      : semicap_hipero_sem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sem_ultra_v3_1_9,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(status_heartbeat, status_initialization, 
  status_observation, status_correction, status_classification, status_injection, 
  status_diagnostic_scan, status_detect_only, status_essential, status_uncorrectable, 
  monitor_txdata, monitor_txwrite, monitor_txfull, monitor_rxdata, monitor_rxread, 
  monitor_rxempty, command_strobe, command_busy, command_code, icap_clk, icap_o, icap_csib, 
  icap_rdwrb, icap_i, icap_prerror, icap_prdone, icap_avail, cap_rel, cap_gnt, cap_req, 
  fecc_eccerrornotsingle, fecc_eccerrorsingle, fecc_endofframe, fecc_endofscan, 
  fecc_crcerror, fecc_far, fecc_farsel, aux_error_cr_ne, aux_error_cr_es, aux_error_uc)
/* synthesis syn_black_box black_box_pad_pin="status_heartbeat,status_initialization,status_observation,status_correction,status_classification,status_injection,status_diagnostic_scan,status_detect_only,status_essential,status_uncorrectable,monitor_txdata[7:0],monitor_txwrite,monitor_txfull,monitor_rxdata[7:0],monitor_rxread,monitor_rxempty,command_strobe,command_busy,command_code[39:0],icap_clk,icap_o[31:0],icap_csib,icap_rdwrb,icap_i[31:0],icap_prerror,icap_prdone,icap_avail,cap_rel,cap_gnt,cap_req,fecc_eccerrornotsingle,fecc_eccerrorsingle,fecc_endofframe,fecc_endofscan,fecc_crcerror,fecc_far[25:0],fecc_farsel[1:0],aux_error_cr_ne,aux_error_cr_es,aux_error_uc" */;
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
  input icap_clk;
  input [31:0]icap_o;
  output icap_csib;
  output icap_rdwrb;
  output [31:0]icap_i;
  input icap_prerror;
  input icap_prdone;
  input icap_avail;
  input cap_rel;
  input cap_gnt;
  output cap_req;
  input fecc_eccerrornotsingle;
  input fecc_eccerrorsingle;
  input fecc_endofframe;
  input fecc_endofscan;
  input fecc_crcerror;
  input [25:0]fecc_far;
  output [1:0]fecc_farsel;
  input aux_error_cr_ne;
  input aux_error_cr_es;
  input aux_error_uc;
endmodule
