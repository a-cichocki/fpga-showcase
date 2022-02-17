----------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
--                      Design based on work of David Krutz, Marcus Hellqvist, Jiri Gaisler
-- Last Save Date:      11/03/2011
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         Packeg for incusion
-- Dependencies:        grlib, SC_SRC_020_080, SC_SRC_020_090, SC_SRC_020_100
-- Comments:            revision of original code
-----------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package poi_pkg is

  
  constant POI_CMD_OPEN_LOOP   : std_logic_vector(2 downto 0) := "100";
  constant POI_CMD_PLANET      : std_logic_vector(2 downto 0) := "000";
  constant POI_CMD_BB700       : std_logic_vector(2 downto 0) := "001";
  constant POI_CMD_BB300       : std_logic_vector(2 downto 0) := "010";
  constant POI_CMD_SPACE       : std_logic_vector(2 downto 0) := "011";
  constant POI_CMD_STOP        : std_logic_vector(2 downto 0) := "111";

  ------------------------------------------------------------------------------
  -- interface records
  ------------------------------------------------------------------------------
  type seq_in_type is record
    go             : std_logic;
    init_res       : std_logic;
    pos_clear      : std_logic;
    planet_check   : std_logic;
    cmd            : std_logic_vector(2 downto 0);
    ol_dir         : std_logic;
    ol_steps       : std_logic_vector(8 downto 0);
    ol_speed       : std_logic_vector(1 downto 0);
    init_phase     : std_logic_vector(2 downto 0);
    acc1_steps     : std_logic_vector(3 downto 0);
    acc2_steps     : std_logic_vector(3 downto 0);
    dec1_steps     : std_logic_vector(3 downto 0);
    dec2_steps     : std_logic_vector(3 downto 0);
    low_speed      : std_logic_vector(23 downto 0);
    nom_speed      : std_logic_vector(23 downto 0);
    high_speed     : std_logic_vector(23 downto 0);
    hold_start     : std_logic_vector(23 downto 0);
    hold_stop      : std_logic_vector(23 downto 0);
    sensor         : std_logic_vector(2 downto 0);
    coil_config    : std_logic_vector(2 downto 0);
    bbhold_time    : std_logic_vector(31 downto 0);
    bbhold_scale   : std_logic_vector(1 downto 0);
    bbhold_pwm     : std_logic_vector(4 downto 0);
  end record;
  
  type seq_out_type is record
    moving         : std_logic;
    curr_pos       : std_logic_vector(8 downto 0);
    curr_phase     : std_logic_vector(2 downto 0);
    init_done      : std_logic;
    sensor_err     : std_logic;
    coil_top       : std_logic_vector(3 downto 0);
    coil_bot       : std_logic_vector(3 downto 0);
    bb_hold        : std_logic;
  end record;
  
  ----------------------------------------------------------------------------------------
  -- component declaration
  ----------------------------------------------------------------------------------------
  component SequenceGenerator is
  port (
    clk            : in  std_logic;
    nres           : in  std_logic;
    i_seq          : in  seq_in_type;
    o_seq          : out seq_out_type
  );
  end component;

end poi_pkg;



