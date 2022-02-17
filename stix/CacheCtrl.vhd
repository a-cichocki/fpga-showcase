--------------------------------------------------------------------------------
-- File title        :  CacheCtrl.vhd 
-- Design unit name  :  CacheCtrl 
-- Authors           :  A.Cichocki, K.Ber
-- Company           :  Space Research Centre of Polish Academy of Sciences
-- Current version   :  0
-- Revision          : 
--                      version 1   :  : (30/10/2014) 
--                         Initial draft version    
-- 
-- (c) Copyright     :  Space Research Centre of Polish Academy of Sciences 
--                      all rights reserved.
--
--------------------------------------------------------------------------------
-- Description       :  Cache memories arbiter
--------------------------------------------------------------------------------
-- Dependencies      : 
--------------------------------------------------------------------------------
-- Todo              :  
--------------------------------------------------------------------------------
-- Constraints       :  
-------------------------------------------------------------------------------- 
-- Simulator         :  
-- Synthesizer       :  
-- P&R               :  
--------------------------------------------------------------------------------
--
-- VHDL Convention :
--
-- iSIGNAL = input port signal
-- oSIGNAL = output port signal
-- bSIGNAL = bidir port signal
-- signal_n = active low signal
-- signal_ff = signal clocked once
-- signal_ffx = signal clocked x times
-- signal_re = signal rising edge
-- signal_fe = signal falling edge
-- signal_sr = shift register
-- signal_sm = State machine
-- R_NAME = stand for range constant
-- B_NAME = stand for bit position number constant
-- C_NAME = stand for constant value
--------------------------------------------------------------------------------


library Cbk;
    use Cbk.Stix_pkg.all; 

library grlib;
    use grlib.amba.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    
library techmap;
    use techmap.gencomp.all;

entity CacheCtrl is 
    generic (
        Technology                                   : integer := axcel;
        USE_EDAC                                     : integer := 1;
        USE_SCRUB                                    : integer := 1 
    );
    port (
        iClkm                                        : in  std_logic;
        iClkf                                        : in  std_logic;
        iRstM_n                                      : in  std_logic;
        iRstF_n                                      : in  std_logic;        
        iTick15u2                                    : in  std_logic;
        iTick800ns                                   : in  std_logic;
        iApb                                         : in  ApbCacheOut_t;
        oApb                                         : out ApbCacheIn_t;
        iAhb                                         : in  AhbCacheOut_t;
        oAhb                                         : out AhbCacheIn_t;
        oDet                                         : out CacheDetOut_t;
        iDet                                         : in  CacheDetIn_t;
        iRotb                                        : in  CacheRotbIn_t;
        oRotb                                        : out CacheRotbOut_t;
        oCACHEa                                      : out std_logic_vector(17 downto 0);
        oCACHEdqBdrive                               : out std_logic;
        oCACHEdq                                     : out std_logic_vector(31 downto 0);
        iCACHEcb                                     : in  std_logic_vector(6 downto 0);
        oCACHEwe_n                                   : out std_logic_vector(3 downto 0);
        oCACHEoe_n                                   : out std_logic_vector(3 downto 0);
        oCACHEce_n                                   : out std_logic_vector(3 downto 0);
        iCACHEdq                                     : in  std_logic_vector(31 downto 0);
        oCACHEcb                                     : out std_logic_vector(6 downto 0);
        oCACHEcbBdrive                               : out std_logic
    );

end entity;

