/////////////////////////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /
// \   \   \/    Core:          sem_ultra
//  \   \        Module:        semicap_hipero_sem_0
//  /   /        Filename:      semicap_hipero_sem_0.v
// /___/   /\    Purpose:       Example top level for physical implementation.
// \   \  /  \
//  \___\/\___\
//
/////////////////////////////////////////////////////////////////////////////
//
// (c) Copyright 2014-2019 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
//
/////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

(* CORE_GENERATION_INFO = "semicap_hipero_sem_0,sem_ultra_v3_1_11,{x_ipProduct=Vivado 2019.1.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sem_ultra,x_ipVersion=3.1,x_ipCoreRevision=11,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,c_arch=0,c_family=kintexu,c_feature_set=3,c_has_error_injection=1,c_extra_checks=4,c_helper_block_loc=1,c_config_prim_loc=1,c_command_code_width=40,c_fecc_far_width=26,c_vusp_slr=0,b_debug=0,b_cosim=0,b_dfset=0}" *)
(* X_CORE_INFO = "sem_ultra_v3_1_11,Vivado 2019.1.1" *)

module  semicap_hipero_sem_0 (
  // Status Interface
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
  // Fetch Interface
  fetch_txdata,
  fetch_txwrite,
  fetch_txfull,
  fetch_rxdata,
  fetch_rxread,
  fetch_rxempty,
  fetch_tbladdr,
  //Monitor Interface
  monitor_txdata,
  monitor_txwrite,
  monitor_txfull,
  monitor_rxdata,
  monitor_rxread,
  monitor_rxempty,
  // Command Interface
  command_strobe,
  command_busy,
  command_code,
  //ICAP Interface
  icap_clk,
  icap_o,
  icap_csib,
  icap_rdwrb,
  icap_i,
  icap_prerror,
  icap_prdone,
  icap_avail,
  // ICAP Arbitration Interface
  cap_rel,
  cap_gnt,
  cap_req,
  // FRAME_ECC Interface
  fecc_eccerrornotsingle,
  fecc_eccerrorsingle,
  fecc_endofframe,
  fecc_endofscan,
  fecc_crcerror,
  fecc_far,
  fecc_farsel,
  // Auxiliary Interface
  aux_error_cr_ne,
  aux_error_cr_es,
  aux_error_uc

);

output wire status_heartbeat;
output wire status_initialization;
output wire status_observation;
output wire status_correction;
output wire status_classification;
output wire status_injection;
output wire status_diagnostic_scan;
output wire status_detect_only;  
output wire status_essential;
output wire status_uncorrectable;

output wire  [7:0] fetch_txdata;
output wire        fetch_txwrite;
input  wire        fetch_txfull;
input  wire  [7:0] fetch_rxdata;
output wire        fetch_rxread;
input  wire        fetch_rxempty;
input  wire [31:0] fetch_tbladdr;

output wire  [7:0] monitor_txdata;
output wire        monitor_txwrite;
input  wire        monitor_txfull;
input  wire  [7:0] monitor_rxdata;
output wire        monitor_rxread;
input  wire        monitor_rxempty;

input wire command_strobe;
output wire command_busy;
input wire [39 : 0] command_code;

input  wire        icap_clk;
input  wire [31:0] icap_o;
output wire        icap_csib;
output wire        icap_rdwrb;
output wire [31:0] icap_i;
input  wire        icap_prerror;
input  wire        icap_prdone;
input  wire        icap_avail;

input wire cap_rel;
input wire cap_gnt;
output wire cap_req;

input  wire        fecc_eccerrornotsingle;
input  wire        fecc_eccerrorsingle;
input  wire        fecc_endofframe;
input  wire        fecc_endofscan;
input  wire        fecc_crcerror;
input  wire [25:0] fecc_far;
output wire  [1:0] fecc_farsel;

