------------------------------------------------------------
-- VHDL u_engine_inside2
-- 2019 7 26 11 46 16
-- Created By "DXP VHDL Generator"
-- "Copyright (c) 2002-2014 Altium Limited"
-- Product Version: 17.1.9.592
------------------------------------------------------------

------------------------------------------------------------
-- VHDL u_engine_inside2
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

--synthesis translate_off
Library GENERIC_LIB;
Use     GENERIC_LIB.all;

--synthesis translate_on
Entity semicap_engine Is
  port
  (
    iClk                     : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iClk
    iConfigRegIrqMask        : In    STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Port|PrimaryId=iConfigRegIrqMask[2..0]
    iConfigRegSemEn          : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iConfigRegSemEn
    iHwIcapIrq               : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iHwIcapIrq
    iHwIcapRequest           : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iHwIcapRequest
    iMinVoterRegClearStrobe  : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iMinVoterRegClearStrobe
    iMonitorRegByte          : In    STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=iMonitorRegByte[7..0]
    iMonitorRegGetByte       : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iMonitorRegGetByte
    iMonitorRegPutByte       : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iMonitorRegPutByte
    iMonitorRegWriteStrobe   : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iMonitorRegWriteStrobe
    iResetsReg               : In    STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Port|PrimaryId=iResetsReg[2..0]
    iRpMinVoter              : In    STD_LOGIC_VECTOR(3 Downto 0); -- ObjectKind=Port|PrimaryId=iRpMinVoter[3..0]
    iRst_n                   : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iRst_n
    iSemCapRequest           : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemCapRequest
    iSemCmdBusy              : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemCmdBusy
    iSemMonRxRead            : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemMonRxRead
    iSemMonTxData            : In    STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=iSemMonTxData[7..0]
    iSemMonTxWrite           : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemMonTxWrite
    iSemStatusclassification : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusclassification
    iSemStatuscorrection     : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatuscorrection
    iSemStatusdetectOnly     : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusdetectOnly
    iSemStatusdiagnosticScan : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusdiagnosticScan
    iSemStatusessential      : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusessential
    iSemStatusheartbeat      : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusheartbeat
    iSemStatusinitialization : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusinitialization
    iSemStatusinjection      : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusinjection
    iSemStatusobservation    : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusobservation
    iSemStatusuncorrectable  : In    STD_LOGIC;              -- ObjectKind=Port|PrimaryId=iSemStatusuncorrectable
    iTblAddReg               : In    STD_LOGIC_VECTOR(31 Downto 0); -- ObjectKind=Port|PrimaryId=iTblAddReg[31..0]
    oConfigRegIrqMask        : Out   STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Port|PrimaryId=oConfigRegIrqMask[2..0]
    oConfigRegSemEn          : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oConfigRegSemEn
    oDevInfoId               : Out   STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=oDevInfoId[7..0]
    oDevInfoVersionMajor     : Out   STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=oDevInfoVersionMajor[7..0]
    oDevInfoVersionMinor     : Out   STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=oDevInfoVersionMinor[7..0]
    oHwIcapEos               : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oHwIcapEos
    oHwIcapGrant             : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oHwIcapGrant
    oHwIcapRelinquish        : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oHwIcapRelinquish
    oIRq                     : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oIRq
    oMinVoterRegCmpStat      : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oMinVoterRegCmpStat
    oMinVoterRegTmrStat      : Out   STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Port|PrimaryId=oMinVoterRegTmrStat[2..0]
    oMonitorRegByte          : Out   STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=oMonitorRegByte[7..0]
    oMuxSemSelect            : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oMuxSemSelect
    oRpReset_n               : Out   STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Port|PrimaryId=oRpReset_n[2..0]
    oSemAuxErrorCrEs         : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemAuxErrorCrEs
    oSemAuxErrorCrNe         : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemAuxErrorCrNe
    oSemAuxErrorUc           : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemAuxErrorUc
    oSemCapGrant             : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemCapGrant
    oSemCapRelinquish        : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemCapRelinquish
    oSemCmdCode              : Out   STD_LOGIC_VECTOR(39 Downto 0); -- ObjectKind=Port|PrimaryId=oSemCmdCode[39..0]
    oSemCmdStrobe            : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemCmdStrobe
    oSemFetchTblAddr         : Out   STD_LOGIC_VECTOR(31 Downto 0); -- ObjectKind=Port|PrimaryId=oSemFetchTblAddr[31..0]
    oSemMonRxData            : Out   STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Port|PrimaryId=oSemMonRxData[7..0]
    oSemMonRxEmpty           : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemMonRxEmpty
    oSemMonTxFull            : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oSemMonTxFull
    oStatusRegFifoCmdFull    : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oStatusRegFifoCmdFull
    oStatusRegFifoStatFull   : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oStatusRegFifoStatFull
    oStatusRegMonEmpty       : Out   STD_LOGIC;              -- ObjectKind=Port|PrimaryId=oStatusRegMonEmpty
    oStatusRegState          : Out   STD_LOGIC_VECTOR(3 Downto 0); -- ObjectKind=Port|PrimaryId=oStatusRegState[3..0]
    oTblAddReg               : Out   STD_LOGIC_VECTOR(31 Downto 0) -- ObjectKind=Port|PrimaryId=oTblAddReg[31..0]
  );
