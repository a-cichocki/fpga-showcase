-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 23 19:26:46 2019
-- Host        : dt-205 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ semicap_hipero_sem_0_sim_netlist.vhdl
-- Design      : semicap_hipero_sem_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    storage_0 : out STD_LOGIC;
    storage_1 : out STD_LOGIC;
    storage_2 : out STD_LOGIC;
    storage_3 : out STD_LOGIC;
    storage_4 : out STD_LOGIC;
    storage_5 : out STD_LOGIC;
    storage_6 : out STD_LOGIC;
    storage_7 : out STD_LOGIC;
    storage_8 : out STD_LOGIC;
    storage_9 : out STD_LOGIC;
    storage_10 : out STD_LOGIC;
    storage_11 : out STD_LOGIC;
    storage_12 : out STD_LOGIC;
    storage_13 : out STD_LOGIC;
    \sta_ptr_reg[2]\ : out STD_LOGIC;
    \sta_ptr_reg[3]\ : out STD_LOGIC;
    \sta_ptr_reg[4]\ : out STD_LOGIC;
    \sta_ptr_reg[5]\ : out STD_LOGIC;
    storage_14 : out STD_LOGIC;
    storage_15 : out STD_LOGIC;
    storage_16 : out STD_LOGIC;
    storage_17 : out STD_LOGIC;
    icap_clk : in STD_LOGIC;
    bram_enable : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ena : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    storage_18 : in STD_LOGIC;
    storage_19 : in STD_LOGIC;
    port_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ports_loop[5].in_port_flop_i_3\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    storage_20 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    storage_21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_port_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem is
  signal \^d\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal addra : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dina : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal doutb : STD_LOGIC_VECTOR ( 35 downto 8 );
  signal \ports_loop[2].in_port_flop_i_9_n_0\ : STD_LOGIC;
  signal \ports_loop[3].in_port_flop_i_7_n_0\ : STD_LOGIC;
  signal \ports_loop[4].in_port_flop_i_7_n_0\ : STD_LOGIC;
  signal \ports_loop[5].in_port_flop_i_7_n_0\ : STD_LOGIC;
  signal wea : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_storage_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_storage_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_storage_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_storage_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_storage_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_storage_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_storage_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_storage_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_storage_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_storage_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_storage_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_storage_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_to_icap_addr[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_to_icap_addr[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of reg_to_icap_csib_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of reg_to_icap_rdwrb_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of reg_to_icap_rsvb_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of reg_to_icap_wcb_i_1 : label is "soft_lutpair29";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of storage : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of storage_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of storage_i_10 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of storage_i_11 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of storage_i_12 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of storage_i_13 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of storage_i_14 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of storage_i_15 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of storage_i_16 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of storage_i_17 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of storage_i_18 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of storage_i_19 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of storage_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of storage_i_20 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of storage_i_21 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of storage_i_22 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of storage_i_23 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of storage_i_24 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of storage_i_25 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of storage_i_26 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of storage_i_27 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of storage_i_28 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of storage_i_29 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of storage_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of storage_i_30 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of storage_i_31 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of storage_i_32 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of storage_i_33 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of storage_i_34 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of storage_i_35 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of storage_i_36 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of storage_i_37 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of storage_i_38 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of storage_i_39 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of storage_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of storage_i_40 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of storage_i_41 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of storage_i_42 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of storage_i_43 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of storage_i_44 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of storage_i_45 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of storage_i_46 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of storage_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of storage_i_6 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of storage_i_7 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of storage_i_8 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of storage_i_9 : label is "soft_lutpair16";
begin
  D(31 downto 0) <= \^d\(31 downto 0);
\ports_loop[0].in_port_flop_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355000F3355FF0F"
    )
        port map (
      I0 => \^d\(23),
      I1 => \^d\(31),
      I2 => \^d\(7),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^d\(15),
      O => storage_14
    );
\ports_loop[1].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355000F3355FF0F"
    )
        port map (
      I0 => \^d\(22),
      I1 => \^d\(30),
      I2 => \^d\(6),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^d\(14),
      O => storage_15
    );
\ports_loop[2].in_port_flop_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC50FC5F0C500C5"
    )
        port map (
      I0 => \ports_loop[2].in_port_flop_i_9_n_0\,
      I1 => Q(2),
      I2 => port_id(0),
      I3 => port_id(1),
      I4 => \ports_loop[5].in_port_flop_i_3\(0),
      I5 => Q(10),
      O => \sta_ptr_reg[2]\
    );
\ports_loop[2].in_port_flop_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(29),
      I1 => \^d\(5),
      I2 => \^d\(21),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(13),
      O => \ports_loop[2].in_port_flop_i_9_n_0\
    );
\ports_loop[3].in_port_flop_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC50FC5F0C500C5"
    )
        port map (
      I0 => \ports_loop[3].in_port_flop_i_7_n_0\,
      I1 => Q(3),
      I2 => port_id(0),
      I3 => port_id(1),
      I4 => \ports_loop[5].in_port_flop_i_3\(1),
      I5 => Q(11),
      O => \sta_ptr_reg[3]\
    );
\ports_loop[3].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(28),
      I1 => \^d\(4),
      I2 => \^d\(20),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(12),
      O => \ports_loop[3].in_port_flop_i_7_n_0\
    );
\ports_loop[4].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC50FC5F0C500C5"
    )
        port map (
      I0 => \ports_loop[4].in_port_flop_i_7_n_0\,
      I1 => Q(4),
      I2 => port_id(0),
      I3 => port_id(1),
      I4 => \ports_loop[5].in_port_flop_i_3\(2),
      I5 => \ports_loop[5].in_port_flop_i_3\(4),
      O => \sta_ptr_reg[4]\
    );
\ports_loop[4].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(27),
      I1 => \^d\(3),
      I2 => \^d\(19),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(11),
      O => \ports_loop[4].in_port_flop_i_7_n_0\
    );
\ports_loop[5].in_port_flop_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC50FC5F0C500C5"
    )
        port map (
      I0 => \ports_loop[5].in_port_flop_i_7_n_0\,
      I1 => Q(5),
      I2 => port_id(0),
      I3 => port_id(1),
      I4 => \ports_loop[5].in_port_flop_i_3\(3),
      I5 => \ports_loop[5].in_port_flop_i_3\(5),
      O => \sta_ptr_reg[5]\
    );
\ports_loop[5].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(26),
      I1 => \^d\(2),
      I2 => \^d\(18),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(10),
      O => \ports_loop[5].in_port_flop_i_7_n_0\
    );
\ports_loop[6].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(25),
      I1 => \^d\(1),
      I2 => \^d\(17),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(9),
      O => storage_16
    );
\ports_loop[7].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => \^d\(24),
      I1 => \^d\(0),
      I2 => \^d\(16),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^d\(8),
      O => storage_17
    );
\reg_to_icap_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(5),
      I1 => ena,
      O => storage_9
    );
\reg_to_icap_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(4),
      I1 => ena,
      O => storage_8
    );
\reg_to_icap_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(3),
      I1 => ena,
      O => storage_7
    );
\reg_to_icap_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(2),
      I1 => ena,
      O => storage_6
    );
\reg_to_icap_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(1),
      I1 => ena,
      O => storage_5
    );
\reg_to_icap_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(0),
      I1 => ena,
      O => storage_4
    );
\reg_to_icap_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(15),
      I1 => ena,
      O => storage_3
    );
\reg_to_icap_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(14),
      I1 => ena,
      O => storage_2
    );
\reg_to_icap_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(13),
      I1 => ena,
      O => storage_1
    );
\reg_to_icap_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d\(12),
      I1 => ena,
      O => storage_0
    );
reg_to_icap_csib_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => doutb(35),
      I1 => ena,
      O => storage_10
    );
reg_to_icap_rdwrb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => doutb(26),
      I1 => ena,
      O => storage_11
    );
reg_to_icap_rsvb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => doutb(8),
      I1 => ena,
      O => storage_13
    );
reg_to_icap_wcb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => doutb(17),
      I1 => ena,
      O => storage_12
    );
storage: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"333333333333333333333333333333333333333F5777F3333FF33333FF33333F",
      INITP_01 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INITP_02 => X"7777F3333333333333333333333333333333333F333333333333333333333333",
      INITP_03 => X"7777777777777777777777777777777777777777777777777777777777777777",
      INITP_04 => X"7777777777777777777777777777777777777777777777777777777777777777",
      INITP_05 => X"5555555555555555555555555555555555555555555555555555555555577777",
      INITP_06 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555777777777777777F3333FFFF3F",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFF2000000020000000AA9955662000000020000000FFFFFFFF",
      INIT_01 => X"20000000FFFFFFFFFFFFFFFF2000000020000000DADADADA30ADDD0120000000",
      INIT_02 => X"ADDD0028FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000002000000028ADDD01",
      INIT_03 => X"DADADADADADADADADADADADADADADADADADADADA500000F630004000FFFFFFFF",
      INIT_04 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_05 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_06 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_07 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_08 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_09 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0A => X"ECCCECCCDADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0B => X"DADADADADADADADADADADADADADADADADADADADADADADADAECCCECCCECCCECCC",
      INIT_0C => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0D => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0E => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0F => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_10 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_11 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_12 => X"2000000020000000DADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_13 => X"20000000200000002000000020000000200000004800010028006000FFFFFFFF",
      INIT_14 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_15 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_16 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF200000002000000020000000",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"ADDD0074ADDD0070ADDD006CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"ADDD0094ADDD0090ADDD008CADDD0088ADDD0084ADDD0080ADDD007CADDD0078",
      INIT_2A => X"ADDD00B4ADDD00B0ADDD00ACADDD00A8ADDD00A4ADDD00A0ADDD009CADDD0098",
      INIT_2B => X"ADDD00D4ADDD00D0ADDD00CCADDD00C8ADDD00C4ADDD00C0ADDD00BCADDD00B8",
      INIT_2C => X"ADDD00F4ADDD00F0ADDD00ECADDD00E8ADDD00E4ADDD00E0ADDD00DCADDD00D8",
      INIT_2D => X"ADDD0114ADDD0110ADDD010CADDD0108ADDD0104ADDD0100ADDD00FCADDD00F8",
      INIT_2E => X"ADDD0134ADDD0130ADDD012CADDD0128ADDD0124ADDD0120ADDD011CADDD0118",
      INIT_2F => X"ADDD0154ADDD0150ADDD014CADDD0148ADDD0144ADDD0140ADDD013CADDD0138",
      INIT_30 => X"ADDD0174ADDD0170ADDD016CADDD0168ADDD0164ADDD0160ADDD015CADDD0158",
      INIT_31 => X"ADDD0194ADDD0190ADDD018CADDD0188ADDD0184ADDD0180ADDD017CADDD0178",
      INIT_32 => X"ADDD01B4ADDD01B0ADDD01ACADDD01A8ADDD01A4ADDD01A0ADDD019CADDD0198",
      INIT_33 => X"ADDD01D4ADDD01D0ADDD01CCADDD01C8ADDD01C4ADDD01C0ADDD01BCADDD01B8",
      INIT_34 => X"ADDD01F4ADDD01F0ADDD01ECADDD01E8ADDD01E4ADDD01E0ADDD01DCADDD01D8",
      INIT_35 => X"ADDD0214ADDD0210ADDD020CADDD0208ADDD0204ADDD0200ADDD01FCADDD01F8",
      INIT_36 => X"ADDD0234ADDD0230ADDD022CADDD0228ADDD0224ADDD0220ADDD021CADDD0218",
      INIT_37 => X"ADDD0254ADDD0250ADDD024CADDD0248ADDD0244ADDD0240ADDD023CADDD0238",
      INIT_38 => X"2802400620000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20000000FFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2000000020000000",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"ADDD0798ADDD0794ADDD0790ADDD078CADDD0788ADDD0784FFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFF07F2FFFF07F2FFFFFFFFFFFFFFFFFFFFFFFF07F2FFFFFFFF07F207F2FFFF",
      INIT_3F => X"040C3A0C0C3A100A00000C0514686643FFFFFFFFFFFFFFFFFFFF07F2FFFFFFFF",
      INIT_40 => X"0C3A0C043A0C0C3A0C0C3A0C0C3A0C043A0C0C3A040C3A0C0C3A0C043A0C0C3A",
      INIT_41 => X"3A0C0C3A040C3A0C0C3A0C043A0C0C3A040C3A0C0C3A0C063A0C0C3A040C3A0C",
      INIT_42 => X"0C3A0C0C3A100A063A0C0C3A040C3A0C0C3A0C043A0C0C3A0C0C3A0C0C3A0C04",
      INIT_43 => X"3A0C043A0C0C3A0C0C3A0C043A0C0C3A040C3A0C043A0C0C3A0C0C3A0C043A0C",
      INIT_44 => X"0C0C3A0C043A0C0C3A0C043A0C0C3A0C063A0C0C3A040C3A0C043A0C0C3A0C0C",
      INIT_45 => X"0C3A0C0C3A0C0C3A0C0C3A0C0C3A0C0C3A040C3A0C0C3A02063A0C0C3A040C3A",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"FFFFFFFFF",
      INIT_B => X"FFFFFFFFF",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"FFFFFFFFF",
      SRVAL_B => X"FFFFFFFFF",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14 downto 5) => Q(11 downto 2),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => NLW_storage_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_storage_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_storage_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_storage_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => NLW_storage_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_storage_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => icap_clk,
      CLKBWRCLK => icap_clk,
      DBITERR => NLW_storage_DBITERR_UNCONNECTED,
      DINADIN(31 downto 24) => dina(34 downto 27),
      DINADIN(23 downto 16) => dina(25 downto 18),
      DINADIN(15 downto 8) => dina(16 downto 9),
      DINADIN(7 downto 0) => dina(7 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0011",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => NLW_storage_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31) => \^d\(24),
      DOUTBDOUT(30) => \^d\(25),
      DOUTBDOUT(29) => \^d\(26),
      DOUTBDOUT(28) => \^d\(27),
      DOUTBDOUT(27) => \^d\(28),
      DOUTBDOUT(26) => \^d\(29),
      DOUTBDOUT(25) => \^d\(30),
      DOUTBDOUT(24) => \^d\(31),
      DOUTBDOUT(23) => \^d\(16),
      DOUTBDOUT(22) => \^d\(17),
      DOUTBDOUT(21) => \^d\(18),
      DOUTBDOUT(20) => \^d\(19),
      DOUTBDOUT(19) => \^d\(20),
      DOUTBDOUT(18) => \^d\(21),
      DOUTBDOUT(17) => \^d\(22),
      DOUTBDOUT(16) => \^d\(23),
      DOUTBDOUT(15) => \^d\(8),
      DOUTBDOUT(14) => \^d\(9),
      DOUTBDOUT(13) => \^d\(10),
      DOUTBDOUT(12) => \^d\(11),
      DOUTBDOUT(11) => \^d\(12),
      DOUTBDOUT(10) => \^d\(13),
      DOUTBDOUT(9) => \^d\(14),
      DOUTBDOUT(8) => \^d\(15),
      DOUTBDOUT(7) => \^d\(0),
      DOUTBDOUT(6) => \^d\(1),
      DOUTBDOUT(5) => \^d\(2),
      DOUTBDOUT(4) => \^d\(3),
      DOUTBDOUT(3) => \^d\(4),
      DOUTBDOUT(2) => \^d\(5),
      DOUTBDOUT(1) => \^d\(6),
      DOUTBDOUT(0) => \^d\(7),
      DOUTPADOUTP(3 downto 0) => NLW_storage_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3) => doutb(35),
      DOUTPBDOUTP(2) => doutb(26),
      DOUTPBDOUTP(1) => doutb(17),
      DOUTPBDOUTP(0) => doutb(8),
      ECCPARITY(7 downto 0) => NLW_storage_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => bram_enable,
      ENBWREN => bram_enable,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_storage_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_storage_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => wea(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
storage_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(9),
      I1 => storage_18,
      I2 => Q(11),
      O => addra(9)
    );
storage_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(0),
      I1 => storage_18,
      I2 => Q(2),
      O => addra(0)
    );
storage_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(24),
      I1 => storage_18,
      I2 => out_port_reg(7),
      O => dina(34)
    );
storage_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(25),
      I1 => storage_18,
      I2 => out_port_reg(6),
      O => dina(33)
    );
storage_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(26),
      I1 => storage_18,
      I2 => out_port_reg(5),
      O => dina(32)
    );
storage_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(27),
      I1 => storage_18,
      I2 => out_port_reg(4),
      O => dina(31)
    );
storage_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(28),
      I1 => storage_18,
      I2 => out_port_reg(3),
      O => dina(30)
    );
storage_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(29),
      I1 => storage_18,
      I2 => out_port_reg(2),
      O => dina(29)
    );
storage_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(30),
      I1 => storage_18,
      I2 => out_port_reg(1),
      O => dina(28)
    );
storage_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(31),
      I1 => storage_18,
      I2 => out_port_reg(0),
      O => dina(27)
    );
storage_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(16),
      I1 => storage_18,
      I2 => out_port_reg(7),
      O => dina(25)
    );
storage_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(8),
      I1 => storage_18,
      I2 => Q(10),
      O => addra(8)
    );
storage_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(17),
      I1 => storage_18,
      I2 => out_port_reg(6),
      O => dina(24)
    );
storage_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(18),
      I1 => storage_18,
      I2 => out_port_reg(5),
      O => dina(23)
    );
storage_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(19),
      I1 => storage_18,
      I2 => out_port_reg(4),
      O => dina(22)
    );
storage_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(20),
      I1 => storage_18,
      I2 => out_port_reg(3),
      O => dina(21)
    );
storage_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(21),
      I1 => storage_18,
      I2 => out_port_reg(2),
      O => dina(20)
    );
storage_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(22),
      I1 => storage_18,
      I2 => out_port_reg(1),
      O => dina(19)
    );
storage_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(23),
      I1 => storage_18,
      I2 => out_port_reg(0),
      O => dina(18)
    );
storage_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(8),
      I1 => storage_18,
      I2 => out_port_reg(7),
      O => dina(16)
    );
storage_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(9),
      I1 => storage_18,
      I2 => out_port_reg(6),
      O => dina(15)
    );
storage_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(10),
      I1 => storage_18,
      I2 => out_port_reg(5),
      O => dina(14)
    );
storage_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(7),
      I1 => storage_18,
      I2 => Q(9),
      O => addra(7)
    );
storage_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(11),
      I1 => storage_18,
      I2 => out_port_reg(4),
      O => dina(13)
    );
storage_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(12),
      I1 => storage_18,
      I2 => out_port_reg(3),
      O => dina(12)
    );
storage_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(13),
      I1 => storage_18,
      I2 => out_port_reg(2),
      O => dina(11)
    );
storage_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(14),
      I1 => storage_18,
      I2 => out_port_reg(1),
      O => dina(10)
    );
storage_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(15),
      I1 => storage_18,
      I2 => out_port_reg(0),
      O => dina(9)
    );
storage_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(0),
      I1 => storage_18,
      I2 => out_port_reg(7),
      O => dina(7)
    );
storage_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(1),
      I1 => storage_18,
      I2 => out_port_reg(6),
      O => dina(6)
    );
storage_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(2),
      I1 => storage_18,
      I2 => out_port_reg(5),
      O => dina(5)
    );
storage_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(3),
      I1 => storage_18,
      I2 => out_port_reg(4),
      O => dina(4)
    );
storage_i_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(4),
      I1 => storage_18,
      I2 => out_port_reg(3),
      O => dina(3)
    );
storage_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(6),
      I1 => storage_18,
      I2 => Q(8),
      O => addra(6)
    );
storage_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(5),
      I1 => storage_18,
      I2 => out_port_reg(2),
      O => dina(2)
    );
storage_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(6),
      I1 => storage_18,
      I2 => out_port_reg(1),
      O => dina(1)
    );
storage_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_21(7),
      I1 => storage_18,
      I2 => out_port_reg(0),
      O => dina(0)
    );
storage_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \out\,
      I1 => storage_18,
      I2 => Q(0),
      I3 => Q(1),
      I4 => storage_19,
      O => wea(3)
    );
storage_i_44: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => \out\,
      I1 => storage_18,
      I2 => Q(1),
      I3 => Q(0),
      I4 => storage_19,
      O => wea(2)
    );
storage_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => \out\,
      I1 => storage_18,
      I2 => Q(0),
      I3 => Q(1),
      I4 => storage_19,
      O => wea(1)
    );
storage_i_46: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888B8888"
    )
        port map (
      I0 => \out\,
      I1 => storage_18,
      I2 => Q(0),
      I3 => Q(1),
      I4 => storage_19,
      O => wea(0)
    );
storage_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(5),
      I1 => storage_18,
      I2 => Q(7),
      O => addra(5)
    );
storage_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(4),
      I1 => storage_18,
      I2 => Q(6),
      O => addra(4)
    );
storage_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(3),
      I1 => storage_18,
      I2 => Q(5),
      O => addra(3)
    );
storage_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(2),
      I1 => storage_18,
      I2 => Q(4),
      O => addra(2)
    );
storage_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_20(1),
      I1 => storage_18,
      I2 => Q(3),
      O => addra(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom is
  port (
    bram_enable : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : out STD_LOGIC;
    rom_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    icap_clk : in STD_LOGIC;
    bram_wr_en2 : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram2_en : in STD_LOGIC;
    bram_wr_en1 : in STD_LOGIC;
    casdomux2 : in STD_LOGIC;
    bram_wr_en0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom is
  signal \CORCombinational.dly_address_b\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal D0 : STD_LOGIC;
  signal \OUTRegistered.instruction[0]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[10]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[11]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[12]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[13]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[14]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[15]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[16]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[17]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[1]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[2]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[3]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[4]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[5]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[6]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[7]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[8]_i_1_n_0\ : STD_LOGIC;
  signal \OUTRegistered.instruction[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_enable\ : STD_LOGIC;
  signal casa1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal casa2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal casb1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal casb2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal casdbiterr1 : STD_LOGIC;
  signal caspa1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal caspa2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal caspb1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal caspb2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cassbiterr1 : STD_LOGIC;
  signal dbiterr_out_b : STD_LOGIC;
  signal firmware0_n_100 : STD_LOGIC;
  signal firmware0_n_101 : STD_LOGIC;
  signal firmware0_n_102 : STD_LOGIC;
  signal firmware0_n_103 : STD_LOGIC;
  signal firmware0_n_104 : STD_LOGIC;
  signal firmware0_n_105 : STD_LOGIC;
  signal firmware0_n_106 : STD_LOGIC;
  signal firmware0_n_107 : STD_LOGIC;
  signal firmware0_n_108 : STD_LOGIC;
  signal firmware0_n_109 : STD_LOGIC;
  signal firmware0_n_110 : STD_LOGIC;
  signal firmware0_n_111 : STD_LOGIC;
  signal firmware0_n_112 : STD_LOGIC;
  signal firmware0_n_113 : STD_LOGIC;
  signal firmware0_n_114 : STD_LOGIC;
  signal firmware0_n_115 : STD_LOGIC;
  signal firmware0_n_116 : STD_LOGIC;
  signal firmware0_n_117 : STD_LOGIC;
  signal firmware0_n_118 : STD_LOGIC;
  signal firmware0_n_119 : STD_LOGIC;
  signal firmware0_n_120 : STD_LOGIC;
  signal firmware0_n_121 : STD_LOGIC;
  signal firmware0_n_122 : STD_LOGIC;
  signal firmware0_n_123 : STD_LOGIC;
  signal firmware0_n_124 : STD_LOGIC;
  signal firmware0_n_125 : STD_LOGIC;
  signal firmware0_n_80 : STD_LOGIC;
  signal firmware0_n_81 : STD_LOGIC;
  signal firmware0_n_82 : STD_LOGIC;
  signal firmware0_n_83 : STD_LOGIC;
  signal firmware0_n_84 : STD_LOGIC;
  signal firmware0_n_85 : STD_LOGIC;
  signal firmware0_n_86 : STD_LOGIC;
  signal firmware0_n_87 : STD_LOGIC;
  signal firmware0_n_88 : STD_LOGIC;
  signal firmware0_n_89 : STD_LOGIC;
  signal firmware0_n_90 : STD_LOGIC;
  signal firmware0_n_91 : STD_LOGIC;
  signal firmware0_n_92 : STD_LOGIC;
  signal firmware0_n_93 : STD_LOGIC;
  signal firmware0_n_94 : STD_LOGIC;
  signal firmware0_n_95 : STD_LOGIC;
  signal firmware0_n_96 : STD_LOGIC;
  signal firmware0_n_97 : STD_LOGIC;
  signal firmware0_n_98 : STD_LOGIC;
  signal firmware0_n_99 : STD_LOGIC;
  signal instr_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  signal q_sync_h : STD_LOGIC;
  signal q_sync_j : STD_LOGIC;
  signal q_sync_k : STD_LOGIC;
  signal \^sleep\ : STD_LOGIC;
  signal NLW_firmware0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_firmware0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_firmware1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_firmware1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_firmware2_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware2_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_firmware2_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware2_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_firmware2_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware2_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firmware2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_firmware2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of firmware0 : label is "PRIMITIVE";
  attribute BOX_TYPE of firmware1 : label is "PRIMITIVE";
  attribute BOX_TYPE of firmware2 : label is "PRIMITIVE";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
  attribute BOX_TYPE of sync_h : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_h : label is "FDS";
  attribute BOX_TYPE of sync_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_i : label is "FDS";
  attribute BOX_TYPE of sync_j : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_j : label is "FDR";
  attribute BOX_TYPE of sync_k : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_k : label is "FDS";
  attribute BOX_TYPE of sync_l : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_l : label is "FDS";
begin
  SR(0) <= \^sr\(0);
  bram_enable <= \^bram_enable\;
  sleep <= \^sleep\;
\CORCombinational.dly_address_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(0),
      Q => \CORCombinational.dly_address_b\(0),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(1),
      Q => \CORCombinational.dly_address_b\(1),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(2),
      Q => \CORCombinational.dly_address_b\(2),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(3),
      Q => \CORCombinational.dly_address_b\(3),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(4),
      Q => \CORCombinational.dly_address_b\(4),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(5),
      Q => \CORCombinational.dly_address_b\(5),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(6),
      Q => \CORCombinational.dly_address_b\(6),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(7),
      Q => \CORCombinational.dly_address_b\(7),
      R => \^sr\(0)
    );
\CORCombinational.dly_address_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => address(8),
      Q => \CORCombinational.dly_address_b\(8),
      R => \^sr\(0)
    );
\OUTRegistered.instruction[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_99,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_123,
      I5 => p_1_in(0),
      O => \OUTRegistered.instruction[0]_i_1_n_0\
    );
\OUTRegistered.instruction[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_89,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_113,
      I5 => p_1_in(10),
      O => \OUTRegistered.instruction[10]_i_1_n_0\
    );
\OUTRegistered.instruction[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_88,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_112,
      I5 => p_1_in(11),
      O => \OUTRegistered.instruction[11]_i_1_n_0\
    );
\OUTRegistered.instruction[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_87,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_111,
      I5 => p_1_in(12),
      O => \OUTRegistered.instruction[12]_i_1_n_0\
    );
\OUTRegistered.instruction[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_86,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_110,
      I5 => p_1_in(13),
      O => \OUTRegistered.instruction[13]_i_1_n_0\
    );
\OUTRegistered.instruction[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_85,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_109,
      I5 => p_1_in(14),
      O => \OUTRegistered.instruction[14]_i_1_n_0\
    );
\OUTRegistered.instruction[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_84,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_108,
      I5 => p_1_in(15),
      O => \OUTRegistered.instruction[15]_i_1_n_0\
    );
\OUTRegistered.instruction[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_83,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_107,
      I5 => p_1_in(16),
      O => \OUTRegistered.instruction[16]_i_1_n_0\
    );
\OUTRegistered.instruction[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_82,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_106,
      I5 => p_1_in(17),
      O => \OUTRegistered.instruction[17]_i_1_n_0\
    );
\OUTRegistered.instruction[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_98,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_122,
      I5 => p_1_in(1),
      O => \OUTRegistered.instruction[1]_i_1_n_0\
    );
\OUTRegistered.instruction[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_97,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_121,
      I5 => p_1_in(2),
      O => \OUTRegistered.instruction[2]_i_1_n_0\
    );
\OUTRegistered.instruction[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_96,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_120,
      I5 => p_1_in(3),
      O => \OUTRegistered.instruction[3]_i_1_n_0\
    );
\OUTRegistered.instruction[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_95,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_119,
      I5 => p_1_in(4),
      O => \OUTRegistered.instruction[4]_i_1_n_0\
    );
\OUTRegistered.instruction[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_94,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_118,
      I5 => p_1_in(5),
      O => \OUTRegistered.instruction[5]_i_1_n_0\
    );
\OUTRegistered.instruction[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_93,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_117,
      I5 => p_1_in(6),
      O => \OUTRegistered.instruction[6]_i_1_n_0\
    );
\OUTRegistered.instruction[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_92,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_116,
      I5 => p_1_in(7),
      O => \OUTRegistered.instruction[7]_i_1_n_0\
    );
\OUTRegistered.instruction[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_91,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_115,
      I5 => p_1_in(8),
      O => \OUTRegistered.instruction[8]_i_1_n_0\
    );
\OUTRegistered.instruction[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFA0EFAF20A020A"
    )
        port map (
      I0 => firmware0_n_90,
      I1 => instr_sel(0),
      I2 => instr_sel(2),
      I3 => instr_sel(1),
      I4 => firmware0_n_114,
      I5 => p_1_in(9),
      O => \OUTRegistered.instruction[9]_i_1_n_0\
    );
\OUTRegistered.instruction_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[0]_i_1_n_0\,
      Q => Q(0),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[10]_i_1_n_0\,
      Q => Q(10),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[11]_i_1_n_0\,
      Q => Q(11),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[12]_i_1_n_0\,
      Q => Q(12),
      R => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[13]_i_1_n_0\,
      Q => Q(13),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[14]_i_1_n_0\,
      Q => Q(14),
      R => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[15]_i_1_n_0\,
      Q => Q(15),
      R => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[16]_i_1_n_0\,
      Q => Q(16),
      R => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[17]_i_1_n_0\,
      Q => Q(17),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[1]_i_1_n_0\,
      Q => Q(1),
      R => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[2]_i_1_n_0\,
      Q => Q(2),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[3]_i_1_n_0\,
      Q => Q(3),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[4]_i_1_n_0\,
      Q => Q(4),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[5]_i_1_n_0\,
      Q => Q(5),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[6]_i_1_n_0\,
      Q => Q(6),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[7]_i_1_n_0\,
      Q => Q(7),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[8]_i_1_n_0\,
      Q => Q(8),
      S => dbiterr_out_b
    );
\OUTRegistered.instruction_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => icap_clk,
      CE => '1',
      D => \OUTRegistered.instruction[9]_i_1_n_0\,
      Q => Q(9),
      S => dbiterr_out_b
    );