architecture Arch of CacheCtrl is

    type Mem_e is (mNone, mSram, mBram1, mBram4, mBramTrig);
    type If_e  is  (ifNone, ifDetSram, ifDetBram1, ifDetBram4, ifDetBramTrig, ifRotb, ifAhb, ifScrub);

    type BramState is(stIdle, stReady0, stAccess);
    type Bram1_t is record
        State       : BramState;
        Priority    : unsigned(1 downto 0);               
        Ce          : std_logic;
        Wr          : std_logic;
        Addr        : std_logic_vector(7 downto 0);
        Din         : std_logic_vector(15 downto 0);
        Dout        : std_logic_vector(15 downto 0);
        DetReady    : std_logic;
        RotBReady   : std_logic;
        AhbReady    : std_logic;
        RotbClear   : std_logic;
    end record;
    
    type Bram4_t is record
        State       : BramState;
        Priority    : unsigned(1 downto 0);
        Ce          : std_logic;
        Wr          : std_logic;
        Addr        : std_logic_vector(5 downto 0);
        Din         : std_logic_vector(23 downto 0);
        Dout        : std_logic_vector(23 downto 0);
        DetReady    : std_logic;
        RotBReady   : std_logic;
        AhbReady    : std_logic;
        RotbClear   : std_logic;
    end record;
    
    type BramT_t is record
        State       : BramState;
        Priority    : unsigned(1 downto 0); 
        Ce          : std_logic;
        Wr          : std_logic;
        Addr        : std_logic_vector(4 downto 0);
        Din         : std_logic_vector(23 downto 0);
        Dout        : std_logic_vector(23 downto 0);
        DetReady    : std_logic;
        RotBReady   : std_logic;
        AhbReady    : std_logic;
        RotbClear   : std_logic;
    end record;
    
    type SramState is(stIdle, stReady0, stAccess);
    type Sram_t is record
        State           : SramState;
        Priority        : unsigned(1 downto 0);
        Rd              : std_logic;
        Wr              : std_logic;         
        Addr            : std_logic_vector(18 downto 0);
        Din             : std_logic_vector(31 downto 0);
        Dout            : std_logic_vector(31 downto 0);
        DetReady        : std_logic;
        RotBReady       : std_logic;
        AhbReady        : std_logic;
        ScrubReady      : std_logic;
        Scrub           : std_logic;
        RotbClear       : std_logic;
        Ded             : std_logic;
        Sec             : std_logic;
        Check           : std_logic;
    end record;
    
    type Sync_f is record
        AhbDout         : std_logic_vector(31 downto 0);
        AhbLatch        : std_logic;
        AhbRd           : std_logic;
        AhbWr           : std_logic;
        AhbReady        : std_logic;
        AhbDed          : std_logic;
        RotBDout        : std_logic_vector(31 downto 0);
        RotBLatch       : std_logic;
        RotbRd          : std_logic;
        RotbReady       : std_logic;
        AhbRd_r         : std_logic;
        AhbRd_rr        : std_logic;
        AhbWr_r         : std_logic;
        AhbWr_rr        : std_logic;
        RotbRd_r        : std_logic;
        RotbRd_rr       : std_logic;
        SecCount        : std_logic_vector(7 downto 0);
        --Ded_f           : std_logic;
        --Ded_ff          : std_logic;
        Ded             : std_logic;
        --Sec_f           : std_logic;
        --Sec_ff          : std_logic;
        
        ScrubRate_f     : std_logic_vector(1 downto 0);
        ScrubRate_ff    : std_logic_vector(1 downto 0);
        EdacOn_f        : std_logic;
        EdacOn_ff       : std_logic;
        Strobe_f        : std_logic;
        Strobe_ff       : std_logic;
        Tick800ns_f     : std_logic;
        Tick800ns_ff    : std_logic;
        Tick15u2_f      : std_logic;
        Tick15u2_ff     : std_logic;
    end record;
    
    type Sync_m is record
        AhbDout         : std_logic_vector(31 downto 0);
        AhbReady_f      : std_logic;
        AhbReady_ff     : std_logic;
        AhbDed_f        : std_logic;
        AhbDed_ff       : std_logic;
        RotBDout        : std_logic_vector(31 downto 0);
        RotbReady_f     : std_logic;
        RotbReady_ff    : std_logic;
        ApbDed_f        : std_logic;
        ApbDed_ff       : std_logic;
    end record;
    
    signal rSram, rSramIn   : Sram_t;
    signal rBram1, rBram1In : Bram1_t;
    signal rBram4, rBram4In : Bram4_t;
    signal rBramT, rBramTIn : BramT_t;
    signal rSync, rSyncIn   : Sync_f;
    signal rSyncM, rSyncMIn : Sync_m;
    
    signal bram1Error   : std_logic_vector(1 downto 0);
    signal bram4Error   : std_logic_vector(2 downto 0);
    signal bramTError   : std_logic_vector(2 downto 0);
    
    signal sramBdrive   : std_logic;
    signal sramDed      : std_logic;
    signal sramSec      : std_logic;
    signal sramWe_n     : std_logic;
    signal sramOe_n     : std_logic;
    signal sramReady    : std_logic;
    signal sramDout     : std_logic_vector(31 downto 0);
    signal bram1Dout    : std_logic_vector(15 downto 0); 
    signal bram4Dout    : std_logic_vector(23 downto 0);
    signal bramTDout    : std_logic_vector(23 downto 0);
    
    signal scrubRd      : std_logic;
    signal scrubAddr    : std_logic_vector(18 downto 0);
    
    signal rotbReady    : std_logic;
    signal ahbReady     : std_logic;
    
begin
  
