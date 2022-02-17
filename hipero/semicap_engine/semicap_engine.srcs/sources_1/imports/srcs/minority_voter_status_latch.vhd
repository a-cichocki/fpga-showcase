library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity minority_voter_status_latch is
    Port ( 
			iClk 			: in std_logic;
			iRst_n 			: in std_logic;
			
			iMinVoter 		: in std_logic_vector(3 downto 0);
			iMinVoterClear  : in std_logic;
			oCmpStatus		: out std_logic;
			oVoterStatus	: out std_logic_vector(2 downto 0)		   
		   );
end minority_voter_status_latch;

architecture behavioral of minority_voter_status_latch is

signal MinVoterStatus : std_logic_vector(3 downto 0);

begin

process (iClk)
begin  
	if rising_edge(iClk) then
		if iRst_n = '0' then
			MinVoterStatus <= (others => '0');
		else
			if (iMinVoterClear = '1') then
				MinVoterStatus <= (others => '0');	            
            else
                MinVoterStatus <= MinVoterStatus or iMinVoter;
            end if;            
		end if; 
	end if;
end process;

oCmpStatus		<= MinVoterStatus(3);
oVoterStatus	<= MinVoterStatus(2 downto 0);

end behavioral;