firmware0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "TRUE",
      EN_ECC_WRITE => "TRUE",
      INITP_00 => X"61A51039FC6E62CB9C200DFED57FE35BCE36ED465530B584394DA0B9AF00AB01",
      INITP_01 => X"B0128F908310A32685256EBF3B0C7ED14B7BE11A2721EDE8F1D62FBF25D65077",
      INITP_02 => X"4ACF7E68C94FCDFFD7EA6A50EF66516A6FF8DE69C4FFE6EAF87CE940455D2785",
      INITP_03 => X"61F663F6CA707FCC4BFAFACE7B66F9CED74259FDECC6DD71447872E8E9E55A73",
      INITP_04 => X"67C7D6DEE1C0E0E2F8697DF7C5C15EF465556DF473DAFA6FFE7159E77BE9D876",
      INITP_05 => X"7D4ACB79C16CCAD2E6524E644D7BF35E415B7E57E1CAECE0CE69794E68C065DB",
      INITP_06 => X"6E51655CEA5FD3436BE6ECC6D84350C64559527F6965F95DE1F86ACD6FCA7355",
      INITP_07 => X"E7FBF860F8DD7C5D6652EFC2E2DC7ADCEF45EF5BEC50E04AEF416A5CEF5CEF7E",
      INITP_08 => X"6B6871606D7F65E765F5ED6DF0616BEFF27BFCF4F0FEEA6EF279FC75F07F6BEC",
      INITP_09 => X"F1C869FACB71EFFFDAEA72FEDDE96A41F0786B7471E76B6565796A7AE174F0FF",
      INITP_0A => X"EDF65BDE74F3C44F6E56646AD350704C494D65FDF1D7D2F34DC1E042C3536C6D",
      INITP_0B => X"7BD5F4DF4D6562D27369FA54CDE9557C7045596A5465FFFA7C594EC463FEE95C",
      INITP_0C => X"4CEDDBEE537FD8E278FC7DCA41E7EBCB62E25CD871FC724571F3CF5349D6FAEB",
      INITP_0D => X"E8C26AC667C665C67E71C14E79EFC04BCF7863C7C976FCC553594968476CF4DD",
      INITP_0E => X"53567BCFC84C50CC524F5F6F7EECFF6B5FE8CE4BF6754AD8F57FDBE571F4F9CF",
      INITP_0F => X"42CDD2DACD7965CDC95C4E4AC248CA43CB49DDEC6A454A61654F51467B63F474",
      INIT_00 => X"0013032200820020014206207632FF000142000108201F000149082F01F28000",
      INIT_01 => X"0013013261F2074D02F20E1D008010010142083261F200490143081D00220033",
      INIT_02 => X"02F30F366111D0020043001D0203205D0140063261F1D00100B0021D0102073E",
      INIT_03 => X"02F20C010021D0100012FF2074132265025000050401D0000370002073B32145",
      INIT_04 => X"0370002073B1D00802F20F36618324F102F20E1D0401D00402F20D226253242C",
      INIT_05 => X"00B117226250106000B016010023222C001300207411D082025000030BF32590",
      INIT_06 => X"02F220030BF2070A02F1172073B2074D02F016360170109F020C321D08020741",
      INIT_07 => X"020C322012D22FFD00B11922625206DC00B01801002207220013012074120712",
      INIT_08 => X"001302207410B00002F221050403202F02F1192073B0D08002F018208A509002",
      INIT_09 => X"02F01A22008011FF020C322077B010FF00B11B2074D3602F00B01A010000D001",
      INIT_0A => X"00B01C250001B200001303366281B10002F2220D0801900102F11B0900D0121F",
      INIT_0B => X"02F11D250000900102F01C3662C2F000020C320D0400100100B11D0900D3E029",
      INIT_0C => X"01D0FF0BF052B0000012000BE0425000025000015093202F02F223014D00D040",
      INIT_0D => X"0140062263A09001014006326382BE0F0310001FF322BF7E01F1FF1DEDB2B00C",
      INIT_0E => X"0140060B2150D020014100013000900D0140060150A2D001014006014400300F",
      INIT_0F => X"01400E143000900601400E142002203A01400E0D010090060141000B0143603F",
      INIT_10 => X"022FFD0300736046025000143000D08000B224142000900D0100300D00809006",
      INIT_11 => X"022FFD1410609007022FFD3A64909007022FFD1900122041022FFD0110109007",
      INIT_12 => X"022FFD2D30A20714022FFD1235020704022FFD1024020720022FFD2264525000",
      INIT_13 => X"022FFD2500020722022FFD0201020712022FFD0900820724022FFD2D209206E0",
      INIT_14 => X"022FFD14B0620726022FFD14B06206E0022FFD0BB13206FC022FFD01A002071E",
      INIT_15 => X"022FFD09F1F206DC022FFD09E1E206E4022FFD09D1D206E0022FFD09C1C206E6",
      INIT_16 => X"022FFD13E003E05A022FFD13D0019001022FFD10CB001019022FFD10BA025000",
      INIT_17 => X"022FFD2067A200DC022FFD01B00200F6022FFD01A04200EE022FFD13F0025000",
      INIT_18 => X"022FFD09D0720896022FFD2062832060022FFD09C070D001022FFD206280900D",
      INIT_19 => X"022FFD09F07208B7022FFD20628208D4022FFD09E0701101022FFD2062801080",
      INIT_1A => X"022FFD0B51101000022FFD0B41036063022FFD01B011DC93022FFD01AEB208E4",
      INIT_1B => X"022FFD12D502F002022FFD10C4001000022FFD036012F001022FFD0B61205001",
      INIT_1C => X"022FFD1BB001D102022FFD19A010311E022FFD13F00001E0022FFD12E6020B46",
      INIT_1D => X"022FFD01B011D104022FFD01AEC32082022FFD250001D110022FFD3E66E32080",
      INIT_1E => X"022FFD2DF071D116022FFD2062C32089022FFD250001D112022FFD2067A32087",
      INIT_1F => X"022FFD2DD0722017022FFD2062C3208D022FFD2DE071D100022FFD2062C3208D",
      INIT_20 => X"022FFD2DB0701220022FFD2062C001D0022FFD2DC07320A1022FFD2062C01200",
      INIT_21 => X"022FFD0146C01203022FFD250002208D022FFD2DA07320A1022FFD2062C1D190",
      INIT_22 => X"022FFD0B0141D190022FFD0B21501204022FFD01300001D0022FFD01500320A1",
      INIT_23 => X"022FFD0D00836094022FFD143000DD10022FFD1420001000022FFD0D010320A1",
      INIT_24 => X"022FFD0110114000022FFD030070DD20022FFD1430014000022FFD142000DD40",
      INIT_25 => X"022FFD226941D112022FFD141063209B022FFD3A6981D110022FFD190012F002",
      INIT_26 => X"022FFD2D20901222022FFD2D30A3209F022FFD123501D116022FFD102403209D",
      INIT_27 => X"022FFD2D20901226022FFD2D30A320A1022FFD0601001223022FFD09008320A1",
      INIT_28 => X"022FFD14B0001000022FFD14A06200D8022FFD250002F239022FFD2D008320A1",
      INIT_29 => X"022FFD14F0001001022FFD14E000D004022FFD14D0009002022FFD14C002F03A",
      INIT_2A => X"022FFD190E9208A2022FFD3900020101022FFD110B9200E8022FFD250002F024",
      INIT_2B => X"022FFD110072090D022FFD3E6B32B02E022FFD19011208A5022FFD390002089F",
      INIT_2C => X"022FFD1100A200D8022FFD2500020896022FFD190F62090D022FFD390002B02E",
      INIT_2D => X"022FFD206C72B04E022FFD206BD200D8022FFD00C002011F022FFD25000200E2",
      INIT_2E => X"022FFD20730320CD022FFD206C71D001022FFD206BD0300F022FFD2073009001",
      INIT_2F => X"022FFD14100208A5022FFD14C06320C7022FFD011000D002022FFD2500009002",
      INIT_30 => X"022FFD1410001002022FFD14C062B80F022FFD141002B40F022FFD14C062B20F",
      INIT_31 => X"022FFD1D10A2012D022FFD2500022008022FFD141002077B022FFD14C062074D",
      INIT_32 => X"022FFD250002077B022FFD111302074D022FFD1110701000022FFD3A6CA208A5",
      INIT_33 => X"022FFD206A92B40F022FFD090062B20F022FFD20733208A5022FFD01A0022008",
      INIT_34 => X"022FFD1910120769022FFD206A22F032022FFD0110401001022FFD390002B80F",
      INIT_35 => X"022FFD206C72247A022FFD00100206DE022FFD04A00206E2022FFD366D220702",
      INIT_36 => X"022FFD2500025000022FFD366CD206DC022FFD1920120710022FFD2073020718",
      INIT_37 => X"022FFD227302071A022FFD01120206FC022FFD2273020700022FFD0110D2070C",
      INIT_38 => X"022FFD2273020716022FFD0113E2070C022FFD2273025000022FFD0115F206DE",
      INIT_39 => X"022FFD2273025000022FFD01133206DE022FFD2273020722022FFD011312070C",
      INIT_3A => X"022FFD2273020710022FFD01131206FE022FFD2273020702022FFD011302071E",
      INIT_3B => X"022FFD2273020720022FFD0113320706022FFD2273025000022FFD01132206DE",
      INIT_3C => X"022FFD22730206B5022FFD011350300F022FFD2273009001022FFD01134206DE",
      INIT_3D => X"022FFD2273020706022FFD01137206FC022FFD2273025000022FFD01136206DC",
      INIT_3E => X"022FFD227301400E022FFD0113903008022FFD2273009002022FFD01138206DE",
      INIT_3F => X"022FFD22730206DC022FFD01142206B5022FFD227301400E022FFD011411400E",
      INIT_40 => X"022FFD22730208D4022FFD0114401100022FFD22730010C0022FFD0114325000",
      INIT_41 => X"022FFD2273001C00022FFD0114601D01022FFD2273001E00022FFD0114501F00",
      INIT_42 => X"022FFD22730208D4022FFD0114801100022FFD22730010A0022FFD01147208EE",
      INIT_43 => X"022FFD2273001C00022FFD0114A01D00022FFD2273001E00022FFD0114901F00",
      INIT_44 => X"022FFD22730208D4022FFD0114C01101022FFD22730010C0022FFD0114B208EE",
      INIT_45 => X"022FFD2273003D7C022FFD0114E03E3C022FFD2273003F81022FFD0114D208EB",
      INIT_46 => X"022FFD2273005D03022FFD0115005E40022FFD2273005F00022FFD0114F03C3F",
      INIT_47 => X"022FFD22730010C0022FFD0115225000022FFD22730208EE022FFD0115105C00",
      INIT_48 => X"022FFD2273003FFF022FFD01154208EB022FFD22730208D4022FFD0115301101",
      INIT_49 => X"022FFD2273005F00022FFD0115603CFF022FFD2273003DFD022FFD0115503E7F",
      INIT_4A => X"022FFD22730208EE022FFD0115805C00022FFD2273005D00022FFD0115705E80",
      INIT_4B => X"022FFD22730208D4022FFD0115A01101022FFD22730010C0022FFD0115925000",
      INIT_4C => X"022FFD0900D03DFE022FFD2500003EFF022FFD2D10603FFF022FFD20737208EB",
      INIT_4D => X"022FFD0900D010C0022FFD2500025000022FFD36733208EE022FFD0D02003CFF",
      INIT_4E => X"022FFD0900003FFF022FFD25000208EB022FFD36737208D4022FFD0D01001101",
      INIT_4F => X"022FFD0309F05F00022FFD0900003CFF022FFD2500003DFE022FFD0306003EFF",
      INIT_50 => X"022FFD2073E208EE022FFD0316005C00022FFD0010005D01022FFD2500005E00",
      INIT_51 => X"022FFD207002F01E022FFD207062F032022FFD2D10001000022FFD0410025000",
      INIT_52 => X"022FFD206DC0D020022FFD206B53618B022FFD2073B0D040022FFD206DE0900F",
      INIT_53 => X"022FFD2073B0900E022FFD0319F36186022FFD001000D080022FFD250003618B",
      INIT_54 => X"022FFD207003617F022FFD207200D040022FFD2D10036182022FFD041000D080",
      INIT_55 => X"022FFD3277736179022FFD1D0010D010022FFD0B0323617C022FFD206DE0D020",
      INIT_56 => X"022FFD250000901B022FFD206DC32162022FFD206B50D004022FFD2073E0900E",
      INIT_57 => X"022FFD010021D0E0022FFD206DE030F0022FFD207002B04E022FFD207202F00B",
      INIT_58 => X"022FFD001000D020022FFD250000900D022FFD206DC22170022FFD206B53616F",
      INIT_59 => X"022FFD2D10036169022FFD041001D049022FFD2073B09006022FFD0319F3616F",
      INIT_5A => X"022FFD0B13220720022FFD207633616F022FFD010001D053022FFD2500022170",
      INIT_5B => X"022FFD206DE22008022FFD207002077B022FFD2072020784022FFD2D103206DC",
      INIT_5C => X"022FFD010402012D022FFD3277720896022FFD1D001206DC022FFD0B0322070C",
      INIT_5D => X"022FFD010202077B022FFD250002074D022FFD206DC01000022FFD206B5208A5",
      INIT_5E => X"022FFD2073E22189022FFD2500001080022FFD206DC2B10E022FFD206B522008",
      INIT_5F => X"022FFD206E22B40E022FFD2071822189022FFD3278201040022FFD1D0002B20E",
      INIT_60 => X"022FFD2277F2B80E022FFD2070C20896022FFD2500022189022FFD206DE01020",
      INIT_61 => X"022FFD0BC022B80F022FFD206DE20896022FFD2071622189022FFD2072001010",
      INIT_62 => X"022FFD2074620896022FFD2075222202022FFD206DC2F01E022FFD206B601008",
      INIT_63 => X"022FFD0BC3A2F01E022FFD206DE01001022FFD2070C2B20F022FFD2071E2B40F",
      INIT_64 => X"022FFD20714010A0022FFD250000B203022FFD206DC19801022FFD206B60982F",
      INIT_65 => X"022FFD206E8208E4022FFD206E8208B7022FFD206DE208D4022FFD2070601102",
      INIT_66 => X"022FFD206B62FE0E022FFD0BC052FD0D022FFD206B62FC0C022FFD0BC0603F03",
      INIT_67 => X"022FFD207E90BE0E022FFD206DC0BD0D022FFD206B60BC0C022FFD0BC042FF0F",
      INIT_68 => X"022FFD09502208D4022FFD206DE01100022FFD206FE01020022FFD207220BF0F",
      INIT_69 => X"022FFD227BF361AA022FFD207FB0D001022FFD3A7A80B001022FFD0D504208EE",
      INIT_6A => X"022FFD09F1F208C3022FFD09E1E208AB022FFD09D1D221AD022FFD09C1C22017",
      INIT_6B => X"022FFD10CB00B017022FFD14B061D000022FFD14B060B016022FFD0BB0220911",
      INIT_6C => X"022FFD2FF3B0B019022FFD13F001F000022FFD13E000B018022FFD13D001F000",
      INIT_6D => X"022FFD0BC3B0B01B022FFD2FC341F000022FFD2FD350B01A022FFD2FE361F000",
      INIT_6E => X"022FFD0BC350B01D022FFD206B61F000022FFD0BC360B01C022FFD206B61F000",
      INIT_6F => X"022FFD206DC1D002022FFD206B60B032022FFD0BC34361C9022FFD206B61F000",
      INIT_70 => X"022FFD0D5042F03A022FFD206DE11001022FFD206FE0B03A022FFD20700324CD",
      INIT_71 => X"022FFD0BC343247A022FFD227DD1D001022FFD207FB0B032022FFD3A7C7208A5",
      INIT_72 => X"022FFD01A04308FA022FFD0BF3B0D001022FFD0BE360B001022FFD0BD3522008",
      INIT_73 => X"022FFD09F072F034022FFD206280B016022FFD2067A321FF022FFD01B001D800",
      INIT_74 => X"022FFD09D072F036022FFD206280B018022FFD09E072F035022FFD206280B017",
      INIT_75 => X"022FFD00CD02F03C022FFD206B60B01A022FFD09C072F03B022FFD206280B019",
      INIT_76 => X"022FFD00CF02F03E022FFD206B60B01C022FFD00CE02F03D022FFD206B60B01B",
      INIT_77 => X"022FFD20712208AB022FFD20700208F1022FFD206DC2F03F022FFD206B60B01D",
      INIT_78 => X"022FFD0D5040B134022FFD01C000B016022FFD206E820911022FFD206DE208C3",
      INIT_79 => X"022FFD206DC1E010022FFD206B60B135022FFD11C010B017022FFD14C001C010",
      INIT_7A => X"022FFD206DE0B019022FFD207201E010022FFD207220B136022FFD250000B018",
      INIT_7B => X"022FFD206B60B13C022FFD09C0C0B01A022FFD2B03C1E010022FFD2B80C0B13B",
      INIT_7C => X"022FFD2B01C1E010022FFD206B60B13D022FFD09C0C0B01B022FFD2B02C1E010",
      INIT_7D => X"022FFD09C0C0B01D022FFD2B00C1E010022FFD206B60B13E022FFD09C0C0B01C",
      INIT_7E => X"022FFD2072A19801022FFD2500036211022FFD206DC1E010022FFD206B60B13F",
      INIT_7F => X"022FFD2072A20AAD022FFD2072A221DE022FFD2072A321FF022FFD2072A1D800",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => address(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"000000",
      ADDRBWRADDR(14 downto 6) => \CORCombinational.dly_address_b\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"000000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => casa1(31 downto 0),
      CASDINB(31 downto 0) => casb1(31 downto 0),
      CASDINPA(3 downto 0) => caspa1(3 downto 0),
      CASDINPB(3 downto 0) => caspb1(3 downto 0),
      CASDOMUXA => casdomux2,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_firmware0_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_firmware0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_firmware0_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_firmware0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => casdbiterr1,
      CASINSBITERR => cassbiterr1,
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => NLW_firmware0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_firmware0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => icap_clk,
      CLKBWRCLK => icap_clk,
      DBITERR => dbiterr_out_b,
      DINADIN(31 downto 20) => p_1_in(11 downto 0),
      DINADIN(19) => firmware0_n_80,
      DINADIN(18) => firmware0_n_81,
      DINADIN(17) => firmware0_n_82,
      DINADIN(16) => firmware0_n_83,
      DINADIN(15) => firmware0_n_84,
      DINADIN(14) => firmware0_n_85,
      DINADIN(13) => firmware0_n_86,
      DINADIN(12) => firmware0_n_87,
      DINADIN(11) => firmware0_n_88,
      DINADIN(10) => firmware0_n_89,
      DINADIN(9) => firmware0_n_90,
      DINADIN(8) => firmware0_n_91,
      DINADIN(7) => firmware0_n_92,
      DINADIN(6) => firmware0_n_93,
      DINADIN(5) => firmware0_n_94,
      DINADIN(4) => firmware0_n_95,
      DINADIN(3) => firmware0_n_96,
      DINADIN(2) => firmware0_n_97,
      DINADIN(1) => firmware0_n_98,
      DINADIN(0) => firmware0_n_99,
      DINBDIN(31) => firmware0_n_100,
      DINBDIN(30) => firmware0_n_101,
      DINBDIN(29) => firmware0_n_102,
      DINBDIN(28) => firmware0_n_103,
      DINBDIN(27) => firmware0_n_104,
      DINBDIN(26) => firmware0_n_105,
      DINBDIN(25) => firmware0_n_106,
      DINBDIN(24) => firmware0_n_107,
      DINBDIN(23) => firmware0_n_108,
      DINBDIN(22) => firmware0_n_109,
      DINBDIN(21) => firmware0_n_110,
      DINBDIN(20) => firmware0_n_111,
      DINBDIN(19) => firmware0_n_112,
      DINBDIN(18) => firmware0_n_113,
      DINBDIN(17) => firmware0_n_114,
      DINBDIN(16) => firmware0_n_115,
      DINBDIN(15) => firmware0_n_116,
      DINBDIN(14) => firmware0_n_117,
      DINBDIN(13) => firmware0_n_118,
      DINBDIN(12) => firmware0_n_119,
      DINBDIN(11) => firmware0_n_120,
      DINBDIN(10) => firmware0_n_121,
      DINBDIN(9) => firmware0_n_122,
      DINBDIN(8) => firmware0_n_123,
      DINBDIN(7) => firmware0_n_124,
      DINBDIN(6) => firmware0_n_125,
      DINBDIN(5 downto 0) => p_1_in(17 downto 12),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 20) => p_1_in(11 downto 0),
      DOUTADOUT(19) => firmware0_n_80,
      DOUTADOUT(18) => firmware0_n_81,
      DOUTADOUT(17) => firmware0_n_82,
      DOUTADOUT(16) => firmware0_n_83,
      DOUTADOUT(15) => firmware0_n_84,
      DOUTADOUT(14) => firmware0_n_85,
      DOUTADOUT(13) => firmware0_n_86,
      DOUTADOUT(12) => firmware0_n_87,
      DOUTADOUT(11) => firmware0_n_88,
      DOUTADOUT(10) => firmware0_n_89,
      DOUTADOUT(9) => firmware0_n_90,
      DOUTADOUT(8) => firmware0_n_91,
      DOUTADOUT(7) => firmware0_n_92,
      DOUTADOUT(6) => firmware0_n_93,
      DOUTADOUT(5) => firmware0_n_94,
      DOUTADOUT(4) => firmware0_n_95,
      DOUTADOUT(3) => firmware0_n_96,
      DOUTADOUT(2) => firmware0_n_97,
      DOUTADOUT(1) => firmware0_n_98,
      DOUTADOUT(0) => firmware0_n_99,
      DOUTBDOUT(31) => firmware0_n_100,
      DOUTBDOUT(30) => firmware0_n_101,
      DOUTBDOUT(29) => firmware0_n_102,
      DOUTBDOUT(28) => firmware0_n_103,
      DOUTBDOUT(27) => firmware0_n_104,
      DOUTBDOUT(26) => firmware0_n_105,
      DOUTBDOUT(25) => firmware0_n_106,
      DOUTBDOUT(24) => firmware0_n_107,
      DOUTBDOUT(23) => firmware0_n_108,
      DOUTBDOUT(22) => firmware0_n_109,
      DOUTBDOUT(21) => firmware0_n_110,
      DOUTBDOUT(20) => firmware0_n_111,
      DOUTBDOUT(19) => firmware0_n_112,
      DOUTBDOUT(18) => firmware0_n_113,
      DOUTBDOUT(17) => firmware0_n_114,
      DOUTBDOUT(16) => firmware0_n_115,
      DOUTBDOUT(15) => firmware0_n_116,
      DOUTBDOUT(14) => firmware0_n_117,
      DOUTBDOUT(13) => firmware0_n_118,
      DOUTBDOUT(12) => firmware0_n_119,
      DOUTBDOUT(11) => firmware0_n_120,
      DOUTBDOUT(10) => firmware0_n_121,
      DOUTBDOUT(9) => firmware0_n_122,
      DOUTBDOUT(8) => firmware0_n_123,
      DOUTBDOUT(7) => firmware0_n_124,
      DOUTBDOUT(6) => firmware0_n_125,
      DOUTBDOUT(5 downto 0) => p_1_in(17 downto 12),
      DOUTPADOUTP(3 downto 0) => NLW_firmware0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_firmware0_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_firmware0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^bram_enable\,
      ENBWREN => bram_wr_en0,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_firmware0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => rom_error,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"11111111"
    );
