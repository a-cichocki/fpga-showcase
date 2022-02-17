// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 23 19:19:22 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sem_ultra_0_0_sim_netlist.v
// Design      : design_1_sem_ultra_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "sem_ultra_v3_1_9,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (icap_clk,
    status_heartbeat,
    status_initialization,
    status_observation,
    status_correction,
    status_classification,
    status_injection,
    status_diagnostic_scan,
    status_detect_only,
    status_essential,
    status_uncorrectable,
    monitor_txdata,
    monitor_txwrite,
    monitor_txfull,
    monitor_rxdata,
    monitor_rxread,
    monitor_rxempty,
    command_strobe,
    command_busy,
    command_code,
    cap_rel,
    cap_gnt,
    cap_req,
    aux_error_cr_ne,
    aux_error_cr_es,
    aux_error_uc);
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

  wire aux_error_cr_es;
  wire aux_error_cr_ne;
  wire aux_error_uc;
  wire cap_gnt;
  wire cap_rel;
  wire cap_req;
  wire command_busy;
  wire [39:0]command_code;
  wire command_strobe;
  wire icap_clk;
  wire [7:0]monitor_rxdata;
  wire monitor_rxempty;
  wire monitor_rxread;
  wire [7:0]monitor_txdata;
  wire monitor_txfull;
  wire monitor_txwrite;
  wire status_classification;
  wire status_correction;
  wire status_detect_only;
  wire status_diagnostic_scan;
  wire status_essential;
  wire status_heartbeat;
  wire status_initialization;
  wire status_injection;
  wire status_observation;
  wire status_uncorrectable;
  wire NLW_inst_fetch_rxread_UNCONNECTED;
  wire NLW_inst_fetch_txwrite_UNCONNECTED;
  wire [7:0]NLW_inst_fetch_txdata_UNCONNECTED;

  (* TCQ = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_sem_ultra_0_0_support inst
       (.aux_error_cr_es(aux_error_cr_es),
        .aux_error_cr_ne(aux_error_cr_ne),
        .aux_error_uc(aux_error_uc),
        .cap_gnt(cap_gnt),
        .cap_rel(cap_rel),
        .cap_req(cap_req),
        .command_busy(command_busy),
        .command_code(command_code),
        .command_strobe(command_strobe),
        .fetch_rxdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fetch_rxempty(1'b1),
        .fetch_rxread(NLW_inst_fetch_rxread_UNCONNECTED),
        .fetch_tbladdr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fetch_txdata(NLW_inst_fetch_txdata_UNCONNECTED[7:0]),
        .fetch_txfull(1'b0),
        .fetch_txwrite(NLW_inst_fetch_txwrite_UNCONNECTED),
        .icap_clk(icap_clk),
        .monitor_rxdata(monitor_rxdata),
        .monitor_rxempty(monitor_rxempty),
        .monitor_rxread(monitor_rxread),
        .monitor_txdata(monitor_txdata),
        .monitor_txfull(monitor_txfull),
        .monitor_txwrite(monitor_txwrite),
        .status_classification(status_classification),
        .status_correction(status_correction),
        .status_detect_only(status_detect_only),
        .status_diagnostic_scan(status_diagnostic_scan),
        .status_essential(status_essential),
        .status_heartbeat(status_heartbeat),
        .status_initialization(status_initialization),
        .status_injection(status_injection),
        .status_observation(status_observation),
        .status_uncorrectable(status_uncorrectable));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_sem_ultra_0_0_cfg
   (icap_avail,
    icap_prdone,
    icap_prerror,
    icap_o,
    fecc_crcerror,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle,
    status_heartbeat,
    fecc_endofscan,
    icap_clk,
    icap_csib,
    icap_rdwrb,
    icap_i);
  output icap_avail;
  output icap_prdone;
  output icap_prerror;
  output [31:0]icap_o;
  output fecc_crcerror;
  output fecc_eccerrornotsingle;
  output fecc_eccerrorsingle;
  output status_heartbeat;
  output fecc_endofscan;
  input icap_clk;
  input icap_csib;
  input icap_rdwrb;
  input [31:0]icap_i;

  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofscan;
  wire [25:0]fecc_far;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;
  wire status_heartbeat;
  wire NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FRAME_ECCE3 cfg_frame_ecce3
       (.CRCERROR(fecc_crcerror),
        .ECCERRORNOTSINGLE(fecc_eccerrornotsingle),
        .ECCERRORSINGLE(fecc_eccerrorsingle),
        .ENDOFFRAME(status_heartbeat),
        .ENDOFSCAN(fecc_endofscan),
        .FAR(fecc_far),
        .FARSEL({1'b0,1'b0}),
        .ICAPBOTCLK(NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED),
        .ICAPTOPCLK(icap_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ICAPE3 #(
    .DEVICE_ID(32'hFFFFFFFF),
    .ICAP_AUTO_SWITCH("DISABLE"),
    .SIM_CFG_FILE_NAME("NONE")) 
    cfg_icape3
       (.AVAIL(icap_avail),
        .CLK(icap_clk),
        .CSIB(icap_csib),
        .I(icap_i),
        .O(icap_o),
        .PRDONE(icap_prdone),
        .PRERROR(icap_prerror),
        .RDWRB(icap_rdwrb));
endmodule

(* TCQ = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_sem_ultra_0_0_support
   (icap_clk,
    status_heartbeat,
    status_initialization,
    status_observation,
    status_correction,
    status_classification,
    status_injection,
    status_diagnostic_scan,
    status_detect_only,
    status_essential,
    status_uncorrectable,
    monitor_txdata,
    monitor_txwrite,
    monitor_txfull,
    monitor_rxdata,
    monitor_rxread,
    monitor_rxempty,
    fetch_txdata,
    fetch_txwrite,
    fetch_txfull,
    fetch_rxdata,
    fetch_rxread,
    fetch_rxempty,
    fetch_tbladdr,
    command_strobe,
    command_busy,
    command_code,
    cap_rel,
    cap_gnt,
    cap_req,
    aux_error_cr_ne,
    aux_error_cr_es,
    aux_error_uc);
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
  output [7:0]fetch_txdata;
  output fetch_txwrite;
  input fetch_txfull;
  input [7:0]fetch_rxdata;
  output fetch_rxread;
  input fetch_rxempty;
  input [31:0]fetch_tbladdr;
  input command_strobe;
  output command_busy;
  input [39:0]command_code;
  input cap_rel;
  input cap_gnt;
  output cap_req;
  input aux_error_cr_ne;
  input aux_error_cr_es;
  input aux_error_uc;

  wire aux_error_cr_es;
  wire aux_error_cr_ne;
  wire aux_error_uc;
  wire cap_gnt;
  wire cap_rel;
  wire cap_req;
  wire command_busy;
  wire [39:0]command_code;
  wire command_strobe;
  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofscan;
  wire fetch_rxread;
  wire [7:0]fetch_txdata;
  wire fetch_txwrite;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;
  wire [7:0]monitor_rxdata;
  wire monitor_rxempty;
  wire monitor_rxread;
  wire monitor_txfull;
  wire monitor_txwrite;
  wire status_classification;
  wire status_correction;
  wire status_detect_only;
  wire status_diagnostic_scan;
  wire status_essential;
  wire status_heartbeat;
  wire status_initialization;
  wire status_injection;
  wire status_observation;
  wire status_uncorrectable;
  wire NLW_sem_controller_slr0_status_heartbeat_UNCONNECTED;
  wire NLW_sem_controller_slr1_status_heartbeat_UNCONNECTED;
  wire NLW_sem_controller_slr2_status_heartbeat_UNCONNECTED;
  wire NLW_sem_controller_slr3_status_heartbeat_UNCONNECTED;
  wire NLW_sem_controller_status_heartbeat_UNCONNECTED;
  wire [1:0]NLW_sem_controller_fecc_farsel_UNCONNECTED;
  wire [7:0]NLW_sem_controller_fetch_txdata_UNCONNECTED;
  wire [1:0]NLW_sem_controller_slr0_fecc_farsel_UNCONNECTED;
  wire [1:0]NLW_sem_controller_slr1_fecc_farsel_UNCONNECTED;
  wire [1:0]NLW_sem_controller_slr2_fecc_farsel_UNCONNECTED;
  wire [1:0]NLW_sem_controller_slr3_fecc_farsel_UNCONNECTED;

  assign monitor_txdata[7:0] = fetch_txdata;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_sem_ultra_0_0_cfg example_cfg
       (.fecc_crcerror(fecc_crcerror),
        .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
        .fecc_eccerrorsingle(fecc_eccerrorsingle),
        .fecc_endofscan(fecc_endofscan),
        .icap_avail(icap_avail),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_prdone(icap_prdone),
        .icap_prerror(icap_prerror),
        .icap_rdwrb(icap_rdwrb),
        .status_heartbeat(status_heartbeat));
  (* TCQ = "1" *) 
  (* b_cosim = "0" *) 
  (* b_debug = "0" *) 
  (* b_dfset = "0" *) 
  (* c_arch = "0" *) 
  (* c_command_code_width = "40" *) 
  (* c_config_prim_loc = "0" *) 
  (* c_extra_checks = "4" *) 
  (* c_family = "kintexu" *) 
  (* c_feature_set = "4" *) 
  (* c_fecc_far_width = "26" *) 
  (* c_has_error_injection = "0" *) 
  (* c_helper_block_loc = "1" *) 
  (* c_vusp_slr = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 sem_controller
       (.aux_error_cr_es(aux_error_cr_es),
        .aux_error_cr_ne(aux_error_cr_ne),
        .aux_error_uc(aux_error_uc),
        .cap_gnt(cap_gnt),
        .cap_rel(cap_rel),
        .cap_req(cap_req),
        .command_busy(command_busy),
        .command_code(command_code),
        .command_strobe(command_strobe),
        .fecc_crcerror(fecc_crcerror),
        .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
        .fecc_eccerrorsingle(fecc_eccerrorsingle),
        .fecc_endofframe(status_heartbeat),
        .fecc_endofscan(fecc_endofscan),
        .fecc_far({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fecc_farsel(NLW_sem_controller_fecc_farsel_UNCONNECTED[1:0]),
        .fetch_rxdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fetch_rxempty(1'b0),
        .fetch_rxread(fetch_rxread),
        .fetch_tbladdr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fetch_txdata(NLW_sem_controller_fetch_txdata_UNCONNECTED[7:0]),
        .fetch_txfull(1'b0),
        .fetch_txwrite(fetch_txwrite),
        .icap_avail(icap_avail),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_prdone(icap_prdone),
        .icap_prerror(icap_prerror),
        .icap_rdwrb(icap_rdwrb),
        .monitor_rxdata(monitor_rxdata),
        .monitor_rxempty(monitor_rxempty),
        .monitor_rxread(monitor_rxread),
        .monitor_txdata(fetch_txdata),
        .monitor_txfull(monitor_txfull),
        .monitor_txwrite(monitor_txwrite),
        .slr0_fecc_crcerror(1'b0),
        .slr0_fecc_eccerrornotsingle(1'b0),
        .slr0_fecc_eccerrorsingle(1'b0),
        .slr0_fecc_endofframe(1'b0),
        .slr0_fecc_endofscan(1'b0),
        .slr0_fecc_far({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slr0_fecc_farsel(NLW_sem_controller_slr0_fecc_farsel_UNCONNECTED[1:0]),
        .slr0_status_heartbeat(NLW_sem_controller_slr0_status_heartbeat_UNCONNECTED),
        .slr1_fecc_crcerror(1'b0),
        .slr1_fecc_eccerrornotsingle(1'b0),
        .slr1_fecc_eccerrorsingle(1'b0),
        .slr1_fecc_endofframe(1'b0),
        .slr1_fecc_endofscan(1'b0),
        .slr1_fecc_far({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slr1_fecc_farsel(NLW_sem_controller_slr1_fecc_farsel_UNCONNECTED[1:0]),
        .slr1_status_heartbeat(NLW_sem_controller_slr1_status_heartbeat_UNCONNECTED),
        .slr2_fecc_crcerror(1'b0),
        .slr2_fecc_eccerrornotsingle(1'b0),
        .slr2_fecc_eccerrorsingle(1'b0),
        .slr2_fecc_endofframe(1'b0),
        .slr2_fecc_endofscan(1'b0),
        .slr2_fecc_far({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slr2_fecc_farsel(NLW_sem_controller_slr2_fecc_farsel_UNCONNECTED[1:0]),
        .slr2_status_heartbeat(NLW_sem_controller_slr2_status_heartbeat_UNCONNECTED),
        .slr3_fecc_crcerror(1'b0),
        .slr3_fecc_eccerrornotsingle(1'b0),
        .slr3_fecc_eccerrorsingle(1'b0),
        .slr3_fecc_endofframe(1'b0),
        .slr3_fecc_endofscan(1'b0),
        .slr3_fecc_far({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slr3_fecc_farsel(NLW_sem_controller_slr3_fecc_farsel_UNCONNECTED[1:0]),
        .slr3_status_heartbeat(NLW_sem_controller_slr3_status_heartbeat_UNCONNECTED),
        .status_classification(status_classification),
        .status_correction(status_correction),
        .status_detect_only(status_detect_only),
        .status_diagnostic_scan(status_diagnostic_scan),
        .status_essential(status_essential),
        .status_heartbeat(NLW_sem_controller_status_heartbeat_UNCONNECTED),
        .status_initialization(status_initialization),
        .status_injection(status_injection),
        .status_observation(status_observation),
        .status_uncorrectable(status_uncorrectable));
endmodule

(* TCQ = "1" *) (* b_cosim = "0" *) (* b_debug = "0" *) 
(* b_dfset = "0" *) (* c_arch = "0" *) (* c_command_code_width = "40" *) 
(* c_config_prim_loc = "0" *) (* c_extra_checks = "4" *) (* c_family = "kintexu" *) 
(* c_feature_set = "4" *) (* c_fecc_far_width = "26" *) (* c_has_error_injection = "0" *) 
(* c_helper_block_loc = "1" *) (* c_vusp_slr = "0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9
   (slr0_status_heartbeat,
    slr1_status_heartbeat,
    slr2_status_heartbeat,
    slr3_status_heartbeat,
    status_heartbeat,
    status_initialization,
    status_observation,
    status_correction,
    status_classification,
    status_injection,
    status_essential,
    status_uncorrectable,
    status_diagnostic_scan,
    status_detect_only,
    fetch_txdata,
    fetch_txwrite,
    fetch_txfull,
    fetch_rxdata,
    fetch_rxread,
    fetch_rxempty,
    fetch_tbladdr,
    monitor_txdata,
    monitor_txwrite,
    monitor_txfull,
    monitor_rxdata,
    monitor_rxread,
    monitor_rxempty,
    command_strobe,
    command_busy,
    command_code,
    icap_clk,
    icap_o,
    icap_csib,
    icap_rdwrb,
    icap_i,
    icap_prerror,
    icap_prdone,
    icap_avail,
    cap_rel,
    cap_gnt,
    cap_req,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle,
    fecc_endofframe,
    fecc_endofscan,
    fecc_crcerror,
    fecc_far,
    fecc_farsel,
    slr0_fecc_eccerrornotsingle,
    slr0_fecc_eccerrorsingle,
    slr0_fecc_endofframe,
    slr0_fecc_endofscan,
    slr0_fecc_crcerror,
    slr0_fecc_far,
    slr0_fecc_farsel,
    slr1_fecc_eccerrornotsingle,
    slr1_fecc_eccerrorsingle,
    slr1_fecc_endofframe,
    slr1_fecc_endofscan,
    slr1_fecc_crcerror,
    slr1_fecc_far,
    slr1_fecc_farsel,
    slr2_fecc_eccerrornotsingle,
    slr2_fecc_eccerrorsingle,
    slr2_fecc_endofframe,
    slr2_fecc_endofscan,
    slr2_fecc_crcerror,
    slr2_fecc_far,
    slr2_fecc_farsel,
    slr3_fecc_eccerrornotsingle,
    slr3_fecc_eccerrorsingle,
    slr3_fecc_endofframe,
    slr3_fecc_endofscan,
    slr3_fecc_crcerror,
    slr3_fecc_far,
    slr3_fecc_farsel,
    aux_error_cr_ne,
    aux_error_cr_es,
    aux_error_uc);
  output slr0_status_heartbeat;
  output slr1_status_heartbeat;
  output slr2_status_heartbeat;
  output slr3_status_heartbeat;
  output status_heartbeat;
  output status_initialization;
  output status_observation;
  output status_correction;
  output status_classification;
  output status_injection;
  output status_essential;
  output status_uncorrectable;
  output status_diagnostic_scan;
  output status_detect_only;
  output [7:0]fetch_txdata;
  output fetch_txwrite;
  input fetch_txfull;
  input [7:0]fetch_rxdata;
  output fetch_rxread;
  input fetch_rxempty;
  input [31:0]fetch_tbladdr;
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
  input slr0_fecc_eccerrornotsingle;
  input slr0_fecc_eccerrorsingle;
  input slr0_fecc_endofframe;
  input slr0_fecc_endofscan;
  input slr0_fecc_crcerror;
  input [25:0]slr0_fecc_far;
  output [1:0]slr0_fecc_farsel;
  input slr1_fecc_eccerrornotsingle;
  input slr1_fecc_eccerrorsingle;
  input slr1_fecc_endofframe;
  input slr1_fecc_endofscan;
  input slr1_fecc_crcerror;
  input [25:0]slr1_fecc_far;
  output [1:0]slr1_fecc_farsel;
  input slr2_fecc_eccerrornotsingle;
  input slr2_fecc_eccerrorsingle;
  input slr2_fecc_endofframe;
  input slr2_fecc_endofscan;
  input slr2_fecc_crcerror;
  input [25:0]slr2_fecc_far;
  output [1:0]slr2_fecc_farsel;
  input slr3_fecc_eccerrornotsingle;
  input slr3_fecc_eccerrorsingle;
  input slr3_fecc_endofframe;
  input slr3_fecc_endofscan;
  input slr3_fecc_crcerror;
  input [25:0]slr3_fecc_far;
  output [1:0]slr3_fecc_farsel;
  input aux_error_cr_ne;
  input aux_error_cr_es;
  input aux_error_uc;

  wire \<const0> ;
  wire aux_error_cr_es;
  wire aux_error_cr_ne;
  wire aux_error_uc;
  wire cap_gnt;
  wire cap_rel;
  wire cap_req;
  wire command_busy;
  wire [39:0]command_code;
  wire command_strobe;
  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofframe;
  wire fecc_endofscan;
  wire fetch_rxread;
  wire fetch_txwrite;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;
  wire [7:0]monitor_rxdata;
  wire monitor_rxempty;
  wire monitor_rxread;
  wire [7:0]monitor_txdata;
  wire monitor_txfull;
  wire monitor_txwrite;
  wire status_classification;
  wire status_correction;
  wire status_detect_only;
  wire status_diagnostic_scan;
  wire status_essential;
  wire status_initialization;
  wire status_injection;
  wire status_observation;
  wire status_uncorrectable;

  assign fecc_farsel[1] = \<const0> ;
  assign fecc_farsel[0] = \<const0> ;
  assign fetch_txdata[7] = \<const0> ;
  assign fetch_txdata[6] = \<const0> ;
  assign fetch_txdata[5] = \<const0> ;
  assign fetch_txdata[4] = \<const0> ;
  assign fetch_txdata[3] = \<const0> ;
  assign fetch_txdata[2] = \<const0> ;
  assign fetch_txdata[1] = \<const0> ;
  assign fetch_txdata[0] = \<const0> ;
  assign slr0_fecc_farsel[1] = \<const0> ;
  assign slr0_fecc_farsel[0] = \<const0> ;
  assign slr0_status_heartbeat = \<const0> ;
  assign slr1_fecc_farsel[1] = \<const0> ;
  assign slr1_fecc_farsel[0] = \<const0> ;
  assign slr1_status_heartbeat = \<const0> ;
  assign slr2_fecc_farsel[1] = \<const0> ;
  assign slr2_fecc_farsel[0] = \<const0> ;
  assign slr2_status_heartbeat = \<const0> ;
  assign slr3_fecc_farsel[1] = \<const0> ;
  assign slr3_fecc_farsel[0] = \<const0> ;
  assign slr3_status_heartbeat = \<const0> ;
  assign status_heartbeat = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller controller
       (.Q({status_essential,status_uncorrectable,status_injection,status_classification,status_correction,status_observation,status_initialization}),
        .aux_error_cr_es(aux_error_cr_es),
        .aux_error_cr_ne(aux_error_cr_ne),
        .aux_error_uc(aux_error_uc),
        .cap_gnt(cap_gnt),
        .cap_rel(cap_rel),
        .cap_req(cap_req),
        .cgo_flag_reg_0(command_busy),
        .command_code(command_code),
        .command_strobe(command_strobe),
        .fecc_crcerror(fecc_crcerror),
        .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
        .fecc_eccerrorsingle(fecc_eccerrorsingle),
        .fecc_endofframe(fecc_endofframe),
        .fecc_endofscan(fecc_endofscan),
        .fetch_rxread(fetch_rxread),
        .fetch_txwrite(fetch_txwrite),
        .icap_avail(icap_avail),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_prdone(icap_prdone),
        .icap_prerror(icap_prerror),
        .icap_rdwrb(icap_rdwrb),
        .monitor_rxdata(monitor_rxdata),
        .monitor_rxempty(monitor_rxempty),
        .monitor_rxread(monitor_rxread),
        .monitor_txdata(monitor_txdata),
        .monitor_txfull(monitor_txfull),
        .monitor_txwrite(monitor_txwrite),
        .\status_reg2_reg[1]_0 ({status_diagnostic_scan,status_detect_only}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller
   (monitor_txdata,
    icap_csib,
    icap_rdwrb,
    icap_i,
    Q,
    \status_reg2_reg[1]_0 ,
    cap_req,
    fetch_txwrite,
    monitor_txwrite,
    cgo_flag_reg_0,
    fetch_rxread,
    monitor_rxread,
    icap_clk,
    cap_gnt,
    cap_rel,
    icap_prerror,
    icap_prdone,
    icap_avail,
    aux_error_cr_ne,
    aux_error_cr_es,
    aux_error_uc,
    icap_o,
    command_code,
    command_strobe,
    monitor_rxdata,
    monitor_txfull,
    monitor_rxempty,
    fecc_endofframe,
    fecc_endofscan,
    fecc_crcerror,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle);
  output [7:0]monitor_txdata;
  output icap_csib;
  output icap_rdwrb;
  output [31:0]icap_i;
  output [6:0]Q;
  output [1:0]\status_reg2_reg[1]_0 ;
  output cap_req;
  output fetch_txwrite;
  output monitor_txwrite;
  output cgo_flag_reg_0;
  output fetch_rxread;
  output monitor_rxread;
  input icap_clk;
  input cap_gnt;
  input cap_rel;
  input icap_prerror;
  input icap_prdone;
  input icap_avail;
  input aux_error_cr_ne;
  input aux_error_cr_es;
  input aux_error_uc;
  input [31:0]icap_o;
  input [39:0]command_code;
  input command_strobe;
  input [7:0]monitor_rxdata;
  input monitor_txfull;
  input monitor_rxempty;
  input fecc_endofframe;
  input fecc_endofscan;
  input fecc_crcerror;
  input fecc_eccerrornotsingle;
  input fecc_eccerrorsingle;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [6:0]Q;
  wire [8:0]addrb;
  wire [11:0]address;
  wire aux_cr_es_err;
  wire aux_cr_ne_err;
  wire aux_error_cr_es;
  wire aux_error_cr_es_sync;
  wire aux_error_cr_ne;
  wire aux_error_cr_ne_sync;
  wire aux_error_uc;
  wire aux_error_uc_sync;
  wire aux_uc_err;
  wire bgo_strobe;
  wire bgo_strobe0;
  wire bram2_en;
  wire bram_enable;
  wire bram_wr_en0;
  wire bram_wr_en1;
  wire bram_wr_en2;
  wire burst;
  wire cap_gnt;
  wire cap_rel;
  wire cap_req;
  wire cap_req_i_2_n_0;
  wire casdomux2;
  wire cgo_flag017_out;
  wire cgo_flag_reg_0;
  wire [39:0]command_code;
  wire [39:0]command_code_int;
  wire \command_reg[39]_i_3_n_0 ;
  wire \command_reg_reg_n_0_[0] ;
  wire \command_reg_reg_n_0_[1] ;
  wire \command_reg_reg_n_0_[2] ;
  wire \command_reg_reg_n_0_[3] ;
  wire \command_reg_reg_n_0_[4] ;
  wire \command_reg_reg_n_0_[5] ;
  wire \command_reg_reg_n_0_[6] ;
  wire \command_reg_reg_n_0_[7] ;
  wire command_strobe;
  wire controller_dbuffer_n_42;
  wire controller_dbuffer_n_43;
  wire controller_dbuffer_n_44;
  wire controller_dbuffer_n_45;
  wire controller_dbuffer_n_46;
  wire controller_dbuffer_n_47;
  wire controller_dbuffer_n_48;
  wire controller_dbuffer_n_49;
  wire controller_dbuffer_n_5;
  wire controller_dbuffer_n_50;
  wire controller_dbuffer_n_51;
  wire controller_dbuffer_n_52;
  wire controller_dbuffer_n_53;
  wire controller_dbuffer_n_54;
  wire controller_dbuffer_n_55;
  wire controller_dbuffer_n_56;
  wire controller_dbuffer_n_6;
  wire controller_picocpu_n_2;
  wire controller_picocpu_n_3;
  wire controller_picocpu_n_35;
  wire controller_picocpu_n_36;
  wire controller_picocpu_n_37;
  wire controller_picocpu_n_38;
  wire controller_picocpu_n_39;
  wire controller_picocpu_n_4;
  wire controller_picocpu_n_40;
  wire controller_picocpu_n_41;
  wire controller_picocpu_n_45;
  wire controller_picocpu_n_47;
  wire controller_picocpu_n_5;
  wire controller_picocpu_n_51;
  wire controller_picocpu_n_52;
  wire controller_picocpu_n_53;
  wire controller_picocpu_n_54;
  wire controller_picocpu_n_55;
  wire controller_picocpu_n_56;
  wire controller_picocpu_n_57;
  wire controller_picocpu_n_58;
  wire controller_picocpu_n_59;
  wire controller_picocpu_n_6;
  wire [7:0]data10;
  wire [7:0]data11;
  wire [7:0]data12;
  wire [7:0]data13;
  wire end_ptr1;
  wire eof_flag;
  wire eos_flag;
  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofframe;
  wire fecc_endofscan;
  wire fetch_rxread;
  wire fetch_txwrite;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire icap_grant_sync;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;
  wire icap_rel_sync;
  wire icap_request;
  wire [17:0]instruction;
  wire [7:0]monitor_rxdata;
  wire monitor_rxempty;
  wire monitor_rxread;
  wire [7:0]monitor_txdata;
  wire monitor_txfull;
  wire monitor_txwrite;
  wire next_request;
  wire next_request0;
  wire p_1_in;
  wire [6:5]p_4_in;
  wire [2:0]p_6_in;
  wire [1:0]port_id;
  wire pr_done;
  wire pr_trigger;
  wire rdbk_crc;
  wire rom_cr_ne_err;
  wire rom_error;
  wire sleep;
  wire status_reg0;
  wire status_reg20;
  wire [1:0]\status_reg2_reg[1]_0 ;
  wire \status_reg_reg_n_0_[7] ;
  wire sync_init;
  wire [7:0]timer_byte;
  wire timer_snap0;

  LUT5 #(
    .INIT(32'hBFAABBAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(pr_trigger),
        .I2(\FSM_onehot_state[4]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(pr_trigger),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hEA00AA00)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(pr_trigger),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999099)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\status_reg2_reg[1]_0 [0]),
        .I1(\status_reg2_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(next_request),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(next_request),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(pr_done),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(pr_done),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(sync_init));
  (* FSM_ENCODED_STATES = "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    aux_cr_es_err_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_55),
        .Q(aux_cr_es_err),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    aux_cr_ne_err_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_54),
        .Q(aux_cr_ne_err),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    aux_uc_err_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_56),
        .Q(aux_uc_err),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    bgo_strobe_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(bgo_strobe0),
        .Q(bgo_strobe),
        .R(sync_init));
  LUT3 #(
    .INIT(8'hFE)) 
    cap_req_i_1
       (.I0(cap_req_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(icap_request));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cap_req_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(cap_req_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    cap_req_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_request),
        .Q(cap_req),
        .S(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    cgo_flag_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_51),
        .Q(cgo_flag_reg_0),
        .R(sync_init));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[0]_i_1 
       (.I0(command_code[0]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[10]_i_1 
       (.I0(command_code[10]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[10]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[11]_i_1 
       (.I0(command_code[11]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[12]_i_1 
       (.I0(command_code[12]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[12]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[13]_i_1 
       (.I0(command_code[13]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[14]_i_1 
       (.I0(command_code[14]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[14]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[15]_i_1 
       (.I0(command_code[15]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[16]_i_1 
       (.I0(command_code[16]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[17]_i_1 
       (.I0(command_code[17]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[18]_i_1 
       (.I0(command_code[18]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[18]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[19]_i_1 
       (.I0(command_code[19]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[19]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[1]_i_1 
       (.I0(command_code[1]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[20]_i_1 
       (.I0(command_code[20]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[20]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[21]_i_1 
       (.I0(command_code[21]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[21]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[22]_i_1 
       (.I0(command_code[22]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[22]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[23]_i_1 
       (.I0(command_code[23]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[23]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[24]_i_1 
       (.I0(command_code[24]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[25]_i_1 
       (.I0(command_code[25]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[25]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[26]_i_1 
       (.I0(command_code[26]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[26]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[27]_i_1 
       (.I0(command_code[27]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[27]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[28]_i_1 
       (.I0(command_code[28]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[28]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[29]_i_1 
       (.I0(command_code[29]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \command_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\command_reg[39]_i_3_n_0 ),
        .I2(command_code[2]),
        .O(command_code_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[30]_i_1 
       (.I0(command_code[30]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[30]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[31]_i_1 
       (.I0(command_code[31]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[31]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[32]_i_1 
       (.I0(command_code[32]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[32]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[33]_i_1 
       (.I0(command_code[33]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[33]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[34]_i_1 
       (.I0(command_code[34]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[34]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[35]_i_1 
       (.I0(command_code[35]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[35]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \command_reg[36]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\command_reg[39]_i_3_n_0 ),
        .I2(command_code[36]),
        .O(command_code_int[36]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \command_reg[37]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\command_reg[39]_i_3_n_0 ),
        .I3(command_code[37]),
        .O(command_code_int[37]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \command_reg[38]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\command_reg[39]_i_3_n_0 ),
        .I2(command_code[38]),
        .O(command_code_int[38]));
  LUT5 #(
    .INIT(32'h0000FFF2)) 
    \command_reg[39]_i_1 
       (.I0(command_strobe),
        .I1(\command_reg[39]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(cgo_flag_reg_0),
        .O(cgo_flag017_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \command_reg[39]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\command_reg[39]_i_3_n_0 ),
        .I3(command_code[39]),
        .O(command_code_int[39]));
  LUT3 #(
    .INIT(8'hFE)) 
    \command_reg[39]_i_3 
       (.I0(cap_req_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\command_reg[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[3]_i_1 
       (.I0(command_code[3]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[4]_i_1 
       (.I0(command_code[4]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[5]_i_1 
       (.I0(command_code[5]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[6]_i_1 
       (.I0(command_code[6]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[7]_i_1 
       (.I0(command_code[7]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[8]_i_1 
       (.I0(command_code[8]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \command_reg[9]_i_1 
       (.I0(command_code[9]),
        .I1(\command_reg[39]_i_3_n_0 ),
        .O(command_code_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[0] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[0]),
        .Q(\command_reg_reg_n_0_[0] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[10] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[10]),
        .Q(data10[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[11] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[11]),
        .Q(data10[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[12] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[12]),
        .Q(data10[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[13] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[13]),
        .Q(data10[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[14] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[14]),
        .Q(data10[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[15] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[15]),
        .Q(data10[7]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[16] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[16]),
        .Q(data11[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[17] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[17]),
        .Q(data11[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[18] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[18]),
        .Q(data11[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[19] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[19]),
        .Q(data11[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[1] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[1]),
        .Q(\command_reg_reg_n_0_[1] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[20] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[20]),
        .Q(data11[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[21] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[21]),
        .Q(data11[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[22] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[22]),
        .Q(data11[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[23] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[23]),
        .Q(data11[7]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[24] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[24]),
        .Q(data12[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[25] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[25]),
        .Q(data12[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[26] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[26]),
        .Q(data12[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[27] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[27]),
        .Q(data12[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[28] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[28]),
        .Q(data12[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[29] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[29]),
        .Q(data12[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[2] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[2]),
        .Q(\command_reg_reg_n_0_[2] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[30] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[30]),
        .Q(data12[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[31] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[31]),
        .Q(data12[7]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[32] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[32]),
        .Q(data13[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[33] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[33]),
        .Q(data13[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[34] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[34]),
        .Q(data13[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[35] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[35]),
        .Q(data13[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[36] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[36]),
        .Q(data13[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[37] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[37]),
        .Q(data13[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[38] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[38]),
        .Q(data13[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[39] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[39]),
        .Q(data13[7]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[3] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[3]),
        .Q(\command_reg_reg_n_0_[3] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[4] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[4]),
        .Q(\command_reg_reg_n_0_[4] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[5] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[5]),
        .Q(\command_reg_reg_n_0_[5] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[6] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[6]),
        .Q(\command_reg_reg_n_0_[6] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[7] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[7]),
        .Q(\command_reg_reg_n_0_[7] ),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[8] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[8]),
        .Q(data10[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg_reg[9] 
       (.C(icap_clk),
        .CE(cgo_flag017_out),
        .D(command_code_int[9]),
        .Q(data10[1]),
        .R(sync_init));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer controller_dbuffer
       (.D({controller_picocpu_n_35,controller_picocpu_n_36,controller_picocpu_n_37,controller_picocpu_n_38,controller_picocpu_n_39,controller_picocpu_n_40,controller_picocpu_n_41}),
        .E({controller_picocpu_n_2,controller_picocpu_n_3}),
        .Q({addrb[8],addrb[3:0],controller_dbuffer_n_5,controller_dbuffer_n_6}),
        .bgo_strobe(bgo_strobe),
        .bram_enable(bram_enable),
        .burst(burst),
        .\end_ptr_reg[0]_0 (controller_dbuffer_n_47),
        .\end_ptr_reg[10]_0 (controller_picocpu_n_5),
        .\end_ptr_reg[2]_0 (controller_dbuffer_n_49),
        .\end_ptr_reg[4]_0 (controller_dbuffer_n_51),
        .\end_ptr_reg[7]_0 (end_ptr1),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_rdwrb(icap_rdwrb),
        .out_port_reg(monitor_txdata),
        .port_id(port_id),
        .\sta_ptr_reg[11]_0 (controller_dbuffer_n_46),
        .\sta_ptr_reg[1]_0 (controller_dbuffer_n_44),
        .\sta_ptr_reg[2]_0 (controller_dbuffer_n_45),
        .\sta_ptr_reg[3]_0 (controller_dbuffer_n_42),
        .\sta_ptr_reg[3]_1 (controller_dbuffer_n_50),
        .\sta_ptr_reg[5]_0 (controller_dbuffer_n_52),
        .\sta_ptr_reg[6]_0 (controller_dbuffer_n_53),
        .\sta_ptr_reg[6]_1 (controller_picocpu_n_6),
        .\sta_ptr_reg[7]_0 (controller_dbuffer_n_54),
        .\sta_ptr_reg[8]_0 (controller_picocpu_n_4),
        .\sta_ptr_reg[9]_0 (controller_dbuffer_n_43),
        .\sta_ptr_reg[9]_1 (controller_dbuffer_n_48),
        .storage(controller_dbuffer_n_55),
        .storage_0(controller_dbuffer_n_56),
        .storage_1(controller_picocpu_n_45),
        .sync_init(sync_init));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom controller_instrom
       (.Q(instruction),
        .SR(sync_init),
        .address(address),
        .bram2_en(bram2_en),
        .bram_enable(bram_enable),
        .bram_wr_en0(bram_wr_en0),
        .bram_wr_en1(bram_wr_en1),
        .bram_wr_en2(bram_wr_en2),
        .casdomux2(casdomux2),
        .icap_clk(icap_clk),
        .rom_error(rom_error),
        .sleep(sleep));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu controller_picocpu
       (.D({controller_picocpu_n_35,controller_picocpu_n_36,controller_picocpu_n_37,controller_picocpu_n_38,controller_picocpu_n_39,controller_picocpu_n_40,controller_picocpu_n_41}),
        .E({controller_picocpu_n_2,controller_picocpu_n_3}),
        .\OUTRegistered.instruction_reg[0] (port_id),
        .Q({\status_reg_reg_n_0_[7] ,Q}),
        .SR(sync_init),
        .address(address),
        .aux_cr_es_err(aux_cr_es_err),
        .aux_cr_es_err_reg(aux_error_cr_es_sync),
        .aux_cr_ne_err(aux_cr_ne_err),
        .aux_cr_ne_err_reg(aux_error_cr_ne_sync),
        .aux_uc_err(aux_uc_err),
        .aux_uc_err_reg(aux_error_uc_sync),
        .bgo_strobe0(bgo_strobe0),
        .bram2_en(bram2_en),
        .bram_enable(bram_enable),
        .bram_wr_en0(bram_wr_en0),
        .bram_wr_en1(bram_wr_en1),
        .bram_wr_en2(bram_wr_en2),
        .burst(burst),
        .casdomux2(casdomux2),
        .cgo_flag_reg(cgo_flag_reg_0),
        .cgo_flag_reg_0(cgo_flag017_out),
        .const_strobe_flop_0(controller_picocpu_n_6),
        .const_strobe_flop_1(status_reg20),
        .const_strobe_flop_2(controller_picocpu_n_45),
        .eof_flag(eof_flag),
        .eos_flag(eos_flag),
        .fecc_crcerror(fecc_crcerror),
        .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
        .fecc_eccerrorsingle(fecc_eccerrorsingle),
        .fecc_endofframe(fecc_endofframe),
        .fecc_endofscan(fecc_endofscan),
        .fetch_rxread(fetch_rxread),
        .fetch_txwrite(fetch_txwrite),
        .firmware0(controller_picocpu_n_47),
        .flag_enable_flop_0(instruction),
        .icap_clk(icap_clk),
        .monitor_rxdata(monitor_rxdata),
        .monitor_rxempty(monitor_rxempty),
        .monitor_rxread(monitor_rxread),
        .monitor_txfull(monitor_txfull),
        .monitor_txwrite(monitor_txwrite),
        .out_port_reg(monitor_txdata),
        .p_4_in(p_4_in),
        .p_6_in(p_6_in),
        .\ports_loop[0].in_port_flop_0 (controller_dbuffer_n_47),
        .\ports_loop[0].out_port_flop_0 (controller_picocpu_n_52),
        .\ports_loop[1].in_port_flop_0 (controller_dbuffer_n_48),
        .\ports_loop[1].out_port_flop_0 (controller_picocpu_n_53),
        .\ports_loop[1].port_id_flop_0 (status_reg0),
        .\ports_loop[2].in_port_flop_i_2_0 (controller_dbuffer_n_55),
        .\ports_loop[2].in_port_flop_i_2_1 (controller_dbuffer_n_49),
        .\ports_loop[2].out_port_flop_0 (controller_picocpu_n_51),
        .\ports_loop[2].port_id_flop_0 (controller_picocpu_n_5),
        .\ports_loop[2].port_id_flop_1 (p_1_in),
        .\ports_loop[2].port_id_flop_2 (end_ptr1),
        .\ports_loop[3].in_port_flop_0 (controller_dbuffer_n_50),
        .\ports_loop[4].in_port_flop_0 (controller_dbuffer_n_51),
        .\ports_loop[5].in_port_flop_0 (controller_dbuffer_n_52),
        .\ports_loop[6].in_port_flop_i_2_0 (controller_dbuffer_n_56),
        .\ports_loop[6].in_port_flop_i_2_1 (controller_dbuffer_n_53),
        .\ports_loop[6].out_port_flop_0 (controller_picocpu_n_59),
        .\ports_loop[7].in_port_flop_0 (timer_byte),
        .\ports_loop[7].in_port_flop_1 (controller_dbuffer_n_54),
        .\ports_loop[7].in_port_flop_2 ({data13,data12,data11,data10,\command_reg_reg_n_0_[7] ,\command_reg_reg_n_0_[6] ,\command_reg_reg_n_0_[5] ,\command_reg_reg_n_0_[4] ,\command_reg_reg_n_0_[3] ,\command_reg_reg_n_0_[2] ,\command_reg_reg_n_0_[1] ,\command_reg_reg_n_0_[0] }),
        .\ports_loop[7].out_port_flop_0 (controller_picocpu_n_57),
        .rdbk_crc(rdbk_crc),
        .rdbk_nsb_reg(controller_picocpu_n_58),
        .read_strobe_flop_0(controller_picocpu_n_4),
        .rom_cr_ne_err(rom_cr_ne_err),
        .rom_error(rom_error),
        .sleep(sleep),
        .\sta_ptr_reg[10] (controller_dbuffer_n_46),
        .\sta_ptr_reg[10]_0 ({addrb[8],addrb[3:0],controller_dbuffer_n_5,controller_dbuffer_n_6}),
        .\sta_ptr_reg[10]_1 (controller_dbuffer_n_43),
        .\sta_ptr_reg[3] (controller_dbuffer_n_44),
        .\sta_ptr_reg[4] (controller_dbuffer_n_45),
        .\sta_ptr_reg[5] (controller_dbuffer_n_42),
        .sync_g(controller_picocpu_n_54),
        .sync_g_0(controller_picocpu_n_55),
        .sync_g_1(controller_picocpu_n_56),
        .sync_out(icap_grant_sync),
        .timer_snap0(timer_snap0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro controller_synchro_aux_error_cr_es
       (.aux_error_cr_es(aux_error_cr_es),
        .icap_clk(icap_clk),
        .sync_out(aux_error_cr_es_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0 controller_synchro_aux_error_cr_ne
       (.aux_error_cr_ne(aux_error_cr_ne),
        .icap_clk(icap_clk),
        .sync_out(aux_error_cr_ne_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1 controller_synchro_aux_error_uc
       (.aux_error_uc(aux_error_uc),
        .icap_clk(icap_clk),
        .sync_out(aux_error_uc_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2 controller_synchro_icap_avail
       (.icap_avail(icap_avail),
        .icap_clk(icap_clk),
        .sync_out(p_6_in[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3 controller_synchro_icap_grant
       (.cap_gnt(cap_gnt),
        .icap_clk(icap_clk),
        .next_request0(next_request0),
        .next_request_reg(icap_rel_sync),
        .sync_out(icap_grant_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4 controller_synchro_icap_prdone
       (.icap_clk(icap_clk),
        .icap_prdone(icap_prdone),
        .sync_out(p_6_in[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5 controller_synchro_icap_prerror
       (.icap_clk(icap_clk),
        .icap_prerror(icap_prerror),
        .sync_out(p_6_in[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6 controller_synchro_icap_rel
       (.cap_rel(cap_rel),
        .icap_clk(icap_clk),
        .sync_out(icap_rel_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer controller_timer
       (.D(monitor_txdata[1:0]),
        .E(p_1_in),
        .Q(timer_byte),
        .SR(sync_init),
        .icap_clk(icap_clk),
        .timer_snap0(timer_snap0));
  FDRE #(
    .INIT(1'b0)) 
    eof_flag_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_52),
        .Q(eof_flag),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    eos_flag_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_53),
        .Q(eos_flag),
        .R(sync_init));
  FDRE next_request_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(next_request0),
        .Q(next_request),
        .R(sync_init));
  FDRE pr_done_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_grant_sync),
        .Q(pr_done),
        .R(sync_init));
  FDRE pr_trigger_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_rel_sync),
        .Q(pr_trigger),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    rdbk_crc_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_57),
        .Q(rdbk_crc),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    rdbk_nsb_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_58),
        .Q(p_4_in[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    rdbk_sbe_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(controller_picocpu_n_59),
        .Q(p_4_in[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    rom_cr_ne_err_reg
       (.C(icap_clk),
        .CE(controller_picocpu_n_47),
        .D(rom_error),
        .Q(rom_cr_ne_err),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg2_reg[0] 
       (.C(icap_clk),
        .CE(status_reg20),
        .D(monitor_txdata[0]),
        .Q(\status_reg2_reg[1]_0 [0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg2_reg[1] 
       (.C(icap_clk),
        .CE(status_reg20),
        .D(monitor_txdata[1]),
        .Q(\status_reg2_reg[1]_0 [1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[0]),
        .Q(Q[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[1]),
        .Q(Q[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[2]),
        .Q(Q[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[3]),
        .Q(Q[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[4]),
        .Q(Q[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[5]),
        .Q(Q[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[6]),
        .Q(Q[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(icap_clk),
        .CE(status_reg0),
        .D(monitor_txdata[7]),
        .Q(\status_reg_reg_n_0_[7] ),
        .R(sync_init));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer
   (Q,
    icap_csib,
    icap_rdwrb,
    icap_i,
    burst,
    \sta_ptr_reg[3]_0 ,
    \sta_ptr_reg[9]_0 ,
    \sta_ptr_reg[1]_0 ,
    \sta_ptr_reg[2]_0 ,
    \sta_ptr_reg[11]_0 ,
    \end_ptr_reg[0]_0 ,
    \sta_ptr_reg[9]_1 ,
    \end_ptr_reg[2]_0 ,
    \sta_ptr_reg[3]_1 ,
    \end_ptr_reg[4]_0 ,
    \sta_ptr_reg[5]_0 ,
    \sta_ptr_reg[6]_0 ,
    \sta_ptr_reg[7]_0 ,
    storage,
    storage_0,
    icap_clk,
    bram_enable,
    sync_init,
    out_port_reg,
    \sta_ptr_reg[6]_1 ,
    storage_1,
    \end_ptr_reg[10]_0 ,
    \sta_ptr_reg[8]_0 ,
    port_id,
    bgo_strobe,
    E,
    D,
    \end_ptr_reg[7]_0 ,
    icap_o);
  output [6:0]Q;
  output icap_csib;
  output icap_rdwrb;
  output [31:0]icap_i;
  output burst;
  output \sta_ptr_reg[3]_0 ;
  output \sta_ptr_reg[9]_0 ;
  output \sta_ptr_reg[1]_0 ;
  output \sta_ptr_reg[2]_0 ;
  output \sta_ptr_reg[11]_0 ;
  output \end_ptr_reg[0]_0 ;
  output \sta_ptr_reg[9]_1 ;
  output \end_ptr_reg[2]_0 ;
  output \sta_ptr_reg[3]_1 ;
  output \end_ptr_reg[4]_0 ;
  output \sta_ptr_reg[5]_0 ;
  output \sta_ptr_reg[6]_0 ;
  output \sta_ptr_reg[7]_0 ;
  output storage;
  output storage_0;
  input icap_clk;
  input bram_enable;
  input sync_init;
  input [7:0]out_port_reg;
  input \sta_ptr_reg[6]_1 ;
  input storage_1;
  input \end_ptr_reg[10]_0 ;
  input \sta_ptr_reg[8]_0 ;
  input [1:0]port_id;
  input bgo_strobe;
  input [1:0]E;
  input [6:0]D;
  input [0:0]\end_ptr_reg[7]_0 ;
  input [31:0]icap_o;

  wire [6:0]D;
  wire [1:0]E;
  wire [6:0]Q;
  wire [9:4]addrb;
  wire bgo_strobe;
  wire bram_enable;
  wire burst;
  wire burst_flag_i_1_n_0;
  wire dbuffer_dbuffer_mem_n_32;
  wire dbuffer_dbuffer_mem_n_33;
  wire dbuffer_dbuffer_mem_n_34;
  wire dbuffer_dbuffer_mem_n_35;
  wire dbuffer_dbuffer_mem_n_36;
  wire dbuffer_dbuffer_mem_n_37;
  wire dbuffer_dbuffer_mem_n_38;
  wire dbuffer_dbuffer_mem_n_39;
  wire dbuffer_dbuffer_mem_n_40;
  wire dbuffer_dbuffer_mem_n_41;
  wire dbuffer_dbuffer_mem_n_42;
  wire dbuffer_dbuffer_mem_n_43;
  wire dbuffer_dbuffer_mem_n_44;
  wire dbuffer_dbuffer_mem_n_45;
  wire [34:0]doutb;
  wire ena;
  wire [11:0]end_ptr;
  wire \end_ptr_reg[0]_0 ;
  wire \end_ptr_reg[10]_0 ;
  wire \end_ptr_reg[2]_0 ;
  wire \end_ptr_reg[4]_0 ;
  wire [0:0]\end_ptr_reg[7]_0 ;
  wire icap_clk;
  wire [31:0]icap_o;
  wire [7:0]out_port_reg;
  wire [1:0]port_id;
  (* DONT_TOUCH *) wire [9:0]reg_fm_icap_addr;
  (* DONT_TOUCH *) wire reg_fm_icap_ena;
  (* DONT_TOUCH *) wire [31:0]reg_fm_icap_o;
  (* DONT_TOUCH *) wire reg_fm_icap_rsv;
  wire reg_fm_icap_rsv_i_1_n_0;
  (* DONT_TOUCH *) wire reg_fm_icap_wc;
  wire reg_fm_icap_wc_i_1_n_0;
  (* DONT_TOUCH *) wire [9:0]reg_to_icap_addr;
  (* DONT_TOUCH *) wire reg_to_icap_csib;
  (* DONT_TOUCH *) wire reg_to_icap_ena;
  (* DONT_TOUCH *) wire [31:0]reg_to_icap_i;
  (* DONT_TOUCH *) wire reg_to_icap_rdwrb;
  (* DONT_TOUCH *) wire reg_to_icap_rsvb;
  (* DONT_TOUCH *) wire reg_to_icap_wcb;
  wire \sta_ptr[11]_i_2_n_0 ;
  wire \sta_ptr[11]_i_7_n_0 ;
  wire \sta_ptr[11]_i_8_n_0 ;
  wire \sta_ptr[11]_i_9_n_0 ;
  wire \sta_ptr[6]_i_1_n_0 ;
  wire \sta_ptr[7]_i_2_n_0 ;
  wire \sta_ptr[8]_i_1_n_0 ;
  wire \sta_ptr[8]_i_2_n_0 ;
  wire \sta_ptr[9]_i_1_n_0 ;
  wire \sta_ptr[9]_i_2_n_0 ;
  wire \sta_ptr_reg[11]_0 ;
  wire \sta_ptr_reg[1]_0 ;
  wire \sta_ptr_reg[2]_0 ;
  wire \sta_ptr_reg[3]_0 ;
  wire \sta_ptr_reg[3]_1 ;
  wire \sta_ptr_reg[5]_0 ;
  wire \sta_ptr_reg[6]_0 ;
  wire \sta_ptr_reg[6]_1 ;
  wire \sta_ptr_reg[7]_0 ;
  wire \sta_ptr_reg[8]_0 ;
  wire \sta_ptr_reg[9]_0 ;
  wire \sta_ptr_reg[9]_1 ;
  wire storage;
  wire storage_0;
  wire storage_1;
  wire sync_init;

  assign icap_csib = reg_to_icap_csib;
  assign icap_i[31:0] = reg_to_icap_i;
  assign icap_rdwrb = reg_to_icap_rdwrb;
  LUT3 #(
    .INIT(8'hBA)) 
    burst_flag_i_1
       (.I0(bgo_strobe),
        .I1(\sta_ptr_reg[11]_0 ),
        .I2(burst),
        .O(burst_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    burst_flag_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(burst_flag_i_1_n_0),
        .Q(burst),
        .R(sync_init));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem dbuffer_dbuffer_mem
       (.D({doutb[27],doutb[28],doutb[29],doutb[30],doutb[31],doutb[32],doutb[33],doutb[34],doutb[18],doutb[19],doutb[20],doutb[21],doutb[22],doutb[23],doutb[24],doutb[25],doutb[9],doutb[10],doutb[11],doutb[12],doutb[13],doutb[14],doutb[15],doutb[16],doutb[0],doutb[1],doutb[2],doutb[3],doutb[4],doutb[5],doutb[6],doutb[7]}),
        .Q({addrb[9],Q[6],addrb[7:4],Q[5:0]}),
        .bram_enable(bram_enable),
        .ena(ena),
        .\end_ptr_reg[0] (\end_ptr_reg[0]_0 ),
        .\end_ptr_reg[4] (\end_ptr_reg[4]_0 ),
        .icap_clk(icap_clk),
        .out(reg_fm_icap_wc),
        .out_port_reg(out_port_reg),
        .port_id(port_id),
        .\ports_loop[7].in_port_flop_i_5 ({end_ptr[11],end_ptr[9:7],end_ptr[5:3],end_ptr[1:0]}),
        .\sta_ptr_reg[3] (\sta_ptr_reg[3]_1 ),
        .\sta_ptr_reg[5] (\sta_ptr_reg[5]_0 ),
        .\sta_ptr_reg[7] (\sta_ptr_reg[7]_0 ),
        .\sta_ptr_reg[9] (\sta_ptr_reg[9]_1 ),
        .storage_0(dbuffer_dbuffer_mem_n_32),
        .storage_1(dbuffer_dbuffer_mem_n_33),
        .storage_10(dbuffer_dbuffer_mem_n_42),
        .storage_11(dbuffer_dbuffer_mem_n_43),
        .storage_12(dbuffer_dbuffer_mem_n_44),
        .storage_13(dbuffer_dbuffer_mem_n_45),
        .storage_14(storage),
        .storage_15(storage_0),
        .storage_16(reg_fm_icap_ena),
        .storage_17(storage_1),
        .storage_18(reg_fm_icap_addr),
        .storage_19(reg_fm_icap_o),
        .storage_2(dbuffer_dbuffer_mem_n_34),
        .storage_3(dbuffer_dbuffer_mem_n_35),
        .storage_4(dbuffer_dbuffer_mem_n_36),
        .storage_5(dbuffer_dbuffer_mem_n_37),
        .storage_6(dbuffer_dbuffer_mem_n_38),
        .storage_7(dbuffer_dbuffer_mem_n_39),
        .storage_8(dbuffer_dbuffer_mem_n_40),
        .storage_9(dbuffer_dbuffer_mem_n_41));
  FDRE #(
    .INIT(1'b0)) 
    ena_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(burst),
        .Q(ena),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[0] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[0]),
        .Q(end_ptr[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[10] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[10]_0 ),
        .D(out_port_reg[6]),
        .Q(end_ptr[10]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[11] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[10]_0 ),
        .D(out_port_reg[7]),
        .Q(end_ptr[11]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[1] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[1]),
        .Q(end_ptr[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[2] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[2]),
        .Q(end_ptr[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[3] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[3]),
        .Q(end_ptr[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[4] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[4]),
        .Q(end_ptr[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[5] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[5]),
        .Q(end_ptr[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[6] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[6]),
        .Q(end_ptr[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[7] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[7]_0 ),
        .D(out_port_reg[7]),
        .Q(end_ptr[7]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[8] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[10]_0 ),
        .D(out_port_reg[4]),
        .Q(end_ptr[8]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \end_ptr_reg[9] 
       (.C(icap_clk),
        .CE(\end_ptr_reg[10]_0 ),
        .D(out_port_reg[5]),
        .Q(end_ptr[9]),
        .R(sync_init));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \ports_loop[2].in_port_flop_i_9 
       (.I0(end_ptr[2]),
        .I1(Q[6]),
        .I2(port_id[1]),
        .I3(port_id[0]),
        .I4(Q[2]),
        .O(\end_ptr_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \ports_loop[6].in_port_flop_i_9 
       (.I0(addrb[4]),
        .I1(end_ptr[10]),
        .I2(port_id[1]),
        .I3(port_id[0]),
        .I4(end_ptr[6]),
        .O(\sta_ptr_reg[6]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[0]),
        .Q(reg_fm_icap_addr[0]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[1]),
        .Q(reg_fm_icap_addr[1]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[2]),
        .Q(reg_fm_icap_addr[2]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[3]),
        .Q(reg_fm_icap_addr[3]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[4]),
        .Q(reg_fm_icap_addr[4]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[5]),
        .Q(reg_fm_icap_addr[5]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[6]),
        .Q(reg_fm_icap_addr[6]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[7]),
        .Q(reg_fm_icap_addr[7]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[8]),
        .Q(reg_fm_icap_addr[8]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_fm_icap_addr_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_addr[9]),
        .Q(reg_fm_icap_addr[9]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    reg_fm_icap_ena_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_to_icap_ena),
        .Q(reg_fm_icap_ena),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[0]),
        .Q(reg_fm_icap_o[0]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[10] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[10]),
        .Q(reg_fm_icap_o[10]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[11] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[11]),
        .Q(reg_fm_icap_o[11]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[12] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[12]),
        .Q(reg_fm_icap_o[12]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[13] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[13]),
        .Q(reg_fm_icap_o[13]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[14] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[14]),
        .Q(reg_fm_icap_o[14]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[15] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[15]),
        .Q(reg_fm_icap_o[15]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[16] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[16]),
        .Q(reg_fm_icap_o[16]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[17] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[17]),
        .Q(reg_fm_icap_o[17]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[18] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[18]),
        .Q(reg_fm_icap_o[18]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[19] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[19]),
        .Q(reg_fm_icap_o[19]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[1]),
        .Q(reg_fm_icap_o[1]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[20] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[20]),
        .Q(reg_fm_icap_o[20]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[21] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[21]),
        .Q(reg_fm_icap_o[21]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[22] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[22]),
        .Q(reg_fm_icap_o[22]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[23] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[23]),
        .Q(reg_fm_icap_o[23]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[24] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[24]),
        .Q(reg_fm_icap_o[24]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[25] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[25]),
        .Q(reg_fm_icap_o[25]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[26] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[26]),
        .Q(reg_fm_icap_o[26]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[27] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[27]),
        .Q(reg_fm_icap_o[27]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[28] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[28]),
        .Q(reg_fm_icap_o[28]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[29] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[29]),
        .Q(reg_fm_icap_o[29]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[2]),
        .Q(reg_fm_icap_o[2]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[30] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[30]),
        .Q(reg_fm_icap_o[30]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[31] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[31]),
        .Q(reg_fm_icap_o[31]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[3]),
        .Q(reg_fm_icap_o[3]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[4]),
        .Q(reg_fm_icap_o[4]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[5]),
        .Q(reg_fm_icap_o[5]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[6]),
        .Q(reg_fm_icap_o[6]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[7]),
        .Q(reg_fm_icap_o[7]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[8]),
        .Q(reg_fm_icap_o[8]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_fm_icap_o_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_o[9]),
        .Q(reg_fm_icap_o[9]),
        .S(sync_init));
  LUT1 #(
    .INIT(2'h1)) 
    reg_fm_icap_rsv_i_1
       (.I0(reg_to_icap_rsvb),
        .O(reg_fm_icap_rsv_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    reg_fm_icap_rsv_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_fm_icap_rsv_i_1_n_0),
        .Q(reg_fm_icap_rsv),
        .R(sync_init));
  LUT1 #(
    .INIT(2'h1)) 
    reg_fm_icap_wc_i_1
       (.I0(reg_to_icap_wcb),
        .O(reg_fm_icap_wc_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    reg_fm_icap_wc_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(reg_fm_icap_wc_i_1_n_0),
        .Q(reg_fm_icap_wc),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_41),
        .Q(reg_to_icap_addr[0]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_40),
        .Q(reg_to_icap_addr[1]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_39),
        .Q(reg_to_icap_addr[2]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_38),
        .Q(reg_to_icap_addr[3]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_37),
        .Q(reg_to_icap_addr[4]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_36),
        .Q(reg_to_icap_addr[5]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_35),
        .Q(reg_to_icap_addr[6]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_34),
        .Q(reg_to_icap_addr[7]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_33),
        .Q(reg_to_icap_addr[8]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_to_icap_addr_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_32),
        .Q(reg_to_icap_addr[9]),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    reg_to_icap_csib_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_42),
        .Q(reg_to_icap_csib),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    reg_to_icap_ena_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(ena),
        .Q(reg_to_icap_ena),
        .R(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[7]),
        .Q(reg_to_icap_i[0]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[10] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[14]),
        .Q(reg_to_icap_i[10]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[11] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[13]),
        .Q(reg_to_icap_i[11]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[12] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[12]),
        .Q(reg_to_icap_i[12]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[13] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[11]),
        .Q(reg_to_icap_i[13]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[14] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[10]),
        .Q(reg_to_icap_i[14]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[15] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[9]),
        .Q(reg_to_icap_i[15]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[16] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[25]),
        .Q(reg_to_icap_i[16]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[17] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[24]),
        .Q(reg_to_icap_i[17]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[18] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[23]),
        .Q(reg_to_icap_i[18]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[19] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[22]),
        .Q(reg_to_icap_i[19]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[6]),
        .Q(reg_to_icap_i[1]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[20] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[21]),
        .Q(reg_to_icap_i[20]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[21] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[20]),
        .Q(reg_to_icap_i[21]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[22] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[19]),
        .Q(reg_to_icap_i[22]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[23] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[18]),
        .Q(reg_to_icap_i[23]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[24] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[34]),
        .Q(reg_to_icap_i[24]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[25] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[33]),
        .Q(reg_to_icap_i[25]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[26] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[32]),
        .Q(reg_to_icap_i[26]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[27] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[31]),
        .Q(reg_to_icap_i[27]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[28] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[30]),
        .Q(reg_to_icap_i[28]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[29] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[29]),
        .Q(reg_to_icap_i[29]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[5]),
        .Q(reg_to_icap_i[2]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[30] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[28]),
        .Q(reg_to_icap_i[30]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[31] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[27]),
        .Q(reg_to_icap_i[31]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[4]),
        .Q(reg_to_icap_i[3]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[3]),
        .Q(reg_to_icap_i[4]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[2]),
        .Q(reg_to_icap_i[5]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[1]),
        .Q(reg_to_icap_i[6]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[0]),
        .Q(reg_to_icap_i[7]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[16]),
        .Q(reg_to_icap_i[8]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_to_icap_i_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(doutb[15]),
        .Q(reg_to_icap_i[9]),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    reg_to_icap_rdwrb_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_43),
        .Q(reg_to_icap_rdwrb),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    reg_to_icap_rsvb_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_45),
        .Q(reg_to_icap_rsvb),
        .S(sync_init));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    reg_to_icap_wcb_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(dbuffer_dbuffer_mem_n_44),
        .Q(reg_to_icap_wcb),
        .S(sync_init));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \sta_ptr[11]_i_2 
       (.I0(out_port_reg[3]),
        .I1(\end_ptr_reg[10]_0 ),
        .I2(addrb[9]),
        .I3(\sta_ptr_reg[9]_0 ),
        .I4(Q[6]),
        .O(\sta_ptr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000004)) 
    \sta_ptr[11]_i_3 
       (.I0(\sta_ptr[11]_i_7_n_0 ),
        .I1(\sta_ptr[11]_i_8_n_0 ),
        .I2(\sta_ptr[11]_i_9_n_0 ),
        .I3(addrb[9]),
        .I4(end_ptr[11]),
        .O(\sta_ptr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sta_ptr[11]_i_6 
       (.I0(addrb[7]),
        .I1(addrb[5]),
        .I2(\sta_ptr_reg[3]_0 ),
        .I3(Q[5]),
        .I4(addrb[4]),
        .I5(addrb[6]),
        .O(\sta_ptr_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \sta_ptr[11]_i_7 
       (.I0(end_ptr[5]),
        .I1(Q[5]),
        .I2(addrb[5]),
        .I3(end_ptr[7]),
        .I4(addrb[4]),
        .I5(end_ptr[6]),
        .O(\sta_ptr[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sta_ptr[11]_i_8 
       (.I0(end_ptr[8]),
        .I1(addrb[6]),
        .I2(addrb[7]),
        .I3(end_ptr[9]),
        .I4(Q[6]),
        .I5(end_ptr[10]),
        .O(\sta_ptr[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \sta_ptr[11]_i_9 
       (.I0(Q[3]),
        .I1(end_ptr[3]),
        .I2(Q[4]),
        .I3(end_ptr[4]),
        .I4(end_ptr[2]),
        .I5(Q[2]),
        .O(\sta_ptr[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sta_ptr[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\sta_ptr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h5DDDFFFF)) 
    \sta_ptr[4]_i_2 
       (.I0(Q[2]),
        .I1(\sta_ptr_reg[8]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\sta_ptr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8BB8B88)) 
    \sta_ptr[6]_i_1 
       (.I0(out_port_reg[6]),
        .I1(\sta_ptr_reg[6]_1 ),
        .I2(\sta_ptr_reg[3]_0 ),
        .I3(Q[5]),
        .I4(addrb[4]),
        .O(\sta_ptr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB8B8B8B8B8B8)) 
    \sta_ptr[7]_i_2 
       (.I0(out_port_reg[7]),
        .I1(\sta_ptr_reg[6]_1 ),
        .I2(addrb[5]),
        .I3(\sta_ptr_reg[3]_0 ),
        .I4(Q[5]),
        .I5(addrb[4]),
        .O(\sta_ptr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F55FFFFFFFFFFFF)) 
    \sta_ptr[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\sta_ptr_reg[8]_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sta_ptr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hB8B88BB8B8B8B8B8)) 
    \sta_ptr[8]_i_1 
       (.I0(out_port_reg[0]),
        .I1(\end_ptr_reg[10]_0 ),
        .I2(addrb[6]),
        .I3(addrb[4]),
        .I4(\sta_ptr[8]_i_2_n_0 ),
        .I5(addrb[5]),
        .O(\sta_ptr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF777FFFFFFFFFFFF)) 
    \sta_ptr[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\sta_ptr_reg[8]_0 ),
        .I3(\sta_ptr_reg[1]_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\sta_ptr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \sta_ptr[9]_i_1 
       (.I0(out_port_reg[1]),
        .I1(\end_ptr_reg[10]_0 ),
        .I2(addrb[7]),
        .I3(addrb[5]),
        .I4(\sta_ptr[9]_i_2_n_0 ),
        .I5(addrb[6]),
        .O(\sta_ptr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sta_ptr[9]_i_2 
       (.I0(addrb[4]),
        .I1(Q[5]),
        .I2(\sta_ptr_reg[3]_0 ),
        .O(\sta_ptr[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[0] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[10] 
       (.C(icap_clk),
        .CE(E[1]),
        .D(D[6]),
        .Q(Q[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[11] 
       (.C(icap_clk),
        .CE(E[1]),
        .D(\sta_ptr[11]_i_2_n_0 ),
        .Q(addrb[9]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[1] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[2] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[3] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[4] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[5] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[6] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(\sta_ptr[6]_i_1_n_0 ),
        .Q(addrb[4]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[7] 
       (.C(icap_clk),
        .CE(E[0]),
        .D(\sta_ptr[7]_i_2_n_0 ),
        .Q(addrb[5]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[8] 
       (.C(icap_clk),
        .CE(E[1]),
        .D(\sta_ptr[8]_i_1_n_0 ),
        .Q(addrb[6]),
        .R(sync_init));
  FDRE #(
    .INIT(1'b0)) 
    \sta_ptr_reg[9] 
       (.C(icap_clk),
        .CE(E[1]),
        .D(\sta_ptr[9]_i_1_n_0 ),
        .Q(addrb[7]),
        .R(sync_init));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem
   (D,
    storage_0,
    storage_1,
    storage_2,
    storage_3,
    storage_4,
    storage_5,
    storage_6,
    storage_7,
    storage_8,
    storage_9,
    storage_10,
    storage_11,
    storage_12,
    storage_13,
    \end_ptr_reg[0] ,
    \sta_ptr_reg[9] ,
    \sta_ptr_reg[3] ,
    \end_ptr_reg[4] ,
    \sta_ptr_reg[5] ,
    \sta_ptr_reg[7] ,
    storage_14,
    storage_15,
    icap_clk,
    bram_enable,
    Q,
    ena,
    out,
    storage_16,
    storage_17,
    \ports_loop[7].in_port_flop_i_5 ,
    port_id,
    storage_18,
    storage_19,
    out_port_reg);
  output [31:0]D;
  output storage_0;
  output storage_1;
  output storage_2;
  output storage_3;
  output storage_4;
  output storage_5;
  output storage_6;
  output storage_7;
  output storage_8;
  output storage_9;
  output storage_10;
  output storage_11;
  output storage_12;
  output storage_13;
  output \end_ptr_reg[0] ;
  output \sta_ptr_reg[9] ;
  output \sta_ptr_reg[3] ;
  output \end_ptr_reg[4] ;
  output \sta_ptr_reg[5] ;
  output \sta_ptr_reg[7] ;
  output storage_14;
  output storage_15;
  input icap_clk;
  input bram_enable;
  input [11:0]Q;
  input ena;
  input out;
  input storage_16;
  input storage_17;
  input [8:0]\ports_loop[7].in_port_flop_i_5 ;
  input [1:0]port_id;
  input [9:0]storage_18;
  input [31:0]storage_19;
  input [7:0]out_port_reg;

  wire [31:0]D;
  wire [11:0]Q;
  wire [9:0]addra;
  wire bram_enable;
  wire [34:0]dina;
  wire [35:8]doutb;
  wire ena;
  wire \end_ptr_reg[0] ;
  wire \end_ptr_reg[4] ;
  wire icap_clk;
  wire out;
  wire [7:0]out_port_reg;
  wire [1:0]port_id;
  wire \ports_loop[0].in_port_flop_i_13_n_0 ;
  wire \ports_loop[1].in_port_flop_i_8_n_0 ;
  wire \ports_loop[3].in_port_flop_i_8_n_0 ;
  wire \ports_loop[4].in_port_flop_i_7_n_0 ;
  wire \ports_loop[5].in_port_flop_i_7_n_0 ;
  wire [8:0]\ports_loop[7].in_port_flop_i_5 ;
  wire \ports_loop[7].in_port_flop_i_7_n_0 ;
  wire \sta_ptr_reg[3] ;
  wire \sta_ptr_reg[5] ;
  wire \sta_ptr_reg[7] ;
  wire \sta_ptr_reg[9] ;
  wire storage_0;
  wire storage_1;
  wire storage_10;
  wire storage_11;
  wire storage_12;
  wire storage_13;
  wire storage_14;
  wire storage_15;
  wire storage_16;
  wire storage_17;
  wire [9:0]storage_18;
  wire [31:0]storage_19;
  wire storage_2;
  wire storage_3;
  wire storage_4;
  wire storage_5;
  wire storage_6;
  wire storage_7;
  wire storage_8;
  wire storage_9;
  wire [3:0]wea;
  wire NLW_storage_CASOUTDBITERR_UNCONNECTED;
  wire NLW_storage_CASOUTSBITERR_UNCONNECTED;
  wire NLW_storage_DBITERR_UNCONNECTED;
  wire NLW_storage_SBITERR_UNCONNECTED;
  wire [31:0]NLW_storage_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_storage_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_storage_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_storage_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_storage_DOUTADOUT_UNCONNECTED;
  wire [3:0]NLW_storage_DOUTPADOUTP_UNCONNECTED;
  wire [7:0]NLW_storage_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_storage_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hCFF5C0F5CF05C005)) 
    \ports_loop[0].in_port_flop_i_10 
       (.I0(\ports_loop[0].in_port_flop_i_13_n_0 ),
        .I1(\ports_loop[7].in_port_flop_i_5 [0]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(Q[8]),
        .I5(Q[0]),
        .O(\end_ptr_reg[0] ));
  LUT6 #(
    .INIT(64'h3355000F3355FF0F)) 
    \ports_loop[0].in_port_flop_i_13 
       (.I0(D[23]),
        .I1(D[31]),
        .I2(D[7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(D[15]),
        .O(\ports_loop[0].in_port_flop_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCF50CF5FC050C05)) 
    \ports_loop[1].in_port_flop_i_5 
       (.I0(\ports_loop[1].in_port_flop_i_8_n_0 ),
        .I1(Q[9]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(\ports_loop[7].in_port_flop_i_5 [1]),
        .I5(Q[1]),
        .O(\sta_ptr_reg[9] ));
  LUT6 #(
    .INIT(64'h3355000F3355FF0F)) 
    \ports_loop[1].in_port_flop_i_8 
       (.I0(D[22]),
        .I1(D[30]),
        .I2(D[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(D[14]),
        .O(\ports_loop[1].in_port_flop_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[2].in_port_flop_i_8 
       (.I0(D[29]),
        .I1(D[5]),
        .I2(D[21]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[13]),
        .O(storage_14));
  LUT6 #(
    .INIT(64'hFFC5F0C50FC500C5)) 
    \ports_loop[3].in_port_flop_i_7 
       (.I0(\ports_loop[3].in_port_flop_i_8_n_0 ),
        .I1(Q[3]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(Q[11]),
        .I5(\ports_loop[7].in_port_flop_i_5 [2]),
        .O(\sta_ptr_reg[3] ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[3].in_port_flop_i_8 
       (.I0(D[28]),
        .I1(D[4]),
        .I2(D[20]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[12]),
        .O(\ports_loop[3].in_port_flop_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFF5C0F5CF05C005)) 
    \ports_loop[4].in_port_flop_i_4 
       (.I0(\ports_loop[4].in_port_flop_i_7_n_0 ),
        .I1(\ports_loop[7].in_port_flop_i_5 [3]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(\ports_loop[7].in_port_flop_i_5 [6]),
        .I5(Q[4]),
        .O(\end_ptr_reg[4] ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[4].in_port_flop_i_7 
       (.I0(D[27]),
        .I1(D[3]),
        .I2(D[19]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[11]),
        .O(\ports_loop[4].in_port_flop_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFC5F0C50FC500C5)) 
    \ports_loop[5].in_port_flop_i_4 
       (.I0(\ports_loop[5].in_port_flop_i_7_n_0 ),
        .I1(Q[5]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(\ports_loop[7].in_port_flop_i_5 [7]),
        .I5(\ports_loop[7].in_port_flop_i_5 [4]),
        .O(\sta_ptr_reg[5] ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[5].in_port_flop_i_7 
       (.I0(D[26]),
        .I1(D[2]),
        .I2(D[18]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[10]),
        .O(\ports_loop[5].in_port_flop_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[6].in_port_flop_i_8 
       (.I0(D[25]),
        .I1(D[1]),
        .I2(D[17]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[9]),
        .O(storage_15));
  LUT6 #(
    .INIT(64'hF0F0CCCCAAAA00FF)) 
    \ports_loop[7].in_port_flop_i_6 
       (.I0(Q[7]),
        .I1(\ports_loop[7].in_port_flop_i_5 [8]),
        .I2(\ports_loop[7].in_port_flop_i_5 [5]),
        .I3(\ports_loop[7].in_port_flop_i_7_n_0 ),
        .I4(port_id[0]),
        .I5(port_id[1]),
        .O(\sta_ptr_reg[7] ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \ports_loop[7].in_port_flop_i_7 
       (.I0(D[24]),
        .I1(D[0]),
        .I2(D[16]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(D[8]),
        .O(\ports_loop[7].in_port_flop_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[0]_i_1 
       (.I0(D[5]),
        .I1(ena),
        .O(storage_9));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[1]_i_1 
       (.I0(D[4]),
        .I1(ena),
        .O(storage_8));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[2]_i_1 
       (.I0(D[3]),
        .I1(ena),
        .O(storage_7));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[3]_i_1 
       (.I0(D[2]),
        .I1(ena),
        .O(storage_6));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[4]_i_1 
       (.I0(D[1]),
        .I1(ena),
        .O(storage_5));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[5]_i_1 
       (.I0(D[0]),
        .I1(ena),
        .O(storage_4));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[6]_i_1 
       (.I0(D[15]),
        .I1(ena),
        .O(storage_3));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[7]_i_1 
       (.I0(D[14]),
        .I1(ena),
        .O(storage_2));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[8]_i_1 
       (.I0(D[13]),
        .I1(ena),
        .O(storage_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_to_icap_addr[9]_i_1 
       (.I0(D[12]),
        .I1(ena),
        .O(storage_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reg_to_icap_csib_i_1
       (.I0(doutb[35]),
        .I1(ena),
        .O(storage_10));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reg_to_icap_rdwrb_i_1
       (.I0(doutb[26]),
        .I1(ena),
        .O(storage_11));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reg_to_icap_rsvb_i_1
       (.I0(doutb[8]),
        .I1(ena),
        .O(storage_13));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reg_to_icap_wcb_i_1
       (.I0(doutb[17]),
        .I1(ena),
        .O(storage_12));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h333333333333333333333333333333333333333F5777F3333FF33333FF33333F),
    .INITP_01(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INITP_02(256'h7777F3333333333333333333333333333333333F333333333333333333333333),
    .INITP_03(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INITP_04(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INITP_05(256'h5555555555555555555555555555555555555555555555555555555555577777),
    .INITP_06(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555777777777777777F3333FFFF3F),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFF2000000020000000AA9955662000000020000000FFFFFFFF),
    .INIT_01(256'h20000000FFFFFFFFFFFFFFFF2000000020000000DADADADA30ADDD0120000000),
    .INIT_02(256'hADDD0028FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000002000000028ADDD01),
    .INIT_03(256'hDADADADADADADADADADADADADADADADADADADADA500000F630004000FFFFFFFF),
    .INIT_04(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_05(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_06(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_07(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_08(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_09(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_0A(256'hECCCECCCDADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_0B(256'hDADADADADADADADADADADADADADADADADADADADADADADADAECCCECCCECCCECCC),
    .INIT_0C(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_0D(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_0E(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_0F(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_10(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_11(256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_12(256'h2000000020000000DADADADADADADADADADADADADADADADADADADADADADADADA),
    .INIT_13(256'h20000000200000002000000020000000200000004800010028006000FFFFFFFF),
    .INIT_14(256'h2000000020000000200000002000000020000000200000002000000020000000),
    .INIT_15(256'h2000000020000000200000002000000020000000200000002000000020000000),
    .INIT_16(256'h2000000020000000200000002000000020000000200000002000000020000000),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000002000000020000000),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hADDD0074ADDD0070ADDD006CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hADDD0094ADDD0090ADDD008CADDD0088ADDD0084ADDD0080ADDD007CADDD0078),
    .INIT_2A(256'hADDD00B4ADDD00B0ADDD00ACADDD00A8ADDD00A4ADDD00A0ADDD009CADDD0098),
    .INIT_2B(256'hADDD00D4ADDD00D0ADDD00CCADDD00C8ADDD00C4ADDD00C0ADDD00BCADDD00B8),
    .INIT_2C(256'hADDD00F4ADDD00F0ADDD00ECADDD00E8ADDD00E4ADDD00E0ADDD00DCADDD00D8),
    .INIT_2D(256'hADDD0114ADDD0110ADDD010CADDD0108ADDD0104ADDD0100ADDD00FCADDD00F8),
    .INIT_2E(256'hADDD0134ADDD0130ADDD012CADDD0128ADDD0124ADDD0120ADDD011CADDD0118),
    .INIT_2F(256'hADDD0154ADDD0150ADDD014CADDD0148ADDD0144ADDD0140ADDD013CADDD0138),
    .INIT_30(256'hADDD0174ADDD0170ADDD016CADDD0168ADDD0164ADDD0160ADDD015CADDD0158),
    .INIT_31(256'hADDD0194ADDD0190ADDD018CADDD0188ADDD0184ADDD0180ADDD017CADDD0178),
    .INIT_32(256'hADDD01B4ADDD01B0ADDD01ACADDD01A8ADDD01A4ADDD01A0ADDD019CADDD0198),
    .INIT_33(256'hADDD01D4ADDD01D0ADDD01CCADDD01C8ADDD01C4ADDD01C0ADDD01BCADDD01B8),
    .INIT_34(256'hADDD01F4ADDD01F0ADDD01ECADDD01E8ADDD01E4ADDD01E0ADDD01DCADDD01D8),
    .INIT_35(256'hADDD0214ADDD0210ADDD020CADDD0208ADDD0204ADDD0200ADDD01FCADDD01F8),
    .INIT_36(256'hADDD0234ADDD0230ADDD022CADDD0228ADDD0224ADDD0220ADDD021CADDD0218),
    .INIT_37(256'hADDD0254ADDD0250ADDD024CADDD0248ADDD0244ADDD0240ADDD023CADDD0238),
    .INIT_38(256'h2802400620000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20000000FFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2000000020000000),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hADDD0798ADDD0794ADDD0790ADDD078CADDD0788ADDD0784FFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFF07F2FFFF07F2FFFFFFFFFFFFFFFFFFFFFFFF07F2FFFFFFFF07F207F2FFFF),
    .INIT_3F(256'h040C3A0C0C3A100A00000C0514686643FFFFFFFFFFFFFFFFFFFF07F2FFFFFFFF),
    .INIT_40(256'h0C3A0C043A0C0C3A0C0C3A0C0C3A0C043A0C0C3A040C3A0C0C3A0C043A0C0C3A),
    .INIT_41(256'h3A0C0C3A040C3A0C0C3A0C043A0C0C3A040C3A0C0C3A0C063A0C0C3A040C3A0C),
    .INIT_42(256'h0C3A0C0C3A100A063A0C0C3A040C3A0C0C3A0C043A0C0C3A0C0C3A0C0C3A0C04),
    .INIT_43(256'h3A0C043A0C0C3A0C0C3A0C043A0C0C3A040C3A0C043A0C0C3A0C0C3A0C043A0C),
    .INIT_44(256'h0C0C3A0C043A0C0C3A0C043A0C0C3A0C063A0C0C3A040C3A0C043A0C0C3A0C0C),
    .INIT_45(256'h0C3A0C0C3A0C0C3A0C0C3A0C0C3A0C0C3A040C3A0C0C3A02063A0C0C3A040C3A),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'hFFFFFFFFF),
    .INIT_B(36'hFFFFFFFFF),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'hFFFFFFFFF),
    .SRVAL_B(36'hFFFFFFFFF),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    storage
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(NLW_storage_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_storage_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_storage_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_storage_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(NLW_storage_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_storage_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(icap_clk),
        .CLKBWRCLK(icap_clk),
        .DBITERR(NLW_storage_DBITERR_UNCONNECTED),
        .DINADIN({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b1,1'b1}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_storage_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({D[24],D[25],D[26],D[27],D[28],D[29],D[30],D[31],D[16],D[17],D[18],D[19],D[20],D[21],D[22],D[23],D[8],D[9],D[10],D[11],D[12],D[13],D[14],D[15],D[0],D[1],D[2],D[3],D[4],D[5],D[6],D[7]}),
        .DOUTPADOUTP(NLW_storage_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .ECCPARITY(NLW_storage_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(bram_enable),
        .ENBWREN(bram_enable),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_storage_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_storage_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA(wea),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_1
       (.I0(storage_18[9]),
        .I1(storage_16),
        .I2(Q[11]),
        .O(addra[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_10
       (.I0(storage_18[0]),
        .I1(storage_16),
        .I2(Q[2]),
        .O(addra[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_11
       (.I0(storage_19[24]),
        .I1(storage_16),
        .I2(out_port_reg[7]),
        .O(dina[34]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_12
       (.I0(storage_19[25]),
        .I1(storage_16),
        .I2(out_port_reg[6]),
        .O(dina[33]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_13
       (.I0(storage_19[26]),
        .I1(storage_16),
        .I2(out_port_reg[5]),
        .O(dina[32]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_14
       (.I0(storage_19[27]),
        .I1(storage_16),
        .I2(out_port_reg[4]),
        .O(dina[31]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_15
       (.I0(storage_19[28]),
        .I1(storage_16),
        .I2(out_port_reg[3]),
        .O(dina[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_16
       (.I0(storage_19[29]),
        .I1(storage_16),
        .I2(out_port_reg[2]),
        .O(dina[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_17
       (.I0(storage_19[30]),
        .I1(storage_16),
        .I2(out_port_reg[1]),
        .O(dina[28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_18
       (.I0(storage_19[31]),
        .I1(storage_16),
        .I2(out_port_reg[0]),
        .O(dina[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_19
       (.I0(storage_19[16]),
        .I1(storage_16),
        .I2(out_port_reg[7]),
        .O(dina[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_2
       (.I0(storage_18[8]),
        .I1(storage_16),
        .I2(Q[10]),
        .O(addra[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_20
       (.I0(storage_19[17]),
        .I1(storage_16),
        .I2(out_port_reg[6]),
        .O(dina[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_21
       (.I0(storage_19[18]),
        .I1(storage_16),
        .I2(out_port_reg[5]),
        .O(dina[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_22
       (.I0(storage_19[19]),
        .I1(storage_16),
        .I2(out_port_reg[4]),
        .O(dina[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_23
       (.I0(storage_19[20]),
        .I1(storage_16),
        .I2(out_port_reg[3]),
        .O(dina[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_24
       (.I0(storage_19[21]),
        .I1(storage_16),
        .I2(out_port_reg[2]),
        .O(dina[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_25
       (.I0(storage_19[22]),
        .I1(storage_16),
        .I2(out_port_reg[1]),
        .O(dina[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_26
       (.I0(storage_19[23]),
        .I1(storage_16),
        .I2(out_port_reg[0]),
        .O(dina[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_27
       (.I0(storage_19[8]),
        .I1(storage_16),
        .I2(out_port_reg[7]),
        .O(dina[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_28
       (.I0(storage_19[9]),
        .I1(storage_16),
        .I2(out_port_reg[6]),
        .O(dina[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_29
       (.I0(storage_19[10]),
        .I1(storage_16),
        .I2(out_port_reg[5]),
        .O(dina[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_3
       (.I0(storage_18[7]),
        .I1(storage_16),
        .I2(Q[9]),
        .O(addra[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_30
       (.I0(storage_19[11]),
        .I1(storage_16),
        .I2(out_port_reg[4]),
        .O(dina[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_31
       (.I0(storage_19[12]),
        .I1(storage_16),
        .I2(out_port_reg[3]),
        .O(dina[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_32
       (.I0(storage_19[13]),
        .I1(storage_16),
        .I2(out_port_reg[2]),
        .O(dina[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_33
       (.I0(storage_19[14]),
        .I1(storage_16),
        .I2(out_port_reg[1]),
        .O(dina[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_34
       (.I0(storage_19[15]),
        .I1(storage_16),
        .I2(out_port_reg[0]),
        .O(dina[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_35
       (.I0(storage_19[0]),
        .I1(storage_16),
        .I2(out_port_reg[7]),
        .O(dina[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_36
       (.I0(storage_19[1]),
        .I1(storage_16),
        .I2(out_port_reg[6]),
        .O(dina[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_37
       (.I0(storage_19[2]),
        .I1(storage_16),
        .I2(out_port_reg[5]),
        .O(dina[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_38
       (.I0(storage_19[3]),
        .I1(storage_16),
        .I2(out_port_reg[4]),
        .O(dina[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_39
       (.I0(storage_19[4]),
        .I1(storage_16),
        .I2(out_port_reg[3]),
        .O(dina[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_4
       (.I0(storage_18[6]),
        .I1(storage_16),
        .I2(Q[8]),
        .O(addra[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_40
       (.I0(storage_19[5]),
        .I1(storage_16),
        .I2(out_port_reg[2]),
        .O(dina[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_41
       (.I0(storage_19[6]),
        .I1(storage_16),
        .I2(out_port_reg[1]),
        .O(dina[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_42
       (.I0(storage_19[7]),
        .I1(storage_16),
        .I2(out_port_reg[0]),
        .O(dina[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8888888)) 
    storage_i_43
       (.I0(out),
        .I1(storage_16),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(storage_17),
        .O(wea[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    storage_i_44
       (.I0(out),
        .I1(storage_16),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(storage_17),
        .O(wea[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    storage_i_45
       (.I0(out),
        .I1(storage_16),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(storage_17),
        .O(wea[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h888B8888)) 
    storage_i_46
       (.I0(out),
        .I1(storage_16),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(storage_17),
        .O(wea[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_5
       (.I0(storage_18[5]),
        .I1(storage_16),
        .I2(Q[7]),
        .O(addra[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_6
       (.I0(storage_18[4]),
        .I1(storage_16),
        .I2(Q[6]),
        .O(addra[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_7
       (.I0(storage_18[3]),
        .I1(storage_16),
        .I2(Q[5]),
        .O(addra[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_8
       (.I0(storage_18[2]),
        .I1(storage_16),
        .I2(Q[4]),
        .O(addra[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    storage_i_9
       (.I0(storage_18[1]),
        .I1(storage_16),
        .I2(Q[3]),
        .O(addra[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom
   (bram_enable,
    SR,
    sleep,
    rom_error,
    Q,
    icap_clk,
    bram_wr_en2,
    address,
    bram2_en,
    bram_wr_en1,
    casdomux2,
    bram_wr_en0);
  output bram_enable;
  output [0:0]SR;
  output sleep;
  output rom_error;
  output [17:0]Q;
  input icap_clk;
  input bram_wr_en2;
  input [11:0]address;
  input bram2_en;
  input bram_wr_en1;
  input casdomux2;
  input bram_wr_en0;

  wire [8:0]\CORCombinational.dly_address_b ;
  wire D0;
  wire \OUTRegistered.instruction[0]_i_1_n_0 ;
  wire \OUTRegistered.instruction[10]_i_1_n_0 ;
  wire \OUTRegistered.instruction[11]_i_1_n_0 ;
  wire \OUTRegistered.instruction[12]_i_1_n_0 ;
  wire \OUTRegistered.instruction[13]_i_1_n_0 ;
  wire \OUTRegistered.instruction[14]_i_1_n_0 ;
  wire \OUTRegistered.instruction[15]_i_1_n_0 ;
  wire \OUTRegistered.instruction[16]_i_1_n_0 ;
  wire \OUTRegistered.instruction[17]_i_1_n_0 ;
  wire \OUTRegistered.instruction[1]_i_1_n_0 ;
  wire \OUTRegistered.instruction[2]_i_1_n_0 ;
  wire \OUTRegistered.instruction[3]_i_1_n_0 ;
  wire \OUTRegistered.instruction[4]_i_1_n_0 ;
  wire \OUTRegistered.instruction[5]_i_1_n_0 ;
  wire \OUTRegistered.instruction[6]_i_1_n_0 ;
  wire \OUTRegistered.instruction[7]_i_1_n_0 ;
  wire \OUTRegistered.instruction[8]_i_1_n_0 ;
  wire \OUTRegistered.instruction[9]_i_1_n_0 ;
  wire [17:0]Q;
  wire [0:0]SR;
  wire [11:0]address;
  wire bram2_en;
  wire bram_enable;
  wire bram_wr_en0;
  wire bram_wr_en1;
  wire bram_wr_en2;
  wire [31:0]casa1;
  wire [31:0]casa2;
  wire [31:0]casb1;
  wire [31:0]casb2;
  wire casdbiterr1;
  wire casdomux2;
  wire [3:0]caspa1;
  wire [3:0]caspa2;
  wire [3:0]caspb1;
  wire [3:0]caspb2;
  wire cassbiterr1;
  wire dbiterr_out_b;
  wire firmware0_n_100;
  wire firmware0_n_101;
  wire firmware0_n_102;
  wire firmware0_n_103;
  wire firmware0_n_104;
  wire firmware0_n_105;
  wire firmware0_n_106;
  wire firmware0_n_107;
  wire firmware0_n_108;
  wire firmware0_n_109;
  wire firmware0_n_110;
  wire firmware0_n_111;
  wire firmware0_n_112;
  wire firmware0_n_113;
  wire firmware0_n_114;
  wire firmware0_n_115;
  wire firmware0_n_116;
  wire firmware0_n_117;
  wire firmware0_n_118;
  wire firmware0_n_119;
  wire firmware0_n_120;
  wire firmware0_n_121;
  wire firmware0_n_122;
  wire firmware0_n_123;
  wire firmware0_n_124;
  wire firmware0_n_125;
  wire firmware0_n_80;
  wire firmware0_n_81;
  wire firmware0_n_82;
  wire firmware0_n_83;
  wire firmware0_n_84;
  wire firmware0_n_85;
  wire firmware0_n_86;
  wire firmware0_n_87;
  wire firmware0_n_88;
  wire firmware0_n_89;
  wire firmware0_n_90;
  wire firmware0_n_91;
  wire firmware0_n_92;
  wire firmware0_n_93;
  wire firmware0_n_94;
  wire firmware0_n_95;
  wire firmware0_n_96;
  wire firmware0_n_97;
  wire firmware0_n_98;
  wire firmware0_n_99;
  wire icap_clk;
  wire [2:0]instr_sel;
  wire [17:0]p_1_in;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire q_sync_h;
  wire q_sync_j;
  wire q_sync_k;
  wire rom_error;
  wire sleep;
  wire NLW_firmware0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_firmware0_CASOUTSBITERR_UNCONNECTED;
  wire [31:0]NLW_firmware0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_firmware0_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_firmware0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_firmware0_CASDOUTPB_UNCONNECTED;
  wire [3:0]NLW_firmware0_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_firmware0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_firmware0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_firmware0_RDADDRECC_UNCONNECTED;
  wire NLW_firmware1_DBITERR_UNCONNECTED;
  wire NLW_firmware1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_firmware1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_firmware1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_firmware1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_firmware1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_firmware1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_firmware1_RDADDRECC_UNCONNECTED;
  wire NLW_firmware2_CASOUTDBITERR_UNCONNECTED;
  wire NLW_firmware2_CASOUTSBITERR_UNCONNECTED;
  wire NLW_firmware2_DBITERR_UNCONNECTED;
  wire NLW_firmware2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_firmware2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_firmware2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_firmware2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_firmware2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_firmware2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_firmware2_RDADDRECC_UNCONNECTED;

  FDRE \CORCombinational.dly_address_b_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[0]),
        .Q(\CORCombinational.dly_address_b [0]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[1]),
        .Q(\CORCombinational.dly_address_b [1]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[2]),
        .Q(\CORCombinational.dly_address_b [2]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[3]),
        .Q(\CORCombinational.dly_address_b [3]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[4]),
        .Q(\CORCombinational.dly_address_b [4]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[5]),
        .Q(\CORCombinational.dly_address_b [5]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[6]),
        .Q(\CORCombinational.dly_address_b [6]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[7]),
        .Q(\CORCombinational.dly_address_b [7]),
        .R(SR));
  FDRE \CORCombinational.dly_address_b_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[8]),
        .Q(\CORCombinational.dly_address_b [8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[0]_i_1 
       (.I0(firmware0_n_99),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_123),
        .I5(p_1_in[0]),
        .O(\OUTRegistered.instruction[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[10]_i_1 
       (.I0(firmware0_n_89),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_113),
        .I5(p_1_in[10]),
        .O(\OUTRegistered.instruction[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[11]_i_1 
       (.I0(firmware0_n_88),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_112),
        .I5(p_1_in[11]),
        .O(\OUTRegistered.instruction[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[12]_i_1 
       (.I0(firmware0_n_87),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_111),
        .I5(p_1_in[12]),
        .O(\OUTRegistered.instruction[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[13]_i_1 
       (.I0(firmware0_n_86),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_110),
        .I5(p_1_in[13]),
        .O(\OUTRegistered.instruction[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[14]_i_1 
       (.I0(firmware0_n_85),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_109),
        .I5(p_1_in[14]),
        .O(\OUTRegistered.instruction[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[15]_i_1 
       (.I0(firmware0_n_84),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_108),
        .I5(p_1_in[15]),
        .O(\OUTRegistered.instruction[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[16]_i_1 
       (.I0(firmware0_n_83),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_107),
        .I5(p_1_in[16]),
        .O(\OUTRegistered.instruction[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[17]_i_1 
       (.I0(firmware0_n_82),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_106),
        .I5(p_1_in[17]),
        .O(\OUTRegistered.instruction[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[1]_i_1 
       (.I0(firmware0_n_98),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_122),
        .I5(p_1_in[1]),
        .O(\OUTRegistered.instruction[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[2]_i_1 
       (.I0(firmware0_n_97),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_121),
        .I5(p_1_in[2]),
        .O(\OUTRegistered.instruction[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[3]_i_1 
       (.I0(firmware0_n_96),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_120),
        .I5(p_1_in[3]),
        .O(\OUTRegistered.instruction[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[4]_i_1 
       (.I0(firmware0_n_95),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_119),
        .I5(p_1_in[4]),
        .O(\OUTRegistered.instruction[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[5]_i_1 
       (.I0(firmware0_n_94),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_118),
        .I5(p_1_in[5]),
        .O(\OUTRegistered.instruction[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[6]_i_1 
       (.I0(firmware0_n_93),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_117),
        .I5(p_1_in[6]),
        .O(\OUTRegistered.instruction[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[7]_i_1 
       (.I0(firmware0_n_92),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_116),
        .I5(p_1_in[7]),
        .O(\OUTRegistered.instruction[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[8]_i_1 
       (.I0(firmware0_n_91),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_115),
        .I5(p_1_in[8]),
        .O(\OUTRegistered.instruction[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFA0EFAF20A020A)) 
    \OUTRegistered.instruction[9]_i_1 
       (.I0(firmware0_n_90),
        .I1(instr_sel[0]),
        .I2(instr_sel[2]),
        .I3(instr_sel[1]),
        .I4(firmware0_n_114),
        .I5(p_1_in[9]),
        .O(\OUTRegistered.instruction[9]_i_1_n_0 ));
  FDSE \OUTRegistered.instruction_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[10] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[10]_i_1_n_0 ),
        .Q(Q[10]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[11] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[11]_i_1_n_0 ),
        .Q(Q[11]),
        .S(dbiterr_out_b));
  FDRE \OUTRegistered.instruction_reg[12] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[13] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[13]_i_1_n_0 ),
        .Q(Q[13]),
        .S(dbiterr_out_b));
  FDRE \OUTRegistered.instruction_reg[14] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(dbiterr_out_b));
  FDRE \OUTRegistered.instruction_reg[15] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(dbiterr_out_b));
  FDRE \OUTRegistered.instruction_reg[16] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[17] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[17]_i_1_n_0 ),
        .Q(Q[17]),
        .S(dbiterr_out_b));
  FDRE \OUTRegistered.instruction_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[3]_i_1_n_0 ),
        .Q(Q[3]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[4]_i_1_n_0 ),
        .Q(Q[4]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[5]_i_1_n_0 ),
        .Q(Q[5]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[6]_i_1_n_0 ),
        .Q(Q[6]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[7]_i_1_n_0 ),
        .Q(Q[7]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[8] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[8]_i_1_n_0 ),
        .Q(Q[8]),
        .S(dbiterr_out_b));
  FDSE \OUTRegistered.instruction_reg[9] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction[9]_i_1_n_0 ),
        .Q(Q[9]),
        .S(dbiterr_out_b));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("TRUE"),
    .EN_ECC_WRITE("TRUE"),
    .INITP_00(256'h61A51039FC6E62CB9C200DFED57FE35BCE36ED465530B584394DA0B9AF00AB01),
    .INITP_01(256'hB0128F908310A32685256EBF3B0C7ED14B7BE11A2721EDE8F1D62FBF25D65077),
    .INITP_02(256'h4ACF7E68C94FCDFFD7EA6A50EF66516A6FF8DE69C4FFE6EAF87CE940455D2785),
    .INITP_03(256'h61F663F6CA707FCC4BFAFACE7B66F9CED74259FDECC6DD71447872E8E9E55A73),
    .INITP_04(256'h67C7D6DEE1C0E0E2F8697DF7C5C15EF465556DF473DAFA6FFE7159E77BE9D876),
    .INITP_05(256'h7D4ACB79C16CCAD2E6524E644D7BF35E415B7E57E1CAECE0CE69794E68C065DB),
    .INITP_06(256'h6E51655CEA5FD3436BE6ECC6D84350C64559527F6965F95DE1F86ACD6FCA7355),
    .INITP_07(256'hE7FBF860F8DD7C5D6652EFC2E2DC7ADCEF45EF5BEC50E04AEF416A5CEF5CEF7E),
    .INITP_08(256'h6B6871606D7F65E765F5ED6DF0616BEFF27BFCF4F0FEEA6EF279FC75F07F6BEC),
    .INITP_09(256'hF1C869FACB71EFFFDAEA72FEDDE96A41F0786B7471E76B6565796A7AE174F0FF),
    .INITP_0A(256'hEDF65BDE74F3C44F6E56646AD350704C494D65FDF1D7D2F34DC1E042C3536C6D),
    .INITP_0B(256'h7BD5F4DF4D6562D27369FA54CDE9557C7045596A5465FFFA7C594EC463FEE95C),
    .INITP_0C(256'h4CEDDBEE537FD8E278FC7DCA41E7EBCB62E25CD871FC724571F3CF5349D6FAEB),
    .INITP_0D(256'hE8C26AC667C665C67E71C14E79EFC04BCF7863C7C976FCC553594968476CF4DD),
    .INITP_0E(256'h53567BCFC84C50CC524F5F6F7EECFF6B5FE8CE4BF6754AD8F57FDBE571F4F9CF),
    .INITP_0F(256'h42CDD2DACD7965CDC95C4E4AC248CA43CB49DDEC6A454A61654F51467B63F474),
    .INIT_00(256'h0013032200820020014206207632FF000142000108201F000149082F01F28000),
    .INIT_01(256'h0013013261F2074D02F20E1D008010010142083261F200490143081D00220033),
    .INIT_02(256'h02F30F366111D0020043001D0203205D0140063261F1D00100B0021D0102073E),
    .INIT_03(256'h02F20C010021D0100012FF2074132265025000050401D0000370002073B32145),
    .INIT_04(256'h0370002073B1D00802F20F36618324F102F20E1D0401D00402F20D226253242C),
    .INIT_05(256'h00B117226250106000B016010023222C001300207411D082025000030BF32590),
    .INIT_06(256'h02F220030BF2070A02F1172073B2074D02F016360170109F020C321D08020741),
    .INIT_07(256'h020C322012D22FFD00B11922625206DC00B01801002207220013012074120712),
    .INIT_08(256'h001302207410B00002F221050403202F02F1192073B0D08002F018208A509002),
    .INIT_09(256'h02F01A22008011FF020C322077B010FF00B11B2074D3602F00B01A010000D001),
    .INIT_0A(256'h00B01C250001B200001303366281B10002F2220D0801900102F11B0900D0121F),
    .INIT_0B(256'h02F11D250000900102F01C3662C2F000020C320D0400100100B11D0900D3E029),
    .INIT_0C(256'h01D0FF0BF052B0000012000BE0425000025000015093202F02F223014D00D040),
    .INIT_0D(256'h0140062263A09001014006326382BE0F0310001FF322BF7E01F1FF1DEDB2B00C),
    .INIT_0E(256'h0140060B2150D020014100013000900D0140060150A2D001014006014400300F),
    .INIT_0F(256'h01400E143000900601400E142002203A01400E0D010090060141000B0143603F),
    .INIT_10(256'h022FFD0300736046025000143000D08000B224142000900D0100300D00809006),
    .INIT_11(256'h022FFD1410609007022FFD3A64909007022FFD1900122041022FFD0110109007),
    .INIT_12(256'h022FFD2D30A20714022FFD1235020704022FFD1024020720022FFD2264525000),
    .INIT_13(256'h022FFD2500020722022FFD0201020712022FFD0900820724022FFD2D209206E0),
    .INIT_14(256'h022FFD14B0620726022FFD14B06206E0022FFD0BB13206FC022FFD01A002071E),
    .INIT_15(256'h022FFD09F1F206DC022FFD09E1E206E4022FFD09D1D206E0022FFD09C1C206E6),
    .INIT_16(256'h022FFD13E003E05A022FFD13D0019001022FFD10CB001019022FFD10BA025000),
    .INIT_17(256'h022FFD2067A200DC022FFD01B00200F6022FFD01A04200EE022FFD13F0025000),
    .INIT_18(256'h022FFD09D0720896022FFD2062832060022FFD09C070D001022FFD206280900D),
    .INIT_19(256'h022FFD09F07208B7022FFD20628208D4022FFD09E0701101022FFD2062801080),
    .INIT_1A(256'h022FFD0B51101000022FFD0B41036063022FFD01B011DC93022FFD01AEB208E4),
    .INIT_1B(256'h022FFD12D502F002022FFD10C4001000022FFD036012F001022FFD0B61205001),
    .INIT_1C(256'h022FFD1BB001D102022FFD19A010311E022FFD13F00001E0022FFD12E6020B46),
    .INIT_1D(256'h022FFD01B011D104022FFD01AEC32082022FFD250001D110022FFD3E66E32080),
    .INIT_1E(256'h022FFD2DF071D116022FFD2062C32089022FFD250001D112022FFD2067A32087),
    .INIT_1F(256'h022FFD2DD0722017022FFD2062C3208D022FFD2DE071D100022FFD2062C3208D),
    .INIT_20(256'h022FFD2DB0701220022FFD2062C001D0022FFD2DC07320A1022FFD2062C01200),
    .INIT_21(256'h022FFD0146C01203022FFD250002208D022FFD2DA07320A1022FFD2062C1D190),
    .INIT_22(256'h022FFD0B0141D190022FFD0B21501204022FFD01300001D0022FFD01500320A1),
    .INIT_23(256'h022FFD0D00836094022FFD143000DD10022FFD1420001000022FFD0D010320A1),
    .INIT_24(256'h022FFD0110114000022FFD030070DD20022FFD1430014000022FFD142000DD40),
    .INIT_25(256'h022FFD226941D112022FFD141063209B022FFD3A6981D110022FFD190012F002),
    .INIT_26(256'h022FFD2D20901222022FFD2D30A3209F022FFD123501D116022FFD102403209D),
    .INIT_27(256'h022FFD2D20901226022FFD2D30A320A1022FFD0601001223022FFD09008320A1),
    .INIT_28(256'h022FFD14B0001000022FFD14A06200D8022FFD250002F239022FFD2D008320A1),
    .INIT_29(256'h022FFD14F0001001022FFD14E000D004022FFD14D0009002022FFD14C002F03A),
    .INIT_2A(256'h022FFD190E9208A2022FFD3900020101022FFD110B9200E8022FFD250002F024),
    .INIT_2B(256'h022FFD110072090D022FFD3E6B32B02E022FFD19011208A5022FFD390002089F),
    .INIT_2C(256'h022FFD1100A200D8022FFD2500020896022FFD190F62090D022FFD390002B02E),
    .INIT_2D(256'h022FFD206C72B04E022FFD206BD200D8022FFD00C002011F022FFD25000200E2),
    .INIT_2E(256'h022FFD20730320CD022FFD206C71D001022FFD206BD0300F022FFD2073009001),
    .INIT_2F(256'h022FFD14100208A5022FFD14C06320C7022FFD011000D002022FFD2500009002),
    .INIT_30(256'h022FFD1410001002022FFD14C062B80F022FFD141002B40F022FFD14C062B20F),
    .INIT_31(256'h022FFD1D10A2012D022FFD2500022008022FFD141002077B022FFD14C062074D),
    .INIT_32(256'h022FFD250002077B022FFD111302074D022FFD1110701000022FFD3A6CA208A5),
    .INIT_33(256'h022FFD206A92B40F022FFD090062B20F022FFD20733208A5022FFD01A0022008),
    .INIT_34(256'h022FFD1910120769022FFD206A22F032022FFD0110401001022FFD390002B80F),
    .INIT_35(256'h022FFD206C72247A022FFD00100206DE022FFD04A00206E2022FFD366D220702),
    .INIT_36(256'h022FFD2500025000022FFD366CD206DC022FFD1920120710022FFD2073020718),
    .INIT_37(256'h022FFD227302071A022FFD01120206FC022FFD2273020700022FFD0110D2070C),
    .INIT_38(256'h022FFD2273020716022FFD0113E2070C022FFD2273025000022FFD0115F206DE),
    .INIT_39(256'h022FFD2273025000022FFD01133206DE022FFD2273020722022FFD011312070C),
    .INIT_3A(256'h022FFD2273020710022FFD01131206FE022FFD2273020702022FFD011302071E),
    .INIT_3B(256'h022FFD2273020720022FFD0113320706022FFD2273025000022FFD01132206DE),
    .INIT_3C(256'h022FFD22730206B5022FFD011350300F022FFD2273009001022FFD01134206DE),
    .INIT_3D(256'h022FFD2273020706022FFD01137206FC022FFD2273025000022FFD01136206DC),
    .INIT_3E(256'h022FFD227301400E022FFD0113903008022FFD2273009002022FFD01138206DE),
    .INIT_3F(256'h022FFD22730206DC022FFD01142206B5022FFD227301400E022FFD011411400E),
    .INIT_40(256'h022FFD22730208D4022FFD0114401100022FFD22730010C0022FFD0114325000),
    .INIT_41(256'h022FFD2273001C00022FFD0114601D01022FFD2273001E00022FFD0114501F00),
    .INIT_42(256'h022FFD22730208D4022FFD0114801100022FFD22730010A0022FFD01147208EE),
    .INIT_43(256'h022FFD2273001C00022FFD0114A01D00022FFD2273001E00022FFD0114901F00),
    .INIT_44(256'h022FFD22730208D4022FFD0114C01101022FFD22730010C0022FFD0114B208EE),
    .INIT_45(256'h022FFD2273003D7C022FFD0114E03E3C022FFD2273003F81022FFD0114D208EB),
    .INIT_46(256'h022FFD2273005D03022FFD0115005E40022FFD2273005F00022FFD0114F03C3F),
    .INIT_47(256'h022FFD22730010C0022FFD0115225000022FFD22730208EE022FFD0115105C00),
    .INIT_48(256'h022FFD2273003FFF022FFD01154208EB022FFD22730208D4022FFD0115301101),
    .INIT_49(256'h022FFD2273005F00022FFD0115603CFF022FFD2273003DFD022FFD0115503E7F),
    .INIT_4A(256'h022FFD22730208EE022FFD0115805C00022FFD2273005D00022FFD0115705E80),
    .INIT_4B(256'h022FFD22730208D4022FFD0115A01101022FFD22730010C0022FFD0115925000),
    .INIT_4C(256'h022FFD0900D03DFE022FFD2500003EFF022FFD2D10603FFF022FFD20737208EB),
    .INIT_4D(256'h022FFD0900D010C0022FFD2500025000022FFD36733208EE022FFD0D02003CFF),
    .INIT_4E(256'h022FFD0900003FFF022FFD25000208EB022FFD36737208D4022FFD0D01001101),
    .INIT_4F(256'h022FFD0309F05F00022FFD0900003CFF022FFD2500003DFE022FFD0306003EFF),
    .INIT_50(256'h022FFD2073E208EE022FFD0316005C00022FFD0010005D01022FFD2500005E00),
    .INIT_51(256'h022FFD207002F01E022FFD207062F032022FFD2D10001000022FFD0410025000),
    .INIT_52(256'h022FFD206DC0D020022FFD206B53618B022FFD2073B0D040022FFD206DE0900F),
    .INIT_53(256'h022FFD2073B0900E022FFD0319F36186022FFD001000D080022FFD250003618B),
    .INIT_54(256'h022FFD207003617F022FFD207200D040022FFD2D10036182022FFD041000D080),
    .INIT_55(256'h022FFD3277736179022FFD1D0010D010022FFD0B0323617C022FFD206DE0D020),
    .INIT_56(256'h022FFD250000901B022FFD206DC32162022FFD206B50D004022FFD2073E0900E),
    .INIT_57(256'h022FFD010021D0E0022FFD206DE030F0022FFD207002B04E022FFD207202F00B),
    .INIT_58(256'h022FFD001000D020022FFD250000900D022FFD206DC22170022FFD206B53616F),
    .INIT_59(256'h022FFD2D10036169022FFD041001D049022FFD2073B09006022FFD0319F3616F),
    .INIT_5A(256'h022FFD0B13220720022FFD207633616F022FFD010001D053022FFD2500022170),
    .INIT_5B(256'h022FFD206DE22008022FFD207002077B022FFD2072020784022FFD2D103206DC),
    .INIT_5C(256'h022FFD010402012D022FFD3277720896022FFD1D001206DC022FFD0B0322070C),
    .INIT_5D(256'h022FFD010202077B022FFD250002074D022FFD206DC01000022FFD206B5208A5),
    .INIT_5E(256'h022FFD2073E22189022FFD2500001080022FFD206DC2B10E022FFD206B522008),
    .INIT_5F(256'h022FFD206E22B40E022FFD2071822189022FFD3278201040022FFD1D0002B20E),
    .INIT_60(256'h022FFD2277F2B80E022FFD2070C20896022FFD2500022189022FFD206DE01020),
    .INIT_61(256'h022FFD0BC022B80F022FFD206DE20896022FFD2071622189022FFD2072001010),
    .INIT_62(256'h022FFD2074620896022FFD2075222202022FFD206DC2F01E022FFD206B601008),
    .INIT_63(256'h022FFD0BC3A2F01E022FFD206DE01001022FFD2070C2B20F022FFD2071E2B40F),
    .INIT_64(256'h022FFD20714010A0022FFD250000B203022FFD206DC19801022FFD206B60982F),
    .INIT_65(256'h022FFD206E8208E4022FFD206E8208B7022FFD206DE208D4022FFD2070601102),
    .INIT_66(256'h022FFD206B62FE0E022FFD0BC052FD0D022FFD206B62FC0C022FFD0BC0603F03),
    .INIT_67(256'h022FFD207E90BE0E022FFD206DC0BD0D022FFD206B60BC0C022FFD0BC042FF0F),
    .INIT_68(256'h022FFD09502208D4022FFD206DE01100022FFD206FE01020022FFD207220BF0F),
    .INIT_69(256'h022FFD227BF361AA022FFD207FB0D001022FFD3A7A80B001022FFD0D504208EE),
    .INIT_6A(256'h022FFD09F1F208C3022FFD09E1E208AB022FFD09D1D221AD022FFD09C1C22017),
    .INIT_6B(256'h022FFD10CB00B017022FFD14B061D000022FFD14B060B016022FFD0BB0220911),
    .INIT_6C(256'h022FFD2FF3B0B019022FFD13F001F000022FFD13E000B018022FFD13D001F000),
    .INIT_6D(256'h022FFD0BC3B0B01B022FFD2FC341F000022FFD2FD350B01A022FFD2FE361F000),
    .INIT_6E(256'h022FFD0BC350B01D022FFD206B61F000022FFD0BC360B01C022FFD206B61F000),
    .INIT_6F(256'h022FFD206DC1D002022FFD206B60B032022FFD0BC34361C9022FFD206B61F000),
    .INIT_70(256'h022FFD0D5042F03A022FFD206DE11001022FFD206FE0B03A022FFD20700324CD),
    .INIT_71(256'h022FFD0BC343247A022FFD227DD1D001022FFD207FB0B032022FFD3A7C7208A5),
    .INIT_72(256'h022FFD01A04308FA022FFD0BF3B0D001022FFD0BE360B001022FFD0BD3522008),
    .INIT_73(256'h022FFD09F072F034022FFD206280B016022FFD2067A321FF022FFD01B001D800),
    .INIT_74(256'h022FFD09D072F036022FFD206280B018022FFD09E072F035022FFD206280B017),
    .INIT_75(256'h022FFD00CD02F03C022FFD206B60B01A022FFD09C072F03B022FFD206280B019),
    .INIT_76(256'h022FFD00CF02F03E022FFD206B60B01C022FFD00CE02F03D022FFD206B60B01B),
    .INIT_77(256'h022FFD20712208AB022FFD20700208F1022FFD206DC2F03F022FFD206B60B01D),
    .INIT_78(256'h022FFD0D5040B134022FFD01C000B016022FFD206E820911022FFD206DE208C3),
    .INIT_79(256'h022FFD206DC1E010022FFD206B60B135022FFD11C010B017022FFD14C001C010),
    .INIT_7A(256'h022FFD206DE0B019022FFD207201E010022FFD207220B136022FFD250000B018),
    .INIT_7B(256'h022FFD206B60B13C022FFD09C0C0B01A022FFD2B03C1E010022FFD2B80C0B13B),
    .INIT_7C(256'h022FFD2B01C1E010022FFD206B60B13D022FFD09C0C0B01B022FFD2B02C1E010),
    .INIT_7D(256'h022FFD09C0C0B01D022FFD2B00C1E010022FFD206B60B13E022FFD09C0C0B01C),
    .INIT_7E(256'h022FFD2072A19801022FFD2500036211022FFD206DC1E010022FFD206B60B13F),
    .INIT_7F(256'h022FFD2072A20AAD022FFD2072A221DE022FFD2072A321FF022FFD2072A1D800),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    firmware0
       (.ADDRARDADDR({address[8:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\CORCombinational.dly_address_b ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(casa1),
        .CASDINB(casb1),
        .CASDINPA(caspa1),
        .CASDINPB(caspb1),
        .CASDOMUXA(casdomux2),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_firmware0_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_firmware0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_firmware0_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_firmware0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(casdbiterr1),
        .CASINSBITERR(cassbiterr1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(NLW_firmware0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_firmware0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(icap_clk),
        .CLKBWRCLK(icap_clk),
        .DBITERR(dbiterr_out_b),
        .DINADIN({p_1_in[11:0],firmware0_n_80,firmware0_n_81,firmware0_n_82,firmware0_n_83,firmware0_n_84,firmware0_n_85,firmware0_n_86,firmware0_n_87,firmware0_n_88,firmware0_n_89,firmware0_n_90,firmware0_n_91,firmware0_n_92,firmware0_n_93,firmware0_n_94,firmware0_n_95,firmware0_n_96,firmware0_n_97,firmware0_n_98,firmware0_n_99}),
        .DINBDIN({firmware0_n_100,firmware0_n_101,firmware0_n_102,firmware0_n_103,firmware0_n_104,firmware0_n_105,firmware0_n_106,firmware0_n_107,firmware0_n_108,firmware0_n_109,firmware0_n_110,firmware0_n_111,firmware0_n_112,firmware0_n_113,firmware0_n_114,firmware0_n_115,firmware0_n_116,firmware0_n_117,firmware0_n_118,firmware0_n_119,firmware0_n_120,firmware0_n_121,firmware0_n_122,firmware0_n_123,firmware0_n_124,firmware0_n_125,p_1_in[17:12]}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({p_1_in[11:0],firmware0_n_80,firmware0_n_81,firmware0_n_82,firmware0_n_83,firmware0_n_84,firmware0_n_85,firmware0_n_86,firmware0_n_87,firmware0_n_88,firmware0_n_89,firmware0_n_90,firmware0_n_91,firmware0_n_92,firmware0_n_93,firmware0_n_94,firmware0_n_95,firmware0_n_96,firmware0_n_97,firmware0_n_98,firmware0_n_99}),
        .DOUTBDOUT({firmware0_n_100,firmware0_n_101,firmware0_n_102,firmware0_n_103,firmware0_n_104,firmware0_n_105,firmware0_n_106,firmware0_n_107,firmware0_n_108,firmware0_n_109,firmware0_n_110,firmware0_n_111,firmware0_n_112,firmware0_n_113,firmware0_n_114,firmware0_n_115,firmware0_n_116,firmware0_n_117,firmware0_n_118,firmware0_n_119,firmware0_n_120,firmware0_n_121,firmware0_n_122,firmware0_n_123,firmware0_n_124,firmware0_n_125,p_1_in[17:12]}),
        .DOUTPADOUTP(NLW_firmware0_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_firmware0_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_firmware0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(bram_enable),
        .ENBWREN(bram_wr_en0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_firmware0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(rom_error),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("TRUE"),
    .EN_ECC_WRITE("TRUE"),
    .INITP_00(256'h61D3DAF741CE5D617E514B55ECD1F3F87A6348D761EEC142CE7E56F4635FD75A),
    .INITP_01(256'hE6E8DCF4417A426E7FE04DF879F046EDDF734B76D27E567D4ADEDF61EAE0D66F),
    .INITP_02(256'h7C6CEC7FE7E2D5E2FD4FEAE241E5F9CB717741E2F9CEEA71417BEA49E76BDF66),
    .INITP_03(256'h465BFCE76CEF76EB7B68F34E797462EBFAF77CFF4F6160E27FF874F1E4CBF8F5),
    .INITP_04(256'hEEE3DB7673FEECC04FD2707A4FE14D50E57D51F9C46A70EA4969CF7A62EBDAF3),
    .INITP_05(256'h6154F5E26F79C1D17AEFEF4C4155D37EC742F2FBE565E2E479FCFE6AED71F5F5),
    .INITP_06(256'hD14D5FF46BD2D8DBEE4D6AD07675E0C462CB6BE165F669EAF162EDF5FBF37D7F),
    .INITP_07(256'hE1E0E142E8D16050F049D8745FDEE773FE5C635DF8EED865FC45C744FA4763FC),
    .INITP_08(256'h55DF4CC5D8CE5EC34F405FD15A5DE9F56873C76ED375DBEE5C69E67543DC4745),
    .INITP_09(256'hDA584D59CDC0D5C4DEE94D7B5F69526642525CCD72CD6573476369DFCFDBF4E8),
    .INITP_0A(256'hD24370CEE943734373F74CEDE9CBCCE164D256E57FCAD6FDDDFDCF7D4A78F54E),
    .INITP_0B(256'hEDFFF96078DA75C2F5E2787F55CEDEC1C1634E7B5BC7D7E04B404C6049FBC173),
    .INITP_0C(256'hECD66F4C6FD14EC64773567EC7EAD56172C6EEC3CBED6FFB4B406B63E649E8C0),
    .INITP_0D(256'h4666C4FDCFE7DEF6E747F0C2D66AE87E5F59C5F05C7EC9E75D6050E4F84C6F50),
    .INITP_0E(256'hF34DE5D952EEFE60C6524664C1E7D8E7C4FB45E1FBCFE7D8EAC4FB43E7DE59C2),
    .INITP_0F(256'h55E8F0E65979CBE8CEEFD276FFC0FA406F5AE840F1DC454E40EA43E94360CC6B),
    .INIT_00(256'h022FFD250002F013022FFD2072A0B002022FFD2072A2F01F022FFD2072A01004),
    .INIT_01(256'h022FFD20700206DC022FFD3680B32208022FFD1D0001D002022FFD0B0320B032),
    .INIT_02(256'h022FFD25000324F1022FFD206DC1D001022FFD2071E0B032022FFD207182078C),
    .INIT_03(256'h022FFD206DC2074D022FFD206FC01004022FFD20712324F1022FFD207001D002),
    .INIT_04(256'h022FFD368182F03A022FFD1D00011001022FFD0B0320B03A022FFD2500022008),
    .INIT_05(256'h022FFD206DC1F000022FFD207020B017022FFD207161D000022FFD207040B016),
    .INIT_06(256'h022FFD207001F000022FFD207000B019022FFD207041F000022FFD250000B018),
    .INIT_07(256'h022FFD206FC1F000022FFD2071A0B01B022FFD207E91F000022FFD206DC0B01A),
    .INIT_08(256'h022FFD0B00F1F000022FFD141060B01D022FFD0B1131F000022FFD206DE0B01C),
    .INIT_09(256'h022FFD206BD1D001022FFD206BD0B032022FFD00C00208A5022FFD0401036017),
    .INIT_0A(256'h022FFD206B522008022FFD0B00E324CD022FFD207301D002022FFD206C73247A),
    .INIT_0B(256'h022FFD206B50BE11022FFD0B00C0BD10022FFD206B52F01E022FFD0B00D01001),
    .INIT_0C(256'h022FFD206DE13F00022FFD206FC13E00022FFD2071211D01022FFD206DC0BF12),
    .INIT_0D(256'h022FFD0B0122FF12022FFD1410603F01022FFD0B1132FE11022FFD206E82FD10),
    .INIT_0E(256'h022FFD206B52F00F022FFD0B01103001022FFD206B50B00F022FFD0401020B5F),
    .INIT_0F(256'h022FFD2500003E7E022FFD206DC0BE0E022FFD206B50307E022FFD0B0100B03B),
    .INIT_10(256'h022FFD0BC1620911022FFD3487E208FA022FFD1DCFF3625D022FFD0BC171C0E0),
    .INIT_11(256'h022FFD1DCFF1F000022FFD0BC190B017022FFD348841D000022FFD1DCFF0B016),
    .INIT_12(256'h022FFD348841F000022FFD1DCFF0B019022FFD0BC181F000022FFD3487E0B018),
    .INIT_13(256'h022FFD0BC1A1F000022FFD3487E0B01B022FFD1DCFF1F000022FFD0BC1B0B01A),
    .INIT_14(256'h022FFD1DCFF1F000022FFD0BC1D0B01D022FFD348841F000022FFD1DCFF0B01C),
    .INIT_15(256'h022FFD348842077B022FFD1DCFF2075C022FFD0BC1C2225D022FFD3487E36256),
    .INIT_16(256'h022FFD328622074D022FFD1DD0001004022FFD0BD202078C022FFD25000206DC),
    .INIT_17(256'h022FFD2088A2B40F022FFD0BC162B20F022FFD2087E208A5022FFD0BC1722008),
    .INIT_18(256'h022FFD1DD002077B022FFD0BD212074D022FFD2089001002022FFD0BC202B80F),
    .INIT_19(256'h022FFD0BC180900E022FFD2087E2F032022FFD0BC1901000022FFD3286B22008),
    .INIT_1A(256'h022FFD0BD222F007022FFD2089009017022FFD0BC2132296022FFD2088A0D004),
    .INIT_1B(256'h022FFD2087E2F009022FFD0BC1B09019022FFD328742F008022FFD1DD0009018),
    .INIT_1C(256'h022FFD208902F00B022FFD0BC220901B022FFD2088A2F00A022FFD0BC1A0901A),
    .INIT_1D(256'h022FFD0BC1D3627C022FFD3287D1D0A0022FFD1DD00030F0022FFD0BD232B04E),
    .INIT_1E(256'h022FFD0BC23223EF022FFD2088A323EE022FFD0BC1C0D002022FFD2087E09002),
    .INIT_1F(256'h022FFD207021D0B0022FFD20728223EE022FFD250003627F022FFD208901D0E0),
    .INIT_20(256'h022FFD250002DC01022FFD206DE03C0F022FFD206B60BC07022FFD206DE36289),
    .INIT_21(256'h022FFD206B6206DC022FFD206DE206B6022FFD20722206DE022FFD206FE2071E),
    .INIT_22(256'h022FFD2072220724022FFD206FE3628D022FFD250001D0D0022FFD206DC22003),
    .INIT_23(256'h022FFD2500020702022FFD206DE36291022FFD206B61D0F0022FFD206DE2240B),
    .INIT_24(256'h022FFD206B60D080022FFD206DE32414022FFD207261D0C0022FFD20712223FB),
    .INIT_25(256'h022FFD2B00A0D020022FFD2B0090900D022FFD25000223EC022FFD206DC32414),
    .INIT_26(256'h022FFD01C00362A0022FFD209091D04F022FFD2B08E09006022FFD2B1BB363EE),
    .INIT_27(256'h022FFD01C10223EF022FFD25000323EE022FFD200590D002022FFD208AE09002),
    .INIT_28(256'h022FFD208AE206DC022FFD01C0720720022FFD25000362A7022FFD208AE1D053),
    .INIT_29(256'h022FFD250001D052022FFD208AE223ED022FFD01C0D20793022FFD2500020784),
    .INIT_2A(256'h022FFD01C0409006022FFD2500020733022FFD208AE2071E022FFD01C01362BE),
    .INIT_2B(256'h022FFD01E0020733022FFD01D00206DE022FFD25000363EC022FFD208AE1D020),
    .INIT_2C(256'h022FFD01100206E8022FFD01080363EC022FFD208DD1D030022FFD01F0009006),
    .INIT_2D(256'h022FFD2B3893A3EC022FFD25000206A9022FFD208BD09006022FFD208D420733),
    .INIT_2E(256'h022FFD2090920730022FFD2B08E206C7022FFD2B63B00100022FFD2B00A2D001),
    .INIT_2F(256'h022FFD2B37B362C2022FFD2B00A1D055022FFD2B1C922003022FFD25000206DC),
    .INIT_30(256'h022FFD2B649362C6022FFD250001D044022FFD209092240B022FFD2B08E20724),
    .INIT_31(256'h022FFD20909362D7022FFD2B08E1D04E022FFD2B0BB223FB022FFD2B72A20702),
    .INIT_32(256'h022FFD2B57B1D020022FFD2B20A09006022FFD2B64920733022FFD2500020716),
    .INIT_33(256'h022FFD2B20A206CC022FFD2B6C90120A022FFD20909206DE022FFD2B08E363EC),
    .INIT_34(256'h022FFD250002FC09022FFD209092FB08022FFD2B08E2FA07022FFD2B63B3A3EC),
    .INIT_35(256'h022FFD2D1081D054022FFD2D00822420022FFD2B4192FE0B022FFD2B00A2FD0A),
    .INIT_36(256'h022FFD2D10809006022FFD2D00820733022FFD2B25920722022FFD2B00A3632A),
    .INIT_37(256'h022FFD2DC080120A022FFD2B289206DE022FFD2B00A363EC022FFD250001D020),
    .INIT_38(256'h022FFD250002FB3F022FFD2DF082FA3E022FFD2DE083A3EC022FFD2DD08206CC),
    .INIT_39(256'h022FFD09D08322E9022FFD09C080DE80022FFD2B28932308022FFD2B00A1DEC0),
    .INIT_3A(256'h022FFD208B7206A2022FFD25000206A2022FFD09F08206A2022FFD09E08223EC),
    .INIT_3B(256'h022FFD208BD206A2022FFD208DD363EC022FFD2500018FA0022FFD208E40BA02),
    .INIT_3C(256'h022FFD208D42FF0F022FFD011002FE0E022FFD010202FD0D022FFD250002FC0C),
    .INIT_3D(256'h022FFD0BC0C0BE11022FFD0BD0D0BD10022FFD0BE0E206DC022FFD0BF0F20AAD),
    .INIT_3E(256'h022FFD208AB206B6022FFD208F100CF0022FFD2500020700022FFD208EE0BF12),
    .INIT_3F(256'h022FFD25000206B6022FFD2090000CD0022FFD25000206B6022FFD208C300CE0),
    .INIT_40(256'h022FFD208D4206C7022FFD01101206BD022FFD01080206BD022FFD208F10BC3F),
    .INIT_41(256'h022FFD208C9223EC022FFD208A8206B6022FFD208BD0BC3E022FFD208B720730),
    .INIT_42(256'h022FFD369090BA02022FFD0D008206A2022FFD0900E206A2022FFD25000206A2),
    .INIT_43(256'h022FFD3290D2FC10022FFD0D002206A2022FFD0900E363EC022FFD2500018EA0),
    .INIT_44(256'h022FFD2F116206DC022FFD0110020B5F022FFD370012FE12022FFD250002FD11),
    .INIT_45(256'h022FFD2F11A0BC0F022FFD2F1190BD0E022FFD2F1180BE0D022FFD2F1170BF0C),
    .INIT_46(256'h022FFD0108420730022FFD2F11D206C7022FFD2F11C206BD022FFD2F11B206BD),
    .INIT_47(256'h022FFD11001206B6022FFD2B00B00CE0022FFD2B00A206B6022FFD2B6C900CD0),
    .INIT_48(256'h022FFD1D0FF206BD022FFD209860BC3F022FFD2092C206B6022FFD2092700CF0),
    .INIT_49(256'h022FFD09C080BC3E022FFD2500020730022FFD37000206C7022FFD3691F206BD),
    .INIT_4A(256'h022FFD2500036348022FFD09F081D058022FFD09E08223EC022FFD09D08206B6),
    .INIT_4B(256'h022FFD329572072A022FFD1D0C23E348022FFD329420D004022FFD1D0C109002),
    .INIT_4C(256'h022FFD20975363EC022FFD001E01D020022FFD2097509006022FFD001F020733),
    .INIT_4D(256'h022FFD209753A3EC022FFD001C0206CC022FFD2097501208022FFD001D0206DE),
    .INIT_4E(256'h022FFD2F12C2FC36022FFD2F12A2FB35022FFD2F1282FA34022FFD01100206DC),
    .INIT_4F(256'h022FFD2F12D0BE36022FFD2F12B0BD35022FFD2F1290BC34022FFD2F12E2FD3B),
    .INIT_50(256'h022FFD209752067A022FFD001F001B00022FFD2500001A01022FFD2F12F0BF3B),
    .INIT_51(256'h022FFD20975223EC022FFD001D0206B6022FFD2097509C07022FFD001E020628),
    .INIT_52(256'h022FFD2F62A20733022FFD2F7282071C022FFD2097536390022FFD001C01D051),
    .INIT_53(256'h022FFD01500206DE022FFD01400363EC022FFD2F42E1D020022FFD2F52C09006),
    .INIT_54(256'h022FFD2F62B1DEC0022FFD2F7293A3EC022FFD01700206CC022FFD016000120A),
    .INIT_55(256'h022FFD001F0223EC022FFD2294132358022FFD2F42F0DE80022FFD2F52D32364),
    .INIT_56(256'h022FFD001D00BA02022FFD20975206A2022FFD001E0206A2022FFD20975206A2),
    .INIT_57(256'h022FFD001702FC0C022FFD20975206A2022FFD001C0363EC022FFD2097518FA0),
    .INIT_58(256'h022FFD001602237A022FFD037F02FF0F022FFD2F1292FE0E022FFD0310F2FD0D),
    .INIT_59(256'h022FFD001500BA02022FFD036F0206A2022FFD2F12B206A2022FFD0310F206A2),
    .INIT_5A(256'h022FFD001402FC10022FFD035F0206A2022FFD2F12D363EC022FFD0310F18EA0),
    .INIT_5B(256'h022FFD011000B105022FFD034F00B004022FFD2F12F2FE12022FFD0310F2FD11),
    .INIT_5C(256'h022FFD2F12E1AE20022FFD2F12C1AD10022FFD2F12A18C00022FFD2F1280B206),
    .INIT_5D(256'h022FFD1410003401022FFD144000B40F022FFD1410020B5F022FFD229413E3EC),
    .INIT_5E(256'h022FFD14100208FA022FFD1460020896022FFD141002237A022FFD145002F40F),
    .INIT_5F(256'h022FFD141000127B022FFD144002B6C9022FFD141002B00A022FFD14700206DC),
    .INIT_60(256'h022FFD1410009C08022FFD1460009D08022FFD1410009E08022FFD1450009F08),
    .INIT_61(256'h022FFD0B82800CE0022FFD00170206B6022FFD2500000CD0022FFD14700206B6),
    .INIT_62(256'h022FFD20A51206DC022FFD20A33206B6022FFD20A2700CF0022FFD0B929206B6),
    .INIT_63(256'h022FFD14B00223ED022FFD14A0E208A5022FFD0BA2536380022FFD01B0019201),
    .INIT_64(256'h022FFD14A0020733022FFD14B002071A022FFD14A00363EE022FFD0BA261D050),
    .INIT_65(256'h022FFD0B217206DE022FFD14B00363EC022FFD14A001D020022FFD14B0009006),
    .INIT_66(256'h022FFD14B00206A2022FFD14A003A3EC022FFD2F217206CC022FFD062B001202),
    .INIT_67(256'h022FFD14B0018BC0022FFD14A000BC02022FFD14B00206A2022FFD14A00206A2),
    .INIT_68(256'h022FFD14B0009002022FFD14A00206A2022FFD14B00206A2022FFD14A00363EC),
    .INIT_69(256'h022FFD14A001FB00022FFD14B001DA00022FFD14A00363DA022FFD0BA270D040),
    .INIT_6A(256'h022FFD0B216323DA022FFD14B001FB00022FFD14A001DA20022FFD14B00323DA),
    .INIT_6B(256'h022FFD0B82A1DAA0022FFD00160323DA022FFD2FB161FB00022FFD06B201DA80),
    .INIT_6C(256'h022FFD20A511FB00022FFD20A331DAC0022FFD20A27323DA022FFD0B92B1FB00),
    .INIT_6D(256'h022FFD14B00323DA022FFD14A0E1FB00022FFD0BA251DAE0022FFD01B00323DA),
    .INIT_6E(256'h022FFD14A001DA80022FFD14B00323DA022FFD14A001FB01022FFD0BA261DA20),
    .INIT_6F(256'h022FFD0B2191FB01022FFD14B001DAA0022FFD14A00323DA022FFD14B001FB01),
    .INIT_70(256'h022FFD14B00323DA022FFD14A001FB01022FFD2F2191DAC0022FFD062B0323DA),
    .INIT_71(256'h022FFD14B001DA20022FFD14A00323DA022FFD14B001FB02022FFD14A001DA00),
    .INIT_72(256'h022FFD14B001FB02022FFD14A001DA80022FFD14B00323DA022FFD14A001FB02),
    .INIT_73(256'h022FFD14A00323DA022FFD14B001FB02022FFD14A001DAA0022FFD0BA27323DA),
    .INIT_74(256'h022FFD0B2181DA00022FFD14B00323DA022FFD14A001FB02022FFD14B001DAC0),
    .INIT_75(256'h022FFD0B82C1FB03022FFD001501DAE0022FFD2FB18323DA022FFD06B201FB03),
    .INIT_76(256'h022FFD20A5120896022FFD20A33206DC022FFD20A27223EC022FFD0B92D323DA),
    .INIT_77(256'h022FFD14B00208B7022FFD14A0E208D4022FFD0BA25001B0022FFD01B00000A0),
    .INIT_78(256'h022FFD14A00206B6022FFD14B0000CF0022FFD14A0000BC0022FFD0BA26208E4),
    .INIT_79(256'h022FFD0B21B206B6022FFD14B0000CD0022FFD14A00206B6022FFD14B0000CE0),
    .INIT_7A(256'h022FFD14B00223EC022FFD14A00208A5022FFD2F21B206B6022FFD062B000CB0),
    .INIT_7B(256'h022FFD14B0020718022FFD14A0022008022FFD14B002077B022FFD14A00206DC),
    .INIT_7C(256'h022FFD14B00208A5022FFD14A0020137022FFD14B0020896022FFD14A00206DC),
    .INIT_7D(256'h022FFD14A0001002022FFD14B002B80F022FFD14A002B40F022FFD0BA272B20F),
    .INIT_7E(256'h022FFD0B21A206DC022FFD14B0022008022FFD14A002077B022FFD14B002074D),
    .INIT_7F(256'h022FFD0B82E2B20F02BFF300140208A502BFF02FB1A20137022FFD06B2020896),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    firmware1
       (.ADDRARDADDR({address[8:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\CORCombinational.dly_address_b ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(casa2),
        .CASDINB(casb2),
        .CASDINPA(caspa2),
        .CASDINPB(caspb2),
        .CASDOMUXA(bram2_en),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(casa1),
        .CASDOUTB(casb1),
        .CASDOUTPA(caspa1),
        .CASDOUTPB(caspb1),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(casdbiterr1),
        .CASOUTSBITERR(cassbiterr1),
        .CLKARDCLK(icap_clk),
        .CLKBWRCLK(icap_clk),
        .DBITERR(NLW_firmware1_DBITERR_UNCONNECTED),
        .DINADIN({p_1_in[11:0],firmware0_n_80,firmware0_n_81,firmware0_n_82,firmware0_n_83,firmware0_n_84,firmware0_n_85,firmware0_n_86,firmware0_n_87,firmware0_n_88,firmware0_n_89,firmware0_n_90,firmware0_n_91,firmware0_n_92,firmware0_n_93,firmware0_n_94,firmware0_n_95,firmware0_n_96,firmware0_n_97,firmware0_n_98,firmware0_n_99}),
        .DINBDIN({firmware0_n_100,firmware0_n_101,firmware0_n_102,firmware0_n_103,firmware0_n_104,firmware0_n_105,firmware0_n_106,firmware0_n_107,firmware0_n_108,firmware0_n_109,firmware0_n_110,firmware0_n_111,firmware0_n_112,firmware0_n_113,firmware0_n_114,firmware0_n_115,firmware0_n_116,firmware0_n_117,firmware0_n_118,firmware0_n_119,firmware0_n_120,firmware0_n_121,firmware0_n_122,firmware0_n_123,firmware0_n_124,firmware0_n_125,p_1_in[17:12]}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_firmware1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_firmware1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_firmware1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_firmware1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_firmware1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(bram_enable),
        .ENBWREN(bram_wr_en1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_firmware1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_firmware1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("TRUE"),
    .EN_ECC_WRITE("TRUE"),
    .INITP_00(256'h9A299AA8B90EB908B98B3F91A61E901191288A2399A21CA1BD04AF17913C3934),
    .INITP_01(256'h3E89898984931A1A869F9FA7A1AF17A6A10E228B83121794A6B0853F0E3702BA),
    .INITP_02(256'hA1A32A253E9F300D01141882A2A6BEBD3B0B2A0CAD87B600A79F1A2DB98D0A1D),
    .INITP_03(256'h38AABABA9F391E9634153F2419BE3B8D3D00131EA338BCA6AC2F8EA1120694AA),
    .INITP_04(256'h29903B92239E951D0684A32719BF1E1AB7A60C3F89172A3881B99BB93D3D80A4),
    .INITP_05(256'h9202B31C1F28B5992982B69732B41F2B0028A9B00A88B9B70F0D87BF1DA79BB8),
    .INITP_06(256'h253B008E2E39349A1B96143E23AD999BBD3B9A8424A21A0DA48D3F13872538BC),
    .INITP_07(256'h051A23BA079D110D269B03BA9496ABB0313730128B81B0A1A82D88B31D268C8A),
    .INITP_08(256'hB923863C119C09ABA3B9249391998FB6B8BF33163E99A4052C8101ACB48DBD30),
    .INITP_09(256'h9C279826801AB936823531BC0A3EA784910202BB24943039060A889925061399),
    .INITP_0A(256'hA9302E1C1E97BBAFA9AA3F0D90AFA8080DACBC9014AC32888EAF3E27B5A7083E),
    .INITP_0B(256'h8F3D382CBC8596333E8D90BD9AAAA993AB9F8A9FB402300E10AD2D902EBD012D),
    .INITP_0C(256'h9CAC950D0AA4311B832A22113818A3A102958A2EAAAF871822B009BAA6149A84),
    .INITP_0D(256'h1C8B8C943DB2869A15263C3285B18A1B040D030B1DBAB81DB63A9F9F8CB30605),
    .INITP_0E(256'h0939B9A1B89D222802AA2D368688A702253000281DA91182B99437BF9823941F),
    .INITP_0F(256'h172E0F28AC9DBEB01B34370DBC158F0B810D99B4BA083E34BC97B2391907169F),
    .INIT_00(256'h00000020A512F01E00000020A330100000000020A272B80F0000000B92F2B40F),
    .INIT_01(256'h00000014B002070200000014A0E207690000000BA252F03200000001B0001001),
    .INIT_02(256'h00000014A00206DC00000014B002247A00000014A00206DE0000000BA26206E2),
    .INIT_03(256'h0000000B21D2B80F00000014B002B40F00000014A002B20F00000014B0020896),
    .INIT_04(256'h00000014B00224BB00000014A00207690000002F21D2F032000000062B001002),
    .INIT_05(256'h00000014B00206B600000014A000BC0B00000014B00206DE00000014A0020716),
    .INIT_06(256'h00000014B00206B600000014A000BC0900000014B00206B600000014A000BC0A),
    .INIT_07(256'h00000014A00206B600000014B000BC0700000014A00206B60000000BA270BC08),
    .INIT_08(256'h0000000B21C3242800000014B000D00800000014A000900200000014B00206DC),
    .INIT_09(256'h00000001A0022008000000250002074D0000002FB1C0101000000006B2020896),
    .INIT_0A(256'h0000000D8FF2200800000014A002077B0000000D1FF2074D00000001B0001000),
    .INIT_0B(256'h0000000DAFF0BD0A00000014A000BC090000000D9FF0BB0800000014A000BA07),
    .INIT_0C(256'h00000000200030F000000025000000E00000002FB2501F0000000014B000BE0B),
    .INIT_0D(256'h00000014A043243900000014A000D0800000000D1FF3243900000001A001D0C0),
    .INIT_0E(256'h00000014A042F01400000014A040301F00000014A04000A000000014A0422475),
    .INIT_0F(256'h000000022A0000B000000014A04206A200000014A04206A200000014A04206A2),
    .INIT_10(256'h000000250002F0150000002F2263E475000000062B01D07B00000020A440307F),
    .INIT_11(256'h00000014B00000F000000014A062F01300000000B900300300000000A80000E0),
    .INIT_12(256'h00000014B002FD1100000014A062FC1000000014B00206A200000014A0603003),
    .INIT_13(256'h00000014B002F01300000014A063645F00000014B000DF0800000014A062FE12),
    .INIT_14(256'h00000001A001CAB0000000003800BB02000000002100BA130000002500003F01),
    .INIT_15(256'h0000000D2FF2FE0E000000033012FD0D000000032AA2FC0C00000001B0036475),
    .INIT_16(256'h0000000DAFF03F0300000014A0014F000000000D3FF14E0600000014A002FF0F),
    .INIT_17(256'h00000001A000BA130000000038022472000000002103247500000014B081DF01),
    .INIT_18(256'h00000014A0003E010000000D2FF36475000000033021CAB0000000032CC0BB02),
    .INIT_19(256'h00000014B080B0040000000DAFF2FE1200000014A002FD110000000D3FF2FC10),
    .INIT_1A(256'h000000032F01AD1000000001A0018C00000000003800B206000000002100B105),
    .INIT_1B(256'h0000000D3FF0B40F00000014A0020B5F0000000D2FF3E475000000033041AE20),
    .INIT_1C(256'h0000002FB272068700000014B08208FA0000000DAFF2F40F00000014A0003401),
    .INIT_1D(256'h0000000100C2074D000000008400100000000000950208A500000025000208FE),
    .INIT_1E(256'h000000131000D040000000148080900F0000001490E22008000000011002077B),
    .INIT_1F(256'h00000036A830D0800000001D1003618B00000036A790D020000000190013618B),
    .INIT_20(256'h0000000D50836182000000250000D080000000018FF0900E000000019FF36186),
    .INIT_21(256'h000000018FF3617C000000019FF0D020000000011023617F00000036A890D040),
    .INIT_22(256'h000000001500D0040000003EA950900E0000001D10336179000000250000D010),
    .INIT_23(256'h0000001410E2B04E000000118012F00B000000018FF0901B0000000004032494),
    .INIT_24(256'h000000011042247A0000000190F324A30000003EA8E1D0E000000014008030F0),
    .INIT_25(256'h0000001982809006000000008403647A000000009500D020000000250000900D),
    .INIT_26(256'h000000019FF3647A000000011021D0530000003EA9E324A30000001B9041D049),
    .INIT_27(256'h0000000381F20702000000001802078400000025000206DC000000018FF20720),
    .INIT_28(256'h000000149002070C000000141062247A00000014900206DE00000014106206E2),
    .INIT_29(256'h0000001D90F208A5000000011022012D000000149002089600000014106206DC),
    .INIT_2A(256'h0000000110401000000000390002D0030000001D80C2F03200000036AAB01000),
    .INIT_2B(256'h0000000B20C2089600000020B4622008000000370012077B000000250002074D),
    .INIT_2C(256'h00000014206207410000000BA0F010600000000B40E208A50000000B30D2012D),
    .INIT_2D(256'h000000142080100000000014A002D003000000144002F0320000001430001000),
    .INIT_2E(256'h0000001450E01D000000000340322008000000005402077B0000000327F2074D),
    .INIT_2F(256'h000000007A02FE11000000036032FD10000000006A001F000000001450E01E00),
    .INIT_30(256'h00000001D0020B5F000000037032FD1E0000001470E01D010000001470E2FF12),
    .INIT_31(256'h00000032AEA0B00F0000001D602324CD000000008201D0FF00000001E000B00F),
    .INIT_32(256'h00000001A002091100000001900208FA00000032B112F00F0000001D60303001),
    .INIT_33(256'h00000032AD7324D60000001CE400D00400000036AD00900E0000001CD30221AD),
    .INIT_34(256'h00000013A00030F0000000139002B04E000000108F02F00B00000009F080901B),
    .INIT_35(256'h00000001D000B10500000022ACC0B00400000013E00324E800000011D011D0E0),
    .INIT_36(256'h00000032AE10BF120000001CD500BE110000000BF310BD100000000BE300B206),
    .INIT_37(256'h00000011D011EF2000000013A001EE10000000129F01CD00000000108E003F01),
    .INIT_38(256'h00000003A0113F000000002F91113E000000002F81011D0100000022ADA324E8),
    .INIT_39(256'h0000002FA12224C100000004A002FF12000000140062FE110000000B0022FD10),
    .INIT_3A(256'h0000000BE31010000000000BD30208A5000000250002012D0000003700020896),
    .INIT_3B(256'h00000001F002077B00000001A002074D00000001900010000000000B2372D103),
    .INIT_3C(256'h000000129E03654B000000108D01D00100000032AF70B01E0000001CF2022008),
    .INIT_3D(256'h00000001F0020A7500000022AF00B51700000011F010B41600000013A0001200),
    .INIT_3E(256'h000000108200B41800000032B00042100000001CF502F9170000000B23C2F816),
    .INIT_3F(256'h00000022AF92F91900000011F012F81800000013A0020A75000000139000B519),
    .INIT_40(256'h0000001180220A7500000032B080B51B0000001CF300B41A00000001F0004210),
    .INIT_41(256'h00000022B010B41C00000011F0104210000000138002F91B000000139002F81A),
    .INIT_42(256'h0000000B0022F91D00000003A012F81C0000002F91120A750000002F8100B51D),
    .INIT_43(256'h00000037000012020000002FA123251C00000004A000D2020000001400604210),
    .INIT_44(256'h0000000B237208110000000BE31208040000000BD3020819000000250002F21E),
    .INIT_45(256'h00000001F001D00200000001A00324AF000000019001D001000000018000B032),
    .INIT_46(256'h000000129E02258C000000108D00502000000032B1F2073B0000001CF20324CD),
    .INIT_47(256'h0000000BF390B01600000022B1820C1500000011F012F21E00000013A0001204),
    .INIT_48(256'h00000001F001D0FF00000032B2C2F1150000001DF002F01400000003FF00B117),
    .INIT_49(256'h000000108200B11900000032B2C0B0180000001DF02346870000000B23C1F1FF),
    .INIT_4A(256'h00000022B251F1FF00000011F011D0FF00000013A002F115000000139002F014),
    .INIT_4B(256'h00000032B352F0140000001CF500B11B0000000B2380B01A00000001F0034687),
    .INIT_4C(256'h00000011F013468700000013A001F1FF000000139001D0FF000000108202F115),
    .INIT_4D(256'h00000032B3D2F1150000001CF302F01400000001F000B11D00000022B2E0B01C),
    .INIT_4E(256'h00000011F010B0320000001380034687000000139001F1FF000000118011D0FF),
    .INIT_4F(256'h00000003A01208190000002F911208FE0000002F8103653F00000022B361D000),
    .INIT_50(256'h0000002FA120B03200000004A002081100000014006208400000000B00220804),
    .INIT_51(256'h00000009508324CD00000020B581D00200000025000324AF000000370001D001),
    .INIT_52(256'h000000095081D0080000002F6052258C0000002F504030DF000000096082073B),
    .INIT_53(256'h00000009508207000000002F6312071E0000002F530207000000000960836558),
    .INIT_54(256'h000000095081D0010000002F6380B0320000002F537207E900000009608206DC),
    .INIT_55(256'h000000250002258C0000002F606050200000002F53C2073B00000009608324AF),
    .INIT_56(256'h0000002D5092072400000001100206FC0000000160736565000000015F01D010),
    .INIT_57(256'h000000370010B03200000025000207E90000002D10B206DC0000002D60A2072A),
    .INIT_58(256'h0000000BA12050200000000B9112073B0000000B810324AF00000020B461D001),
    .INIT_59(256'h00000001200206FC0000002FA36365720000002F9351D0200000002F8342258C),
    .INIT_5A(256'h00000018830207E90000000B431206DC0000000B3302072A0000000BD3720724),
    .INIT_5B(256'h000000112012073B0000003AB76324AF0000001BA001D0010000001A9400B032),
    .INIT_5C(256'h0000001C2D03657F0000002FA361D0400000002F9352258C0000002F834030DF),
    .INIT_5D(256'h0000000B935206DC0000000B8342072A00000022B6B2072400000032BA8206FC),
    .INIT_5E(256'h00000001300324AF000000012001D0010000002F20F0B0320000000BA36207E9),
    .INIT_5F(256'h000000188401D08000000032C0E2258C0000001D401030DF000000094082073B),
    .INIT_60(256'h00000011201207140000003AB89207180000001BA002071E0000001B90036017),
    .INIT_61(256'h0000002FA361D0010000002F9350B0320000002F834207E900000013300206DC),
    .INIT_62(256'h0000000BA362258C0000000B935030DF0000000B8342073B00000022B7C324AF),
    .INIT_63(256'h0000000B40C220080000002F80C2074D0000002F20D010080000002F30E20741),
    .INIT_64(256'h00000014408090020000001450836604000000144061D0040000000B50D0B01E),
    .INIT_65(256'h00000014608206760000000B60E206500000000B50D325EF0000002F40C0D004),
    .INIT_66(256'h0000000B70F1FF320000000B60E1DEDB0000002F50D0BF05000000145080BE04),
    .INIT_67(256'h0000000377F011BB0000001470001ED00000001460801F0900000014608325A2),
    .INIT_68(256'h0000001400601E400000000B00201F0A00000001700225A60000002F70E0120B),
    .INIT_69(256'h0000002500009D0700000037000206280000002F70F0120C000000047000112B),
    .INIT_6A(256'h00000032BDF1CE100000001D4002DD08000000034F02DE090000000B4392DF0A),
    .INIT_6B(256'h0000001B900225B300000018840365B0000000012001CF200000000B43C365B0),
    .INIT_6C(256'h0000002F8340B01600000011201225A60000003ABB913F000000001BA0011E01),
    .INIT_6D(256'h00000032BDF1D0FF0000001D2022F1150000002FA362F0140000002F9350B117),
    .INIT_6E(256'h0000000BA36012000000000B935206300000000B834325BF00000022BAE1F1FF),
    .INIT_6F(256'h000000188400B018000000194022F2200000000B43C142000000002F20F0D0FF),
    .INIT_70(256'h0000000B8341D0FF0000003EC0E2F1150000001BA002F0140000001B9000B119),
    .INIT_71(256'h00000000380012000000000B20F206300000000BA36325CB0000000B9351F1FF),
    .INIT_72(256'h000000143060B01A000000148082F2210000001490E14200000000033010D0FF),
    .INIT_73(256'h000000148061D0FF0000002F30C2F115000000143082F014000000148080B11B),
    .INIT_74(256'h00000014908012000000002F80D2063000000014808325D7000000149081F1FF),
    .INIT_75(256'h0000002F20E0B01C0000001420E2F2220000001420614200000000142000D0FF),
    .INIT_76(256'h000000043002F115000000140062F0140000000B00201200000000013010B11D),
    .INIT_77(256'h0000000B4382063000000025000325E4000000370001F1FF0000002F30F1D0FF),
    .INIT_78(256'h0000001BA002F2230000001B90014200000000188400D0FF0000000120001200),
    .INIT_79(256'h0000002F9350B0200000002F8342081100000011201208590000003ABEA2080C),
    .INIT_7A(256'h0000000B935040100000000B8340B12200000022BE1040100000002FA360B121),
    .INIT_7B(256'h000000194022073B0000000B438325F20000002F20F040100000000BA360B123),
    .INIT_7C(256'h0000003EC0E030BF0000001BA002073B0000001B900225F40000001884005040),
    .INIT_7D(256'h0000000B20F0B01F0000000BA362F03B0000000B9350B00E0000000B83420741),
    .INIT_7E(256'h0000002F30C2B20F00000014308208A500000014808366000000000B30019001),
    .INIT_7F(256'h0000002F80D226250000001480801002000000149082B80F000000148062B40F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    firmware2
       (.ADDRARDADDR({address[8:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\CORCombinational.dly_address_b ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(casa2),
        .CASDOUTB(casb2),
        .CASDOUTPA(caspa2),
        .CASDOUTPB(caspb2),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(NLW_firmware2_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_firmware2_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(icap_clk),
        .CLKBWRCLK(icap_clk),
        .DBITERR(NLW_firmware2_DBITERR_UNCONNECTED),
        .DINADIN({p_1_in[11:0],firmware0_n_80,firmware0_n_81,firmware0_n_82,firmware0_n_83,firmware0_n_84,firmware0_n_85,firmware0_n_86,firmware0_n_87,firmware0_n_88,firmware0_n_89,firmware0_n_90,firmware0_n_91,firmware0_n_92,firmware0_n_93,firmware0_n_94,firmware0_n_95,firmware0_n_96,firmware0_n_97,firmware0_n_98,firmware0_n_99}),
        .DINBDIN({firmware0_n_100,firmware0_n_101,firmware0_n_102,firmware0_n_103,firmware0_n_104,firmware0_n_105,firmware0_n_106,firmware0_n_107,firmware0_n_108,firmware0_n_109,firmware0_n_110,firmware0_n_111,firmware0_n_112,firmware0_n_113,firmware0_n_114,firmware0_n_115,firmware0_n_116,firmware0_n_117,firmware0_n_118,firmware0_n_119,firmware0_n_120,firmware0_n_121,firmware0_n_122,firmware0_n_123,firmware0_n_124,firmware0_n_125,p_1_in[17:12]}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_firmware2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_firmware2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_firmware2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_firmware2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_firmware2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(bram_enable),
        .ENBWREN(bram_wr_en2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_firmware2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_firmware2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \instr_sel_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[9]),
        .Q(instr_sel[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instr_sel_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[10]),
        .Q(instr_sel[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instr_sel_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(address[11]),
        .Q(instr_sel[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(bram_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    sync_h
       (.C(icap_clk),
        .CE(1'b1),
        .D(D0),
        .Q(q_sync_h),
        .S(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sync_h_i_1
       (.I0(bram_enable),
        .O(D0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    sync_i
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_h),
        .Q(SR),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_j
       (.C(icap_clk),
        .CE(1'b1),
        .D(sleep),
        .Q(q_sync_j),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    sync_k
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_j),
        .Q(q_sync_k),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    sync_l
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_k),
        .Q(sleep),
        .S(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu
   (\OUTRegistered.instruction_reg[0] ,
    E,
    read_strobe_flop_0,
    \ports_loop[2].port_id_flop_0 ,
    const_strobe_flop_0,
    bram_wr_en0,
    address,
    casdomux2,
    bram_wr_en2,
    bram2_en,
    bram_wr_en1,
    \ports_loop[1].port_id_flop_0 ,
    timer_snap0,
    out_port_reg,
    \ports_loop[2].port_id_flop_1 ,
    D,
    fetch_txwrite,
    const_strobe_flop_1,
    \ports_loop[2].port_id_flop_2 ,
    const_strobe_flop_2,
    bgo_strobe0,
    firmware0,
    monitor_txwrite,
    fetch_rxread,
    monitor_rxread,
    \ports_loop[2].out_port_flop_0 ,
    \ports_loop[0].out_port_flop_0 ,
    \ports_loop[1].out_port_flop_0 ,
    sync_g,
    sync_g_0,
    sync_g_1,
    \ports_loop[7].out_port_flop_0 ,
    rdbk_nsb_reg,
    \ports_loop[6].out_port_flop_0 ,
    Q,
    \sta_ptr_reg[10] ,
    burst,
    rom_error,
    bram_enable,
    \sta_ptr_reg[10]_0 ,
    \sta_ptr_reg[3] ,
    \sta_ptr_reg[4] ,
    \sta_ptr_reg[5] ,
    \sta_ptr_reg[10]_1 ,
    monitor_rxdata,
    \ports_loop[0].in_port_flop_0 ,
    \ports_loop[7].in_port_flop_0 ,
    \ports_loop[1].in_port_flop_0 ,
    \ports_loop[2].in_port_flop_i_2_0 ,
    \ports_loop[2].in_port_flop_i_2_1 ,
    \ports_loop[3].in_port_flop_0 ,
    \ports_loop[4].in_port_flop_0 ,
    \ports_loop[5].in_port_flop_0 ,
    sync_out,
    \ports_loop[6].in_port_flop_i_2_0 ,
    \ports_loop[6].in_port_flop_i_2_1 ,
    \ports_loop[7].in_port_flop_1 ,
    \ports_loop[7].in_port_flop_2 ,
    eof_flag,
    p_6_in,
    eos_flag,
    cgo_flag_reg,
    rom_cr_ne_err,
    monitor_txfull,
    monitor_rxempty,
    aux_cr_ne_err,
    p_4_in,
    aux_cr_es_err,
    aux_uc_err,
    rdbk_crc,
    cgo_flag_reg_0,
    fecc_endofframe,
    fecc_endofscan,
    aux_cr_ne_err_reg,
    aux_cr_es_err_reg,
    aux_uc_err_reg,
    fecc_crcerror,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle,
    SR,
    flag_enable_flop_0,
    icap_clk,
    sleep);
  output [1:0]\OUTRegistered.instruction_reg[0] ;
  output [1:0]E;
  output read_strobe_flop_0;
  output \ports_loop[2].port_id_flop_0 ;
  output const_strobe_flop_0;
  output bram_wr_en0;
  output [11:0]address;
  output casdomux2;
  output bram_wr_en2;
  output bram2_en;
  output bram_wr_en1;
  output [0:0]\ports_loop[1].port_id_flop_0 ;
  output timer_snap0;
  output [7:0]out_port_reg;
  output [0:0]\ports_loop[2].port_id_flop_1 ;
  output [6:0]D;
  output fetch_txwrite;
  output [0:0]const_strobe_flop_1;
  output [0:0]\ports_loop[2].port_id_flop_2 ;
  output const_strobe_flop_2;
  output bgo_strobe0;
  output firmware0;
  output monitor_txwrite;
  output fetch_rxread;
  output monitor_rxread;
  output \ports_loop[2].out_port_flop_0 ;
  output \ports_loop[0].out_port_flop_0 ;
  output \ports_loop[1].out_port_flop_0 ;
  output sync_g;
  output sync_g_0;
  output sync_g_1;
  output \ports_loop[7].out_port_flop_0 ;
  output rdbk_nsb_reg;
  output \ports_loop[6].out_port_flop_0 ;
  input [7:0]Q;
  input \sta_ptr_reg[10] ;
  input burst;
  input rom_error;
  input bram_enable;
  input [6:0]\sta_ptr_reg[10]_0 ;
  input \sta_ptr_reg[3] ;
  input \sta_ptr_reg[4] ;
  input \sta_ptr_reg[5] ;
  input \sta_ptr_reg[10]_1 ;
  input [7:0]monitor_rxdata;
  input \ports_loop[0].in_port_flop_0 ;
  input [7:0]\ports_loop[7].in_port_flop_0 ;
  input \ports_loop[1].in_port_flop_0 ;
  input \ports_loop[2].in_port_flop_i_2_0 ;
  input \ports_loop[2].in_port_flop_i_2_1 ;
  input \ports_loop[3].in_port_flop_0 ;
  input \ports_loop[4].in_port_flop_0 ;
  input \ports_loop[5].in_port_flop_0 ;
  input sync_out;
  input \ports_loop[6].in_port_flop_i_2_0 ;
  input \ports_loop[6].in_port_flop_i_2_1 ;
  input \ports_loop[7].in_port_flop_1 ;
  input [39:0]\ports_loop[7].in_port_flop_2 ;
  input eof_flag;
  input [2:0]p_6_in;
  input eos_flag;
  input cgo_flag_reg;
  input rom_cr_ne_err;
  input monitor_txfull;
  input monitor_rxempty;
  input aux_cr_ne_err;
  input [1:0]p_4_in;
  input aux_cr_es_err;
  input aux_uc_err;
  input rdbk_crc;
  input [0:0]cgo_flag_reg_0;
  input fecc_endofframe;
  input fecc_endofscan;
  input aux_cr_ne_err_reg;
  input aux_cr_es_err_reg;
  input aux_uc_err_reg;
  input fecc_crcerror;
  input fecc_eccerrornotsingle;
  input fecc_eccerrorsingle;
  input [0:0]SR;
  input [17:0]flag_enable_flop_0;
  input icap_clk;
  input sleep;

  wire [6:0]D;
  wire [1:0]E;
  wire [1:0]\OUTRegistered.instruction_reg[0] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [11:0]address;
  wire [1:0]alu_mux_sel;
  wire [1:0]alu_mux_sel_value;
  wire [7:0]alu_result;
  wire arith_carry;
  wire arith_carry_in;
  wire [7:0]arith_logical_result;
  wire [2:0]arith_logical_sel;
  wire [7:0]arith_logical_value;
  wire aux_cr_es_err;
  wire aux_cr_es_err_reg;
  wire aux_cr_ne_err;
  wire aux_cr_ne_err_reg;
  wire aux_uc_err;
  wire aux_uc_err_reg;
  wire bank;
  wire bank_value;
  wire bgo_strobe0;
  wire bram2_en;
  wire bram_enable;
  wire bram_wr_en0;
  wire bram_wr_en1;
  wire bram_wr_en2;
  wire burst;
  wire [7:0]carry_arith_logical;
  wire carry_flag;
  wire carry_flag_value;
  wire carry_in_zero;
  wire carry_lower_parity;
  wire carry_lower_zero;
  wire carry_middle_zero;
  wire [10:0]carry_pc;
  wire casdomux2;
  wire cgo_flag_i_2_n_0;
  wire cgo_flag_reg;
  wire [0:0]cgo_flag_reg_0;
  wire const_strobe_flop_0;
  wire [0:0]const_strobe_flop_1;
  wire const_strobe_flop_2;
  wire const_strobe_value;
  wire cs;
  wire \data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ;
  wire \data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ;
  wire drive_carry_in_zero;
  wire eof_flag;
  wire eos_flag;
  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofframe;
  wire fecc_endofscan;
  wire [4:0]feed_pointer_value;
  wire fetch_rxread;
  wire fetch_rxread_INST_0_i_1_n_0;
  wire fetch_txwrite;
  wire firmware0;
  wire flag_enable;
  wire [17:0]flag_enable_flop_0;
  wire flag_enable_type;
  wire flag_enable_value;
  wire [7:0]half_arith_logical;
  wire [11:0]half_pc;
  wire [4:0]half_pointer_value;
  wire icap_clk;
  wire [7:0]in_port;
  wire [7:0]in_port_reg;
  wire internal_reset;
  wire internal_reset_value;
  wire loadstar_type;
  wire [7:0]logical_carry_mask;
  wire lower_parity;
  wire lower_parity_sel;
  wire lower_zero;
  wire lower_zero_sel;
  wire middle_zero;
  wire middle_zero_sel;
  wire [7:0]monitor_rxdata;
  wire monitor_rxempty;
  wire monitor_rxread;
  wire monitor_rxread_INST_0_i_1_n_0;
  wire monitor_txfull;
  wire monitor_txwrite;
  wire move_type;
  wire [7:0]out_port;
  wire [7:0]out_port_reg;
  wire [1:0]p_4_in;
  wire [2:0]p_6_in;
  wire parity;
  wire [2:0]pc_mode;
  wire pc_move_is_valid;
  wire [11:0]pc_value;
  wire [11:0]pc_vector;
  wire pop_stack;
  wire [5:2]port_id;
  wire [3:0]port_id_reg;
  wire \ports_loop[0].in_port_flop_0 ;
  wire \ports_loop[0].in_port_flop_i_11_n_0 ;
  wire \ports_loop[0].in_port_flop_i_12_n_0 ;
  wire \ports_loop[0].in_port_flop_i_2_n_0 ;
  wire \ports_loop[0].in_port_flop_i_3_n_0 ;
  wire \ports_loop[0].in_port_flop_i_4_n_0 ;
  wire \ports_loop[0].in_port_flop_i_5_n_0 ;
  wire \ports_loop[0].in_port_flop_i_6_n_0 ;
  wire \ports_loop[0].in_port_flop_i_7_n_0 ;
  wire \ports_loop[0].in_port_flop_i_8_n_0 ;
  wire \ports_loop[0].in_port_flop_i_9_n_0 ;
  wire \ports_loop[0].out_port_flop_0 ;
  wire \ports_loop[1].in_port_flop_0 ;
  wire \ports_loop[1].in_port_flop_i_2_n_0 ;
  wire \ports_loop[1].in_port_flop_i_3_n_0 ;
  wire \ports_loop[1].in_port_flop_i_4_n_0 ;
  wire \ports_loop[1].in_port_flop_i_6_n_0 ;
  wire \ports_loop[1].in_port_flop_i_7_n_0 ;
  wire \ports_loop[1].out_port_flop_0 ;
  wire [0:0]\ports_loop[1].port_id_flop_0 ;
  wire \ports_loop[2].in_port_flop_i_2_0 ;
  wire \ports_loop[2].in_port_flop_i_2_1 ;
  wire \ports_loop[2].in_port_flop_i_2_n_0 ;
  wire \ports_loop[2].in_port_flop_i_3_n_0 ;
  wire \ports_loop[2].in_port_flop_i_4_n_0 ;
  wire \ports_loop[2].in_port_flop_i_5_n_0 ;
  wire \ports_loop[2].in_port_flop_i_6_n_0 ;
  wire \ports_loop[2].in_port_flop_i_7_n_0 ;
  wire \ports_loop[2].out_port_flop_0 ;
  wire \ports_loop[2].port_id_flop_0 ;
  wire [0:0]\ports_loop[2].port_id_flop_1 ;
  wire [0:0]\ports_loop[2].port_id_flop_2 ;
  wire \ports_loop[3].in_port_flop_0 ;
  wire \ports_loop[3].in_port_flop_i_2_n_0 ;
  wire \ports_loop[3].in_port_flop_i_3_n_0 ;
  wire \ports_loop[3].in_port_flop_i_4_n_0 ;
  wire \ports_loop[3].in_port_flop_i_5_n_0 ;
  wire \ports_loop[3].in_port_flop_i_6_n_0 ;
  wire \ports_loop[4].in_port_flop_0 ;
  wire \ports_loop[4].in_port_flop_i_2_n_0 ;
  wire \ports_loop[4].in_port_flop_i_3_n_0 ;
  wire \ports_loop[4].in_port_flop_i_5_n_0 ;
  wire \ports_loop[4].in_port_flop_i_6_n_0 ;
  wire \ports_loop[5].in_port_flop_0 ;
  wire \ports_loop[5].in_port_flop_i_2_n_0 ;
  wire \ports_loop[5].in_port_flop_i_3_n_0 ;
  wire \ports_loop[5].in_port_flop_i_5_n_0 ;
  wire \ports_loop[5].in_port_flop_i_6_n_0 ;
  wire \ports_loop[6].in_port_flop_i_2_0 ;
  wire \ports_loop[6].in_port_flop_i_2_1 ;
  wire \ports_loop[6].in_port_flop_i_2_n_0 ;
  wire \ports_loop[6].in_port_flop_i_3_n_0 ;
  wire \ports_loop[6].in_port_flop_i_4_n_0 ;
  wire \ports_loop[6].in_port_flop_i_5_n_0 ;
  wire \ports_loop[6].in_port_flop_i_6_n_0 ;
  wire \ports_loop[6].in_port_flop_i_7_n_0 ;
  wire \ports_loop[6].out_port_flop_0 ;
  wire [7:0]\ports_loop[7].in_port_flop_0 ;
  wire \ports_loop[7].in_port_flop_1 ;
  wire [39:0]\ports_loop[7].in_port_flop_2 ;
  wire \ports_loop[7].in_port_flop_i_2_n_0 ;
  wire \ports_loop[7].in_port_flop_i_3_n_0 ;
  wire \ports_loop[7].in_port_flop_i_4_n_0 ;
  wire \ports_loop[7].in_port_flop_i_5_n_0 ;
  wire \ports_loop[7].out_port_flop_0 ;
  wire push_stack;
  wire rdbk_crc;
  wire rdbk_nsb_i_2_n_0;
  wire rdbk_nsb_reg;
  wire read_strobe_flop_0;
  wire read_strobe_value;
  wire regbank_type;
  wire register_enable;
  wire register_enable_type;
  wire register_enable_value;
  wire [11:0]return_vector;
  wire rom_cr_ne_err;
  wire rom_error;
  wire rs;
  wire run;
  wire run_value;
  wire shadow_bank;
  wire shadow_carry_flag;
  wire shadow_zero_flag;
  wire shadow_zero_value;
  wire shift_carry;
  wire shift_carry_value;
  wire shift_in_bit;
  wire [7:0]shift_rotate_result;
  wire [7:0]shift_rotate_value;
  wire sleep;
  wire special_bit;
  wire [7:0]spm_data;
  wire spm_enable;
  wire spm_enable_value;
  wire [7:0]spm_ram_data;
  wire \sta_ptr[11]_i_10_n_0 ;
  wire \sta_ptr_reg[10] ;
  wire [6:0]\sta_ptr_reg[10]_0 ;
  wire \sta_ptr_reg[10]_1 ;
  wire \sta_ptr_reg[3] ;
  wire \sta_ptr_reg[4] ;
  wire \sta_ptr_reg[5] ;
  wire stack_bank;
  wire stack_bit;
  wire stack_carry_flag;
  wire [11:0]stack_memory;
  wire [4:0]stack_pointer;
  wire [3:0]stack_pointer_carry;
  wire [4:0]stack_pointer_value;
  wire stack_zero_flag;
  wire strobe_type;
  wire [7:0]sx;
  wire [4:4]sx_addr;
  wire sx_addr4_value;
  wire [7:0]sy;
  wire sync_g;
  wire sync_g_0;
  wire sync_g_1;
  wire sync_out;
  wire sync_sleep;
  wire [2:1]t_state;
  wire [2:1]t_state_value;
  wire timer_snap0;
  wire upper_parity;
  wire upper_zero_sel;
  wire use_zero_flag;
  wire use_zero_flag_value;
  wire write_strobe_value;
  wire ws;
  wire zero_flag;
  wire zero_flag_value;
  wire [7:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:4]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:4]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED ;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED;
  wire [7:0]NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED;
  wire NLW_loadstar_type_lut_O6_UNCONNECTED;
  wire NLW_move_type_lut_O5_UNCONNECTED;
  wire [7:1]NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED;
  wire [7:1]NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED;
  wire [7:0]NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED;
  wire [7:2]NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED;
  wire [7:4]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:4]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED ;
  wire NLW_sx_addr4_value_lut_O5_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RWCYEnabled.arith_carry_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(carry_arith_logical[7]),
        .Q(arith_carry),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hAAAAFDAAFFFFFFFF)) 
    \RWPMEnabled.pc_mode0_reworked_lut 
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[13]),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(pc_move_is_valid),
        .O(pc_mode[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h7777027700000000)) 
    \RWPMEnabled.pc_mode1_reworked_lut 
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[13]),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(pc_move_is_valid),
        .O(pc_mode[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    \RWPMEnabled.pc_mode2_reworked_lut 
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[15]),
        .I3(flag_enable_flop_0[16]),
        .I4(flag_enable_flop_0[17]),
        .I5(1'b0),
        .O(pc_mode[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFFF55500000EEE)) 
    \RWSREnabled.reset_reworked_lut 
       (.I0(run),
        .I1(internal_reset),
        .I2(1'b0),
        .I3(t_state[2]),
        .I4(SR),
        .I5(1'b1),
        .O5(run_value),
        .O6(internal_reset_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA000033CC0F00)) 
    \address_loop[0].lsb_pc.pc_lut 
       (.I0(sy[0]),
        .I1(pc_vector[0]),
        .I2(address[0]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO(carry_pc[7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pc_mode[0]}),
        .O(pc_value[7:0]),
        .S(half_pc[7:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[0].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[0]),
        .I1(return_vector[0]),
        .I2(flag_enable_flop_0[1]),
        .I3(return_vector[1]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[0]),
        .O6(pc_vector[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[0].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[0]),
        .Q(address[0]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[0].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[0]),
        .Q(return_vector[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[10].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[10]),
        .I1(return_vector[10]),
        .I2(flag_enable_flop_0[11]),
        .I3(return_vector[11]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[10]),
        .O6(pc_vector[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[10].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[10]),
        .Q(address[10]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[10].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[10]),
        .Q(return_vector[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[10].upper_pc.pc_lut 
       (.I0(sx[2]),
        .I1(pc_vector[10]),
        .I2(address[10]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[11].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[11]),
        .Q(address[11]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[11].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[11]),
        .Q(return_vector[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[11].upper_pc.pc_lut 
       (.I0(sx[3]),
        .I1(pc_vector[11]),
        .I2(address[11]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[1].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[1]),
        .Q(address[1]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[1].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[1]),
        .Q(return_vector[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[1].upper_pc.pc_lut 
       (.I0(sy[1]),
        .I1(pc_vector[1]),
        .I2(address[1]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[2].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[2]),
        .I1(return_vector[2]),
        .I2(flag_enable_flop_0[3]),
        .I3(return_vector[3]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[2]),
        .O6(pc_vector[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[2].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[2]),
        .Q(address[2]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[2].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[2]),
        .Q(return_vector[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[2].upper_pc.pc_lut 
       (.I0(sy[2]),
        .I1(pc_vector[2]),
        .I2(address[2]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[3].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[3]),
        .Q(address[3]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[3].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[3]),
        .Q(return_vector[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[3].upper_pc.pc_lut 
       (.I0(sy[3]),
        .I1(pc_vector[3]),
        .I2(address[3]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[4].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[4]),
        .I1(return_vector[4]),
        .I2(flag_enable_flop_0[5]),
        .I3(return_vector[5]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[4]),
        .O6(pc_vector[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[4].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[4]),
        .Q(address[4]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[4].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[4]),
        .Q(return_vector[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[4].upper_pc.pc_lut 
       (.I0(sy[4]),
        .I1(pc_vector[4]),
        .I2(address[4]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[5].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[5]),
        .Q(address[5]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[5].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[5]),
        .Q(return_vector[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[5].upper_pc.pc_lut 
       (.I0(sy[5]),
        .I1(pc_vector[5]),
        .I2(address[5]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[6].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[6]),
        .I1(return_vector[6]),
        .I2(flag_enable_flop_0[7]),
        .I3(return_vector[7]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[6]),
        .O6(pc_vector[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[6].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[6]),
        .Q(address[6]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[6].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[6]),
        .Q(return_vector[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[6].upper_pc.pc_lut 
       (.I0(sy[6]),
        .I1(pc_vector[6]),
        .I2(address[6]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[7].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[7]),
        .Q(address[7]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[7].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[7]),
        .Q(return_vector[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[7].upper_pc.pc_lut 
       (.I0(sy[7]),
        .I1(pc_vector[7]),
        .I2(address[7]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[8].output_data.pc_vector_mux_lut 
       (.I0(flag_enable_flop_0[8]),
        .I1(return_vector[8]),
        .I2(flag_enable_flop_0[9]),
        .I3(return_vector[9]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(pc_vector[8]),
        .O6(pc_vector[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[8].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[8]),
        .Q(address[8]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[8].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[8]),
        .Q(return_vector[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8 
       (.CI(carry_pc[7]),
        .CI_TOP(1'b0),
        .CO({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED [7:3],carry_pc[10:8]}),
        .DI({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED [7:3],1'b0,1'b0,1'b0}),
        .O({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED [7:4],pc_value[11:8]}),
        .S({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED [7:4],half_pc[11:8]}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[8].upper_pc.pc_lut 
       (.I0(sx[0]),
        .I1(pc_vector[8]),
        .I2(address[8]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[9].pc_flop 
       (.C(icap_clk),
        .CE(t_state[1]),
        .D(pc_value[9]),
        .Q(address[9]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[9].return_vector_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_memory[9]),
        .Q(return_vector[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[9].upper_pc.pc_lut 
       (.I0(sx[1]),
        .I1(pc_vector[9]),
        .I2(address[9]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h03CA000004200000)) 
    alu_decode0_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[15]),
        .I3(flag_enable_flop_0[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(alu_mux_sel_value[0]),
        .O6(arith_logical_sel[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7708000000000F00)) 
    alu_decode1_lut
       (.I0(carry_flag),
        .I1(flag_enable_flop_0[13]),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(1'b1),
        .O5(alu_mux_sel_value[1]),
        .O6(arith_carry_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hD000000002000000)) 
    alu_decode2_lut
       (.I0(flag_enable_flop_0[14]),
        .I1(flag_enable_flop_0[15]),
        .I2(flag_enable_flop_0[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(arith_logical_sel[1]),
        .O6(arith_logical_sel[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel0_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(alu_mux_sel_value[0]),
        .Q(alu_mux_sel[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel1_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(alu_mux_sel_value[1]),
        .Q(alu_mux_sel[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    aux_cr_es_err_i_1
       (.I0(aux_cr_es_err_reg),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[6]),
        .I3(aux_cr_es_err),
        .O(sync_g_0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    aux_cr_ne_err_i_1
       (.I0(aux_cr_ne_err_reg),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[5]),
        .I3(aux_cr_ne_err),
        .O(sync_g));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    aux_uc_err_i_1
       (.I0(aux_uc_err_reg),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[7]),
        .I3(aux_uc_err),
        .O(sync_g_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    bank_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(bank_value),
        .Q(bank),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hACACFF00FF00FF00)) 
    bank_lut
       (.I0(flag_enable_flop_0[0]),
        .I1(shadow_bank),
        .I2(flag_enable_flop_0[16]),
        .I3(bank),
        .I4(regbank_type),
        .I5(t_state[1]),
        .O(bank_value));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    bgo_strobe_i_1
       (.I0(out_port_reg[3]),
        .I1(cgo_flag_i_2_n_0),
        .O(bgo_strobe0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    carry_flag_flop
       (.C(icap_clk),
        .CE(flag_enable),
        .D(carry_flag_value),
        .Q(carry_flag),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h3333AACCF0AA0000)) 
    carry_flag_lut
       (.I0(shift_carry),
        .I1(arith_carry),
        .I2(parity),
        .I3(flag_enable_flop_0[14]),
        .I4(flag_enable_flop_0[15]),
        .I5(flag_enable_flop_0[16]),
        .O5(drive_carry_in_zero),
        .O6(carry_flag_value));
  LUT4 #(
    .INIT(16'hEFAA)) 
    cgo_flag_i_1
       (.I0(cgo_flag_reg_0),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[2]),
        .I3(cgo_flag_reg),
        .O(\ports_loop[2].out_port_flop_0 ));
  LUT6 #(
    .INIT(64'hF1FFFFFFFFFFFFFF)) 
    cgo_flag_i_2
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[3]),
        .I4(port_id_reg[2]),
        .I5(port_id_reg[1]),
        .O(cgo_flag_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    const_strobe_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(const_strobe_value),
        .Q(cs),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].alu_mux_lut 
       (.I0(arith_logical_result[0]),
        .I1(shift_rotate_result[0]),
        .I2(in_port[0]),
        .I3(spm_data[0]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[0]),
        .Q(arith_logical_result[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[0].arith_logical_lut 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(sx[0]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[0]),
        .O6(half_arith_logical[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8 
       (.CI(arith_carry_in),
        .CI_TOP(1'b0),
        .CO(carry_arith_logical),
        .DI(logical_carry_mask),
        .O(arith_logical_value),
        .S(half_arith_logical));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hBFBC8F8CB3B08380)) 
    \data_path_loop[0].lsb_shift_rotate.shift_bit_lut 
       (.I0(flag_enable_flop_0[0]),
        .I1(flag_enable_flop_0[1]),
        .I2(flag_enable_flop_0[2]),
        .I3(carry_flag),
        .I4(sx[0]),
        .I5(sx[7]),
        .O(shift_in_bit));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut 
       (.I0(shift_in_bit),
        .I1(sx[1]),
        .I2(sx[0]),
        .I3(sx[2]),
        .I4(flag_enable_flop_0[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[0]),
        .O6(shift_rotate_value[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].output_data.sy_kk_mux_lut 
       (.I0(sy[0]),
        .I1(flag_enable_flop_0[0]),
        .I2(sy[1]),
        .I3(flag_enable_flop_0[1]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(\OUTRegistered.instruction_reg[0] [0]),
        .O6(\OUTRegistered.instruction_reg[0] [1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].second_operand.out_port_lut 
       (.I0(sx[0]),
        .I1(flag_enable_flop_0[4]),
        .I2(sx[1]),
        .I3(flag_enable_flop_0[5]),
        .I4(flag_enable_flop_0[13]),
        .I5(1'b1),
        .O5(out_port[0]),
        .O6(out_port[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[0]),
        .Q(shift_rotate_result[0]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[0].small_spm_ram.spm_ram 
       (.ADDRA({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRB({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRC({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRD({port_id,\OUTRegistered.instruction_reg[0] }),
        .DIA(sx[0]),
        .DIB(sx[1]),
        .DIC(sx[2]),
        .DID(sx[3]),
        .DOA(spm_ram_data[0]),
        .DOB(spm_ram_data[1]),
        .DOC(spm_ram_data[2]),
        .DOD(spm_ram_data[3]),
        .WCLK(icap_clk),
        .WE(spm_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[0]),
        .Q(spm_data[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[1].alu_mux_lut 
       (.I0(arith_logical_result[1]),
        .I1(shift_rotate_result[1]),
        .I2(in_port[1]),
        .I3(spm_data[1]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[1]),
        .Q(arith_logical_result[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[1].arith_logical_lut 
       (.I0(\OUTRegistered.instruction_reg[0] [1]),
        .I1(sx[1]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[1]),
        .O6(half_arith_logical[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[1]),
        .Q(shift_rotate_result[1]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[1]),
        .Q(spm_data[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].alu_mux_lut 
       (.I0(arith_logical_result[2]),
        .I1(shift_rotate_result[2]),
        .I2(in_port[2]),
        .I3(spm_data[2]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[2]),
        .Q(arith_logical_result[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[2].arith_logical_lut 
       (.I0(port_id[2]),
        .I1(sx[2]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[2]),
        .O6(half_arith_logical[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].mid_shift_rotate.shift_rotate_lut 
       (.I0(sx[1]),
        .I1(sx[3]),
        .I2(sx[2]),
        .I3(sx[4]),
        .I4(flag_enable_flop_0[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[2]),
        .O6(shift_rotate_value[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].output_data.sy_kk_mux_lut 
       (.I0(sy[2]),
        .I1(flag_enable_flop_0[2]),
        .I2(sy[3]),
        .I3(flag_enable_flop_0[3]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(port_id[2]),
        .O6(port_id[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].second_operand.out_port_lut 
       (.I0(sx[2]),
        .I1(flag_enable_flop_0[6]),
        .I2(sx[3]),
        .I3(flag_enable_flop_0[7]),
        .I4(flag_enable_flop_0[13]),
        .I5(1'b1),
        .O5(out_port[2]),
        .O6(out_port[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[2]),
        .Q(shift_rotate_result[2]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[2]),
        .Q(spm_data[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[3].alu_mux_lut 
       (.I0(arith_logical_result[3]),
        .I1(shift_rotate_result[3]),
        .I2(in_port[3]),
        .I3(spm_data[3]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[3]),
        .Q(arith_logical_result[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[3].arith_logical_lut 
       (.I0(port_id[3]),
        .I1(sx[3]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[3]),
        .O6(half_arith_logical[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[3]),
        .Q(shift_rotate_result[3]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[3]),
        .Q(spm_data[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].alu_mux_lut 
       (.I0(arith_logical_result[4]),
        .I1(shift_rotate_result[4]),
        .I2(in_port[4]),
        .I3(spm_data[4]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[4]),
        .Q(arith_logical_result[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[4].arith_logical_lut 
       (.I0(port_id[4]),
        .I1(sx[4]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[4]),
        .O6(half_arith_logical[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].mid_shift_rotate.shift_rotate_lut 
       (.I0(sx[3]),
        .I1(sx[5]),
        .I2(sx[4]),
        .I3(sx[6]),
        .I4(flag_enable_flop_0[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[4]),
        .O6(shift_rotate_value[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].output_data.sy_kk_mux_lut 
       (.I0(sy[4]),
        .I1(flag_enable_flop_0[4]),
        .I2(sy[5]),
        .I3(flag_enable_flop_0[5]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(port_id[4]),
        .O6(port_id[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].second_operand.out_port_lut 
       (.I0(sx[4]),
        .I1(flag_enable_flop_0[8]),
        .I2(sx[5]),
        .I3(flag_enable_flop_0[9]),
        .I4(flag_enable_flop_0[13]),
        .I5(1'b1),
        .O5(out_port[4]),
        .O6(out_port[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[4]),
        .Q(shift_rotate_result[4]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[4].small_spm_ram.spm_ram 
       (.ADDRA({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRB({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRC({port_id,\OUTRegistered.instruction_reg[0] }),
        .ADDRD({port_id,\OUTRegistered.instruction_reg[0] }),
        .DIA(sx[4]),
        .DIB(sx[5]),
        .DIC(sx[6]),
        .DID(sx[7]),
        .DOA(spm_ram_data[4]),
        .DOB(spm_ram_data[5]),
        .DOC(spm_ram_data[6]),
        .DOD(spm_ram_data[7]),
        .WCLK(icap_clk),
        .WE(spm_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[4]),
        .Q(spm_data[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[5].alu_mux_lut 
       (.I0(arith_logical_result[5]),
        .I1(shift_rotate_result[5]),
        .I2(in_port[5]),
        .I3(spm_data[5]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[5]),
        .Q(arith_logical_result[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[5].arith_logical_lut 
       (.I0(port_id[5]),
        .I1(sx[5]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[5]),
        .O6(half_arith_logical[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[5]),
        .Q(shift_rotate_result[5]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[5]),
        .Q(spm_data[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].alu_mux_lut 
       (.I0(arith_logical_result[6]),
        .I1(shift_rotate_result[6]),
        .I2(in_port[6]),
        .I3(spm_data[6]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[6]),
        .Q(arith_logical_result[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[6].arith_logical_lut 
       (.I0(\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ),
        .I1(sx[6]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[6]),
        .O6(half_arith_logical[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].msb_shift_rotate.shift_rotate_lut 
       (.I0(sx[5]),
        .I1(sx[7]),
        .I2(sx[6]),
        .I3(shift_in_bit),
        .I4(flag_enable_flop_0[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[6]),
        .O6(shift_rotate_value[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].output_data.sy_kk_mux_lut 
       (.I0(sy[6]),
        .I1(flag_enable_flop_0[6]),
        .I2(sy[7]),
        .I3(flag_enable_flop_0[7]),
        .I4(flag_enable_flop_0[12]),
        .I5(1'b1),
        .O5(\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ),
        .O6(\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].second_operand.out_port_lut 
       (.I0(sx[6]),
        .I1(flag_enable_flop_0[10]),
        .I2(sx[7]),
        .I3(flag_enable_flop_0[11]),
        .I4(flag_enable_flop_0[13]),
        .I5(1'b1),
        .O5(out_port[6]),
        .O6(out_port[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[6]),
        .Q(shift_rotate_result[6]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[6]),
        .Q(spm_data[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[7].alu_mux_lut 
       (.I0(arith_logical_result[7]),
        .I1(shift_rotate_result[7]),
        .I2(in_port[7]),
        .I3(spm_data[7]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].arith_logical_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(arith_logical_value[7]),
        .Q(arith_logical_result[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[7].arith_logical_lut 
       (.I0(\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ),
        .I1(sx[7]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[7]),
        .O6(half_arith_logical[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].shift_rotate_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_rotate_value[7]),
        .Q(shift_rotate_result[7]),
        .R(flag_enable_flop_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].spm_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_ram_data[7]),
        .Q(spm_data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000040404000)) 
    \end_ptr[11]_i_1 
       (.I0(port_id_reg[2]),
        .I1(port_id_reg[3]),
        .I2(port_id_reg[1]),
        .I3(cs),
        .I4(ws),
        .I5(port_id_reg[0]),
        .O(\ports_loop[2].port_id_flop_0 ));
  LUT6 #(
    .INIT(64'h4040400000000000)) 
    \end_ptr[7]_i_1 
       (.I0(port_id_reg[2]),
        .I1(port_id_reg[3]),
        .I2(port_id_reg[1]),
        .I3(cs),
        .I4(ws),
        .I5(port_id_reg[0]),
        .O(\ports_loop[2].port_id_flop_2 ));
  LUT4 #(
    .INIT(16'hEFAA)) 
    eof_flag_i_1
       (.I0(fecc_endofframe),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[0]),
        .I3(eof_flag),
        .O(\ports_loop[0].out_port_flop_0 ));
  LUT4 #(
    .INIT(16'hEFAA)) 
    eos_flag_i_1
       (.I0(fecc_endofscan),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[1]),
        .I3(eos_flag),
        .O(\ports_loop[1].out_port_flop_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    fetch_rxread_INST_0
       (.I0(port_id[5]),
        .I1(port_id[2]),
        .I2(port_id[3]),
        .I3(rs),
        .I4(port_id[4]),
        .I5(fetch_rxread_INST_0_i_1_n_0),
        .O(fetch_rxread));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    fetch_rxread_INST_0_i_1
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(\OUTRegistered.instruction_reg[0] [1]),
        .O(fetch_rxread_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    fetch_txwrite_INST_0
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[2]),
        .I4(port_id_reg[3]),
        .I5(port_id_reg[1]),
        .O(fetch_txwrite));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB6)) 
    firmware0_i_1
       (.I0(address[9]),
        .I1(address[10]),
        .I2(address[11]),
        .O(casdomux2));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h08008008)) 
    firmware0_i_2
       (.I0(rom_error),
        .I1(bram_enable),
        .I2(address[11]),
        .I3(address[10]),
        .I4(address[9]),
        .O(bram_wr_en0));
  LUT3 #(
    .INIT(8'h24)) 
    firmware1_i_1
       (.I0(address[11]),
        .I1(address[10]),
        .I2(address[9]),
        .O(bram2_en));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h92000000)) 
    firmware1_i_2
       (.I0(address[9]),
        .I1(address[10]),
        .I2(address[11]),
        .I3(bram_enable),
        .I4(rom_error),
        .O(bram_wr_en1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00800800)) 
    firmware2_i_1
       (.I0(rom_error),
        .I1(bram_enable),
        .I2(address[11]),
        .I3(address[10]),
        .I4(address[9]),
        .O(bram_wr_en2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    flag_enable_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(flag_enable_value),
        .Q(flag_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 init_zero_muxcy_CARRY4_CARRY8
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED[7:4],zero_flag_value,carry_middle_zero,carry_lower_zero,carry_in_zero}),
        .DI({NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED[7:4],shadow_zero_flag,middle_zero,lower_zero,drive_carry_in_zero}),
        .O(NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED[7:0]),
        .S({NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED[7:4],upper_zero_sel,middle_zero_sel,lower_zero_sel,carry_flag_value}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    internal_reset_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(internal_reset_value),
        .Q(internal_reset),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0010000000000800)) 
    loadstar_type_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[15]),
        .I3(flag_enable_flop_0[16]),
        .I4(flag_enable_flop_0[17]),
        .I5(1'b1),
        .O5(loadstar_type),
        .O6(NLW_loadstar_type_lut_O6_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000087780000)) 
    lower_parity_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(carry_flag),
        .I2(arith_logical_result[0]),
        .I3(arith_logical_result[1]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(lower_parity),
        .O6(lower_parity_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    lower_reg_banks
       (.ADDRA({bank,flag_enable_flop_0[7:4]}),
        .ADDRB({sx_addr,flag_enable_flop_0[11:8]}),
        .ADDRC({bank,flag_enable_flop_0[7:4]}),
        .ADDRD({sx_addr,flag_enable_flop_0[11:8]}),
        .DIA(alu_result[1:0]),
        .DIB(alu_result[1:0]),
        .DIC(alu_result[3:2]),
        .DID(alu_result[3:2]),
        .DOA(sy[1:0]),
        .DOB(sx[1:0]),
        .DOC(sy[3:2]),
        .DOD(sx[3:2]),
        .WCLK(icap_clk),
        .WE(register_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000000000001)) 
    lower_zero_lut
       (.I0(alu_result[0]),
        .I1(alu_result[1]),
        .I2(alu_result[2]),
        .I3(alu_result[3]),
        .I4(alu_result[4]),
        .I5(1'b1),
        .O5(lower_zero),
        .O6(lower_zero_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000D00000000)) 
    middle_zero_lut
       (.I0(use_zero_flag),
        .I1(zero_flag),
        .I2(alu_result[5]),
        .I3(alu_result[6]),
        .I4(alu_result[7]),
        .I5(1'b1),
        .O5(middle_zero),
        .O6(middle_zero_sel));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    monitor_rxread_INST_0
       (.I0(port_id[5]),
        .I1(port_id[2]),
        .I2(port_id[3]),
        .I3(rs),
        .I4(port_id[4]),
        .I5(monitor_rxread_INST_0_i_1_n_0),
        .O(monitor_rxread));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    monitor_rxread_INST_0_i_1
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(\OUTRegistered.instruction_reg[0] [1]),
        .O(monitor_rxread_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000E0000000000)) 
    monitor_txwrite_INST_0
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[2]),
        .I4(port_id_reg[3]),
        .I5(port_id_reg[1]),
        .O(monitor_txwrite));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7777027700000200)) 
    move_type_lut
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[13]),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(1'b1),
        .O5(NLW_move_type_lut_O5_UNCONNECTED),
        .O6(move_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 parity_muxcy_CARRY4_CARRY8
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED[7:1],carry_lower_parity}),
        .DI({NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED[7:1],lower_parity}),
        .O({NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED[7:2],parity,NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED[0]}),
        .S({NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED[7:2],upper_parity,lower_parity_sel}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h5A3CFFFF00000000)) 
    pc_move_is_valid_lut
       (.I0(carry_flag),
        .I1(zero_flag),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(flag_enable_flop_0[17]),
        .O(pc_move_is_valid));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[0].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[0]),
        .Q(in_port[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \ports_loop[0].in_port_flop_i_1 
       (.I0(\ports_loop[0].in_port_flop_i_2_n_0 ),
        .I1(\ports_loop[0].in_port_flop_i_3_n_0 ),
        .I2(\ports_loop[0].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[0].in_port_flop_i_5_n_0 ),
        .I4(\ports_loop[0].in_port_flop_i_6_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .O(in_port_reg[0]));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ports_loop[0].in_port_flop_i_11 
       (.I0(\ports_loop[7].in_port_flop_2 [32]),
        .I1(\ports_loop[7].in_port_flop_2 [24]),
        .I2(\ports_loop[7].in_port_flop_2 [16]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [8]),
        .I5(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[0].in_port_flop_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h303F5F5F)) 
    \ports_loop[0].in_port_flop_i_12 
       (.I0(\ports_loop[7].in_port_flop_2 [0]),
        .I1(eof_flag),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(p_6_in[0]),
        .I4(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[0].in_port_flop_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEBEFFAFEFBFF)) 
    \ports_loop[0].in_port_flop_i_2 
       (.I0(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(monitor_rxdata[0]),
        .I4(\ports_loop[0].in_port_flop_0 ),
        .I5(\ports_loop[7].in_port_flop_0 [0]),
        .O(\ports_loop[0].in_port_flop_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2082200220020002)) 
    \ports_loop[0].in_port_flop_i_3 
       (.I0(Q[0]),
        .I1(port_id[4]),
        .I2(port_id[2]),
        .I3(port_id[3]),
        .I4(\OUTRegistered.instruction_reg[0] [1]),
        .I5(\OUTRegistered.instruction_reg[0] [0]),
        .O(\ports_loop[0].in_port_flop_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10C3000300030000)) 
    \ports_loop[0].in_port_flop_i_4 
       (.I0(port_id[5]),
        .I1(port_id[4]),
        .I2(port_id[2]),
        .I3(port_id[3]),
        .I4(\OUTRegistered.instruction_reg[0] [1]),
        .I5(\OUTRegistered.instruction_reg[0] [0]),
        .O(\ports_loop[0].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000C73D0000DF3D)) 
    \ports_loop[0].in_port_flop_i_5 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(port_id[4]),
        .I2(port_id[3]),
        .I3(port_id[2]),
        .I4(port_id[5]),
        .I5(\OUTRegistered.instruction_reg[0] [1]),
        .O(\ports_loop[0].in_port_flop_i_5_n_0 ));
  MUXF7 \ports_loop[0].in_port_flop_i_6 
       (.I0(\ports_loop[0].in_port_flop_i_11_n_0 ),
        .I1(\ports_loop[0].in_port_flop_i_12_n_0 ),
        .O(\ports_loop[0].in_port_flop_i_6_n_0 ),
        .S(\ports_loop[2].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000068282808)) 
    \ports_loop[0].in_port_flop_i_7 
       (.I0(port_id[3]),
        .I1(port_id[4]),
        .I2(port_id[2]),
        .I3(\OUTRegistered.instruction_reg[0] [1]),
        .I4(\OUTRegistered.instruction_reg[0] [0]),
        .I5(port_id[5]),
        .O(\ports_loop[0].in_port_flop_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF5F57F7FF160F1F1)) 
    \ports_loop[0].in_port_flop_i_8 
       (.I0(\OUTRegistered.instruction_reg[0] [1]),
        .I1(\OUTRegistered.instruction_reg[0] [0]),
        .I2(port_id[2]),
        .I3(port_id[5]),
        .I4(port_id[3]),
        .I5(port_id[4]),
        .O(\ports_loop[0].in_port_flop_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hDE8D)) 
    \ports_loop[0].in_port_flop_i_9 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(port_id[4]),
        .I2(port_id[3]),
        .I3(port_id[2]),
        .O(\ports_loop[0].in_port_flop_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[0].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[0]),
        .Q(out_port_reg[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[0].port_id_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction_reg[0] [0]),
        .Q(port_id_reg[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[1].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[1]),
        .Q(in_port[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \ports_loop[1].in_port_flop_i_1 
       (.I0(\ports_loop[1].in_port_flop_i_2_n_0 ),
        .I1(\ports_loop[1].in_port_flop_i_3_n_0 ),
        .I2(\ports_loop[0].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[0].in_port_flop_i_5_n_0 ),
        .I4(\ports_loop[1].in_port_flop_i_4_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .O(in_port_reg[1]));
  LUT6 #(
    .INIT(64'hEAEEEBEFFAFEFBFF)) 
    \ports_loop[1].in_port_flop_i_2 
       (.I0(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(monitor_rxdata[1]),
        .I4(\ports_loop[1].in_port_flop_0 ),
        .I5(\ports_loop[7].in_port_flop_0 [1]),
        .O(\ports_loop[1].in_port_flop_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2082200220020002)) 
    \ports_loop[1].in_port_flop_i_3 
       (.I0(Q[1]),
        .I1(port_id[4]),
        .I2(port_id[2]),
        .I3(port_id[3]),
        .I4(\OUTRegistered.instruction_reg[0] [1]),
        .I5(\OUTRegistered.instruction_reg[0] [0]),
        .O(\ports_loop[1].in_port_flop_i_3_n_0 ));
  MUXF7 \ports_loop[1].in_port_flop_i_4 
       (.I0(\ports_loop[1].in_port_flop_i_6_n_0 ),
        .I1(\ports_loop[1].in_port_flop_i_7_n_0 ),
        .O(\ports_loop[1].in_port_flop_i_4_n_0 ),
        .S(\ports_loop[2].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ports_loop[1].in_port_flop_i_6 
       (.I0(\ports_loop[7].in_port_flop_2 [33]),
        .I1(\ports_loop[7].in_port_flop_2 [25]),
        .I2(\ports_loop[7].in_port_flop_2 [17]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [9]),
        .I5(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[1].in_port_flop_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h303F5F5F)) 
    \ports_loop[1].in_port_flop_i_7 
       (.I0(\ports_loop[7].in_port_flop_2 [1]),
        .I1(eos_flag),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(p_6_in[1]),
        .I4(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[1].in_port_flop_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[1].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[1]),
        .Q(out_port_reg[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[1].port_id_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\OUTRegistered.instruction_reg[0] [1]),
        .Q(port_id_reg[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[2].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[2]),
        .Q(in_port[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD0DDD000DDDDDDDD)) 
    \ports_loop[2].in_port_flop_i_1 
       (.I0(\ports_loop[0].in_port_flop_i_5_n_0 ),
        .I1(\ports_loop[2].in_port_flop_i_2_n_0 ),
        .I2(\ports_loop[2].in_port_flop_i_3_n_0 ),
        .I3(\ports_loop[2].in_port_flop_i_4_n_0 ),
        .I4(\ports_loop[2].in_port_flop_i_5_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .O(in_port_reg[2]));
  LUT6 #(
    .INIT(64'h0C0CFF00AAAA0000)) 
    \ports_loop[2].in_port_flop_i_2 
       (.I0(\ports_loop[2].in_port_flop_i_6_n_0 ),
        .I1(monitor_rxdata[2]),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(Q[2]),
        .I4(\ports_loop[2].in_port_flop_i_7_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[2].in_port_flop_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \ports_loop[2].in_port_flop_i_3 
       (.I0(cgo_flag_reg),
        .I1(p_6_in[2]),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(\ports_loop[7].in_port_flop_2 [2]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .O(\ports_loop[2].in_port_flop_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \ports_loop[2].in_port_flop_i_4 
       (.I0(port_id[5]),
        .I1(port_id[2]),
        .I2(port_id[3]),
        .I3(port_id[4]),
        .O(\ports_loop[2].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ports_loop[2].in_port_flop_i_5 
       (.I0(\ports_loop[7].in_port_flop_2 [18]),
        .I1(\ports_loop[7].in_port_flop_2 [10]),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(\ports_loop[7].in_port_flop_2 [34]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_2 [26]),
        .O(\ports_loop[2].in_port_flop_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888888B)) 
    \ports_loop[2].in_port_flop_i_6 
       (.I0(\ports_loop[7].in_port_flop_0 [2]),
        .I1(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I2(\ports_loop[2].in_port_flop_i_2_0 ),
        .I3(\OUTRegistered.instruction_reg[0] [0]),
        .I4(\OUTRegistered.instruction_reg[0] [1]),
        .I5(\ports_loop[2].in_port_flop_i_2_1 ),
        .O(\ports_loop[2].in_port_flop_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hF7FF1FF0)) 
    \ports_loop[2].in_port_flop_i_7 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(\OUTRegistered.instruction_reg[0] [1]),
        .I2(port_id[3]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .O(\ports_loop[2].in_port_flop_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[2].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[2]),
        .Q(out_port_reg[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[2].port_id_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(port_id[2]),
        .Q(port_id_reg[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[3].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[3]),
        .Q(in_port[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \ports_loop[3].in_port_flop_i_1 
       (.I0(\ports_loop[3].in_port_flop_i_2_n_0 ),
        .I1(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .I2(\ports_loop[3].in_port_flop_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I5(\ports_loop[3].in_port_flop_i_5_n_0 ),
        .O(in_port_reg[3]));
  LUT6 #(
    .INIT(64'h47FFFFFF47FF0000)) 
    \ports_loop[3].in_port_flop_i_2 
       (.I0(burst),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[7].in_port_flop_2 [3]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[2].in_port_flop_i_4_n_0 ),
        .I5(\ports_loop[3].in_port_flop_i_6_n_0 ),
        .O(\ports_loop[3].in_port_flop_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FE0800E)) 
    \ports_loop[3].in_port_flop_i_3 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(\OUTRegistered.instruction_reg[0] [1]),
        .I2(port_id[2]),
        .I3(port_id[4]),
        .I4(port_id[3]),
        .I5(port_id[5]),
        .O(\ports_loop[3].in_port_flop_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h0000E00D)) 
    \ports_loop[3].in_port_flop_i_4 
       (.I0(\OUTRegistered.instruction_reg[0] [1]),
        .I1(\OUTRegistered.instruction_reg[0] [0]),
        .I2(port_id[2]),
        .I3(port_id[3]),
        .I4(port_id[4]),
        .O(\ports_loop[3].in_port_flop_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ports_loop[3].in_port_flop_i_5 
       (.I0(monitor_rxdata[3]),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[7].in_port_flop_0 [3]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[3].in_port_flop_0 ),
        .O(\ports_loop[3].in_port_flop_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \ports_loop[3].in_port_flop_i_6 
       (.I0(\ports_loop[7].in_port_flop_2 [11]),
        .I1(\ports_loop[7].in_port_flop_2 [19]),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(\ports_loop[7].in_port_flop_2 [27]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_2 [35]),
        .O(\ports_loop[3].in_port_flop_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[3].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[3]),
        .Q(out_port_reg[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[3].port_id_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(port_id[3]),
        .Q(port_id_reg[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[4].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[4]),
        .Q(in_port[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \ports_loop[4].in_port_flop_i_1 
       (.I0(\ports_loop[3].in_port_flop_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[4].in_port_flop_i_2_n_0 ),
        .I4(\ports_loop[4].in_port_flop_i_3_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .O(in_port_reg[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ports_loop[4].in_port_flop_i_2 
       (.I0(monitor_rxdata[4]),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[7].in_port_flop_0 [4]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[4].in_port_flop_0 ),
        .O(\ports_loop[4].in_port_flop_i_2_n_0 ));
  MUXF7 \ports_loop[4].in_port_flop_i_3 
       (.I0(\ports_loop[4].in_port_flop_i_5_n_0 ),
        .I1(\ports_loop[4].in_port_flop_i_6_n_0 ),
        .O(\ports_loop[4].in_port_flop_i_3_n_0 ),
        .S(\ports_loop[2].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ports_loop[4].in_port_flop_i_5 
       (.I0(\ports_loop[7].in_port_flop_2 [36]),
        .I1(\ports_loop[7].in_port_flop_2 [28]),
        .I2(\ports_loop[7].in_port_flop_2 [20]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [12]),
        .I5(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[4].in_port_flop_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h303F5F5F)) 
    \ports_loop[4].in_port_flop_i_6 
       (.I0(\ports_loop[7].in_port_flop_2 [4]),
        .I1(rom_cr_ne_err),
        .I2(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I3(monitor_txfull),
        .I4(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[4].in_port_flop_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[4].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[4]),
        .Q(out_port_reg[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[5].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[5]),
        .Q(in_port[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0B08FFFF0B080B08)) 
    \ports_loop[5].in_port_flop_i_1 
       (.I0(Q[5]),
        .I1(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I2(\ports_loop[3].in_port_flop_i_3_n_0 ),
        .I3(\ports_loop[5].in_port_flop_i_2_n_0 ),
        .I4(\ports_loop[5].in_port_flop_i_3_n_0 ),
        .I5(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .O(in_port_reg[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ports_loop[5].in_port_flop_i_2 
       (.I0(monitor_rxdata[5]),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[7].in_port_flop_0 [5]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[5].in_port_flop_0 ),
        .O(\ports_loop[5].in_port_flop_i_2_n_0 ));
  MUXF7 \ports_loop[5].in_port_flop_i_3 
       (.I0(\ports_loop[5].in_port_flop_i_5_n_0 ),
        .I1(\ports_loop[5].in_port_flop_i_6_n_0 ),
        .O(\ports_loop[5].in_port_flop_i_3_n_0 ),
        .S(\ports_loop[2].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \ports_loop[5].in_port_flop_i_5 
       (.I0(\ports_loop[7].in_port_flop_2 [13]),
        .I1(\ports_loop[7].in_port_flop_2 [21]),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(\ports_loop[7].in_port_flop_2 [29]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_2 [37]),
        .O(\ports_loop[5].in_port_flop_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \ports_loop[5].in_port_flop_i_6 
       (.I0(monitor_rxempty),
        .I1(aux_cr_ne_err),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(p_4_in[0]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_2 [5]),
        .O(\ports_loop[5].in_port_flop_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[5].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[5]),
        .Q(out_port_reg[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[6].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[6]),
        .Q(in_port[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF808F0000)) 
    \ports_loop[6].in_port_flop_i_1 
       (.I0(sync_out),
        .I1(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I2(\ports_loop[0].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[6].in_port_flop_i_2_n_0 ),
        .I4(\ports_loop[6].in_port_flop_i_3_n_0 ),
        .I5(\ports_loop[6].in_port_flop_i_4_n_0 ),
        .O(in_port_reg[6]));
  LUT6 #(
    .INIT(64'h55555555CFFFCF00)) 
    \ports_loop[6].in_port_flop_i_2 
       (.I0(Q[6]),
        .I1(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I2(monitor_rxdata[6]),
        .I3(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I4(\ports_loop[6].in_port_flop_i_5_n_0 ),
        .I5(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .O(\ports_loop[6].in_port_flop_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4115511551155515)) 
    \ports_loop[6].in_port_flop_i_3 
       (.I0(port_id[5]),
        .I1(port_id[3]),
        .I2(port_id[4]),
        .I3(port_id[2]),
        .I4(\OUTRegistered.instruction_reg[0] [1]),
        .I5(\OUTRegistered.instruction_reg[0] [0]),
        .O(\ports_loop[6].in_port_flop_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \ports_loop[6].in_port_flop_i_4 
       (.I0(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .I1(\ports_loop[6].in_port_flop_i_6_n_0 ),
        .I2(\ports_loop[2].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[6].in_port_flop_i_7_n_0 ),
        .O(\ports_loop[6].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000FEFFFF00FE)) 
    \ports_loop[6].in_port_flop_i_5 
       (.I0(\ports_loop[6].in_port_flop_i_2_0 ),
        .I1(\OUTRegistered.instruction_reg[0] [0]),
        .I2(\OUTRegistered.instruction_reg[0] [1]),
        .I3(\ports_loop[6].in_port_flop_i_2_1 ),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_0 [6]),
        .O(\ports_loop[6].in_port_flop_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \ports_loop[6].in_port_flop_i_6 
       (.I0(\ports_loop[7].in_port_flop_2 [14]),
        .I1(\ports_loop[7].in_port_flop_2 [22]),
        .I2(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I3(\ports_loop[7].in_port_flop_2 [30]),
        .I4(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I5(\ports_loop[7].in_port_flop_2 [38]),
        .O(\ports_loop[6].in_port_flop_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44CF77CF)) 
    \ports_loop[6].in_port_flop_i_7 
       (.I0(aux_cr_es_err),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(p_4_in[1]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [6]),
        .O(\ports_loop[6].in_port_flop_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[6].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[6]),
        .Q(out_port_reg[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[7].in_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(in_port_reg[7]),
        .Q(in_port[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \ports_loop[7].in_port_flop_i_1 
       (.I0(\ports_loop[7].in_port_flop_i_2_n_0 ),
        .I1(\ports_loop[2].in_port_flop_i_4_n_0 ),
        .I2(\ports_loop[7].in_port_flop_i_3_n_0 ),
        .I3(\ports_loop[0].in_port_flop_i_7_n_0 ),
        .I4(\ports_loop[7].in_port_flop_i_4_n_0 ),
        .I5(\ports_loop[7].in_port_flop_i_5_n_0 ),
        .O(in_port_reg[7]));
  LUT5 #(
    .INIT(32'h44037703)) 
    \ports_loop[7].in_port_flop_i_2 
       (.I0(aux_uc_err),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(rdbk_crc),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [7]),
        .O(\ports_loop[7].in_port_flop_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \ports_loop[7].in_port_flop_i_3 
       (.I0(\ports_loop[7].in_port_flop_2 [23]),
        .I1(\ports_loop[7].in_port_flop_2 [15]),
        .I2(\ports_loop[7].in_port_flop_2 [39]),
        .I3(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I4(\ports_loop[7].in_port_flop_2 [31]),
        .I5(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .O(\ports_loop[7].in_port_flop_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h70FF)) 
    \ports_loop[7].in_port_flop_i_4 
       (.I0(Q[7]),
        .I1(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I2(\ports_loop[3].in_port_flop_i_4_n_0 ),
        .I3(\ports_loop[6].in_port_flop_i_3_n_0 ),
        .O(\ports_loop[7].in_port_flop_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E2FFFFFFFF)) 
    \ports_loop[7].in_port_flop_i_5 
       (.I0(\ports_loop[7].in_port_flop_1 ),
        .I1(\ports_loop[0].in_port_flop_i_9_n_0 ),
        .I2(\ports_loop[7].in_port_flop_0 [7]),
        .I3(\ports_loop[0].in_port_flop_i_8_n_0 ),
        .I4(monitor_rxdata[7]),
        .I5(\ports_loop[2].in_port_flop_i_7_n_0 ),
        .O(\ports_loop[7].in_port_flop_i_5_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ports_loop[7].out_port_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(out_port[7]),
        .Q(out_port_reg[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFF100000002000)) 
    push_pop_lut
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[13]),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(1'b0),
        .I5(1'b1),
        .O5(pop_stack),
        .O6(push_stack));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    rdbk_crc_i_1
       (.I0(fecc_crcerror),
        .I1(rdbk_nsb_i_2_n_0),
        .I2(out_port_reg[7]),
        .I3(rdbk_crc),
        .O(\ports_loop[7].out_port_flop_0 ));
  LUT5 #(
    .INIT(32'hBA10BABA)) 
    rdbk_nsb_i_1
       (.I0(p_4_in[0]),
        .I1(p_4_in[1]),
        .I2(fecc_eccerrornotsingle),
        .I3(rdbk_nsb_i_2_n_0),
        .I4(out_port_reg[5]),
        .O(rdbk_nsb_reg));
  LUT6 #(
    .INIT(64'h7F7F7FFFFFFFFFFF)) 
    rdbk_nsb_i_2
       (.I0(port_id_reg[3]),
        .I1(port_id_reg[2]),
        .I2(port_id_reg[1]),
        .I3(cs),
        .I4(ws),
        .I5(port_id_reg[0]),
        .O(rdbk_nsb_i_2_n_0));
  LUT5 #(
    .INIT(32'hBB0FBB00)) 
    rdbk_sbe_i_1
       (.I0(rdbk_nsb_i_2_n_0),
        .I1(out_port_reg[6]),
        .I2(p_4_in[0]),
        .I3(p_4_in[1]),
        .I4(fecc_eccerrorsingle),
        .O(\ports_loop[6].out_port_flop_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    read_strobe_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(read_strobe_value),
        .Q(rs),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h4000000001000000)) 
    read_strobe_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[17]),
        .I3(strobe_type),
        .I4(t_state[1]),
        .I5(1'b1),
        .O5(read_strobe_value),
        .O6(write_strobe_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0080020000000000)) 
    regbank_type_lut
       (.I0(flag_enable_flop_0[12]),
        .I1(flag_enable_flop_0[13]),
        .I2(flag_enable_flop_0[14]),
        .I3(flag_enable_flop_0[15]),
        .I4(flag_enable_flop_0[16]),
        .I5(flag_enable_flop_0[17]),
        .O(regbank_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    register_enable_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(register_enable_value),
        .Q(register_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hC0CC0000A0AA0000)) 
    register_enable_lut
       (.I0(flag_enable_type),
        .I1(register_enable_type),
        .I2(flag_enable_flop_0[12]),
        .I3(flag_enable_flop_0[17]),
        .I4(t_state[1]),
        .I5(1'b1),
        .O5(flag_enable_value),
        .O6(register_enable_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h00013F3F0010F7CE)) 
    register_enable_type_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[15]),
        .I3(flag_enable_flop_0[16]),
        .I4(flag_enable_flop_0[17]),
        .I5(1'b1),
        .O5(flag_enable_type),
        .O6(register_enable_type));
  LUT3 #(
    .INIT(8'hBA)) 
    rom_cr_ne_err_i_1
       (.I0(rom_error),
        .I1(cgo_flag_i_2_n_0),
        .I2(out_port_reg[4]),
        .O(firmware0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(run_value),
        .Q(run),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_bank_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_bank),
        .Q(shadow_bank),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_carry_flag_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_carry_flag),
        .Q(shadow_carry_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_zero_flag_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(shadow_zero_value),
        .Q(shadow_zero_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shift_carry_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(shift_carry_value),
        .Q(shift_carry),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFAACCF0F0F0F0)) 
    shift_carry_lut
       (.I0(sx[0]),
        .I1(sx[7]),
        .I2(shadow_carry_flag),
        .I3(flag_enable_flop_0[3]),
        .I4(flag_enable_flop_0[7]),
        .I5(flag_enable_flop_0[16]),
        .O(shift_carry_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    spm_enable_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(spm_enable_value),
        .Q(spm_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h8000000020000000)) 
    spm_enable_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[17]),
        .I3(strobe_type),
        .I4(t_state[1]),
        .I5(1'b1),
        .O5(const_strobe_value),
        .O6(spm_enable_value));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sta_ptr[0]_i_1 
       (.I0(out_port_reg[0]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [0]),
        .I3(read_strobe_flop_0),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sta_ptr[10]_i_1 
       (.I0(out_port_reg[2]),
        .I1(\ports_loop[2].port_id_flop_0 ),
        .I2(\sta_ptr_reg[10]_0 [6]),
        .I3(\sta_ptr_reg[10]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000FFF4)) 
    \sta_ptr[11]_i_1 
       (.I0(\sta_ptr_reg[10] ),
        .I1(burst),
        .I2(read_strobe_flop_0),
        .I3(\ports_loop[2].port_id_flop_0 ),
        .I4(const_strobe_flop_0),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sta_ptr[11]_i_10 
       (.I0(\OUTRegistered.instruction_reg[0] [0]),
        .I1(\OUTRegistered.instruction_reg[0] [1]),
        .O(\sta_ptr[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \sta_ptr[11]_i_4 
       (.I0(const_strobe_flop_2),
        .I1(port_id[3]),
        .I2(port_id[2]),
        .I3(\sta_ptr[11]_i_10_n_0 ),
        .I4(rs),
        .I5(port_id[4]),
        .O(read_strobe_flop_0));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \sta_ptr[11]_i_5 
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[2]),
        .I4(port_id_reg[3]),
        .I5(port_id_reg[1]),
        .O(const_strobe_flop_0));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \sta_ptr[1]_i_1 
       (.I0(out_port_reg[1]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [1]),
        .I3(read_strobe_flop_0),
        .I4(\sta_ptr_reg[10]_0 [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8BB8B8B88B8B8B8B)) 
    \sta_ptr[2]_i_1 
       (.I0(out_port_reg[2]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [2]),
        .I3(\sta_ptr_reg[10]_0 [1]),
        .I4(\sta_ptr_reg[10]_0 [0]),
        .I5(read_strobe_flop_0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB88B8B8BB8B8B8B8)) 
    \sta_ptr[3]_i_1 
       (.I0(out_port_reg[3]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [3]),
        .I3(\sta_ptr_reg[3] ),
        .I4(read_strobe_flop_0),
        .I5(\sta_ptr_reg[10]_0 [2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sta_ptr[4]_i_1 
       (.I0(out_port_reg[4]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [4]),
        .I3(\sta_ptr_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sta_ptr[5]_i_1 
       (.I0(out_port_reg[5]),
        .I1(const_strobe_flop_0),
        .I2(\sta_ptr_reg[10]_0 [5]),
        .I3(\sta_ptr_reg[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFF00FFF4)) 
    \sta_ptr[7]_i_1 
       (.I0(\sta_ptr_reg[10] ),
        .I1(burst),
        .I2(read_strobe_flop_0),
        .I3(const_strobe_flop_0),
        .I4(\ports_loop[2].port_id_flop_0 ),
        .O(E[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_bit_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_bit),
        .Q(special_bit),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[0].lsb_stack.pointer_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_pointer_value[0]),
        .Q(stack_pointer[0]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  CARRY8 \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED [7:4],stack_pointer_carry}),
        .DI({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED [7:4],feed_pointer_value[3:0]}),
        .O({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED [7:5],stack_pointer_value}),
        .S({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED [7:5],half_pointer_value}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h001529AAAAAAAAAA)) 
    \stack_loop[0].lsb_stack.stack_pointer_lut 
       (.I0(stack_pointer[0]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .I5(1'b1),
        .O5(feed_pointer_value[0]),
        .O6(half_pointer_value[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[1].upper_stack.pointer_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_pointer_value[1]),
        .Q(stack_pointer[1]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[1].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[1]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .I5(1'b1),
        .O5(feed_pointer_value[1]),
        .O6(half_pointer_value[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[2].upper_stack.pointer_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_pointer_value[2]),
        .Q(stack_pointer[2]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[2].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[2]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .I5(1'b1),
        .O5(feed_pointer_value[2]),
        .O6(half_pointer_value[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[3].upper_stack.pointer_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_pointer_value[3]),
        .Q(stack_pointer[3]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[3].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[3]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .I5(1'b1),
        .O5(feed_pointer_value[3]),
        .O6(half_pointer_value[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[4].upper_stack.pointer_flop 
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_pointer_value[4]),
        .Q(stack_pointer[4]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[4].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[4]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .I5(1'b1),
        .O5(feed_pointer_value[4]),
        .O6(half_pointer_value[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_high
       (.ADDRA(stack_pointer),
        .ADDRB(stack_pointer),
        .ADDRC(stack_pointer),
        .ADDRD(stack_pointer),
        .DIA(address[5:4]),
        .DIB(address[7:6]),
        .DIC(address[9:8]),
        .DID(address[11:10]),
        .DOA(stack_memory[5:4]),
        .DOB(stack_memory[7:6]),
        .DOC(stack_memory[9:8]),
        .DOD(stack_memory[11:10]),
        .WCLK(icap_clk),
        .WE(t_state[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_low
       (.ADDRA(stack_pointer),
        .ADDRB(stack_pointer),
        .ADDRC(stack_pointer),
        .ADDRD(stack_pointer),
        .DIA({zero_flag,carry_flag}),
        .DIB({run,bank}),
        .DIC(address[1:0]),
        .DID(address[3:2]),
        .DOA({stack_zero_flag,stack_carry_flag}),
        .DOB({stack_bit,stack_bank}),
        .DOC(stack_memory[1:0]),
        .DOD(stack_memory[3:2]),
        .WCLK(icap_clk),
        .WE(t_state[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_zero_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(stack_zero_flag),
        .Q(shadow_zero_value),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \status_reg2[1]_i_1 
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[3]),
        .I4(port_id_reg[1]),
        .I5(port_id_reg[2]),
        .O(const_strobe_flop_1));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \status_reg[0]_i_1 
       (.I0(port_id_reg[1]),
        .I1(port_id_reg[0]),
        .I2(cs),
        .I3(ws),
        .I4(port_id_reg[2]),
        .I5(port_id_reg[3]),
        .O(\ports_loop[1].port_id_flop_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    storage_i_47
       (.I0(cs),
        .I1(ws),
        .I2(port_id_reg[0]),
        .I3(port_id_reg[2]),
        .I4(port_id_reg[3]),
        .I5(port_id_reg[1]),
        .O(const_strobe_flop_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sx_addr4_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(sx_addr4_value),
        .Q(sx_addr),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCC33FF0080808080)) 
    sx_addr4_value_lut
       (.I0(1'b0),
        .I1(t_state[2]),
        .I2(1'b0),
        .I3(bank),
        .I4(loadstar_type),
        .I5(1'b1),
        .O5(NLW_sx_addr4_value_lut_O5_UNCONNECTED),
        .O6(sx_addr4_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_sleep_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(sleep),
        .Q(sync_sleep),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state1_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(t_state_value[1]),
        .Q(t_state[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state2_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(t_state_value[2]),
        .Q(t_state[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0083000B00C4004C)) 
    t_state_lut
       (.I0(t_state[1]),
        .I1(t_state[2]),
        .I2(sync_sleep),
        .I3(internal_reset),
        .I4(special_bit),
        .I5(1'b1),
        .O5(t_state_value[1]),
        .O6(t_state_value[2]));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \timer_rdsel[1]_i_1 
       (.I0(port_id_reg[2]),
        .I1(port_id_reg[3]),
        .I2(port_id_reg[1]),
        .I3(port_id_reg[0]),
        .I4(cs),
        .I5(ws),
        .O(\ports_loop[2].port_id_flop_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    timer_snap_i_1
       (.I0(out_port_reg[7]),
        .I1(\ports_loop[2].port_id_flop_1 ),
        .O(timer_snap0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    upper_parity_lut
       (.I0(arith_logical_result[2]),
        .I1(arith_logical_result[3]),
        .I2(arith_logical_result[4]),
        .I3(arith_logical_result[5]),
        .I4(arith_logical_result[6]),
        .I5(arith_logical_result[7]),
        .O(upper_parity));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    upper_reg_banks
       (.ADDRA({bank,flag_enable_flop_0[7:4]}),
        .ADDRB({sx_addr,flag_enable_flop_0[11:8]}),
        .ADDRC({bank,flag_enable_flop_0[7:4]}),
        .ADDRD({sx_addr,flag_enable_flop_0[11:8]}),
        .DIA(alu_result[5:4]),
        .DIB(alu_result[5:4]),
        .DIC(alu_result[7:6]),
        .DID(alu_result[7:6]),
        .DOA(sy[5:4]),
        .DOB(sx[5:4]),
        .DOC(sy[7:6]),
        .DOD(sx[7:6]),
        .WCLK(icap_clk),
        .WE(register_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFBFF000000000000)) 
    upper_zero_lut
       (.I0(flag_enable_flop_0[14]),
        .I1(flag_enable_flop_0[15]),
        .I2(flag_enable_flop_0[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(upper_zero_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    use_zero_flag_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(use_zero_flag_value),
        .Q(use_zero_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hA280000000F000F0)) 
    use_zero_flag_lut
       (.I0(flag_enable_flop_0[13]),
        .I1(flag_enable_flop_0[14]),
        .I2(flag_enable_flop_0[15]),
        .I3(flag_enable_flop_0[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(strobe_type),
        .O6(use_zero_flag_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    write_strobe_flop
       (.C(icap_clk),
        .CE(1'b1),
        .D(write_strobe_value),
        .Q(ws),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    zero_flag_flop
       (.C(icap_clk),
        .CE(flag_enable),
        .D(zero_flag_value),
        .Q(zero_flag),
        .R(internal_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro
   (sync_out,
    aux_error_cr_es,
    icap_clk);
  output sync_out;
  input aux_error_cr_es;
  input icap_clk;

  wire aux_error_cr_es;
  wire icap_clk;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(aux_error_cr_es),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0
   (sync_out,
    aux_error_cr_ne,
    icap_clk);
  output sync_out;
  input aux_error_cr_ne;
  input icap_clk;

  wire aux_error_cr_ne;
  wire icap_clk;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(aux_error_cr_ne),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1
   (sync_out,
    aux_error_uc,
    icap_clk);
  output sync_out;
  input aux_error_uc;
  input icap_clk;

  wire aux_error_uc;
  wire icap_clk;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(aux_error_uc),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2
   (sync_out,
    icap_avail,
    icap_clk);
  output sync_out;
  input icap_avail;
  input icap_clk;

  wire icap_avail;
  wire icap_clk;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_avail),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3
   (next_request0,
    sync_out,
    next_request_reg,
    cap_gnt,
    icap_clk);
  output next_request0;
  output sync_out;
  input next_request_reg;
  input cap_gnt;
  input icap_clk;

  wire cap_gnt;
  wire icap_clk;
  wire next_request0;
  wire next_request_reg;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  LUT2 #(
    .INIT(4'h1)) 
    next_request_i_1
       (.I0(sync_out),
        .I1(next_request_reg),
        .O(next_request0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(cap_gnt),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4
   (sync_out,
    icap_prdone,
    icap_clk);
  output sync_out;
  input icap_prdone;
  input icap_clk;

  wire icap_clk;
  wire icap_prdone;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_prdone),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5
   (sync_out,
    icap_prerror,
    icap_clk);
  output sync_out;
  input icap_prerror;
  input icap_clk;

  wire icap_clk;
  wire icap_prerror;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(icap_prerror),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sem_ultra_v3_1_9_synchro" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6
   (sync_out,
    cap_rel,
    icap_clk);
  output sync_out;
  input cap_rel;
  input icap_clk;

  wire cap_rel;
  wire icap_clk;
  wire q_sync_a;
  wire q_sync_b;
  wire q_sync_c;
  wire q_sync_d;
  wire q_sync_e;
  wire q_sync_f;
  wire sync_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_a
       (.C(icap_clk),
        .CE(1'b1),
        .D(cap_rel),
        .Q(q_sync_a),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_b
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_a),
        .Q(q_sync_b),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_c
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_b),
        .Q(q_sync_c),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_d
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_c),
        .Q(q_sync_d),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_e
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_d),
        .Q(q_sync_e),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_f
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_e),
        .Q(q_sync_f),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_g
       (.C(icap_clk),
        .CE(1'b1),
        .D(q_sync_f),
        .Q(sync_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer
   (Q,
    icap_clk,
    SR,
    timer_snap0,
    E,
    D);
  output [7:0]Q;
  input icap_clk;
  input [0:0]SR;
  input timer_snap0;
  input [0:0]E;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire icap_clk;
  wire [5:0]prescaler_current;
  wire [6:0]prescaler_next;
  wire \timer_byte[0]_i_1_n_0 ;
  wire \timer_byte[1]_i_1_n_0 ;
  wire \timer_byte[2]_i_1_n_0 ;
  wire \timer_byte[3]_i_1_n_0 ;
  wire \timer_byte[4]_i_1_n_0 ;
  wire \timer_byte[5]_i_1_n_0 ;
  wire \timer_byte[6]_i_1_n_0 ;
  wire \timer_byte[7]_i_1_n_0 ;
  wire timer_ena;
  wire [1:0]timer_rdsel;
  wire timer_snap;
  wire timer_snap0;
  wire \timer_snapshot_reg_n_0_[16] ;
  wire \timer_snapshot_reg_n_0_[17] ;
  wire \timer_snapshot_reg_n_0_[18] ;
  wire \timer_snapshot_reg_n_0_[19] ;
  wire \timer_snapshot_reg_n_0_[20] ;
  wire \timer_snapshot_reg_n_0_[21] ;
  wire \timer_snapshot_reg_n_0_[22] ;
  wire \timer_snapshot_reg_n_0_[23] ;
  wire \timer_snapshot_reg_n_0_[24] ;
  wire \timer_snapshot_reg_n_0_[25] ;
  wire \timer_snapshot_reg_n_0_[26] ;
  wire \timer_snapshot_reg_n_0_[27] ;
  wire \timer_snapshot_reg_n_0_[28] ;
  wire \timer_snapshot_reg_n_0_[29] ;
  wire \timer_snapshot_reg_n_0_[30] ;
  wire \timer_snapshot_reg_n_0_[31] ;
  wire \timer_snapshot_reg_n_0_[32] ;
  wire \timer_snapshot_reg_n_0_[33] ;
  wire \timer_snapshot_reg_n_0_[34] ;
  wire \timer_snapshot_reg_n_0_[35] ;
  wire \timer_snapshot_reg_n_0_[36] ;
  wire \timer_snapshot_reg_n_0_[37] ;
  wire \timer_snapshot_reg_n_0_[38] ;
  wire \timer_snapshot_reg_n_0_[39] ;
  wire \timer_snapshot_reg_n_0_[40] ;
  wire \timer_snapshot_reg_n_0_[41] ;
  wire \timer_snapshot_reg_n_0_[42] ;
  wire \timer_snapshot_reg_n_0_[43] ;
  wire \timer_snapshot_reg_n_0_[44] ;
  wire \timer_snapshot_reg_n_0_[45] ;
  wire \timer_snapshot_reg_n_0_[46] ;
  wire \timer_snapshot_reg_n_0_[47] ;
  wire [47:16]timer_val;

  LUT1 #(
    .INIT(2'h1)) 
    \prescaler_current[0]_i_1 
       (.I0(prescaler_current[0]),
        .O(prescaler_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prescaler_current[1]_i_1 
       (.I0(prescaler_current[0]),
        .I1(prescaler_current[1]),
        .O(prescaler_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \prescaler_current[2]_i_1 
       (.I0(prescaler_current[0]),
        .I1(prescaler_current[1]),
        .I2(prescaler_current[2]),
        .O(prescaler_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \prescaler_current[3]_i_1 
       (.I0(prescaler_current[1]),
        .I1(prescaler_current[0]),
        .I2(prescaler_current[2]),
        .I3(prescaler_current[3]),
        .O(prescaler_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \prescaler_current[4]_i_1 
       (.I0(prescaler_current[2]),
        .I1(prescaler_current[0]),
        .I2(prescaler_current[1]),
        .I3(prescaler_current[3]),
        .I4(prescaler_current[4]),
        .O(prescaler_next[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \prescaler_current[5]_i_1 
       (.I0(prescaler_current[3]),
        .I1(prescaler_current[1]),
        .I2(prescaler_current[0]),
        .I3(prescaler_current[2]),
        .I4(prescaler_current[4]),
        .I5(prescaler_current[5]),
        .O(prescaler_next[5]));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[0]),
        .Q(prescaler_current[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[1]),
        .Q(prescaler_current[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[2]),
        .Q(prescaler_current[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[3]),
        .Q(prescaler_current[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[4]),
        .Q(prescaler_current[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_current_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[5]),
        .Q(prescaler_current[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[0]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[24] ),
        .I1(\timer_snapshot_reg_n_0_[16] ),
        .I2(\timer_snapshot_reg_n_0_[40] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[32] ),
        .O(\timer_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[1]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[25] ),
        .I1(\timer_snapshot_reg_n_0_[17] ),
        .I2(\timer_snapshot_reg_n_0_[41] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[33] ),
        .O(\timer_byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[2]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[26] ),
        .I1(\timer_snapshot_reg_n_0_[18] ),
        .I2(\timer_snapshot_reg_n_0_[42] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[34] ),
        .O(\timer_byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[3]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[27] ),
        .I1(\timer_snapshot_reg_n_0_[19] ),
        .I2(\timer_snapshot_reg_n_0_[43] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[35] ),
        .O(\timer_byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[4]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[28] ),
        .I1(\timer_snapshot_reg_n_0_[20] ),
        .I2(\timer_snapshot_reg_n_0_[44] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[36] ),
        .O(\timer_byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[5]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[29] ),
        .I1(\timer_snapshot_reg_n_0_[21] ),
        .I2(\timer_snapshot_reg_n_0_[45] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[37] ),
        .O(\timer_byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[6]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[30] ),
        .I1(\timer_snapshot_reg_n_0_[22] ),
        .I2(\timer_snapshot_reg_n_0_[46] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[38] ),
        .O(\timer_byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \timer_byte[7]_i_1 
       (.I0(\timer_snapshot_reg_n_0_[31] ),
        .I1(\timer_snapshot_reg_n_0_[23] ),
        .I2(\timer_snapshot_reg_n_0_[47] ),
        .I3(timer_rdsel[1]),
        .I4(timer_rdsel[0]),
        .I5(\timer_snapshot_reg_n_0_[39] ),
        .O(\timer_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[0] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[1] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[2] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[3] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[4] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[5] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[6] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_byte_reg[7] 
       (.C(icap_clk),
        .CE(1'b1),
        .D(\timer_byte[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    timer_ena_i_1
       (.I0(prescaler_current[5]),
        .I1(prescaler_current[3]),
        .I2(prescaler_current[1]),
        .I3(prescaler_current[0]),
        .I4(prescaler_current[2]),
        .I5(prescaler_current[4]),
        .O(prescaler_next[6]));
  FDRE #(
    .INIT(1'b0)) 
    timer_ena_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(prescaler_next[6]),
        .Q(timer_ena),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_rdsel_reg[0] 
       (.C(icap_clk),
        .CE(E),
        .D(D[0]),
        .Q(timer_rdsel[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_rdsel_reg[1] 
       (.C(icap_clk),
        .CE(E),
        .D(D[1]),
        .Q(timer_rdsel[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    timer_snap_reg
       (.C(icap_clk),
        .CE(1'b1),
        .D(timer_snap0),
        .Q(timer_snap),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[16] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[16]),
        .Q(\timer_snapshot_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[17] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[17]),
        .Q(\timer_snapshot_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[18] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[18]),
        .Q(\timer_snapshot_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[19] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[19]),
        .Q(\timer_snapshot_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[20] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[20]),
        .Q(\timer_snapshot_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[21] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[21]),
        .Q(\timer_snapshot_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[22] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[22]),
        .Q(\timer_snapshot_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[23] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[23]),
        .Q(\timer_snapshot_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[24] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[24]),
        .Q(\timer_snapshot_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[25] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[25]),
        .Q(\timer_snapshot_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[26] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[26]),
        .Q(\timer_snapshot_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[27] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[27]),
        .Q(\timer_snapshot_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[28] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[28]),
        .Q(\timer_snapshot_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[29] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[29]),
        .Q(\timer_snapshot_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[30] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[30]),
        .Q(\timer_snapshot_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[31] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[31]),
        .Q(\timer_snapshot_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[32] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[32]),
        .Q(\timer_snapshot_reg_n_0_[32] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[33] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[33]),
        .Q(\timer_snapshot_reg_n_0_[33] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[34] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[34]),
        .Q(\timer_snapshot_reg_n_0_[34] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[35] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[35]),
        .Q(\timer_snapshot_reg_n_0_[35] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[36] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[36]),
        .Q(\timer_snapshot_reg_n_0_[36] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[37] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[37]),
        .Q(\timer_snapshot_reg_n_0_[37] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[38] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[38]),
        .Q(\timer_snapshot_reg_n_0_[38] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[39] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[39]),
        .Q(\timer_snapshot_reg_n_0_[39] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[40] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[40]),
        .Q(\timer_snapshot_reg_n_0_[40] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[41] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[41]),
        .Q(\timer_snapshot_reg_n_0_[41] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[42] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[42]),
        .Q(\timer_snapshot_reg_n_0_[42] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[43] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[43]),
        .Q(\timer_snapshot_reg_n_0_[43] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[44] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[44]),
        .Q(\timer_snapshot_reg_n_0_[44] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[45] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[45]),
        .Q(\timer_snapshot_reg_n_0_[45] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[46] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[46]),
        .Q(\timer_snapshot_reg_n_0_[46] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \timer_snapshot_reg[47] 
       (.C(icap_clk),
        .CE(timer_snap),
        .D(timer_val[47]),
        .Q(\timer_snapshot_reg_n_0_[47] ),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr timer_timer_ctr
       (.CEP(timer_ena),
        .D(timer_val),
        .icap_clk(icap_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr
   (D,
    CEP,
    icap_clk);
  output [31:0]D;
  input CEP;
  input icap_clk;

  wire CEP;
  wire [31:0]D;
  wire icap_clk;
  wire [15:0]timer_val;
  wire NLW_DSP48E2_inst_CARRYCASCOUT_UNCONNECTED;
  wire NLW_DSP48E2_inst_MULTSIGNOUT_UNCONNECTED;
  wire NLW_DSP48E2_inst_OVERFLOW_UNCONNECTED;
  wire NLW_DSP48E2_inst_PATTERNBDETECT_UNCONNECTED;
  wire NLW_DSP48E2_inst_PATTERNDETECT_UNCONNECTED;
  wire NLW_DSP48E2_inst_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_DSP48E2_inst_ACOUT_UNCONNECTED;
  wire [17:0]NLW_DSP48E2_inst_BCOUT_UNCONNECTED;
  wire [3:0]NLW_DSP48E2_inst_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_DSP48E2_inst_PCOUT_UNCONNECTED;
  wire [7:0]NLW_DSP48E2_inst_XOROUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(0),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(9'b000000000),
    .IS_RSTALLCARRYIN_INVERTED(1'b0),
    .IS_RSTALUMODE_INVERTED(1'b0),
    .IS_RSTA_INVERTED(1'b0),
    .IS_RSTB_INVERTED(1'b0),
    .IS_RSTCTRL_INVERTED(1'b0),
    .IS_RSTC_INVERTED(1'b0),
    .IS_RSTD_INVERTED(1'b0),
    .IS_RSTINMODE_INVERTED(1'b0),
    .IS_RSTM_INVERTED(1'b0),
    .IS_RSTP_INVERTED(1'b0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    DSP48E2_inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_DSP48E2_inst_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_DSP48E2_inst_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_DSP48E2_inst_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b1),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_DSP48E2_inst_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(icap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_DSP48E2_inst_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OVERFLOW(NLW_DSP48E2_inst_OVERFLOW_UNCONNECTED),
        .P({D,timer_val}),
        .PATTERNBDETECT(NLW_DSP48E2_inst_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_DSP48E2_inst_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_DSP48E2_inst_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_DSP48E2_inst_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_DSP48E2_inst_XOROUT_UNCONNECTED[7:0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
