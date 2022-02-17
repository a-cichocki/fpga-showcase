----------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
--                      Design based on work of David Krutz, Marcus Hellqvist, Jiri Gaisler
-- Last Save Date:      11/03/2011
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         Sequence Generator
-- Dependencies:        grlib, SC_SRC_020_080, SC_SRC_020_090, SC_SRC_020_100
-- Comments:            revision of original code
-----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.poi_pkg.all;

entity SequenceGenerator is
port (
  clk            : in  std_logic;
  nres           : in  std_logic;
  i_seq          : in  seq_in_type;
  o_seq          : out seq_out_type
);
end;

architecture arch of SequenceGenerator is

  constant POI_ACC_DEC_LAST          : unsigned(8 downto 0) := to_unsigned(1, 9);

  type clc_state_type is (ST_CLC_IDLE, ST_CLC_START, ST_CLC_MOVE, ST_CLC_INIT, ST_CLC_BBHOLD);
  type trapez_state_type is (ST_TR_IDLE, ST_TR_HOLD_START, ST_TR_ACC1, ST_TR_ACC2, ST_TR_FLAT, ST_TR_DEC1, ST_TR_DEC2,
                             ST_TR_HOLD_STOP, ST_TR_INIT, ST_TR_PHASESHIFT, ST_TR_OPEN);

  type clc_reg_type is record
    cl_state          : clc_state_type;
    tr_state          : trapez_state_type;
    cmd               : std_logic_vector(2 downto 0);
    trapez_rdy        : std_logic;
    init_done         : std_logic;
    moving            : std_logic;
    tr_timer          : unsigned(23 downto 0);
    curr_pos          : unsigned(8 downto 0);
    curr_phase        : unsigned(2 downto 0);
    tr_stepcnt        : unsigned(8 downto 0);
    flat_steps        : unsigned(8 downto 0);
    sensor_err        : std_logic;
    coil_top          : std_logic_vector(3 downto 0);
    coil_bot          : std_logic_vector(3 downto 0);
    bb_timer          : unsigned(35 downto 0);
    bb_pwm            : unsigned(4 downto 0);
    bb_out_en         : std_logic;
  end record;

  signal rreg, wreg         : clc_reg_type;

