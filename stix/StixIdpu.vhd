-------------------------------------------------------------------------------- 
-- File Name            :    StixIdpu.vhd
-- Project              :    STIX/IDPU/EM
-- Drawing              :    STIX-DW-0183-SRC
-- Title                 :    IDPU FPGA Conf. Drawings
-- Design unit name  :    StixIdpu
-- Authors              :    A. Cichocki
-- Company              :    Centrum Badan Kosmicznych
-- Current revision  :    1
-------------------------------------------------------------------------------- 
-- Description         :    
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
library techmap;
    use techmap.gencomp.all;

library synplify;
	use synplify.attributes.all;

library proasic3e;    
library axcelerator;

entity StixIdpu is
    generic (
        Technology                      : integer := axcel; 
        SYSTEM_RELEASE                  : integer := 32;
        SYSTEM_BUILD                    : integer := 178;
        UseEepromTypeBit                : integer := 0
    );
    port (
        iExtRst_n                       : in std_logic;
        iClk                            : in std_logic;

        oConsoleTx                      : out std_logic;
        iConsoleRx                      : in std_logic;

        iJtagTck                        : in std_logic;
        iJtagTms                        : in std_logic;
        iJtagTdi                        : in std_logic;
        oJtagTdo                        : out std_logic;

        oSpwEn                          : out std_logic_vector(1 to 2);
        iSpw0Dat                        : in std_logic;
        iSpw0Stb                        : in std_logic;
        oSpw0Dat                        : out std_logic;
        oSpw0Stb                        : out std_logic;
        iSpw1Dat                        : in std_logic;
        iSpw1Stb                        : in std_logic;
        oSpw1Dat                        : out std_logic;
        oSpw1Stb                        : out std_logic;

        oRomCe_n                        : out std_logic_vector(7 downto 0);
        iRomBsy_n                       : in std_logic;
        oRomOe_n                        : out std_logic; 
        oRomWe_n                        : out std_logic; 
        oRomRst_n                       : out std_logic; 
        oRomA                           : out std_logic_vector(16 downto 0);
        iRomIo                          : in std_logic_vector(7 downto 0);
        oRomIo                          : out std_logic_vector(7 downto 0);
        oRomIoBdrive                    : out std_logic; 

        iFbsy_n                         : in std_logic_vector(1 to 2);
        iFio                            : in std_logic_vector(15 downto 0);
        oFio                            : out std_logic_vector(15 downto 0);
        oFioBdrive                      : out std_logic;
        oFale                           : out std_logic_vector(1 to 2);
        oFce_n                          : out std_logic_vector(15 downto 0);
        oFcle                           : out std_logic_vector(1 to 2);
        oFre_n                          : out std_logic_vector(1 to 2);
        oFwe_n                          : out std_logic_vector(1 to 2);
        oFwp_n                          : out std_logic_vector(1 to 2);

        oAdcCs_n                        : out std_logic_vector(1 to 2);
        oAdcDin                         : out std_logic;
        oAdcSclk                        : out std_logic;
        iAdcDout                        : in std_logic;
        oHkMux                          : out std_logic_vector(1 downto 0);

        oDetDin_n                       : out std_logic_vector(1 to 16);
        oDetDin_p                       : out std_logic_vector(1 to 16);
        oDetStrobe_n                    : out std_logic_vector(1 to 16);
        oDetStrobe_p                    : out std_logic_vector(1 to 16);
        iDetDout_n                      : in std_logic_vector(1 to 16);
        iDetDout_p                      : in std_logic_vector(1 to 16);
        oDetAdcCs                       : out std_logic_vector(1 to 16);
        oDetAdcSclk                     : out std_logic_vector(1 to 16);
        iDetAdcDout                     : in std_logic_vector(1 to 16);
        oDetQdacSync_n                  : out std_logic_vector(1 to 4);
        oDetQdacSclk                    : out std_logic_vector(1 to 4);
        oDetQdacDin                     : out std_logic_vector(1 to 4);
        oDetQon                         : out std_logic_vector(1 to 4);
        oDetQtestPulse                  : out std_logic_vector(1 to 4);
        iDetQseu                        : in std_logic_vector(1 to 4);

        oAspAon                         : out std_logic;
        oAspAadcCs_n                    : out std_logic;
        oAspAadcSclk                    : out std_logic;
        oAspAadcDin                     : out std_logic;
        iAspAadcDout                    : in std_logic;
        oAspBon                         : out std_logic;
        oAspBadcCs_n                    : out std_logic;
        oAspBadcSclk                    : out std_logic;
        oAspBadcDin                     : out std_logic;
        iAspBadcDout                    : in std_logic;

        iCacheDq                        : in std_logic_vector(31 downto 0);
        oCacheDq                        : out std_logic_vector(31 downto 0);
        oCacheDqBdrive                  : out std_logic;        
        iCacheCb                        : in std_logic_vector(6 downto 0);
        oCacheCb                        : out std_logic_vector(6 downto 0);
        oCacheCbBdrive                  : out std_logic;        
        oCacheA                         : out std_logic_vector(17 downto 0);
        oCacheWe_n                      : out std_logic_vector(3 downto 0);
        oCacheOe_n                      : out std_logic_vector(3 downto 0);
        oCacheCe_n                      : out std_logic_vector(3 downto 0);

        oPsuHvEn                        : out std_logic_vector(1 to 2);
        oPsuHvSet                       : out std_logic_vector(1 to 2);
        oPsuLvEn                        : out std_logic;
        
        oAttnPwmA                       : out std_logic;
        oAttnPwmB                       : out std_logic;
        oAttnDirA                       : out std_logic;
        oAttnDirB                       : out std_logic;
        iAttnPosAb                      : in std_logic;
        iAttnPosBc                      : in std_logic;
        
        iOtherIdpuIsOn                  : in std_logic;
        iThisIsMain                     : in std_logic;

        oR2clk                          : out std_logic;
        oR2cke                          : out std_logic;
        iR2dq                           : in std_logic_vector(15 downto 0);
        oR2dq                           : out std_logic_vector(15 downto 0);
        oR2dqBdrive                     : out std_logic;
        oR2ba                           : out std_logic_vector(1 downto 0);
        oR2a                            : out std_logic_vector(12 downto 0);
        oR2dqm                          : out std_logic_vector(1 downto 0);
        oR2cs_n                         : out std_logic;
        oR2we_n                         : out std_logic;
        oR2cas_n                        : out std_logic;
        oR2ras_n                        : out std_logic;
        
        oR1clk                          : out std_logic;
        oR1cke                          : out std_logic;
        oR1ba                           : out std_logic_vector(1 downto 0);
        oR1a                            : out std_logic_vector(12 downto 0);
        oR1dqm                          : out std_logic_vector(1 downto 0);
        iR1dq                           : in std_logic_vector(15 downto 0);
        oR1dq                           : out std_logic_vector(15 downto 0);
        oR1dqBdrive                     : out std_logic;
        oR1cs_n                         : out std_logic;
        oR1we_n                         : out std_logic;
        oR1cas_n                        : out std_logic;
        oR1ras_n                        : out std_logic;
        oUseEeprom                      : out std_logic
    );
    
