Library IEEE;
Use IEEE.Std_Logic_1164.all;

entity semicap_fsm is
    port (
        iClk                   		: in    std_logic;
		iRst_n                 		: in    std_logic;
		
		-- SEM Monnitor interface
        oSemMonRxData          		: out   std_logic_vector(7 downto 0);
        oSemMonRxEmpty         		: out   std_logic;
        iSemMonRxRead          		: in    std_logic;
        iSemMonTxData          		: in    std_logic_vector(7 downto 0);
        oSemMonTxFull          		: out   std_logic;
        iSemMonTxWrite         		: in    std_logic;

		-- Monitor Status buffer
        oFifoMonStatByte       		: out   std_logic_vector(7 downto 0);
        oFifoMonStatGet        		: in    std_logic;
        oFifoMonStatEmpty      		: out   std_logic;
		oFifoMonStatFull	   		: out   std_logic;

		-- Monitor Command buffer
        iFifoMonCmdPut         		: in    std_logic;
        iFifoMonCmdByte        		: in    std_logic_vector(7 downto 0);
        oFifoMonCmdFull        		: out   std_logic;

		-- SEM Status: FSM States
        iSemStatusclassification  	: in    std_logic;
        iSemStatuscorrection      	: in    std_logic;
        iSemStatusdetectOnly     	: in    std_logic;
        iSemStatusdiagnosticScan 	: in    std_logic;
        iSemStatusinjection       	: in    std_logic;
        iSemStatusobservation     	: in    std_logic;
		iSemStatusinitialization  	: in    std_logic;
		-- SEM State (decoded)
        oSemState              		: out   std_logic_vector(3 downto 0);
		
		-- SEM Status: scanning active
        iSemStatusheartbeat       	: in    std_logic;
		
		-- SEM Status: type of error
        iSemStatusessential       	: in    std_logic;
        iSemStatusuncorrectable   	: in    std_logic;
		
		-- Minority Voter Status Latch
		iMinVoter              		: in    std_logic_vector(3 downto 0);
        iMinVoterClear         		: in    std_logic;
        oVoterStatus           		: out   std_logic_vector(2 downto 0);
        oCmpStatus             		: out   std_logic;
		
		-- SEM Enable/Disable
        iSemEn                 		: in    std_logic;
		-- SEM Enable/Disable status
        oSemEnStat             		: out   std_logic;
		-- SEM Enable/Disable status from ICAP Arbiter
		iArbSemEnStat          		: in    std_logic;

		-- Interrupt
		oIRq                   		: out   std_logic
		
		-- UNUSED -- Command Interface 
        -- command_busy           		: in    std_logic;
        -- command_code           		: out   std_logic_vector(39 downto 0);
        -- command_strobe         		: out   std_logic;

		-- UNUSED -- Auxiliary Interface 
        -- aux_error_cr_es        		: out   std_logic;
        -- aux_error_cr_ne        		: out   std_logic;
        -- aux_error_uc           		: out   std_logic		
		
        
    );
end semicap_fsm;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture Structure of semicap_fsm is


component fifo_mon_cmd
port (
    clk 		: in std_logic;
    srst 		: in std_logic;
    din 		: in std_logic_vector(7 downto 0);
    wr_en 		: in std_logic;
    rd_en 		: in std_logic;
    dout 		: out std_logic_vector(7 downto 0);
    full 		: out std_logic;
    empty 		: out std_logic;
    wr_rst_busy : out std_logic;
    rd_rst_busy : out std_logic
);
end component;

component fifo_mon_stat
port (
    clk 		: in std_logic;
    srst 		: in std_logic;
    din 		: in std_logic_vector(7 downto 0);
    wr_en 		: in std_logic;
    rd_en 		: in std_logic;
    dout 		: out std_logic_vector(7 downto 0);
    full 		: out std_logic;
    empty 		: out std_logic;
    wr_rst_busy : out std_logic;
    rd_rst_busy : out std_logic
);
end component;

signal fifo_mon_stat_full_internal 	: std_logic;


component sem_state_decoder
    Port (         
		iSemStatusclassification  	: in  std_logic;
        iSemStatuscorrection      	: in  std_logic;
        iSemStatusdetectOnly     	: in  std_logic;
        iSemStatusdiagnosticScan 	: in  std_logic;
        iSemStatusinjection       	: in  std_logic;
        iSemStatusobservation     	: in  std_logic;
		iSemStatusinitialization  	: in  std_logic;		
        oSemState  					: out std_logic_vector(3 downto 0)
	);
end component;


component minority_voter_status_latch
port (
	iClk			: in  std_logic;
	iRst_n			: in  std_logic;
	iMinVoter 		: in  std_logic_vector(3 downto 0);
	iMinVoterClear  : in  std_logic;
	oCmpStatus		: out std_logic;
	oVoterStatus	: out std_logic_vector(2 downto 0)		   
);
end component;

signal srst : std_logic;

begin
--------------------------------------------------------------------------------
-- Monitor Command Buffer
--------------------------------------------------------------------------------
srst <=  (not iRst_n);

fifo_mon_cmd_inst : fifo_mon_cmd
port map (
    clk 		=> iClk,
    srst 		=> srst,
    din 		=> iFifoMonCmdByte,
    wr_en 		=> iFifoMonCmdPut,
    rd_en 		=> iSemMonRxRead,
    dout 		=> oSemMonRxData,
    full 		=> oFifoMonCmdFull,
    empty 		=> oSemMonRxEmpty,
    wr_rst_busy => open,
    rd_rst_busy => open
);
--------------------------------------------------------------------------------
-- Monitor Status Buffer
--------------------------------------------------------------------------------
fifo_mon_stat_inst : fifo_mon_stat
port map (
	clk 		=> iClk,
	srst 		=> srst,
	din 		=> iSemMonTxData,
	wr_en		=> iSemMonTxWrite,
	rd_en 		=> oFifoMonStatGet,
	dout 		=> oFifoMonStatByte,
	full 		=> fifo_mon_stat_full_internal,
	empty 		=> oFifoMonStatEmpty,
	wr_rst_busy => open,
	rd_rst_busy => open
);  

oSemMonTxFull		<= fifo_mon_stat_full_internal;
oFifoMonStatFull	<= fifo_mon_stat_full_internal;

--------------------------------------------------------------------------------
-- SEM State Decoder
--------------------------------------------------------------------------------
sem_state_decoder_inst : sem_state_decoder
port map (         
	iSemStatusclassification  	=> iSemStatusclassification,
	iSemStatuscorrection      	=> iSemStatuscorrection,
	iSemStatusdetectOnly     	=> iSemStatusdetectOnly,    
	iSemStatusdiagnosticScan 	=> iSemStatusdiagnosticScan,
	iSemStatusinjection       	=> iSemStatusinjection,
	iSemStatusobservation     	=> iSemStatusobservation,
	iSemStatusinitialization  	=> iSemStatusinitialization,
	oSemState  					=> oSemState
);

minority_voter_status_latch_inst : minority_voter_status_latch
port map (
	iClk			=> iClk,
	iRst_n			=> iRst_n,
	iMinVoter 		=> iMinVoter,
	iMinVoterClear  => iMinVoterClear,
	oCmpStatus		=> oCmpStatus,
	oVoterStatus	=> oVoterStatus		   
);

oSemEnStat <= iArbSemEnStat;
oIrq <= iSemStatusessential or iSemStatusuncorrectable;

end Structure;