begin
  ----------------------------------------------------------------------------------------
  -- outputs
  ----------------------------------------------------------------------------------------
  o_seq.moving     <= rreg.moving;
  o_seq.curr_pos   <= std_logic_vector(rreg.curr_pos);
  o_seq.curr_phase <= std_logic_vector(rreg.curr_phase);
  o_seq.init_done  <= rreg.init_done;
  o_seq.sensor_err <= rreg.sensor_err;
  o_seq.coil_top   <= rreg.coil_top;
  o_seq.coil_bot   <= rreg.coil_bot;

  ----------------------------------------------------------------------------------------
  -- logic
  ----------------------------------------------------------------------------------------
  logic : process (rreg, i_seq)
    variable vreg           : clc_reg_type;
    variable v_target_pos   : unsigned(8 downto 0);
    variable v_tr_steps     : unsigned(8 downto 0);
    variable v_dir          : std_logic;
    variable v_tr_start     : boolean;
    variable v_tr_stop      : boolean;
    variable v_open_loop    : boolean;
    variable v_step         : boolean;
    variable v_pos_clear    : boolean;
    variable v_set_phase    : boolean;
    variable v_fast_len     : unsigned(5 downto 0);
    variable v_timer_load   : boolean;
    variable v_timer_zero   : boolean;
    variable v_timer_value  : unsigned(23 downto 0);
    variable v_out_en       : std_logic;
    variable v_coil_en      : std_logic_vector(3 downto 0);
    variable v_coil_mask    : std_logic_vector(3 downto 0);
    variable v_pwm_tick     : std_logic;
    variable v_valid_cmd    : boolean;
  begin
    vreg := rreg;
    v_tr_start  := false;
    v_tr_stop   := false;
    v_step      := false;
    v_pos_clear := i_seq.pos_clear = '1';
    v_set_phase := false;
    v_out_en    := '0';
    o_seq.bb_hold  <= '0';
    
    -- target position
    case rreg.cmd is
    when POI_CMD_BB700 =>
      v_target_pos := to_unsigned(100, 9);
    when POI_CMD_BB300 =>
      v_target_pos := to_unsigned(200, 9);
    when POI_CMD_SPACE =>
      v_target_pos := to_unsigned(300, 9);
    when others =>
      v_target_pos := to_unsigned(0, 9);
    end case;
    
    v_valid_cmd := (i_seq.cmd = POI_CMD_BB700) or (i_seq.cmd = POI_CMD_BB300) or
                   (i_seq.cmd = POI_CMD_SPACE) or (i_seq.cmd = POI_CMD_PLANET) or
                   (i_seq.cmd = POI_CMD_OPEN_LOOP);
    
    -- steps and direction to take
    v_tr_steps  := (others => '0');
    v_dir       := '0';
    v_open_loop := false;
    if rreg.cmd = POI_CMD_OPEN_LOOP then
      v_open_loop := true;
      v_tr_steps  := unsigned(i_seq.ol_steps);
      v_dir       := not i_seq.ol_dir;
    else
      if rreg.curr_pos > v_target_pos then
        v_tr_steps := rreg.curr_pos - v_target_pos;
        v_dir      := '1';
      else
        v_tr_steps := v_target_pos - rreg.curr_pos;
        v_dir      := '0';
      end if;
    end if;
    
    --=====================================================================================
    -- toplevel control FSM
    case rreg.cl_state is
    when ST_CLC_IDLE =>
      vreg.moving := '0';
      if (i_seq.go = '1') and v_valid_cmd then
        vreg.cmd    := i_seq.cmd;
        vreg.moving := '1';
        if rreg.init_done = '0' then 
          vreg.cl_state := ST_CLC_INIT;
          v_tr_start    := true;
          v_tr_steps    := to_unsigned(300, 9);
          v_dir         := '1';
          v_set_phase   := true;
        else
          vreg.cl_state := ST_CLC_START;
        end if;
      end if;
      
    when ST_CLC_START =>
      v_out_en := '1';
      if v_tr_steps /= 0 then 
        vreg.cl_state := ST_CLC_MOVE;
        v_tr_start    := true;
      else
        vreg.cl_state := ST_CLC_IDLE;
      end if;
      
    when ST_CLC_MOVE =>
      v_out_en := '1';
      if (i_seq.go = '1') and (i_seq.cmd = POI_CMD_PLANET) and (rreg.cmd /= POI_CMD_PLANET) then
        vreg.cl_state := ST_CLC_START;
        v_tr_stop     := true;
        vreg.cmd      := i_seq.cmd;
      elsif rreg.trapez_rdy = '1' then
        vreg.cl_state := ST_CLC_IDLE;
        if (rreg.cmd = POI_CMD_BB700) or (rreg.cmd = POI_CMD_BB300) then
          vreg.cl_state := ST_CLC_BBHOLD;
          vreg.bb_timer := unsigned(i_seq.bbhold_time) & "0000";
        end if;
      end if;
      
    when ST_CLC_INIT =>
      v_tr_steps := to_unsigned(300, 9);
      v_dir      := '1';
      v_out_en   := '1';
      if rreg.trapez_rdy = '1' then
        vreg.cl_state := ST_CLC_START;
      end if;
      
    when ST_CLC_BBHOLD =>
      v_out_en      := rreg.bb_out_en;
      vreg.moving   := '0';
      o_seq.bb_hold <= '1';
      if (i_seq.go = '1') and v_valid_cmd then
        vreg.cl_state := ST_CLC_START;
        vreg.cmd      := i_seq.cmd;
        vreg.moving   := '1';
      elsif rreg.bb_timer = 0 then
        vreg.cl_state := ST_CLC_IDLE;
      else
        vreg.bb_timer := rreg.bb_timer - to_unsigned(1, rreg.bb_timer'length);
      end if;
    
    when others =>
    end case;
    
    -- pointing unit stop or return to planet view
    if (i_seq.go = '1') and (i_seq.cmd = POI_CMD_STOP) then
      vreg.cl_state := ST_CLC_IDLE;
      v_tr_stop     := true;
    end if;
    
    --=====================================================================================
    -- trapezoid logic
    
    v_fast_len := ("00" & unsigned(i_seq.acc1_steps)) + 
                  ("00" & unsigned(i_seq.acc2_steps)) +
                  ("00" & unsigned(i_seq.dec1_steps)) +
                  ("00" & unsigned(i_seq.dec2_steps));
                 
    v_timer_load := false;
    
    case i_seq.ol_speed is
    when "01"   => v_timer_value := unsigned(i_seq.low_speed);
    when "10"   => v_timer_value := unsigned(i_seq.high_speed);
    when others => v_timer_value := unsigned(i_seq.nom_speed);
    end case;
    
    -- trapezoid FSM
    if rreg.tr_timer = 0 then
      
      if rreg.tr_state /= ST_TR_IDLE then
        vreg.tr_stepcnt := rreg.tr_stepcnt - to_unsigned(1, rreg.tr_stepcnt'length);
      end if;
      
      case rreg.tr_state is
      when ST_TR_IDLE =>
        vreg.trapez_rdy := '1';
        if v_tr_start then
          vreg.trapez_rdy := '0';
          vreg.tr_state := ST_TR_HOLD_START;
          v_timer_value := unsigned(i_seq.hold_start);
        end if;
        
      when ST_TR_HOLD_START =>
        if v_open_loop then
          vreg.tr_state := ST_TR_OPEN;
          vreg.tr_stepcnt := v_tr_steps;
        elsif rreg.init_done = '0' then
          vreg.tr_state := ST_TR_INIT;
          v_timer_value := unsigned(i_seq.low_speed);
          vreg.tr_stepcnt := v_tr_steps;
        elsif v_tr_steps > ("000" & v_fast_len) then
          vreg.tr_state   := ST_TR_ACC1;
          v_timer_value   := unsigned(i_seq.low_speed);
          vreg.tr_stepcnt := "00000" & unsigned(i_seq.acc1_steps);
          vreg.flat_steps := v_tr_steps - v_fast_len;
        else
          vreg.tr_state := ST_TR_DEC2;
          v_timer_value := unsigned(i_seq.low_speed);
          vreg.tr_stepcnt := v_tr_steps;
        end if;
      
      when ST_TR_ACC1 =>
        v_step := true;
        v_timer_value := unsigned(i_seq.low_speed);
        if rreg.tr_stepcnt = POI_ACC_DEC_LAST then
          vreg.tr_state := ST_TR_ACC2;
          vreg.tr_stepcnt := "00000" & unsigned(i_seq.acc2_steps);
        end if;
      
      when ST_TR_ACC2 =>
        v_step := true;
        v_timer_value := unsigned(i_seq.nom_speed);
        if rreg.tr_stepcnt = POI_ACC_DEC_LAST then
          vreg.tr_state := ST_TR_FLAT;
          vreg.tr_stepcnt := rreg.flat_steps;
        end if;
      
      when ST_TR_FLAT =>
        v_step := true;
        v_timer_value := unsigned(i_seq.high_speed);
        if rreg.tr_stepcnt = POI_ACC_DEC_LAST then
          vreg.tr_state := ST_TR_DEC1;
          vreg.tr_stepcnt := "00000" & unsigned(i_seq.dec1_steps);
        end if;
      
      when ST_TR_DEC1 =>
        v_step := true;
        v_timer_value := unsigned(i_seq.nom_speed);
        if rreg.tr_stepcnt = POI_ACC_DEC_LAST then
          vreg.tr_state := ST_TR_DEC2;
          vreg.tr_stepcnt := "00000" & unsigned(i_seq.dec2_steps);
          if (i_seq.planet_check = '1') and (rreg.cmd = POI_CMD_PLANET) then
            vreg.tr_state   := ST_TR_INIT;
            vreg.tr_stepcnt := to_unsigned(32, vreg.tr_stepcnt'length);
          end if;
      end if;
      
      when ST_TR_DEC2 =>
        v_step := true;
        v_timer_value := unsigned(i_seq.low_speed);
        if rreg.tr_stepcnt = POI_ACC_DEC_LAST then
          vreg.tr_state := ST_TR_HOLD_STOP;
          v_timer_value := unsigned(i_seq.hold_stop);
        end if;
      
      when ST_TR_HOLD_STOP =>
        vreg.tr_state := ST_TR_IDLE;
      
      when ST_TR_INIT =>
        v_timer_value := unsigned(i_seq.low_speed);
        if i_seq.sensor(2) = '1' then
          vreg.tr_state := ST_TR_PHASESHIFT;
        elsif (rreg.init_done = '0') and (rreg.curr_pos = 0) then
          vreg.tr_state   := ST_TR_IDLE;
          vreg.sensor_err := '1';
        elsif (rreg.init_done = '1') and (rreg.tr_stepcnt = POI_ACC_DEC_LAST) then
          vreg.tr_state   := ST_TR_IDLE;
          vreg.sensor_err := '1';
        else
          v_step := true;
        end if;
        
      when ST_TR_PHASESHIFT =>
        v_timer_value := unsigned(i_seq.low_speed);
        if rreg.curr_phase = unsigned(i_seq.init_phase) then
          vreg.tr_state := ST_TR_IDLE;
          v_pos_clear   := true;
        else
          v_step := true;
        end if;

      when ST_TR_OPEN =>
        if rreg.tr_stepcnt = 0 then
          v_timer_value := unsigned(i_seq.hold_stop);
          vreg.tr_state := ST_TR_HOLD_STOP;
        else
          v_step := true;
        end if;
        
      when others =>
      end case;
      
      -- trigger tr_timer
      if vreg.tr_state /= ST_TR_IDLE then
        v_timer_load := true;
      end if;
      
    end if;
    
    -- tr_timer
    if v_tr_stop then
      vreg.tr_timer := (others => '0');
      vreg.tr_state := ST_TR_IDLE;
    elsif v_timer_load then
      vreg.tr_timer := v_timer_value;
    elsif rreg.tr_timer /= 0 then
      vreg.tr_timer := rreg.tr_timer - to_unsigned(1, rreg.tr_timer'length);
    end if;
    
    --=====================================================================================
    -- phase and step counter
    if v_step then
      if v_dir = '0' then
        vreg.curr_phase := rreg.curr_phase + to_unsigned(1, rreg.curr_phase'length);
        vreg.curr_pos   := rreg.curr_pos   + to_unsigned(1, rreg.curr_pos'length);
      else
        vreg.curr_phase := rreg.curr_phase - to_unsigned(1, rreg.curr_phase'length);
        vreg.curr_pos   := rreg.curr_pos   - to_unsigned(1, rreg.curr_pos'length);
      end if;
    end if;
    
    -- position clear, set init phase
    if v_set_phase then
      vreg.curr_phase := unsigned(i_seq.init_phase);
    end if;
    if v_pos_clear then
      vreg.init_done  := '1';
      vreg.curr_pos   := (others => '0');
      vreg.curr_phase := unsigned(i_seq.init_phase);
      vreg.sensor_err := '0';
    elsif i_seq.init_res = '1' then
      vreg.init_done  := '0';
      vreg.curr_pos   := to_unsigned(300, rreg.curr_pos'length);
    end if;
    
    
    --=====================================================================================
    -- phase decoder and coil enable
    case rreg.curr_phase is
    when "000"  => v_coil_en := "0110";
    when "001"  => v_coil_en := "0100";
    when "010"  => v_coil_en := "0101";
    when "011"  => v_coil_en := "0001";
    when "100"  => v_coil_en := "1001";
    when "101"  => v_coil_en := "1000";
    when "110"  => v_coil_en := "1010";
    when others => v_coil_en := "0010";
    end case;

    case i_seq.coil_config is
    when "000"  => v_coil_mask := "0011";    -- coilset 0 = COIL2 + COIL1
    when "001"  => v_coil_mask := "1100";    -- coilset 1 = COIL4 + COIL3
    when "010"  => v_coil_mask := "0110";    -- coilset 2 = COIL3 + COIL2
    when "011"  => v_coil_mask := "1001";    -- coilset 3 = COIL4 + COIL1
    when others => v_coil_mask := "1111";    -- coilset 4 = COIL4 + COIL3 + COIL2 + COIL1
    end case;
    
    vreg.coil_top(3) := v_coil_en(3) and v_coil_mask(1) and v_out_en;
    vreg.coil_top(2) := v_coil_en(2) and v_coil_mask(1) and v_out_en;
    vreg.coil_top(1) := v_coil_en(1) and v_coil_mask(0) and v_out_en;
    vreg.coil_top(0) := v_coil_en(0) and v_coil_mask(0) and v_out_en;

    vreg.coil_bot(3) := v_coil_en(3) and v_coil_mask(3) and v_out_en;
    vreg.coil_bot(2) := v_coil_en(2) and v_coil_mask(3) and v_out_en;
    vreg.coil_bot(1) := v_coil_en(1) and v_coil_mask(2) and v_out_en;
    vreg.coil_bot(0) := v_coil_en(0) and v_coil_mask(2) and v_out_en;
    
    --=====================================================================================
    -- PWM
    case i_seq.bbhold_scale is
    when "00"   => v_pwm_tick := vreg.bb_timer(4) xor rreg.bb_timer(4);    -- 41 kHz
    when "01"   => v_pwm_tick := vreg.bb_timer(6) xor rreg.bb_timer(6);    -- 10 kHz
    when "10"   => v_pwm_tick := vreg.bb_timer(8) xor rreg.bb_timer(8);    -- 2.5 kHz
    when others => v_pwm_tick := vreg.bb_timer(10) xor rreg.bb_timer(10);  -- 640 Hz
    end case;
    
    if v_pwm_tick = '1' then
      vreg.bb_pwm := rreg.bb_pwm + to_unsigned(1, rreg.bb_pwm'length);
      if rreg.bb_pwm = "11111" then
        vreg.bb_out_en := '1';
      elsif rreg.bb_pwm = unsigned(i_seq.bbhold_pwm) then
        vreg.bb_out_en := '0';
      end if;
    end if;
    
    wreg <= vreg;
  end process;

  ----------------------------------------------------------------------------------------
  -- registers
  ----------------------------------------------------------------------------------------
  reg: process (clk, nres)
  begin
    if (nres = '0') then
      rreg.cl_state        <= ST_CLC_IDLE;
      rreg.tr_state        <= ST_TR_IDLE;
      rreg.cmd             <= (others => '0');
      rreg.trapez_rdy      <= '0';
      rreg.init_done       <= '0';
      rreg.moving          <= '0';
      rreg.tr_timer        <= (others => '0');
      rreg.curr_pos        <= to_unsigned(300, rreg.curr_pos'length);
      rreg.curr_phase      <= (others => '0');
      rreg.tr_stepcnt      <= (others => '0');
      rreg.flat_steps      <= (others => '0');
      rreg.sensor_err      <= '0';
      rreg.coil_top        <= (others => '0');
      rreg.coil_bot        <= (others => '0');
      rreg.bb_timer        <= (others => '0');
      rreg.bb_pwm          <= (others => '0');
      rreg.bb_out_en       <= '0';
    elsif (clk'event and clk = '1') then
      rreg <= wreg;
    end if;
  end process;


end architecture;
