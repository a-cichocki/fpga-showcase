library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockRecovery is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        rxd     : in std_logic;
        en      : in std_logic;
        count   : out std_logic_vector(15 downto 0);
        irq     : out std_logic
    );
end entity;

architecture prim of ClockRecovery is
    type TState is (stIdle, stWaitZero, stWaitChanging00, stWaitChanging01 , stWaitChanging10, stTickCount0, stTickCount1, stRdy);
    type TContext is record
        state       :   TState;
        tickcount   :   natural range 0 to 65535;
        delaycount  :   natural range 0 to 65535;
    end record;
    signal r, rin   :   TContext;
begin
    SEQ: process(clk, rst)
    begin
        if (rst = '1') then
            r.state <= stIdle;
            r.tickcount <= 0;
            r.delaycount <= 0;
        elsif (clk'event and clk = '1') then
            r <= rin;
        end if;
    end process SEQ;

    CMB: process (r, en, rxd)
        variable v      : TContext;
    begin
        v := r;
        case (r.state) is
            when stIdle =>
                if (en = '1') then
                    if (rxd = '0') then
                        v.state := stWaitZero;
                        v.tickcount := 0;
                    end if;
                end if;
                irq <= '0';
                v.delaycount := 0;
            when stWaitZero =>
                if (rxd ='1') then -- 5 bits at 9600 /12Mhz
                    if (r.delaycount >= 5000) then
                        v.state := stWaitChanging00;
                        v.tickcount := 0;
                        v.delaycount := 0;
                    else
                        v.state := stIdle;
                    end if;
                else
                    v.delaycount := r.delaycount + 1;
                    if (r.delaycount > 20000 ) then
                        v.state := stIdle;
                    end if;
                end if;
                irq <= '0';
            when stWaitChanging00 =>
                if (r.delaycount >= 30000) then
                    v.state := stIdle;
                elsif (rxd = '1') then
                    v.state:= stWaitChanging01;
                    v.tickcount := 0;
                    v.delaycount := 0;
                else
                    v.delaycount := r.delaycount + 1;
                end if;
                irq <= '0';
            when stWaitChanging01 =>
                if (r.delaycount >= 30000) then
                    v.state := stIdle;
                elsif (rxd = '0') then
                    v.state:= stWaitChanging10;
                    v.tickcount := 0;
                    v.delaycount := 0;
                else
                    v.delaycount := r.delaycount + 1;
                end if;
                irq <= '0';
            when stWaitChanging10 =>
                if (r.delaycount >= 30000) then
                    v.state := stIdle;
                elsif (rxd = '1') then
                    v.state:= stTickCount1;
                    v.tickcount := 1;
                    v.delaycount := 0;
                else
                    v.delaycount := r.delaycount + 1;
                end if;
                irq <= '0';
            when stTickCount1 =>
                if (rxd = '1') then
                    v.tickcount := r.tickcount + 1;
                    if (r.delaycount >= 30000) then
                        v.state := stIdle;
                    else
                        v.delaycount := r.delaycount + 1;
                    end if;
                else
                    v.state := stTickCount0;
                    v.delaycount := 0;
                end if;
                irq <= '0';
            when stTickCount0 =>
                if (rxd = '0') then
                    v.delaycount := r.delaycount + 1;
                    if ( r.delaycount > 30000 ) then
                        v.state := stIdle;
                    end if;
                else
                    if ((r.tickcount >= r.delaycount - 200) and (r.tickcount <= r.delaycount + 200)) then
                        v.state := stRdy;
                        v.delaycount := 0;
                    else
                        v.state := stIdle;
                    end if;
                end if;
                irq <= '0';
            when stRdy =>
                if (r.delaycount >= 50) then
                    v.state := stIdle;
                else
                    v.delaycount := r.delaycount + 1;
                end if;
                irq <= '1';
            when others =>
                v.state := stIdle;
                irq <= '0';
        end case;
        rin <= v;
    end process CMB;


    count <= std_logic_vector(to_unsigned(r.tickcount,16));

end architecture;