--- SRAM CONTROL ---------------------------
    P_SRAM_SEQ: process(iRstF_n, iClkf)
    begin
        if (iRstF_N = '0') then
			rSram.state     <= stIdle;
            rSram.Priority  <= (others => '0');
            rSram.Rd        <= '0';  
            rSram.Wr        <= '0';  
            rSram.Addr      <= (others => '0');  
            rSram.Din       <= (others => '0');
            rSram.Dout      <= (others => '0');
            rSram.DetReady  <= '1';
            rSram.RotBReady <= '1';
            rSram.AhbReady  <= '1';
            rSram.ScrubReady<= '1';
            rSram.RotbClear <= '0';
            rSram.Scrub     <= '0';
            rSram.Ded       <= '0';
            rSram.Sec       <= '0';
            rSram.Check     <= '0';
        elsif (iClkf'event and iClkf = '1') then
            rSram           <= rSramIn;
        end if;
    end process;


    P_SRAM_COM: process(rSram, rSync, iDet, ScrubRd, ScrubAddr, sramReady, sramDed, sramSec, sramDout)
        variable vSram          : Sram_t;
    begin
        vSram := rSram;
        
        case (rSram.State) is
            when stIdle =>
                vSram.Sec       := '0';
                vSram.Ded       := '0';
                vSram.Scrub     := '0';
                vSram.Check     := '0';
                case (rSram.Priority) is
                    when "00" =>
                        if((iDet.SramRd = '1') or (iDet.SramWr = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := iDet.SramRd;
                            vSram.Check     := iDet.SramRd;
                            vSram.Wr        := iDet.SramWr;
                            vSram.Addr      := iDet.SramAddr;
                            vSram.Din       := iDet.SramDin;
                            vSram.DetReady  := '0';
                        elsif( (rSync.RotbRd = '1') and (iRotb.Address(20 downto 19) = "00") ) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.RotbRd;
                            vSram.Check     := rSync.RotbRd;
                            vSram.Wr        := '0';
                            vSram.Addr      := iRotb.Address(18 downto 0);
                            vSram.RotbReady := '0';
                            vSram.RotbClear := '1';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "00")) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.AhbRd;
                            vSram.Check     := rSync.AhbRd;
                            vSram.Wr        := rSync.AhbWr;
                            vSram.Addr      := iAhb.Address(18 downto 0);
                            vSram.Din       := iAhb.Data;
                            vSram.AhbReady  := '0';
                        elsif((ScrubRd = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := ScrubRd;
                            vSram.Check     := ScrubRd;
                            vSram.Addr      := ScrubAddr;
                            vSram.ScrubReady:= '0';
                            vSram.Scrub     := '1';
                        end if;
                    when "01" =>
                        if((ScrubRd = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := ScrubRd;
                            vSram.Check     := ScrubRd;
                            vSram.Addr      := ScrubAddr;
                            vSram.ScrubReady:= '0';
                            vSram.Scrub     := '1';
                        elsif((iDet.SramRd = '1') or (iDet.SramWr = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := iDet.SramRd;
                            vSram.Check     := iDet.SramRd;
                            vSram.Wr        := iDet.SramWr;
                            vSram.Addr      := iDet.SramAddr;
                            vSram.Din       := iDet.SramDin;
                            vSram.DetReady  := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "00") ) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.RotbRd;
                            vSram.Check     := rSync.RotbRd;
                            vSram.Wr        := '0';
                            vSram.Addr      := iRotb.Address(18 downto 0);
                            vSram.RotbReady := '0';
                            vSram.RotbClear := '1';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "00")) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.AhbRd;
                            vSram.Check     := rSync.AhbRd;
                            vSram.Wr        := rSync.AhbWr;
                            vSram.Addr      := iAhb.Address(18 downto 0);
                            vSram.Din       := iAhb.Data;
                            vSram.AhbReady  := '0';
                        end if;
                    when "10" =>
                        if(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "00")) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.AhbRd;
                            vSram.Check     := rSync.AhbRd;
                            vSram.Wr        := rSync.AhbWr;
                            vSram.Addr      := iAhb.Address(18 downto 0);
                            vSram.Din       := iAhb.Data;
                            vSram.AhbReady  := '0';
                        elsif((iDet.SramRd = '1') or (iDet.SramWr = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := iDet.SramRd;
                            vSram.Check     := iDet.SramRd;
                            vSram.Wr        := iDet.SramWr;
                            vSram.Addr      := iDet.SramAddr;
                            vSram.Din       := iDet.SramDin;
                            vSram.DetReady  := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "00") ) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.RotbRd;
                            vSram.Check     := rSync.RotbRd;
                            vSram.Wr        := '0';
                            vSram.Addr      := iRotb.Address(18 downto 0);
                            vSram.RotbReady := '0';
                            vSram.RotbClear := '1';
                        elsif((ScrubRd = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := ScrubRd;
                            vSram.Check     := ScrubRd;
                            vSram.Addr      := ScrubAddr;
                            vSram.ScrubReady:= '0';
                            vSram.Scrub     := '1';
                        end if;
                    when others =>
                        if( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "00") ) then
                            vSram.State     := stReady0;
                            vSram.Check     := rSync.RotbRd;
                            vSram.Wr        := '0';
                            vSram.Addr      := iRotb.Address(18 downto 0);
                            vSram.RotbReady := '0';
                            vSram.RotbClear := '1';
                        elsif((iDet.SramRd = '1') or (iDet.SramWr = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := iDet.SramRd;
                            vSram.Check     := iDet.SramRd;
                            vSram.Wr        := iDet.SramWr;
                            vSram.Addr      := iDet.SramAddr(18 downto 0);
                            vSram.Din       := iDet.SramDin;
                            vSram.DetReady  := '0';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "00")) then
                            vSram.State     := stReady0;
                            vSram.Rd        := rSync.AhbRd;
                            vSram.Check     := rSync.AhbRd;
                            vSram.Wr        := rSync.AhbWr;
                            vSram.Addr      := iAhb.Address(18 downto 0);
                            vSram.Din       := iAhb.Data;
                            vSram.AhbReady  := '0';
                        elsif((ScrubRd = '1')) then
                            vSram.State     := stReady0;
                            vSram.Rd        := ScrubRd;
                            vSram.Check     := ScrubRd;
                            vSram.Addr      := ScrubAddr;
                            vSram.ScrubReady:= '0';
                            vSram.Scrub     := '1';
                        end if;
                end case;

            when stReady0 =>
                vSram.State     := stAccess;
                vSram.Wr        := '0';     
                vSram.Rd        := '0';
            
            when stAccess =>
                if(sramReady = '1') then
                    if(rSram.RotbClear = '1') then
                        vSram.State     := stReady0;
                        vSram.Wr        := '1';
                        vSram.Din       := (others => '0');
                        vSram.RotbClear := '0';
                    elsif(rSram.Scrub = '1' and sramSec = '1' and sramDed = '0') then
                        vSram.State     := stReady0;
                        vSram.Wr        := '1';
                        vSram.Din       := sramDout;
                        vSram.Scrub     := '0';
                    else
                        vSram.State     := stIdle;    
                        vSram.RotbReady := '1';
                        vSram.AhbReady  := '1';
                        vSram.DetReady  := '1';
                        vSram.ScrubReady:= '1';
                        vSram.Priority  := rSram.Priority + 1;
                        vSram.Dout      := sramDout;
                        vSram.Ded       := sramDed and rSram.Check;
                        vSram.Sec       := sramSec and rSram.Check;
                    end if;
                end if;
            
            when others =>
                vSram.State     := stIdle;
                vSram.Wr        := '0';     
                vSram.Rd        := '0';
                vSram.RotbReady := '1';
                vSram.AhbReady  := '1';
                vSram.DetReady  := '1';
                vSram.ScrubReady:= '1';
        end case;
        
        rSramIn <= vSram;

    end process;
-------------------------------------------------------------------------------  
    
--- BRAM1 CONTROL ---------------------------
    P_BRAM1_SEQ: process(iRstF_n, iClkf)
    begin
        if (iRstF_N = '0') then
			rBram1.state     <= stIdle;
            rBram1.Priority  <= (others => '0');
            rBram1.Ce        <= '0';  
            rBram1.Wr        <= '0';  
            rBram1.Addr      <= (others => '0');  
            rBram1.Din       <= (others => '0');
            rBram1.Dout      <= (others => '0');
            rBram1.DetReady  <= '1';
            rBram1.RotBReady <= '1';
            rBram1.AhbReady  <= '1';
            rBram1.RotbClear <= '0';
        elsif (iClkf'event and iClkf = '1') then
            rBram1           <= rBram1In;
        end if;
    end process;


    P_BRAM1_COM: process(rBram1, rSync, iDet, iAhb, iRotb, Bram1Dout)
        variable vBram1          : Bram1_t;
    begin
        vBram1 := rBram1;
        
        case (rBram1.State) is
            when stIdle =>
                
                case (rBram1.Priority) is
                    when "00" =>
                        if((iDet.Bram1Rd = '1') or (iDet.Bram1Wr = '1')) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := iDet.Bram1Wr;
                            vBram1.Addr         := iDet.Bram1Addr;
                            vBram1.Din          := iDet.Bram1Din;
                            vBram1.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "01") ) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := '0';
                            vBram1.Addr         := iRotb.Address(7 downto 0);
                            vBram1.RotBReady    := '0';
                            vBram1.RotbClear    := '1';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "01")) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := rSync.AhbWr;
                            vBram1.Addr         := iAhb.Address(7 downto 0);
                            vBram1.Din          := iAhb.Data(15 downto 0);
                            vBram1.AhbReady     := '0';
                        end if;
                    when "01" =>
                        if( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "01") ) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := '0';
                            vBram1.Addr         := iRotb.Address(7 downto 0);
                            vBram1.RotBReady    := '0';
                            vBram1.RotbClear    := '1';
                        elsif((iDet.Bram1Rd = '1') or (iDet.Bram1Wr = '1')) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := iDet.Bram1Wr;
                            vBram1.Addr         := iDet.Bram1Addr;
                            vBram1.Din          := iDet.Bram1Din;
                            vBram1.DetReady     := '0';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "01")) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := rSync.AhbWr;
                            vBram1.Addr         := iAhb.Address(7 downto 0);
                            vBram1.Din          := iAhb.Data(15 downto 0);
                            vBram1.AhbReady     := '0';
                        end if;
                    when others =>
                        if(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "01")) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := rSync.AhbWr;
                            vBram1.Addr         := iAhb.Address(7 downto 0);
                            vBram1.Din          := iAhb.Data(15 downto 0);
                            vBram1.AhbReady     := '0';
                        elsif((iDet.Bram1Rd = '1') or (iDet.Bram1Wr = '1')) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := iDet.Bram1Wr;
                            vBram1.Addr         := iDet.Bram1Addr;
                            vBram1.Din          := iDet.Bram1Din;
                            vBram1.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "01") ) then
                            vBram1.State        := stReady0;
                            vBram1.Ce           := '1';
                            vBram1.Wr           := '0';
                            vBram1.Addr         := iRotb.Address(7 downto 0);
                            vBram1.RotBReady    := '0';
                            vBram1.RotbClear    := '1';
                        end if;
                    end case;
                    
            when stReady0 =>
                vBram1.State    := stAccess;
                vBram1.Wr       := '0';     
                vBram1.Ce       := '0';

            when stAccess =>
                if(rBram1.RotbClear = '0') then
                    vBram1.State    := stIdle;
                    vBram1.RotbReady:= '1';
                    vBram1.AhbReady := '1';
                    vBram1.DetReady := '1';
                    vBram1.Priority := rSram.Priority + 1;
                    if(rBram1.RotbReady = '1') then
                        vBram1.Dout     := Bram1Dout;
                    end if;
                else
                    vBram1.State    := stReady0;
                    vBram1.Wr       := '1';
                    vBram1.Din      := (others => '0');
                    vBram1.RotbClear:= '0';
                    vBram1.Dout     := Bram1Dout;
                end if;
                
            when others =>
                vBram1.State := stIdle;
        end case;
        
        rBram1In <= vBram1;

    end process;
