-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Apr 24 11:18:43 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_icap_0_0_sim_netlist.vhdl
-- Design      : semicap_hipero_icap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap is
  port (
    icap_avail : out STD_LOGIC;
    icap_prdone : out STD_LOGIC;
    icap_prerror : out STD_LOGIC;
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fecc_crcerror : out STD_LOGIC;
    fecc_eccerrornotsingle : out STD_LOGIC;
    fecc_eccerrorsingle : out STD_LOGIC;
    fecc_endofframe : out STD_LOGIC;
    fecc_endofscan : out STD_LOGIC;
    fecc_far : out STD_LOGIC_VECTOR ( 25 downto 0 );
    icap_clk : in STD_LOGIC;
    icap_csib : in STD_LOGIC;
    icap_rdwrb : in STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fecc_farsel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap is
  signal NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of cfg_frame_ecce3 : label is "PRIMITIVE";
  attribute BOX_TYPE of cfg_icape3 : label is "PRIMITIVE";
begin
cfg_frame_ecce3: unisim.vcomponents.FRAME_ECCE3
     port map (
      CRCERROR => fecc_crcerror,
      ECCERRORNOTSINGLE => fecc_eccerrornotsingle,
      ECCERRORSINGLE => fecc_eccerrorsingle,
      ENDOFFRAME => fecc_endofframe,
      ENDOFSCAN => fecc_endofscan,
      FAR(25 downto 0) => fecc_far(25 downto 0),
      FARSEL(1 downto 0) => fecc_farsel(1 downto 0),
      ICAPBOTCLK => NLW_cfg_frame_ecce3_ICAPBOTCLK_UNCONNECTED,
      ICAPTOPCLK => icap_clk
    );
cfg_icape3: unisim.vcomponents.ICAPE3
    generic map(
      DEVICE_ID => X"FFFFFFFF",
      ICAP_AUTO_SWITCH => "DISABLE",
      SIM_CFG_FILE_NAME => "NONE"
    )
        port map (
      AVAIL => icap_avail,
      CLK => icap_clk,
      CSIB => icap_csib,
      I(31 downto 0) => icap_i(31 downto 0),
      O(31 downto 0) => icap_o(31 downto 0),
      PRDONE => icap_prdone,
      PRERROR => icap_prerror,
      RDWRB => icap_rdwrb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "semicap_hipero_icap_0_0,hipero_icap,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hipero_icap,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of icap_clk : signal is "xilinx.com:signal:clock:1.0 icap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of icap_clk : signal is "XIL_INTERFACENAME icap_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN semicap_clk_100MHz, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hipero_icap
     port map (
      fecc_crcerror => fecc_crcerror,
      fecc_eccerrornotsingle => fecc_eccerrornotsingle,
      fecc_eccerrorsingle => fecc_eccerrorsingle,
      fecc_endofframe => fecc_endofframe,
      fecc_endofscan => fecc_endofscan,
      fecc_far(25 downto 0) => fecc_far(25 downto 0),
      fecc_farsel(1 downto 0) => fecc_farsel(1 downto 0),
      icap_avail => icap_avail,
      icap_clk => icap_clk,
      icap_csib => icap_csib,
      icap_i(31 downto 0) => icap_i(31 downto 0),
      icap_o(31 downto 0) => icap_o(31 downto 0),
      icap_prdone => icap_prdone,
      icap_prerror => icap_prerror,
      icap_rdwrb => icap_rdwrb
    );
end STRUCTURE;
