--------------------------------------------------------------------------------
-- Project           :  STIX/IDPU/EM
-- Drawing           :  
-- File title        :  
-- Design unit name  :  HkCtrl
-- Authors           :  A. Cichocki
-- Company           :  Centrum Badañ Kosmicznych
-- Current revision  :  1 (2015-02-25)
--------------------------------------------------------------------------------
-- Description       : 
--------------------------------------------------------------------------------


library Cbk;
    use Cbk.Stix_pkg.all;
    use Cbk.Misc_pkg.all;

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library techmap;
    use techmap.gencomp.all;    

entity HkCtrl is 
    generic (
        Technology                      : integer := axcel;
        HV_LIMIT                        : integer := 143;
        PROT_CHANNEL_NUMBER             : integer := 9;
        UNLOCKING_TOKEN                 : integer := 16#A5#;
        TRACK_PRESCALER                 : integer range 0 to 255 := 9;
        DPU_1V5_C_MAX                   : integer range 0 to 4095 := 2282;
        DPU_2V5_C_MAX                   : integer range 0 to 4095 := 3416;
        DPU_3V3_C_MAX                   : integer range 0 to 4095 := 3826;
        DPU_SPW_C_MAX                   : integer range 0 to 4095 := 3826;
        DET_C_MAX                       : integer range 0 to 4095 := 546;
        ATT_C_MAX                       : integer range 0 to 4095 := 751;
        ATT_V_MAX                       : integer range 0 to 4095 := 4095;
        HV_01_V_MAX                     : integer range 0 to 4095 := 2323;
        HV_17_V_MAX                     : integer range 0 to 4095 := 2323
    );
    port (
        iClk                            : in  std_logic;
        iRst_n                          : in  std_logic;
        i800nsTick                      : in  std_logic;
        oAdcDin                         : out std_logic;
        iAdcDout                        : in  std_logic;
        oAdcCs_n                        : out std_logic_vector(1 to 2);
        oAdcSclk                        : out std_logic;
        oSpwEn                          : out std_logic_vector(1 downto 0);
        oPsuHvEnable                    : out std_logic_vector(1 to 2);
        oAttnEn                         : out std_logic;
        oPsuLvEn                        : out std_logic;
        oPsuHvSet                       : out std_logic_vector(1 to 2);
        oApb                            : out ApbHkIn_t;
        iApb                            : in  ApbHkOut_t;
        oAs                             : out AspHkIn_t;
        iAs                             : in  AspHkOut_t;
        oMux                            : out std_logic_vector(1 downto 0);
        oDetEn                          : out std_logic
    );

end entity;

architecture Generated of HkCtrl is
    signal ProtStat         : std_logic_vector(1 to PROT_CHANNEL_NUMBER);  
    signal ProtEn           : std_logic_vector(1 to PROT_CHANNEL_NUMBER); 
    signal LvEn             : std_logic;
    signal SpwEn            : std_logic_vector(1 downto 0);
    signal PowerStat        : std_logic_vector(4 downto 0);  
    signal PwmEns           : std_logic_vector(1 downto 0);
	signal PwmVals          : Vector12Vector_t(1 to 2);
	signal Pwms             : std_logic_vector(1 downto 0);    
    
    signal HkAdcVal         : std_logic_vector(11 downto 0);
    signal HkAdcGo          : std_logic;
    signal HkAdcAddress     : std_logic_vector(5 downto 0);
    signal HkAdcReady       : std_logic;
    
    constant SpwCAddr       : integer := 4;
    
    --type LvState_t is (LvOff_s, LvOn_s);
    --type SpwState_t is (SpwOff_s, SpwOn_s);
    
    type ClearContext_t is record
        LvSwitch        : std_logic;
        SpwSwitch       : std_logic;
    end record;
    
    signal r, rIn : ClearContext_t;
    