-------------------------------------------------------------------------------  

--- BRAM4 CONTROL ---------------------------
    P_BRAM4_SEQ: process(iRstF_n, iClkf)
    begin
        if (iRstF_N = '0') then
			rBram4.state     <= stIdle;
            rBram4.Priority  <= (others => '0');
            rBram4.Ce        <= '0';  
            rBram4.Wr        <= '0';  
            rBram4.Addr      <= (others => '0');  
            rBram4.Din       <= (others => '0');
            rBram4.Dout      <= (others => '0');
            rBram4.DetReady  <= '1';
            rBram4.RotBReady <= '1';
            rBram4.AhbReady  <= '1';
            rBram4.RotbClear <= '0';
        elsif (iClkf'event and iClkf = '1') then
            rBram4           <= rBram4In;
        end if;
    end process;


    P_BRAM4_COM: process(rBram4, rSync, iDet, iAhb, iRotb, Bram4Dout)
        variable vBram4          : Bram4_t;
    begin
        vBram4 := rBram4;
        
        case (rBram4.State) is
            when stIdle =>
                
                case (rBram4.Priority) is
                    when "00" =>
                        if((iDet.Bram4Rd = '1') or (iDet.Bram4Wr = '1')) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := iDet.Bram4Wr;
                            vBram4.Addr         := iDet.Bram4Addr;
                            vBram4.Din          := iDet.Bram4Din;
                            vBram4.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "10") ) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := '0';
                            vBram4.Addr         := iRotb.Address(5 downto 0);
                            vBram4.RotBReady    := '0';
                            vBram4.RotbClear    := '1';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "10")) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := rSync.AhbWr;
                            vBram4.Addr         := iAhb.Address(5 downto 0);
                            vBram4.Din          := iAhb.Data(23 downto 0);
                            vBram4.AhbReady     := '0';
                        end if;
                    when "01" =>
                        if( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "10") ) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := '0';
                            vBram4.Addr         := iRotb.Address(5 downto 0);
                            vBram4.RotBReady    := '0';
                            vBram4.RotbClear    := '1';
                        elsif((iDet.Bram4Rd = '1') or (iDet.Bram4Wr = '1')) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := iDet.Bram4Wr;
                            vBram4.Addr         := iDet.Bram4Addr;
                            vBram4.Din          := iDet.Bram4Din;
                            vBram4.DetReady     := '0';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "10")) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := rSync.AhbWr;
                            vBram4.Addr         := iAhb.Address(5 downto 0);
                            vBram4.Din          := iAhb.Data(23 downto 0);
                            vBram4.AhbReady     := '0';
                        end if;
                    when others =>
                        if(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "10")) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := rSync.AhbWr;
                            vBram4.Addr         := iAhb.Address(5 downto 0);
                            vBram4.Din          := iAhb.Data(23 downto 0);
                            vBram4.AhbReady     := '0';
                        elsif((iDet.Bram4Rd = '1') or (iDet.Bram4Wr = '1')) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := iDet.Bram4Wr;
                            vBram4.Addr         := iDet.Bram4Addr;
                            vBram4.Din          := iDet.Bram4Din;
                            vBram4.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "10") ) then
                            vBram4.State        := stReady0;
                            vBram4.Ce           := '1';
                            vBram4.Wr           := '0';
                            vBram4.Addr         := iRotb.Address(5 downto 0);
                            vBram4.RotBReady    := '0';
                            vBram4.RotbClear    := '1';
                        end if;
                    end case;
            
            when stReady0 =>
                vBram4.State        := stAccess;
                vBram4.Wr           := '0';     
                vBram4.Ce           := '0';
                
            when stAccess =>
                if(rBram4.RotbClear = '0') then
                    vBram4.State        := stIdle;
                    vBram4.RotbReady    := '1';
                    vBram4.AhbReady     := '1';
                    vBram4.DetReady     := '1';
                    vBram4.Priority     := rBram4.Priority + 1;
                    if(rBram4.RotbReady = '1') then
                        vBram4.Dout         := Bram4Dout;
                    end if;
                else
                    vBram4.State        := stReady0;
                    vBram4.Wr           := '1';
                    vBram4.Din          := (others => '0');
                    vBram4.RotbClear    := '0';
                    vBram4.Dout         := Bram4Dout;
                end if;

            when others =>
                vBram4.State := stIdle;
        end case;
        
        rBram4In <= vBram4;

    end process;
