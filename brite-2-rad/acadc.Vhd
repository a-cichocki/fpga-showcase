--------------------------------------------------------------------------------
-- Company:             Space Research Centre of Polish Academy of Sciences
-- Engineer:            Andrzej Cichocki
-- Last Save Date:      24/02/2010
-- Design Name:         MERTIS Pointing Unit Stepping Motor Controller
-- Description:         Step counter.
-- Dependencies:        None.
-- Comments:            DM#2 Delivery - VHDL Code ver 4.7
--------------------------------------------------------------------------------
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_arith.all;

entity ADCController is
    port (
        clk, rst                                                                       : in    std_logic;
        ADC_CLKDIV                                                                     : in    std_logic_vector(15 downto 0);
        DACVAL                                                                         : out   std_logic_vector(7 downto 0);
        adc_valid                                                                      : out   std_logic;
        temp1v_cmp, c1v2v_cmp, temp2v_cmp, v1v2v_cmp, c3v3v_cmp : in    std_logic;
        adc_temp1v                                                                      : out   std_logic_vector(7 downto 0);
        adc_c1v2v                                                                    : out   std_logic_vector(7 downto 0);
        adc_temp2v                                                                 : out   std_logic_vector(7 downto 0);
        adc_v1v2v                                                                  : out   std_logic_vector(7 downto 0);
        adc_c3v3v                                                                     : out   std_logic_vector(7 downto 0)
    );
end ADCController;

architecture rtl of ADCController is
    type TState is (stIdle, stRising, stFalling);
    type TContext is record
        state               : TState;
        temp1v_trigd         : std_logic;
        c1v2v_trigd       : std_logic;
        temp2v_trigd    : std_logic;
        v1v2v_trigd     : std_logic;
        c3v3v_trigd        : std_logic;
        val_temp1v           : std_logic_vector(7 downto 0);
        val_c1v2v         : std_logic_vector(7 downto 0);
        val_temp2v      : std_logic_vector(7 downto 0);
        val_v1v2v       : std_logic_vector(7 downto 0);
        val_c3v3v          : std_logic_vector(7 downto 0);
        data_valid          : std_logic;
        CLKDELAY            : std_logic_vector(15 downto 0);
        CURDACVAL           : std_logic_vector(7 downto 0);
    end record;
    signal r, rin           : TContext;
begin
    SEQ:process (clk, rst )
    begin
        if (rst = '1') then
            r.temp1v_trigd <= '0';
            r.c1v2v_trigd <= '0';
            r.temp2v_trigd <= '0';
            r.v1v2v_trigd <= '0';
            r.c3v3v_trigd <= '0';
            r.val_temp1v <= (others =>'1');
            r.val_c1v2v <= (others =>'1');
            r.val_temp2v <= (others =>'1');
            r.val_v1v2v <= (others =>'1');
            r.val_c3v3v <= (others =>'1');
            r.data_valid <= '0';
            r.CLKDELAY <= (5 => '1', others => '0');
            r.CURDACVAL <= (others => '0');
            r.state <= stIdle;
        elsif (clk'event and clk='1') then
            r <= rin;
        end if;
    end process;

    COMB: process (r, temp1v_cmp, c1v2v_cmp,  temp2v_cmp, v1v2v_cmp, c3v3v_cmp, ADC_CLKDIV)
        variable v          : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                v.temp1v_trigd := '0';
                v.c1v2v_trigd := '0';
                v.temp2v_trigd := '0';
                v.v1v2v_trigd := '0';
                v.c3v3v_trigd := '0';
                v.val_temp1v := (others =>'1');
                v.val_c1v2v := (others =>'1');
                v.val_temp2v := (others =>'1');
                v.val_v1v2v := (others =>'1');
                v.val_c3v3v := (others =>'1');
                v.CURDACVAL := (others =>'0');
                v.CLKDELAY := ADC_CLKDIV;
                v.state := stRising;
                v.data_valid := '0';
            when stRising =>
                if (unsigned(r.CLKDELAY) = 0) then
                    if (r.CURDACVAL = x"C1") then
                        v.state := stFalling;
                        v.data_valid := '1';
                        v.temp1v_trigd := '0';
                        v.c1v2v_trigd := '0';
                        v.temp2v_trigd := '0';
                        v.v1v2v_trigd := '0';
                        v.c3v3v_trigd := '0';
                    else
                        v.CURDACVAL := unsigned(r.CURDACVAL) + 1 ;
                    end if;
                    v.CLKDELAY := ADC_CLKDIV;
                else
                    v.CLKDELAY := unsigned(r.CLKDELAY) - 1;
                    v.data_valid := '0';
                end if;

                if (temp1v_cmp = '0' and r.temp1v_trigd = '0') then
                    v.temp1v_trigd := '1';
                    v.val_temp1v := r.CURDACVAL;
                end if;
                if (c1v2v_cmp = '0' and r.c1v2v_trigd = '0' ) then
                    v.c1v2v_trigd := '1';
                    v.val_c1v2v := r.CURDACVAL;
                end if;
                if (temp2v_cmp = '0' and r.temp2v_trigd = '0' ) then
                    v.temp2v_trigd := '1';
                    v.val_temp2v := r.CURDACVAL;
                end if;
                if (v1v2v_cmp = '0' and r.v1v2v_trigd = '0' ) then
                    v.v1v2v_trigd := '1';
                    v.val_v1v2v := r.CURDACVAL;
                end if;
                if (c3v3v_cmp = '0' and r.c3v3v_trigd = '0' ) then
                    v.c3v3v_trigd := '1';
                    v.val_c3v3v := r.CURDACVAL;
                end if;
            when stFalling =>
                if (unsigned(r.CLKDELAY) = 0) then
                    if (r.CURDACVAL = "00000000") then
                        v.state := stRising;
                        v.data_valid := '0';        -- v.data_valid := '1';
                        v.temp1v_trigd := '0';
                        v.c1v2v_trigd := '0';
                        v.temp2v_trigd := '0';
                        v.v1v2v_trigd := '0';
                        v.c3v3v_trigd := '0';
                    else
                        v.CURDACVAL := unsigned(r.CURDACVAL) - 1 ;
                    end if;
                    v.CLKDELAY := ADC_CLKDIV;
                else
                    v.CLKDELAY := unsigned(r.CLKDELAY) - 1;
                    v.data_valid := '0';
                end if;
            when others =>
                v.state := stIdle;
                v.data_valid := '0';
        end case;
        rin <= v;
    end process;
    DACVAL <= r.CURDACVAL;
    adc_temp1v <= r.val_temp1v;
    adc_c1v2v <= r.val_c1v2v;
    adc_temp2v <= r.val_temp2v;
    adc_v1v2v <= r.val_v1v2v;
    adc_c3v3v <= r.val_c3v3v;
    adc_valid <= r.data_valid;
end;
