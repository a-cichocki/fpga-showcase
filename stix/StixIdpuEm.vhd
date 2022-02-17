-------------------------------------------------------------------------------- 
-- File Name         :   StixIdpu.vhd
-- Project           :   STIX/IDPU/EM
-- Drawing           :   STIX-DW-0183-SRC
-- Title             :   IDPU FPGA Conf. Drawings
-- Design unit name  :   StixIdpu
-- Authors           :   A. Cichocki
-- Company           :   Centrum Badan Kosmicznych
-- Current revision  :   1
-------------------------------------------------------------------------------- 
-- Description       :   
-------------------------------------------------------------------------------- 

library Cbk;
   use Cbk.EepromCtrls_pkg.all;
   use Cbk.misc_pkg.all;
   use Cbk.SdRamCtrls_pkg.all;
   use Cbk.Stix_pkg.all;
library gaisler;
   use gaisler.jtag.all;
   use gaisler.leon3.all;
   use gaisler.memctrl.all;
   use gaisler.misc.all;
   use gaisler.uart.all;
library grlib;
   use grlib.amba.all;
library ieee;
   use ieee.numeric_std.all;
   use ieee.std_logic_1164.all;
library proasic3e;
   use proasic3e.components.all;
library techmap;
   use techmap.gencomp.all;

entity StixIdpuEm is 
   generic (
        Tech1             : integer := apa3e
   );
   port (
      iExtRst_n                : in std_logic;
      iClk                     : in std_logic;
   
      oConsoleTx               : out std_logic;
      iConsoleRx               : in std_logic;

      iJtagTck                 : in std_logic;
      iJtagTms                 : in std_logic;
      iJtagTdi                 : in std_logic;
      oJtagTdo                 : out std_logic;

      oSpwEn                   : out std_logic_vector(1 to 2);
      iSpw0Dat                 : in std_logic;
      iSpw0Stb                 : in std_logic;
      oSpw0Dat                 : out std_logic;
      oSpw0Stb                 : out std_logic;
      iSpw1Dat                 : in std_logic;
      iSpw1Stb                 : in std_logic;
      oSpw1Dat                 : out std_logic;
      oSpw1Stb                 : out std_logic;

      oRomCe_n                 : out std_logic_vector(7 downto 0);

      iFbsy_n                  : in std_logic_vector(1 to 2);
      bFio                     : inout std_logic_vector(15 downto 0);
      oFale                    : out std_logic_vector(1 to 2);
      oFce_n                   : out std_logic_vector(15 downto 0);
      oFcle                    : out std_logic_vector(1 to 2);
      oFre_n                   : out std_logic_vector(1 to 2);
      oFwe_n                   : out std_logic_vector(1 to 2);
      oFwp_n                   : out std_logic_vector(1 to 2);

      oAdcCs_n                 : out std_logic_vector(1 to 2);
      oAdcDin                  : out std_logic;
      oAdcSclk                 : out std_logic;
      iAdcDout                 : in std_logic;
      oHkMux				   : out std_logic_vector(1 downto 0);

      oDetDin_n                : out std_logic_vector(1 to 16);
      oDetDin_p                : out std_logic_vector(1 to 16);
      oDetStrobe_n             : out std_logic_vector(1 to 16);
      oDetStrobe_p             : out std_logic_vector(1 to 16);
      iDetDout_n               : in std_logic_vector(1 to 16);
      iDetDout_p               : in std_logic_vector(1 to 16);
      oDetAdcCs                : out std_logic_vector(1 to 16);
      oDetAdcSclk              : out std_logic_vector(1 to 16);
      iDetAdcDout              : in std_logic_vector(1 to 16);
      oDetQdacSync_n           : out std_logic_vector(1 to 4);
      oDetQdacSclk             : out std_logic_vector(1 to 4);
      oDetQdacDin              : out std_logic_vector(1 to 4);
      oDetQon                  : out std_logic_vector(1 to 4);
      oDetQtestPulse           : out std_logic_vector(1 to 4);
      iDetQseu                 : in std_logic_vector(1 to 4);

      oAspAon                  : out std_logic;
      oAspAadcCs_n             : out std_logic;
      oAspAadcSclk             : out std_logic;
      oAspAadcDin              : out std_logic;
      iAspAadcDout             : in std_logic;
      oAspBon                  : out std_logic;
      oAspBadcCs_n             : out std_logic;
      oAspBadcSclk             : out std_logic;
      oAspBadcDin              : out std_logic;
      iAspBadcDout             : in std_logic;

      bCacheDq                 : inout std_logic_vector(31 downto 0);
      bCacheCb                 : inout std_logic_vector(6 downto 0);
      oCacheA                  : out std_logic_vector(17 downto 0);
      oCacheWe_n               : out std_logic_vector(3 downto 0);
      oCacheOe_n               : out std_logic_vector(3 downto 0);
      oCacheCe_n               : out std_logic_vector(3 downto 0);

      oPsuHvEn                 : out std_logic_vector(1 to 2);
      oPsuHvSet                : out std_logic_vector(1 to 2);
      oPsuLvEn                 : out std_logic;
      
      oAttnPwmA                : out std_logic;
      oAttnPwmB                : out std_logic;
      oAttnDirA                : out std_logic;
      oAttnDirB                : out std_logic;
      iAttnPosAb               : in std_logic;
      iAttnPosBc               : in std_logic;
      
      iOtherIdpuIsOn           : in std_logic;
      iThisIsMain              : in std_logic;

      oR2clk                   : out std_logic;
      oR2cke                   : out std_logic;
      bR2dq                    : inout std_logic_vector(15 downto 0);
      oR2a                     : out std_logic_vector(16 downto 0);
      oR2cs_n                  : out std_logic;
      oR2we_n                  : out std_logic;
      oR2cas_n                 : out std_logic;
      oR2ras_n                 : out std_logic;
      
      oR1clk                   : out std_logic;
      oR1cke                   : out std_logic;
      oR1a                     : out std_logic_vector(14 downto 0);
      oR1dqm                   : out std_logic_vector(1 downto 0);
      bR1dq                    : inout std_logic_vector(15 downto 0);
      oR1cs_n                  : out std_logic;
      oR1we_n                  : out std_logic;
      oR1cas_n                 : out std_logic;
      oR1ras_n                 : out std_logic
);
end;