firmware1: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "TRUE",
      EN_ECC_WRITE => "TRUE",
      INITP_00 => X"61D3DAF741CE5D617E514B55ECD1F3F87A6348D761EEC142CE7E56F4635FD75A",
      INITP_01 => X"E6E8DCF4417A426E7FE04DF879F046EDDF734B76D27E567D4ADEDF61EAE0D66F",
      INITP_02 => X"7C6CEC7FE7E2D5E2FD4FEAE241E5F9CB717741E2F9CEEA71417BEA49E76BDF66",
      INITP_03 => X"465BFCE76CEF76EB7B68F34E797462EBFAF77CFF4F6160E27FF874F1E4CBF8F5",
      INITP_04 => X"EEE3DB7673FEECC04FD2707A4FE14D50E57D51F9C46A70EA4969CF7A62EBDAF3",
      INITP_05 => X"6154F5E26F79C1D17AEFEF4C4155D37EC742F2FBE565E2E479FCFE6AED71F5F5",
      INITP_06 => X"D14D5FF46BD2D8DBEE4D6AD07675E0C462CB6BE165F669EAF162EDF5FBF37D7F",
      INITP_07 => X"E1E0E142E8D16050F049D8745FDEE773FE5C635DF8EED865FC45C744FA4763FC",
      INITP_08 => X"55DF4CC5D8CE5EC34F405FD15A5DE9F56873C76ED375DBEE5C69E67543DC4745",
      INITP_09 => X"DA584D59CDC0D5C4DEE94D7B5F69526642525CCD72CD6573476369DFCFDBF4E8",
      INITP_0A => X"D24370CEE943734373F74CEDE9CBCCE164D256E57FCAD6FDDDFDCF7D4A78F54E",
      INITP_0B => X"EDFFF96078DA75C2F5E2787F55CEDEC1C1634E7B5BC7D7E04B404C6049FBC173",
      INITP_0C => X"ECD66F4C6FD14EC64773567EC7EAD56172C6EEC3CBED6FFB4B406B63E649E8C0",
      INITP_0D => X"4666C4FDCFE7DEF6E747F0C2D66AE87E5F59C5F05C7EC9E75D6050E4F84C6F50",
      INITP_0E => X"F34DE5D952EEFE60C6524664C1E7D8E7C4FB45E1FBCFE7D8EAC4FB43E7DE59C2",
      INITP_0F => X"55E8F0E65979CBE8CEEFD276FFC0FA406F5AE840F1DC454E40EA43E94360CC6B",
      INIT_00 => X"022FFD250002F013022FFD2072A0B002022FFD2072A2F01F022FFD2072A01004",
      INIT_01 => X"022FFD20700206DC022FFD3680B32208022FFD1D0001D002022FFD0B0320B032",
      INIT_02 => X"022FFD25000324F1022FFD206DC1D001022FFD2071E0B032022FFD207182078C",
      INIT_03 => X"022FFD206DC2074D022FFD206FC01004022FFD20712324F1022FFD207001D002",
      INIT_04 => X"022FFD368182F03A022FFD1D00011001022FFD0B0320B03A022FFD2500022008",
      INIT_05 => X"022FFD206DC1F000022FFD207020B017022FFD207161D000022FFD207040B016",
      INIT_06 => X"022FFD207001F000022FFD207000B019022FFD207041F000022FFD250000B018",
      INIT_07 => X"022FFD206FC1F000022FFD2071A0B01B022FFD207E91F000022FFD206DC0B01A",
      INIT_08 => X"022FFD0B00F1F000022FFD141060B01D022FFD0B1131F000022FFD206DE0B01C",
      INIT_09 => X"022FFD206BD1D001022FFD206BD0B032022FFD00C00208A5022FFD0401036017",
      INIT_0A => X"022FFD206B522008022FFD0B00E324CD022FFD207301D002022FFD206C73247A",
      INIT_0B => X"022FFD206B50BE11022FFD0B00C0BD10022FFD206B52F01E022FFD0B00D01001",
      INIT_0C => X"022FFD206DE13F00022FFD206FC13E00022FFD2071211D01022FFD206DC0BF12",
      INIT_0D => X"022FFD0B0122FF12022FFD1410603F01022FFD0B1132FE11022FFD206E82FD10",
      INIT_0E => X"022FFD206B52F00F022FFD0B01103001022FFD206B50B00F022FFD0401020B5F",
      INIT_0F => X"022FFD2500003E7E022FFD206DC0BE0E022FFD206B50307E022FFD0B0100B03B",
      INIT_10 => X"022FFD0BC1620911022FFD3487E208FA022FFD1DCFF3625D022FFD0BC171C0E0",
      INIT_11 => X"022FFD1DCFF1F000022FFD0BC190B017022FFD348841D000022FFD1DCFF0B016",
      INIT_12 => X"022FFD348841F000022FFD1DCFF0B019022FFD0BC181F000022FFD3487E0B018",
      INIT_13 => X"022FFD0BC1A1F000022FFD3487E0B01B022FFD1DCFF1F000022FFD0BC1B0B01A",
      INIT_14 => X"022FFD1DCFF1F000022FFD0BC1D0B01D022FFD348841F000022FFD1DCFF0B01C",
      INIT_15 => X"022FFD348842077B022FFD1DCFF2075C022FFD0BC1C2225D022FFD3487E36256",
      INIT_16 => X"022FFD328622074D022FFD1DD0001004022FFD0BD202078C022FFD25000206DC",
      INIT_17 => X"022FFD2088A2B40F022FFD0BC162B20F022FFD2087E208A5022FFD0BC1722008",
      INIT_18 => X"022FFD1DD002077B022FFD0BD212074D022FFD2089001002022FFD0BC202B80F",
      INIT_19 => X"022FFD0BC180900E022FFD2087E2F032022FFD0BC1901000022FFD3286B22008",
      INIT_1A => X"022FFD0BD222F007022FFD2089009017022FFD0BC2132296022FFD2088A0D004",
      INIT_1B => X"022FFD2087E2F009022FFD0BC1B09019022FFD328742F008022FFD1DD0009018",
      INIT_1C => X"022FFD208902F00B022FFD0BC220901B022FFD2088A2F00A022FFD0BC1A0901A",
      INIT_1D => X"022FFD0BC1D3627C022FFD3287D1D0A0022FFD1DD00030F0022FFD0BD232B04E",
      INIT_1E => X"022FFD0BC23223EF022FFD2088A323EE022FFD0BC1C0D002022FFD2087E09002",
      INIT_1F => X"022FFD207021D0B0022FFD20728223EE022FFD250003627F022FFD208901D0E0",
      INIT_20 => X"022FFD250002DC01022FFD206DE03C0F022FFD206B60BC07022FFD206DE36289",
      INIT_21 => X"022FFD206B6206DC022FFD206DE206B6022FFD20722206DE022FFD206FE2071E",
      INIT_22 => X"022FFD2072220724022FFD206FE3628D022FFD250001D0D0022FFD206DC22003",
      INIT_23 => X"022FFD2500020702022FFD206DE36291022FFD206B61D0F0022FFD206DE2240B",
      INIT_24 => X"022FFD206B60D080022FFD206DE32414022FFD207261D0C0022FFD20712223FB",
      INIT_25 => X"022FFD2B00A0D020022FFD2B0090900D022FFD25000223EC022FFD206DC32414",
      INIT_26 => X"022FFD01C00362A0022FFD209091D04F022FFD2B08E09006022FFD2B1BB363EE",
      INIT_27 => X"022FFD01C10223EF022FFD25000323EE022FFD200590D002022FFD208AE09002",
      INIT_28 => X"022FFD208AE206DC022FFD01C0720720022FFD25000362A7022FFD208AE1D053",
      INIT_29 => X"022FFD250001D052022FFD208AE223ED022FFD01C0D20793022FFD2500020784",
      INIT_2A => X"022FFD01C0409006022FFD2500020733022FFD208AE2071E022FFD01C01362BE",
      INIT_2B => X"022FFD01E0020733022FFD01D00206DE022FFD25000363EC022FFD208AE1D020",
      INIT_2C => X"022FFD01100206E8022FFD01080363EC022FFD208DD1D030022FFD01F0009006",
      INIT_2D => X"022FFD2B3893A3EC022FFD25000206A9022FFD208BD09006022FFD208D420733",
      INIT_2E => X"022FFD2090920730022FFD2B08E206C7022FFD2B63B00100022FFD2B00A2D001",
      INIT_2F => X"022FFD2B37B362C2022FFD2B00A1D055022FFD2B1C922003022FFD25000206DC",
      INIT_30 => X"022FFD2B649362C6022FFD250001D044022FFD209092240B022FFD2B08E20724",
      INIT_31 => X"022FFD20909362D7022FFD2B08E1D04E022FFD2B0BB223FB022FFD2B72A20702",
      INIT_32 => X"022FFD2B57B1D020022FFD2B20A09006022FFD2B64920733022FFD2500020716",
      INIT_33 => X"022FFD2B20A206CC022FFD2B6C90120A022FFD20909206DE022FFD2B08E363EC",
      INIT_34 => X"022FFD250002FC09022FFD209092FB08022FFD2B08E2FA07022FFD2B63B3A3EC",
      INIT_35 => X"022FFD2D1081D054022FFD2D00822420022FFD2B4192FE0B022FFD2B00A2FD0A",
      INIT_36 => X"022FFD2D10809006022FFD2D00820733022FFD2B25920722022FFD2B00A3632A",
      INIT_37 => X"022FFD2DC080120A022FFD2B289206DE022FFD2B00A363EC022FFD250001D020",
      INIT_38 => X"022FFD250002FB3F022FFD2DF082FA3E022FFD2DE083A3EC022FFD2DD08206CC",
      INIT_39 => X"022FFD09D08322E9022FFD09C080DE80022FFD2B28932308022FFD2B00A1DEC0",
      INIT_3A => X"022FFD208B7206A2022FFD25000206A2022FFD09F08206A2022FFD09E08223EC",
      INIT_3B => X"022FFD208BD206A2022FFD208DD363EC022FFD2500018FA0022FFD208E40BA02",
      INIT_3C => X"022FFD208D42FF0F022FFD011002FE0E022FFD010202FD0D022FFD250002FC0C",
      INIT_3D => X"022FFD0BC0C0BE11022FFD0BD0D0BD10022FFD0BE0E206DC022FFD0BF0F20AAD",
      INIT_3E => X"022FFD208AB206B6022FFD208F100CF0022FFD2500020700022FFD208EE0BF12",
      INIT_3F => X"022FFD25000206B6022FFD2090000CD0022FFD25000206B6022FFD208C300CE0",
      INIT_40 => X"022FFD208D4206C7022FFD01101206BD022FFD01080206BD022FFD208F10BC3F",
      INIT_41 => X"022FFD208C9223EC022FFD208A8206B6022FFD208BD0BC3E022FFD208B720730",
      INIT_42 => X"022FFD369090BA02022FFD0D008206A2022FFD0900E206A2022FFD25000206A2",
      INIT_43 => X"022FFD3290D2FC10022FFD0D002206A2022FFD0900E363EC022FFD2500018EA0",
      INIT_44 => X"022FFD2F116206DC022FFD0110020B5F022FFD370012FE12022FFD250002FD11",
      INIT_45 => X"022FFD2F11A0BC0F022FFD2F1190BD0E022FFD2F1180BE0D022FFD2F1170BF0C",
      INIT_46 => X"022FFD0108420730022FFD2F11D206C7022FFD2F11C206BD022FFD2F11B206BD",
      INIT_47 => X"022FFD11001206B6022FFD2B00B00CE0022FFD2B00A206B6022FFD2B6C900CD0",
      INIT_48 => X"022FFD1D0FF206BD022FFD209860BC3F022FFD2092C206B6022FFD2092700CF0",
      INIT_49 => X"022FFD09C080BC3E022FFD2500020730022FFD37000206C7022FFD3691F206BD",
      INIT_4A => X"022FFD2500036348022FFD09F081D058022FFD09E08223EC022FFD09D08206B6",
      INIT_4B => X"022FFD329572072A022FFD1D0C23E348022FFD329420D004022FFD1D0C109002",
      INIT_4C => X"022FFD20975363EC022FFD001E01D020022FFD2097509006022FFD001F020733",
      INIT_4D => X"022FFD209753A3EC022FFD001C0206CC022FFD2097501208022FFD001D0206DE",
      INIT_4E => X"022FFD2F12C2FC36022FFD2F12A2FB35022FFD2F1282FA34022FFD01100206DC",
      INIT_4F => X"022FFD2F12D0BE36022FFD2F12B0BD35022FFD2F1290BC34022FFD2F12E2FD3B",
      INIT_50 => X"022FFD209752067A022FFD001F001B00022FFD2500001A01022FFD2F12F0BF3B",
      INIT_51 => X"022FFD20975223EC022FFD001D0206B6022FFD2097509C07022FFD001E020628",
      INIT_52 => X"022FFD2F62A20733022FFD2F7282071C022FFD2097536390022FFD001C01D051",
      INIT_53 => X"022FFD01500206DE022FFD01400363EC022FFD2F42E1D020022FFD2F52C09006",
      INIT_54 => X"022FFD2F62B1DEC0022FFD2F7293A3EC022FFD01700206CC022FFD016000120A",
      INIT_55 => X"022FFD001F0223EC022FFD2294132358022FFD2F42F0DE80022FFD2F52D32364",
      INIT_56 => X"022FFD001D00BA02022FFD20975206A2022FFD001E0206A2022FFD20975206A2",
      INIT_57 => X"022FFD001702FC0C022FFD20975206A2022FFD001C0363EC022FFD2097518FA0",
      INIT_58 => X"022FFD001602237A022FFD037F02FF0F022FFD2F1292FE0E022FFD0310F2FD0D",
      INIT_59 => X"022FFD001500BA02022FFD036F0206A2022FFD2F12B206A2022FFD0310F206A2",
      INIT_5A => X"022FFD001402FC10022FFD035F0206A2022FFD2F12D363EC022FFD0310F18EA0",
      INIT_5B => X"022FFD011000B105022FFD034F00B004022FFD2F12F2FE12022FFD0310F2FD11",
      INIT_5C => X"022FFD2F12E1AE20022FFD2F12C1AD10022FFD2F12A18C00022FFD2F1280B206",
      INIT_5D => X"022FFD1410003401022FFD144000B40F022FFD1410020B5F022FFD229413E3EC",
      INIT_5E => X"022FFD14100208FA022FFD1460020896022FFD141002237A022FFD145002F40F",
      INIT_5F => X"022FFD141000127B022FFD144002B6C9022FFD141002B00A022FFD14700206DC",
      INIT_60 => X"022FFD1410009C08022FFD1460009D08022FFD1410009E08022FFD1450009F08",
      INIT_61 => X"022FFD0B82800CE0022FFD00170206B6022FFD2500000CD0022FFD14700206B6",
      INIT_62 => X"022FFD20A51206DC022FFD20A33206B6022FFD20A2700CF0022FFD0B929206B6",
      INIT_63 => X"022FFD14B00223ED022FFD14A0E208A5022FFD0BA2536380022FFD01B0019201",
      INIT_64 => X"022FFD14A0020733022FFD14B002071A022FFD14A00363EE022FFD0BA261D050",
      INIT_65 => X"022FFD0B217206DE022FFD14B00363EC022FFD14A001D020022FFD14B0009006",
      INIT_66 => X"022FFD14B00206A2022FFD14A003A3EC022FFD2F217206CC022FFD062B001202",
      INIT_67 => X"022FFD14B0018BC0022FFD14A000BC02022FFD14B00206A2022FFD14A00206A2",
      INIT_68 => X"022FFD14B0009002022FFD14A00206A2022FFD14B00206A2022FFD14A00363EC",
      INIT_69 => X"022FFD14A001FB00022FFD14B001DA00022FFD14A00363DA022FFD0BA270D040",
      INIT_6A => X"022FFD0B216323DA022FFD14B001FB00022FFD14A001DA20022FFD14B00323DA",
      INIT_6B => X"022FFD0B82A1DAA0022FFD00160323DA022FFD2FB161FB00022FFD06B201DA80",
      INIT_6C => X"022FFD20A511FB00022FFD20A331DAC0022FFD20A27323DA022FFD0B92B1FB00",
      INIT_6D => X"022FFD14B00323DA022FFD14A0E1FB00022FFD0BA251DAE0022FFD01B00323DA",
      INIT_6E => X"022FFD14A001DA80022FFD14B00323DA022FFD14A001FB01022FFD0BA261DA20",
      INIT_6F => X"022FFD0B2191FB01022FFD14B001DAA0022FFD14A00323DA022FFD14B001FB01",
      INIT_70 => X"022FFD14B00323DA022FFD14A001FB01022FFD2F2191DAC0022FFD062B0323DA",
      INIT_71 => X"022FFD14B001DA20022FFD14A00323DA022FFD14B001FB02022FFD14A001DA00",
      INIT_72 => X"022FFD14B001FB02022FFD14A001DA80022FFD14B00323DA022FFD14A001FB02",
      INIT_73 => X"022FFD14A00323DA022FFD14B001FB02022FFD14A001DAA0022FFD0BA27323DA",
      INIT_74 => X"022FFD0B2181DA00022FFD14B00323DA022FFD14A001FB02022FFD14B001DAC0",
      INIT_75 => X"022FFD0B82C1FB03022FFD001501DAE0022FFD2FB18323DA022FFD06B201FB03",
      INIT_76 => X"022FFD20A5120896022FFD20A33206DC022FFD20A27223EC022FFD0B92D323DA",
      INIT_77 => X"022FFD14B00208B7022FFD14A0E208D4022FFD0BA25001B0022FFD01B00000A0",
      INIT_78 => X"022FFD14A00206B6022FFD14B0000CF0022FFD14A0000BC0022FFD0BA26208E4",
      INIT_79 => X"022FFD0B21B206B6022FFD14B0000CD0022FFD14A00206B6022FFD14B0000CE0",
      INIT_7A => X"022FFD14B00223EC022FFD14A00208A5022FFD2F21B206B6022FFD062B000CB0",
      INIT_7B => X"022FFD14B0020718022FFD14A0022008022FFD14B002077B022FFD14A00206DC",
      INIT_7C => X"022FFD14B00208A5022FFD14A0020137022FFD14B0020896022FFD14A00206DC",
      INIT_7D => X"022FFD14A0001002022FFD14B002B80F022FFD14A002B40F022FFD0BA272B20F",
      INIT_7E => X"022FFD0B21A206DC022FFD14B0022008022FFD14A002077B022FFD14B002074D",
      INIT_7F => X"022FFD0B82E2B20F02BFF300140208A502BFF02FB1A20137022FFD06B2020896",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => address(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"000000",
      ADDRBWRADDR(14 downto 6) => \CORCombinational.dly_address_b\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"000000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => casa2(31 downto 0),
      CASDINB(31 downto 0) => casb2(31 downto 0),
      CASDINPA(3 downto 0) => caspa2(3 downto 0),
      CASDINPB(3 downto 0) => caspb2(3 downto 0),
      CASDOMUXA => bram2_en,
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => casa1(31 downto 0),
      CASDOUTB(31 downto 0) => casb1(31 downto 0),
      CASDOUTPA(3 downto 0) => caspa1(3 downto 0),
      CASDOUTPB(3 downto 0) => caspb1(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => casdbiterr1,
      CASOUTSBITERR => cassbiterr1,
      CLKARDCLK => icap_clk,
      CLKBWRCLK => icap_clk,
      DBITERR => NLW_firmware1_DBITERR_UNCONNECTED,
      DINADIN(31 downto 20) => p_1_in(11 downto 0),
      DINADIN(19) => firmware0_n_80,
      DINADIN(18) => firmware0_n_81,
      DINADIN(17) => firmware0_n_82,
      DINADIN(16) => firmware0_n_83,
      DINADIN(15) => firmware0_n_84,
      DINADIN(14) => firmware0_n_85,
      DINADIN(13) => firmware0_n_86,
      DINADIN(12) => firmware0_n_87,
      DINADIN(11) => firmware0_n_88,
      DINADIN(10) => firmware0_n_89,
      DINADIN(9) => firmware0_n_90,
      DINADIN(8) => firmware0_n_91,
      DINADIN(7) => firmware0_n_92,
      DINADIN(6) => firmware0_n_93,
      DINADIN(5) => firmware0_n_94,
      DINADIN(4) => firmware0_n_95,
      DINADIN(3) => firmware0_n_96,
      DINADIN(2) => firmware0_n_97,
      DINADIN(1) => firmware0_n_98,
      DINADIN(0) => firmware0_n_99,
      DINBDIN(31) => firmware0_n_100,
      DINBDIN(30) => firmware0_n_101,
      DINBDIN(29) => firmware0_n_102,
      DINBDIN(28) => firmware0_n_103,
      DINBDIN(27) => firmware0_n_104,
      DINBDIN(26) => firmware0_n_105,
      DINBDIN(25) => firmware0_n_106,
      DINBDIN(24) => firmware0_n_107,
      DINBDIN(23) => firmware0_n_108,
      DINBDIN(22) => firmware0_n_109,
      DINBDIN(21) => firmware0_n_110,
      DINBDIN(20) => firmware0_n_111,
      DINBDIN(19) => firmware0_n_112,
      DINBDIN(18) => firmware0_n_113,
      DINBDIN(17) => firmware0_n_114,
      DINBDIN(16) => firmware0_n_115,
      DINBDIN(15) => firmware0_n_116,
      DINBDIN(14) => firmware0_n_117,
      DINBDIN(13) => firmware0_n_118,
      DINBDIN(12) => firmware0_n_119,
      DINBDIN(11) => firmware0_n_120,
      DINBDIN(10) => firmware0_n_121,
      DINBDIN(9) => firmware0_n_122,
      DINBDIN(8) => firmware0_n_123,
      DINBDIN(7) => firmware0_n_124,
      DINBDIN(6) => firmware0_n_125,
      DINBDIN(5 downto 0) => p_1_in(17 downto 12),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => NLW_firmware1_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_firmware1_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_firmware1_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_firmware1_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_firmware1_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^bram_enable\,
      ENBWREN => bram_wr_en1,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_firmware1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_firmware1_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"11111111"
    );
firmware2: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "TRUE",
      EN_ECC_WRITE => "TRUE",
      INITP_00 => X"9A299AA8B90EB908B98B3F91A61E901191288A2399A21CA1BD04AF17913C3934",
      INITP_01 => X"3E89898984931A1A869F9FA7A1AF17A6A10E228B83121794A6B0853F0E3702BA",
      INITP_02 => X"A1A32A253E9F300D01141882A2A6BEBD3B0B2A0CAD87B600A79F1A2DB98D0A1D",
      INITP_03 => X"38AABABA9F391E9634153F2419BE3B8D3D00131EA338BCA6AC2F8EA1120694AA",
      INITP_04 => X"29903B92239E951D0684A32719BF1E1AB7A60C3F89172A3881B99BB93D3D80A4",
      INITP_05 => X"9202B31C1F28B5992982B69732B41F2B0028A9B00A88B9B70F0D87BF1DA79BB8",
      INITP_06 => X"253B008E2E39349A1B96143E23AD999BBD3B9A8424A21A0DA48D3F13872538BC",
      INITP_07 => X"051A23BA079D110D269B03BA9496ABB0313730128B81B0A1A82D88B31D268C8A",
      INITP_08 => X"B923863C119C09ABA3B9249391998FB6B8BF33163E99A4052C8101ACB48DBD30",
      INITP_09 => X"9C279826801AB936823531BC0A3EA784910202BB24943039060A889925061399",
      INITP_0A => X"A9302E1C1E97BBAFA9AA3F0D90AFA8080DACBC9014AC32888EAF3E27B5A7083E",
      INITP_0B => X"8F3D382CBC8596333E8D90BD9AAAA993AB9F8A9FB402300E10AD2D902EBD012D",
      INITP_0C => X"9CAC950D0AA4311B832A22113818A3A102958A2EAAAF871822B009BAA6149A84",
      INITP_0D => X"1C8B8C943DB2869A15263C3285B18A1B040D030B1DBAB81DB63A9F9F8CB30605",
      INITP_0E => X"0939B9A1B89D222802AA2D368688A702253000281DA91182B99437BF9823941F",
      INITP_0F => X"172E0F28AC9DBEB01B34370DBC158F0B810D99B4BA083E34BC97B2391907169F",
      INIT_00 => X"00000020A512F01E00000020A330100000000020A272B80F0000000B92F2B40F",
      INIT_01 => X"00000014B002070200000014A0E207690000000BA252F03200000001B0001001",
      INIT_02 => X"00000014A00206DC00000014B002247A00000014A00206DE0000000BA26206E2",
      INIT_03 => X"0000000B21D2B80F00000014B002B40F00000014A002B20F00000014B0020896",
      INIT_04 => X"00000014B00224BB00000014A00207690000002F21D2F032000000062B001002",
      INIT_05 => X"00000014B00206B600000014A000BC0B00000014B00206DE00000014A0020716",
      INIT_06 => X"00000014B00206B600000014A000BC0900000014B00206B600000014A000BC0A",
      INIT_07 => X"00000014A00206B600000014B000BC0700000014A00206B60000000BA270BC08",
      INIT_08 => X"0000000B21C3242800000014B000D00800000014A000900200000014B00206DC",
      INIT_09 => X"00000001A0022008000000250002074D0000002FB1C0101000000006B2020896",
      INIT_0A => X"0000000D8FF2200800000014A002077B0000000D1FF2074D00000001B0001000",
      INIT_0B => X"0000000DAFF0BD0A00000014A000BC090000000D9FF0BB0800000014A000BA07",
      INIT_0C => X"00000000200030F000000025000000E00000002FB2501F0000000014B000BE0B",
      INIT_0D => X"00000014A043243900000014A000D0800000000D1FF3243900000001A001D0C0",
      INIT_0E => X"00000014A042F01400000014A040301F00000014A04000A000000014A0422475",
      INIT_0F => X"000000022A0000B000000014A04206A200000014A04206A200000014A04206A2",
      INIT_10 => X"000000250002F0150000002F2263E475000000062B01D07B00000020A440307F",
      INIT_11 => X"00000014B00000F000000014A062F01300000000B900300300000000A80000E0",
      INIT_12 => X"00000014B002FD1100000014A062FC1000000014B00206A200000014A0603003",
      INIT_13 => X"00000014B002F01300000014A063645F00000014B000DF0800000014A062FE12",
      INIT_14 => X"00000001A001CAB0000000003800BB02000000002100BA130000002500003F01",
      INIT_15 => X"0000000D2FF2FE0E000000033012FD0D000000032AA2FC0C00000001B0036475",
      INIT_16 => X"0000000DAFF03F0300000014A0014F000000000D3FF14E0600000014A002FF0F",
      INIT_17 => X"00000001A000BA130000000038022472000000002103247500000014B081DF01",
      INIT_18 => X"00000014A0003E010000000D2FF36475000000033021CAB0000000032CC0BB02",
      INIT_19 => X"00000014B080B0040000000DAFF2FE1200000014A002FD110000000D3FF2FC10",
      INIT_1A => X"000000032F01AD1000000001A0018C00000000003800B206000000002100B105",
      INIT_1B => X"0000000D3FF0B40F00000014A0020B5F0000000D2FF3E475000000033041AE20",
      INIT_1C => X"0000002FB272068700000014B08208FA0000000DAFF2F40F00000014A0003401",
      INIT_1D => X"0000000100C2074D000000008400100000000000950208A500000025000208FE",
      INIT_1E => X"000000131000D040000000148080900F0000001490E22008000000011002077B",
      INIT_1F => X"00000036A830D0800000001D1003618B00000036A790D020000000190013618B",
      INIT_20 => X"0000000D50836182000000250000D080000000018FF0900E000000019FF36186",
      INIT_21 => X"000000018FF3617C000000019FF0D020000000011023617F00000036A890D040",
      INIT_22 => X"000000001500D0040000003EA950900E0000001D10336179000000250000D010",
      INIT_23 => X"0000001410E2B04E000000118012F00B000000018FF0901B0000000004032494",
      INIT_24 => X"000000011042247A0000000190F324A30000003EA8E1D0E000000014008030F0",
      INIT_25 => X"0000001982809006000000008403647A000000009500D020000000250000900D",
      INIT_26 => X"000000019FF3647A000000011021D0530000003EA9E324A30000001B9041D049",
      INIT_27 => X"0000000381F20702000000001802078400000025000206DC000000018FF20720",
      INIT_28 => X"000000149002070C000000141062247A00000014900206DE00000014106206E2",
      INIT_29 => X"0000001D90F208A5000000011022012D000000149002089600000014106206DC",
      INIT_2A => X"0000000110401000000000390002D0030000001D80C2F03200000036AAB01000",
      INIT_2B => X"0000000B20C2089600000020B4622008000000370012077B000000250002074D",
      INIT_2C => X"00000014206207410000000BA0F010600000000B40E208A50000000B30D2012D",
      INIT_2D => X"000000142080100000000014A002D003000000144002F0320000001430001000",
      INIT_2E => X"0000001450E01D000000000340322008000000005402077B0000000327F2074D",
      INIT_2F => X"000000007A02FE11000000036032FD10000000006A001F000000001450E01E00",
      INIT_30 => X"00000001D0020B5F000000037032FD1E0000001470E01D010000001470E2FF12",
      INIT_31 => X"00000032AEA0B00F0000001D602324CD000000008201D0FF00000001E000B00F",
      INIT_32 => X"00000001A002091100000001900208FA00000032B112F00F0000001D60303001",
      INIT_33 => X"00000032AD7324D60000001CE400D00400000036AD00900E0000001CD30221AD",
      INIT_34 => X"00000013A00030F0000000139002B04E000000108F02F00B00000009F080901B",
      INIT_35 => X"00000001D000B10500000022ACC0B00400000013E00324E800000011D011D0E0",
      INIT_36 => X"00000032AE10BF120000001CD500BE110000000BF310BD100000000BE300B206",
      INIT_37 => X"00000011D011EF2000000013A001EE10000000129F01CD00000000108E003F01",
      INIT_38 => X"00000003A0113F000000002F91113E000000002F81011D0100000022ADA324E8",
      INIT_39 => X"0000002FA12224C100000004A002FF12000000140062FE110000000B0022FD10",
      INIT_3A => X"0000000BE31010000000000BD30208A5000000250002012D0000003700020896",
      INIT_3B => X"00000001F002077B00000001A002074D00000001900010000000000B2372D103",
      INIT_3C => X"000000129E03654B000000108D01D00100000032AF70B01E0000001CF2022008",
      INIT_3D => X"00000001F0020A7500000022AF00B51700000011F010B41600000013A0001200",
      INIT_3E => X"000000108200B41800000032B00042100000001CF502F9170000000B23C2F816",
      INIT_3F => X"00000022AF92F91900000011F012F81800000013A0020A75000000139000B519",
      INIT_40 => X"0000001180220A7500000032B080B51B0000001CF300B41A00000001F0004210",
      INIT_41 => X"00000022B010B41C00000011F0104210000000138002F91B000000139002F81A",
      INIT_42 => X"0000000B0022F91D00000003A012F81C0000002F91120A750000002F8100B51D",
      INIT_43 => X"00000037000012020000002FA123251C00000004A000D2020000001400604210",
      INIT_44 => X"0000000B237208110000000BE31208040000000BD3020819000000250002F21E",
      INIT_45 => X"00000001F001D00200000001A00324AF000000019001D001000000018000B032",
      INIT_46 => X"000000129E02258C000000108D00502000000032B1F2073B0000001CF20324CD",
      INIT_47 => X"0000000BF390B01600000022B1820C1500000011F012F21E00000013A0001204",
      INIT_48 => X"00000001F001D0FF00000032B2C2F1150000001DF002F01400000003FF00B117",
      INIT_49 => X"000000108200B11900000032B2C0B0180000001DF02346870000000B23C1F1FF",
      INIT_4A => X"00000022B251F1FF00000011F011D0FF00000013A002F115000000139002F014",
      INIT_4B => X"00000032B352F0140000001CF500B11B0000000B2380B01A00000001F0034687",
      INIT_4C => X"00000011F013468700000013A001F1FF000000139001D0FF000000108202F115",
      INIT_4D => X"00000032B3D2F1150000001CF302F01400000001F000B11D00000022B2E0B01C",
      INIT_4E => X"00000011F010B0320000001380034687000000139001F1FF000000118011D0FF",
      INIT_4F => X"00000003A01208190000002F911208FE0000002F8103653F00000022B361D000",
      INIT_50 => X"0000002FA120B03200000004A002081100000014006208400000000B00220804",
      INIT_51 => X"00000009508324CD00000020B581D00200000025000324AF000000370001D001",
      INIT_52 => X"000000095081D0080000002F6052258C0000002F504030DF000000096082073B",
      INIT_53 => X"00000009508207000000002F6312071E0000002F530207000000000960836558",
      INIT_54 => X"000000095081D0010000002F6380B0320000002F537207E900000009608206DC",
      INIT_55 => X"000000250002258C0000002F606050200000002F53C2073B00000009608324AF",
      INIT_56 => X"0000002D5092072400000001100206FC0000000160736565000000015F01D010",
      INIT_57 => X"000000370010B03200000025000207E90000002D10B206DC0000002D60A2072A",
      INIT_58 => X"0000000BA12050200000000B9112073B0000000B810324AF00000020B461D001",
      INIT_59 => X"00000001200206FC0000002FA36365720000002F9351D0200000002F8342258C",
      INIT_5A => X"00000018830207E90000000B431206DC0000000B3302072A0000000BD3720724",
      INIT_5B => X"000000112012073B0000003AB76324AF0000001BA001D0010000001A9400B032",
      INIT_5C => X"0000001C2D03657F0000002FA361D0400000002F9352258C0000002F834030DF",
      INIT_5D => X"0000000B935206DC0000000B8342072A00000022B6B2072400000032BA8206FC",
      INIT_5E => X"00000001300324AF000000012001D0010000002F20F0B0320000000BA36207E9",
      INIT_5F => X"000000188401D08000000032C0E2258C0000001D401030DF000000094082073B",
      INIT_60 => X"00000011201207140000003AB89207180000001BA002071E0000001B90036017",
      INIT_61 => X"0000002FA361D0010000002F9350B0320000002F834207E900000013300206DC",
      INIT_62 => X"0000000BA362258C0000000B935030DF0000000B8342073B00000022B7C324AF",
      INIT_63 => X"0000000B40C220080000002F80C2074D0000002F20D010080000002F30E20741",
      INIT_64 => X"00000014408090020000001450836604000000144061D0040000000B50D0B01E",
      INIT_65 => X"00000014608206760000000B60E206500000000B50D325EF0000002F40C0D004",
      INIT_66 => X"0000000B70F1FF320000000B60E1DEDB0000002F50D0BF05000000145080BE04",
      INIT_67 => X"0000000377F011BB0000001470001ED00000001460801F0900000014608325A2",
      INIT_68 => X"0000001400601E400000000B00201F0A00000001700225A60000002F70E0120B",
      INIT_69 => X"0000002500009D0700000037000206280000002F70F0120C000000047000112B",
      INIT_6A => X"00000032BDF1CE100000001D4002DD08000000034F02DE090000000B4392DF0A",
      INIT_6B => X"0000001B900225B300000018840365B0000000012001CF200000000B43C365B0",
      INIT_6C => X"0000002F8340B01600000011201225A60000003ABB913F000000001BA0011E01",
      INIT_6D => X"00000032BDF1D0FF0000001D2022F1150000002FA362F0140000002F9350B117",
      INIT_6E => X"0000000BA36012000000000B935206300000000B834325BF00000022BAE1F1FF",
      INIT_6F => X"000000188400B018000000194022F2200000000B43C142000000002F20F0D0FF",
      INIT_70 => X"0000000B8341D0FF0000003EC0E2F1150000001BA002F0140000001B9000B119",
      INIT_71 => X"00000000380012000000000B20F206300000000BA36325CB0000000B9351F1FF",
      INIT_72 => X"000000143060B01A000000148082F2210000001490E14200000000033010D0FF",
      INIT_73 => X"000000148061D0FF0000002F30C2F115000000143082F014000000148080B11B",
      INIT_74 => X"00000014908012000000002F80D2063000000014808325D7000000149081F1FF",
      INIT_75 => X"0000002F20E0B01C0000001420E2F2220000001420614200000000142000D0FF",
      INIT_76 => X"000000043002F115000000140062F0140000000B00201200000000013010B11D",
      INIT_77 => X"0000000B4382063000000025000325E4000000370001F1FF0000002F30F1D0FF",
      INIT_78 => X"0000001BA002F2230000001B90014200000000188400D0FF0000000120001200",
      INIT_79 => X"0000002F9350B0200000002F8342081100000011201208590000003ABEA2080C",
      INIT_7A => X"0000000B935040100000000B8340B12200000022BE1040100000002FA360B121",
      INIT_7B => X"000000194022073B0000000B438325F20000002F20F040100000000BA360B123",
      INIT_7C => X"0000003EC0E030BF0000001BA002073B0000001B900225F40000001884005040",
      INIT_7D => X"0000000B20F0B01F0000000BA362F03B0000000B9350B00E0000000B83420741",
      INIT_7E => X"0000002F30C2B20F00000014308208A500000014808366000000000B30019001",
      INIT_7F => X"0000002F80D226250000001480801002000000149082B80F000000148062B40F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => address(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"000000",
      ADDRBWRADDR(14 downto 6) => \CORCombinational.dly_address_b\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"000000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => casa2(31 downto 0),
      CASDOUTB(31 downto 0) => casb2(31 downto 0),
      CASDOUTPA(3 downto 0) => caspa2(3 downto 0),
      CASDOUTPB(3 downto 0) => caspb2(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => NLW_firmware2_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_firmware2_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => icap_clk,
      CLKBWRCLK => icap_clk,
      DBITERR => NLW_firmware2_DBITERR_UNCONNECTED,
      DINADIN(31 downto 20) => p_1_in(11 downto 0),
      DINADIN(19) => firmware0_n_80,
      DINADIN(18) => firmware0_n_81,
      DINADIN(17) => firmware0_n_82,
      DINADIN(16) => firmware0_n_83,
      DINADIN(15) => firmware0_n_84,
      DINADIN(14) => firmware0_n_85,
      DINADIN(13) => firmware0_n_86,
      DINADIN(12) => firmware0_n_87,
      DINADIN(11) => firmware0_n_88,
      DINADIN(10) => firmware0_n_89,
      DINADIN(9) => firmware0_n_90,
      DINADIN(8) => firmware0_n_91,
      DINADIN(7) => firmware0_n_92,
      DINADIN(6) => firmware0_n_93,
      DINADIN(5) => firmware0_n_94,
      DINADIN(4) => firmware0_n_95,
      DINADIN(3) => firmware0_n_96,
      DINADIN(2) => firmware0_n_97,
      DINADIN(1) => firmware0_n_98,
      DINADIN(0) => firmware0_n_99,
      DINBDIN(31) => firmware0_n_100,
      DINBDIN(30) => firmware0_n_101,
      DINBDIN(29) => firmware0_n_102,
      DINBDIN(28) => firmware0_n_103,
      DINBDIN(27) => firmware0_n_104,
      DINBDIN(26) => firmware0_n_105,
      DINBDIN(25) => firmware0_n_106,
      DINBDIN(24) => firmware0_n_107,
      DINBDIN(23) => firmware0_n_108,
      DINBDIN(22) => firmware0_n_109,
      DINBDIN(21) => firmware0_n_110,
      DINBDIN(20) => firmware0_n_111,
      DINBDIN(19) => firmware0_n_112,
      DINBDIN(18) => firmware0_n_113,
      DINBDIN(17) => firmware0_n_114,
      DINBDIN(16) => firmware0_n_115,
      DINBDIN(15) => firmware0_n_116,
      DINBDIN(14) => firmware0_n_117,
      DINBDIN(13) => firmware0_n_118,
      DINBDIN(12) => firmware0_n_119,
      DINBDIN(11) => firmware0_n_120,
      DINBDIN(10) => firmware0_n_121,
      DINBDIN(9) => firmware0_n_122,
      DINBDIN(8) => firmware0_n_123,
      DINBDIN(7) => firmware0_n_124,
      DINBDIN(6) => firmware0_n_125,
      DINBDIN(5 downto 0) => p_1_in(17 downto 12),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => NLW_firmware2_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_firmware2_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_firmware2_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_firmware2_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_firmware2_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^bram_enable\,
      ENBWREN => bram_wr_en2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_firmware2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_firmware2_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"11111111"
    );
\instr_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => address(9),
      Q => instr_sel(0),
      R => \^sr\(0)
    );
\instr_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => address(10),
      Q => instr_sel(1),
      R => \^sr\(0)
    );
\instr_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => address(11),
      Q => instr_sel(2),
      R => \^sr\(0)
    );
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => '1',
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => \^bram_enable\,
      R => '0'
    );
sync_h: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => D0,
      Q => q_sync_h,
      S => '0'
    );
sync_h_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_enable\,
      O => D0
    );
sync_i: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_h,
      Q => \^sr\(0),
      S => '0'
    );
sync_j: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \^sleep\,
      Q => q_sync_j,
      R => \^sr\(0)
    );
sync_k: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_j,
      Q => q_sync_k,
      S => \^sr\(0)
    );
