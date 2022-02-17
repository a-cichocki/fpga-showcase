// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.


// IP VLNV: cbkpan:hipero:semicap_spihelper:1.0
// IP Revision: 4

(* X_CORE_INFO = "sem_ultra_0_spi,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "semicap_semicap_spihelper_0_0,sem_ultra_0_spi,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module semicap_semicap_spihelper_0_0 (
  icap_clk,
  spi_c,
  spi_d,
  spi_s_n,
  spi_q,
  fetch_txdata,
  fetch_txwrite,
  fetch_txfull,
  fetch_rxdata,
  fetch_rxread,
  fetch_rxempty
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME icap_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN semicap_clk_100MHz, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 icap_clk CLK" *)
input wire icap_clk;
output wire spi_c;
output wire spi_d;
output wire spi_s_n;
input wire spi_q;
input wire [7 : 0] fetch_txdata;
input wire fetch_txwrite;
output wire fetch_txfull;
output wire [7 : 0] fetch_rxdata;
input wire fetch_rxread;
output wire fetch_rxempty;

  sem_ultra_0_spi inst (
    .icap_clk(icap_clk),
    .spi_c(spi_c),
    .spi_d(spi_d),
    .spi_s_n(spi_s_n),
    .spi_q(spi_q),
    .fetch_txdata(fetch_txdata),
    .fetch_txwrite(fetch_txwrite),
    .fetch_txfull(fetch_txfull),
    .fetch_rxdata(fetch_rxdata),
    .fetch_rxread(fetch_rxread),
    .fetch_rxempty(fetch_rxempty)
  );
endmodule
