-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Apr 24 11:18:45 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_semicap_engine_0_0_stub.vhdl
-- Design      : semicap_semicap_engine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    hw_icap_avail : out STD_LOGIC;
    hw_icap_csib : in STD_LOGIC;
    hw_icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hw_icap_i : out STD_LOGIC;
    hw_icap_rdwr : in STD_LOGIC;
    hw_cap_gnt : out STD_LOGIC;
    hw_cap_rel : out STD_LOGIC;
    hw_cap_req : in STD_LOGIC;
    hw_eos_in : out STD_LOGIC;
    hw_ip2intc_irpt : in STD_LOGIC;
    sem_icap_prerror : out STD_LOGIC;
    sem_icap_prdone : out STD_LOGIC;
    sem_icap_avail : out STD_LOGIC;
    sem_icap_csib : in STD_LOGIC;
    sem_icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sem_icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sem_icap_rdwr : in STD_LOGIC;
    sem_cap_gnt : out STD_LOGIC;
    sem_cap_rel : out STD_LOGIC;
    sem_cap_req : in STD_LOGIC;
    sem_monitor_txfull : out STD_LOGIC;
    sem_monitor_rxdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sem_monitor_rxempty : out STD_LOGIC;
    sem_monitor_txdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sem_monitor_txwrite : in STD_LOGIC;
    sem_monitor_rxread : in STD_LOGIC;
    sem_command_strobe : out STD_LOGIC;
    sem_command_code : out STD_LOGIC_VECTOR ( 39 downto 0 );
    sem_command_busy : in STD_LOGIC;
    sem_status_heartbeat : in STD_LOGIC;
    sem_status_initialization : in STD_LOGIC;
    sem_status_observation : in STD_LOGIC;
    sem_status_correction : in STD_LOGIC;
    sem_status_classification : in STD_LOGIC;
    sem_status_injection : in STD_LOGIC;
    sem_status_essential : in STD_LOGIC;
    sem_status_uncorrectable : in STD_LOGIC;
    sem_status_diagnostic_scan : in STD_LOGIC;
    sem_status_detect_only : in STD_LOGIC;
    sem_aux_error_cr_ne : out STD_LOGIC;
    sem_aux_error_cr_es : out STD_LOGIC;
    sem_aux_error_uc : out STD_LOGIC;
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_prerror : in STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    icap_clk : in STD_LOGIC;
    extirq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hw_icap_avail,hw_icap_csib,hw_icap_o[31:0],hw_icap_i,hw_icap_rdwr,hw_cap_gnt,hw_cap_rel,hw_cap_req,hw_eos_in,hw_ip2intc_irpt,sem_icap_prerror,sem_icap_prdone,sem_icap_avail,sem_icap_csib,sem_icap_o[31:0],sem_icap_i[31:0],sem_icap_rdwr,sem_cap_gnt,sem_cap_rel,sem_cap_req,sem_monitor_txfull,sem_monitor_rxdata[7:0],sem_monitor_rxempty,sem_monitor_txdata[7:0],sem_monitor_txwrite,sem_monitor_rxread,sem_command_strobe,sem_command_code[39:0],sem_command_busy,sem_status_heartbeat,sem_status_initialization,sem_status_observation,sem_status_correction,sem_status_classification,sem_status_injection,sem_status_essential,sem_status_uncorrectable,sem_status_diagnostic_scan,sem_status_detect_only,sem_aux_error_cr_ne,sem_aux_error_cr_es,sem_aux_error_uc,icap_csib,icap_rdwrb,icap_i[31:0],icap_o[31:0],icap_prerror,icap_prdone,icap_avail,icap_clk,extirq,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "semicap_engine_v1_0,Vivado 2018.3";
begin
end;