sync_l: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_k,
      Q => \^sleep\,
      S => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu is
  port (
    \OUTRegistered.instruction_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_strobe_flop_0 : out STD_LOGIC;
    \ports_loop[2].port_id_flop_0\ : out STD_LOGIC;
    const_strobe_flop_0 : out STD_LOGIC;
    bram_wr_en0 : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    casdomux2 : out STD_LOGIC;
    bram_wr_en2 : out STD_LOGIC;
    bram2_en : out STD_LOGIC;
    bram_wr_en1 : out STD_LOGIC;
    \ports_loop[1].port_id_flop_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    timer_snap0 : out STD_LOGIC;
    out_port_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ports_loop[2].port_id_flop_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fetch_txwrite : out STD_LOGIC;
    const_strobe_flop_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ports_loop[2].port_id_flop_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    const_strobe_flop_2 : out STD_LOGIC;
    bgo_strobe0 : out STD_LOGIC;
    firmware0 : out STD_LOGIC;
    monitor_txwrite : out STD_LOGIC;
    fetch_rxread : out STD_LOGIC;
    monitor_rxread : out STD_LOGIC;
    \ports_loop[2].out_port_flop_0\ : out STD_LOGIC;
    fecc_endofframe_0 : out STD_LOGIC;
    fecc_endofscan_0 : out STD_LOGIC;
    sync_g : out STD_LOGIC;
    sync_g_0 : out STD_LOGIC;
    sync_g_1 : out STD_LOGIC;
    fecc_crcerror_0 : out STD_LOGIC;
    rdbk_nsb_reg : out STD_LOGIC;
    \ports_loop[6].out_port_flop_0\ : out STD_LOGIC;
    \sta_ptr_reg[10]\ : in STD_LOGIC;
    burst : in STD_LOGIC;
    rom_error : in STD_LOGIC;
    bram_enable : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sta_ptr_reg[3]\ : in STD_LOGIC;
    \sta_ptr_reg[4]\ : in STD_LOGIC;
    \sta_ptr_reg[5]\ : in STD_LOGIC;
    \sta_ptr_reg[10]_0\ : in STD_LOGIC;
    \ports_loop[7].in_port_flop_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ports_loop[0].in_port_flop_i_4_0\ : in STD_LOGIC;
    \ports_loop[0].in_port_flop_i_4_1\ : in STD_LOGIC;
    \ports_loop[7].in_port_flop_i_2_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ports_loop[1].in_port_flop_i_2_0\ : in STD_LOGIC;
    \ports_loop[1].in_port_flop_i_2_1\ : in STD_LOGIC;
    \ports_loop[2].in_port_flop_0\ : in STD_LOGIC;
    \ports_loop[3].in_port_flop_0\ : in STD_LOGIC;
    \ports_loop[4].in_port_flop_0\ : in STD_LOGIC;
    \ports_loop[5].in_port_flop_0\ : in STD_LOGIC;
    sync_out : in STD_LOGIC;
    \ports_loop[6].in_port_flop_i_3_0\ : in STD_LOGIC;
    \ports_loop[6].in_port_flop_i_3_1\ : in STD_LOGIC;
    \ports_loop[7].in_port_flop_i_2_1\ : in STD_LOGIC;
    \ports_loop[7].in_port_flop_i_2_2\ : in STD_LOGIC;
    \ports_loop[7].in_port_flop_i_3_0\ : in STD_LOGIC_VECTOR ( 39 downto 0 );
    p_6_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cgo_flag_reg : in STD_LOGIC;
    monitor_txfull : in STD_LOGIC;
    rom_cr_ne_err : in STD_LOGIC;
    eos_flag : in STD_LOGIC;
    eof_flag : in STD_LOGIC;
    aux_cr_ne_err : in STD_LOGIC;
    monitor_rxempty : in STD_LOGIC;
    p_4_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aux_cr_es_err : in STD_LOGIC;
    aux_uc_err : in STD_LOGIC;
    rdbk_crc : in STD_LOGIC;
    cgo_flag_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    fecc_endofframe : in STD_LOGIC;
    fecc_endofscan : in STD_LOGIC;
    aux_cr_ne_err_reg : in STD_LOGIC;
    aux_cr_es_err_reg : in STD_LOGIC;
    aux_uc_err_reg : in STD_LOGIC;
    fecc_crcerror : in STD_LOGIC;
    fecc_eccerrornotsingle : in STD_LOGIC;
    fecc_eccerrorsingle : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    flag_enable_flop_0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    icap_clk : in STD_LOGIC;
    sleep : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu is
  signal \^outregistered.instruction_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^address\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal alu_mux_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal alu_mux_sel_value : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal alu_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arith_carry : STD_LOGIC;
  signal arith_carry_in : STD_LOGIC;
  signal arith_logical_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arith_logical_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arith_logical_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bank : STD_LOGIC;
  signal bank_value : STD_LOGIC;
  signal carry_arith_logical : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal carry_flag : STD_LOGIC;
  signal carry_flag_value : STD_LOGIC;
  signal carry_in_zero : STD_LOGIC;
  signal carry_lower_parity : STD_LOGIC;
  signal carry_lower_zero : STD_LOGIC;
  signal carry_middle_zero : STD_LOGIC;
  signal carry_pc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal cgo_flag_i_2_n_0 : STD_LOGIC;
  signal \^const_strobe_flop_0\ : STD_LOGIC;
  signal \^const_strobe_flop_2\ : STD_LOGIC;
  signal const_strobe_value : STD_LOGIC;
  signal cs : STD_LOGIC;
  signal \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\ : STD_LOGIC;
  signal \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\ : STD_LOGIC;
  signal drive_carry_in_zero : STD_LOGIC;
  signal feed_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fetch_rxread_INST_0_i_1_n_0 : STD_LOGIC;
  signal flag_enable : STD_LOGIC;
  signal flag_enable_type : STD_LOGIC;
  signal flag_enable_value : STD_LOGIC;
  signal half_arith_logical : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal half_pc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal half_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_port_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internal_reset : STD_LOGIC;
  signal internal_reset_value : STD_LOGIC;
  signal loadstar_type : STD_LOGIC;
  signal logical_carry_mask : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lower_parity : STD_LOGIC;
  signal lower_parity_sel : STD_LOGIC;
  signal lower_zero : STD_LOGIC;
  signal lower_zero_sel : STD_LOGIC;
  signal middle_zero : STD_LOGIC;
  signal middle_zero_sel : STD_LOGIC;
  signal monitor_rxread_INST_0_i_1_n_0 : STD_LOGIC;
  signal move_type : STD_LOGIC;
  signal out_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^out_port_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal parity : STD_LOGIC;
  signal pc_mode : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pc_move_is_valid : STD_LOGIC;
  signal pc_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pc_vector : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pop_stack : STD_LOGIC;
  signal port_id : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal port_id_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ports_loop[0].in_port_flop_i_10_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_11_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_12_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_6_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_7_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_8_n_0\ : STD_LOGIC;
  signal \ports_loop[0].in_port_flop_i_9_n_0\ : STD_LOGIC;
  signal \ports_loop[1].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[1].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[1].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[1].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[1].in_port_flop_i_6_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_10_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_7_n_0\ : STD_LOGIC;
  signal \ports_loop[2].in_port_flop_i_8_n_0\ : STD_LOGIC;
  signal \^ports_loop[2].port_id_flop_0\ : STD_LOGIC;
  signal \^ports_loop[2].port_id_flop_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ports_loop[3].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[3].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[3].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[3].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[4].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[4].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[4].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[4].in_port_flop_i_6_n_0\ : STD_LOGIC;
  signal \ports_loop[5].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[5].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[5].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[5].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[6].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[6].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[6].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[6].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[6].in_port_flop_i_6_n_0\ : STD_LOGIC;
  signal \ports_loop[7].in_port_flop_i_2_n_0\ : STD_LOGIC;
  signal \ports_loop[7].in_port_flop_i_3_n_0\ : STD_LOGIC;
  signal \ports_loop[7].in_port_flop_i_4_n_0\ : STD_LOGIC;
  signal \ports_loop[7].in_port_flop_i_5_n_0\ : STD_LOGIC;
  signal \ports_loop[7].in_port_flop_i_6_n_0\ : STD_LOGIC;
  signal push_stack : STD_LOGIC;
  signal rdbk_nsb_i_2_n_0 : STD_LOGIC;
  signal \^read_strobe_flop_0\ : STD_LOGIC;
  signal read_strobe_value : STD_LOGIC;
  signal regbank_type : STD_LOGIC;
  signal register_enable : STD_LOGIC;
  signal register_enable_type : STD_LOGIC;
  signal register_enable_value : STD_LOGIC;
  signal return_vector : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rs : STD_LOGIC;
  signal run : STD_LOGIC;
  signal run_value : STD_LOGIC;
  signal shadow_bank : STD_LOGIC;
  signal shadow_carry_flag : STD_LOGIC;
  signal shadow_zero_flag : STD_LOGIC;
  signal shadow_zero_value : STD_LOGIC;
  signal shift_carry : STD_LOGIC;
  signal shift_carry_value : STD_LOGIC;
  signal shift_in_bit : STD_LOGIC;
  signal shift_rotate_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_rotate_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal special_bit : STD_LOGIC;
  signal spm_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spm_enable : STD_LOGIC;
  signal spm_enable_value : STD_LOGIC;
  signal spm_ram_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sta_ptr[11]_i_10_n_0\ : STD_LOGIC;
  signal stack_bank : STD_LOGIC;
  signal stack_bit : STD_LOGIC;
  signal stack_carry_flag : STD_LOGIC;
  signal stack_memory : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal stack_pointer : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal stack_pointer_carry : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stack_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal stack_zero_flag : STD_LOGIC;
  signal strobe_type : STD_LOGIC;
  signal sx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sx_addr : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sx_addr4_value : STD_LOGIC;
  signal sy : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync_sleep : STD_LOGIC;
  signal t_state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal t_state_value : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal upper_parity : STD_LOGIC;
  signal upper_zero_sel : STD_LOGIC;
  signal use_zero_flag : STD_LOGIC;
  signal use_zero_flag_value : STD_LOGIC;
  signal write_strobe_value : STD_LOGIC;
  signal ws : STD_LOGIC;
  signal zero_flag : STD_LOGIC;
  signal zero_flag_value : STD_LOGIC;
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_loadstar_type_lut_O6_UNCONNECTED : STD_LOGIC;
  signal NLW_move_type_lut_O5_UNCONNECTED : STD_LOGIC;
  signal NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_sx_addr4_value_lut_O5_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \RWCYEnabled.arith_carry_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \RWCYEnabled.arith_carry_flop\ : label is "FD";
  attribute BOX_TYPE of \RWPMEnabled.pc_mode0_reworked_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RWPMEnabled.pc_mode1_reworked_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RWPMEnabled.pc_mode2_reworked_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RWSREnabled.reset_reworked_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[0].lsb_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute BOX_TYPE of \address_loop[0].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[0].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[0].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[10].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[10].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[10].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[10].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[10].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[11].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[11].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[11].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[11].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[1].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[1].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[1].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[1].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[2].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[2].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[2].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[2].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[2].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[3].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[3].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[3].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[3].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[4].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[4].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[4].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[4].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[4].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[5].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[5].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[5].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[5].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[6].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[6].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[6].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[6].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[6].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[7].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[7].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[7].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[7].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[8].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[8].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[8].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute BOX_TYPE of \address_loop[8].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[9].pc_flop\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \address_loop[9].return_vector_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \address_loop[9].return_vector_flop\ : label is "FD";
  attribute BOX_TYPE of \address_loop[9].upper_pc.pc_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of alu_decode0_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of alu_decode1_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of alu_decode2_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of alu_mux_sel0_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel0_flop : label is "FD";
  attribute BOX_TYPE of alu_mux_sel1_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel1_flop : label is "FD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aux_cr_es_err_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of aux_uc_err_i_1 : label is "soft_lutpair37";
  attribute BOX_TYPE of bank_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bank_flop : label is "FDR";
  attribute BOX_TYPE of bank_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of bgo_strobe_i_1 : label is "soft_lutpair36";
  attribute BOX_TYPE of carry_flag_flop : label is "PRIMITIVE";
  attribute BOX_TYPE of carry_flag_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of const_strobe_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of const_strobe_flop : label is "FD";
  attribute BOX_TYPE of \data_path_loop[0].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[0].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute BOX_TYPE of \data_path_loop[0].lsb_shift_rotate.shift_bit_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[0].small_spm_ram.spm_ram\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[0].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[1].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[1].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[1].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[1].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[1].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[2].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[2].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[2].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[2].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[2].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[2].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[2].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[2].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[3].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[3].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[3].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[3].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[3].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[4].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[4].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[4].small_spm_ram.spm_ram\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[4].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[5].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[5].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[5].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[5].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[5].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[6].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[6].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[6].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[6].msb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[6].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[6].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[6].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[6].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].spm_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[7].alu_mux_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[7].arith_logical_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].arith_logical_flop\ : label is "FD";
  attribute BOX_TYPE of \data_path_loop[7].arith_logical_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \data_path_loop[7].shift_rotate_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].shift_rotate_flop\ : label is "FDR";
  attribute BOX_TYPE of \data_path_loop[7].spm_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].spm_flop\ : label is "FD";
  attribute SOFT_HLUTNM of fetch_rxread_INST_0_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of firmware0_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of firmware0_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of firmware1_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of firmware2_i_1 : label is "soft_lutpair34";
  attribute BOX_TYPE of flag_enable_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flag_enable_flop : label is "FD";
  attribute BOX_TYPE of init_zero_muxcy_CARRY4_CARRY8 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of init_zero_muxcy_CARRY4_CARRY8 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of init_zero_muxcy_CARRY4_CARRY8 : label is "(CARRY4)";
  attribute BOX_TYPE of internal_reset_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of internal_reset_flop : label is "FD";
  attribute BOX_TYPE of loadstar_type_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of lower_parity_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of lower_reg_banks : label is "PRIMITIVE";
  attribute BOX_TYPE of lower_zero_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of middle_zero_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of monitor_rxread_INST_0_i_1 : label is "soft_lutpair38";
  attribute BOX_TYPE of move_type_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of parity_muxcy_CARRY4_CARRY8 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of parity_muxcy_CARRY4_CARRY8 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of parity_muxcy_CARRY4_CARRY8 : label is "(CARRY4)";
  attribute BOX_TYPE of pc_move_is_valid_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of \ports_loop[0].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[0].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[0].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[0].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[0].port_id_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[0].port_id_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[1].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[1].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[1].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[1].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[1].port_id_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[1].port_id_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[2].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[2].in_port_flop\ : label is "FD";
  attribute SOFT_HLUTNM of \ports_loop[2].in_port_flop_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ports_loop[2].in_port_flop_i_4\ : label is "soft_lutpair35";
  attribute BOX_TYPE of \ports_loop[2].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[2].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[2].port_id_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[2].port_id_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[3].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[3].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[3].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[3].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[3].port_id_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[3].port_id_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[4].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[4].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[4].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[4].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[5].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[5].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[5].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[5].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[6].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[6].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[6].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[6].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[7].in_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[7].in_port_flop\ : label is "FD";
  attribute BOX_TYPE of \ports_loop[7].out_port_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ports_loop[7].out_port_flop\ : label is "FD";
  attribute BOX_TYPE of push_pop_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of read_strobe_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of read_strobe_flop : label is "FD";
  attribute BOX_TYPE of read_strobe_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of regbank_type_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of register_enable_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of register_enable_flop : label is "FD";
  attribute BOX_TYPE of register_enable_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of register_enable_type_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of run_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of run_flop : label is "FD";
  attribute BOX_TYPE of shadow_bank_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shadow_bank_flop : label is "FD";
  attribute BOX_TYPE of shadow_carry_flag_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shadow_carry_flag_flop : label is "FD";
  attribute BOX_TYPE of shadow_zero_flag_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shadow_zero_flag_flop : label is "FD";
  attribute BOX_TYPE of shift_carry_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shift_carry_flop : label is "FD";
  attribute BOX_TYPE of shift_carry_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of spm_enable_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of spm_enable_flop : label is "FD";
  attribute BOX_TYPE of spm_enable_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \sta_ptr[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sta_ptr[7]_i_1\ : label is "soft_lutpair32";
  attribute BOX_TYPE of stack_bit_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of stack_bit_flop : label is "FD";
  attribute BOX_TYPE of \stack_loop[0].lsb_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.pointer_flop\ : label is "FDR";
  attribute BOX_TYPE of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute BOX_TYPE of \stack_loop[0].lsb_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \stack_loop[1].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_loop[1].upper_stack.pointer_flop\ : label is "FDR";
  attribute BOX_TYPE of \stack_loop[1].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \stack_loop[2].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_loop[2].upper_stack.pointer_flop\ : label is "FDR";
  attribute BOX_TYPE of \stack_loop[2].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \stack_loop[3].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_loop[3].upper_stack.pointer_flop\ : label is "FDR";
  attribute BOX_TYPE of \stack_loop[3].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \stack_loop[4].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_loop[4].upper_stack.pointer_flop\ : label is "FDR";
  attribute BOX_TYPE of \stack_loop[4].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute BOX_TYPE of stack_ram_high : label is "PRIMITIVE";
  attribute BOX_TYPE of stack_ram_low : label is "PRIMITIVE";
  attribute BOX_TYPE of stack_zero_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of stack_zero_flop : label is "FD";
  attribute BOX_TYPE of sx_addr4_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sx_addr4_flop : label is "FD";
  attribute BOX_TYPE of sx_addr4_value_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of sync_sleep_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_sleep_flop : label is "FD";
  attribute BOX_TYPE of t_state1_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of t_state1_flop : label is "FD";
  attribute BOX_TYPE of t_state2_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of t_state2_flop : label is "FD";
  attribute BOX_TYPE of t_state_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of timer_snap_i_1 : label is "soft_lutpair37";
  attribute BOX_TYPE of upper_parity_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of upper_reg_banks : label is "PRIMITIVE";
  attribute BOX_TYPE of upper_zero_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of use_zero_flag_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of use_zero_flag_flop : label is "FD";
  attribute BOX_TYPE of use_zero_flag_lut : label is "PRIMITIVE";
  attribute BOX_TYPE of write_strobe_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of write_strobe_flop : label is "FD";
  attribute BOX_TYPE of zero_flag_flop : label is "PRIMITIVE";
begin
  \OUTRegistered.instruction_reg[0]\(1 downto 0) <= \^outregistered.instruction_reg[0]\(1 downto 0);
  address(11 downto 0) <= \^address\(11 downto 0);
  const_strobe_flop_0 <= \^const_strobe_flop_0\;
  const_strobe_flop_2 <= \^const_strobe_flop_2\;
  out_port_reg(7 downto 0) <= \^out_port_reg\(7 downto 0);
  \ports_loop[2].port_id_flop_0\ <= \^ports_loop[2].port_id_flop_0\;
  \ports_loop[2].port_id_flop_1\(0) <= \^ports_loop[2].port_id_flop_1\(0);
  read_strobe_flop_0 <= \^read_strobe_flop_0\;
\RWCYEnabled.arith_carry_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => carry_arith_logical(7),
      Q => arith_carry,
      R => '0'
    );
\RWPMEnabled.pc_mode0_reworked_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFDAAFFFFFFFF"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(13),
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => pc_move_is_valid,
      O => pc_mode(0)
    );
\RWPMEnabled.pc_mode1_reworked_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777027700000000"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(13),
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => pc_move_is_valid,
      O => pc_mode(1)
    );
\RWPMEnabled.pc_mode2_reworked_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(15),
      I3 => flag_enable_flop_0(16),
      I4 => flag_enable_flop_0(17),
      I5 => '0',
      O => pc_mode(2)
    );
\RWSREnabled.reset_reworked_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFFF55500000EEE"
    )
        port map (
      I0 => run,
      I1 => internal_reset,
      I2 => '0',
      I3 => t_state(2),
      I4 => SR(0),
      I5 => '1',
      O5 => run_value,
      O6 => internal_reset_value
    );
\address_loop[0].lsb_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000033CC0F00"
    )
        port map (
      I0 => sy(0),
      I1 => pc_vector(0),
      I2 => \^address\(0),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(0)
    );
\address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 0) => carry_pc(7 downto 0),
      DI(7 downto 1) => B"0000000",
      DI(0) => pc_mode(0),
      O(7 downto 0) => pc_value(7 downto 0),
      S(7 downto 0) => half_pc(7 downto 0)
    );
\address_loop[0].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(0),
      I1 => return_vector(0),
      I2 => flag_enable_flop_0(1),
      I3 => return_vector(1),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(0),
      O6 => pc_vector(1)
    );
\address_loop[0].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(0),
      Q => \^address\(0),
      R => internal_reset
    );
\address_loop[0].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(0),
      Q => return_vector(0),
      R => '0'
    );
\address_loop[10].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(10),
      I1 => return_vector(10),
      I2 => flag_enable_flop_0(11),
      I3 => return_vector(11),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(10),
      O6 => pc_vector(11)
    );
\address_loop[10].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(10),
      Q => \^address\(10),
      R => internal_reset
    );
\address_loop[10].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(10),
      Q => return_vector(10),
      R => '0'
    );
\address_loop[10].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(2),
      I1 => pc_vector(10),
      I2 => \^address\(10),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(10)
    );
\address_loop[11].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(11),
      Q => \^address\(11),
      R => internal_reset
    );
\address_loop[11].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(11),
      Q => return_vector(11),
      R => '0'
    );
\address_loop[11].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(3),
      I1 => pc_vector(11),
      I2 => \^address\(11),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(11)
    );
\address_loop[1].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(1),
      Q => \^address\(1),
      R => internal_reset
    );
\address_loop[1].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(1),
      Q => return_vector(1),
      R => '0'
    );
\address_loop[1].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(1),
      I1 => pc_vector(1),
      I2 => \^address\(1),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(1)
    );
\address_loop[2].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(2),
      I1 => return_vector(2),
      I2 => flag_enable_flop_0(3),
      I3 => return_vector(3),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(2),
      O6 => pc_vector(3)
    );
\address_loop[2].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(2),
      Q => \^address\(2),
      R => internal_reset
    );
\address_loop[2].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(2),
      Q => return_vector(2),
      R => '0'
    );
\address_loop[2].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(2),
      I1 => pc_vector(2),
      I2 => \^address\(2),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(2)
    );
\address_loop[3].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(3),
      Q => \^address\(3),
      R => internal_reset
    );
\address_loop[3].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(3),
      Q => return_vector(3),
      R => '0'
    );
\address_loop[3].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(3),
      I1 => pc_vector(3),
      I2 => \^address\(3),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(3)
    );
\address_loop[4].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(4),
      I1 => return_vector(4),
      I2 => flag_enable_flop_0(5),
      I3 => return_vector(5),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(4),
      O6 => pc_vector(5)
    );
\address_loop[4].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(4),
      Q => \^address\(4),
      R => internal_reset
    );
\address_loop[4].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(4),
      Q => return_vector(4),
      R => '0'
    );
\address_loop[4].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(4),
      I1 => pc_vector(4),
      I2 => \^address\(4),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(4)
    );
\address_loop[5].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(5),
      Q => \^address\(5),
      R => internal_reset
    );
\address_loop[5].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(5),
      Q => return_vector(5),
      R => '0'
    );
\address_loop[5].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(5),
      I1 => pc_vector(5),
      I2 => \^address\(5),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(5)
    );
\address_loop[6].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(6),
      I1 => return_vector(6),
      I2 => flag_enable_flop_0(7),
      I3 => return_vector(7),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(6),
      O6 => pc_vector(7)
    );
\address_loop[6].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(6),
      Q => \^address\(6),
      R => internal_reset
    );
\address_loop[6].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(6),
      Q => return_vector(6),
      R => '0'
    );
\address_loop[6].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(6),
      I1 => pc_vector(6),
      I2 => \^address\(6),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(6)
    );
\address_loop[7].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(7),
      Q => \^address\(7),
      R => internal_reset
    );
\address_loop[7].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(7),
      Q => return_vector(7),
      R => '0'
    );
\address_loop[7].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sy(7),
      I1 => pc_vector(7),
      I2 => \^address\(7),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(7)
    );
\address_loop[8].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => flag_enable_flop_0(8),
      I1 => return_vector(8),
      I2 => flag_enable_flop_0(9),
      I3 => return_vector(9),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => pc_vector(8),
      O6 => pc_vector(9)
    );
\address_loop[8].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(8),
      Q => \^address\(8),
      R => internal_reset
    );
\address_loop[8].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(8),
      Q => return_vector(8),
      R => '0'
    );
\address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => carry_pc(7),
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2 downto 0) => carry_pc(10 downto 8),
      DI(7 downto 3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2 downto 0) => B"000",
      O(7 downto 4) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => pc_value(11 downto 8),
      S(7 downto 4) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3 downto 0) => half_pc(11 downto 8)
    );
\address_loop[8].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(0),
      I1 => pc_vector(8),
      I2 => \^address\(8),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(8)
    );
\address_loop[9].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => t_state(1),
      D => pc_value(9),
      Q => \^address\(9),
      R => internal_reset
    );
\address_loop[9].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_memory(9),
      Q => return_vector(9),
      R => '0'
    );
\address_loop[9].upper_pc.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(1),
      I1 => pc_vector(9),
      I2 => \^address\(9),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(9)
    );
alu_decode0_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"03CA000004200000"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(15),
      I3 => flag_enable_flop_0(16),
      I4 => '1',
      I5 => '1',
      O5 => alu_mux_sel_value(0),
      O6 => arith_logical_sel(0)
    );
alu_decode1_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7708000000000F00"
    )
        port map (
      I0 => carry_flag,
      I1 => flag_enable_flop_0(13),
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => '1',
      O5 => alu_mux_sel_value(1),
      O6 => arith_carry_in
    );
alu_decode2_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"D000000002000000"
    )
        port map (
      I0 => flag_enable_flop_0(14),
      I1 => flag_enable_flop_0(15),
      I2 => flag_enable_flop_0(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O5 => arith_logical_sel(1),
      O6 => arith_logical_sel(2)
    );
alu_mux_sel0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => alu_mux_sel_value(0),
      Q => alu_mux_sel(0),
      R => '0'
    );
alu_mux_sel1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => alu_mux_sel_value(1),
      Q => alu_mux_sel(1),
      R => '0'
    );
aux_cr_es_err_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => aux_cr_es_err_reg,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(6),
      I3 => aux_cr_es_err,
      O => sync_g_0
    );
aux_cr_ne_err_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => aux_cr_ne_err_reg,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(5),
      I3 => aux_cr_ne_err,
      O => sync_g
    );
aux_uc_err_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => aux_uc_err_reg,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(7),
      I3 => aux_uc_err,
      O => sync_g_1
    );
bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => bank_value,
      Q => bank,
      R => internal_reset
    );
bank_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACFF00FF00FF00"
    )
        port map (
      I0 => flag_enable_flop_0(0),
      I1 => shadow_bank,
      I2 => flag_enable_flop_0(16),
      I3 => bank,
      I4 => regbank_type,
      I5 => t_state(1),
      O => bank_value
    );
bgo_strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_port_reg\(3),
      I1 => cgo_flag_i_2_n_0,
      O => bgo_strobe0
    );
carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => flag_enable,
      D => carry_flag_value,
      Q => carry_flag,
      R => internal_reset
    );
carry_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"3333AACCF0AA0000"
    )
        port map (
      I0 => shift_carry,
      I1 => arith_carry,
      I2 => parity,
      I3 => flag_enable_flop_0(14),
      I4 => flag_enable_flop_0(15),
      I5 => flag_enable_flop_0(16),
      O5 => drive_carry_in_zero,
      O6 => carry_flag_value
    );
cgo_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => cgo_flag_reg_0(0),
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(2),
      I3 => cgo_flag_reg,
      O => \ports_loop[2].out_port_flop_0\
    );
cgo_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFFFFFFFFFFFFF"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(3),
      I4 => port_id_reg(2),
      I5 => port_id_reg(1),
      O => cgo_flag_i_2_n_0
    );
const_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => const_strobe_value,
      Q => cs,
      R => '0'
    );
\data_path_loop[0].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(0),
      I1 => shift_rotate_result(0),
      I2 => in_port(0),
      I3 => spm_data(0),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(0)
    );
\data_path_loop[0].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(0),
      Q => arith_logical_result(0),
      R => '0'
    );
\data_path_loop[0].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => sx(0),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(0),
      O6 => half_arith_logical(0)
    );
\data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => arith_carry_in,
      CI_TOP => '0',
      CO(7 downto 0) => carry_arith_logical(7 downto 0),
      DI(7 downto 0) => logical_carry_mask(7 downto 0),
      O(7 downto 0) => arith_logical_value(7 downto 0),
      S(7 downto 0) => half_arith_logical(7 downto 0)
    );
\data_path_loop[0].lsb_shift_rotate.shift_bit_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => flag_enable_flop_0(0),
      I1 => flag_enable_flop_0(1),
      I2 => flag_enable_flop_0(2),
      I3 => carry_flag,
      I4 => sx(0),
      I5 => sx(7),
      O => shift_in_bit
    );
\data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => shift_in_bit,
      I1 => sx(1),
      I2 => sx(0),
      I3 => sx(2),
      I4 => flag_enable_flop_0(3),
      I5 => '1',
      O5 => shift_rotate_value(0),
      O6 => shift_rotate_value(1)
    );
\data_path_loop[0].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sy(0),
      I1 => flag_enable_flop_0(0),
      I2 => sy(1),
      I3 => flag_enable_flop_0(1),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => \^outregistered.instruction_reg[0]\(0),
      O6 => \^outregistered.instruction_reg[0]\(1)
    );
\data_path_loop[0].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(0),
      I1 => flag_enable_flop_0(4),
      I2 => sx(1),
      I3 => flag_enable_flop_0(5),
      I4 => flag_enable_flop_0(13),
      I5 => '1',
      O5 => out_port(0),
      O6 => out_port(1)
    );
\data_path_loop[0].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(0),
      Q => shift_rotate_result(0),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[0].small_spm_ram.spm_ram\: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(5 downto 2) => port_id(5 downto 2),
      ADDRA(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRB(5 downto 2) => port_id(5 downto 2),
      ADDRB(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRC(5 downto 2) => port_id(5 downto 2),
      ADDRC(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRD(5 downto 2) => port_id(5 downto 2),
      ADDRD(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      DIA => sx(0),
      DIB => sx(1),
      DIC => sx(2),
      DID => sx(3),
      DOA => spm_ram_data(0),
      DOB => spm_ram_data(1),
      DOC => spm_ram_data(2),
      DOD => spm_ram_data(3),
      WCLK => icap_clk,
      WE => spm_enable
    );
\data_path_loop[0].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(0),
      Q => spm_data(0),
      R => '0'
    );
\data_path_loop[1].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(1),
      I1 => shift_rotate_result(1),
      I2 => in_port(1),
      I3 => spm_data(1),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(1)
    );
\data_path_loop[1].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(1),
      Q => arith_logical_result(1),
      R => '0'
    );
\data_path_loop[1].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(1),
      I1 => sx(1),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(1),
      O6 => half_arith_logical(1)
    );
\data_path_loop[1].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(1),
      Q => shift_rotate_result(1),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[1].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(1),
      Q => spm_data(1),
      R => '0'
    );
\data_path_loop[2].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(2),
      I1 => shift_rotate_result(2),
      I2 => in_port(2),
      I3 => spm_data(2),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(2)
    );
\data_path_loop[2].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(2),
      Q => arith_logical_result(2),
      R => '0'
    );
\data_path_loop[2].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => port_id(2),
      I1 => sx(2),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(2),
      O6 => half_arith_logical(2)
    );
\data_path_loop[2].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(1),
      I1 => sx(3),
      I2 => sx(2),
      I3 => sx(4),
      I4 => flag_enable_flop_0(3),
      I5 => '1',
      O5 => shift_rotate_value(2),
      O6 => shift_rotate_value(3)
    );
\data_path_loop[2].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sy(2),
      I1 => flag_enable_flop_0(2),
      I2 => sy(3),
      I3 => flag_enable_flop_0(3),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => port_id(2),
      O6 => port_id(3)
    );
\data_path_loop[2].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(2),
      I1 => flag_enable_flop_0(6),
      I2 => sx(3),
      I3 => flag_enable_flop_0(7),
      I4 => flag_enable_flop_0(13),
      I5 => '1',
      O5 => out_port(2),
      O6 => out_port(3)
    );
\data_path_loop[2].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(2),
      Q => shift_rotate_result(2),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[2].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(2),
      Q => spm_data(2),
      R => '0'
    );
\data_path_loop[3].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(3),
      I1 => shift_rotate_result(3),
      I2 => in_port(3),
      I3 => spm_data(3),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(3)
    );
