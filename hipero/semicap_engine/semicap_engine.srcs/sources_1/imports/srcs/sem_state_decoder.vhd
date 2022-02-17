library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sem_state_decoder is
    Port (         
		iSemStatusclassification	: in  std_logic;
        iSemStatuscorrection    	: in  std_logic;
        iSemStatusdetectOnly    	: in  std_logic;
        iSemStatusdiagnosticScan	: in  std_logic;
        iSemStatusinjection     	: in  std_logic;
        iSemStatusobservation   	: in  std_logic;
		iSemStatusinitialization	: in  std_logic;		
        oSemState  					: out std_logic_vector(3 downto 0)
	);
end sem_state_decoder;


architecture behavioral of sem_state_decoder is

signal status_bits : std_logic_vector(6 downto 0);

constant MASK_IDLE            : std_logic_vector(6 downto 0) := (others => '0');
constant MASK_OBSERVATION     : std_logic_vector(6 downto 0) := (1 => '1', others => '0');
constant MASK_CORRECTION      : std_logic_vector(6 downto 0) := (5 => '1', others => '0');
constant MASK_CLASSIFICATION  : std_logic_vector(6 downto 0) := (6 => '1', others => '0');
constant MASK_INJECTION       : std_logic_vector(6 downto 0) := (2 => '1', others => '0');
constant MASK_DETECTONLY      : std_logic_vector(6 downto 0) := (4 => '1', others => '0');
constant MASK_DAIGNOSTICSCAN  : std_logic_vector(6 downto 0) := (3 => '1', others => '0');
constant MASK_INITIALIZATION  : std_logic_vector(6 downto 0) := (0 => '1', others => '0');

begin

status_bits <= iSemStatusclassification & iSemStatuscorrection & iSemStatusdetectOnly & iSemStatusdiagnosticScan & iSemStatusinjection & iSemStatusobservation & iSemStatusinitialization;

oSemState <= 
          "0000" when status_bits = MASK_IDLE             else
          "0001" when status_bits = MASK_OBSERVATION      else
          "0010" when status_bits = MASK_CORRECTION       else
          "0011" when status_bits = MASK_CLASSIFICATION   else
          "1000" when status_bits = MASK_INJECTION        else
          "1001" when status_bits = MASK_DETECTONLY       else
          "1010" when status_bits = MASK_DAIGNOSTICSCAN   else
          "1110" when status_bits = MASK_INITIALIZATION   else
          "1111";       
		  
end behavioral;