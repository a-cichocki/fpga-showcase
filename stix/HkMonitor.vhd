library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
library Cbk;
   use Cbk.Stix_pkg.all;

entity HkMonitor is
    generic(
        PROT_CHANNEL_NUMBER : natural := 9;
        UNLOCKING_TOKEN     : integer := 16#A5#;
        TRACK_PRESCALER     : integer range 0 to 255 := 9;
        DPU_1V5_C_MAX       : integer range 0 to 4095 := 2282;
        DPU_2V5_C_MAX       : integer range 0 to 4095 := 3416;
        DPU_3V3_C_MAX       : integer range 0 to 4095 := 3826;
        DPU_SPW_C_MAX       : integer range 0 to 4095 := 3826;
        DET_C_MAX           : integer range 0 to 4095 := 546;
        ATT_C_MAX           : integer range 0 to 4095 := 751;
        ATT_V_MAX           : integer range 0 to 4095 := 4095;
        HV_01_V_MAX         : integer range 0 to 4095 := 2323;
        HV_17_V_MAX         : integer range 0 to 4095 := 2323
    );
    port(
        iRst_n              : in  std_logic;
        iClk                : in  std_logic;
        i800nsTick          : in  std_logic;
        oAdcCs_n            : out std_logic_vector(1 to 2);
        oAdcDin             : out std_logic;
        oAdcSclk            : out std_logic;
        iAdcDout            : in  std_logic;
        oAdcVal             : out std_logic_vector(11 downto 0);
        oAdcReady           : out std_logic;
        oIrq                : out std_logic;
        oThresholds         : out HkThresholdVector_t;
        oProtStat           : out std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        iProtClear          : in  std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        oProtEn             : out std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        iProtEn             : in  std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        iIrqEn              : in  std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        iAdcGo              : in  std_logic;                                      -- Initiates on demand read
        iAdcAddress         : in  std_logic_vector(5 downto 0);
        iToken              : in  std_logic_vector(7 downto 0);
        iTokenWrStb         : in  std_logic;
        iThreshWrStb        : in  std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        iThresholds         : in  HkThresholdVector_t;
        oMux                : out std_logic_vector(1 downto 0);
        oBadSample          : out std_logic_vector(11 downto 0)
    );
end entity;

architecture rtl of HkMonitor is
    -- constant PROT_CHANNEL_NUMBER : natural := 22;
    
    constant DELAY_MUX              : unsigned(4 downto 0) :=  "11100";
    constant ZEROS_VEC              : std_logic_vector(1 to PROT_CHANNEL_NUMBER) := (others => '0');
    
	signal AdcCs                    : std_logic;
    signal Rdy                      : std_logic;
    signal AdcVal                   : std_logic_vector(11 downto 0);
    signal VCpOver                  : std_logic_vector(1 to PROT_CHANNEL_NUMBER);
    
    type adcState_t is (stIdle, stSetAddr,stADCgoWait, stADCgo,stADCWait,stADCget,stADCOnDemandGet, stReady, stSecReady, stAllReady);
    type adcOVCPState_t is(stOff, stOn, stOVCPactive);
    
    type HkCtrlRec_t is record
        AdcState            : adcState_t;
        Thresholds          : HkThresholdVector_t;                          -- tresholds for over/under current/voltage        
        ProtEn              : std_logic_vector(1 to PROT_CHANNEL_NUMBER);  -- over/under current/voltage detection register
        Overload1           : std_logic_vector(1 to PROT_CHANNEL_NUMBER);  -- over/under current/voltage detection register
        Overload2           : std_logic_vector(1 to PROT_CHANNEL_NUMBER);  -- over/under current/voltage detection register
        ProtStat            : std_logic_vector(1 to PROT_CHANNEL_NUMBER);
        Irq                 : std_logic;
        OnDemandRead        : std_logic;                                    -- start for on demand read
        nextReadOnDemand    : std_logic;
        AdcAddress          : std_logic_vector(5 downto 0);                 -- address for read on demand
        OnDemandReady       : std_logic;                                    -- demand read ready signal
        lastRead            : std_logic;                                    -- indicates last read in a batch for single ADC
        validAdc            : std_logic;           
        adcGo               : std_logic;           
        nextAddr            : unsigned(5 downto 0);                         -- address to read from (ADC_NUM, ADC_ADDR, MUX_ADDR)
        readNumber          : unsigned(5 downto 0);                         -- index of read (used to determine last read)
        adcVal              : std_logic_vector(11 downto 0);                -- ADC value from read on demand                                  -- indicates dummy read (to set adc addr)
        Token               : std_logic_vector(7 downto 0);
        BadSample           : std_logic_vector(11 downto 0);                -- Last ADC value that exceeded corresponding threshold.
        MuxDelay            : unsigned(4 downto 0);
    end record;
   
    signal r, r_in  : HkCtrlRec_t;