input wire aux_error_cr_ne;
input wire aux_error_cr_es;
input wire aux_error_uc;

    // Instantiate SEM block level
   sem_ultra_v3_1_11
  #(
    .c_family("kintexu"),
    .c_feature_set(3),
    .c_has_error_injection(1),
    .c_helper_block_loc(1),
    .c_config_prim_loc(1),   
    .c_command_code_width(40),
    .c_fecc_far_width(26)   )
   inst (
    .slr0_status_heartbeat(),
    .slr1_status_heartbeat(),
    .slr2_status_heartbeat(),
    .slr3_status_heartbeat(),
    .status_heartbeat(status_heartbeat),
    .status_initialization(status_initialization),
    .status_observation(status_observation),
    .status_correction(status_correction),
    .status_classification(status_classification),
    .status_injection(status_injection),
    .status_diagnostic_scan(status_diagnostic_scan),
    .status_detect_only(status_detect_only),  
    .status_essential(status_essential),
    .status_uncorrectable(status_uncorrectable),
    .fetch_txdata(fetch_txdata),
    .fetch_txwrite(fetch_txwrite),
    .fetch_txfull(fetch_txfull),
    .fetch_rxdata(fetch_rxdata),
    .fetch_rxread(fetch_rxread),
    .fetch_rxempty(fetch_rxempty),
    .fetch_tbladdr(fetch_tbladdr),
    .monitor_txdata(monitor_txdata),
    .monitor_txwrite(monitor_txwrite),
    .monitor_txfull(monitor_txfull),
    .monitor_rxdata(monitor_rxdata),
    .monitor_rxread(monitor_rxread),
    .monitor_rxempty(monitor_rxempty),
    .command_strobe(command_strobe),
    .command_busy(command_busy),
    .command_code(command_code),
    .icap_clk(icap_clk),
    .icap_o(icap_o),
    .icap_csib(icap_csib),
    .icap_rdwrb(icap_rdwrb),
    .icap_i(icap_i),
    .icap_prerror(icap_prerror),
    .icap_prdone(icap_prdone),
    .icap_avail(icap_avail),
    .cap_rel(cap_rel),
    .cap_gnt(cap_gnt),
    .cap_req(cap_req),
    .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
    .fecc_eccerrorsingle(fecc_eccerrorsingle),
    .fecc_endofframe(fecc_endofframe),
    .fecc_endofscan(fecc_endofscan),
    .fecc_crcerror(fecc_crcerror),
    .fecc_far(fecc_far),
    .fecc_farsel(fecc_farsel),
    .slr0_fecc_eccerrornotsingle(1'B0),
    .slr0_fecc_eccerrorsingle(1'B0),
    .slr0_fecc_endofframe(1'B0),
    .slr0_fecc_endofscan(1'B0),
    .slr0_fecc_crcerror(1'B0),
    .slr0_fecc_far(27'H0000000),
    .slr0_fecc_farsel(),
    .slr1_fecc_eccerrornotsingle(1'B0),
    .slr1_fecc_eccerrorsingle(1'B0),
    .slr1_fecc_endofframe(1'B0),
    .slr1_fecc_endofscan(1'B0),
    .slr1_fecc_crcerror(1'B0),
    .slr1_fecc_far(27'H0000000),
    .slr1_fecc_farsel(),
    .slr2_fecc_eccerrornotsingle(1'B0),
    .slr2_fecc_eccerrorsingle(1'B0),
    .slr2_fecc_endofframe(1'B0),
    .slr2_fecc_endofscan(1'B0),
    .slr2_fecc_crcerror(1'B0),
    .slr2_fecc_far(27'H0000000),
    .slr2_fecc_farsel(),
    .slr3_fecc_eccerrornotsingle(1'B0),
    .slr3_fecc_eccerrorsingle(1'B0),
    .slr3_fecc_endofframe(1'B0),
    .slr3_fecc_endofscan(1'B0),
    .slr3_fecc_crcerror(1'B0),
    .slr3_fecc_far(27'H0000000),
    .slr3_fecc_farsel(),
    .aux_error_cr_ne(aux_error_cr_ne),
    .aux_error_cr_es(aux_error_cr_es),
    .aux_error_uc(aux_error_uc)
  );
endmodule
