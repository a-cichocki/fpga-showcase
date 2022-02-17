----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2019 12:19:20
-- Design Name: 
-- Module Name: FtNandCtrlWrap - Structural
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

library grlib;
use grlib.amba.all;

library cbk;
use cbk.ftnandctrl_pkg.all;

library unisim;
   use unisim.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FtNandCtrlWrap is
    port(
        iRST_N      : in std_logic;
        iCLK        : in std_logic;
--        iAHBM_hgrant   : in std_logic_vector(0 to 0);   -- AHB master inputs   
        iAHBM_hready   : in std_logic;                                                 
        iAHBM_hresp	   : in std_logic_vector(1 downto 0); 	        -- response type    
        iAHBM_hrdata   : in std_logic_vector(31 downto 0); 	-- read data bus           
--        iAHBM_hirq     : in std_logic_vector(NAHBIRQ-1 downto 0);	-- interrupt result b
--        iAHBM_testen   : in std_ulogic;                         	-- scan test enable   
--        iAHBM_testrst  : in std_ulogic;                         	-- scan test reset    
--        iAHBM_scanen   : in std_ulogic;                         	-- scan enable        
--        iAHBM_testoen  : in std_ulogic;                         	-- test output enable 
--        iAHBM_testin   : in std_logic_vector(3 downto 0);         -- test vector for sy
--        oAHBM_hbusreq  : out std_ulogic;                         	-- bus request       
        oAHBM_hlock	   : out std_ulogic;                         	-- lock request      
        oAHBM_htrans   : out std_logic_vector(1 downto 0); 	-- transfer type           
        oAHBM_haddr	   : out std_logic_vector(31 downto 0); 	-- address bus (byte)     
        oAHBM_hwrite   : out std_ulogic;                         	-- read/write        
        oAHBM_hsel     : out std_ulogic;  
        oAHBM_hsize	   : out std_logic_vector(2 downto 0); 	-- transfer size           
        oAHBM_hburst   : out std_logic_vector(2 downto 0); 	-- burst type              
        oAHBM_hprot	   : out std_logic_vector(3 downto 0); 	-- protection control      
        oAHBM_hwdata   : out std_logic_vector(31 downto 0); 	-- write data bus         
--        oAHBM_hirq     : out std_logic_vector(NAHBIRQ-1 downto 0);	-- interrupt bus  
        
        -- oAHBM_hconfig  : out ahb_config_type;	 		-- memory access reg.              
        iAPB_psel	     : in std_logic_vector(0 to 0);     -- slave select
        iAPB_penable	 : in std_ulogic;                         	-- strobe
        iAPB_paddr	     : in std_logic_vector(31 downto 0); 	-- address bus (byte)
        iAPB_pwrite	     : in std_ulogic;                         	-- write
        iAPB_pwdata	     : in std_logic_vector(31 downto 0); 	-- write data bus
--        iAPB_pirq	     : in std_logic_vector(NAHBIRQ-1 downto 0); -- interrupt result bus
--        iAPB_testen	     : in std_ulogic;                         	-- scan test enable
--        iAPB_testrst	 : in std_ulogic;                         	-- scan test reset
--        iAPB_scanen 	 : in std_ulogic;                         	-- scan enable
--        iAPB_testoen	 : in std_ulogic;                         	-- test output enable
--        iAPB_testin      : in std_logic_vector(3 downto 0);         -- test vector for syncrams
        
        oAPB_prdata	 : out std_logic_vector(31 downto 0); 	-- read data bus
        oAPB_pready	 : out std_logic_vector(0 downto 0); 	-- PREADY
        oAPB_pslverr	 : out std_logic_vector(0 downto 0); 	-- PSLVERR
        --        pirq 	: std_logic_vector(NAHBIRQ-1 downto 0); -- interrupt bus
        --        pconfig 	: apb_config_type;	 		-- memory access reg.
        --        pindex      : integer range 0 to NAPBSLV -1;	-- diag use only
        bFIOA        : inout std_logic_vector(7 downto 0);
        bFIOB        : inout std_logic_vector(7 downto 0);
        oFCLE       : out std_logic_vector(1 to 2);        -- command latch enable
        oFALE       : out std_logic_vector(1 to 2);        -- address latch enable
        oFCE_N      : out std_logic_vector(15 downto 0);        -- chip enable
        oFWE_N      : out std_logic_vector(1 to 2);        -- write enable
        oFRE_N      : out std_logic_vector(1 to 2);        -- read enable
        iFBSY_N     : in std_logic_vector(1 to 2);         -- read/busy
        oFWP_N      : out std_logic_vector(1 to 2)         -- write protect  
    );
end FtNandCtrlWrap;

