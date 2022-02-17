----------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
--                      Design based on work of David Krutz, Marcus Hellqvist, Jiri Gaisler
-- Last Save Date:      11/03/2011
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         Top Entity
-- Dependencies:        grlib, SC_SRC_020_080, SC_SRC_020_090, SC_SRC_020_100
-- Comments:            revision of original code
-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library grlib;
use grlib.amba.all;
use grlib.stdlib.all;
use grlib.devices.all;
use work.poi_pkg.all;

entity PointingUnit is
generic(
  PINDEX         : integer := 0;
  PADDR          : integer := 0;
  PMASK          : integer := 16#fff#;
  FREQUENCY      : integer := 21000
);
port(
  rst_n          : in  std_logic;
  clk            : in  std_logic;
  apbi           : in  apb_slv_in_type;
  apbo           : out apb_slv_out_type;
  outdrv_top     : out std_logic_vector (3 downto 0);
  outdrv_bot     : out std_logic_vector (3 downto 0);
  sens           : in  std_logic_vector (2 downto 0)
);
end;

architecture rtl of PointingUnit is

  ----------------------------------------------------------------------------------------
  -- constant declaration
  ----------------------------------------------------------------------------------------
  constant pconfig : apb_config_type := (
          0 => ahb_device_reg (0, 0, 0, 0, 0),
          1 => apb_iobar(PADDR, PMASK));

  constant POI_COMMAND_REG               : std_logic_vector(7 downto 0) := X"00";
  constant POI_COIL_CONFIG_REG           : std_logic_vector(7 downto 0) := X"04";
  constant POI_MOVEMENT_CONFIG_REG       : std_logic_vector(7 downto 0) := X"08";
  constant POI_STATUS_REG                : std_logic_vector(7 downto 0) := X"0C";
  constant POI_OPEN_LOOP_CONTROL_REG     : std_logic_vector(7 downto 0) := X"10";
  constant POI_INIT_PHASE_REG            : std_logic_vector(7 downto 0) := X"14";
  constant POI_CALIBRATION_CONTROL_REG   : std_logic_vector(7 downto 0) := X"18";
  constant POI_NOMINAL_SPEED_REG         : std_logic_vector(7 downto 0) := X"1C";
  constant POI_LOW_SPEED_REG             : std_logic_vector(7 downto 0) := X"20";
  constant POI_HIGH_SPEED_REG            : std_logic_vector(7 downto 0) := X"24";
  constant POI_TRAPEZOID_REG             : std_logic_vector(7 downto 0) := X"28";
  constant POI_HOLD_START_REG            : std_logic_vector(7 downto 0) := X"2C";
  constant POI_HOLD_STOP_REG             : std_logic_vector(7 downto 0) := X"30";
  constant POI_BB_HOLD_TIME_REG          : std_logic_vector(7 downto 0) := X"34";
  constant POI_BB_HOLD_PWM_REG           : std_logic_vector(7 downto 0) := X"38";
  constant POI_VERSION_REG               : std_logic_vector(7 downto 0) := X"F0";

  constant HOLD_START_INIT               : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 60, 24)); -- 60 ms
  constant HOLD_STOP_INIT                : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 200, 24)); -- 200 ms
  constant LOW_SPD_DLY                   : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 20, 24)); -- 20 ms
  constant NOM_SPD_DLY                   : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 10, 24)); -- 10 ms
  constant HIGH_SPD_DLY                  : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 8, 24)); -- 8 ms
  constant POI_BB_HOLD_TIME_DEF          : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(FREQUENCY * 60000 / 16, 32)); -- 60 s
  constant POI_BB_HOLD_PWM_DEF           : std_logic_vector(4 downto 0)  := "11111";
  constant STEPS_ACC1                    : std_logic_vector(3 downto 0)  := X"4";
  constant STEPS_ACC2                    : std_logic_vector(3 downto 0)  := X"4";
  constant STEPS_DEC1                    : std_logic_vector(3 downto 0)  := X"4";
  constant STEPS_DEC2                    : std_logic_vector(3 downto 0)  := X"4";
  constant VERSION_REG                   : std_logic_vector(31 downto 0) := X"0004000A";

  ----------------------------------------------------------------------------------------
  -- type declaration
  ----------------------------------------------------------------------------------------
 type poi_reg_type is record
    apb_cs                  : std_logic;
    apb_write               : std_logic;
    apb_addr                : std_logic_vector(7 downto 0);
    go                      : std_logic;
    init_res                : std_logic;
    pos_clear               : std_logic;
    planet_check            : std_logic;
    cmd                     : std_logic_vector(2 downto 0);
    coil_config             : std_logic_vector(2 downto 0);
    open_loop_speed         : std_logic_vector(1 downto 0);
    open_loop_steps         : std_logic_vector(8 downto 0);
    open_loop_dir           : std_logic;
    init_phase              : std_logic_vector(2 downto 0);
    calibration_code        : std_logic_vector(11 downto 0);
    nom_speed               : std_logic_vector(23 downto 0);
    low_speed               : std_logic_vector(23 downto 0);
    high_speed              : std_logic_vector(23 downto 0);
    trapezoid               : std_logic_vector(15 downto 0);
    hold_start              : std_logic_vector(23 downto 0);
    hold_stop               : std_logic_vector(23 downto 0);
    bbhold_time             : std_logic_vector(31 downto 0);
    bbhold_scale            : std_logic_vector(1 downto 0);
    bbhold_pwm              : std_logic_vector(4 downto 0);
    sensor1                 : std_logic_vector(2 downto 0);
    sensor2                 : std_logic_vector(2 downto 0);
 end record;
 
  ----------------------------------------------------------------------------------------
  -- signal declaration
  ----------------------------------------------------------------------------------------
  signal rreg, wreg            : poi_reg_type;
  signal w_seq_in              : seq_in_type;
  signal w_seq_out             : seq_out_type;