End entity semicap_engine;
------------------------------------------------------------

------------------------------------------------------------
Architecture Structure Of semicap_engine Is
   Component icaparbiter                                     -- ObjectKind=Sheet Symbol|PrimaryId=U_icaparbiter
      port
      (
        iClk              : in  STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iClk
        iExtCapRequest    : in  STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iExtCapRequest
        iRst_n            : in  STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iRst_n
        iSemCapRequest    : in  STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iSemCapRequest
        iSemEn            : in  STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iSemEn
        oExtCapGrant      : out STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oExtCapGrant
        oExtCapRelinquish : out STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oExtCapRelinquish
        oSemCapGrant      : out STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemCapGrant
        oSemCapRelinquish : out STD_LOGIC;                   -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemCapRelinquish
        oSemEnStat        : out STD_LOGIC                    -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemEnStat
      );
   End Component;

   Component semicap_fsm                                     -- ObjectKind=Sheet Symbol|PrimaryId=SEMICAP_FSM
      port
      (
        iArbSemEnStat            : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iArbSemEnStat
        iClk                     : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iClk
        iFifoMonCmdByte          : in  STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iFifoMonCmdByte[7..0]
        iFifoMonCmdPut           : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iFifoMonCmdPut
        iMinVoter                : in  STD_LOGIC_VECTOR(3 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iMinVoter[3..0]
        iMinVoterClear           : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iMinVoterClear
        iRst_n                   : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iRst_n
        iSemEn                   : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemEn
        iSemMonRxRead            : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonRxRead
        iSemMonTxData            : in  STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonTxData[7..0]
        iSemMonTxWrite           : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonTxWrite
        iSemStatusclassification : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusclassification
        iSemStatuscorrection     : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatuscorrection
        iSemStatusdetectOnly     : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusdetectOnly
        iSemStatusdiagnosticScan : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusdiagnosticScan
        iSemStatusessential      : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusessential
        iSemStatusheartbeat      : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusheartbeat
        iSemStatusinitialization : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusinitialization
        iSemStatusinjection      : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusinjection
        iSemStatusobservation    : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusobservation
        iSemStatusuncorrectable  : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusuncorrectable
        oCmpStatus               : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oCmpStatus
        oFifoMonCmdFull          : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonCmdFull
        oFifoMonStatByte         : out STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatByte[7..0]
        oFifoMonStatEmpty        : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatEmpty
        oFifoMonStatFull         : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatFull
        oFifoMonStatGet          : in  STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatGet
        oIrq                     : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oIrq
        oSemEnStat               : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemEnStat
        oSemMonRxData            : out STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonRxData[7..0]
        oSemMonRxEmpty           : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonRxEmpty
        oSemMonTxFull            : out STD_LOGIC;            -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonTxFull
        oSemState                : out STD_LOGIC_VECTOR(3 Downto 0); -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemState[3..0]
        oVoterStatus             : out STD_LOGIC_VECTOR(2 Downto 0) -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oVoterStatus[2..0]
      );
   End Component;


    Signal NamedSignal_GND1_BUS                      : STD_LOGIC_VECTOR(39 Downto 0); -- ObjectKind=Net|PrimaryId=GND1_BUS[39..0]
    Signal NamedSignal_IRQEN                         : STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Net|PrimaryId=iConfigRegIrqMask[2..0]
    Signal NamedSignal_oDevInfoId                    : STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Net|PrimaryId=oDevInfoId[7..0]
    Signal NamedSignal_oDevInfoVersionMajor          : STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Net|PrimaryId=oDevInfoVersionMajor[7..0]
    Signal NamedSignal_oDevInfoVersionMinor          : STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Net|PrimaryId=oDevInfoVersionMinor[7..0]
    Signal PinSignal_SEMICAP_FSM_oCmpStatus          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oCmpStatus
    Signal PinSignal_SEMICAP_FSM_oFifoMonCmdFull     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oFifoMonCmdFull
    Signal PinSignal_SEMICAP_FSM_oFifoMonStatByte    : STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Net|PrimaryId=oMonitorRegByte[7..0]
    Signal PinSignal_SEMICAP_FSM_oFifoMonStatEmpty   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU3_I
    Signal PinSignal_SEMICAP_FSM_oFifoMonStatFull    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU4_I1
    Signal PinSignal_SEMICAP_FSM_oIrq                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU5_I1
    Signal PinSignal_SEMICAP_FSM_oSemEnStat          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oSemEnStat
    Signal PinSignal_SEMICAP_FSM_oSemMonRxData       : STD_LOGIC_VECTOR(7 Downto 0); -- ObjectKind=Net|PrimaryId=oSemMonRxData[7..0]
    Signal PinSignal_SEMICAP_FSM_oSemMonRxEmpty      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oSemMonRxEmpty
    Signal PinSignal_SEMICAP_FSM_oSemMonTxFull       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oSemMonTxFull
    Signal PinSignal_SEMICAP_FSM_oSemState           : STD_LOGIC_VECTOR(3 Downto 0); -- ObjectKind=Net|PrimaryId=oStatusRegState[3..0]
    Signal PinSignal_SEMICAP_FSM_oVoterStatus        : STD_LOGIC_VECTOR(2 Downto 0); -- ObjectKind=Net|PrimaryId=oMinVoterRegTmrStat[2..0]
    Signal PinSignal_U_icaparbiter_oExtCapGrant      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oExtCapGrant
    Signal PinSignal_U_icaparbiter_oExtCapRelinquish : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oExtCapRelinquish
    Signal PinSignal_U_icaparbiter_oSemCapGrant      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oSemCapGrant
    Signal PinSignal_U_icaparbiter_oSemCapRelinquish : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oSemCapRelinquish
    Signal PinSignal_U_icaparbiter_oSemEnStat        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=iArbSemEnStat
    Signal PinSignal_U1_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU1_O
    Signal PinSignal_U2_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O
    Signal PinSignal_U3_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU3_O
    Signal PinSignal_U4_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU4_O
    Signal PinSignal_U5_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU5_O
    Signal PinSignal_U6_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=oIRq
    Signal PinSignal_U7_O                            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU6_I1
    Signal PowerSignal_GND                           : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND

Begin
    U_icaparbiter : icaparbiter                              -- ObjectKind=Sheet Symbol|PrimaryId=U_icaparbiter
      Port Map
      (
        iClk              => iClk,                           -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iClk
        iExtCapRequest    => iHwIcapRequest,                 -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iExtCapRequest
        iRst_n            => iRst_n,                         -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iRst_n
        iSemCapRequest    => iSemCapRequest,                 -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iSemCapRequest
        iSemEn            => iConfigRegSemEn,                -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-iSemEn
        oExtCapGrant      => PinSignal_U_icaparbiter_oExtCapGrant, -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oExtCapGrant
        oExtCapRelinquish => PinSignal_U_icaparbiter_oExtCapRelinquish, -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oExtCapRelinquish
        oSemCapGrant      => PinSignal_U_icaparbiter_oSemCapGrant, -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemCapGrant
        oSemCapRelinquish => PinSignal_U_icaparbiter_oSemCapRelinquish, -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemCapRelinquish
        oSemEnStat        => PinSignal_U_icaparbiter_oSemEnStat -- ObjectKind=Sheet Entry|PrimaryId=icapArbiter.vhd-oSemEnStat
      );

    SEMICAP_FSMEEMUNFWT : semicap_fsm                        -- ObjectKind=Sheet Symbol|PrimaryId=SEMICAP_FSM
      Port Map
      (
        iArbSemEnStat            => PinSignal_U_icaparbiter_oSemEnStat, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iArbSemEnStat
        iClk                     => iClk,                    -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iClk
        iFifoMonCmdByte          => iMonitorRegByte,         -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iFifoMonCmdByte[7..0]
        iFifoMonCmdPut           => PinSignal_U2_O,          -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iFifoMonCmdPut
        iMinVoter                => iRpMinVoter,             -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iMinVoter[3..0]
        iMinVoterClear           => iMinVoterRegClearStrobe, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iMinVoterClear
        iRst_n                   => iRst_n,                  -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iRst_n
        iSemEn                   => iConfigRegSemEn,         -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemEn
        iSemMonRxRead            => iSemMonRxRead,           -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonRxRead
        iSemMonTxData            => iSemMonTxData,           -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonTxData[7..0]
        iSemMonTxWrite           => iSemMonTxWrite,          -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemMonTxWrite
        iSemStatusclassification => iSemStatusclassification, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusclassification
        iSemStatuscorrection     => iSemStatuscorrection,    -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatuscorrection
        iSemStatusdetectOnly     => iSemStatusdetectOnly,    -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusdetectOnly
        iSemStatusdiagnosticScan => iSemStatusdiagnosticScan, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusdiagnosticScan
        iSemStatusessential      => iSemStatusessential,     -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusessential
        iSemStatusheartbeat      => iSemStatusheartbeat,     -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusheartbeat
        iSemStatusinitialization => iSemStatusinitialization, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusinitialization
        iSemStatusinjection      => iSemStatusinjection,     -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusinjection
        iSemStatusobservation    => iSemStatusobservation,   -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusobservation
        iSemStatusuncorrectable  => iSemStatusuncorrectable, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-iSemStatusuncorrectable
        oCmpStatus               => PinSignal_SEMICAP_FSM_oCmpStatus, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oCmpStatus
        oFifoMonCmdFull          => PinSignal_SEMICAP_FSM_oFifoMonCmdFull, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonCmdFull
        oFifoMonStatByte         => PinSignal_SEMICAP_FSM_oFifoMonStatByte, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatByte[7..0]
        oFifoMonStatEmpty        => PinSignal_SEMICAP_FSM_oFifoMonStatEmpty, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatEmpty
        oFifoMonStatFull         => PinSignal_SEMICAP_FSM_oFifoMonStatFull, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatFull
        oFifoMonStatGet          => PinSignal_U1_O,          -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oFifoMonStatGet
        oIrq                     => PinSignal_SEMICAP_FSM_oIrq, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oIrq
        oSemEnStat               => PinSignal_SEMICAP_FSM_oSemEnStat, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemEnStat
        oSemMonRxData            => PinSignal_SEMICAP_FSM_oSemMonRxData, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonRxData[7..0]
        oSemMonRxEmpty           => PinSignal_SEMICAP_FSM_oSemMonRxEmpty, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonRxEmpty
        oSemMonTxFull            => PinSignal_SEMICAP_FSM_oSemMonTxFull, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemMonTxFull
        oSemState                => PinSignal_SEMICAP_FSM_oSemState, -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oSemState[3..0]
        oVoterStatus             => PinSignal_SEMICAP_FSM_oVoterStatus -- ObjectKind=Sheet Entry|PrimaryId=semicap_fsm.vhd-oVoterStatus[2..0]
      );


    PinSignal_U7_O <= NamedSignal_IRQEN(1) and PinSignal_U3_O;
    PinSignal_U6_O <= PinSignal_U4_O or PinSignal_U7_O or iHwIcapIrq or PinSignal_U5_O;
    PinSignal_U5_O <= PinSignal_SEMICAP_FSM_oIrq and NamedSignal_IRQEN(2);
    PinSignal_U4_O <= NamedSignal_IRQEN(0) and PinSignal_SEMICAP_FSM_oFifoMonStatFull;
    PinSignal_U3_O <= not PinSignal_SEMICAP_FSM_oFifoMonStatEmpty;
    PinSignal_U2_O <= iMonitorRegPutByte and iMonitorRegWriteStrobe;
    PinSignal_U1_O <= iMonitorRegGetByte and iMonitorRegWriteStrobe;
      
    -- Signal Assignments
    ---------------------
    NamedSignal_GND1_BUS             <= "0000000000000000000000000000000000000000"; -- ObjectKind=Net|PrimaryId=GND1_BUS[39..0]
    NamedSignal_IRQEN                <= iConfigRegIrqMask; -- ObjectKind=Net|PrimaryId=iConfigRegIrqMask[2..0]
    NamedSignal_oDevInfoId           <= "10101100"; -- ObjectKind=Net|PrimaryId=oDevInfoId[7..0]
    NamedSignal_oDevInfoVersionMajor <= "00000001"; -- ObjectKind=Net|PrimaryId=oDevInfoVersionMajor[7..0]
    NamedSignal_oDevInfoVersionMinor <= "00000010"; -- ObjectKind=Net|PrimaryId=oDevInfoVersionMinor[7..0]
    oConfigRegIrqMask                <= iConfigRegIrqMask; -- ObjectKind=Net|PrimaryId=iConfigRegIrqMask[2..0]
    oConfigRegSemEn                  <= PinSignal_SEMICAP_FSM_oSemEnStat; -- ObjectKind=Net|PrimaryId=oSemEnStat
    oDevInfoId                       <= NamedSignal_oDevInfoId; -- ObjectKind=Net|PrimaryId=oDevInfoId[7..0]
    oDevInfoVersionMajor             <= NamedSignal_oDevInfoVersionMajor; -- ObjectKind=Net|PrimaryId=oDevInfoVersionMajor[7..0]
    oDevInfoVersionMinor             <= NamedSignal_oDevInfoVersionMinor; -- ObjectKind=Net|PrimaryId=oDevInfoVersionMinor[7..0]
    oHwIcapEos                       <= PowerSignal_GND; -- ObjectKind=Net|PrimaryId=GND
    oHwIcapGrant                     <= PinSignal_U_icaparbiter_oExtCapGrant; -- ObjectKind=Net|PrimaryId=oExtCapGrant
    oHwIcapRelinquish                <= PinSignal_U_icaparbiter_oExtCapRelinquish; -- ObjectKind=Net|PrimaryId=oExtCapRelinquish
    oIRq                             <= PinSignal_U6_O; -- ObjectKind=Net|PrimaryId=oIRq
    oMinVoterRegCmpStat              <= PinSignal_SEMICAP_FSM_oCmpStatus; -- ObjectKind=Net|PrimaryId=oCmpStatus
    oMinVoterRegTmrStat              <= PinSignal_SEMICAP_FSM_oVoterStatus; -- ObjectKind=Net|PrimaryId=oMinVoterRegTmrStat[2..0]
    oMonitorRegByte                  <= PinSignal_SEMICAP_FSM_oFifoMonStatByte; -- ObjectKind=Net|PrimaryId=oMonitorRegByte[7..0]
    oMuxSemSelect                    <= PinSignal_U_icaparbiter_oSemCapGrant; -- ObjectKind=Net|PrimaryId=oSemCapGrant
    oRpReset_n                       <= iResetsReg; -- ObjectKind=Net|PrimaryId=iResetsReg[2..0]
    oSemAuxErrorCrEs                 <= PowerSignal_GND; -- ObjectKind=Net|PrimaryId=GND
    oSemAuxErrorCrNe                 <= PowerSignal_GND; -- ObjectKind=Net|PrimaryId=GND
    oSemAuxErrorUc                   <= PowerSignal_GND; -- ObjectKind=Net|PrimaryId=GND
    oSemCapGrant                     <= PinSignal_U_icaparbiter_oSemCapGrant; -- ObjectKind=Net|PrimaryId=oSemCapGrant
    oSemCapRelinquish                <= PinSignal_U_icaparbiter_oSemCapRelinquish; -- ObjectKind=Net|PrimaryId=oSemCapRelinquish
    oSemCmdCode                      <= NamedSignal_GND1_BUS; -- ObjectKind=Net|PrimaryId=GND1_BUS[39..0]
    oSemCmdStrobe                    <= PowerSignal_GND; -- ObjectKind=Net|PrimaryId=GND
    oSemFetchTblAddr                 <= iTblAddReg; -- ObjectKind=Net|PrimaryId=iTblAddReg[31..0]
    oSemMonRxData                    <= PinSignal_SEMICAP_FSM_oSemMonRxData; -- ObjectKind=Net|PrimaryId=oSemMonRxData[7..0]
    oSemMonRxEmpty                   <= PinSignal_SEMICAP_FSM_oSemMonRxEmpty; -- ObjectKind=Net|PrimaryId=oSemMonRxEmpty
    oSemMonTxFull                    <= PinSignal_SEMICAP_FSM_oSemMonTxFull; -- ObjectKind=Net|PrimaryId=oSemMonTxFull
    oStatusRegFifoCmdFull            <= PinSignal_SEMICAP_FSM_oFifoMonCmdFull; -- ObjectKind=Net|PrimaryId=oFifoMonCmdFull
    oStatusRegFifoStatFull           <= PinSignal_SEMICAP_FSM_oFifoMonStatFull; -- ObjectKind=Net|PrimaryId=NetU4_I1
    oStatusRegMonEmpty               <= PinSignal_SEMICAP_FSM_oFifoMonStatEmpty; -- ObjectKind=Net|PrimaryId=NetU3_I
    oStatusRegState                  <= PinSignal_SEMICAP_FSM_oSemState; -- ObjectKind=Net|PrimaryId=oStatusRegState[3..0]
    oTblAddReg                       <= iTblAddReg; -- ObjectKind=Net|PrimaryId=iTblAddReg[31..0]
    PowerSignal_GND                  <= '0'; -- ObjectKind=Net|PrimaryId=GND

End Structure;
------------------------------------------------------------

