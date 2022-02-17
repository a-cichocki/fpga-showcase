--------------------------------------------------------------------------------
-- Project           :  STIX/IDPU/EM
-- Drawing           :  
-- File title        :  
-- Design unit name  :  ScanCtrl
-- Authors           :  A. Cichocki
-- Company           :  Centrum Badañ Kosmicznych
-- Current revision  :  1 (2015-03-26)
--------------------------------------------------------------------------------
-- Description       : 
--------------------------------------------------------------------------------


library Cbk;
    use Cbk.Stix_pkg.all;

library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

library techmap;
    use techmap.gencomp.all;
    
entity ScanCtrl is 
    generic (
        Technology                                             : integer := apa3e 
    );
    port (
        oAdcVal                                                : out std_logic_vector(11 downto 0);
        oAdcReady                                              : out std_logic;
        iAsAdcVal                                              : in std_logic_vector(11 downto 0);
        iAsAdcReady                                            : in std_logic_vector(1 downto 0);
        oAsAdcAddress                                          : out std_logic_vector(3 downto 0);
        oAsAdcGo                                               : out std_logic;
        iAdcAddr                                               : in std_logic_vector(6 downto 0);
        iHkAdcVal                                              : in std_logic_vector(11 downto 0);
        oHkAdcGo                                               : out std_logic;
        oHkAdcAddress                                          : out std_logic_vector(5 downto 0);
        iHkAdcReady                                            : in std_logic;
        iClk : std_logic; 
        iRst_n : std_logic
    );

end entity;

architecture Structure of ScanCtrl is
    signal vcc : std_logic_vector(0 downto 0);
    signal ren : std_logic;
    
    type State_t is (Address_s, Wait_s, Inc_s);
    
    type Context_t is record
        state   : State_t;
        wen     : std_logic;
        Addr    : unsigned(6 downto 0);
        Data    : std_logic_vector(11 downto 0);
        Ready   : std_logic;
    end record;
    
    signal r : Context_t;
    signal rIn : Context_t;
begin
    
    vcc <= (others =>'1');
      
      
    P_CMB: process (r, iHkAdcReady, iAsAdcReady, iHkAdcVal, iAsAdcVal)
        variable v : Context_t;
    begin    
        v := r;
        v.wen := '0';
        oHkAdcAddress <= std_logic_vector(r.Addr(5 downto 0));
        oAsAdcAddress <= std_logic_vector(r.Addr(3 downto 0));
        oHkAdcGo <= '0';
        oAsAdcGo <= '0';
        case (r.state) is
            when Address_s =>
                if r.Addr = "1111111" then
                    v.ready := '1';
                end if;
                if r.Addr(6) = '0' then -- HK
                    oHkAdcGo <= '1';
                else                    -- AS                    
                    oAsAdcGo <= '1';
                end if;
                v.state := Wait_s;
            when Wait_s =>
                if r.Addr(6) = '0' then -- HK
                    if (iHkAdcReady = '1') then
                        v.state := Inc_s;                                
                        v.data := iHkAdcVal;
                        v.wen := '1';
                    end if;
                else                    -- AS
                    if (r.Addr(3) = '0') then           -- AS A
                        if (iAsAdcReady(0) = '1') then
                            v.state := Inc_s;                                
                            v.data := iAsAdcVal;
                            v.wen := '1';
                        end if;
                    else                                -- AS B
                        if (iAsAdcReady(1) = '1') then
                            v.state := Inc_s;                                
                            v.data := iAsAdcVal;
                            v.wen := '1';
                        end if;
                    end if;    
                end if;
            when others =>
                v.Addr  := r.Addr + 1;
                v.state := Address_s;
        end case;
        rIn <= v;
    end process;     
    P_SEQ: process (iClk, iRst_n)
    begin
        if (iRSt_n = '0') then
            r.state <= Address_s;
            r.Ready <= '0';
            r.Data <= (others => '0');
            r.Addr <= (others => '0');
            r.wen   <= '0';
        elsif (rising_edge(iClk)) then
            r <= rIn;
        end if;
    end process;
      
    C_RAM: syncram_2pft
    generic map (
        tech    => Technology,
        abits   => 7,
        dbits   => 12,
        sepclk  => 0,
        wrfst   => 0,
        ft      => 1,
        testen  => 0,
        words   => 0
    )
    port map (
        rclk        => iClk,
        renable     => ren,
        raddress    => iAdcAddr,
        dataout     => oAdcVal,
        wclk        => iClk,
        write       => r.wen,
        waddress    => std_logic_vector(r.Addr),
        datain      => r.Data,
        error       => open,
        testin      => open
    );    

    ren <= not r.wen;
    
    oAdcReady <= r.ready;
end architecture;
