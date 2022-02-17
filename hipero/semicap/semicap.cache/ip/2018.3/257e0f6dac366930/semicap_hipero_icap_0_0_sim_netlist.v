// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May  9 16:02:42 2019
// Host        : dt-205 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_icap_0_0_sim_netlist.v
// Design      : semicap_hipero_icap_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap
   (fecc_crcerror,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle,
    fecc_endofframe,
    fecc_endofscan,
    fecc_far,
    icap_avail,
    icap_prdone,
    icap_prerror,
    icap_o,
    icap_clk,
    fecc_farsel,
    icap_csib,
    icap_rdwrb,
    icap_i);
  output fecc_crcerror;
  output fecc_eccerrornotsingle;
  output fecc_eccerrorsingle;
  output fecc_endofframe;
  output fecc_endofscan;
  output [25:0]fecc_far;
  output icap_avail;
  output icap_prdone;
  output icap_prerror;
  output [31:0]icap_o;
  input icap_clk;
  input [1:0]fecc_farsel;
  input icap_csib;
  input icap_rdwrb;
  input [31:0]icap_i;

  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofframe;
  wire fecc_endofscan;
  wire [25:0]fecc_far;
  wire [1:0]fecc_farsel;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;
  wire NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  FRAME_ECCE3 cfg_frame_ecce3
       (.CRCERROR(fecc_crcerror),
        .ECCERRORNOTSINGLE(fecc_eccerrornotsingle),
        .ECCERRORSINGLE(fecc_eccerrorsingle),
        .ENDOFFRAME(fecc_endofframe),
        .ENDOFSCAN(fecc_endofscan),
        .FAR(fecc_far),
        .FARSEL(fecc_farsel),
        .ICAPBOTCLK(NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED),
        .ICAPTOPCLK(icap_clk));
  (* box_type = "PRIMITIVE" *) 
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

(* CHECK_LICENSE_TYPE = "semicap_hipero_icap_0_0,hipero_icap,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "hipero_icap,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (icap_avail,
    icap_prdone,
    icap_prerror,
    icap_o,
    fecc_crcerror,
    fecc_eccerrornotsingle,
    fecc_eccerrorsingle,
    fecc_endofframe,
    fecc_endofscan,
    fecc_far,
    icap_clk,
    icap_csib,
    icap_rdwrb,
    icap_i,
    fecc_farsel);
  output icap_avail;
  output icap_prdone;
  output icap_prerror;
  output [31:0]icap_o;
  output fecc_crcerror;
  output fecc_eccerrornotsingle;
  output fecc_eccerrorsingle;
  output fecc_endofframe;
  output fecc_endofscan;
  output [25:0]fecc_far;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 icap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME icap_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN semicap_clk_100MHz, INSERT_VIP 0" *) input icap_clk;
  input icap_csib;
  input icap_rdwrb;
  input [31:0]icap_i;
  input [1:0]fecc_farsel;

  wire fecc_crcerror;
  wire fecc_eccerrornotsingle;
  wire fecc_eccerrorsingle;
  wire fecc_endofframe;
  wire fecc_endofscan;
  wire [25:0]fecc_far;
  wire [1:0]fecc_farsel;
  wire icap_avail;
  wire icap_clk;
  wire icap_csib;
  wire [31:0]icap_i;
  wire [31:0]icap_o;
  wire icap_prdone;
  wire icap_prerror;
  wire icap_rdwrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap U0
       (.fecc_crcerror(fecc_crcerror),
        .fecc_eccerrornotsingle(fecc_eccerrornotsingle),
        .fecc_eccerrorsingle(fecc_eccerrorsingle),
        .fecc_endofframe(fecc_endofframe),
        .fecc_endofscan(fecc_endofscan),
        .fecc_far(fecc_far),
        .fecc_farsel(fecc_farsel),
        .icap_avail(icap_avail),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_prdone(icap_prdone),
        .icap_prerror(icap_prerror),
        .icap_rdwrb(icap_rdwrb));
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