architecture Structural of FtNandCtrlWrap is
    signal AHBMI       : ahb_mst_in_type;   -- AHB master inputs    (ahbi)
    signal AHBMO       : ahb_mst_out_type;  -- AHB master outputs   (ahbo)
    signal iAPB		   : apb_slv_in_type;
    signal oAPB   	   : apb_slv_out_type;    
    
    signal iFIO        : std_logic_vector(15 downto 0);
    signal oFIO        : std_logic_vector(15 downto 0);
    signal oFIOBDRIVE: std_logic;
    signal oFIOBDRIVE_n: std_logic;

    
    constant NAHBMST   : integer := 1;  -- maximum AHB masters
    constant NAHBSLV   : integer := 1;  -- maximum AHB slaves
    constant NAPBSLV   : integer := 1; -- maximum APB slaves

begin

I_FTNANDCTRL: entity cbk.FtNandCtrl
generic map(
    hindex      => 0,
    hirq        => 0,
    pindex      => 0,
    paddr       => 16#000#,
    pmask       => 16#fff#,
    pirq        => 0 --6
) -- master bus index
port map(
    iRST_N      => iRST_N    ,    
    iCLK        => iCLK      ,
    iAHBM       => AHBMI     ,
    oAHBM       => AHBMO     ,
    iAPB		=> iAPB		 ,
    oAPB   	    => oAPB   	 , 
    iFIO        => iFIO      ,
    oFIO        => oFIO      ,
    oFIOBDRIVE  => oFIOBDRIVE,
    oFCLE       => oFCLE     ,
    oFALE       => oFALE     ,
    oFCE_N      => oFCE_N    ,
    oFWE_N      => oFWE_N    ,
    oFRE_N      => oFRE_N    ,
    iFBSY_N     => iFBSY_N   ,
    oFWP_N      => oFWP_N    
);


oFIOBDRIVE_n <= not oFIOBDRIVE;

IO_BUFSA: for i in 0 to 7 generate 
    IOBUF_InstA : IOBUF
      port map (
         O     => iFIO(i),              -- data from bidir bus
         IO    => bFIOA(i),              -- data on bidir bus
         I     => oFIO(i),             -- data to bidir bus
         T     => oFIOBDRIVE_n); -- 3-state enable input, high=input, low=output

end generate;

IO_BUFSB: for i in 0 to 7 generate 
    IOBUF_InstB : IOBUF
      port map (
         O     => iFIO(i+8),              -- data from bidir bus
         IO    => bFIOB(i),              -- data on bidir bus
         I     => oFIO(i+8),             -- data to bidir bus
         T     => oFIOBDRIVE_n); -- 3-state enable input, high=input, low=output

end generate;


AHBMI.hgrant(0)  <= '1';
AHBMI.hgrant(1 to 15) <= (others => '0');
AHBMI.hready  <= iAHBM_hready ;
AHBMI.hresp	  <= iAHBM_hresp  ;
AHBMI.hrdata  <= iAHBM_hrdata ;
AHBMI.hirq    <= (others => '0');
AHBMI.testen  <= '0'; --iAHBM_testen ;
AHBMI.testrst <= '0'; --iAHBM_testrst;
AHBMI.scanen  <= '0'; --iAHBM_scanen ;
AHBMI.testoen <= '0'; --iAHBM_testoen;
AHBMI.testin  <= (others => '0'); --iAHBM_testin ;

--oAHBM_hbusreq   <= AHBMO.hbusreq;
oAHBM_hlock	    <= AHBMO.hlock	; 
oAHBM_htrans    <= AHBMO.htrans ;
oAHBM_haddr	    <= AHBMO.haddr	; 
oAHBM_hwrite    <= AHBMO.hwrite ;
oAHBM_hsize	    <= AHBMO.hsize	; 
oAHBM_hburst    <= AHBMO.hburst ;
oAHBM_hprot	    <= AHBMO.hprot	; 
oAHBM_hwdata    <= AHBMO.hwdata ;
oAHBM_hsel      <= '1' when AHBMO.htrans /= "00" else '0';
--oAHBM_hirq      <= AHBMO.hirq   ;
--oAHBM_hconfig   <= AHBMO.hconfig;
iAPB.psel	 <= (0=> iAPB_psel(0), others => '0');
iAPB.penable <= iAPB_penable ;
iAPB.paddr	 <= iAPB_paddr	 ;
iAPB.pwrite	 <= iAPB_pwrite	 ;
iAPB.pwdata	 <= iAPB_pwdata	 ;
iAPB.pirq	 <= (others => '0'); --iAPB_pirq	 ;
iAPB.testen	 <= '0'; -- iAPB_testen	 ;
iAPB.testrst <= '0'; -- iAPB_testrst ;
iAPB.scanen  <= '0'; -- iAPB_scanen  ;
iAPB.testoen <= '0'; -- iAPB_testoen ;
iAPB.testin  <= (others => '0'); --iAPB_testin  ;

oAPB_prdata	 <= oAPB.prdata;
oAPB_pready	 <="1";
oAPB_pslverr <="0";

end Structural;