\data_path_loop[3].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(3),
      Q => arith_logical_result(3),
      R => '0'
    );
\data_path_loop[3].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => port_id(3),
      I1 => sx(3),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(3),
      O6 => half_arith_logical(3)
    );
\data_path_loop[3].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(3),
      Q => shift_rotate_result(3),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[3].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(3),
      Q => spm_data(3),
      R => '0'
    );
\data_path_loop[4].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(4),
      I1 => shift_rotate_result(4),
      I2 => in_port(4),
      I3 => spm_data(4),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(4)
    );
\data_path_loop[4].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(4),
      Q => arith_logical_result(4),
      R => '0'
    );
\data_path_loop[4].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => port_id(4),
      I1 => sx(4),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(4),
      O6 => half_arith_logical(4)
    );
\data_path_loop[4].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(3),
      I1 => sx(5),
      I2 => sx(4),
      I3 => sx(6),
      I4 => flag_enable_flop_0(3),
      I5 => '1',
      O5 => shift_rotate_value(4),
      O6 => shift_rotate_value(5)
    );
\data_path_loop[4].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sy(4),
      I1 => flag_enable_flop_0(4),
      I2 => sy(5),
      I3 => flag_enable_flop_0(5),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => port_id(4),
      O6 => port_id(5)
    );
\data_path_loop[4].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(4),
      I1 => flag_enable_flop_0(8),
      I2 => sx(5),
      I3 => flag_enable_flop_0(9),
      I4 => flag_enable_flop_0(13),
      I5 => '1',
      O5 => out_port(4),
      O6 => out_port(5)
    );
\data_path_loop[4].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(4),
      Q => shift_rotate_result(4),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[4].small_spm_ram.spm_ram\: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(5 downto 2) => port_id(5 downto 2),
      ADDRA(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRB(5 downto 2) => port_id(5 downto 2),
      ADDRB(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRC(5 downto 2) => port_id(5 downto 2),
      ADDRC(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      ADDRD(5 downto 2) => port_id(5 downto 2),
      ADDRD(1 downto 0) => \^outregistered.instruction_reg[0]\(1 downto 0),
      DIA => sx(4),
      DIB => sx(5),
      DIC => sx(6),
      DID => sx(7),
      DOA => spm_ram_data(4),
      DOB => spm_ram_data(5),
      DOC => spm_ram_data(6),
      DOD => spm_ram_data(7),
      WCLK => icap_clk,
      WE => spm_enable
    );
\data_path_loop[4].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(4),
      Q => spm_data(4),
      R => '0'
    );
\data_path_loop[5].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(5),
      I1 => shift_rotate_result(5),
      I2 => in_port(5),
      I3 => spm_data(5),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(5)
    );
\data_path_loop[5].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(5),
      Q => arith_logical_result(5),
      R => '0'
    );
\data_path_loop[5].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => port_id(5),
      I1 => sx(5),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(5),
      O6 => half_arith_logical(5)
    );
\data_path_loop[5].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(5),
      Q => shift_rotate_result(5),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[5].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(5),
      Q => spm_data(5),
      R => '0'
    );
\data_path_loop[6].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(6),
      I1 => shift_rotate_result(6),
      I2 => in_port(6),
      I3 => spm_data(6),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(6)
    );
\data_path_loop[6].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(6),
      Q => arith_logical_result(6),
      R => '0'
    );
\data_path_loop[6].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      I1 => sx(6),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(6),
      O6 => half_arith_logical(6)
    );
\data_path_loop[6].msb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(5),
      I1 => sx(7),
      I2 => sx(6),
      I3 => shift_in_bit,
      I4 => flag_enable_flop_0(3),
      I5 => '1',
      O5 => shift_rotate_value(6),
      O6 => shift_rotate_value(7)
    );
\data_path_loop[6].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sy(6),
      I1 => flag_enable_flop_0(6),
      I2 => sy(7),
      I3 => flag_enable_flop_0(7),
      I4 => flag_enable_flop_0(12),
      I5 => '1',
      O5 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      O6 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\
    );
\data_path_loop[6].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(6),
      I1 => flag_enable_flop_0(10),
      I2 => sx(7),
      I3 => flag_enable_flop_0(11),
      I4 => flag_enable_flop_0(13),
      I5 => '1',
      O5 => out_port(6),
      O6 => out_port(7)
    );
\data_path_loop[6].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(6),
      Q => shift_rotate_result(6),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[6].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(6),
      Q => spm_data(6),
      R => '0'
    );
\data_path_loop[7].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(7),
      I1 => shift_rotate_result(7),
      I2 => in_port(7),
      I3 => spm_data(7),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(7)
    );
\data_path_loop[7].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => arith_logical_value(7),
      Q => arith_logical_result(7),
      R => '0'
    );
\data_path_loop[7].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      I1 => sx(7),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(7),
      O6 => half_arith_logical(7)
    );
\data_path_loop[7].shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_rotate_value(7),
      Q => shift_rotate_result(7),
      R => flag_enable_flop_0(7)
    );
\data_path_loop[7].spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_ram_data(7),
      Q => spm_data(7),
      R => '0'
    );
\end_ptr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040404000"
    )
        port map (
      I0 => port_id_reg(2),
      I1 => port_id_reg(3),
      I2 => port_id_reg(1),
      I3 => cs,
      I4 => ws,
      I5 => port_id_reg(0),
      O => \^ports_loop[2].port_id_flop_0\
    );
\end_ptr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000000000"
    )
        port map (
      I0 => port_id_reg(2),
      I1 => port_id_reg(3),
      I2 => port_id_reg(1),
      I3 => cs,
      I4 => ws,
      I5 => port_id_reg(0),
      O => \ports_loop[2].port_id_flop_2\(0)
    );
eof_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => fecc_endofframe,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(0),
      I3 => eof_flag,
      O => fecc_endofframe_0
    );
eos_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => fecc_endofscan,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(1),
      I3 => eos_flag,
      O => fecc_endofscan_0
    );
fetch_rxread_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => port_id(5),
      I1 => port_id(3),
      I2 => port_id(2),
      I3 => rs,
      I4 => port_id(4),
      I5 => fetch_rxread_INST_0_i_1_n_0,
      O => fetch_rxread
    );
fetch_rxread_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => \^outregistered.instruction_reg[0]\(1),
      O => fetch_rxread_INST_0_i_1_n_0
    );
fetch_txwrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E00000000000"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(2),
      I4 => port_id_reg(3),
      I5 => port_id_reg(1),
      O => fetch_txwrite
    );
firmware0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B6"
    )
        port map (
      I0 => \^address\(9),
      I1 => \^address\(10),
      I2 => \^address\(11),
      O => casdomux2
    );
firmware0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08008008"
    )
        port map (
      I0 => rom_error,
      I1 => bram_enable,
      I2 => \^address\(11),
      I3 => \^address\(10),
      I4 => \^address\(9),
      O => bram_wr_en0
    );
firmware1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^address\(11),
      I1 => \^address\(10),
      I2 => \^address\(9),
      O => bram2_en
    );
firmware1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92000000"
    )
        port map (
      I0 => \^address\(9),
      I1 => \^address\(10),
      I2 => \^address\(11),
      I3 => bram_enable,
      I4 => rom_error,
      O => bram_wr_en1
    );
firmware2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800800"
    )
        port map (
      I0 => rom_error,
      I1 => bram_enable,
      I2 => \^address\(11),
      I3 => \^address\(10),
      I4 => \^address\(9),
      O => bram_wr_en2
    );
flag_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => flag_enable_value,
      Q => flag_enable,
      R => '0'
    );
init_zero_muxcy_CARRY4_CARRY8: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED(7 downto 4),
      CO(3) => zero_flag_value,
      CO(2) => carry_middle_zero,
      CO(1) => carry_lower_zero,
      CO(0) => carry_in_zero,
      DI(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED(7 downto 4),
      DI(3) => shadow_zero_flag,
      DI(2) => middle_zero,
      DI(1) => lower_zero,
      DI(0) => drive_carry_in_zero,
      O(7 downto 0) => NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED(7 downto 4),
      S(3) => upper_zero_sel,
      S(2) => middle_zero_sel,
      S(1) => lower_zero_sel,
      S(0) => carry_flag_value
    );
internal_reset_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => internal_reset_value,
      Q => internal_reset,
      R => '0'
    );
loadstar_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0010000000000800"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(15),
      I3 => flag_enable_flop_0(16),
      I4 => flag_enable_flop_0(17),
      I5 => '1',
      O5 => loadstar_type,
      O6 => NLW_loadstar_type_lut_O6_UNCONNECTED
    );
lower_parity_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000087780000"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => carry_flag,
      I2 => arith_logical_result(0),
      I3 => arith_logical_result(1),
      I4 => '1',
      I5 => '1',
      O5 => lower_parity,
      O6 => lower_parity_sel
    );
lower_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => bank,
      ADDRA(3 downto 0) => flag_enable_flop_0(7 downto 4),
      ADDRB(4) => sx_addr(4),
      ADDRB(3 downto 0) => flag_enable_flop_0(11 downto 8),
      ADDRC(4) => bank,
      ADDRC(3 downto 0) => flag_enable_flop_0(7 downto 4),
      ADDRD(4) => sx_addr(4),
      ADDRD(3 downto 0) => flag_enable_flop_0(11 downto 8),
      DIA(1 downto 0) => alu_result(1 downto 0),
      DIB(1 downto 0) => alu_result(1 downto 0),
      DIC(1 downto 0) => alu_result(3 downto 2),
      DID(1 downto 0) => alu_result(3 downto 2),
      DOA(1 downto 0) => sy(1 downto 0),
      DOB(1 downto 0) => sx(1 downto 0),
      DOC(1 downto 0) => sy(3 downto 2),
      DOD(1 downto 0) => sx(3 downto 2),
      WCLK => icap_clk,
      WE => register_enable
    );
lower_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_result(0),
      I1 => alu_result(1),
      I2 => alu_result(2),
      I3 => alu_result(3),
      I4 => alu_result(4),
      I5 => '1',
      O5 => lower_zero,
      O6 => lower_zero_sel
    );
middle_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000D00000000"
    )
        port map (
      I0 => use_zero_flag,
      I1 => zero_flag,
      I2 => alu_result(5),
      I3 => alu_result(6),
      I4 => alu_result(7),
      I5 => '1',
      O5 => middle_zero,
      O6 => middle_zero_sel
    );
monitor_rxread_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => port_id(5),
      I1 => port_id(3),
      I2 => port_id(2),
      I3 => rs,
      I4 => port_id(4),
      I5 => monitor_rxread_INST_0_i_1_n_0,
      O => monitor_rxread
    );
monitor_rxread_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => \^outregistered.instruction_reg[0]\(1),
      O => monitor_rxread_INST_0_i_1_n_0
    );
monitor_txwrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0000000000"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(2),
      I4 => port_id_reg(3),
      I5 => port_id_reg(1),
      O => monitor_txwrite
    );
move_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7777027700000200"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(13),
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => '1',
      O5 => NLW_move_type_lut_O5_UNCONNECTED,
      O6 => move_type
    );
parity_muxcy_CARRY4_CARRY8: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 1) => NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED(7 downto 1),
      CO(0) => carry_lower_parity,
      DI(7 downto 1) => NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED(7 downto 1),
      DI(0) => lower_parity,
      O(7 downto 2) => NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED(7 downto 2),
      O(1) => parity,
      O(0) => NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED(0),
      S(7 downto 2) => NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED(7 downto 2),
      S(1) => upper_parity,
      S(0) => lower_parity_sel
    );
pc_move_is_valid_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A3CFFFF00000000"
    )
        port map (
      I0 => carry_flag,
      I1 => zero_flag,
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => flag_enable_flop_0(17),
      O => pc_move_is_valid
    );
\ports_loop[0].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(0),
      Q => in_port(0),
      R => '0'
    );
\ports_loop[0].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_3_n_0\,
      I2 => \ports_loop[0].in_port_flop_i_4_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_5_n_0\,
      I4 => \ports_loop[0].in_port_flop_i_6_n_0\,
      I5 => \ports_loop[0].in_port_flop_i_7_n_0\,
      O => in_port_reg(0)
    );
\ports_loop[0].in_port_flop_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => port_id(5),
      I1 => port_id(2),
      I2 => port_id(3),
      I3 => port_id(4),
      O => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[0].in_port_flop_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(16),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(8),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(32),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(24),
      O => \ports_loop[0].in_port_flop_i_11_n_0\
    );
\ports_loop[0].in_port_flop_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303FF5F5"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(0),
      I1 => p_6_in(0),
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => eof_flag,
      I4 => \ports_loop[0].in_port_flop_i_8_n_0\,
      O => \ports_loop[0].in_port_flop_i_12_n_0\
    );
\ports_loop[0].in_port_flop_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"029E"
    )
        port map (
      I0 => port_id(3),
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => port_id(2),
      I3 => port_id(4),
      O => \ports_loop[0].in_port_flop_i_2_n_0\
    );
\ports_loop[0].in_port_flop_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0083000220830002"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => port_id(4),
      I2 => port_id(2),
      I3 => port_id(3),
      I4 => \^outregistered.instruction_reg[0]\(1),
      I5 => port_id(5),
      O => \ports_loop[0].in_port_flop_i_3_n_0\
    );
\ports_loop[0].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555553F003FFF"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_0\(0),
      I1 => monitor_rxdata(0),
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I4 => \ports_loop[0].in_port_flop_i_9_n_0\,
      I5 => \ports_loop[2].in_port_flop_i_4_n_0\,
      O => \ports_loop[0].in_port_flop_i_4_n_0\
    );
\ports_loop[0].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000979F9FBF"
    )
        port map (
      I0 => port_id(2),
      I1 => port_id(4),
      I2 => port_id(3),
      I3 => \^outregistered.instruction_reg[0]\(1),
      I4 => \^outregistered.instruction_reg[0]\(0),
      I5 => port_id(5),
      O => \ports_loop[0].in_port_flop_i_5_n_0\
    );
\ports_loop[0].in_port_flop_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ports_loop[0].in_port_flop_i_11_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_12_n_0\,
      O => \ports_loop[0].in_port_flop_i_6_n_0\,
      S => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[0].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1440140014001000"
    )
        port map (
      I0 => port_id(5),
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => \^outregistered.instruction_reg[0]\(1),
      I5 => \^outregistered.instruction_reg[0]\(0),
      O => \ports_loop[0].in_port_flop_i_7_n_0\
    );
\ports_loop[0].in_port_flop_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F33FBF00FF3FEF23"
    )
        port map (
      I0 => port_id(5),
      I1 => \^outregistered.instruction_reg[0]\(1),
      I2 => port_id(3),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^outregistered.instruction_reg[0]\(0),
      O => \ports_loop[0].in_port_flop_i_8_n_0\
    );
\ports_loop[0].in_port_flop_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \ports_loop[0].in_port_flop_i_4_0\,
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => \ports_loop[0].in_port_flop_i_4_1\,
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_2_0\(0),
      O => \ports_loop[0].in_port_flop_i_9_n_0\
    );
\ports_loop[0].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(0),
      Q => \^out_port_reg\(0),
      R => '0'
    );
\ports_loop[0].port_id_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \^outregistered.instruction_reg[0]\(0),
      Q => port_id_reg(0),
      R => '0'
    );
\ports_loop[1].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(1),
      Q => in_port(1),
      R => '0'
    );
\ports_loop[1].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_3_n_0\,
      I2 => \ports_loop[1].in_port_flop_i_2_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_5_n_0\,
      I4 => \ports_loop[1].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[0].in_port_flop_i_7_n_0\,
      O => in_port_reg(1)
    );
\ports_loop[1].in_port_flop_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777444447777777"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_0\(1),
      I1 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I2 => monitor_rxdata(1),
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I5 => \ports_loop[1].in_port_flop_i_4_n_0\,
      O => \ports_loop[1].in_port_flop_i_2_n_0\
    );
\ports_loop[1].in_port_flop_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ports_loop[1].in_port_flop_i_5_n_0\,
      I1 => \ports_loop[1].in_port_flop_i_6_n_0\,
      O => \ports_loop[1].in_port_flop_i_3_n_0\,
      S => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[1].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \ports_loop[1].in_port_flop_i_2_0\,
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => \ports_loop[1].in_port_flop_i_2_1\,
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_2_0\(1),
      O => \ports_loop[1].in_port_flop_i_4_n_0\
    );
\ports_loop[1].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(17),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(9),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(33),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(25),
      O => \ports_loop[1].in_port_flop_i_5_n_0\
    );
\ports_loop[1].in_port_flop_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303FF5F5"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(1),
      I1 => p_6_in(1),
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => eos_flag,
      I4 => \ports_loop[0].in_port_flop_i_8_n_0\,
      O => \ports_loop[1].in_port_flop_i_6_n_0\
    );
\ports_loop[1].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(1),
      Q => \^out_port_reg\(1),
      R => '0'
    );
\ports_loop[1].port_id_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \^outregistered.instruction_reg[0]\(1),
      Q => port_id_reg(1),
      R => '0'
    );
\ports_loop[2].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(2),
      Q => in_port(2),
      R => '0'
    );
\ports_loop[2].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \ports_loop[2].in_port_flop_i_2_n_0\,
      I1 => \ports_loop[2].in_port_flop_i_3_n_0\,
      I2 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I3 => \ports_loop[7].in_port_flop_0\(2),
      I4 => \ports_loop[0].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[2].in_port_flop_i_5_n_0\,
      O => in_port_reg(2)
    );
\ports_loop[2].in_port_flop_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF1FF0"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => \^outregistered.instruction_reg[0]\(1),
      I2 => port_id(3),
      I3 => port_id(2),
      I4 => port_id(4),
      O => \ports_loop[2].in_port_flop_i_10_n_0\
    );
\ports_loop[2].in_port_flop_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFEAAFFAAAAEE"
    )
        port map (
      I0 => port_id(5),
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => port_id(3),
      I4 => port_id(4),
      I5 => port_id(2),
      O => \ports_loop[2].in_port_flop_i_2_n_0\
    );
\ports_loop[2].in_port_flop_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => monitor_rxdata(2),
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[2].in_port_flop_0\,
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_2_0\(2),
      O => \ports_loop[2].in_port_flop_i_3_n_0\
    );
\ports_loop[2].in_port_flop_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C30081"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(1),
      I1 => port_id(3),
      I2 => port_id(2),
      I3 => port_id(4),
      I4 => \^outregistered.instruction_reg[0]\(0),
      O => \ports_loop[2].in_port_flop_i_4_n_0\
    );
\ports_loop[2].in_port_flop_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \ports_loop[2].in_port_flop_i_7_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_10_n_0\,
      I2 => \ports_loop[2].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_7_n_0\,
      O => \ports_loop[2].in_port_flop_i_5_n_0\
    );
\ports_loop[2].in_port_flop_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(18),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(10),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(34),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(26),
      O => \ports_loop[2].in_port_flop_i_7_n_0\
    );
\ports_loop[2].in_port_flop_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBFAFBAFFBFFFB"
    )
        port map (
      I0 => \ports_loop[2].in_port_flop_i_10_n_0\,
      I1 => \ports_loop[7].in_port_flop_i_3_0\(2),
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I4 => p_6_in(2),
      I5 => cgo_flag_reg,
      O => \ports_loop[2].in_port_flop_i_8_n_0\
    );
\ports_loop[2].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(2),
      Q => \^out_port_reg\(2),
      R => '0'
    );
\ports_loop[2].port_id_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => port_id(2),
      Q => port_id_reg(2),
      R => '0'
    );
\ports_loop[3].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(3),
      Q => in_port(3),
      R => '0'
    );
\ports_loop[3].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \ports_loop[3].in_port_flop_i_2_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_7_n_0\,
      I2 => \ports_loop[3].in_port_flop_i_3_n_0\,
      I3 => \ports_loop[7].in_port_flop_0\(3),
      I4 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I5 => \ports_loop[3].in_port_flop_i_4_n_0\,
      O => in_port_reg(3)
    );
\ports_loop[3].in_port_flop_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7FFFFF4F70000"
    )
        port map (
      I0 => burst,
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(3),
      I4 => \ports_loop[0].in_port_flop_i_10_n_0\,
      I5 => \ports_loop[3].in_port_flop_i_5_n_0\,
      O => \ports_loop[3].in_port_flop_i_2_n_0\
    );
\ports_loop[3].in_port_flop_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFEAAFFAAAAFE"
    )
        port map (
      I0 => port_id(5),
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => port_id(3),
      I4 => port_id(4),
      I5 => port_id(2),
      O => \ports_loop[3].in_port_flop_i_3_n_0\
    );
\ports_loop[3].in_port_flop_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => monitor_rxdata(3),
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[3].in_port_flop_0\,
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_2_0\(3),
      O => \ports_loop[3].in_port_flop_i_4_n_0\
    );
\ports_loop[3].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(19),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(11),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(35),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(27),
      O => \ports_loop[3].in_port_flop_i_5_n_0\
    );
\ports_loop[3].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(3),
      Q => \^out_port_reg\(3),
      R => '0'
    );
\ports_loop[3].port_id_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => port_id(3),
      Q => port_id_reg(3),
      R => '0'
    );
\ports_loop[4].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(4),
      Q => in_port(4),
      R => '0'
    );
\ports_loop[4].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \ports_loop[3].in_port_flop_i_3_n_0\,
      I1 => \ports_loop[7].in_port_flop_0\(4),
      I2 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I3 => \ports_loop[4].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[4].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[0].in_port_flop_i_7_n_0\,
      O => in_port_reg(4)
    );
\ports_loop[4].in_port_flop_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => monitor_rxdata(4),
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[4].in_port_flop_0\,
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_2_0\(4),
      O => \ports_loop[4].in_port_flop_i_2_n_0\
    );
\ports_loop[4].in_port_flop_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ports_loop[4].in_port_flop_i_5_n_0\,
      I1 => \ports_loop[4].in_port_flop_i_6_n_0\,
      O => \ports_loop[4].in_port_flop_i_3_n_0\,
      S => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[4].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(20),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(12),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(36),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(28),
      O => \ports_loop[4].in_port_flop_i_5_n_0\
    );
\ports_loop[4].in_port_flop_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303FF5F5"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(4),
      I1 => monitor_txfull,
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => rom_cr_ne_err,
      I4 => \ports_loop[0].in_port_flop_i_8_n_0\,
      O => \ports_loop[4].in_port_flop_i_6_n_0\
    );
\ports_loop[4].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(4),
      Q => \^out_port_reg\(4),
      R => '0'
    );
\ports_loop[5].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(5),
      Q => in_port(5),
      R => '0'
    );
\ports_loop[5].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F4FF4444F444"
    )
        port map (
      I0 => \ports_loop[5].in_port_flop_i_2_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_7_n_0\,
      I2 => \ports_loop[7].in_port_flop_0\(5),
      I3 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I4 => \ports_loop[3].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[5].in_port_flop_i_3_n_0\,
      O => in_port_reg(5)
    );
\ports_loop[5].in_port_flop_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ports_loop[5].in_port_flop_i_4_n_0\,
      I1 => \ports_loop[5].in_port_flop_i_5_n_0\,
      O => \ports_loop[5].in_port_flop_i_2_n_0\,
      S => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[5].in_port_flop_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => monitor_rxdata(5),
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[5].in_port_flop_0\,
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_2_0\(5),
      O => \ports_loop[5].in_port_flop_i_3_n_0\
    );
\ports_loop[5].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(21),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(13),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(37),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(29),
      O => \ports_loop[5].in_port_flop_i_4_n_0\
    );
\ports_loop[5].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => aux_cr_ne_err,
      I1 => monitor_rxempty,
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(5),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => p_4_in(0),
      O => \ports_loop[5].in_port_flop_i_5_n_0\
    );
\ports_loop[5].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(5),
      Q => \^out_port_reg\(5),
      R => '0'
    );
\ports_loop[6].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(6),
      Q => in_port(6),
      R => '0'
    );
\ports_loop[6].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAFFAAAAAAAA"
    )
        port map (
      I0 => \ports_loop[6].in_port_flop_i_2_n_0\,
      I1 => sync_out,
      I2 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_3_n_0\,
      I4 => \ports_loop[6].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[0].in_port_flop_i_5_n_0\,
      O => in_port_reg(6)
    );
\ports_loop[6].in_port_flop_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \ports_loop[0].in_port_flop_i_7_n_0\,
      I1 => \ports_loop[6].in_port_flop_i_4_n_0\,
      I2 => \ports_loop[0].in_port_flop_i_10_n_0\,
      I3 => \ports_loop[6].in_port_flop_i_5_n_0\,
      O => \ports_loop[6].in_port_flop_i_2_n_0\
    );
\ports_loop[6].in_port_flop_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555553F003FFF"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_0\(6),
      I1 => monitor_rxdata(6),
      I2 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I3 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I4 => \ports_loop[6].in_port_flop_i_6_n_0\,
      I5 => \ports_loop[2].in_port_flop_i_4_n_0\,
      O => \ports_loop[6].in_port_flop_i_3_n_0\
    );
\ports_loop[6].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(14),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(22),
      I2 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_3_0\(38),
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_3_0\(30),
      O => \ports_loop[6].in_port_flop_i_4_n_0\
    );
\ports_loop[6].in_port_flop_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC47FF47"
    )
        port map (
      I0 => aux_cr_es_err,
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => \ports_loop[7].in_port_flop_i_3_0\(6),
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => p_4_in(1),
      O => \ports_loop[6].in_port_flop_i_5_n_0\
    );
\ports_loop[6].in_port_flop_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \ports_loop[6].in_port_flop_i_3_0\,
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => \ports_loop[6].in_port_flop_i_3_1\,
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_2_0\(6),
      O => \ports_loop[6].in_port_flop_i_6_n_0\
    );
\ports_loop[6].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(6),
      Q => \^out_port_reg\(6),
      R => '0'
    );
\ports_loop[7].in_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => in_port_reg(7),
      Q => in_port(7),
      R => '0'
    );
\ports_loop[7].in_port_flop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A20FFFF2A202A20"
    )
        port map (
      I0 => \ports_loop[0].in_port_flop_i_5_n_0\,
      I1 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I2 => \ports_loop[0].in_port_flop_i_3_n_0\,
      I3 => \ports_loop[7].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_3_n_0\,
      I5 => \ports_loop[0].in_port_flop_i_7_n_0\,
      O => in_port_reg(7)
    );
\ports_loop[7].in_port_flop_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_0\(7),
      I1 => \ports_loop[2].in_port_flop_i_4_n_0\,
      I2 => monitor_rxdata(7),
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_4_n_0\,
      O => \ports_loop[7].in_port_flop_i_2_n_0\
    );
\ports_loop[7].in_port_flop_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ports_loop[7].in_port_flop_i_5_n_0\,
      I1 => \ports_loop[7].in_port_flop_i_6_n_0\,
      O => \ports_loop[7].in_port_flop_i_3_n_0\,
      S => \ports_loop[0].in_port_flop_i_10_n_0\
    );
\ports_loop[7].in_port_flop_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_2_1\,
      I1 => \^outregistered.instruction_reg[0]\(0),
      I2 => \^outregistered.instruction_reg[0]\(1),
      I3 => \ports_loop[7].in_port_flop_i_2_2\,
      I4 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I5 => \ports_loop[7].in_port_flop_i_2_0\(7),
      O => \ports_loop[7].in_port_flop_i_4_n_0\
    );
\ports_loop[7].in_port_flop_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \ports_loop[7].in_port_flop_i_3_0\(15),
      I1 => \ports_loop[7].in_port_flop_i_3_0\(23),
      I2 => \ports_loop[7].in_port_flop_i_3_0\(31),
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_3_0\(39),
      I5 => \ports_loop[0].in_port_flop_i_8_n_0\,
      O => \ports_loop[7].in_port_flop_i_5_n_0\
    );
\ports_loop[7].in_port_flop_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03440377"
    )
        port map (
      I0 => aux_uc_err,
      I1 => \ports_loop[0].in_port_flop_i_8_n_0\,
      I2 => rdbk_crc,
      I3 => \ports_loop[0].in_port_flop_i_2_n_0\,
      I4 => \ports_loop[7].in_port_flop_i_3_0\(7),
      O => \ports_loop[7].in_port_flop_i_6_n_0\
    );
\ports_loop[7].out_port_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => out_port(7),
      Q => \^out_port_reg\(7),
      R => '0'
    );
push_pop_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFF100000002000"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(13),
      I2 => move_type,
      I3 => pc_move_is_valid,
      I4 => '0',
      I5 => '1',
      O5 => pop_stack,
      O6 => push_stack
    );
rdbk_crc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => fecc_crcerror,
      I1 => rdbk_nsb_i_2_n_0,
      I2 => \^out_port_reg\(7),
      I3 => rdbk_crc,
      O => fecc_crcerror_0
    );
rdbk_nsb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA10BABA"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(1),
      I2 => fecc_eccerrornotsingle,
      I3 => rdbk_nsb_i_2_n_0,
      I4 => \^out_port_reg\(5),
      O => rdbk_nsb_reg
    );
rdbk_nsb_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFFFFFFFFFF"
    )
        port map (
      I0 => port_id_reg(3),
      I1 => port_id_reg(2),
      I2 => port_id_reg(1),
      I3 => cs,
      I4 => ws,
      I5 => port_id_reg(0),
      O => rdbk_nsb_i_2_n_0
    );
rdbk_sbe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0FBB00"
    )
        port map (
      I0 => rdbk_nsb_i_2_n_0,
      I1 => \^out_port_reg\(6),
      I2 => p_4_in(0),
      I3 => p_4_in(1),
      I4 => fecc_eccerrorsingle,
      O => \ports_loop[6].out_port_flop_0\
    );
read_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => read_strobe_value,
      Q => rs,
      R => '0'
    );
read_strobe_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"4000000001000000"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(17),
      I3 => strobe_type,
      I4 => t_state(1),
      I5 => '1',
      O5 => read_strobe_value,
      O6 => write_strobe_value
    );
regbank_type_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080020000000000"
    )
        port map (
      I0 => flag_enable_flop_0(12),
      I1 => flag_enable_flop_0(13),
      I2 => flag_enable_flop_0(14),
      I3 => flag_enable_flop_0(15),
      I4 => flag_enable_flop_0(16),
      I5 => flag_enable_flop_0(17),
      O => regbank_type
    );
register_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => register_enable_value,
      Q => register_enable,
      R => '0'
    );
register_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"C0CC0000A0AA0000"
    )
        port map (
      I0 => flag_enable_type,
      I1 => register_enable_type,
      I2 => flag_enable_flop_0(12),
      I3 => flag_enable_flop_0(17),
      I4 => t_state(1),
      I5 => '1',
      O5 => flag_enable_value,
      O6 => register_enable_value
    );
register_enable_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"00013F3F0010F7CE"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(15),
      I3 => flag_enable_flop_0(16),
      I4 => flag_enable_flop_0(17),
      I5 => '1',
      O5 => flag_enable_type,
      O6 => register_enable_type
    );
rom_cr_ne_err_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rom_error,
      I1 => cgo_flag_i_2_n_0,
      I2 => \^out_port_reg\(4),
      O => firmware0
    );
run_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => run_value,
      Q => run,
      R => '0'
    );
shadow_bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_bank,
      Q => shadow_bank,
      R => '0'
    );
shadow_carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_carry_flag,
      Q => shadow_carry_flag,
      R => '0'
    );
shadow_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shadow_zero_value,
      Q => shadow_zero_flag,
      R => '0'
    );
shift_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => shift_carry_value,
      Q => shift_carry,
      R => '0'
    );
shift_carry_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAACCF0F0F0F0"
    )
        port map (
      I0 => sx(0),
      I1 => sx(7),
      I2 => shadow_carry_flag,
      I3 => flag_enable_flop_0(3),
      I4 => flag_enable_flop_0(7),
      I5 => flag_enable_flop_0(16),
      O => shift_carry_value
    );
spm_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => spm_enable_value,
      Q => spm_enable,
      R => '0'
    );
