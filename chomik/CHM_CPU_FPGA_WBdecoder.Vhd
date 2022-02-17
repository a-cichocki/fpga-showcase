library ieee;
use ieee.std_logic_1164.all ;

entity wb_decoder is
    port (
        clk, rst             : in    std_logic;
        SFR_ADDR             : in    std_logic_vector(6 downto 0);
        SFR_DATAI            : in    std_logic_vector(7 downto 0);
        SFR_WR               : in    std_logic;
        OUT_UART_DATA        : out   std_logic_vector(7 downto 0);
        OUT_EEPROM_ADDR      : out   std_logic_vector(7 downto 0);
        OUT_EEPROM_DATA      : out   std_logic_vector(7 downto 0);
        OUT_EEPROM_CONTROL   : out   std_logic_vector(7 downto 0);
        OUT_EEPROM_CLKDIV    : out   std_logic_vector(7 downto 0);
        OUT_HK_ADC_CLKDIV_H  : out   std_logic_vector(7 downto 0);
        OUT_HK_ADC_CLKDIV_L  : out   std_logic_vector(7 downto 0);
        OUT_HK_HAM_CMD       : out   std_logic_vector(7 downto 0);
        OUT_HK_CLM_PWM       : out   std_logic_vector(7 downto 0);
        OUT_HK_EX_HTR_PWM    : out   std_logic_vector(7 downto 0);
        OUT_HK_EX_SUPPLY     : out   std_logic_vector(7 downto 0);
        IN_HK_ADC_VOLT5      : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_TH_DCDC    : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_TH_CTRL    : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_VAL_H      : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_VAL_L      : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_DEPTH_FULL : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_DEPTH_MID  : in    std_logic_vector(7 downto 0);
        IN_HK_ADC_TH_HAM     : in    std_logic_vector(7 downto 0);
        IN_HK_CLM_STATUS     : in    std_logic_vector(7 downto 0);
        OUT_HK_ADC_CON       : out   std_logic_vector(7 downto 0);
        OUT_TIMER_CONTROL    : out   std_logic_vector(7 downto 0);
        IN_TIMER_VAL3        : in    std_logic_vector(7 downto 0);
        IN_TIMER_VAL2        : in    std_logic_vector(7 downto 0);
        IN_TIMER_VAL1        : in    std_logic_vector(7 downto 0);
        IN_TIMER_VAL0        : in    std_logic_vector(7 downto 0);
        IN_CLKRECDIV_H       : in    std_logic_vector(7 downto 0);
        IN_CLKRECDIV_L       : in    std_logic_vector(7 downto 0);
        OUT_CLKRECMAIN       : out   std_logic_vector(7 downto 0);
        OUT_CLKTIMEDIV_H     : out   std_logic_vector(7 downto 0);
        OUT_CLKTIMEDIV_L     : out   std_logic_vector(7 downto 0);
        sfr_datao            : out   std_logic_vector(7 downto 0);
        IN_UART_DATA         : in    std_logic_vector(7 downto 0);
        OUT_UART_BRDIV_H     : out   std_logic_vector(7 downto 0);
        OUT_UART_BRDIV_L     : out   std_logic_vector(7 downto 0);
        tx_stb               : out std_logic
    );
end wb_decoder;

architecture rtl of wb_decoder is
        --UART
        constant UART_DATA      : std_logic_vector(6 downto 0) := "1111111";-- x"FF";
        constant UART_BRDIV_L   : std_logic_vector(6 downto 0) := "1110111";--x"F7";
        constant UART_BRDIV_H   : std_logic_vector(6 downto 0) := "1101111";--x"EF";
