library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

library grlib;
   use grlib.amba.all;
   
package General_pkg is 
  
   constant VENDOR_CBKPAN        : amba_vendor_type := 16#C8#;
   -- MEMCTRLS START WITH 0
   constant CBKPAN_FTNANDCTRL    : amba_device_type := 16#001#;
   constant CBKPAN_FTEEPROMCTRL  : amba_device_type := 16#002#;
   constant CBKPAN_FTSDCTRL16    : amba_device_type := 16#003#;
   -- DEDICATED START WITH 3
   constant CBKPAN_STIXCTRL      : amba_device_type := 16#300#;

-- pragma translate_off
   constant CBKPAN_DESC          : vendor_description 
                                 := "CBK PAN                 ";
   
   constant CBKPAN_device_table : device_table_type := (
   CBKPAN_FTNANDCTRL       => "NAND FLASH controller w/DMA    ",
   CBKPAN_FTEEPROMCTRL     => "Fault Toler. EEPROM Controller ",
   CBKPAN_FTSDCTRL16       => "Fault Toler. 16-bit SDRAM Ctrl.",
   CBKPAN_STIXCTRL         => "SolO/STIX IDPU dedicated ctrl. ",
   others                  => "Unknown Device                 ");
   
   
   constant CBKPAN_lib : vendor_library_type := (
      vendorid 	      => VENDOR_CBKPAN,
      vendordesc      => CBKPAN_DESC,
      device_table    => CBKPAN_device_table
   );

-- pragma translate_on
end package;