spm_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"8000000020000000"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(17),
      I3 => strobe_type,
      I4 => t_state(1),
      I5 => '1',
      O5 => const_strobe_value,
      O6 => spm_enable_value
    );
\sta_ptr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \^out_port_reg\(0),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(0),
      I3 => \^read_strobe_flop_0\,
      O => D(0)
    );
\sta_ptr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \^out_port_reg\(2),
      I1 => \^ports_loop[2].port_id_flop_0\,
      I2 => Q(6),
      I3 => \sta_ptr_reg[10]_0\,
      O => D(6)
    );
\sta_ptr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF4"
    )
        port map (
      I0 => \sta_ptr_reg[10]\,
      I1 => burst,
      I2 => \^read_strobe_flop_0\,
      I3 => \^ports_loop[2].port_id_flop_0\,
      I4 => \^const_strobe_flop_0\,
      O => E(1)
    );
\sta_ptr[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^outregistered.instruction_reg[0]\(0),
      I1 => \^outregistered.instruction_reg[0]\(1),
      O => \sta_ptr[11]_i_10_n_0\
    );
\sta_ptr[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \^const_strobe_flop_2\,
      I1 => port_id(3),
      I2 => port_id(2),
      I3 => \sta_ptr[11]_i_10_n_0\,
      I4 => rs,
      I5 => port_id(4),
      O => \^read_strobe_flop_0\
    );
\sta_ptr[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E00000"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(2),
      I4 => port_id_reg(3),
      I5 => port_id_reg(1),
      O => \^const_strobe_flop_0\
    );
\sta_ptr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \^out_port_reg\(1),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(1),
      I3 => \^read_strobe_flop_0\,
      I4 => Q(0),
      O => D(1)
    );
\sta_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B88B8B8B8B"
    )
        port map (
      I0 => \^out_port_reg\(2),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^read_strobe_flop_0\,
      O => D(2)
    );
\sta_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8B8BB8B8B8B8"
    )
        port map (
      I0 => \^out_port_reg\(3),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(3),
      I3 => \sta_ptr_reg[3]\,
      I4 => \^read_strobe_flop_0\,
      I5 => Q(2),
      O => D(3)
    );
\sta_ptr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^out_port_reg\(4),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(4),
      I3 => \sta_ptr_reg[4]\,
      O => D(4)
    );
\sta_ptr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^out_port_reg\(5),
      I1 => \^const_strobe_flop_0\,
      I2 => Q(5),
      I3 => \sta_ptr_reg[5]\,
      O => D(5)
    );
\sta_ptr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFF4"
    )
        port map (
      I0 => \sta_ptr_reg[10]\,
      I1 => burst,
      I2 => \^read_strobe_flop_0\,
      I3 => \^const_strobe_flop_0\,
      I4 => \^ports_loop[2].port_id_flop_0\,
      O => E(0)
    );
stack_bit_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_bit,
      Q => special_bit,
      R => '0'
    );
\stack_loop[0].lsb_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_pointer_value(0),
      Q => stack_pointer(0),
      R => internal_reset
    );
\stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 4),
      CO(3 downto 0) => stack_pointer_carry(3 downto 0),
      DI(7 downto 4) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 4),
      DI(3 downto 0) => feed_pointer_value(3 downto 0),
      O(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => stack_pointer_value(4 downto 0),
      S(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4 downto 0) => half_pointer_value(4 downto 0)
    );
\stack_loop[0].lsb_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"001529AAAAAAAAAA"
    )
        port map (
      I0 => stack_pointer(0),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state(1),
      I4 => t_state(2),
      I5 => '1',
      O5 => feed_pointer_value(0),
      O6 => half_pointer_value(0)
    );
\stack_loop[1].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_pointer_value(1),
      Q => stack_pointer(1),
      R => internal_reset
    );
\stack_loop[1].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => stack_pointer(1),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state(1),
      I4 => t_state(2),
      I5 => '1',
      O5 => feed_pointer_value(1),
      O6 => half_pointer_value(1)
    );
\stack_loop[2].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_pointer_value(2),
      Q => stack_pointer(2),
      R => internal_reset
    );
\stack_loop[2].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => stack_pointer(2),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state(1),
      I4 => t_state(2),
      I5 => '1',
      O5 => feed_pointer_value(2),
      O6 => half_pointer_value(2)
    );
\stack_loop[3].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_pointer_value(3),
      Q => stack_pointer(3),
      R => internal_reset
    );
\stack_loop[3].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => stack_pointer(3),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state(1),
      I4 => t_state(2),
      I5 => '1',
      O5 => feed_pointer_value(3),
      O6 => half_pointer_value(3)
    );
\stack_loop[4].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_pointer_value(4),
      Q => stack_pointer(4),
      R => internal_reset
    );
\stack_loop[4].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => stack_pointer(4),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state(1),
      I4 => t_state(2),
      I5 => '1',
      O5 => feed_pointer_value(4),
      O6 => half_pointer_value(4)
    );
stack_ram_high: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => stack_pointer(4 downto 0),
      ADDRB(4 downto 0) => stack_pointer(4 downto 0),
      ADDRC(4 downto 0) => stack_pointer(4 downto 0),
      ADDRD(4 downto 0) => stack_pointer(4 downto 0),
      DIA(1 downto 0) => \^address\(5 downto 4),
      DIB(1 downto 0) => \^address\(7 downto 6),
      DIC(1 downto 0) => \^address\(9 downto 8),
      DID(1 downto 0) => \^address\(11 downto 10),
      DOA(1 downto 0) => stack_memory(5 downto 4),
      DOB(1 downto 0) => stack_memory(7 downto 6),
      DOC(1 downto 0) => stack_memory(9 downto 8),
      DOD(1 downto 0) => stack_memory(11 downto 10),
      WCLK => icap_clk,
      WE => t_state(1)
    );
stack_ram_low: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => stack_pointer(4 downto 0),
      ADDRB(4 downto 0) => stack_pointer(4 downto 0),
      ADDRC(4 downto 0) => stack_pointer(4 downto 0),
      ADDRD(4 downto 0) => stack_pointer(4 downto 0),
      DIA(1) => zero_flag,
      DIA(0) => carry_flag,
      DIB(1) => run,
      DIB(0) => bank,
      DIC(1 downto 0) => \^address\(1 downto 0),
      DID(1 downto 0) => \^address\(3 downto 2),
      DOA(1) => stack_zero_flag,
      DOA(0) => stack_carry_flag,
      DOB(1) => stack_bit,
      DOB(0) => stack_bank,
      DOC(1 downto 0) => stack_memory(1 downto 0),
      DOD(1 downto 0) => stack_memory(3 downto 2),
      WCLK => icap_clk,
      WE => t_state(1)
    );
stack_zero_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => stack_zero_flag,
      Q => shadow_zero_value,
      R => '0'
    );
\status_reg2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E00000"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(3),
      I4 => port_id_reg(1),
      I5 => port_id_reg(2),
      O => const_strobe_flop_1(0)
    );
\status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001110"
    )
        port map (
      I0 => port_id_reg(1),
      I1 => port_id_reg(0),
      I2 => cs,
      I3 => ws,
      I4 => port_id_reg(2),
      I5 => port_id_reg(3),
      O => \ports_loop[1].port_id_flop_0\(0)
    );
storage_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
        port map (
      I0 => cs,
      I1 => ws,
      I2 => port_id_reg(0),
      I3 => port_id_reg(2),
      I4 => port_id_reg(3),
      I5 => port_id_reg(1),
      O => \^const_strobe_flop_2\
    );
sx_addr4_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => sx_addr4_value,
      Q => sx_addr(4),
      R => '0'
    );
sx_addr4_value_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CC33FF0080808080"
    )
        port map (
      I0 => '0',
      I1 => t_state(2),
      I2 => '0',
      I3 => bank,
      I4 => loadstar_type,
      I5 => '1',
      O5 => NLW_sx_addr4_value_lut_O5_UNCONNECTED,
      O6 => sx_addr4_value
    );
sync_sleep_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => sleep,
      Q => sync_sleep,
      R => '0'
    );
t_state1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => t_state_value(1),
      Q => t_state(1),
      R => '0'
    );
t_state2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => t_state_value(2),
      Q => t_state(2),
      R => '0'
    );
t_state_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0083000B00C4004C"
    )
        port map (
      I0 => t_state(1),
      I1 => t_state(2),
      I2 => sync_sleep,
      I3 => internal_reset,
      I4 => special_bit,
      I5 => '1',
      O5 => t_state_value(1),
      O6 => t_state_value(2)
    );
\timer_rdsel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => port_id_reg(2),
      I1 => port_id_reg(3),
      I2 => port_id_reg(1),
      I3 => port_id_reg(0),
      I4 => cs,
      I5 => ws,
      O => \^ports_loop[2].port_id_flop_1\(0)
    );
timer_snap_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out_port_reg\(7),
      I1 => \^ports_loop[2].port_id_flop_1\(0),
      O => timer_snap0
    );
upper_parity_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => arith_logical_result(2),
      I1 => arith_logical_result(3),
      I2 => arith_logical_result(4),
      I3 => arith_logical_result(5),
      I4 => arith_logical_result(6),
      I5 => arith_logical_result(7),
      O => upper_parity
    );
upper_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => bank,
      ADDRA(3 downto 0) => flag_enable_flop_0(7 downto 4),
      ADDRB(4) => sx_addr(4),
      ADDRB(3 downto 0) => flag_enable_flop_0(11 downto 8),
      ADDRC(4) => bank,
      ADDRC(3 downto 0) => flag_enable_flop_0(7 downto 4),
      ADDRD(4) => sx_addr(4),
      ADDRD(3 downto 0) => flag_enable_flop_0(11 downto 8),
      DIA(1 downto 0) => alu_result(5 downto 4),
      DIB(1 downto 0) => alu_result(5 downto 4),
      DIC(1 downto 0) => alu_result(7 downto 6),
      DID(1 downto 0) => alu_result(7 downto 6),
      DOA(1 downto 0) => sy(5 downto 4),
      DOB(1 downto 0) => sx(5 downto 4),
      DOC(1 downto 0) => sy(7 downto 6),
      DOD(1 downto 0) => sx(7 downto 6),
      WCLK => icap_clk,
      WE => register_enable
    );
upper_zero_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF000000000000"
    )
        port map (
      I0 => flag_enable_flop_0(14),
      I1 => flag_enable_flop_0(15),
      I2 => flag_enable_flop_0(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => upper_zero_sel
    );
use_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => use_zero_flag_value,
      Q => use_zero_flag,
      R => '0'
    );
use_zero_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"A280000000F000F0"
    )
        port map (
      I0 => flag_enable_flop_0(13),
      I1 => flag_enable_flop_0(14),
      I2 => flag_enable_flop_0(15),
      I3 => flag_enable_flop_0(16),
      I4 => '1',
      I5 => '1',
      O5 => strobe_type,
      O6 => use_zero_flag_value
    );
write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => write_strobe_value,
      Q => ws,
      R => '0'
    );
zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => icap_clk,
      CE => flag_enable,
      D => zero_flag_value,
      Q => zero_flag,
      R => internal_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro is
  port (
    sync_out : out STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => aux_error_cr_es,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0 is
  port (
    sync_out : out STD_LOGIC;
    aux_error_cr_ne : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => aux_error_cr_ne,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1 is
  port (
    sync_out : out STD_LOGIC;
    aux_error_uc : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => aux_error_uc,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2 is
  port (
    sync_out : out STD_LOGIC;
    icap_avail : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_avail,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3 is
  port (
    next_request0 : out STD_LOGIC;
    sync_out : out STD_LOGIC;
    next_request_reg : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  signal \^sync_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
  sync_out <= \^sync_out\;
next_request_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sync_out\,
      I1 => next_request_reg,
      O => next_request0
    );
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => cap_gnt,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => \^sync_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4 is
  port (
    sync_out : out STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_prdone,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5 is
  port (
    sync_out : out STD_LOGIC;
    icap_prerror : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_prerror,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6 is
  port (
    sync_out : out STD_LOGIC;
    cap_rel : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6 : entity is "sem_ultra_v3_1_9_synchro";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6 is
  signal q_sync_a : STD_LOGIC;
  signal q_sync_b : STD_LOGIC;
  signal q_sync_c : STD_LOGIC;
  signal q_sync_d : STD_LOGIC;
  signal q_sync_e : STD_LOGIC;
  signal q_sync_f : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of sync_a : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sync_a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sync_a : label is "FD";
  attribute ASYNC_REG of sync_b : label is std.standard.true;
  attribute BOX_TYPE of sync_b : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_b : label is "FD";
  attribute ASYNC_REG of sync_c : label is std.standard.true;
  attribute BOX_TYPE of sync_c : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_c : label is "FD";
  attribute ASYNC_REG of sync_d : label is std.standard.true;
  attribute BOX_TYPE of sync_d : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_d : label is "FD";
  attribute ASYNC_REG of sync_e : label is std.standard.true;
  attribute BOX_TYPE of sync_e : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_e : label is "FD";
  attribute ASYNC_REG of sync_f : label is std.standard.true;
  attribute BOX_TYPE of sync_f : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_f : label is "FD";
  attribute ASYNC_REG of sync_g : label is std.standard.true;
  attribute BOX_TYPE of sync_g : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sync_g : label is "FD";
begin
sync_a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => cap_rel,
      Q => q_sync_a,
      R => '0'
    );
sync_b: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_a,
      Q => q_sync_b,
      R => '0'
    );
sync_c: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_b,
      Q => q_sync_c,
      R => '0'
    );
sync_d: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_c,
      Q => q_sync_d,
      R => '0'
    );
sync_e: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_d,
      Q => q_sync_e,
      R => '0'
    );
sync_f: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_e,
      Q => q_sync_f,
      R => '0'
    );
sync_g: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => q_sync_f,
      Q => sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CEP : in STD_LOGIC;
    icap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr is
  signal timer_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_DSP48E2_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E2_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E2_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E2_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E2_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E2_inst_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E2_inst : label is "PRIMITIVE";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of DSP48E2_inst : label is "{SYNTH-12 {cell *THIS*}}";
begin
DSP48E2_inst: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 0,
      INMODEREG => 0,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"000000000",
      IS_RSTALLCARRYIN_INVERTED => '0',
      IS_RSTALUMODE_INVERTED => '0',
      IS_RSTA_INVERTED => '0',
      IS_RSTB_INVERTED => '0',
      IS_RSTCTRL_INVERTED => '0',
      IS_RSTC_INVERTED => '0',
      IS_RSTD_INVERTED => '0',
      IS_RSTINMODE_INVERTED => '0',
      IS_RSTM_INVERTED => '0',
      IS_RSTP_INVERTED => '0',
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E2_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E2_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E2_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E2_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => icap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_DSP48E2_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"010000000",
      OVERFLOW => NLW_DSP48E2_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => D(31 downto 0),
      P(15 downto 0) => timer_val(15 downto 0),
      PATTERNBDETECT => NLW_DSP48E2_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E2_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_DSP48E2_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E2_inst_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_DSP48E2_inst_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    burst : out STD_LOGIC;
    \sta_ptr_reg[3]_0\ : out STD_LOGIC;
    \sta_ptr_reg[9]_0\ : out STD_LOGIC;
    \sta_ptr_reg[1]_0\ : out STD_LOGIC;
    \sta_ptr_reg[2]_0\ : out STD_LOGIC;
    \sta_ptr_reg[11]_0\ : out STD_LOGIC;
    \sta_ptr_reg[8]_0\ : out STD_LOGIC;
    \sta_ptr_reg[9]_1\ : out STD_LOGIC;
    \sta_ptr_reg[2]_1\ : out STD_LOGIC;
    \sta_ptr_reg[3]_1\ : out STD_LOGIC;
    \sta_ptr_reg[4]_0\ : out STD_LOGIC;
    \sta_ptr_reg[5]_0\ : out STD_LOGIC;
    \end_ptr_reg[10]_0\ : out STD_LOGIC;
    \end_ptr_reg[11]_0\ : out STD_LOGIC;
    storage : out STD_LOGIC;
    storage_0 : out STD_LOGIC;
    storage_1 : out STD_LOGIC;
    storage_2 : out STD_LOGIC;
    icap_clk : in STD_LOGIC;
    bram_enable : in STD_LOGIC;
    sync_init : in STD_LOGIC;
    out_port_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sta_ptr_reg[6]_0\ : in STD_LOGIC;
    storage_3 : in STD_LOGIC;
    \end_ptr_reg[10]_1\ : in STD_LOGIC;
    \sta_ptr_reg[8]_1\ : in STD_LOGIC;
    port_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bgo_strobe : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \end_ptr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal \^burst\ : STD_LOGIC;
  signal burst_flag_i_1_n_0 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_32 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_33 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_34 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_35 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_36 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_37 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_38 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_39 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_40 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_41 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_42 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_43 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_44 : STD_LOGIC;
  signal dbuffer_dbuffer_mem_n_45 : STD_LOGIC;
  signal doutb : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal ena : STD_LOGIC;
  signal end_ptr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal reg_fm_icap_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_fm_icap_addr : signal is std.standard.true;
  signal reg_fm_icap_ena : STD_LOGIC;
  attribute DONT_TOUCH of reg_fm_icap_ena : signal is std.standard.true;
  signal reg_fm_icap_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DONT_TOUCH of reg_fm_icap_o : signal is std.standard.true;
  signal reg_fm_icap_rsv : STD_LOGIC;
  attribute DONT_TOUCH of reg_fm_icap_rsv : signal is std.standard.true;
  signal reg_fm_icap_rsv_i_1_n_0 : STD_LOGIC;
  signal reg_fm_icap_wc : STD_LOGIC;
  attribute DONT_TOUCH of reg_fm_icap_wc : signal is std.standard.true;
  signal reg_fm_icap_wc_i_1_n_0 : STD_LOGIC;
  signal reg_to_icap_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute DONT_TOUCH of reg_to_icap_addr : signal is std.standard.true;
  signal reg_to_icap_csib : STD_LOGIC;
  attribute DONT_TOUCH of reg_to_icap_csib : signal is std.standard.true;
  signal reg_to_icap_ena : STD_LOGIC;
  attribute DONT_TOUCH of reg_to_icap_ena : signal is std.standard.true;
  signal reg_to_icap_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DONT_TOUCH of reg_to_icap_i : signal is std.standard.true;
  signal reg_to_icap_rdwrb : STD_LOGIC;
  attribute DONT_TOUCH of reg_to_icap_rdwrb : signal is std.standard.true;
  signal reg_to_icap_rsvb : STD_LOGIC;
  attribute DONT_TOUCH of reg_to_icap_rsvb : signal is std.standard.true;
  signal reg_to_icap_wcb : STD_LOGIC;
  attribute DONT_TOUCH of reg_to_icap_wcb : signal is std.standard.true;
  signal \sta_ptr[11]_i_2_n_0\ : STD_LOGIC;
  signal \sta_ptr[11]_i_7_n_0\ : STD_LOGIC;
  signal \sta_ptr[11]_i_8_n_0\ : STD_LOGIC;
  signal \sta_ptr[11]_i_9_n_0\ : STD_LOGIC;
  signal \sta_ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sta_ptr[7]_i_2_n_0\ : STD_LOGIC;
  signal \sta_ptr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sta_ptr[8]_i_2_n_0\ : STD_LOGIC;
  signal \sta_ptr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sta_ptr[9]_i_2_n_0\ : STD_LOGIC;
  signal \^sta_ptr_reg[11]_0\ : STD_LOGIC;
  signal \^sta_ptr_reg[1]_0\ : STD_LOGIC;
  signal \^sta_ptr_reg[3]_0\ : STD_LOGIC;
  signal \^sta_ptr_reg[9]_0\ : STD_LOGIC;
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \reg_fm_icap_addr_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[3]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[4]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[5]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[6]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[7]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[8]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_addr_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_addr_reg[9]\ : label is "yes";
  attribute DONT_TOUCH of reg_fm_icap_ena_reg : label is std.standard.true;
  attribute KEEP of reg_fm_icap_ena_reg : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[0]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[10]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[10]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[11]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[11]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[12]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[12]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[13]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[13]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[14]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[14]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[15]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[15]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[16]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[16]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[17]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[17]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[18]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[18]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[19]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[19]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[20]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[20]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[21]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[21]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[22]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[22]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[23]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[23]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[24]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[24]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[25]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[25]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[26]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[26]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[27]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[27]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[28]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[28]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[29]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[29]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[30]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[30]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[31]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[31]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[3]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[4]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[5]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[6]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[7]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[8]\ : label is "yes";
  attribute DONT_TOUCH of \reg_fm_icap_o_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_fm_icap_o_reg[9]\ : label is "yes";
  attribute DONT_TOUCH of reg_fm_icap_rsv_reg : label is std.standard.true;
  attribute KEEP of reg_fm_icap_rsv_reg : label is "yes";
  attribute DONT_TOUCH of reg_fm_icap_wc_reg : label is std.standard.true;
  attribute KEEP of reg_fm_icap_wc_reg : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[0]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[3]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[4]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[5]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[6]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[7]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[8]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_addr_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_addr_reg[9]\ : label is "yes";
  attribute DONT_TOUCH of reg_to_icap_csib_reg : label is std.standard.true;
  attribute KEEP of reg_to_icap_csib_reg : label is "yes";
  attribute DONT_TOUCH of reg_to_icap_ena_reg : label is std.standard.true;
  attribute KEEP of reg_to_icap_ena_reg : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[0]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[10]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[10]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[11]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[11]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[12]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[12]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[13]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[13]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[14]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[14]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[15]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[15]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[16]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[16]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[17]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[17]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[18]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[18]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[19]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[19]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[20]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[20]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[21]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[21]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[22]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[22]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[23]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[23]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[24]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[24]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[25]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[25]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[26]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[26]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[27]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[27]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[28]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[28]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[29]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[29]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[30]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[30]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[31]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[31]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[3]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[4]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[5]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[6]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[7]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[8]\ : label is "yes";
  attribute DONT_TOUCH of \reg_to_icap_i_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_to_icap_i_reg[9]\ : label is "yes";
  attribute DONT_TOUCH of reg_to_icap_rdwrb_reg : label is std.standard.true;
  attribute KEEP of reg_to_icap_rdwrb_reg : label is "yes";
  attribute DONT_TOUCH of reg_to_icap_rsvb_reg : label is std.standard.true;
  attribute KEEP of reg_to_icap_rsvb_reg : label is "yes";
  attribute DONT_TOUCH of reg_to_icap_wcb_reg : label is std.standard.true;
  attribute KEEP of reg_to_icap_wcb_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sta_ptr[3]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sta_ptr[4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sta_ptr[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sta_ptr[9]_i_2\ : label is "soft_lutpair30";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  burst <= \^burst\;
  icap_csib <= reg_to_icap_csib;
  icap_i(31 downto 0) <= reg_to_icap_i(31 downto 0);
  icap_rdwrb <= reg_to_icap_rdwrb;
  \sta_ptr_reg[11]_0\ <= \^sta_ptr_reg[11]_0\;
  \sta_ptr_reg[1]_0\ <= \^sta_ptr_reg[1]_0\;
  \sta_ptr_reg[3]_0\ <= \^sta_ptr_reg[3]_0\;
  \sta_ptr_reg[9]_0\ <= \^sta_ptr_reg[9]_0\;
burst_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => bgo_strobe,
      I1 => \^sta_ptr_reg[11]_0\,
      I2 => \^burst\,
      O => burst_flag_i_1_n_0
    );
burst_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => burst_flag_i_1_n_0,
      Q => \^burst\,
      R => sync_init
    );
dbuffer_dbuffer_mem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer_mem
     port map (
      D(31) => doutb(27),
      D(30) => doutb(28),
      D(29) => doutb(29),
      D(28) => doutb(30),
      D(27) => doutb(31),
      D(26) => doutb(32),
      D(25) => doutb(33),
      D(24) => doutb(34),
      D(23) => doutb(18),
      D(22) => doutb(19),
      D(21) => doutb(20),
      D(20) => doutb(21),
      D(19) => doutb(22),
      D(18) => doutb(23),
      D(17) => doutb(24),
      D(16) => doutb(25),
      D(15) => doutb(9),
      D(14) => doutb(10),
      D(13) => doutb(11),
      D(12) => doutb(12),
      D(11) => doutb(13),
      D(10) => doutb(14),
      D(9) => doutb(15),
      D(8) => doutb(16),
      D(7) => doutb(0),
      D(6) => doutb(1),
      D(5) => doutb(2),
      D(4) => doutb(3),
      D(3) => doutb(4),
      D(2) => doutb(5),
      D(1) => doutb(6),
      D(0) => doutb(7),
      Q(11) => addrb(9),
      Q(10) => \^q\(6),
      Q(9 downto 6) => addrb(7 downto 4),
      Q(5 downto 0) => \^q\(5 downto 0),
      bram_enable => bram_enable,
      ena => ena,
      icap_clk => icap_clk,
      \out\ => reg_fm_icap_wc,
      out_port_reg(7 downto 0) => out_port_reg(7 downto 0),
      port_id(1 downto 0) => port_id(1 downto 0),
      \ports_loop[5].in_port_flop_i_3\(5 downto 4) => end_ptr(9 downto 8),
      \ports_loop[5].in_port_flop_i_3\(3 downto 0) => end_ptr(5 downto 2),
      \sta_ptr_reg[2]\ => \sta_ptr_reg[2]_1\,
      \sta_ptr_reg[3]\ => \sta_ptr_reg[3]_1\,
      \sta_ptr_reg[4]\ => \sta_ptr_reg[4]_0\,
      \sta_ptr_reg[5]\ => \sta_ptr_reg[5]_0\,
      storage_0 => dbuffer_dbuffer_mem_n_32,
      storage_1 => dbuffer_dbuffer_mem_n_33,
      storage_10 => dbuffer_dbuffer_mem_n_42,
      storage_11 => dbuffer_dbuffer_mem_n_43,
      storage_12 => dbuffer_dbuffer_mem_n_44,
      storage_13 => dbuffer_dbuffer_mem_n_45,
      storage_14 => storage,
      storage_15 => storage_0,
      storage_16 => storage_1,
      storage_17 => storage_2,
      storage_18 => reg_fm_icap_ena,
      storage_19 => storage_3,
      storage_2 => dbuffer_dbuffer_mem_n_34,
      storage_20(9 downto 0) => reg_fm_icap_addr(9 downto 0),
      storage_21(31 downto 0) => reg_fm_icap_o(31 downto 0),
      storage_3 => dbuffer_dbuffer_mem_n_35,
      storage_4 => dbuffer_dbuffer_mem_n_36,
      storage_5 => dbuffer_dbuffer_mem_n_37,
      storage_6 => dbuffer_dbuffer_mem_n_38,
      storage_7 => dbuffer_dbuffer_mem_n_39,
      storage_8 => dbuffer_dbuffer_mem_n_40,
      storage_9 => dbuffer_dbuffer_mem_n_41
    );
ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \^burst\,
      Q => ena,
      R => sync_init
    );
\end_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(0),
      Q => end_ptr(0),
      R => sync_init
    );
\end_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[10]_1\,
      D => out_port_reg(6),
      Q => end_ptr(10),
      R => sync_init
    );
\end_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[10]_1\,
      D => out_port_reg(7),
      Q => end_ptr(11),
      R => sync_init
    );
\end_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(1),
      Q => end_ptr(1),
      R => sync_init
    );
\end_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(2),
      Q => end_ptr(2),
      R => sync_init
    );
\end_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(3),
      Q => end_ptr(3),
      R => sync_init
    );
\end_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(4),
      Q => end_ptr(4),
      R => sync_init
    );
\end_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(5),
      Q => end_ptr(5),
      R => sync_init
    );
\end_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(6),
      Q => end_ptr(6),
      R => sync_init
    );
\end_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[7]_0\(0),
      D => out_port_reg(7),
      Q => end_ptr(7),
      R => sync_init
    );
\end_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[10]_1\,
      D => out_port_reg(4),
      Q => end_ptr(8),
      R => sync_init
    );
\end_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \end_ptr_reg[10]_1\,
      D => out_port_reg(5),
      Q => end_ptr(9),
      R => sync_init
    );
\ports_loop[0].in_port_flop_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => addrb(6),
      I1 => end_ptr(0),
      I2 => port_id(1),
      I3 => port_id(0),
      I4 => \^q\(0),
      O => \sta_ptr_reg[8]_0\
    );
\ports_loop[1].in_port_flop_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => addrb(7),
      I1 => end_ptr(1),
      I2 => port_id(1),
      I3 => port_id(0),
      I4 => \^q\(1),
      O => \sta_ptr_reg[9]_1\
    );
\ports_loop[6].in_port_flop_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => end_ptr(10),
      I1 => end_ptr(6),
      I2 => port_id(1),
      I3 => port_id(0),
      I4 => addrb(4),
      O => \end_ptr_reg[10]_0\
    );
\ports_loop[7].in_port_flop_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => end_ptr(11),
      I1 => end_ptr(7),
      I2 => port_id(1),
      I3 => port_id(0),
      I4 => addrb(5),
      O => \end_ptr_reg[11]_0\
    );
\reg_fm_icap_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(0),
      Q => reg_fm_icap_addr(0),
      R => sync_init
    );
\reg_fm_icap_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(1),
      Q => reg_fm_icap_addr(1),
      R => sync_init
    );
\reg_fm_icap_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(2),
      Q => reg_fm_icap_addr(2),
      R => sync_init
    );
\reg_fm_icap_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(3),
      Q => reg_fm_icap_addr(3),
      R => sync_init
    );
\reg_fm_icap_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(4),
      Q => reg_fm_icap_addr(4),
      R => sync_init
    );
\reg_fm_icap_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(5),
      Q => reg_fm_icap_addr(5),
      R => sync_init
    );
\reg_fm_icap_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(6),
      Q => reg_fm_icap_addr(6),
      R => sync_init
    );
\reg_fm_icap_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(7),
      Q => reg_fm_icap_addr(7),
      R => sync_init
    );
\reg_fm_icap_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(8),
      Q => reg_fm_icap_addr(8),
      R => sync_init
    );
\reg_fm_icap_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_addr(9),
      Q => reg_fm_icap_addr(9),
      R => sync_init
    );
reg_fm_icap_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_to_icap_ena,
      Q => reg_fm_icap_ena,
      R => sync_init
    );
\reg_fm_icap_o_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(0),
      Q => reg_fm_icap_o(0),
      S => sync_init
    );
\reg_fm_icap_o_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(10),
      Q => reg_fm_icap_o(10),
      S => sync_init
    );
\reg_fm_icap_o_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(11),
      Q => reg_fm_icap_o(11),
      S => sync_init
    );
\reg_fm_icap_o_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(12),
      Q => reg_fm_icap_o(12),
      S => sync_init
    );
\reg_fm_icap_o_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(13),
      Q => reg_fm_icap_o(13),
      S => sync_init
    );
\reg_fm_icap_o_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(14),
      Q => reg_fm_icap_o(14),
      S => sync_init
    );
\reg_fm_icap_o_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(15),
      Q => reg_fm_icap_o(15),
      S => sync_init
    );
\reg_fm_icap_o_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(16),
      Q => reg_fm_icap_o(16),
      S => sync_init
    );
\reg_fm_icap_o_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(17),
      Q => reg_fm_icap_o(17),
      S => sync_init
    );
\reg_fm_icap_o_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(18),
      Q => reg_fm_icap_o(18),
      S => sync_init
    );
\reg_fm_icap_o_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(19),
      Q => reg_fm_icap_o(19),
      S => sync_init
    );
\reg_fm_icap_o_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(1),
      Q => reg_fm_icap_o(1),
      S => sync_init
    );
\reg_fm_icap_o_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(20),
      Q => reg_fm_icap_o(20),
      S => sync_init
    );
\reg_fm_icap_o_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(21),
      Q => reg_fm_icap_o(21),
      S => sync_init
    );
\reg_fm_icap_o_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(22),
      Q => reg_fm_icap_o(22),
      S => sync_init
    );
\reg_fm_icap_o_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(23),
      Q => reg_fm_icap_o(23),
      S => sync_init
    );