------------------------------------------------------------------------------- 

--- BRAMT CONTROL ---------------------------
    P_BRAMT_SEQ: process(iRstF_n, iClkf)
    begin
        if (iRstF_N = '0') then
			rBramT.state     <= stIdle;
            rBramT.Priority  <= (others => '0');
            rBramT.Ce        <= '0';  
            rBramT.Wr        <= '0';  
            rBramT.Addr      <= (others => '0');  
            rBramT.Din       <= (others => '0');
            rBramT.Dout      <= (others => '0');
            rBramT.DetReady  <= '1';
            rBramT.RotBReady <= '1';
            rBramT.AhbReady  <= '1';
            rBramT.RotbClear <= '0';
        elsif (iClkf'event and iClkf = '1') then
            rBramT           <= rBramTIn;
        end if;
    end process;


    P_BRAMT_COM: process(rBramT, rSync, iDet, iAhb, iRotb, BramTDout)
        variable vBramT          : BramT_t;
    begin
        vBramT := rBramT;
        
        case (rBramT.State) is
            when stIdle =>
                
                case (rBramT.Priority) is
                    when "00" =>
                        if((iDet.BramTrigRd = '1') or (iDet.BramTrigWr = '1')) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := iDet.BramTrigWr;
                            vBramT.Addr         := iDet.BramTrigAddr;
                            vBramT.Din          := iDet.BramTrigDin;
                            vBramT.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "11") ) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := '0';
                            vBramT.Addr         := iRotb.Address(4 downto 0);
                            vBramT.RotBReady    := '0';
                            vBramT.RotbClear    := '1';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "11")) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := rSync.AhbWr;
                            vBramT.Addr         := iAhb.Address(4 downto 0);
                            vBramT.Din          := iAhb.Data(23 downto 0);
                            vBramT.AhbReady     := '0';
                        end if;
                    when "01" =>
                        if( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "11") ) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := '0';
                            vBramT.Addr         := iRotb.Address(4 downto 0);
                            vBramT.RotBReady    := '0';
                            vBramT.RotbClear    := '1';
                        elsif((iDet.BramTrigRd = '1') or (iDet.BramTrigWr = '1')) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := iDet.BramTrigWr;
                            vBramT.Addr         := iDet.BramTrigAddr;
                            vBramT.Din          := iDet.BramTrigDin;
                            vBramT.DetReady     := '0';
                        elsif(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "11")) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := rSync.AhbWr;
                            vBramT.Addr         := iAhb.Address(4 downto 0);
                            vBramT.Din          := iAhb.Data(23 downto 0);
                            vBramT.AhbReady     := '0';
                        end if;
                    when others =>
                        if(((rSync.AhbWr or rSync.AhbRd) = '1') and (iAhb.Address(20 downto 19) = "11")) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := rSync.AhbWr;
                            vBramT.Addr         := iAhb.Address(4 downto 0);
                            vBramT.Din          := iAhb.Data(23 downto 0);
                            vBramT.AhbReady     := '0';
                        elsif((iDet.BramTrigRd = '1') or (iDet.BramTrigWr = '1')) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := iDet.BramTrigWr;
                            vBramT.Addr         := iDet.BramTrigAddr;
                            vBramT.Din          := iDet.BramTrigDin;
                            vBramT.DetReady     := '0';
                        elsif( (rSync.RotbRd  = '1') and (iRotb.Address(20 downto 19) = "11") ) then
                            vBramT.State        := stReady0;
                            vBramT.Ce           := '1';
                            vBramT.Wr           := '0';
                            vBramT.Addr         := iRotb.Address(4 downto 0);
                            vBramT.RotBReady    := '0';
                            vBramT.RotbClear    := '1';
                        end if;
                    end case;

            when stReady0 =>
                vBramT.State    := stAccess;
                vBramT.Wr       := '0';     
                vBramT.Ce       := '0';

            when stAccess =>
                if(rBramT.RotbClear = '0') then
                    vBramT.State        := stIdle;
                    vBramT.RotbReady    := '1';
                    vBramT.AhbReady     := '1';
                    vBramT.DetReady     := '1';
                    vBramT.Priority  := rBramT.Priority + 1;
                    if(rBramT.RotbReady = '1') then
                        vBramT.Dout         := BramTDout;
                    end if;
                else
                    vBramT.State        := stReady0;
                    vBramT.Wr           := '1';
                    vBramT.Din          := (others => '0');
                    vBramT.RotbClear    := '0';
                    vBramT.Dout         := BramTDout;
                end if;
            
            when others =>
                vBramT.State := stIdle;
        end case;
        
        rBramTIn <= vBramT;

    end process;