end entity;

architecture Structural of StixIdpu is

    constant FABTECH                        : integer       := Technology;
    constant MEMTECH                        : integer       := Technology;
    constant NAHBMASTERS                    : integer       := 4;
    constant NAHBSLAVES                     : integer       := 5;
    constant NAPBSLAVES                     : integer       := 8; 
    constant SPW0NODEADDR                   : integer       := 1;
    constant SPW1NODEADDR                   : integer       := 2;
    constant SPWDESTKEY                     : integer       := 0;
    constant SYSTEM_CLOCK                   : integer       := 20000000;
    constant SYSFREQ                        : integer       := SYSTEM_CLOCK / 1000;
    
    constant WDOG_RELOAD                    : integer       := 63;
    constant WDOG_PRESCALER                 : integer       := 2097151;
    constant WDOG_DISABLED                  : integer       := 1;
    
    constant ROTB_MAX_BLOCKS                : integer       := 104448;
    constant ROTB_EDAC_USE                  : integer       := 1;
    constant ROTB_SCRUB_USE                 : integer       := 0;
    constant CACHE_EDAC_USE                 : integer       := 1;
    constant CACHE_SCRUB_USE                : integer       := 1;
    constant SD_EDAC_USE                    : integer       := 1;
    constant SD_SCRUB_USE                   : integer       := 1;
    
    constant PROT_CHANNEL_NUMBER            : integer       := 9;
    constant UNLOCKING_TOKEN                : integer       := 16#A5#;
    constant HV_LIMIT                       : integer       := 143;
    constant TRACK_PRESCALER                : integer range 0 to 255  := 8;--100;
    constant DPU_1V5_C_MAX                  : integer range 0 to 4095 := 2282;
    constant DPU_2V5_C_MAX                  : integer range 0 to 4095 := 3416;
    constant DPU_3V3_C_MAX                  : integer range 0 to 4095 := 3826;
    constant DPU_SPW_C_MAX                  : integer range 0 to 4095 := 3826;
    constant DET_C_MAX                      : integer range 0 to 4095 := 546;
    constant ATT_C_MAX                      : integer range 0 to 4095 := 751;
    constant ATT_V_MAX                      : integer range 0 to 4095 := 4095;
    constant HV_01_V_MAX                    : integer range 0 to 4095 := 2323;
    constant HV_17_V_MAX                    : integer range 0 to 4095 := 2323;


    signal AhbMsti                          : ahb_mst_in_type;
    signal ApbSi                            : apb_slv_in_type;
    signal ClkFF_b                          : std_logic;
    signal ClkF_b                           : std_logic;
    signal ClkM_b                           : std_logic;
    signal AhbSi                            : ahb_slv_in_type;
    signal RamDed                           : std_logic;

    signal RstM_bn                          : std_logic;
    signal RstF_bn                          : std_logic;
    signal RstFF_n                          : std_logic;
    signal RstF_n                           : std_logic;
    signal RstM_n                           : std_logic;
    
    signal irqov                            : irq_out_vector(0 to 0);
    signal irqiv                            : irq_in_vector(0 to 0);
    signal gpti                             : gptimer_in_type;
    signal gpto                             : gptimer_out_type;
    signal dbgov                            : l3_debug_out_vector(0 to 0);
    signal dbgiv                            : l3_debug_in_vector(0 to 0);
    signal dsui                             : dsu_in_type;
    signal dsuo                             : dsu_out_type;
    signal AhbSo                            : ahb_slv_out_vector  := (others => ahbs_none);
    signal ClkF                             : std_logic;
    signal ClkM                             : std_logic;
    signal Clk_Sd                           : std_logic;

    signal ApbUarti                         : uart_in_type;
    signal ApbUarto                         : uart_out_type;
    signal ApbSo                            : apb_slv_out_vector;
    signal TapoInst                         : std_logic_vector(7 downto 0);
    signal AhbMsto                          : ahb_mst_out_vector := (others => ahbm_none);
    signal JtagTck_b                        : std_logic;

    signal Wdog                             : std_logic;
    signal Gnd                              : std_logic_vector(1 downto 0) := (others => '0');    
    signal Vcc                              : std_logic_vector(0 downto 0) := (others => '1');    
    
    signal sd1Clk                           : std_logic;
    signal sd2Clk                           : std_logic;
    signal sd1Clk_f                         : std_logic;
    signal sd2Clk_f                         : std_logic;
    
    signal spwEn                            : std_logic_vector(1 downto 0);
    
    signal Tick1ms                          : std_logic;
    signal Tick800ns                        : std_logic;
    signal Tick15u2                         : std_logic;

    signal TxTick                           : std_logic;
    signal Tick100ms                        : std_logic;
    
    
    attribute sync_set_reset : string;
    attribute sync_set_reset of RstF_bn : signal is "true";    
    attribute sync_set_reset of RstM_bn : signal is "true";
    attribute sync_set_reset of RstFF_n : signal is "true";
    
    
    attribute syn_isclock of ClkM_b     : signal is true;
    attribute syn_isclock of ClkF_b     : signal is true;
    attribute syn_isclock of ClkFF_b    : signal is true;
    
    attribute syn_preserve of sd1Clk_f  : signal is true;
    attribute syn_preserve of sd2Clk_f  : signal is true;
    