\reg_fm_icap_o_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(24),
      Q => reg_fm_icap_o(24),
      S => sync_init
    );
\reg_fm_icap_o_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(25),
      Q => reg_fm_icap_o(25),
      S => sync_init
    );
\reg_fm_icap_o_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(26),
      Q => reg_fm_icap_o(26),
      S => sync_init
    );
\reg_fm_icap_o_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(27),
      Q => reg_fm_icap_o(27),
      S => sync_init
    );
\reg_fm_icap_o_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(28),
      Q => reg_fm_icap_o(28),
      S => sync_init
    );
\reg_fm_icap_o_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(29),
      Q => reg_fm_icap_o(29),
      S => sync_init
    );
\reg_fm_icap_o_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(2),
      Q => reg_fm_icap_o(2),
      S => sync_init
    );
\reg_fm_icap_o_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(30),
      Q => reg_fm_icap_o(30),
      S => sync_init
    );
\reg_fm_icap_o_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(31),
      Q => reg_fm_icap_o(31),
      S => sync_init
    );
\reg_fm_icap_o_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(3),
      Q => reg_fm_icap_o(3),
      S => sync_init
    );
\reg_fm_icap_o_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(4),
      Q => reg_fm_icap_o(4),
      S => sync_init
    );
\reg_fm_icap_o_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(5),
      Q => reg_fm_icap_o(5),
      S => sync_init
    );
\reg_fm_icap_o_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(6),
      Q => reg_fm_icap_o(6),
      S => sync_init
    );
\reg_fm_icap_o_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(7),
      Q => reg_fm_icap_o(7),
      S => sync_init
    );
\reg_fm_icap_o_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(8),
      Q => reg_fm_icap_o(8),
      S => sync_init
    );
\reg_fm_icap_o_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_o(9),
      Q => reg_fm_icap_o(9),
      S => sync_init
    );
reg_fm_icap_rsv_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_to_icap_rsvb,
      O => reg_fm_icap_rsv_i_1_n_0
    );
reg_fm_icap_rsv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_fm_icap_rsv_i_1_n_0,
      Q => reg_fm_icap_rsv,
      R => sync_init
    );
reg_fm_icap_wc_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_to_icap_wcb,
      O => reg_fm_icap_wc_i_1_n_0
    );
reg_fm_icap_wc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => reg_fm_icap_wc_i_1_n_0,
      Q => reg_fm_icap_wc,
      R => sync_init
    );
\reg_to_icap_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_41,
      Q => reg_to_icap_addr(0),
      R => sync_init
    );
\reg_to_icap_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_40,
      Q => reg_to_icap_addr(1),
      R => sync_init
    );
\reg_to_icap_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_39,
      Q => reg_to_icap_addr(2),
      R => sync_init
    );
\reg_to_icap_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_38,
      Q => reg_to_icap_addr(3),
      R => sync_init
    );
\reg_to_icap_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_37,
      Q => reg_to_icap_addr(4),
      R => sync_init
    );
\reg_to_icap_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_36,
      Q => reg_to_icap_addr(5),
      R => sync_init
    );
\reg_to_icap_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_35,
      Q => reg_to_icap_addr(6),
      R => sync_init
    );
\reg_to_icap_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_34,
      Q => reg_to_icap_addr(7),
      R => sync_init
    );
\reg_to_icap_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_33,
      Q => reg_to_icap_addr(8),
      R => sync_init
    );
\reg_to_icap_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_32,
      Q => reg_to_icap_addr(9),
      R => sync_init
    );
reg_to_icap_csib_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_42,
      Q => reg_to_icap_csib,
      S => sync_init
    );
reg_to_icap_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => ena,
      Q => reg_to_icap_ena,
      R => sync_init
    );
\reg_to_icap_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(7),
      Q => reg_to_icap_i(0),
      S => sync_init
    );
\reg_to_icap_i_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(14),
      Q => reg_to_icap_i(10),
      S => sync_init
    );
\reg_to_icap_i_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(13),
      Q => reg_to_icap_i(11),
      S => sync_init
    );
\reg_to_icap_i_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(12),
      Q => reg_to_icap_i(12),
      S => sync_init
    );
\reg_to_icap_i_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(11),
      Q => reg_to_icap_i(13),
      S => sync_init
    );
\reg_to_icap_i_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(10),
      Q => reg_to_icap_i(14),
      S => sync_init
    );
\reg_to_icap_i_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(9),
      Q => reg_to_icap_i(15),
      S => sync_init
    );
\reg_to_icap_i_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(25),
      Q => reg_to_icap_i(16),
      S => sync_init
    );
\reg_to_icap_i_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(24),
      Q => reg_to_icap_i(17),
      S => sync_init
    );
\reg_to_icap_i_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(23),
      Q => reg_to_icap_i(18),
      S => sync_init
    );
\reg_to_icap_i_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(22),
      Q => reg_to_icap_i(19),
      S => sync_init
    );
\reg_to_icap_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(6),
      Q => reg_to_icap_i(1),
      S => sync_init
    );
\reg_to_icap_i_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(21),
      Q => reg_to_icap_i(20),
      S => sync_init
    );
\reg_to_icap_i_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(20),
      Q => reg_to_icap_i(21),
      S => sync_init
    );
\reg_to_icap_i_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(19),
      Q => reg_to_icap_i(22),
      S => sync_init
    );
\reg_to_icap_i_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(18),
      Q => reg_to_icap_i(23),
      S => sync_init
    );
\reg_to_icap_i_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(34),
      Q => reg_to_icap_i(24),
      S => sync_init
    );
\reg_to_icap_i_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(33),
      Q => reg_to_icap_i(25),
      S => sync_init
    );
\reg_to_icap_i_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(32),
      Q => reg_to_icap_i(26),
      S => sync_init
    );
\reg_to_icap_i_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(31),
      Q => reg_to_icap_i(27),
      S => sync_init
    );
\reg_to_icap_i_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(30),
      Q => reg_to_icap_i(28),
      S => sync_init
    );
\reg_to_icap_i_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(29),
      Q => reg_to_icap_i(29),
      S => sync_init
    );
\reg_to_icap_i_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(5),
      Q => reg_to_icap_i(2),
      S => sync_init
    );
\reg_to_icap_i_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(28),
      Q => reg_to_icap_i(30),
      S => sync_init
    );
\reg_to_icap_i_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(27),
      Q => reg_to_icap_i(31),
      S => sync_init
    );
\reg_to_icap_i_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(4),
      Q => reg_to_icap_i(3),
      S => sync_init
    );
\reg_to_icap_i_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(3),
      Q => reg_to_icap_i(4),
      S => sync_init
    );
\reg_to_icap_i_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(2),
      Q => reg_to_icap_i(5),
      S => sync_init
    );
\reg_to_icap_i_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(1),
      Q => reg_to_icap_i(6),
      S => sync_init
    );
\reg_to_icap_i_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(0),
      Q => reg_to_icap_i(7),
      S => sync_init
    );
\reg_to_icap_i_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(16),
      Q => reg_to_icap_i(8),
      S => sync_init
    );
\reg_to_icap_i_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => doutb(15),
      Q => reg_to_icap_i(9),
      S => sync_init
    );
reg_to_icap_rdwrb_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_43,
      Q => reg_to_icap_rdwrb,
      S => sync_init
    );
reg_to_icap_rsvb_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_45,
      Q => reg_to_icap_rsvb,
      S => sync_init
    );
reg_to_icap_wcb_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => dbuffer_dbuffer_mem_n_44,
      Q => reg_to_icap_wcb,
      S => sync_init
    );
\sta_ptr[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => out_port_reg(3),
      I1 => \end_ptr_reg[10]_1\,
      I2 => addrb(9),
      I3 => \^sta_ptr_reg[9]_0\,
      I4 => \^q\(6),
      O => \sta_ptr[11]_i_2_n_0\
    );
\sta_ptr[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000004"
    )
        port map (
      I0 => \sta_ptr[11]_i_7_n_0\,
      I1 => \sta_ptr[11]_i_8_n_0\,
      I2 => \sta_ptr[11]_i_9_n_0\,
      I3 => addrb(9),
      I4 => end_ptr(11),
      O => \^sta_ptr_reg[11]_0\
    );
\sta_ptr[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => addrb(7),
      I1 => addrb(5),
      I2 => \^sta_ptr_reg[3]_0\,
      I3 => \^q\(5),
      I4 => addrb(4),
      I5 => addrb(6),
      O => \^sta_ptr_reg[9]_0\
    );
\sta_ptr[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => end_ptr(5),
      I1 => \^q\(5),
      I2 => addrb(5),
      I3 => end_ptr(7),
      I4 => addrb(4),
      I5 => end_ptr(6),
      O => \sta_ptr[11]_i_7_n_0\
    );
\sta_ptr[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => end_ptr(8),
      I1 => addrb(6),
      I2 => addrb(7),
      I3 => end_ptr(9),
      I4 => \^q\(6),
      I5 => end_ptr(10),
      O => \sta_ptr[11]_i_8_n_0\
    );
\sta_ptr[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => end_ptr(3),
      I2 => \^q\(4),
      I3 => end_ptr(4),
      I4 => end_ptr(2),
      I5 => \^q\(2),
      O => \sta_ptr[11]_i_9_n_0\
    );
\sta_ptr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^sta_ptr_reg[1]_0\
    );
\sta_ptr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DDDFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \sta_ptr_reg[8]_1\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \sta_ptr_reg[2]_0\
    );
\sta_ptr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8B88"
    )
        port map (
      I0 => out_port_reg(6),
      I1 => \sta_ptr_reg[6]_0\,
      I2 => \^sta_ptr_reg[3]_0\,
      I3 => \^q\(5),
      I4 => addrb(4),
      O => \sta_ptr[6]_i_1_n_0\
    );
\sta_ptr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BB8B8B8B8B8B8"
    )
        port map (
      I0 => out_port_reg(7),
      I1 => \sta_ptr_reg[6]_0\,
      I2 => addrb(5),
      I3 => \^sta_ptr_reg[3]_0\,
      I4 => \^q\(5),
      I5 => addrb(4),
      O => \sta_ptr[7]_i_2_n_0\
    );
\sta_ptr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F55FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \sta_ptr_reg[8]_1\,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \^sta_ptr_reg[3]_0\
    );
\sta_ptr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB8B8B8B8B8"
    )
        port map (
      I0 => out_port_reg(0),
      I1 => \end_ptr_reg[10]_1\,
      I2 => addrb(6),
      I3 => addrb(4),
      I4 => \sta_ptr[8]_i_2_n_0\,
      I5 => addrb(5),
      O => \sta_ptr[8]_i_1_n_0\
    );
\sta_ptr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \sta_ptr_reg[8]_1\,
      I3 => \^sta_ptr_reg[1]_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \sta_ptr[8]_i_2_n_0\
    );
\sta_ptr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => out_port_reg(1),
      I1 => \end_ptr_reg[10]_1\,
      I2 => addrb(7),
      I3 => addrb(5),
      I4 => \sta_ptr[9]_i_2_n_0\,
      I5 => addrb(6),
      O => \sta_ptr[9]_i_1_n_0\
    );
\sta_ptr[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addrb(4),
      I1 => \^q\(5),
      I2 => \^sta_ptr_reg[3]_0\,
      O => \sta_ptr[9]_i_2_n_0\
    );
\sta_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sync_init
    );
\sta_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(1),
      D => D(6),
      Q => \^q\(6),
      R => sync_init
    );
\sta_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(1),
      D => \sta_ptr[11]_i_2_n_0\,
      Q => addrb(9),
      R => sync_init
    );
\sta_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sync_init
    );
\sta_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sync_init
    );
\sta_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sync_init
    );
\sta_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sync_init
    );
\sta_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sync_init
    );
\sta_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => \sta_ptr[6]_i_1_n_0\,
      Q => addrb(4),
      R => sync_init
    );
\sta_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => \sta_ptr[7]_i_2_n_0\,
      Q => addrb(5),
      R => sync_init
    );
\sta_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(1),
      D => \sta_ptr[8]_i_1_n_0\,
      Q => addrb(6),
      R => sync_init
    );
\sta_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(1),
      D => \sta_ptr[9]_i_1_n_0\,
      Q => addrb(7),
      R => sync_init
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    icap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_snap0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer is
  signal prescaler_current : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal prescaler_next : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \timer_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \timer_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal timer_ena : STD_LOGIC;
  signal timer_rdsel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal timer_snap : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[16]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[17]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[18]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[19]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[20]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[21]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[22]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[23]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[24]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[25]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[26]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[27]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[28]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[29]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[30]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[31]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[32]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[33]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[34]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[35]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[36]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[37]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[38]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[39]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[40]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[41]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[42]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[43]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[44]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[45]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[46]\ : STD_LOGIC;
  signal \timer_snapshot_reg_n_0_[47]\ : STD_LOGIC;
  signal timer_val : STD_LOGIC_VECTOR ( 47 downto 16 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prescaler_current[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \prescaler_current[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \prescaler_current[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \prescaler_current[4]_i_1\ : label is "soft_lutpair39";
begin
\prescaler_current[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prescaler_current(0),
      O => prescaler_next(0)
    );
\prescaler_current[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prescaler_current(0),
      I1 => prescaler_current(1),
      O => prescaler_next(1)
    );
\prescaler_current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => prescaler_current(0),
      I1 => prescaler_current(1),
      I2 => prescaler_current(2),
      O => prescaler_next(2)
    );
\prescaler_current[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => prescaler_current(1),
      I1 => prescaler_current(0),
      I2 => prescaler_current(2),
      I3 => prescaler_current(3),
      O => prescaler_next(3)
    );
\prescaler_current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => prescaler_current(2),
      I1 => prescaler_current(0),
      I2 => prescaler_current(1),
      I3 => prescaler_current(3),
      I4 => prescaler_current(4),
      O => prescaler_next(4)
    );
\prescaler_current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => prescaler_current(3),
      I1 => prescaler_current(1),
      I2 => prescaler_current(0),
      I3 => prescaler_current(2),
      I4 => prescaler_current(4),
      I5 => prescaler_current(5),
      O => prescaler_next(5)
    );
\prescaler_current_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(0),
      Q => prescaler_current(0),
      R => '0'
    );
\prescaler_current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(1),
      Q => prescaler_current(1),
      R => '0'
    );
\prescaler_current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(2),
      Q => prescaler_current(2),
      R => '0'
    );
\prescaler_current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(3),
      Q => prescaler_current(3),
      R => '0'
    );
\prescaler_current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(4),
      Q => prescaler_current(4),
      R => '0'
    );
\prescaler_current_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(5),
      Q => prescaler_current(5),
      R => '0'
    );
\timer_byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[24]\,
      I1 => \timer_snapshot_reg_n_0_[16]\,
      I2 => \timer_snapshot_reg_n_0_[40]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[32]\,
      O => \timer_byte[0]_i_1_n_0\
    );
\timer_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[25]\,
      I1 => \timer_snapshot_reg_n_0_[17]\,
      I2 => \timer_snapshot_reg_n_0_[41]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[33]\,
      O => \timer_byte[1]_i_1_n_0\
    );
\timer_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[26]\,
      I1 => \timer_snapshot_reg_n_0_[18]\,
      I2 => \timer_snapshot_reg_n_0_[42]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[34]\,
      O => \timer_byte[2]_i_1_n_0\
    );
\timer_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[27]\,
      I1 => \timer_snapshot_reg_n_0_[19]\,
      I2 => \timer_snapshot_reg_n_0_[43]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[35]\,
      O => \timer_byte[3]_i_1_n_0\
    );
\timer_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[28]\,
      I1 => \timer_snapshot_reg_n_0_[20]\,
      I2 => \timer_snapshot_reg_n_0_[44]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[36]\,
      O => \timer_byte[4]_i_1_n_0\
    );
\timer_byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[29]\,
      I1 => \timer_snapshot_reg_n_0_[21]\,
      I2 => \timer_snapshot_reg_n_0_[45]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[37]\,
      O => \timer_byte[5]_i_1_n_0\
    );
\timer_byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[30]\,
      I1 => \timer_snapshot_reg_n_0_[22]\,
      I2 => \timer_snapshot_reg_n_0_[46]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[38]\,
      O => \timer_byte[6]_i_1_n_0\
    );
\timer_byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \timer_snapshot_reg_n_0_[31]\,
      I1 => \timer_snapshot_reg_n_0_[23]\,
      I2 => \timer_snapshot_reg_n_0_[47]\,
      I3 => timer_rdsel(1),
      I4 => timer_rdsel(0),
      I5 => \timer_snapshot_reg_n_0_[39]\,
      O => \timer_byte[7]_i_1_n_0\
    );
\timer_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[0]_i_1_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\timer_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[1]_i_1_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\timer_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[2]_i_1_n_0\,
      Q => Q(2),
      R => SR(0)
    );
\timer_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[3]_i_1_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\timer_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[4]_i_1_n_0\,
      Q => Q(4),
      R => SR(0)
    );
\timer_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[5]_i_1_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\timer_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[6]_i_1_n_0\,
      Q => Q(6),
      R => SR(0)
    );
\timer_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \timer_byte[7]_i_1_n_0\,
      Q => Q(7),
      R => SR(0)
    );
timer_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => prescaler_current(5),
      I1 => prescaler_current(3),
      I2 => prescaler_current(1),
      I3 => prescaler_current(0),
      I4 => prescaler_current(2),
      I5 => prescaler_current(4),
      O => prescaler_next(6)
    );
timer_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => prescaler_next(6),
      Q => timer_ena,
      R => '0'
    );
\timer_rdsel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(0),
      Q => timer_rdsel(0),
      R => SR(0)
    );
\timer_rdsel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => E(0),
      D => D(1),
      Q => timer_rdsel(1),
      R => SR(0)
    );
timer_snap_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => timer_snap0,
      Q => timer_snap,
      R => SR(0)
    );
\timer_snapshot_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(16),
      Q => \timer_snapshot_reg_n_0_[16]\,
      R => SR(0)
    );
\timer_snapshot_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(17),
      Q => \timer_snapshot_reg_n_0_[17]\,
      R => SR(0)
    );
\timer_snapshot_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(18),
      Q => \timer_snapshot_reg_n_0_[18]\,
      R => SR(0)
    );
\timer_snapshot_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(19),
      Q => \timer_snapshot_reg_n_0_[19]\,
      R => SR(0)
    );
\timer_snapshot_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(20),
      Q => \timer_snapshot_reg_n_0_[20]\,
      R => SR(0)
    );
\timer_snapshot_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(21),
      Q => \timer_snapshot_reg_n_0_[21]\,
      R => SR(0)
    );
\timer_snapshot_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(22),
      Q => \timer_snapshot_reg_n_0_[22]\,
      R => SR(0)
    );
\timer_snapshot_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(23),
      Q => \timer_snapshot_reg_n_0_[23]\,
      R => SR(0)
    );
\timer_snapshot_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(24),
      Q => \timer_snapshot_reg_n_0_[24]\,
      R => SR(0)
    );
\timer_snapshot_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(25),
      Q => \timer_snapshot_reg_n_0_[25]\,
      R => SR(0)
    );
\timer_snapshot_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(26),
      Q => \timer_snapshot_reg_n_0_[26]\,
      R => SR(0)
    );
\timer_snapshot_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(27),
      Q => \timer_snapshot_reg_n_0_[27]\,
      R => SR(0)
    );
\timer_snapshot_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(28),
      Q => \timer_snapshot_reg_n_0_[28]\,
      R => SR(0)
    );
\timer_snapshot_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(29),
      Q => \timer_snapshot_reg_n_0_[29]\,
      R => SR(0)
    );
\timer_snapshot_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(30),
      Q => \timer_snapshot_reg_n_0_[30]\,
      R => SR(0)
    );
\timer_snapshot_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(31),
      Q => \timer_snapshot_reg_n_0_[31]\,
      R => SR(0)
    );
\timer_snapshot_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(32),
      Q => \timer_snapshot_reg_n_0_[32]\,
      R => SR(0)
    );
\timer_snapshot_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(33),
      Q => \timer_snapshot_reg_n_0_[33]\,
      R => SR(0)
    );
\timer_snapshot_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(34),
      Q => \timer_snapshot_reg_n_0_[34]\,
      R => SR(0)
    );
\timer_snapshot_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(35),
      Q => \timer_snapshot_reg_n_0_[35]\,
      R => SR(0)
    );
\timer_snapshot_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(36),
      Q => \timer_snapshot_reg_n_0_[36]\,
      R => SR(0)
    );
\timer_snapshot_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(37),
      Q => \timer_snapshot_reg_n_0_[37]\,
      R => SR(0)
    );
\timer_snapshot_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(38),
      Q => \timer_snapshot_reg_n_0_[38]\,
      R => SR(0)
    );
\timer_snapshot_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(39),
      Q => \timer_snapshot_reg_n_0_[39]\,
      R => SR(0)
    );
\timer_snapshot_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(40),
      Q => \timer_snapshot_reg_n_0_[40]\,
      R => SR(0)
    );
\timer_snapshot_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(41),
      Q => \timer_snapshot_reg_n_0_[41]\,
      R => SR(0)
    );
\timer_snapshot_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(42),
      Q => \timer_snapshot_reg_n_0_[42]\,
      R => SR(0)
    );
\timer_snapshot_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(43),
      Q => \timer_snapshot_reg_n_0_[43]\,
      R => SR(0)
    );
\timer_snapshot_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(44),
      Q => \timer_snapshot_reg_n_0_[44]\,
      R => SR(0)
    );
\timer_snapshot_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(45),
      Q => \timer_snapshot_reg_n_0_[45]\,
      R => SR(0)
    );
\timer_snapshot_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(46),
      Q => \timer_snapshot_reg_n_0_[46]\,
      R => SR(0)
    );
\timer_snapshot_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => timer_snap,
      D => timer_val(47),
      Q => \timer_snapshot_reg_n_0_[47]\,
      R => SR(0)
    );
timer_timer_ctr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer_ctr
     port map (
      CEP => timer_ena,
      D(31 downto 0) => timer_val(47 downto 16),
      icap_clk => icap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller is
  port (
    cgo_flag_reg_0 : out STD_LOGIC;
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \status_reg2_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cap_req : out STD_LOGIC;
    fetch_txwrite : out STD_LOGIC;
    monitor_txwrite : out STD_LOGIC;
    fetch_rxread : out STD_LOGIC;
    monitor_rxread : out STD_LOGIC;
    command_strobe : in STD_LOGIC;
    icap_clk : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    icap_prerror : in STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    aux_error_cr_ne : in STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    aux_error_uc : in STD_LOGIC;
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    command_code : in STD_LOGIC_VECTOR ( 39 downto 0 );
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_txfull : in STD_LOGIC;
    monitor_rxempty : in STD_LOGIC;
    fecc_endofframe : in STD_LOGIC;
    fecc_endofscan : in STD_LOGIC;
    fecc_crcerror : in STD_LOGIC;
    fecc_eccerrornotsingle : in STD_LOGIC;
    fecc_eccerrorsingle : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal address : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal aux_cr_es_err : STD_LOGIC;
  signal aux_cr_ne_err : STD_LOGIC;
  signal aux_error_cr_es_sync : STD_LOGIC;
  signal aux_error_cr_ne_sync : STD_LOGIC;
  signal aux_error_uc_sync : STD_LOGIC;
  signal aux_uc_err : STD_LOGIC;
  signal bgo_strobe : STD_LOGIC;
  signal bgo_strobe0 : STD_LOGIC;
  signal bram2_en : STD_LOGIC;
  signal bram_enable : STD_LOGIC;
  signal bram_wr_en0 : STD_LOGIC;
  signal bram_wr_en1 : STD_LOGIC;
  signal bram_wr_en2 : STD_LOGIC;
  signal burst : STD_LOGIC;
  signal cap_req_i_2_n_0 : STD_LOGIC;
  signal casdomux2 : STD_LOGIC;
  signal \^cgo_flag_reg_0\ : STD_LOGIC;
  signal command_code_int : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \command_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \command_reg[39]_i_3_n_0\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal controller_dbuffer_n_42 : STD_LOGIC;
  signal controller_dbuffer_n_43 : STD_LOGIC;
  signal controller_dbuffer_n_44 : STD_LOGIC;
  signal controller_dbuffer_n_45 : STD_LOGIC;
  signal controller_dbuffer_n_46 : STD_LOGIC;
  signal controller_dbuffer_n_47 : STD_LOGIC;
  signal controller_dbuffer_n_48 : STD_LOGIC;
  signal controller_dbuffer_n_49 : STD_LOGIC;
  signal controller_dbuffer_n_5 : STD_LOGIC;
  signal controller_dbuffer_n_50 : STD_LOGIC;
  signal controller_dbuffer_n_51 : STD_LOGIC;
  signal controller_dbuffer_n_52 : STD_LOGIC;
  signal controller_dbuffer_n_53 : STD_LOGIC;
  signal controller_dbuffer_n_54 : STD_LOGIC;
  signal controller_dbuffer_n_55 : STD_LOGIC;
  signal controller_dbuffer_n_56 : STD_LOGIC;
  signal controller_dbuffer_n_57 : STD_LOGIC;
  signal controller_dbuffer_n_58 : STD_LOGIC;
  signal controller_dbuffer_n_6 : STD_LOGIC;
  signal controller_picocpu_n_2 : STD_LOGIC;
  signal controller_picocpu_n_3 : STD_LOGIC;
  signal controller_picocpu_n_35 : STD_LOGIC;
  signal controller_picocpu_n_36 : STD_LOGIC;
  signal controller_picocpu_n_37 : STD_LOGIC;
  signal controller_picocpu_n_38 : STD_LOGIC;
  signal controller_picocpu_n_39 : STD_LOGIC;
  signal controller_picocpu_n_4 : STD_LOGIC;
  signal controller_picocpu_n_40 : STD_LOGIC;
  signal controller_picocpu_n_41 : STD_LOGIC;
  signal controller_picocpu_n_45 : STD_LOGIC;
  signal controller_picocpu_n_47 : STD_LOGIC;
  signal controller_picocpu_n_5 : STD_LOGIC;
  signal controller_picocpu_n_51 : STD_LOGIC;
  signal controller_picocpu_n_52 : STD_LOGIC;
  signal controller_picocpu_n_53 : STD_LOGIC;
  signal controller_picocpu_n_54 : STD_LOGIC;
  signal controller_picocpu_n_55 : STD_LOGIC;
  signal controller_picocpu_n_56 : STD_LOGIC;
  signal controller_picocpu_n_57 : STD_LOGIC;
  signal controller_picocpu_n_58 : STD_LOGIC;
  signal controller_picocpu_n_59 : STD_LOGIC;
  signal controller_picocpu_n_6 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data11 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data13 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal end_ptr1 : STD_LOGIC;
  signal eof_flag : STD_LOGIC;
  signal eos_flag : STD_LOGIC;
  signal icap_grant_sync : STD_LOGIC;
  signal icap_rel_sync : STD_LOGIC;
  signal icap_request : STD_LOGIC;
  signal instruction : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^monitor_txdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_request : STD_LOGIC;
  signal next_request0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal p_6_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal port_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pr_done : STD_LOGIC;
  signal pr_trigger : STD_LOGIC;
  signal rdbk_crc : STD_LOGIC;
  signal rom_cr_ne_err : STD_LOGIC;
  signal rom_error : STD_LOGIC;
  signal sleep : STD_LOGIC;
  signal status_reg0 : STD_LOGIC;
  signal status_reg20 : STD_LOGIC;
  signal \^status_reg2_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \status_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal sync_init : STD_LOGIC;
  signal timer_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timer_snap0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "RELEASE_REQUEST:0000010000,WAIT_SEM_IDLE:0000001000,CMD_IDLE:0000000100,SET_MUX:0000000010,IDLE:0000000001,BACK_IDLE:1000000000,WAIT_DONE:0010000000,SET_REQUEST:0001000000,CMD_RESTART:0100000000,WAIT_RELEASE:0000100000";
  attribute SOFT_HLUTNM of \command_reg[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \command_reg[10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \command_reg[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \command_reg[12]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \command_reg[13]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \command_reg[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \command_reg[15]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \command_reg[16]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \command_reg[17]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \command_reg[18]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \command_reg[19]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \command_reg[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \command_reg[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \command_reg[21]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \command_reg[22]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \command_reg[23]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \command_reg[24]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \command_reg[25]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \command_reg[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \command_reg[27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \command_reg[28]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \command_reg[29]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \command_reg[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \command_reg[30]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \command_reg[31]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \command_reg[32]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \command_reg[33]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \command_reg[34]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \command_reg[35]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \command_reg[36]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \command_reg[37]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \command_reg[38]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \command_reg[39]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \command_reg[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \command_reg[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \command_reg[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \command_reg[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \command_reg[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \command_reg[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \command_reg[9]_i_1\ : label is "soft_lutpair55";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  cgo_flag_reg_0 <= \^cgo_flag_reg_0\;
  monitor_txdata(7 downto 0) <= \^monitor_txdata\(7 downto 0);
  \status_reg2_reg[1]_0\(1 downto 0) <= \^status_reg2_reg[1]_0\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFAABBAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => pr_trigger,
      I2 => \FSM_onehot_state[4]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => pr_trigger,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA00AA00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => pr_trigger,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999099"
    )
        port map (
      I0 => \^status_reg2_reg[1]_0\(0),
      I1 => \^status_reg2_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => next_request,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_request,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => pr_done,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_done,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => sync_init
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => sync_init
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => sync_init
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => sync_init
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => sync_init
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => sync_init
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => sync_init
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => sync_init
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => sync_init
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => sync_init
    );
aux_cr_es_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_55,
      Q => aux_cr_es_err,
      R => sync_init
    );
aux_cr_ne_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_54,
      Q => aux_cr_ne_err,
      R => sync_init
    );
aux_uc_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_56,
      Q => aux_uc_err,
      R => sync_init
    );
bgo_strobe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => bgo_strobe0,
      Q => bgo_strobe,
      R => sync_init
    );
cap_req_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cap_req_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => icap_request
    );
cap_req_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => cap_req_i_2_n_0
    );
cap_req_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => icap_request,
      Q => cap_req,
      S => sync_init
    );
cgo_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_51,
      Q => \^cgo_flag_reg_0\,
      R => sync_init
    );
\command_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(0),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(0)
    );
\command_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(10),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(10)
    );
\command_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(11),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(11)
    );
\command_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(12),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(12)
    );
\command_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(13),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(13)
    );
\command_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(14),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(14)
    );
\command_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(15),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(15)
    );
\command_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(16),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(16)
    );
\command_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(17),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(17)
    );
\command_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(18),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(18)
    );
\command_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(19),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(19)
    );
\command_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(1),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(1)
    );
\command_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(20),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(20)
    );
\command_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(21),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(21)
    );
\command_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(22),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(22)
    );
\command_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(23),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(23)
    );
\command_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(24),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(24)
    );
\command_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(25),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(25)
    );
\command_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(26),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(26)
    );
\command_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(27),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(27)
    );
\command_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(28),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(28)
    );
\command_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(29),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(29)
    );
\command_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \command_reg[39]_i_3_n_0\,
      I2 => command_code(2),
      O => command_code_int(2)
    );
\command_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(30),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(30)
    );
\command_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(31),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(31)
    );
\command_reg[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(32),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(32)
    );
\command_reg[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(33),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(33)
    );
\command_reg[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(34),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(34)
    );
\command_reg[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(35),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(35)
    );
\command_reg[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \command_reg[39]_i_3_n_0\,
      I2 => command_code(36),
      O => command_code_int(36)
    );
\command_reg[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \command_reg[39]_i_3_n_0\,
      I3 => command_code(37),
      O => command_code_int(37)
    );
\command_reg[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \command_reg[39]_i_3_n_0\,
      I2 => command_code(38),
      O => command_code_int(38)
    );
\command_reg[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555504"
    )
        port map (
      I0 => \^cgo_flag_reg_0\,
      I1 => command_strobe,
      I2 => \command_reg[39]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \command_reg[39]_i_1_n_0\
    );
\command_reg[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \command_reg[39]_i_3_n_0\,
      I3 => command_code(39),
      O => command_code_int(39)
    );
