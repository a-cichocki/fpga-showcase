----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2019 10:30:30
-- Design Name: 
-- Module Name: MaxAcqWrap - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library cbk;
    use cbk.all;
library grlib;         
    use grlib.amba.all;
    
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MaxAcqWrap is
port (
    iRST_N         : in std_logic;
    iCLK           : in std_logic;
--    iAHBM_hgrant   : in std_logic_vector(0 to 0);   -- AHB master inputs    (ahbi)
    iAHBM_hready   : in std_logic;
    iAHBM_hresp	   : in std_logic_vector(1 downto 0); 	        -- response type
    iAHBM_hrdata   : in std_logic_vector(31 downto 0); 	-- read data bus
--    iAHBM_hirq     : in std_logic_vector(NAHBIRQ-1 downto 0);	-- interrupt result bus
--    iAHBM_testen   : in std_ulogic;                         	-- scan test enable
--    iAHBM_testrst  : in std_ulogic;                         	-- scan test reset
--    iAHBM_scanen   : in std_ulogic;                         	-- scan enable
--    iAHBM_testoen  : in std_ulogic;                         	-- test output enable                   
--    iAHBM_testin   : in std_logic_vector(3 downto 0);         -- test vector for syncrams
--    oAHBM_hbusreq  : out std_ulogic;                         	-- bus request
--    oAHBM_hlock	   : out std_ulogic;       
                  	-- lock request
        oAHBM_hsel     : out std_ulogic;  
                    oAHBM_htrans   : out std_logic_vector(1 downto 0); 	-- transfer type
    oAHBM_haddr	   : out std_logic_vector(31 downto 0); 	-- address bus (byte)
    oAHBM_hwrite   : out std_ulogic;                         	-- read/write
    oAHBM_hsize	   : out std_logic_vector(2 downto 0); 	-- transfer size
    oAHBM_hburst   : out std_logic_vector(2 downto 0); 	-- burst type
    oAHBM_hprot	   : out std_logic_vector(3 downto 0); 	-- protection control
    oAHBM_hwdata   : out std_logic_vector(31 downto 0); 	-- write data bus
--    oAHBM_hirq     : out std_logic_vector(NAHBIRQ-1 downto 0);	-- interrupt bus
    -- oAHBM_hconfig  : out ahb_config_type;	 		-- memory access reg.
    iMAxI0         : in std_logic;
    iMaxClk        : in std_logic;
    iRecEn         : in std_logic;        
    iEn            : in std_logic;
    oIrq           : out std_logic
);
end entity MaxAcqWrap;

architecture Structural of MaxAcqWrap is
    constant NAHBMST   : integer := 1;  -- maximum AHB masters

    signal AHBMI       : ahb_mst_in_type;   -- AHB master inputs    (ahbi)
    signal AHBMO       : ahb_mst_out_type;  -- AHB master outputs   (ahbo)
    
         
begin

I_MAXACQ: entity cbk.maxAcq
generic map (
    hindex  => 0
)
port map(
    iRST_N      => iRST_N ,
    iCLK        => iCLK   ,
    iAHBM       => AHBMI  ,
    oAHBM       => AHBMO  ,
    iMAxI0      => iMAxI0 ,
    iMaxClk     => iMaxClk,
    iRecEn      => iRecEn ,
    iEn         => iEn    ,
    oIrq        => oIrq   
);


AHBMI.hgrant  <= (0 => '1', others => '0');
AHBMI.hready  <= iAHBM_hready ;
AHBMI.hresp	  <= iAHBM_hresp  ;
AHBMI.hrdata  <= iAHBM_hrdata ;
AHBMI.hirq    <= (others => '0'); -- iAHBM_hirq   ;
AHBMI.testen  <= '0'; -- iAHBM_testen ;
AHBMI.testrst <= '0'; -- iAHBM_testrst;
AHBMI.scanen  <= '0'; -- iAHBM_scanen ;
AHBMI.testoen <= '0'; -- iAHBM_testoen;
AHBMI.testin  <= (others => '0'); -- iAHBM_testin ;
oAHBM_hsel      <= '1' when AHBMO.htrans /= "00" else '0';
--oAHBM_hbusreq   <= AHBMO.hbusreq;
--oAHBM_hlock	    <= AHBMO.hlock	; 
oAHBM_htrans    <= AHBMO.htrans ;
oAHBM_haddr	    <= AHBMO.haddr	; 
oAHBM_hwrite    <= AHBMO.hwrite ;
oAHBM_hsize	    <= AHBMO.hsize	; 
oAHBM_hburst    <= AHBMO.hburst ;
oAHBM_hprot	    <= AHBMO.hprot	; 
oAHBM_hwdata    <= AHBMO.hwdata ;
--oAHBM_hirq      <= AHBMO.hirq   ;
--oAHBM_hconfig   <= AHBMO.hconfig;

end Structural;