------------------------------------------------------------------------------- 

--- INTERFACES SYNC ---------------------------
    P_SYNC_SEQ: process(iRstF_n, iClkF)
    begin
        if (iRstF_N = '0') then
            rSync.AhbDout       <= (others => '0');
            rSync.AhbLatch      <= '0';
            rSync.AhbRd         <= '0';
            rSync.AhbWr         <= '0';
            rSync.AhbReady      <= '1';
            rSync.AhbDed        <= '0';
            rSync.RotbDout      <= (others => '0'); 
            rSync.RotbLatch     <= '0';
            rSync.RotbRd        <= '0';
            rSync.RotbReady     <= '1';
            rSync.AhbRd_r       <= '0';
            rSync.AhbRd_rr      <= '0';
            rSync.AhbWr_r       <= '0';
            rSync.AhbWr_rr      <= '0';
            rSync.RotbRd_r      <= '0';
            rSync.RotbRd_rr     <= '0';
            rSync.Ded           <= '0';
            rSync.SecCount      <= (others => '0');
            rSync.ScrubRate_f   <= (others => '0'); 
            rSync.ScrubRate_ff  <= (others => '0'); 
            rSync.EdacOn_f      <= '0';
            rSync.EdacOn_ff     <= '0';
            rSync.Strobe_f      <= '0';
            rSync.Strobe_ff     <= '0';
            rSync.Tick800ns_f   <= '0';
            rSync.Tick800ns_ff  <= '0';
            rSync.Tick15u2_f    <= '0';
            rSync.Tick15u2_ff   <= '0';
        elsif (iClkF'event and iClkF = '1') then
            rSync           <= rSyncIn;
        end if;
    end process;


    P_SYNC_COM: process(iApb, iAhb, iRotb, rSync, rSram, rBram1, rBram4, rBramt, rotbReady, ahbReady, iTick15u2, iTick800ns )
        variable vSync         : Sync_f;
    begin
        vSync := rSync;
        
------ APB and pulses resynchronization
            vSync.ScrubRate_f   := iApb.ScrubRate;
            vSync.ScrubRate_ff  := rSync.ScrubRate_f;
            
            vSync.EdacOn_f      := iApb.EdacOn;
            vSync.EdacOn_ff     := rSync.EdacOn_f;
        
            vSync.Strobe_f      := iApb.Strobe;
            vSync.Strobe_ff     := rSync.Strobe_f;
            
            vSync.Tick800ns_f   := iTick800ns;
            vSync.Tick800ns_ff  := rSync.Tick800ns_f;
        
            vSync.Tick15u2_f    := iTick15u2;
            vSync.Tick15u2_ff   := rSync.Tick15u2_f;
            
------ signal synchronization
            vSync.AhbReady  := ahbReady;
            
            vSync.AhbRd_r   := iAhb.Rd;
            vSync.AhbRd_rr  := rSync.AhbRd_r;
            
            vSync.AhbWr_r   := iAhb.Wr;
            vSync.AhbWr_rr  := rSync.AhbWr_r;
            
            if(rSync.AhbRd_rr = '0'and rSync.AhbRd_r = '1') then
                vSync.AhbRd     := '1';
            end if;
            
            if(rSync.AhbWr_rr = '0'and rSync.AhbWr_r = '1') then
                vSync.AhbWr     := '1';
            end if;
            
            if( ahbReady = '0') then 
                vSync.AhbLatch  := rSync.AhbRd or rSync.AhbLatch;
                vSync.AhbRd     := '0';
                vSync.AhbWr     := '0';
                vSync.AhbDed    := '0';
            else
                if(rSync.AhbLatch = '1') then
                    vSync.AhbLatch  := '0';
                    case (iAhb.Address(20 downto 19)) is
                        when "00" =>
                            vSync.AhbDout   := rSram.Dout;
                            vSync.AhbDed    := rSram.Ded;
                        when "01" =>
                            vSync.AhbDout   := x"0000" & rBram1.Dout;
                            vSync.AhbDed    := '0';
                        when "10" =>
                            vSync.AhbDout   := x"00" & rBram4.Dout;
                            vSync.AhbDed    := '0';
                        when others =>
                            vSync.AhbDout   := x"00" & rBramT.Dout;
                            vSync.AhbDed    := '0';
                    end case;  
                end if;
            end if;
            
            vSync.RotbReady := rotbReady;
            vSync.RotbRd_r  := iRotb.Rd;
            vSync.RotbRd_rr := rSync.RotbRd_r;
            
            if(rSync.RotbRd_rr = '0'and rSync.RotbRd_r = '1') then
                vSync.RotbRd    := '1';
            end if;
            
            if( rotbReady = '0') then 
                vSync.RotbLatch := '1';
                vSync.RotbRd    := '0';
            else
                if(rSync.RotBLatch = '1') then
                    vSync.RotbLatch  := '0';
                    case (iRotb.Address(20 downto 19)) is
                        when "00" =>
                            vSync.RotbDout   := rSram.Dout;
                        when "01" =>
                            vSync.RotbDout   := x"0000" & rBram1.Dout;
                        when "10" =>
                            vSync.RotbDout   := x"00" & rBram4.Dout;
                        when others =>
                            vSync.RotbDout   := x"00" & rBramT.Dout; 
                    end case;  
                end if;
            end if;
-----------------------
            
----- ded and sec to APB
        if(USE_EDAC /= 0) then
            if(rSram.Ded = '1') then
                vSync.Ded       := '1';
            end if;
            
            if(rSram.Sec = '1') then
                vSync.SecCount     := std_logic_vector(unsigned(rSync.SecCount) + 1);
            end if;
            
            if(iApb.EdacReset = '1' and rSync.Strobe_ff = '1') then
                vSync.SecCount     := (others => '0');
                vSync.Ded          := '0';
            end if;
        else
            vSync.Ded          := '0';
            vSync.SecCount     := (others => '0');
        end if;
-----------------------
            
        rSyncIn <= vSync;
    end process;
    

-- INTERFACE SYNCHRONIZATION ------------
    P_SYNCM_SEQ: process (iClkM, iRstM_n)
    begin
        if (iRstM_N = '0') then
            rSyncM.AhbDout      <= (others => '0');
            rSyncM.AhbReady_f   <= '1';
            rSyncM.AhbReady_ff  <= '1';
            rSyncM.AhbDed_f     <= '0';
            rSyncM.AhbDed_ff    <= '0';
            rSyncM.RotbDout     <= (others => '0');
            rSyncM.RotbReady_f  <= '1';
            rSyncM.RotbReady_ff <= '1';
            rSyncM.ApbDed_f     <= '0';
            rSyncM.ApbDed_ff    <= '0';
        elsif (iClkM'event and iClkM = '1') then
            rSyncM          <= rSyncMIn;
        end if;
    end process;
    
    P_SYNCM_COM: process(iApb, rSyncM, rSync )
        variable vSyncM         : Sync_m;
    begin
        vSyncM := rSyncM;
           
-- signal resynchronization
            vSyncM.AhbDed_f     := rSync.AhbDed;
            vSyncM.ApbDed_f     := rSync.Ded;
            vSyncM.AhbReady_f   := rSync.AhbReady and (not(rSync.AhbWr or rSync.AhbRd));
            
            vSyncM.AhbDed_ff    := rSyncM.AhbDed_f;
            vSyncM.ApbDed_ff    := rSyncM.ApbDed_f;
           
-- ahb bus handshaking           
            if ((iAhb.Wr or iAhb.Rd) = '1') then
                vSyncM.AhbReady_ff := '0';
            end if;
            
            if(rSyncM.AhbReady_ff = '0') then
                vSyncM.AhbReady_ff := rSyncM.AhbReady_f;
            end if;
            
            vSyncM.AhbDout      := rSync.AhbDout;          
---------------            

-- rotb bus handshaking            
            if (iRotb.Rd = '1') then
                vSyncM.RotbReady_ff := '0';
            end if;
            
            if(rSyncM.RotbReady_ff = '0') then
                vSyncM.RotbReady_ff := rSyncM.RotbReady_f;
            end if;
            
            vSyncM.RotbReady_f  := rSync.RotBReady and (not rSync.RotbRd);
            vSyncM.RotbDout     := rSync.RotbDout;
-----------------------

        rSyncMIn <= vSyncM;
    end process;
   
    oAhb.Ready      <= rSyncM.AhbReady_ff;
    oAhb.Data       <= rSyncM.AhbDout;
    oAhb.Ded        <= rSyncM.AhbDed_ff and iApb.OpMode;
    oRotb.Ready     <= rSyncM.RotbReady_ff;
    oRotb.Data      <= rSyncM.RotbDout;
    
    oApb.SecCount   <= rSync.SecCount;
    oApb.DeDetected <= rSyncM.ApbDed_ff;
    oApb.Irq        <= rSyncM.ApbDed_ff and (not iApb.OpMode);
------------------------------------------------------------------------------- 
    
    rotbReady   <= rSram.RotbReady  and rBram1.RotbReady    and rBram4.RotbReady    and rBramT.RotbReady;
    ahbReady    <= rSram.AhbReady   and rBram1.AhbReady     and rBram4.AhbReady     and rBramT.AhbReady;
    
    
    oDet.SramReady      <= rSram.DetReady; --sramReady;
    oDet.SramDout       <= rSram.Dout;      --sramDout;
    oDet.Bram1Ready     <= rBram1.DetReady;
    oDet.Bram1Dout      <= rBram1.Dout;
    oDet.Bram4Ready     <= rBram4.DetReady;
    oDet.Bram4Dout      <= rBram4.Dout;
    oDet.BramTrigReady  <= rBramT.DetReady;
    oDet.BramTrigDout   <= rBramT.Dout;
    
    oCacheCbBDrive      <= sramBdrive;
    oCacheDqBDrive      <= sramBdrive;
    oCacheOe_n(0)       <= sramOe_n;
    oCacheOe_n(2)       <= sramOe_n;
    oCacheOe_n(1)       <= sramOe_n;    
    oCacheOe_n(3)       <= sramOe_n;
    oCacheWe_n(0)       <= sramWe_n;
    oCacheWe_n(2)       <= sramWe_n;
    oCacheWe_n(1)       <= sramWe_n;    
    oCacheWe_n(3)       <= sramWe_n;
    
-- SCRUB CTRL ----------------------------
    EDAC_SCRUB_GEN: if USE_EDAC /= 0 generate
        SCRUB_GEN: if  USE_SCRUB /= 0 generate
            I_SCRUB: ScrubCtrl
            generic map(
                ADDR_BIT    => 19
            )
            port map(
                iClk        => iClkF,
                iRst_n      => iRstF_n,
                iTick15u2   => rSync.Tick15u2_ff,
                iTick800ns  => rSync.Tick800ns_ff,
                iScrubRate  => rSync.ScrubRate_ff,
                iReady      => rSram.ScrubReady,
                oRd         => scrubRd,
                oAddr       => scrubAddr
            );
        end generate;
        
        NOSCRUB_GEN: if USE_SCRUB = 0 generate
            scrubRd     <= '0';
            scrubAddr   <= (others => '0');
        end generate;
        
    end generate;
    
    NOEDAC_SCRUB_GEN: if USE_EDAC = 0 generate
        scrubRd     <= '0';
        scrubAddr   <= (others => '0');
    end generate;
-------------------------------------
 
-- SRAM CTRL ---------------------------------
    I_SRAM: SramCtrl
    generic map (
        USE_EDAC    => USE_EDAC
    )
    port map (
        iClk        => iClkF,
        iRst_n      => iRstF_n,
        iEdacOn     => rSync.EdacOn_ff,
        iWr         => rSram.Wr,
        iRd         => rSram.Rd,
        iAddr       => rSram.Addr,
        iData       => rSram.Din,
        oData       => sramDout,
        oReady      => sramReady,
        oSec        => sramSec,
        oDed        => sramDed,
        oSramCe_n   => oCacheCe_n,
        oSramWe_n   => sramWe_n,
        oSramOe_n   => sramOe_n,
        oSramBdrive => sramBdrive,
        oSramAddr   => oCacheA,
        iSramDin    => iCACHEDq,
        iSramCbin   => iCacheCb,
        oSramDout   => oCacheDq,
        oSramCbout  => oCacheCb
    );   
-------------------------------------------------

-- BRAM1 SYNCRAM -----------    
    I_BRAM1: syncramft
    generic map (
        tech        => Technology,
        abits       => 8,
        dbits       => 16,
        ft          => 2,
        testen      => 0
    )
    port map (
        clk         => iClkf,
        address     => rBram1.Addr(7 downto 0),
        Datain      => rBram1.Din(15 downto 0),
        Dataout     => Bram1Dout,
        write       => rBram1.Wr,
        enable      => rBram1.Ce,
        error       => Bram1Error,
        testin      => open
    );

-- BRAM4 SYNCRAM -----------
    I_BRAM4: syncramft
    generic map (
        tech        => Technology,
        abits       => 6,
        dbits       => 24,
        ft          => 2,
        testen      => 0
    )
    port map (
        clk         => iClkf,
        address     => rBram4.Addr(5 downto 0),
        DataIn      => rBram4.Din(23 downto 0),
        Dataout     => Bram4Dout,
        write       => rBram4.Wr,
        enable      => rBram4.Ce,
        error       => Bram4Error,
        testin      => open
    );

-- BRAMTRIG SYNCRAM ----------- 
    I_BRAMT: syncramft
    generic map (
        tech        => Technology,
        abits       => 5,
        dbits       => 24,
        ft          => 2,
        testen      => 0
    )
    port map (
        clk         => iClkf,
        address     => rBramT.Addr(4 downto 0),
        Datain      => rBramT.Din(23 downto 0),
        Dataout     => BramTDout,
        write       => rBramT.Wr,
        enable      => rBramT.Ce,
        error       => BramTError,
        testin      => open
    );         
        
end architecture;