--        constant UART_SRELL     : std_logic_vector(6 downto 0) := "1100111";--x"E7";
--        constant UART_SRELH     : std_logic_vector(6 downto 0) := "1011111";--x"DF";
--        constant UART_TCON      : std_logic_vector(6 downto 0) := "1010111";--x"D7";
--        constant UART_TL        : std_logic_vector(6 downto 0) := "1001111";--x"CF";
--        constant UART_TH        : std_logic_vector(6 downto 0) := "1000111";--x"C7";
--        constant UART_ADCON     : std_logic_vector(6 downto 0) := "0111111";--x"BF";
        --EEPROM
        constant EEPROM_ADDR    : std_logic_vector(6 downto 0) := "1111110";-- x"FE";
        constant EEPROM_DATA    : std_logic_vector(6 downto 0) := "1110110";-- x"F6";
        constant EEPROM_CONTROL : std_logic_vector(6 downto 0) := "1101110";-- x"EE";
        constant EEPROM_CLKDIV  : std_logic_vector(6 downto 0) := "1100110";-- x"E6";
        --HK
        constant HK_ADC_CLKDIV_H   : std_logic_vector(6 downto 0) := "1111101";-- x"FD";
        constant HK_ADC_CLKDIV_L   : std_logic_vector(6 downto 0) := "1110101";-- x"F5";
        constant HK_HAM_CMD        : std_logic_vector(6 downto 0) := "1101101";-- x"ED";
        constant HK_CLM_PWM        : std_logic_vector(6 downto 0) := "1100101";-- x"E5";
        constant HK_EX_HTR_PWM     : std_logic_vector(6 downto 0) := "1011101";-- x"DD";
        constant HK_EX_SUPPLY      : std_logic_vector(6 downto 0) := "1010101";-- x"D5";
        constant HK_ADC_VOLT5      : std_logic_vector(6 downto 0) := "1001101";-- x"CD";
        constant HK_ADC_TH_DCDC    : std_logic_vector(6 downto 0) := "1000101";-- x"C5";
        constant HK_ADC_TH_CTRL    : std_logic_vector(6 downto 0) := "0111101";-- x"BD";
        constant HK_ADC_VAL_H    : std_logic_vector(6 downto 0) := "0110101";-- x"B5";
        constant HK_ADC_VAL_L    : std_logic_vector(6 downto 0) := "0101101";-- x"AD";
        constant HK_ADC_DEPTH_FULL : std_logic_vector(6 downto 0) := "0100101";-- x"A5";
        constant HK_ADC_DEPTH_MID  : std_logic_vector(6 downto 0) := "0011101";-- x"9D";
        constant HK_ADC_TH_HAM     : std_logic_vector(6 downto 0) := "0010101";-- x"95";
        ---------
        constant HK_ADC_PT_EX_H    : std_logic_vector(6 downto 0) := "1111100";-- x"FC";
        constant HK_ADC_PT_EX_L    : std_logic_vector(6 downto 0) := "1110100";-- x"F4";
        constant HK_HAM_PULSE_H    : std_logic_vector(6 downto 0) := "1101100";-- x"EC";
        constant HK_HAM_PULSE_L    : std_logic_vector(6 downto 0) := "1100100";-- x"E4";
        constant HK_CLM_STATUS     : std_logic_vector(6 downto 0) := "1011100";-- x"DC";
        constant HK_ADC_CON        : std_logic_vector(6 downto 0) := "1010100";-- x"D4";

        constant TIMER_CONTROL     : std_logic_vector(6 downto 0) := "1001100";-- x"CC";
        constant TIMER_VAL3        : std_logic_vector(6 downto 0) := "1000100";-- x"C4";
        constant TIMER_VAL2        : std_logic_vector(6 downto 0) := "0111100";-- x"BC";
        constant TIMER_VAL1        : std_logic_vector(6 downto 0) := "0110100";-- x"B4";
        constant TIMER_VAL0        : std_logic_vector(6 downto 0) := "0101100";-- x"AC";

        constant CLKRECDIV_H       : std_logic_vector(6 downto 0) := "0001011";-- x"8B";
        constant CLKRECDIV_L       : std_logic_vector(6 downto 0) := "0010011";-- x"93";
        constant CLKRECMAIN        : std_logic_vector(6 downto 0) := "0011011";-- x"9B";

        constant CLKTIMEDIV_H      : std_logic_vector(6 downto 0) := "0100011";-- x"A3";
        constant CLKTIMEDIV_L      : std_logic_vector(6 downto 0) := "0101011";-- x"AB";



type TRegs is record
        REG_UART_DATA               : std_logic_vector(7 downto 0);
        REG_UART_BRDIV_H              : std_logic_vector(7 downto 0);
        REG_UART_BRDIV_L              : std_logic_vector(7 downto 0);
        REG_EEPROM_ADDR             : std_logic_vector(7 downto 0);
        REG_EEPROM_DATA             : std_logic_vector(7 downto 0);
        REG_EEPROM_CONTROL          : std_logic_vector(7 downto 0);
        REG_EEPROM_CLKDIV           : std_logic_vector(7 downto 0);
        REG_HK_ADC_CLKDIV_H         : std_logic_vector(7 downto 0);
        REG_HK_ADC_CLKDIV_L         : std_logic_vector(7 downto 0);
        REG_HK_HAM_CMD              : std_logic_vector(7 downto 0);
        REG_HK_CLM_PWM              : std_logic_vector(7 downto 0);
        REG_HK_EX_HTR_PWM           : std_logic_vector(7 downto 0);
        REG_HK_EX_SUPPLY            : std_logic_vector(7 downto 0);
        REG_HK_ADC_CON              : std_logic_vector(7 downto 0);
        REG_TIMER_CONTROL           : std_logic_vector(7 downto 0);
        REG_CLKRECMAIN              : std_logic_vector(7 downto 0);
        REG_CLKTIMEDIV_H            : std_logic_vector(7 downto 0);
        REG_CLKTIMEDIV_L            : std_logic_vector(7 downto 0);
        tx_stb                      : std_logic;
