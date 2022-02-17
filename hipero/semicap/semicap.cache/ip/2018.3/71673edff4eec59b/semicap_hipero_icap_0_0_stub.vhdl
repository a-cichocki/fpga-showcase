-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Apr 24 11:18:43 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_icap_0_0_stub.vhdl
-- Design      : semicap_hipero_icap_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    icap_clk : in STD_LOGIC;
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_csib : in STD_LOGIC;
    icap_rdwrb : in STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_prerror : out STD_LOGIC;
    icap_prdone : out STD_LOGIC;
    icap_avail : out STD_LOGIC;
    fecc_eccerrornotsingle : out STD_LOGIC;
    fecc_eccerrorsingle : out STD_LOGIC;
    fecc_endofframe : out STD_LOGIC;
    fecc_endofscan : out STD_LOGIC;
    fecc_crcerror : out STD_LOGIC;
    fecc_far : out STD_LOGIC_VECTOR ( 25 downto 0 );
    fecc_farsel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "icap_clk,icap_o[31:0],icap_csib,icap_rdwrb,icap_i[31:0],icap_prerror,icap_prdone,icap_avail,fecc_eccerrornotsingle,fecc_eccerrorsingle,fecc_endofframe,fecc_endofscan,fecc_crcerror,fecc_far[25:0],fecc_farsel[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hipero_icap,Vivado 2018.3";
begin
end;