begin

    I_EMPTYAHBMST: for i in NAHBMASTERS to NAHBMST-1 generate
      AhbMsto(i) <= ahbm_none;
    end generate;
    
    I_EMPTYAHBSLV: for i in NAHBSLAVES to NAHBSLV-1 generate
        AhbSo(i) <= ahbs_none;
    end generate;

    I_EMPTYAPBSLV: for i in NAPBSLAVES to NAPBSLV-1 generate
        ApbSo(i) <= apb_none;
    end generate;
    
    Gnd    <= (others => '0');    
    Vcc    <= (others => '1');    
       
-- CLK & RESET BUFFERS for proasic3e 
   
    G_CLKINB_PA: if Technology = apa3e generate
        -- clock buffers
        I_ClkFFbuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i     	=> iClk,
            o       => ClkFF_b
        );
               
        
        I_ClkFbuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i       => ClkF,
            o       => ClkF_b
        );


        I_ClkMbuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i     => ClkM,
            o     => ClkM_b
        );               

        I_RstMBuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i       => RstM_n,
            o       => RstM_bn
        );
        
        I_RstFBuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i       => RstF_n,
            o       => RstF_bn
        );
        

        I_JtagClkBuf : techmap.gencomp.techbuf
        generic map (
            buftype => 2,
            tech    => FabTech
        )
        port map (
            i       => iJtagTck,
            o       => JtagTck_b
        );
        
        I_SD1CLK_DFF: proasic3e.components.DFN1
        port map(CLK => ClkFF_b, D => sd1Clk, Q => sd1Clk_f);
 
        I_SD2CLK_DFF: proasic3e.components.DFN1
        port map(CLK => ClkFF_b, D => sd2Clk, Q => sd2Clk_f);

    end generate;
    
    G_CLKINB_AX: if Technology = axcel generate

        -- ClkFF_b 100Mhz
        I_ClkFFbuf : axcelerator.components.hclkbuf
        port map (
            pad         => iClk,
            y           => ClkFF_b
        );
        
        -- ClkM_b 20Mhz
        I_ClkMbuf : axcelerator.components.clkint
        port map (
            a           => ClkM,
            y           => ClkM_b
        );
        

        -- ClkF_b 50Mhz
        I_ClkFbuf : axcelerator.components.hclkint
        port map (
            a           => ClkF,
            y           => ClkF_b
        );
        
        
        -- Reset buffer ClkM
        I_RstMbuf : axcelerator.components.clkint
        port map (
            a           => RstM_n,
            y           => RstM_bn
        );

        -- Reset buffer ClkF
        I_RstFbuf : axcelerator.components.clkint
        port map (
            a           => RstF_n,
            y           => RstF_bn
        );
        
        
        -- JTAG CLK
        I_JtagClkBuf : axcelerator.components.hclkbuf
        port map (
            pad     => iJtagTck,
            y       => JtagTck_b
        );
        
        I_SD1CLK_DFF: axcelerator.components.DF1
        port map(CLK => ClkFF_b, D => sd1Clk, Q => sd1Clk_f);
 
        I_SD2CLK_DFF: axcelerator.components.DF1
        port map(CLK => ClkFF_b, D => sd2Clk, Q => sd2Clk_f);
         
    end generate;
    
    oR1clk  <= sd1Clk_f;
    oR2clk  <= sd2Clk_f;
    sd1Clk  <= not ClkM;
    sd2Clk  <= not ClkM;

