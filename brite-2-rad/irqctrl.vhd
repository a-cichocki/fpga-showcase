library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IRQctrl is
    port (
        clk     : in std_logic;
        irq_in  : in std_logic;
        rst     : in std_logic;
        irq_out : out std_logic;
        pulses  : out std_logic_vector(7 downto 0);
        irq_ack : in    std_logic
    );
end entity;

architecture prim of IRQctrl is
    type TState is (stIdle,stCounting1, stCounting0, stIrq);
    type TContext is record
        state           :   TState;
        timecount       :   natural range 0 to 127;
        pulsecount     :   natural range 0 to 255;
    end record;
    signal r, rin : TContext;

begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
            r.state <= stIdle;
            r.timecount <= 127;
            r.pulsecount <= 0;
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;

    CMB: process (r, irq_in, irq_ack)
        variable v      : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle=>
                if( irq_in = '1') then
                    v.state := stCounting1;
                    v.pulsecount :=  1;
                end if;
                v.timecount := 127;
                irq_out <= '0';
            when stCounting1 =>
                if (r.timecount = 0) then
                   v.timecount := 10;
                   v.state := stIrq;
                else
                    v.timecount := r.timecount - 1;
                end if;
                if (irq_in = '0') then
                    v.state := stCounting0;
                    v.timecount := 127;
                end if;
                irq_out <= '0';
            when stCounting0 =>
                if (r.timecount = 0) then
                    v.timecount := 10;
                    v.state := stIrq;
                else
                    v.timecount := r.timecount - 1;
                end if;
                if (irq_in = '1') then
                    v.state := stCounting1;
                    v.pulsecount := r.pulsecount + 1;
                    v.timecount := 127;
                end if;
                irq_out <= '0';
            when stIrq =>
                irq_out <= '1';
                if (irq_ack = '1') then
                    v.state := stIdle;
                end if;
            when others =>
                v.state := stIdle;
        end case;
        rin <= v;
    end process CMB;
    pulses <= std_logic_vector(to_unsigned(r.pulsecount,pulses'length));


end architecture;
