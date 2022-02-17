--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1828_wrapper.bd
--Design : bd_1828_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1828_wrapper is
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
end bd_1828_wrapper;

architecture STRUCTURE of bd_1828_wrapper is
  component bd_1828 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AHBLITE_htrans : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AHBLITE_hprot : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AHBLITE_hsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AHBLITE_hrdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AHBLITE_hresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AHBLITE_hwrite : in STD_LOGIC;
    SLOT_0_AHBLITE_hready : in STD_LOGIC;
    SLOT_0_AHBLITE_haddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AHBLITE_hmastlock : in STD_LOGIC;
    SLOT_0_AHBLITE_hburst : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AHBLITE_hwdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_1828;
begin
bd_1828_i: component bd_1828
     port map (
      SLOT_0_AHBLITE_haddr(31 downto 0) => SLOT_0_AHBLITE_haddr(31 downto 0),
      SLOT_0_AHBLITE_hburst(2 downto 0) => SLOT_0_AHBLITE_hburst(2 downto 0),
      SLOT_0_AHBLITE_hmastlock => SLOT_0_AHBLITE_hmastlock,
      SLOT_0_AHBLITE_hprot(3 downto 0) => SLOT_0_AHBLITE_hprot(3 downto 0),
      SLOT_0_AHBLITE_hrdata(31 downto 0) => SLOT_0_AHBLITE_hrdata(31 downto 0),
      SLOT_0_AHBLITE_hready => SLOT_0_AHBLITE_hready,
      SLOT_0_AHBLITE_hresp(1 downto 0) => SLOT_0_AHBLITE_hresp(1 downto 0),
      SLOT_0_AHBLITE_hsize(2 downto 0) => SLOT_0_AHBLITE_hsize(2 downto 0),
      SLOT_0_AHBLITE_htrans(1 downto 0) => SLOT_0_AHBLITE_htrans(1 downto 0),
      SLOT_0_AHBLITE_hwdata(31 downto 0) => SLOT_0_AHBLITE_hwdata(31 downto 0),
      SLOT_0_AHBLITE_hwrite => SLOT_0_AHBLITE_hwrite,
      clk => clk,
      probe0(0) => probe0(0),
      probe1(0) => probe1(0)
    );
end STRUCTURE;