end record;

signal r, rin                       : TRegs;

begin

process (clk, rst)
begin
    if (rst = '1') then
        --TODO : reg init values
        r.tx_stb <= '0';
        r.REG_HK_HAM_CMD <= x"80";
        r.REG_HK_CLM_PWM <= x"00";

    elsif (clk = '1' and clk'event) then
        r <= rin;
    end if;
end process;

process(r, sfr_addr, sfr_datai, sfr_wr, IN_UART_DATA, IN_HK_ADC_VOLT5, IN_HK_ADC_TH_DCDC, IN_HK_ADC_TH_CTRL, IN_HK_ADC_VAL_H, IN_HK_ADC_VAL_L, IN_HK_ADC_DEPTH_FULL, IN_HK_ADC_DEPTH_MID, IN_HK_ADC_TH_HAM, IN_HK_CLM_STATUS, IN_TIMER_VAL3, IN_TIMER_VAL2, IN_TIMER_VAL1, IN_TIMER_VAL0, IN_CLKRECDIV_H, IN_CLKRECDIV_L)
    variable v : TRegs;
begin
    v := r;
    if ( sfr_wr = '1' ) then
        v.tx_stb := '0';
        case sfr_addr is
            when  UART_DATA =>
                v.REG_UART_DATA := sfr_datai;
                v.tx_stb := '1';
            when  UART_BRDIV_H =>
                v.REG_UART_BRDIV_H := sfr_datai;
            when  UART_BRDIV_L =>
                v.REG_UART_BRDIV_L := sfr_datai;
            when  EEPROM_ADDR =>
                v.REG_EEPROM_ADDR := sfr_datai;
            when  EEPROM_DATA =>
                v.REG_EEPROM_DATA := sfr_datai;
            when  EEPROM_CONTROL =>
                v.REG_EEPROM_CONTROL := sfr_datai;
            when  EEPROM_CLKDIV =>
                v.REG_EEPROM_CLKDIV := sfr_datai;
            when  HK_ADC_CLKDIV_H =>
                v.REG_HK_ADC_CLKDIV_H := sfr_datai;
            when  HK_ADC_CLKDIV_L  =>
                v.REG_HK_ADC_CLKDIV_L  := sfr_datai;
            when  HK_HAM_CMD  =>
                v.REG_HK_HAM_CMD        := sfr_datai;
            when  HK_CLM_PWM  =>
                v.REG_HK_CLM_PWM        := sfr_datai;
            when  HK_EX_HTR_PWM  =>
                v.REG_HK_EX_HTR_PWM     := sfr_datai;
            when  HK_EX_SUPPLY  =>
                v.REG_HK_EX_SUPPLY      := sfr_datai;
            when  HK_ADC_CON   =>
                v.REG_HK_ADC_CON      := sfr_datai;
            when  TIMER_CONTROL   =>
                v.REG_TIMER_CONTROL      := sfr_datai;
            when  CLKRECMAIN   =>
                v.REG_CLKRECMAIN      := sfr_datai;
            when  CLKTIMEDIV_H    =>
                v.REG_CLKTIMEDIV_H       := sfr_datai;
            when  CLKTIMEDIV_L   =>
                v.REG_CLKTIMEDIV_L      := sfr_datai;
            when others =>
                null;
        end case;
        sfr_datao <= (others => '0');
    else
        v.tx_stb := '0';
        case sfr_addr is
            when  UART_DATA =>
                sfr_datao <= IN_UART_DATA;
            when  UART_BRDIV_L  =>
                sfr_datao <= r.REG_UART_BRDIV_L ;
            when  UART_BRDIV_H  =>
                sfr_datao <= r.REG_UART_BRDIV_H ;
            when  EEPROM_ADDR =>
                sfr_datao <= r.REG_EEPROM_ADDR;
            when  EEPROM_DATA =>
                sfr_datao <= r.REG_EEPROM_DATA;
            when  EEPROM_CONTROL  =>
                sfr_datao <= r.REG_EEPROM_CONTROL ;
            when  EEPROM_CLKDIV =>
                sfr_datao <= r.REG_EEPROM_CLKDIV;
            when  HK_ADC_CLKDIV_H  =>
                sfr_datao <= r.REG_HK_ADC_CLKDIV_H ;
            when HK_ADC_CLKDIV_L   =>
                sfr_datao <= r.REG_HK_ADC_CLKDIV_L ;
            when HK_HAM_CMD   =>
                sfr_datao <= r.REG_HK_HAM_CMD ;
            when HK_CLM_PWM   =>
                sfr_datao <= r.REG_HK_CLM_PWM ;
            when HK_EX_HTR_PWM   =>
                sfr_datao <= r.REG_HK_EX_HTR_PWM ;
            when HK_EX_SUPPLY   =>
                sfr_datao <= r.REG_HK_EX_SUPPLY ;
            when HK_ADC_VOLT5   =>
                sfr_datao <= IN_HK_ADC_VOLT5 ;
            when HK_ADC_TH_DCDC   =>
                sfr_datao <= IN_HK_ADC_TH_DCDC ;
            when HK_ADC_TH_CTRL   =>
                sfr_datao <= IN_HK_ADC_TH_CTRL ;
            when HK_ADC_VAL_H    =>
                sfr_datao <= IN_HK_ADC_VAL_H ;
            when HK_ADC_VAL_L   =>
                sfr_datao <= IN_HK_ADC_VAL_L ;
            when HK_ADC_DEPTH_FULL   =>
                sfr_datao <= IN_HK_ADC_DEPTH_FULL ;
            when HK_ADC_DEPTH_MID   =>
                sfr_datao <= IN_HK_ADC_DEPTH_MID ;
            when HK_ADC_TH_HAM   =>
                sfr_datao <= IN_HK_ADC_TH_HAM ;
            when HK_CLM_STATUS   =>
                sfr_datao <= IN_HK_CLM_STATUS ;
            when HK_ADC_CON   =>
                sfr_datao <= r.REG_HK_ADC_CON ;
            when TIMER_CONTROL   =>
                sfr_datao <= r.REG_TIMER_CONTROL ;
            when TIMER_VAL3   =>
                sfr_datao <= IN_TIMER_VAL3 ;
            when TIMER_VAL2   =>
                sfr_datao <= IN_TIMER_VAL2 ;
            when TIMER_VAL1   =>
                sfr_datao <= IN_TIMER_VAL1 ;
            when TIMER_VAL0   =>
                sfr_datao <= IN_TIMER_VAL0 ;
            when CLKRECDIV_H   =>
                sfr_datao <= IN_CLKRECDIV_H ;
            when CLKRECDIV_L   =>
                sfr_datao <= IN_CLKRECDIV_L ;
            when CLKRECMAIN   =>
                sfr_datao <= r.REG_CLKRECMAIN ;
            when CLKTIMEDIV_H   =>
                sfr_datao <= r.REG_CLKTIMEDIV_H ;
            when CLKTIMEDIV_L   =>
                sfr_datao <= r.REG_CLKTIMEDIV_L ;
            when others =>
                sfr_datao <= (others => '0');
        end case;
    end if;
    rin <= v;
end process;


        OUT_UART_DATA       <= r.REG_UART_DATA;
        OUT_UART_BRDIV_H    <= r.REG_UART_BRDIV_H;
        OUT_UART_BRDIV_L    <= r.REG_UART_BRDIV_L;
        OUT_EEPROM_DATA     <= r.REG_EEPROM_DATA;
        OUT_EEPROM_CONTROL  <= r.REG_EEPROM_CONTROL;
        OUT_EEPROM_CLKDIV   <= r.REG_EEPROM_CLKDIV;
        OUT_HK_ADC_CLKDIV_H <= r.REG_HK_ADC_CLKDIV_H;
        OUT_HK_ADC_CLKDIV_L <= r.REG_HK_ADC_CLKDIV_L;
        OUT_HK_HAM_CMD      <= r.REG_HK_HAM_CMD;
        OUT_HK_CLM_PWM      <= r.REG_HK_CLM_PWM;
        OUT_HK_EX_HTR_PWM   <= r.REG_HK_EX_HTR_PWM;
        OUT_HK_EX_SUPPLY    <= r.REG_HK_EX_SUPPLY;
        OUT_HK_ADC_CON      <= r.REG_HK_ADC_CON;
        OUT_TIMER_CONTROL   <= r.REG_TIMER_CONTROL;
        OUT_CLKRECMAIN      <= r.REG_CLKRECMAIN;
        OUT_CLKTIMEDIV_H    <= r.REG_CLKTIMEDIV_H;
        OUT_CLKTIMEDIV_L    <= r.REG_CLKTIMEDIV_L;
        tx_stb <= r.tx_stb;


end rtl ;

