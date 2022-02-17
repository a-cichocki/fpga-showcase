-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 23 19:19:22 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sem_ultra_0_0_stub.vhdl
-- Design      : design_1_sem_ultra_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    icap_clk : in STD_LOGIC;
    status_heartbeat : out STD_LOGIC;
    status_initialization : out STD_LOGIC;
    status_observation : out STD_LOGIC;
    status_correction : out STD_LOGIC;
    status_classification : out STD_LOGIC;
    status_injection : out STD_LOGIC;
    status_diagnostic_scan : out STD_LOGIC;
    status_detect_only : out STD_LOGIC;
    status_essential : out STD_LOGIC;
    status_uncorrectable : out STD_LOGIC;
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_txwrite : out STD_LOGIC;
    monitor_txfull : in STD_LOGIC;
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_rxread : out STD_LOGIC;
    monitor_rxempty : in STD_LOGIC;
    command_strobe : in STD_LOGIC;
    command_busy : out STD_LOGIC;
    command_code : in STD_LOGIC_VECTOR ( 39 downto 0 );
    cap_rel : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_req : out STD_LOGIC;
    aux_error_cr_ne : in STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    aux_error_uc : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "icap_clk,status_heartbeat,status_initialization,status_observation,status_correction,status_classification,status_injection,status_diagnostic_scan,status_detect_only,status_essential,status_uncorrectable,monitor_txdata[7:0],monitor_txwrite,monitor_txfull,monitor_rxdata[7:0],monitor_rxread,monitor_rxempty,command_strobe,command_busy,command_code[39:0],cap_rel,cap_gnt,cap_req,aux_error_cr_ne,aux_error_cr_es,aux_error_uc";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sem_ultra_v3_1_9,Vivado 2018.3";
begin
end;
