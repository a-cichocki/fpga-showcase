// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 24 11:18:43 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_icap_0_0_stub.v
// Design      : semicap_hipero_icap_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hipero_icap,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(icap_clk, icap_o, icap_csib, icap_rdwrb, icap_i, 
  icap_prerror, icap_prdone, icap_avail, fecc_eccerrornotsingle, fecc_eccerrorsingle, 
  fecc_endofframe, fecc_endofscan, fecc_crcerror, fecc_far, fecc_farsel)
/* synthesis syn_black_box black_box_pad_pin="icap_clk,icap_o[31:0],icap_csib,icap_rdwrb,icap_i[31:0],icap_prerror,icap_prdone,icap_avail,fecc_eccerrornotsingle,fecc_eccerrorsingle,fecc_endofframe,fecc_endofscan,fecc_crcerror,fecc_far[25:0],fecc_farsel[1:0]" */;
  input icap_clk;
  output [31:0]icap_o;
  input icap_csib;
  input icap_rdwrb;
  input [31:0]icap_i;
  output icap_prerror;
  output icap_prdone;
  output icap_avail;
  output fecc_eccerrornotsingle;
  output fecc_eccerrorsingle;
  output fecc_endofframe;
  output fecc_endofscan;
  output fecc_crcerror;
  output [25:0]fecc_far;
  input [1:0]fecc_farsel;
endmodule