begin

  ----------------------------------------------------------------------------------------
  -- outputs
  ----------------------------------------------------------------------------------------
  outdrv_top <= w_seq_out.coil_top;
  outdrv_bot <= w_seq_out.coil_bot;

  ----------------------------------------------------------------------------------------
  -- APB interface logic
  ----------------------------------------------------------------------------------------
  logic : process(rreg, apbi, sens, w_seq_out)
    variable vreg           : poi_reg_type;
    variable v_cal_unlock   : boolean;
  begin
    vreg := rreg;

    vreg.apb_cs    := apbi.psel(PINDEX);
    vreg.apb_write := apbi.pwrite;
    vreg.apb_addr  := apbi.paddr(7 downto 0);
    vreg.go        := '0';
    vreg.init_res  := '0';
    vreg.pos_clear := '0';
    vreg.sensor1   := sens;
    vreg.sensor2   := rreg.sensor1;
    
    apbo.pconfig <= pconfig;
    apbo.pindex  <= PINDEX;
    apbo.pirq    <= (others => '0');
    apbo.prdata  <= (others => '0');
    
    v_cal_unlock := rreg.calibration_code(11 downto 0) = x"A5F";

    --==================================
    -- APB write access
    --==================================
    if rreg.apb_cs = '1' and apbi.penable = '1' and rreg.apb_write = '1' then
      case rreg.apb_addr is
      when POI_COMMAND_REG =>
        vreg.cmd          := apbi.pwdata(2 downto 0);
        vreg.go           := apbi.pwdata(3);
        vreg.init_res     := apbi.pwdata(4);
        vreg.pos_clear    := apbi.pwdata(5);
        
      when POI_COIL_CONFIG_REG =>
        vreg.coil_config := apbi.pwdata(2 downto 0);
        
      when POI_MOVEMENT_CONFIG_REG =>
        vreg.open_loop_speed := apbi.pwdata(1 downto 0);

      when POI_OPEN_LOOP_CONTROL_REG =>
        vreg.open_loop_steps := apbi.pwdata(8 downto 0);
        vreg.open_loop_dir   := apbi.pwdata(15);
        
      when POI_INIT_PHASE_REG =>
        vreg.init_phase := apbi.pwdata(2 downto 0);
         
      when POI_CALIBRATION_CONTROL_REG =>
        vreg.calibration_code := apbi.pwdata(11 downto 0);
        
      when POI_NOMINAL_SPEED_REG =>
        if v_cal_unlock then
          vreg.nom_speed := apbi.pwdata(23 downto 0);
        end if;
        
      when POI_LOW_SPEED_REG =>
        if v_cal_unlock then
          vreg.low_speed := apbi.pwdata(23 downto 0);
        end if;
        
      when POI_HIGH_SPEED_REG =>
        if v_cal_unlock then
          vreg.high_speed := apbi.pwdata(23 downto 0);
        end if;

      when POI_TRAPEZOID_REG =>
        if v_cal_unlock then
          vreg.trapezoid := apbi.pwdata(15 downto 0);
          vreg.planet_check := apbi.pwdata(16);
        end if;
      
      when POI_HOLD_START_REG =>
        if v_cal_unlock then
          vreg.hold_start := apbi.pwdata(23 downto 0);
        end if;
      
      when POI_HOLD_STOP_REG =>
        if v_cal_unlock then
          vreg.hold_stop := apbi.pwdata(23 downto 0);
        end if;
        
      when POI_BB_HOLD_TIME_REG =>
        if v_cal_unlock then
          vreg.bbhold_time := apbi.pwdata(31 downto 0);
        end if;
      
      when POI_BB_HOLD_PWM_REG =>
        if v_cal_unlock then
          vreg.bbhold_pwm   := apbi.pwdata(4 downto 0);
          vreg.bbhold_scale := apbi.pwdata(9 downto 8);
        end if;
      when others =>
      end case;
    end if;
    
    
    --==================================
    -- APB read access
    --==================================
    if rreg.apb_cs = '1' and apbi.penable = '1' and rreg.apb_write = '0' then
      case rreg.apb_addr is
      when POI_COMMAND_REG =>
        apbo.prdata(2 downto 0) <= rreg.cmd;
         
      when POI_COIL_CONFIG_REG =>
        apbo.prdata(2 downto 0) <= rreg.coil_config;
         
      when POI_MOVEMENT_CONFIG_REG =>
        apbo.prdata(1 downto 0) <= rreg.open_loop_speed;
         
      when POI_STATUS_REG =>
        apbo.prdata(2 downto 0)   <= rreg.sensor2;
        apbo.prdata(5 downto 3)   <= w_seq_out.curr_phase;
        apbo.prdata(6)            <= w_seq_out.moving;
        apbo.prdata(15 downto 7)  <= w_seq_out.curr_pos;
        apbo.prdata(19 downto 16) <= w_seq_out.coil_top;
        apbo.prdata(23 downto 20) <= w_seq_out.coil_bot;
        apbo.prdata(24)           <= w_seq_out.bb_hold;
        apbo.prdata(25)           <= w_seq_out.init_done;
        apbo.prdata(26)           <= w_seq_out.sensor_err;
         
      when POI_OPEN_LOOP_CONTROL_REG =>
        apbo.prdata(8 downto 0) <= rreg.open_loop_steps;
        apbo.prdata(15)         <= rreg.open_loop_dir;
         
      when POI_INIT_PHASE_REG =>
        apbo.prdata(2 downto 0) <= rreg.init_phase;
         
      when POI_CALIBRATION_CONTROL_REG =>
        apbo.prdata(11 downto 0) <= rreg.calibration_code;
         
      when POI_NOMINAL_SPEED_REG =>
        apbo.prdata(23 downto 0) <= rreg.nom_speed;
         
      when POI_LOW_SPEED_REG =>
        apbo.prdata(23 downto 0) <= rreg.low_speed;
         
      when POI_HIGH_SPEED_REG =>
        apbo.prdata(23 downto 0) <= rreg.high_speed;
         
      when POI_TRAPEZOID_REG =>
        apbo.prdata(15 downto 0) <= rreg.trapezoid;
        apbo.prdata(16)          <= rreg.planet_check;
         
      when POI_HOLD_START_REG =>
        apbo.prdata(23 downto 0) <= rreg.hold_start;
         
      when POI_HOLD_STOP_REG =>
        apbo.prdata(23 downto 0) <= rreg.hold_stop;
         
      when POI_BB_HOLD_TIME_REG =>
        apbo.prdata <= rreg.bbhold_time;
         
      when POI_BB_HOLD_PWM_REG =>
        apbo.prdata(4 downto 0) <= rreg.bbhold_pwm;
        apbo.prdata(9 downto 8) <= rreg.bbhold_scale;
         
      when POI_VERSION_REG =>
        apbo.prdata <= VERSION_REG;
         
      when others =>
      end case;
    end if;
     
    wreg <= vreg;
  end process;

  ----------------------------------------------------------------------------------------
  -- registers
  ----------------------------------------------------------------------------------------
  reg : process(clk, rst_n)
  begin
    if (rst_n = '0') then
      rreg.apb_cs             <= '0';
      rreg.apb_write          <= '0';
      rreg.apb_addr           <= (others => '0');
      rreg.go                 <= '0';
      rreg.init_res           <= '0';
      rreg.pos_clear          <= '0';
      rreg.planet_check       <= '0';
      rreg.cmd                <= (others => '0');
      rreg.coil_config        <= std_logic_vector(to_unsigned(5, rreg.coil_config'length));
      rreg.open_loop_speed    <= (others => '0');
      rreg.open_loop_steps    <= std_logic_vector(to_unsigned(1, rreg.open_loop_steps'length));
      rreg.open_loop_dir      <= '0';
      rreg.init_phase         <= (others => '0');
      rreg.calibration_code   <= (others => '0');
      rreg.nom_speed          <= NOM_SPD_DLY;
      rreg.low_speed          <= LOW_SPD_DLY;
      rreg.high_speed         <= HIGH_SPD_DLY;
      rreg.trapezoid          <= STEPS_DEC2 & STEPS_DEC1 & STEPS_ACC2 & STEPS_ACC1;
      rreg.hold_start         <= HOLD_START_INIT;
      rreg.hold_stop          <= HOLD_STOP_INIT;
      rreg.bbhold_time        <= POI_BB_HOLD_TIME_DEF;
      rreg.bbhold_scale       <= "11";
      rreg.bbhold_pwm         <= POI_BB_HOLD_PWM_DEF;
      rreg.sensor1            <= "000";
      rreg.sensor2            <= "000";
    elsif (clk'event and clk='1') then
      rreg <= wreg;
    end if;
  end process;

  
  ----------------------------------------------------------------------------------------
  -- signal assignments
  ----------------------------------------------------------------------------------------
  w_seq_in.go             <= rreg.go;
  w_seq_in.init_res       <= rreg.init_res;
  w_seq_in.pos_clear      <= rreg.pos_clear;
  w_seq_in.planet_check   <= rreg.planet_check;
  w_seq_in.cmd            <= rreg.cmd;
  w_seq_in.ol_dir         <= rreg.open_loop_dir;
  w_seq_in.ol_steps       <= rreg.open_loop_steps;
  w_seq_in.ol_speed       <= rreg.open_loop_speed;
  w_seq_in.init_phase     <= rreg.init_phase;
  w_seq_in.acc1_steps     <= rreg.trapezoid(3 downto 0);
  w_seq_in.acc2_steps     <= rreg.trapezoid(7 downto 4);
  w_seq_in.dec1_steps     <= rreg.trapezoid(11 downto 8);
  w_seq_in.dec2_steps     <= rreg.trapezoid(15 downto 12);
  w_seq_in.low_speed      <= rreg.low_speed;
  w_seq_in.nom_speed      <= rreg.nom_speed;
  w_seq_in.high_speed     <= rreg.high_speed;
  w_seq_in.hold_start     <= rreg.hold_start;
  w_seq_in.hold_stop      <= rreg.hold_stop;
  w_seq_in.sensor         <= rreg.sensor2;
  w_seq_in.coil_config    <= rreg.coil_config;
  w_seq_in.bbhold_time    <= rreg.bbhold_time;
  w_seq_in.bbhold_scale   <= rreg.bbhold_scale;
  w_seq_in.bbhold_pwm     <= rreg.bbhold_pwm;
  
  seq0 : SequenceGenerator
  port map (
    clk      => clk, 
    nres     => rst_n,
    i_seq    => w_seq_in,
    o_seq    => w_seq_out
  );
  
  
  -- pragma translate_off
      bootmsg : report_version generic map ("PointingUnit at APB index " & tost(pindex) & ": Addr: " & tost(paddr));
  -- pragma translate_on

end;