-- CLK DIVIDERS and reset generator

    -- CLKM divider (20Mhz)
    I_ClkDiv_20MHz : ClkDiv
    generic map (
        div                 => 5
    )
    port map (
        iRst_n              => RstFF_n,
        iclk                => ClkFF_b,
        oclk                => ClkM
    );
    
    -- CLKF divider (50Mhz)
    I_ClkDiv_50MHz : ClkDiv
    generic map (
        div                 => 2
    )
    port map (
        iRst_n              => RstFF_n,
        iclk                => ClkFF_b,
        oclk                => ClkF
    ); 
    
    I_ResetGen: StixRstGen
    generic map(
        Technology      => Technology
    )
    port map(
        iClk            => ClkFF_b,
        iClkM           => ClkM_b,
        iClkF           => ClkF_b,
        iExtRst_n       => iExtRst_n,
        iWdg            => Wdog,
        oRstM_n         => RstM_n,
        oRstF_n         => RstF_n,
        oRstFF_n        => RstFF_n
    );
    
             
    I_StixSpw0 : StixSpw
    generic map (
        DestKey                         => 0,
        FabTech                         => FabTech,
        hIndex                          => 2,
        MemTech                         => MemTech,
        NodeAddr                        => 0,
        pMask                           => 16#FFF#,
        pIndex                          => 4,
        pAddr                           => 10,
        pIrq                            => 13,
        SysFreq                         => 20000
    )
    port map (
        iDat0                           => iSpw0Dat,
        iStb0                           => iSpw0Stb,
        oDat0                           => oSpw0Dat,
        oStb0                           => oSpw0Stb,
        iDat1                           => iSpw1Dat,
        iStb1                           => iSpw1Stb,
        oDat1                           => oSpw1Dat,
        oStb1                           => oSpw1Stb,
        oAhb                            => AhbMsto(2),
        iAhb                            => AhbMsti,
        iApb                            => ApbSi,
        oApb                            => ApbSo(4),
        iSpwEn                          => spwEn,
        iRst_n                          => RstM_bn,
        iClk                            => ClkM_b
    );

    
    
    I_StixCtrl0 : StixCtrl
    generic map (
        Technology                      => Technology,
        pAddr                           => 5,
        pIndex                          => 5,
        pMask                           => 16#FFF#,
        pIrq                            => 3,
        hIndex                          => 4,
        hAddr                           => 16#E00#,
        hMask                           => 16#FF0#,
        SYSTEM_RELEASE                  => SYSTEM_RELEASE,
        SYSTEM_BUILD                    => SYSTEM_BUILD,
        ROTB_MAX_BLOCKS                 => ROTB_MAX_BLOCKS,
        ROTB_EDAC_USE                   => ROTB_EDAC_USE,
        ROTB_SCRUB_USE                  => ROTB_SCRUB_USE,
        CACHE_EDAC_USE                  => CACHE_EDAC_USE,
        CACHE_SCRUB_USE                 => CACHE_SCRUB_USE,
        WDOG_RELOAD                     => WDOG_RELOAD,
        WDOG_PRESCALER                  => WDOG_PRESCALER,
        WDOG_DISABLED                   => WDOG_DISABLED,
        PROT_CHANNEL_NUMBER             => PROT_CHANNEL_NUMBER,
        UNLOCKING_TOKEN                 => UNLOCKING_TOKEN,
        HV_LIMIT                        => HV_LIMIT,
        TRACK_PRESCALER                 => TRACK_PRESCALER,      
        DPU_1V5_C_MAX                   => DPU_1V5_C_MAX,       
        DPU_2V5_C_MAX                   => DPU_2V5_C_MAX,       
        DPU_3V3_C_MAX                   => DPU_3V3_C_MAX,       
        DPU_SPW_C_MAX                   => DPU_SPW_C_MAX,       
        DET_C_MAX                       => DET_C_MAX,           
        ATT_C_MAX                       => ATT_C_MAX,           
        ATT_V_MAX                       => ATT_V_MAX,           
        HV_01_V_MAX                     => HV_01_V_MAX,         
        HV_17_V_MAX                     => HV_17_V_MAX         
    )
    port map (
        iRstM_n                         => RstM_bn,
        iRstF_n                         => RstF_bn,
        iClkm                           => ClkM_b,
        iClkf                           => ClkF_b,
        iClkff                          => ClkFF_b,
        oTick1ms                        => Tick1ms,
        oTick800ns                      => Tick800ns,
        oTick15u2                       => Tick15u2,
        iApb                            => ApbSi,
        oApb                            => ApbSo(5),
        oAdcCs_n                        => oAdcCs_n,
        oAdcDin                         => oAdcDin,
        iAdcDout                        => iAdcDout,
        oAdcSclk                        => oAdcSclk,
        oROTBclk                        => open, --sd2Clk,
        oROTBcke                        => oR2cke,
        oROTBwe_n                       => oR2we_n,
        oROTBcas_n                      => oR2cas_n,
        oROTBcs_n                       => oR2cs_n,
        oROTBras_n                      => oR2ras_n,
        iROTBdq                         => iR2dq,
        oROTBdq                         => oR2Dq,            
        oROTBdqBdrive                   => oR2dqBdrive,
        oROTBa                          => oR2a,
        oROTBba                         => oR2ba,
        oROTBdqm                        => oR2dqm,
        oASPaOn                         => oASPaOn,
        oASPaADCcs_n                    => oASPaADCcs_n,
        oASPaADCsclk                    => oASPaADCsclk,
        oASPaADCdin                     => oASPaADCdin,
        iASPaADCdout                    => iASPaADCdout,
        oASPbOn                         => oASPbOn,
        oASPbADCcs_n                    => oASPbADCcs_n,
        oASPbADCsclk                    => oASPbADCsclk,
        oASPbADCdin                     => oASPbADCdin,
        iASPbADCdout                    => iASPbADCdout,
        oCACHEa                         => oCACHEa,
        iCACHEdq                        => iCACHEdq,
        iCACHEcb                        => iCACHEcb,
        oCACHEdq                        => oCACHEdq,
        oCACHEcb                        => oCACHEcb,
        oCACHEdqBdrive                  => oCACHEdqBdrive,
        oCACHEcbBdrive                  => oCACHEcbBdrive,
        oCACHEwe_n                      => oCACHEwe_n,
        oCACHEoe_n                      => oCACHEoe_n,
        oCACHEce_n                      => oCACHEce_n,
        iDetDout_n                      => iDetDout_n,
        iDetDout_p                      => iDetDout_p,
        oDetDin_n                       => oDetDin_n,
        oDetDin_p                       => oDetDin_p,
        oDetStrobe_n                    => oDetStrobe_n,
        oDetStrobe_p                    => oDetStrobe_p,
        iDetAdcDout                     => iDetAdcDout,
        oDetAdcCs                       => oDetAdcCs,
        oDetAdcSclk                     => oDetAdcSclk,
        oDetQDacDin                     => oDetQDacDin,
        oDetQDacSclk                    => oDetQDacSclk,
        oDetQDacSync_n                  => oDetQDacSync_n,
        oDetQOn                         => oDetQOn,
        oDetQTestPulse                  => oDetQTestPulse,
        iDetQSeu                        => iDetQSeu,
        oAttnPwmA                       => oAttnPwmA,
        oAttnPwmB                       => oAttnPwmB,
        oAttnDirA                       => oAttnDirA,
        oAttnDirB                       => oAttnDirB,
        iAttnPosAb                      => iAttnPosAb,
        iAttnPosBc                      => iAttnPosBc,
        oPsuHvEn                        => oPsuHvEn,
        oPsuHvSet                       => oPsuHvSet,
        oPsuLvEn                        => oPsuLvEn,
        oSpwEn                          => spwEn,
        iOtherIdpuIsOn                  => iOtherIdpuIsOn,
        iThisIsMain                     => iThisIsMain,
        oAhb                            => AhbSo(4),
        iAhb                            => AhbSi,
        oUseEeprom                      => oUseEeprom,
        oHkMux                          => oHkMux,
        oWatchDog                       => Wdog,
        oTxTick                         => TxTick,
        oTick100ms                      => Tick100ms
    );
    oSpwEn(1)   <= spwEn(0);
    oSpwEn(2)   <= spwEn(1);
    
  
    I_SdCtrl0 : FtSdCtrl16
    generic map (
        USE_EDAC                        => SD_EDAC_USE,
        USE_SCRUB                       => SD_SCRUB_USE,
        hAddr                           => 16#400#,
        hIndex                          => 3,
        hMask                           => 16#FC0#,
        pAddr                           => 12,
        pIndex                          => 0,
        pMask                           => 16#FFF#       
    )
    port map (
        iRst_n                          => RstM_bn,
        iClk                            => ClkM_b,
        iTick15u2                       => Tick15u2,
        iTick800ns                      => Tick800ns,
        iApb                            => ApbSi,
        oApb                            => ApbSo(0),
        iAhb                            => AhbSi,
        oAhb                            => AhbSo(3),
        oSa                             => oR1a,
        oSba                            => oR1ba,
        oSdqm                           => oR1dqm,
        oSdq                            => oR1dq,
        iSdq                            => iR1dq,
        oSdqBdrive                      => oR1dqBdrive,
        oScke                           => oR1cke,
        oSclk                           => open, --sd1Clk,
        oScs_n                          => oR1cs_n,
        oSwe_n                          => oR1we_n,
        oScas_n                         => oR1cas_n,
        oSras_n                         => oR1ras_n
    ); 

    I_NandCtrl0 : FtNandCtrl
    generic map (
        hIndex                          => 1,
        pIndex                          => 6,
        pAddr                           => 8,
        pIrq                            => 1
    )
    port map (
        iRst_n                          => RstM_bn,
        iClk                            => ClkM_b,
        iApb                            => ApbSi,
        oApb                            => ApbSo(6),
        oFCe_n                          => oFCe_n,
        oFale                           => oFale,
        oFcle                           => oFcle,
        iFbsy_n                         => iFbsy_n,
        oFwe_n                          => oFwe_n,
        oFre_n                          => oFre_n,
        iFio                            => iFio,
        oFio                            => oFio,            
        oFioBdrive                      => oFioBdrive,
        oFwp_n                          => oFwp_n,
        iAhbM                           => AhbMsti,
        oAhbM                           => AhbMsto(1)
    );      
        
    I_IrqMp0 : irqmp
    generic map (
        eIrq                            => 0,
        NCpu                            => 1,
        pAddr                           => 2,
        pIndex                          => 2,
        pMask                           => 16#FFF#
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        apbi                            => ApbSi,
        apbo                            => ApbSo(2),
        irqi                            => irqov,
        irqo                            => irqiv
    );

    I_GpTimer0 : gptimer
    generic map (
        EwdogEn                         => 0,
        nbits                           => 32,
        nTimers                         => 2,
        pAddr                           => 3,
        pIndex                          => 3,
        pIrq                            => 10,
        pmask                           => 16#FFF#,
        Sbits                           => 16,
        SepIrq                          => 1,
        wdog                            => 0
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        apbi                            => ApbSi,
        apbo                            => ApbSo(3),
        gpti                            => gpti,
        gpto                            => gpto
    );
     
    G_FTEEPROM_AX: if (Technology = axcel) generate   
        I_EepromCtrl0 : FtEepromCtrl
        generic map (
            hIndex                          => 1,
            hAddr                           => 16#000#,
            hMask                           => 16#FFC#,
            pIndex                          => 7,
            pAddr                           => 9
        )
        port map (
            iRst_n                          => RstM_bn,
            iClk                            => ClkM_b,
            iTick1ms                        => Tick1ms,
            oRomCe_n                        => oRomCe_n,
            oRomOe_n                        => oRomOe_n,
            oRomWe_n                        => oRomWe_n,
            oRomRst_n                       => oRomRst_n,
            oRomA                           => oRomA,
            iRomIo                          => iRomIo,
            oRomIo                          => oRomIo,
            oRomIoBdrive                    => oRomIoBdrive,
            iRomBsy_n                       => iRomBsy_n,
            iApb                            => ApbSi,
            oApb                            => ApbSo(7),
            iAhb                            => AhbSi,
            oAhb                            => AhbSo(1)
        );
    end generate;   
    
    G_FTEEPROM_NOAX: if (Technology /= axcel) generate   
        I_EepromCtrl0 : FtEepromCtrlWithFlash
        generic map (
            hIndex                          => 1,
            hAddr                           => 16#000#,
            hMask                           => 16#FFC#,
            pIndex                          => 7,
            pAddr                           => 9,
            UseTypeBit                      => UseEepromTypeBit
        )
        port map (
            iRst_n                          => RstM_bn,
            iClk                            => ClkM_b,
            iTick1ms                        => Tick1ms,
            oRomCe_n                        => oRomCe_n,
            oRomOe_n                        => oRomOe_n,
            oRomWe_n                        => oRomWe_n,
            oRomRst_n                       => oRomRst_n,
            oRomA                           => oRomA,
            iRomIo                          => iRomIo,
            oRomIo                          => oRomIo,
            oRomIoBdrive                    => oRomIoBdrive,
            iRomBsy_n                       => iRomBsy_n,
            iApb                            => ApbSi,
            oApb                            => ApbSo(7),
            iAhb                            => AhbSi,
            oAhb                            => AhbSo(1),
            iTypeEeprom                     => iThisIsMain
        );
    end generate;


    I_Dsu0 : Dsu3
    generic map (
        hAddr                           => 16#900#,
        hIndex                          => 0,
        hMask                           => 16#F00#,
        -- Irq                             => 0,
        kBytes                          => 0,
        nCpu                            => 1,
        tBits                           => 30,
        Tech                            => MemTech
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        ahbmi                           => AhbMsti,
        ahbso                           => AhbSo(0),
        ahbsi                           => AhbSi,
        dbgi                            => dbgov,
        dbgo                            => dbgiv,
        dsui                            => dsui,
        dsuo                            => dsuo
    );

    I_Cpu0 : leon3ft
    generic map (
        Bp                              => 0,
        Cached                          => 0,
        ceInj                           => 0,
        CmFt                            => 1,
        Cp                              => 0,
        DcEn                            => 1,
        DisAs                           => 0,
        DlRam                           => 0,
        DlRamSize                       => 1,
        DlRamStart                      => 16#8F#,
        Drepl                           => 0,
        DsetLock                        => 0,
        Dsets                           => 1,
        DsetSize                        => 1,
        Dsnoop                          => 0,
        Dsu                             => 1,
        DtlbNum                         => 8,
        FabTech                         => FabTech,
        FpFt                            => 0,
        Fpu                             => 0,
        hIndex                          => 0,
        IcEn                            => 1,
        iLineSize                       => 4,
        IlRam                           => 0,
        IlRamSize                       => 1,
        IlRamStart                      => 16#8E#,
        Irepl                           => 0,
        iSetLock                        => 0,
        iSets                           => 1,
        iSetSize                        => 1,
        ItlbNum                         => 8,
        IuFt                            => 4,
        LdDel                           => 2,
        Mac                             => 0,
        MemTech                         => MemTech,
        MmuEn                           => 0,
        MmuPgSz                         => 0,
        Netlist                         => 0,
        NoTag                           => 0,
        nWindows                        => 8,
        nWp                             => 0,
        PcLow                           => 2,
        Pwd                             => 1,
        RstAddr                         => 0,
        Smp                             => 0,
        Svt                             => 0,
        Tbuf                            => 0,
        tlb_rep                         => 0,
        tlb_type                        => 1,
        V8                              => 2
    )
    port map (
        ahbo                            => AhbMsto(0),
        ahbi                            => AhbMsti,
        ahbso                           => AhbSo,
        ahbsi                           => AhbSi,
        irqi                            => irqiv(0),
        irqo                            => irqov(0),
        dbgi                            => dbgiv(0),
        dbgo                            => dbgov(0),
        rstn                            => RstM_bn,
        clk                             => ClkM_b,
        gclk                            => ClkM_b
    );
        
    I_ApbUart0 : apbuart
    generic map (
        abits                           => 8,
        console                         => 0,
        FifoSize                        => 1,
        flow                            => 0,
        pAddr                           => 1,
        parity                          => 0,
        pIndex                          => 1,
        pIrq                            => 2,
        pMask                           => 16#FFF#,
        sbits                           => 12
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        apbi                            => ApbSi,
        apbo                            => ApbSo(1),
        uarti                           => ApbUarti,
        uarto                           => ApbUarto
    );

    I_ApbCtrl0 : apbctrl
    generic map (
        AssertErr                       => 0,
        AssertWarn                      => 0,
        cCheck                          => 1,
        Debug                           => 2,
        EnBusMon                        => 0,
        hAddr                           => 16#800#,
        hIndex                          => 2,
        hMask                           => 16#FFF#,
        iCheck                          => 1,
        mCheck                          => 1,
        nSlaves                         => NAPBSLAVES,
        pSlvDisable                     => 0
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        ahbo                            => AhbSo(2),
        ahbi                            => AhbSi,
        apbi                            => ApbSi,
        apbo                            => ApbSo
    );

        
    I_AhbJtag0 : ahbjtag
    generic map (
        ainst                           => 2,
        dInst                           => 3,
        hIndex                          => 3,
        IdCode                          => 9,
        Manf                            => 804,
        nSync                           => 2,
        OePol                           => 1,
        part                            => 0,
        ScanTest                        => 0,
        TckNen                          => 0,
        tech                            => inferred,
        ver                             => 1 -- was 0
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        ahbo                            => AhbMsto(3),
        ahbi                            => AhbMsti,
        tck                             => JtagTck_b,--Gnd(0),
        tms                             => iJtagTms,--Gnd(0),
        tdi                             => iJtagTdi, --Gnd(0),
        tdo                             => oJtagTdo,--open,
        tapo_tck                        => open,
        tapo_tdi                        => open,
        tapo_inst                       => TapoInst,
        tapo_rst                        => open,
        tapo_capt                       => open,
        tapo_shft                       => open,
        tapo_upd                        => open,
        tapi_tdo                        => Gnd(0),
        trst                            => RstM_bn,
        tdoen                           => open,
        tckn                            => Gnd(0)
    );
        
    I_AhbCtrl0 : AhbCtrl
    generic map (
        CfgAddr                         => 16#FF0#,
        CfgMask                         => 16#FF0#,
        Debug                           => 2,
        DefMast                         => 0,
        DevId                           => 0,
        DisIrq                          => 0,
        EnBusMon                        => 0,
        FixBrst                         => 0,
        FpnpEn                          => 0,
        iCheck                          => 1,
        IoAddr                          => 16#FFF#,
        IoEn                            => 0,
        IoMask                          => 16#FFF#,
        NAhbM                           => NAHBMASTERS,
        NAhbS                           => NAHBSLAVES,
        RRobin                          => 1,
        Split                           => 0,
        Timeout                         => 0
    )
    port map (
        rst                             => RstM_bn,
        clk                             => ClkM_b,
        msti                            => AhbMsti,
        msto                            => AhbMsto,
        slvi                            => AhbSi,
        slvo                            => AhbSo
    );
	

    
    
       
    ApbUarti.rxd <= iConsoleRx;
    ApbUarti.ctsn <= Gnd(0);
    ApbUarti.extclk <= Gnd(0);
    
    -- TxTick mux
    oConsoleTx <= ApbUarto.txd when TxTick = '0' else Tick100ms;
    
    dsui.enable <= '1';
    dsui.break <= '0';
       
    gpti.extclk <= '0';
    gpti.dhalt <= '0';
    gpti.wdogen <= '0';
    
    
end architecture;