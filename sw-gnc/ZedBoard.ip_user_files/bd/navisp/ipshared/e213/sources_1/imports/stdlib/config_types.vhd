------------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2013, Aeroflex Gaisler AB - all rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE GAISLER LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING. 
-----------------------------------------------------------------------------
-- Package: 	config_types
-- File:	config_types.vhd
-- Author:	Jan Andersson - Aeroflex Gaisler AB
-- Description:	GRLIB Global configuration types package.
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package config_types is

  -----------------------------------------------------------------------------
  -- Configuration constants part of GRLIB configuration array
  -----------------------------------------------------------------------------

  
  -- debug level and debug mask controls debug output from tech map
  constant grlib_debug_level             : integer := 0; 
  constant grlib_debug_mask              : integer := 1; 
  -- Defines if strict RAM techmap should be used. Otherwise small (shallow)
  -- RAMs may be mapped to inferred technology.
  constant grlib_techmap_strict_ram      : integer := 2;
  -- Expand testin vector to syncrams with additional bits
  constant grlib_techmap_testin_extra    : integer := 3;
  -- Add synchronous resets to all registers (requires support in IP cores)
  constant grlib_sync_reset_enable_all   : integer := 4;

  type grlib_config_array_type is array (0 to 5) of integer;
  
end;