architecture Structural of StixIdpuEm is
   
    attribute syn_global_buffers : integer;
    attribute syn_global_buffers of Structural : architecture is 8;

   
   constant SYSTEM_BUILD                  : integer                  := 439;  
   
   signal RomCe_n             : std_logic_vector(7 downto 0);
   signal RomBsy_n            : std_logic;
   signal RomOe_n             : std_logic;
   signal RomWe_n             : std_logic;
   signal RomRst_n            : std_logic; 
   signal RomA                : std_logic_vector(16 downto 0);   
   signal RomIoIn             : std_logic_vector(7 downto 0);  
   signal RomIoOut            : std_logic_vector(7 downto 0); 
   signal RomIoBdrive         : std_logic; 
   
   signal UseEeprom           : std_logic;
   
   signal FioIn               : std_logic_vector(15 downto 0);
   signal FioOut              : std_logic_vector(15 downto 0); 
   signal FioBdrive           : std_logic; 
   signal CacheDqIn           : std_logic_vector(31 downto 0);
   signal CacheDqOut          : std_logic_vector(31 downto 0); 
   signal CacheDqBdrive       : std_logic; 
   signal CacheCbIn           : std_logic_vector(6 downto 0);
   signal CacheCbOut          : std_logic_vector(6 downto 0); 
   signal CacheCbBdrive       : std_logic; 
   signal Sdram2dqIn          : std_logic_vector(15 downto 0);
   signal Sdram2dqOut         : std_logic_vector(15 downto 0); 
   signal Sdram2a             : std_logic_vector(12 downto 0); 
   signal Sdram2ba            : std_logic_vector(1 downto 0); 
   signal Sdram2Dqm           : std_logic_vector(1 downto 0); 
   signal Sdram2We_n          : std_logic; 
   signal Sdram2dqBdrive      : std_logic; 
   signal Sdram2Cke           : std_logic;
   signal Sdram2Clk           : std_logic;
   signal Sdram2Ras_n         : std_logic; 
   signal Sdram2Cas_n         : std_logic; 
   signal Sdram2cs_n          : std_logic; 
   
   signal R2dqIn              : std_logic_vector(15 downto 0); 
   signal R2dqOut             : std_logic_vector(15 downto 0); 
   signal R2dqBdrive          : std_logic_vector(1 downto 0); 
   
   signal R1dqIn              : std_logic_vector(15 downto 0); 
   signal R1dqOut             : std_logic_vector(15 downto 0); 
   signal R1dqBdrive          : std_logic; 

   