begin
-- Component Instances
    
    I_U_ScanCtrl: Cbk.Stix_pkg.ScanCtrl 
        generic map(
            Technology              => Technology
        )
        port map(
            oAdcVal                 =>    oApb.AdcVal,                                           
            oAdcReady               =>    oApb.AdcReady,                           
            iAsAdcVal               =>    iAs.Val,
            iAsAdcReady             =>    iAs.Ready,                           
            oAsAdcAddress           =>    oAs.TempAddr,                           
            oAsAdcGo                =>    oAs.Read,                           
            iAdcAddr                =>    iApb.AdcAddress,                           
            iHkAdcVal               =>    HkAdcVal,                           
            oHkAdcGo                =>    HkAdcGo,                           
            oHkAdcAddress           =>    HkAdcAddress,                           
            iHkAdcReady             =>    HkAdcReady,                           
            iClk                    =>    iClk,
            iRst_n                  =>    iRst_n
        );   
    
    I_U_hkmonitor: Cbk.Stix_pkg.hkmonitor
        generic map (        
            PROT_CHANNEL_NUMBER     => PROT_CHANNEL_NUMBER,
            UNLOCKING_TOKEN         => UNLOCKING_TOKEN,      
            TRACK_PRESCALER         => TRACK_PRESCALER,
            DPU_1V5_C_MAX           => DPU_1V5_C_MAX, 
            DPU_2V5_C_MAX           => DPU_2V5_C_MAX, 
            DPU_3V3_C_MAX           => DPU_3V3_C_MAX, 
            DPU_SPW_C_MAX           => DPU_SPW_C_MAX, 
            DET_C_MAX               => DET_C_MAX,     
            ATT_C_MAX               => ATT_C_MAX,     
            ATT_V_MAX               => ATT_V_MAX,     
            HV_01_V_MAX             => HV_01_V_MAX,   
            HV_17_V_MAX             => HV_17_V_MAX   
        )
        port map (
            iClk                     => iClk,
            iRst_n                   => iRst_n,
            i800nsTick               => i800nsTick,
            iAdcDout                 => iAdcDout,
            oAdcCs_n                 => oAdcCs_n,
            oAdcDin                  => oAdcDin,
            oAdcSclk                 => oAdcSclk,
            oMux                     => oMux,
            oAdcVal                  => HkAdcVal,      
            oAdcReady                => HkAdcReady,
            oIrq                     => oApb.Irq,
            oThresholds              => oApb.Thresholds,
            oProtStat                => ProtStat,
            oProtEn                  => ProtEn,
            iProtEn                  => iApb.ProtEn,
            iIrqEn                   => iApb.IrqEn,
            iAdcGo                   => HkAdcGo,
            iAdcAddress              => HkAdcAddress,
            iToken                   => iApb.Token,
            iTokenWrStb              => iApb.TokenWrStb,
            iThreshWrStb             => iApb.ThreshWrStb,
            iThresholds              => iApb.Thresholds,
            iProtClear               => iApb.ProtClear,
            oBadSample               => oApb.BadSample
        );
    
    
    P_KillLv : process (ProtEn, ProtStat)
    begin
        
    end process;
    
    
    P_ClearCmb : process (r, iApb, ProtEn, ProtStat)
        variable v : ClearContext_t;
    begin
        v := r;
        
        if(iApb.LvEn = '0') then
            v.LvSwitch  := '1';
        end if;
        
        if(iApb.SpwEn = "00") then
            v.SpwSwitch := '1';
        end if;

        for i in 1 to PROT_CHANNEL_NUMBER loop
            if (ProtEn(i) and ProtStat(i)) = '1' then
                v.LvSwitch  := '0';
                if (i = SpwCAddr) then
                    v.SpwSwitch := '0';
                end if;
            end if;            
        end loop;
        
        rIn <= v;
             
    end process;
    
    P_ClearSeq : process (iClk, iRst_n)
    begin
        if (iRst_n = '0') then
            r.LvSwitch      <= '1';
            r.SpwSwitch     <= '1';
        elsif(rising_edge(iClk)) then
            r               <= rIn;
        end if;
    end process;
    

    SpwEn(0)        <= iApb.SpwEn(0) and r.SpwSwitch;
    SpwEn(1)        <= iApb.SpwEn(1) and r.SpwSwitch;
    LvEn            <= iApb.LvEn     and r.LvSwitch;   
    PowerStat       <= SpwEn(1) & SpwEn(0) & PwmEns(1) & PwmEns(0) & LvEn;
        
    oSpwEn          <= SpwEn;
    oDetEn          <= LvEn;
    oAttnEn         <= LvEn;
    oPsuLvEn        <= LvEn;    

    
    oApb.ProtStat   <= ProtStat;
    oApb.ProtEn     <= ProtEn;
    oApb.PowerStat  <= PowerStat;
    
    PwmVals(1)      <= "0000" & iApb.Hv0116Val when to_integer(unsigned(iApb.Hv0116Val)) < HV_LIMIT else "0000" & std_logic_vector(to_unsigned(HV_LIMIT,8));
    PwmVals(2)      <= "0000" & iApb.Hv1732Val when to_integer(unsigned(iApb.Hv1732Val)) < HV_LIMIT else "0000" & std_logic_vector(to_unsigned(HV_LIMIT,8)); 
    PwmEns(0)       <= iApb.Hv0116en and LvEn;
    PwmEns(1)       <= iApb.Hv1732en and LvEn;
    
    oPsuHvEnable(1) <= PwmEns(0); 
    oPsuHvEnable(2) <= PwmEns(1);  
    oPsuHvSet(1)    <= Pwms(0) and LvEn;
    oPsuHvSet(2)    <= Pwms(1) and LvEn;   
    
    I_PWM: MultiPwm 
    generic map(
        NChannels   => 2,
        NBit        => 8
    )
    port map(
        iClk 	    => iClk,
        iRst_n 	    => iRst_n,
        iEns	    => PwmEns,
        iPwmVals    => PwmVals,
        oPwms       => Pwms
    );

    
end architecture;