begin

    I_ADC: cbk.Stix_pkg.HkAdcCtrl
    port map(
        iClk      => iClk,
        iRst_n    => iRst_n,
        iSclkTick => i800nsTick,
        iGo       => r.adcGo,
        iAddr     => std_logic_vector(r.nextAddr(4 downto 2)),
        oSclk     => oAdcSclk,
        oCs_n     => AdcCs,
        oDin      => oAdcDin,
        iDout     => iAdcDout,
        oDataVal  => AdcVal,
        oRdy      => Rdy
    );
   
    P_REG: process(iClk, iRst_n)
    begin
        if(iRst_n = '0') then
            r.AdcState          <= stIdle;
            r.AdcAddress        <= (others => '0');
            r.Thresholds(1)     <= std_logic_vector(to_unsigned(DPU_1V5_C_MAX,12));    
            r.Thresholds(2)     <= std_logic_vector(to_unsigned(DPU_2V5_C_MAX,12));    
            r.Thresholds(3)     <= std_logic_vector(to_unsigned(DPU_3V3_C_MAX,12));    
            r.Thresholds(4)     <= std_logic_vector(to_unsigned(DPU_SPW_C_MAX,12));        
            r.Thresholds(5)     <= std_logic_vector(to_unsigned(DET_C_MAX,12));        
            r.Thresholds(6)     <= std_logic_vector(to_unsigned(ATT_C_MAX,12));    
            r.Thresholds(7)     <= std_logic_vector(to_unsigned(ATT_V_MAX,12));        
            r.Thresholds(8)     <= std_logic_vector(to_unsigned(HV_17_V_MAX,12));      
            r.Thresholds(9)     <= std_logic_vector(to_unsigned(HV_01_V_MAX,12));
            r.Irq               <= '0';
            r.ProtEn            <= (others => '0');
            r.OnDemandRead      <= '0';
            r.OnDemandReady     <= '0'; 
            r.nextAddr          <= (others => '0');
            r.adcVal            <= (others => '0');
            r.overload1         <= (others => '0');
            r.overload2         <= (others => '0');
            r.readNumber        <= (others => '0');
            r.lastRead          <= '0';
            r.validAdc          <= '0';
            r.nextReadOnDemand  <= '0';  
            r.ProtStat          <= (others => '0');
            r.Token             <= (others => '0');
            r.BadSample         <= (others => '0');
            r.adcGo             <= '0';
            r.MuxDelay          <= DELAY_MUX;
        elsif(iClk'event and iClk = '1') then
            r <= r_in;
        end if;
    end process;

    P_COMB: process(r, Rdy, adcVal, i800nsTick, iIrqEn, iAdcGo, iAdcAddress, iTokenWrStb, iToken, iThreshWrStb, iThresholds, iProtEn, VCpOver, iProtClear)
        variable v : HkCtrlRec_t;
    begin
        v := r; 
        
        if(iTokenWrStb = '1') then
            v.Token := iToken;
        end if;
        
        for i in 1 to PROT_CHANNEL_NUMBER loop
            if( VCpOver(i) = '1') then      -- only protect from overcurrent or VCpUnder(i)
                v.ProtStat(i)   := '1';
            end if;
            
            -- clear has higher priority than vcpOver, but clear should be only a pulse
            if(iProtClear(i) = '1') then    -- clear prot stat
                v.ProtStat(i)   := '0';
                v.overload1(i)  := '0';
            end if;
            
            if(iThreshWrStb(i) = '1') then
                if(r.Token = std_logic_vector(to_unsigned(UNLOCKING_TOKEN, 8))) then
                    v.Thresholds(i) := iThresholds(i);
                end if;
                v.Token := (others => '0');
            end if;    
            
            if(iThreshWrStb(i) = '1') then
                if(r.ProtEn(i) = '1') then
                    if(r.Token = std_logic_vector(to_unsigned(UNLOCKING_TOKEN, 8))) then
                        v.ProtEn(i)     := iProtEn(i);
                    end if;
                else
                    v.ProtEn(i)     := iProtEn(i);
                end if;
                v.Token := (others => '0');
            end if;
            
        end loop;
        
        v.adcGo := '0';
            
        if(iAdcGo = '1') then
            v.AdcAddress        := iAdcAddress;
            v.OnDemandRead      := '1';
            v.OnDemandReady     := '0';
        end if;
        
        case (r.AdcState) is
            when stIdle =>
                v.AdcState      := stADCgoWait;
                v.lastRead      := '0';
                v.readNumber    := (others => '0');
                v.MuxDelay      := DELAY_MUX;
                v.adcGo         := '0';
            when stADCgoWait =>
                if(i800nsTick = '1') then
                    v.MuxDelay := r.MuxDelay - 1;
                    if(r.MuxDelay = 0) then
                        v.AdcState      := stADCgo;
                        v.adcGo         := '1';
                    end if;
                end if;
            when stADCgo =>
                v.AdcState      := stADCWait;
                v.adcGo         := '0';
            when stADCWait =>
                if (Rdy = '1') then      -- if Rdy changed to 1
                    if(r.nextReadOnDemand = '1') then
                        v.AdcState  := stADCOnDemandGet;
                    else
                        v.AdcState  := stADCget;
                    end if;
                end if;
                v.adcGo         := '0';
            when stADCget => 
                v.AdcState      := stADCgoWait;       

                v.readNumber        := r.readNumber + 1;
                if(r.nextAddr(4 downto 0) = "00010") then
                    v.nextAddr(4 downto 2)  := r.nextAddr(4 downto 2) + 1;
                    v.nextAddr(1 downto 0)  := r.nextAddr(1 downto 0) + 1;
                elsif(r.nextAddr(4 downto 2) = "000") then
                    v.nextAddr(1 downto 0)  := r.nextAddr(1 downto 0) + 1;
                else
                    v.nextAddr(4 downto 2)  := r.nextAddr(4 downto 2) + 1;
                end if;      

                -- one ADC done
                if(r.readNumber >= 10) and (r.nextAddr(5) = '0') then
                    v.nextAddr(4 downto 0)  := (others => '0');
                    v.AdcState              := stReady;
                end if;
                
                if(r.readNumber >= PROT_CHANNEL_NUMBER-2) then
                    v.nextAddr(4 downto 0)  := (others => '0');
                end if;
                
                -- both ADC done or ALL CHANNELS done
                if(r.readNumber >= PROT_CHANNEL_NUMBER-1) then       -- and (r.nextAddr(5) = '1')
                    if(r.OnDemandRead = '1') then
                        v.AdcState          := stSecReady;
                    else
                        v.AdcState          := stAllReady;
                    end if;
                end if;
                
                -- set next read as last
                if(r.readNumber = 8 ) then --or r.readNumber = 19) then
                    v.lastRead := '1';
                end if;
                   
                if (adcVal > r.Thresholds(to_integer(r.readNumber)+1)) then
                    v.overload1(to_integer(r.readNumber)+1) := r.validAdc;
                    v.BadSample := adcVal;
                else
                    v.overload1(to_integer(r.readNumber)+1) := '0';
                end if;
                v.overload2(to_integer(r.readNumber)+1) := r.overload1(to_integer(r.readNumber)+1);
                v.validAdc := '1';
 
            when stADCOnDemandGet =>
                v.AdcState := stADCgoWait;       

                v.readNumber        := r.readNumber + 1;
                v.nextAddr(4 downto 2)  := (others => '0');
                
                if(r.lastRead = '1') then
                    v.AdcState          := stAllReady;
                    v.OnDemandReady     := '1';
                end if;
                
                -- set next read as last
                if(v.lastRead = '0') then
                    v.lastRead          := '1';
                end if;
                
                -- write read value to regs, clear on demand
                v.adcVal            := adcVal;
             
            when stReady =>
                if(Rdy = '0') then
                    v.AdcState          := stADCgoWait;
                end if;

                v.nextAddr          := (others => '0');
                v.nextAddr(5)       := '1';
                v.lastRead          := '0';   
                               
            when stSecReady =>
                if(Rdy = '0') then
                    v.AdcState          := stADCgoWait;
                end if;
                v.nextReadOnDemand  := '1';
                v.OnDemandRead      := '0';
                v.nextAddr          := unsigned(r.AdcAddress(5 downto 0));
                v.lastRead          := '0';   

            when stAllReady =>            
                v.nextAddr      := (others => '0');
                v.readNumber    := (others => '0');
                if(Rdy = '0') then
                    v.AdcState      := stIdle;
                end if;
                v.nextReadOnDemand := '0';
                v.lastRead      := '0';   
                
            when others =>
                v.AdcState := stIdle;
                v.adcGo    := '0';
        end case;
        
        v.Irq   := '0';
        if( (r.ProtStat and iIrqEn) /= ZEROS_VEC) then
            v.Irq   := '1';
        end if;
        
        
        r_in <= v;
    end process;
    
    VCpOver     <= (r.overload1 and r.overload2);              --KB detection is done all the time
    
    oAdcReady   <= r.OnDemandReady;
    oAdcVal     <= r.adcVal;
    oAdcCs_n(1) <= AdcCs when r.nextAddr(5) = '0' else '1';
    oAdcCs_n(2) <= AdcCs when r.nextAddr(5) = '1' else '1';  
    oMux        <= std_logic_vector(r.nextAddr(1 downto 0));
    
    oThresholds <= r.Thresholds;
    oProtEn     <= r.ProtEn;
    oProtStat   <= r.ProtStat;
    oIrq        <= r.Irq;
    oBadSample  <= r.BadSample;
  
    
end architecture;