begin
   I_StixIDpu : StixIdpu 
   generic map (
      SYSTEM_BUILD      => SYSTEM_BUILD,
      SYSTEM_RELEASE    => 34,
      Technology        => Tech1,
      UseEepromTypeBit  => 1
   )
   port map (
      oConsoleTx              => oConsoleTx,
      iConsoleRx              => iConsoleRx,
      iJtagTck                => iJtagTck,
      iJtagTms                => iJtagTms,
      iJtagTdi                => iJtagTdi,
      oJtagTdo                => oJtagTdo,
      iSpw0Dat                => iSpw0Dat,
      iSpw0Stb                => iSpw0Stb,
      oSpw0Dat                => oSpw0Dat,
      oSpw0Stb                => oSpw0Stb,
      oRomCe_n                => RomCe_n,
      iRomBsy_n               => RomBsy_n,
      oRomOe_n                => RomOe_n,
      oRomWe_n                => RomWe_n,
      oRomRst_n               => RomRst_n,
      oRomA                   => RomA,
      iRomIo                  => RomIoIn,
      oRomIo                  => RomIoOut,
      oRomIoBdrive            => RomIoBdrive,
      iFbsy_n                 => iFbsy_n,
      iFio                    => FioIn,
      oFio                    => FioOut,
      oFioBdrive              => FioBdrive,
      oFale                   => oFale,
      oFce_n                  => oFce_n,
      oFcle                   => oFcle,
      oFre_n                  => oFre_n,
      oFwe_n                  => oFwe_n,
      oFwp_n                  => oFwp_n,
      oAdcCs_n                => oAdcCs_n,
      oAdcDin                 => oAdcDin,
      oAdcSclk                => oAdcSclk,
      iAdcDout                => iAdcDout,
      oDetDin_n               => oDetDin_n,
      oDetDin_p               => oDetDin_p,
      oDetStrobe_n            => oDetStrobe_n,
      oDetStrobe_p            => oDetStrobe_p,
      iDetDout_n              => iDetDout_n,
      iDetDout_p              => iDetDout_p,
      oDetAdcCs               => oDetAdcCs,
      oDetAdcSclk             => oDetAdcSclk,
      iDetAdcDout             => iDetAdcDout,
      oDetQdacSync_n          => oDetQdacSync_n,
      oDetQdacSclk            => oDetQdacSclk,
      oDetQdacDin             => oDetQdacDin,
      oDetQon                 => oDetQon,
      oDetQtestPulse          => oDetQtestPulse,
      iDetQseu                => iDetQseu,
      oAspAon                 => oAspAon,
      oAspAadcCs_n            => oAspAadcCs_n,
      oAspAadcSclk            => oAspAadcSclk,
      oAspAadcDin             => oAspAadcDin,
      iAspAadcDout            => iAspAadcDout,
      oAspBon                 => oAspBon,
      oAspBadcCs_n            => oAspBadcCs_n,
      oAspBadcSclk            => oAspBadcSclk,
      oAspBadcDin             => oAspBadcDin,
      iAspBadcDout            => iAspBadcDout,
      iCacheDq                => CacheDqIn,
      oCacheDq                => CacheDqOut,
      oCacheDqBdrive          => CacheDqBdrive,
      iCacheCb                => CacheCbIn,
      oCacheCb                => CacheCbOut,
      oCacheCbBdrive          => CacheCbBdrive,
      oCacheA                 => oCacheA,
      oCacheWe_n              => oCacheWe_n,
      oCacheOe_n              => oCacheOe_n,
      oCacheCe_n              => oCacheCe_n,
      oSpwEn                  => oSpwEn,
      oPsuHvEn                => oPsuHvEn,
      oPsuHvSet               => oPsuHvSet,
      oPsuLvEn                => oPsuLvEn,
      oAttnPwmA               => oAttnPwmA,
      oAttnPwmB               => oAttnPwmB,
      oAttnDirA               => oAttnDirA,
      oAttnDirB               => oAttnDirB,
      iAttnPosAb              => iAttnPosAb,
      iAttnPosBc              => iAttnPosBc,
      iOtherIdpuIsOn          => iOtherIdpuIsOn,
      iThisIsMain             => iThisIsMain,
      oUseEeprom              => UseEeprom,
      iSpw1Dat                => iSpw1Dat,
      iSpw1Stb                => iSpw1Stb,
      oSpw1Dat                => oSpw1Dat,
      oSpw1Stb                => oSpw1Stb,
      iExtRst_n               => iExtRst_n,
      iClk                    => iClk,
      oR2clk                  => Sdram2clk,
      oR2cke                  => Sdram2cke,
      iR2dq                   => Sdram2dqIn,
      oR2dq                   => Sdram2dqOut,
      oR2dqBdrive             => Sdram2dqBdrive,
      oR2ba                   => Sdram2ba,
      oR1clk                  => oR1clk,
      oR1cke                  => oR1cke,
      oR1ba                   => oR1a(14 downto 13),
      oR2a                    => Sdram2a,
      oR1a                    => oR1a(12 downto 0),
      oR1dqm                  => oR1dqm,
      iR1dq                   => R1dqIn,
      oR1dq                   => R1dqOut,
      oR1dqBdrive             => R1dqBdrive,
      oR2dqm                  => Sdram2dqm,
      oR2cs_n                 => Sdram2cs_n,
      oR1cs_n                 => oR1cs_n,
      oR2we_n                 => Sdram2we_n,
      oR1we_n                 => oR1we_n,
      oR2cas_n                => Sdram2cas_n,
      oR1cas_n                => oR1cas_n,
      oR2ras_n                => Sdram2ras_n,
      oR1ras_n                => oR1ras_n,  
      oHkMux				  => oHkMux     
   );
   

   I_FIO_BUFV: for i in 0 to bFio'length - 1 generate 
      I_FIO_BUF: bibuf port map (d => FioOut(i), e => FioBdrive, y => FioIn(i), pad => bFio(i));
   end generate;
   
   -- with UseEeprom select
      -- oRomCe_n    <= RomCe_n              when '1', (others => '1') when others;
   -- with UseEeprom select
      -- oR2We_n    <= RomWe_n               when '1', Sdram2WE_n when others;
   -- with UseEeprom select                           
      -- oR2a        <= RomA                 when '1', Sdram2Dqm & Sdram2ba & Sdram2a when others;
   -- with UseEeprom select                           
      -- oR2cas_n    <= RomOe_n              when '1', Sdram2Cas_n when others;
   -- with UseEeprom select                          
      -- oR2ras_n    <= RomRst_n             when '1', Sdram2Ras_n when others;
   -- with UseEeprom select                      
      -- RomBsy_n    <= R2dqIn(8)            when '1', '1' when others;
   -- with UseEeprom select                      
      -- RomIoIn     <= R2dqIn(7 downto 0)   when '1', (others => '0') when others;
   -- with UseEeprom select                     
      -- R2DqOut     <= x"00" & RomIoOut     when '1', Sdram2DqOut when others;
   -- with UseEeprom select                     
      -- R2DqBDrive(0)  <= RomIoBDrive       when '1', Sdram2DqBdrive when others;
   -- with UseEeprom select                     
      -- R2DqBDrive(1)  <= '0'               when '1', Sdram2DqBdrive when others;
   -- with UseEeprom select                     
      -- oR2cke      <= '0'                  when '1', Sdram2cke when others;
   -- with UseEeprom select                     
      -- oR2clk      <= '0'                  when '1', Sdram2clk when others;
   -- with UseEeprom select                     
      -- oR2Cs_n     <= '1'                  when '1', Sdram2cs_n when others;
   

    oRomCe_n    <= RomCe_n;      
    RomBsy_n    <= R2dqIn(8);
    RomIoIn     <= R2dqIn(7 downto 0);          
    oR2cke      <= Sdram2cke;                  
    oR2clk      <= Sdram2clk;                   
    oR2Cs_n     <= Sdram2cs_n;
    Sdram2dqIn  <= R2DqIn;
    
    with UseEeprom select
        oR2We_n    <= RomWe_n               when '1', Sdram2WE_n when others;
    with UseEeprom select                           
        oR2a        <= RomA                 when '1', Sdram2Dqm & Sdram2ba & Sdram2a when others;
    with UseEeprom select                           
        oR2cas_n    <= RomOe_n              when '1', Sdram2Cas_n when others;
    with UseEeprom select                          
        oR2ras_n    <= RomRst_n             when '1', Sdram2Ras_n when others;
    with UseEeprom select                     
        R2DqOut(7 downto 0) <= RomIoOut     when '1', Sdram2DqOut(7 downto 0) when others;
    R2DqOut(15 downto 8) <= Sdram2DqOut(15 downto 8);
    with UseEeprom select                     
        R2DqBDrive(0)  <= RomIoBDrive       when '1', Sdram2DqBdrive when others;                    
    R2DqBDrive(1)  <= Sdram2DqBdrive;       

   
   I_R1DQ_BUFV: for i in 0 to 15 generate 
      I_R1DQ_BUF: bibuf port map (d => R1DqOut(i), e => R1DqBDrive, y => R1DqIn(i), pad => bR1Dq(i));
   end generate;
   
   I_R2DQ_BUFV07: for i in 0 to 7 generate 
      I_R2DQ_BUF: bibuf port map (d => R2DqOut(i), e => R2DqBDrive(0), y => R2DqIn(i), pad => bR2Dq(i));
   end generate;

   I_R2DQ_BUFV815: for i in 8 to 15 generate 
      I_R2DQ_BUF: bibuf port map (d => R2DqOut(i), e => R2DqBDrive(1), y => R2DqIn(i), pad => bR2Dq(i));
   end generate;
   
   
   I_SDQ_BUFV: for i in 0 to bCacheDq'length - 1 generate 
      I_SDQ_BUF: bibuf port map (d => CacheDqout(i), e => CacheDqBdrive, y => CacheDqIn(i), pad => bCacheDq(i));
   end generate;

   I_SCB_BUFV: for i in 0 to bCacheCb'length - 1 generate 
      SCB_BUF: bibuf port map (d => CacheCbout(i), e => CacheCbBdrive, y => CacheCbIn(i), pad => bCacheCb(i));
   end generate;
   
      
end;