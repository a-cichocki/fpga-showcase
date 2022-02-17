--------------------------------------------------------------------------------
-- SubModule icapmux

-- Actions neccessary to transfer control of the ICAP from the SEM IP to the HWICAP:
-- • The SEM controller is in the OBSERVATION state.
-- • The SEM controller is put in the IDLE state.
-- • Control of the ICAP is moved to the user function by changing the MUX select.
-- • The HWICAP issues a SYNC command to the ICAP.
-- • The HWICAP controls the ICAP and performs function-specific requirements.
-- • The HWICAP transfers control back to the SEM controller by changing the MUX select. The HWICAP does not issue a DESYNC command to the ICAP?
-- • The SEM controller is put back into the OBSERVATION state.


-- Created   2019-07-24 15:20:50
--------------------------------------------------------------------------------
library IEEE;
use IEEE.Std_Logic_1164.all;

entity icapmux is port
   (
	oIcapCsib       	: out std_logic;
	oIcapI          	: out std_logic_vector(31 downto 0);
	oIcapRdWrb      	: out std_logic;
	iIcapAvail      	: in std_logic;
	iIcapO          	: in std_logic_vector(31 downto 0);
	iIcapPrDone      	: in std_logic;
	iIcapPrError      	: in std_logic;
	
	oHwIcapAvail     	: out std_logic;
	oHwIcapI         	: out std_logic_vector(31 downto 0);
	iHwIcapCsib      	: in std_logic;
	iHwIcapO         	: in std_logic_vector(31 downto 0);
	iHwIcapWr_n     	: in std_logic;
	
	oSemIcapAvail    	: out std_logic;
	oSemIcapI        	: out std_logic_vector(31 downto 0);
	oSemIcapPrDone   	: out std_logic;
	oSemIcapPrError  	: out std_logic;
	iSemIcapCsib     	: in std_logic;
	iSemIcapWr_n    	: in std_logic;
	iSemIcapO        	: in std_logic_vector(31 downto 0);
	 
	iEngSemSelect		: in std_logic
   );
end icapmux;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture Structure of icapmux is

  signal icap_csib_mux                   : std_logic;
  signal icap_rdwrb_mux                  : std_logic;
  signal icap_i_mux                      : std_logic_vector(31 downto 0);

begin

icap_i_mux 			<= iHwIcapO 		when iEngSemSelect = '0' else iSemIcapO;
icap_csib_mux 		<= iHwIcapCsib	 	when iEngSemSelect = '0' else iSemIcapCsib; 
icap_rdwrb_mux 		<= iHwIcapWr_n	 	when iEngSemSelect = '0' else iSemIcapWr_n;
	
oIcapI 				<= icap_i_mux;
oIcapCsib 			<= icap_csib_mux;
oIcapRdWrb 			<= icap_rdwrb_mux;


oHwIcapAvail 		<= iIcapAvail 		when iEngSemSelect = '0' else '0';
oHwIcapI 			<= iIcapO 			when iEngSemSelect = '0' else x"00000000";
	
oSemIcapAvail 		<= iIcapAvail 		when iEngSemSelect = '1' else '0';
oSemIcapI 			<= iIcapO 			when iEngSemSelect = '1' else x"00000000";
oSemIcapPrDone	 	<= iIcapPrDone 		when iEngSemSelect = '1' else '0';
oSemIcapPrError 	<= iIcapPrError 	when iEngSemSelect = '1' else '0';
	 


end Structure;
--------------------------------------------------------------------------------