\command_reg[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cap_req_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \command_reg[39]_i_3_n_0\
    );
\command_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(3),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(3)
    );
\command_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(4),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(4)
    );
\command_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(5),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(5)
    );
\command_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(6),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(6)
    );
\command_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(7),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(7)
    );
\command_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(8),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(8)
    );
\command_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command_code(9),
      I1 => \command_reg[39]_i_3_n_0\,
      O => command_code_int(9)
    );
\command_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(0),
      Q => \command_reg_reg_n_0_[0]\,
      R => sync_init
    );
\command_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(10),
      Q => data10(2),
      R => sync_init
    );
\command_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(11),
      Q => data10(3),
      R => sync_init
    );
\command_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(12),
      Q => data10(4),
      R => sync_init
    );
\command_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(13),
      Q => data10(5),
      R => sync_init
    );
\command_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(14),
      Q => data10(6),
      R => sync_init
    );
\command_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(15),
      Q => data10(7),
      R => sync_init
    );
\command_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(16),
      Q => data11(0),
      R => sync_init
    );
\command_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(17),
      Q => data11(1),
      R => sync_init
    );
\command_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(18),
      Q => data11(2),
      R => sync_init
    );
\command_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(19),
      Q => data11(3),
      R => sync_init
    );
\command_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(1),
      Q => \command_reg_reg_n_0_[1]\,
      R => sync_init
    );
\command_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(20),
      Q => data11(4),
      R => sync_init
    );
\command_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(21),
      Q => data11(5),
      R => sync_init
    );
\command_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(22),
      Q => data11(6),
      R => sync_init
    );
\command_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(23),
      Q => data11(7),
      R => sync_init
    );
\command_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(24),
      Q => data12(0),
      R => sync_init
    );
\command_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(25),
      Q => data12(1),
      R => sync_init
    );
\command_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(26),
      Q => data12(2),
      R => sync_init
    );
\command_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(27),
      Q => data12(3),
      R => sync_init
    );
\command_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(28),
      Q => data12(4),
      R => sync_init
    );
\command_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(29),
      Q => data12(5),
      R => sync_init
    );
\command_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(2),
      Q => \command_reg_reg_n_0_[2]\,
      R => sync_init
    );
\command_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(30),
      Q => data12(6),
      R => sync_init
    );
\command_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(31),
      Q => data12(7),
      R => sync_init
    );
\command_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(32),
      Q => data13(0),
      R => sync_init
    );
\command_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(33),
      Q => data13(1),
      R => sync_init
    );
\command_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(34),
      Q => data13(2),
      R => sync_init
    );
\command_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(35),
      Q => data13(3),
      R => sync_init
    );
\command_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(36),
      Q => data13(4),
      R => sync_init
    );
\command_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(37),
      Q => data13(5),
      R => sync_init
    );
\command_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(38),
      Q => data13(6),
      R => sync_init
    );
\command_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(39),
      Q => data13(7),
      R => sync_init
    );
\command_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(3),
      Q => \command_reg_reg_n_0_[3]\,
      R => sync_init
    );
\command_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(4),
      Q => \command_reg_reg_n_0_[4]\,
      R => sync_init
    );
\command_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(5),
      Q => \command_reg_reg_n_0_[5]\,
      R => sync_init
    );
\command_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(6),
      Q => \command_reg_reg_n_0_[6]\,
      R => sync_init
    );
\command_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(7),
      Q => \command_reg_reg_n_0_[7]\,
      R => sync_init
    );
\command_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(8),
      Q => data10(0),
      R => sync_init
    );
\command_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => \command_reg[39]_i_1_n_0\,
      D => command_code_int(9),
      Q => data10(1),
      R => sync_init
    );
controller_dbuffer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_dbuffer
     port map (
      D(6) => controller_picocpu_n_35,
      D(5) => controller_picocpu_n_36,
      D(4) => controller_picocpu_n_37,
      D(3) => controller_picocpu_n_38,
      D(2) => controller_picocpu_n_39,
      D(1) => controller_picocpu_n_40,
      D(0) => controller_picocpu_n_41,
      E(1) => controller_picocpu_n_2,
      E(0) => controller_picocpu_n_3,
      Q(6) => addrb(8),
      Q(5 downto 2) => addrb(3 downto 0),
      Q(1) => controller_dbuffer_n_5,
      Q(0) => controller_dbuffer_n_6,
      bgo_strobe => bgo_strobe,
      bram_enable => bram_enable,
      burst => burst,
      \end_ptr_reg[10]_0\ => controller_dbuffer_n_53,
      \end_ptr_reg[10]_1\ => controller_picocpu_n_5,
      \end_ptr_reg[11]_0\ => controller_dbuffer_n_54,
      \end_ptr_reg[7]_0\(0) => end_ptr1,
      icap_clk => icap_clk,
      icap_csib => icap_csib,
      icap_i(31 downto 0) => icap_i(31 downto 0),
      icap_o(31 downto 0) => icap_o(31 downto 0),
      icap_rdwrb => icap_rdwrb,
      out_port_reg(7 downto 0) => \^monitor_txdata\(7 downto 0),
      port_id(1 downto 0) => port_id(1 downto 0),
      \sta_ptr_reg[11]_0\ => controller_dbuffer_n_46,
      \sta_ptr_reg[1]_0\ => controller_dbuffer_n_44,
      \sta_ptr_reg[2]_0\ => controller_dbuffer_n_45,
      \sta_ptr_reg[2]_1\ => controller_dbuffer_n_49,
      \sta_ptr_reg[3]_0\ => controller_dbuffer_n_42,
      \sta_ptr_reg[3]_1\ => controller_dbuffer_n_50,
      \sta_ptr_reg[4]_0\ => controller_dbuffer_n_51,
      \sta_ptr_reg[5]_0\ => controller_dbuffer_n_52,
      \sta_ptr_reg[6]_0\ => controller_picocpu_n_6,
      \sta_ptr_reg[8]_0\ => controller_dbuffer_n_47,
      \sta_ptr_reg[8]_1\ => controller_picocpu_n_4,
      \sta_ptr_reg[9]_0\ => controller_dbuffer_n_43,
      \sta_ptr_reg[9]_1\ => controller_dbuffer_n_48,
      storage => controller_dbuffer_n_55,
      storage_0 => controller_dbuffer_n_56,
      storage_1 => controller_dbuffer_n_57,
      storage_2 => controller_dbuffer_n_58,
      storage_3 => controller_picocpu_n_45,
      sync_init => sync_init
    );
controller_instrom: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_instrom
     port map (
      Q(17 downto 0) => instruction(17 downto 0),
      SR(0) => sync_init,
      address(11 downto 0) => address(11 downto 0),
      bram2_en => bram2_en,
      bram_enable => bram_enable,
      bram_wr_en0 => bram_wr_en0,
      bram_wr_en1 => bram_wr_en1,
      bram_wr_en2 => bram_wr_en2,
      casdomux2 => casdomux2,
      icap_clk => icap_clk,
      rom_error => rom_error,
      sleep => sleep
    );
controller_picocpu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_picocpu
     port map (
      D(6) => controller_picocpu_n_35,
      D(5) => controller_picocpu_n_36,
      D(4) => controller_picocpu_n_37,
      D(3) => controller_picocpu_n_38,
      D(2) => controller_picocpu_n_39,
      D(1) => controller_picocpu_n_40,
      D(0) => controller_picocpu_n_41,
      E(1) => controller_picocpu_n_2,
      E(0) => controller_picocpu_n_3,
      \OUTRegistered.instruction_reg[0]\(1 downto 0) => port_id(1 downto 0),
      Q(6) => addrb(8),
      Q(5 downto 2) => addrb(3 downto 0),
      Q(1) => controller_dbuffer_n_5,
      Q(0) => controller_dbuffer_n_6,
      SR(0) => sync_init,
      address(11 downto 0) => address(11 downto 0),
      aux_cr_es_err => aux_cr_es_err,
      aux_cr_es_err_reg => aux_error_cr_es_sync,
      aux_cr_ne_err => aux_cr_ne_err,
      aux_cr_ne_err_reg => aux_error_cr_ne_sync,
      aux_uc_err => aux_uc_err,
      aux_uc_err_reg => aux_error_uc_sync,
      bgo_strobe0 => bgo_strobe0,
      bram2_en => bram2_en,
      bram_enable => bram_enable,
      bram_wr_en0 => bram_wr_en0,
      bram_wr_en1 => bram_wr_en1,
      bram_wr_en2 => bram_wr_en2,
      burst => burst,
      casdomux2 => casdomux2,
      cgo_flag_reg => \^cgo_flag_reg_0\,
      cgo_flag_reg_0(0) => \command_reg[39]_i_1_n_0\,
      const_strobe_flop_0 => controller_picocpu_n_6,
      const_strobe_flop_1(0) => status_reg20,
      const_strobe_flop_2 => controller_picocpu_n_45,
      eof_flag => eof_flag,
      eos_flag => eos_flag,
      fecc_crcerror => fecc_crcerror,
      fecc_crcerror_0 => controller_picocpu_n_57,
      fecc_eccerrornotsingle => fecc_eccerrornotsingle,
      fecc_eccerrorsingle => fecc_eccerrorsingle,
      fecc_endofframe => fecc_endofframe,
      fecc_endofframe_0 => controller_picocpu_n_52,
      fecc_endofscan => fecc_endofscan,
      fecc_endofscan_0 => controller_picocpu_n_53,
      fetch_rxread => fetch_rxread,
      fetch_txwrite => fetch_txwrite,
      firmware0 => controller_picocpu_n_47,
      flag_enable_flop_0(17 downto 0) => instruction(17 downto 0),
      icap_clk => icap_clk,
      monitor_rxdata(7 downto 0) => monitor_rxdata(7 downto 0),
      monitor_rxempty => monitor_rxempty,
      monitor_rxread => monitor_rxread,
      monitor_txfull => monitor_txfull,
      monitor_txwrite => monitor_txwrite,
      out_port_reg(7 downto 0) => \^monitor_txdata\(7 downto 0),
      p_4_in(1 downto 0) => p_4_in(6 downto 5),
      p_6_in(2 downto 0) => p_6_in(2 downto 0),
      \ports_loop[0].in_port_flop_i_4_0\ => controller_dbuffer_n_55,
      \ports_loop[0].in_port_flop_i_4_1\ => controller_dbuffer_n_47,
      \ports_loop[1].in_port_flop_i_2_0\ => controller_dbuffer_n_56,
      \ports_loop[1].in_port_flop_i_2_1\ => controller_dbuffer_n_48,
      \ports_loop[1].port_id_flop_0\(0) => status_reg0,
      \ports_loop[2].in_port_flop_0\ => controller_dbuffer_n_49,
      \ports_loop[2].out_port_flop_0\ => controller_picocpu_n_51,
      \ports_loop[2].port_id_flop_0\ => controller_picocpu_n_5,
      \ports_loop[2].port_id_flop_1\(0) => p_1_in,
      \ports_loop[2].port_id_flop_2\(0) => end_ptr1,
      \ports_loop[3].in_port_flop_0\ => controller_dbuffer_n_50,
      \ports_loop[4].in_port_flop_0\ => controller_dbuffer_n_51,
      \ports_loop[5].in_port_flop_0\ => controller_dbuffer_n_52,
      \ports_loop[6].in_port_flop_i_3_0\ => controller_dbuffer_n_57,
      \ports_loop[6].in_port_flop_i_3_1\ => controller_dbuffer_n_53,
      \ports_loop[6].out_port_flop_0\ => controller_picocpu_n_59,
      \ports_loop[7].in_port_flop_0\(7) => \status_reg_reg_n_0_[7]\,
      \ports_loop[7].in_port_flop_0\(6 downto 0) => \^q\(6 downto 0),
      \ports_loop[7].in_port_flop_i_2_0\(7 downto 0) => timer_byte(7 downto 0),
      \ports_loop[7].in_port_flop_i_2_1\ => controller_dbuffer_n_58,
      \ports_loop[7].in_port_flop_i_2_2\ => controller_dbuffer_n_54,
      \ports_loop[7].in_port_flop_i_3_0\(39 downto 32) => data13(7 downto 0),
      \ports_loop[7].in_port_flop_i_3_0\(31 downto 24) => data12(7 downto 0),
      \ports_loop[7].in_port_flop_i_3_0\(23 downto 16) => data11(7 downto 0),
      \ports_loop[7].in_port_flop_i_3_0\(15 downto 8) => data10(7 downto 0),
      \ports_loop[7].in_port_flop_i_3_0\(7) => \command_reg_reg_n_0_[7]\,
      \ports_loop[7].in_port_flop_i_3_0\(6) => \command_reg_reg_n_0_[6]\,
      \ports_loop[7].in_port_flop_i_3_0\(5) => \command_reg_reg_n_0_[5]\,
      \ports_loop[7].in_port_flop_i_3_0\(4) => \command_reg_reg_n_0_[4]\,
      \ports_loop[7].in_port_flop_i_3_0\(3) => \command_reg_reg_n_0_[3]\,
      \ports_loop[7].in_port_flop_i_3_0\(2) => \command_reg_reg_n_0_[2]\,
      \ports_loop[7].in_port_flop_i_3_0\(1) => \command_reg_reg_n_0_[1]\,
      \ports_loop[7].in_port_flop_i_3_0\(0) => \command_reg_reg_n_0_[0]\,
      rdbk_crc => rdbk_crc,
      rdbk_nsb_reg => controller_picocpu_n_58,
      read_strobe_flop_0 => controller_picocpu_n_4,
      rom_cr_ne_err => rom_cr_ne_err,
      rom_error => rom_error,
      sleep => sleep,
      \sta_ptr_reg[10]\ => controller_dbuffer_n_46,
      \sta_ptr_reg[10]_0\ => controller_dbuffer_n_43,
      \sta_ptr_reg[3]\ => controller_dbuffer_n_44,
      \sta_ptr_reg[4]\ => controller_dbuffer_n_45,
      \sta_ptr_reg[5]\ => controller_dbuffer_n_42,
      sync_g => controller_picocpu_n_54,
      sync_g_0 => controller_picocpu_n_55,
      sync_g_1 => controller_picocpu_n_56,
      sync_out => icap_grant_sync,
      timer_snap0 => timer_snap0
    );
controller_synchro_aux_error_cr_es: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro
     port map (
      aux_error_cr_es => aux_error_cr_es,
      icap_clk => icap_clk,
      sync_out => aux_error_cr_es_sync
    );
controller_synchro_aux_error_cr_ne: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_0
     port map (
      aux_error_cr_ne => aux_error_cr_ne,
      icap_clk => icap_clk,
      sync_out => aux_error_cr_ne_sync
    );
controller_synchro_aux_error_uc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_1
     port map (
      aux_error_uc => aux_error_uc,
      icap_clk => icap_clk,
      sync_out => aux_error_uc_sync
    );
controller_synchro_icap_avail: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_2
     port map (
      icap_avail => icap_avail,
      icap_clk => icap_clk,
      sync_out => p_6_in(0)
    );
controller_synchro_icap_grant: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_3
     port map (
      cap_gnt => cap_gnt,
      icap_clk => icap_clk,
      next_request0 => next_request0,
      next_request_reg => icap_rel_sync,
      sync_out => icap_grant_sync
    );
controller_synchro_icap_prdone: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_4
     port map (
      icap_clk => icap_clk,
      icap_prdone => icap_prdone,
      sync_out => p_6_in(2)
    );
controller_synchro_icap_prerror: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_5
     port map (
      icap_clk => icap_clk,
      icap_prerror => icap_prerror,
      sync_out => p_6_in(1)
    );
controller_synchro_icap_rel: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_synchro_6
     port map (
      cap_rel => cap_rel,
      icap_clk => icap_clk,
      sync_out => icap_rel_sync
    );
controller_timer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_timer
     port map (
      D(1 downto 0) => \^monitor_txdata\(1 downto 0),
      E(0) => p_1_in,
      Q(7 downto 0) => timer_byte(7 downto 0),
      SR(0) => sync_init,
      icap_clk => icap_clk,
      timer_snap0 => timer_snap0
    );
eof_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_52,
      Q => eof_flag,
      R => sync_init
    );
eos_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_53,
      Q => eos_flag,
      R => sync_init
    );
next_request_reg: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => next_request0,
      Q => next_request,
      R => sync_init
    );
pr_done_reg: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => icap_grant_sync,
      Q => pr_done,
      R => sync_init
    );
pr_trigger_reg: unisim.vcomponents.FDRE
     port map (
      C => icap_clk,
      CE => '1',
      D => icap_rel_sync,
      Q => pr_trigger,
      R => sync_init
    );
rdbk_crc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_57,
      Q => rdbk_crc,
      R => sync_init
    );
rdbk_nsb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_58,
      Q => p_4_in(5),
      R => sync_init
    );
rdbk_sbe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => '1',
      D => controller_picocpu_n_59,
      Q => p_4_in(6),
      R => sync_init
    );
rom_cr_ne_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => controller_picocpu_n_47,
      D => rom_error,
      Q => rom_cr_ne_err,
      R => sync_init
    );
\status_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg20,
      D => \^monitor_txdata\(0),
      Q => \^status_reg2_reg[1]_0\(0),
      R => sync_init
    );
\status_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg20,
      D => \^monitor_txdata\(1),
      Q => \^status_reg2_reg[1]_0\(1),
      R => sync_init
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(0),
      Q => \^q\(0),
      R => sync_init
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(1),
      Q => \^q\(1),
      R => sync_init
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(2),
      Q => \^q\(2),
      R => sync_init
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(3),
      Q => \^q\(3),
      R => sync_init
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(4),
      Q => \^q\(4),
      R => sync_init
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(5),
      Q => \^q\(5),
      R => sync_init
    );
\status_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(6),
      Q => \^q\(6),
      R => sync_init
    );
\status_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => icap_clk,
      CE => status_reg0,
      D => \^monitor_txdata\(7),
      Q => \status_reg_reg_n_0_[7]\,
      R => sync_init
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 is
  port (
    slr0_status_heartbeat : out STD_LOGIC;
    slr1_status_heartbeat : out STD_LOGIC;
    slr2_status_heartbeat : out STD_LOGIC;
    slr3_status_heartbeat : out STD_LOGIC;
    status_heartbeat : out STD_LOGIC;
    status_initialization : out STD_LOGIC;
    status_observation : out STD_LOGIC;
    status_correction : out STD_LOGIC;
    status_classification : out STD_LOGIC;
    status_injection : out STD_LOGIC;
    status_essential : out STD_LOGIC;
    status_uncorrectable : out STD_LOGIC;
    status_diagnostic_scan : out STD_LOGIC;
    status_detect_only : out STD_LOGIC;
    fetch_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_txwrite : out STD_LOGIC;
    fetch_txfull : in STD_LOGIC;
    fetch_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fetch_rxread : out STD_LOGIC;
    fetch_rxempty : in STD_LOGIC;
    fetch_tbladdr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_txwrite : out STD_LOGIC;
    monitor_txfull : in STD_LOGIC;
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    monitor_rxread : out STD_LOGIC;
    monitor_rxempty : in STD_LOGIC;
    command_strobe : in STD_LOGIC;
    command_busy : out STD_LOGIC;
    command_code : in STD_LOGIC_VECTOR ( 39 downto 0 );
    icap_clk : in STD_LOGIC;
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_prerror : in STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_req : out STD_LOGIC;
    fecc_eccerrornotsingle : in STD_LOGIC;
    fecc_eccerrorsingle : in STD_LOGIC;
    fecc_endofframe : in STD_LOGIC;
    fecc_endofscan : in STD_LOGIC;
    fecc_crcerror : in STD_LOGIC;
    fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slr0_fecc_eccerrornotsingle : in STD_LOGIC;
    slr0_fecc_eccerrorsingle : in STD_LOGIC;
    slr0_fecc_endofframe : in STD_LOGIC;
    slr0_fecc_endofscan : in STD_LOGIC;
    slr0_fecc_crcerror : in STD_LOGIC;
    slr0_fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    slr0_fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slr1_fecc_eccerrornotsingle : in STD_LOGIC;
    slr1_fecc_eccerrorsingle : in STD_LOGIC;
    slr1_fecc_endofframe : in STD_LOGIC;
    slr1_fecc_endofscan : in STD_LOGIC;
    slr1_fecc_crcerror : in STD_LOGIC;
    slr1_fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    slr1_fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slr2_fecc_eccerrornotsingle : in STD_LOGIC;
    slr2_fecc_eccerrorsingle : in STD_LOGIC;
    slr2_fecc_endofframe : in STD_LOGIC;
    slr2_fecc_endofscan : in STD_LOGIC;
    slr2_fecc_crcerror : in STD_LOGIC;
    slr2_fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    slr2_fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slr3_fecc_eccerrornotsingle : in STD_LOGIC;
    slr3_fecc_eccerrorsingle : in STD_LOGIC;
    slr3_fecc_endofframe : in STD_LOGIC;
    slr3_fecc_endofscan : in STD_LOGIC;
    slr3_fecc_crcerror : in STD_LOGIC;
    slr3_fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    slr3_fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aux_error_cr_ne : in STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    aux_error_uc : in STD_LOGIC
  );
  attribute TCQ : integer;
  attribute TCQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 1;
  attribute b_cosim : integer;
  attribute b_cosim of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
  attribute b_debug : integer;
  attribute b_debug of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
  attribute b_dfset : integer;
  attribute b_dfset of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
  attribute c_arch : integer;
  attribute c_arch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
  attribute c_command_code_width : integer;
  attribute c_command_code_width of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 40;
  attribute c_config_prim_loc : integer;
  attribute c_config_prim_loc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 1;
  attribute c_extra_checks : integer;
  attribute c_extra_checks of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 4;
  attribute c_family : string;
  attribute c_family of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is "kintexu";
  attribute c_feature_set : integer;
  attribute c_feature_set of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 4;
  attribute c_fecc_far_width : integer;
  attribute c_fecc_far_width of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 26;
  attribute c_has_error_injection : integer;
  attribute c_has_error_injection of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
  attribute c_helper_block_loc : integer;
  attribute c_helper_block_loc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 1;
  attribute c_vusp_slr : integer;
  attribute c_vusp_slr of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 : entity is 0;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fecc_endofframe\ : STD_LOGIC;
  signal \^monitor_txdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^fecc_endofframe\ <= fecc_endofframe;
  fecc_farsel(1) <= \<const0>\;
  fecc_farsel(0) <= \<const0>\;
  fetch_txdata(7 downto 0) <= \^monitor_txdata\(7 downto 0);
  monitor_txdata(7 downto 0) <= \^monitor_txdata\(7 downto 0);
  slr0_fecc_farsel(1) <= \<const0>\;
  slr0_fecc_farsel(0) <= \<const0>\;
  slr0_status_heartbeat <= \<const0>\;
  slr1_fecc_farsel(1) <= \<const0>\;
  slr1_fecc_farsel(0) <= \<const0>\;
  slr1_status_heartbeat <= \<const0>\;
  slr2_fecc_farsel(1) <= \<const0>\;
  slr2_fecc_farsel(0) <= \<const0>\;
  slr2_status_heartbeat <= \<const0>\;
  slr3_fecc_farsel(1) <= \<const0>\;
  slr3_fecc_farsel(0) <= \<const0>\;
  slr3_status_heartbeat <= \<const0>\;
  status_heartbeat <= \^fecc_endofframe\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9_controller
     port map (
      Q(6) => status_essential,
      Q(5) => status_uncorrectable,
      Q(4) => status_injection,
      Q(3) => status_classification,
      Q(2) => status_correction,
      Q(1) => status_observation,
      Q(0) => status_initialization,
      aux_error_cr_es => aux_error_cr_es,
      aux_error_cr_ne => aux_error_cr_ne,
      aux_error_uc => aux_error_uc,
      cap_gnt => cap_gnt,
      cap_rel => cap_rel,
      cap_req => cap_req,
      cgo_flag_reg_0 => command_busy,
      command_code(39 downto 0) => command_code(39 downto 0),
      command_strobe => command_strobe,
      fecc_crcerror => fecc_crcerror,
      fecc_eccerrornotsingle => fecc_eccerrornotsingle,
      fecc_eccerrorsingle => fecc_eccerrorsingle,
      fecc_endofframe => \^fecc_endofframe\,
      fecc_endofscan => fecc_endofscan,
      fetch_rxread => fetch_rxread,
      fetch_txwrite => fetch_txwrite,
      icap_avail => icap_avail,
      icap_clk => icap_clk,
      icap_csib => icap_csib,
      icap_i(31 downto 0) => icap_i(31 downto 0),
      icap_o(31 downto 0) => icap_o(31 downto 0),
      icap_prdone => icap_prdone,
      icap_prerror => icap_prerror,
      icap_rdwrb => icap_rdwrb,
      monitor_rxdata(7 downto 0) => monitor_rxdata(7 downto 0),
      monitor_rxempty => monitor_rxempty,
      monitor_rxread => monitor_rxread,
      monitor_txdata(7 downto 0) => \^monitor_txdata\(7 downto 0),
      monitor_txfull => monitor_txfull,
      monitor_txwrite => monitor_txwrite,
      \status_reg2_reg[1]_0\(1) => status_diagnostic_scan,
      \status_reg2_reg[1]_0\(0) => status_detect_only
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
    icap_clk : in STD_LOGIC;
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_prerror : in STD_LOGIC;
    icap_prdone : in STD_LOGIC;
    icap_avail : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_req : out STD_LOGIC;
    fecc_eccerrornotsingle : in STD_LOGIC;
    fecc_eccerrorsingle : in STD_LOGIC;
    fecc_endofframe : in STD_LOGIC;
    fecc_endofscan : in STD_LOGIC;
    fecc_crcerror : in STD_LOGIC;
    fecc_far : in STD_LOGIC_VECTOR ( 25 downto 0 );
    fecc_farsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aux_error_cr_ne : in STD_LOGIC;
    aux_error_cr_es : in STD_LOGIC;
    aux_error_uc : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sem_ultra_v3_1_9,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_fetch_rxread_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fetch_txwrite_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_slr0_status_heartbeat_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_slr1_status_heartbeat_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_slr2_status_heartbeat_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_slr3_status_heartbeat_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fetch_txdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_slr0_fecc_farsel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_slr1_fecc_farsel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_slr2_fecc_farsel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_slr3_fecc_farsel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute TCQ : integer;
  attribute TCQ of inst : label is 1;
  attribute b_cosim : integer;
  attribute b_cosim of inst : label is 0;
  attribute b_debug : integer;
  attribute b_debug of inst : label is 0;
  attribute b_dfset : integer;
  attribute b_dfset of inst : label is 0;
  attribute c_arch : integer;
  attribute c_arch of inst : label is 0;
  attribute c_command_code_width : integer;
  attribute c_command_code_width of inst : label is 40;
  attribute c_config_prim_loc : integer;
  attribute c_config_prim_loc of inst : label is 1;
  attribute c_extra_checks : integer;
  attribute c_extra_checks of inst : label is 4;
  attribute c_family : string;
  attribute c_family of inst : label is "kintexu";
  attribute c_feature_set : integer;
  attribute c_feature_set of inst : label is 4;
  attribute c_fecc_far_width : integer;
  attribute c_fecc_far_width of inst : label is 26;
  attribute c_has_error_injection : integer;
  attribute c_has_error_injection of inst : label is 0;
  attribute c_helper_block_loc : integer;
  attribute c_helper_block_loc of inst : label is 1;
  attribute c_vusp_slr : integer;
  attribute c_vusp_slr of inst : label is 0;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sem_ultra_v3_1_9
     port map (
      aux_error_cr_es => aux_error_cr_es,
      aux_error_cr_ne => aux_error_cr_ne,
      aux_error_uc => aux_error_uc,
      cap_gnt => cap_gnt,
      cap_rel => cap_rel,
      cap_req => cap_req,
      command_busy => command_busy,
      command_code(39 downto 0) => command_code(39 downto 0),
      command_strobe => command_strobe,
      fecc_crcerror => fecc_crcerror,
      fecc_eccerrornotsingle => fecc_eccerrornotsingle,
      fecc_eccerrorsingle => fecc_eccerrorsingle,
      fecc_endofframe => fecc_endofframe,
      fecc_endofscan => fecc_endofscan,
      fecc_far(25 downto 0) => fecc_far(25 downto 0),
      fecc_farsel(1 downto 0) => fecc_farsel(1 downto 0),
      fetch_rxdata(7 downto 0) => B"00000000",
      fetch_rxempty => '1',
      fetch_rxread => NLW_inst_fetch_rxread_UNCONNECTED,
      fetch_tbladdr(31 downto 0) => B"00000000000000000000000000000000",
      fetch_txdata(7 downto 0) => NLW_inst_fetch_txdata_UNCONNECTED(7 downto 0),
      fetch_txfull => '0',
      fetch_txwrite => NLW_inst_fetch_txwrite_UNCONNECTED,
      icap_avail => icap_avail,
      icap_clk => icap_clk,
      icap_csib => icap_csib,
      icap_i(31 downto 0) => icap_i(31 downto 0),
      icap_o(31 downto 0) => icap_o(31 downto 0),
      icap_prdone => icap_prdone,
      icap_prerror => icap_prerror,
      icap_rdwrb => icap_rdwrb,
      monitor_rxdata(7 downto 0) => monitor_rxdata(7 downto 0),
      monitor_rxempty => monitor_rxempty,
      monitor_rxread => monitor_rxread,
      monitor_txdata(7 downto 0) => monitor_txdata(7 downto 0),
      monitor_txfull => monitor_txfull,
      monitor_txwrite => monitor_txwrite,
      slr0_fecc_crcerror => '0',
      slr0_fecc_eccerrornotsingle => '0',
      slr0_fecc_eccerrorsingle => '0',
      slr0_fecc_endofframe => '0',
      slr0_fecc_endofscan => '0',
      slr0_fecc_far(25 downto 0) => B"00000000000000000000000000",
      slr0_fecc_farsel(1 downto 0) => NLW_inst_slr0_fecc_farsel_UNCONNECTED(1 downto 0),
      slr0_status_heartbeat => NLW_inst_slr0_status_heartbeat_UNCONNECTED,
      slr1_fecc_crcerror => '0',
      slr1_fecc_eccerrornotsingle => '0',
      slr1_fecc_eccerrorsingle => '0',
      slr1_fecc_endofframe => '0',
      slr1_fecc_endofscan => '0',
      slr1_fecc_far(25 downto 0) => B"00000000000000000000000000",
      slr1_fecc_farsel(1 downto 0) => NLW_inst_slr1_fecc_farsel_UNCONNECTED(1 downto 0),
      slr1_status_heartbeat => NLW_inst_slr1_status_heartbeat_UNCONNECTED,
      slr2_fecc_crcerror => '0',
      slr2_fecc_eccerrornotsingle => '0',
      slr2_fecc_eccerrorsingle => '0',
      slr2_fecc_endofframe => '0',
      slr2_fecc_endofscan => '0',
      slr2_fecc_far(25 downto 0) => B"00000000000000000000000000",
      slr2_fecc_farsel(1 downto 0) => NLW_inst_slr2_fecc_farsel_UNCONNECTED(1 downto 0),
      slr2_status_heartbeat => NLW_inst_slr2_status_heartbeat_UNCONNECTED,
      slr3_fecc_crcerror => '0',
      slr3_fecc_eccerrornotsingle => '0',
      slr3_fecc_eccerrorsingle => '0',
      slr3_fecc_endofframe => '0',
      slr3_fecc_endofscan => '0',
      slr3_fecc_far(25 downto 0) => B"00000000000000000000000000",
      slr3_fecc_farsel(1 downto 0) => NLW_inst_slr3_fecc_farsel_UNCONNECTED(1 downto 0),
      slr3_status_heartbeat => NLW_inst_slr3_status_heartbeat_UNCONNECTED,
      status_classification => status_classification,
      status_correction => status_correction,
      status_detect_only => status_detect_only,
      status_diagnostic_scan => status_diagnostic_scan,
      status_essential => status_essential,
      status_heartbeat => status_heartbeat,
      status_initialization => status_initialization,
      status_injection => status_injection,
      status_observation => status_observation,
      status_uncorrectable => status_uncorrectable
    );
end STRUCTURE;
