--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1828.bd
--Design : bd_1828
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1828 is
  port (
    SLOT_0_AHBLITE_haddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AHBLITE_hburst : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AHBLITE_hmastlock : in STD_LOGIC;
    SLOT_0_AHBLITE_hprot : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AHBLITE_hrdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AHBLITE_hready : in STD_LOGIC;
    SLOT_0_AHBLITE_hresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AHBLITE_hsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AHBLITE_htrans : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AHBLITE_hwdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AHBLITE_hwrite : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_1828 : entity is "bd_1828,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1828,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_1828 : entity is "navisp_system_ila_0_0.hwdef";
end bd_1828;

architecture STRUCTURE of bd_1828 is
  component bd_1828_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_1828_ila_lib_0;
  signal SLOT_0_AHBLITE_haddr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SLOT_0_AHBLITE_hburst_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal SLOT_0_AHBLITE_hmastlock_1 : STD_LOGIC;
  signal SLOT_0_AHBLITE_hprot_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SLOT_0_AHBLITE_hrdata_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SLOT_0_AHBLITE_hready_1 : STD_LOGIC;
  signal SLOT_0_AHBLITE_hresp_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SLOT_0_AHBLITE_hsize_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal SLOT_0_AHBLITE_htrans_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SLOT_0_AHBLITE_hwdata_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SLOT_0_AHBLITE_hwrite_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hmastlock : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HMASTLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hready : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hwrite : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWRITE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN navisp_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_haddr : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hburst : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hprot : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hrdata : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hresp : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hsize : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_htrans : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HTRANS";
  attribute X_INTERFACE_INFO of SLOT_0_AHBLITE_hwdata : signal is "xilinx.com:interface:ahblite:2.0 SLOT_0_AHBLITE HWDATA";
begin
  SLOT_0_AHBLITE_haddr_1(31 downto 0) <= SLOT_0_AHBLITE_haddr(31 downto 0);
  SLOT_0_AHBLITE_hburst_1(2 downto 0) <= SLOT_0_AHBLITE_hburst(2 downto 0);
  SLOT_0_AHBLITE_hmastlock_1 <= SLOT_0_AHBLITE_hmastlock;
  SLOT_0_AHBLITE_hprot_1(3 downto 0) <= SLOT_0_AHBLITE_hprot(3 downto 0);
  SLOT_0_AHBLITE_hrdata_1(31 downto 0) <= SLOT_0_AHBLITE_hrdata(31 downto 0);
  SLOT_0_AHBLITE_hready_1 <= SLOT_0_AHBLITE_hready;
  SLOT_0_AHBLITE_hresp_1(1 downto 0) <= SLOT_0_AHBLITE_hresp(1 downto 0);
  SLOT_0_AHBLITE_hsize_1(2 downto 0) <= SLOT_0_AHBLITE_hsize(2 downto 0);
  SLOT_0_AHBLITE_htrans_1(1 downto 0) <= SLOT_0_AHBLITE_htrans(1 downto 0);
  SLOT_0_AHBLITE_hwdata_1(31 downto 0) <= SLOT_0_AHBLITE_hwdata(31 downto 0);
  SLOT_0_AHBLITE_hwrite_1 <= SLOT_0_AHBLITE_hwrite;
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe1_1(0) <= probe1(0);
ila_lib: component bd_1828_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(0) => SLOT_0_AHBLITE_hmastlock_1,
      probe11(2 downto 0) => SLOT_0_AHBLITE_hburst_1(2 downto 0),
      probe12(31 downto 0) => SLOT_0_AHBLITE_hwdata_1(31 downto 0),
      probe2(1 downto 0) => SLOT_0_AHBLITE_htrans_1(1 downto 0),
      probe3(3 downto 0) => SLOT_0_AHBLITE_hprot_1(3 downto 0),
      probe4(2 downto 0) => SLOT_0_AHBLITE_hsize_1(2 downto 0),
      probe5(31 downto 0) => SLOT_0_AHBLITE_hrdata_1(31 downto 0),
      probe6(1 downto 0) => SLOT_0_AHBLITE_hresp_1(1 downto 0),
      probe7(0) => SLOT_0_AHBLITE_hwrite_1,
      probe8(0) => SLOT_0_AHBLITE_hready_1,
      probe9(31 downto 0) => SLOT_0_AHBLITE_haddr_1(31 downto 0)
    );
end STRUCTURE;
