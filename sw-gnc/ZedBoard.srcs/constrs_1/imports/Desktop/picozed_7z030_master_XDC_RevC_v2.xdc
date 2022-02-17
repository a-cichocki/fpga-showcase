
#     _____
#    / #   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET ELECTRONICS MARKETING
#      \======/         www.picozed.org
#       \====/
# ----------------------------------------------------------------------------
#
#  Created With Avnet Constraints Generator V0.8.0
#     Date: Friday, December 19, 2014
#     Time: 1:57:39 PM
#
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#
#  Please direct any questions to:
#     Avnet Technical Community Forums
#     http://picozed.org/forum
#
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2014 Avnet, Inc.
#                              All rights reserved.
#
# ----------------------------------------------------------------------------
#
#  Notes:
#
#  Monday, april 20, 2015
#
#     IO standards based upon Bank 34, Bank 35, and Bank 13 Vcco supply
#     of 1.8V requires bank VCCO voltage to be set to 1.8V.
#
#     Net names are not allowed to contain hyphen characters '-' since this
#     is not a legal VHDL87 or Verilog character within an identifier.
#     HDL net names are adjusted to contain no hyphen characters '-' but
#     rather use underscore '_' characters.  Comment net name with the hyphen
#     characters will remain in place since these are intended to match the
#     schematic net names in order to better enable schematic search.
#
#     The string provided in the comment field provides the Zynq device pin
#     mapping in the following format:
#
#     "<Zynq Pin>.<SOM Net>"
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Expansion I/O - Bank 13 - 3.3V
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN AA15 [get_ports {BANK13_LVDS_0_N }];
#set_property PACKAGE_PIN AA14 [get_ports {BANK13_LVDS_0_P }];
set_property PACKAGE_PIN Y15 [get_ports PJTAG_TDO]
set_property PACKAGE_PIN Y14 [get_ports PJTAG_TDI]
set_property PACKAGE_PIN Y13 [get_ports {NADQ[3]}]
set_property PACKAGE_PIN Y12 [get_ports {NADQ[2]}]
#set_property PACKAGE_PIN W11  [get_ports {DBG_TX}];
set_property PACKAGE_PIN V11 [get_ports iMaxClk]
set_property PACKAGE_PIN V14 [get_ports {NADQ[5]}]
set_property PACKAGE_PIN V13 [get_ports {NADQ[4]}]
set_property PACKAGE_PIN W13 [get_ports {ALE[0]}]
set_property PACKAGE_PIN W12 [get_ports {WE[0]}]
set_property PACKAGE_PIN T17 [get_ports {NADQ[7]}]
set_property PACKAGE_PIN R17 [get_ports {NADQ[6]}]
set_property PACKAGE_PIN W15 [get_ports {CE[0]}]
set_property PACKAGE_PIN V15 [get_ports {CLE[0]}]
set_property PACKAGE_PIN W16 [get_ports {RE[0]}]
set_property PACKAGE_PIN V16 [get_ports {RB[0]}]
#set_property PACKAGE_PIN V19  [get_ports {BANK13_LVDS_2_N }];
#set_property PACKAGE_PIN U19  [get_ports {BANK13_LVDS_2_P }];
set_property PACKAGE_PIN W18 [get_ports PJTAG_TMS]
set_property PACKAGE_PIN V18 [get_ports PJTAG_TCK]
#set_property PACKAGE_PIN AB22 [get_ports {BANK13_LVDS_4_N }];
#set_property PACKAGE_PIN AB21 [get_ports {BANK13_LVDS_4_P }];
#set_property PACKAGE_PIN AB19 [get_ports {BANK13_LVDS_5_N }];
#set_property PACKAGE_PIN AB18 [get_ports {BANK13_LVDS_5_P }];
#set_property PACKAGE_PIN AA20 [get_ports {BANK13_LVDS_6_N }];
#set_property PACKAGE_PIN AA19 [get_ports {BANK13_LVDS_6_P }];
#set_property PACKAGE_PIN Y19  [get_ports {BANK13_LVDS_7_N }];
#set_property PACKAGE_PIN Y18  [get_ports {MAX_I_1 }];
set_property PACKAGE_PIN AA17 [get_ports {NADQ[1]}]
set_property PACKAGE_PIN AA16 [get_ports {NADQ[0]}]
set_property PACKAGE_PIN AB11 [get_ports iMAxI0]
#set_property PACKAGE_PIN AA11 [get_ports {BANK13_LVDS_9_P }];
#set_property PACKAGE_PIN T16  [get_ports {BANK13_SE_0     }];


# ----------------------------------------------------------------------------
# Expansion Connector JX1 - Bank 35 -
# Warning! Bank 35 is a High Performance Bank on the 7030
# and will only accept 1.8V level signals
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN H3   [get_ports {JX1_LVDS_0_N    }];
#set_property PACKAGE_PIN H4   [get_ports {JX1_LVDS_0_P    }];
set_property PACKAGE_PIN E5 [get_ports {GPIN[2]}]
#set_property PACKAGE_PIN F5   [get_ports {DBG_RX    }];
#set_property PACKAGE_PIN C5   [get_ports {JX1_LVDS_10_N   }];
#set_property PACKAGE_PIN C6   [get_ports {JX1_LVDS_10_P   }];
set_property PACKAGE_PIN D5   [get_ports {GPOUT[11]}];
set_property PACKAGE_PIN C4   [get_ports {GPOUT[12]}];
#set_property PACKAGE_PIN B3   [get_ports {JX1_LVDS_12_N   }];
#set_property PACKAGE_PIN B4   [get_ports {JX1_LVDS_12_P   }];
#set_property PACKAGE_PIN C3   [get_ports {JX1_LVDS_13_N   }];
#set_property PACKAGE_PIN D3   [get_ports {JX1_LVDS_13_P   }];
#set_property PACKAGE_PIN C1   [get_ports {JX1_LVDS_14_N   }];
#set_property PACKAGE_PIN D1   [get_ports {JX1_LVDS_14_P   }];
#set_property PACKAGE_PIN A1   [get_ports {JX1_LVDS_15_N   }];
#set_property PACKAGE_PIN A2   [get_ports {JX1_LVDS_15_P   }];
set_property PACKAGE_PIN D2 [get_ports {bFIOB[0]}]
set_property PACKAGE_PIN E2 [get_ports {bFIOB[1]}]
set_property PACKAGE_PIN D6 [get_ports {bFIOB[2]}]
set_property PACKAGE_PIN D7 [get_ports {bFIOB[3]}]
set_property PACKAGE_PIN E7 [get_ports {bFIOB[4]}]
set_property PACKAGE_PIN F7 [get_ports {bFIOB[5]}]
set_property PACKAGE_PIN A4 [get_ports {bFIOB[6]}]
set_property PACKAGE_PIN A5 [get_ports {bFIOB[7]}]
#set_property PACKAGE_PIN G2   [get_ports {JX1_LVDS_2_N    }];
#set_property PACKAGE_PIN G3   [get_ports {JX1_LVDS_2_P    }];
#set_property PACKAGE_PIN G7   [get_ports {JX1_LVDS_20_N   }];
#set_property PACKAGE_PIN G8   [get_ports {JX1_LVDS_20_P   }];
#set_property PACKAGE_PIN A6   [get_ports {JX1_LVDS_21_N   }];
#set_property PACKAGE_PIN A7   [get_ports {JX1_LVDS_21_P   }];
#set_property PACKAGE_PIN B6   [get_ports {JX1_LVDS_22_N   }];
#set_property PACKAGE_PIN B7   [get_ports {JX1_LVDS_22_P   }];
#set_property PACKAGE_PIN B8   [get_ports {JX1_LVDS_23_N   }];
#set_property PACKAGE_PIN C8   [get_ports {JX1_LVDS_23_P   }];
set_property PACKAGE_PIN F1 [get_ports IMU_RX]
set_property PACKAGE_PIN F2 [get_ports {GPIN[1]}]
#set_property PACKAGE_PIN F4   [get_ports {JX1_LVDS_4_N    }];
#set_property PACKAGE_PIN G4   [get_ports {JX1_LVDS_4_P    }];
set_property PACKAGE_PIN E3 [get_ports IMU_TX]
set_property PACKAGE_PIN E4 [get_ports {GPIN[0]}]
#set_property PACKAGE_PIN F6   [get_ports {JX1_LVDS_6_N    }];
#set_property PACKAGE_PIN G6   [get_ports {JX1_LVDS_6_P    }];
set_property PACKAGE_PIN B1 [get_ports {GPOUT[4]}]
set_property PACKAGE_PIN B2 [get_ports {GPOUT[1]}]
#set_property PACKAGE_PIN D8   [get_ports {JX1_LVDS_8_N    }];
#set_property PACKAGE_PIN E8   [get_ports {JX1_LVDS_8_P    }];
set_property PACKAGE_PIN G1 [get_ports {GPOUT[2]}]
set_property PACKAGE_PIN H1 [get_ports {GPOUT[5]}]
#set_property PACKAGE_PIN H6   [get_ports {JX1_SE_0        }];
#set_property PACKAGE_PIN H5   [get_ports {JX1_SE_1        }];


# ----------------------------------------------------------------------------
# Expansion Connector JX2 - Bank 34
# Warning! Bank 34 is a High Performance Bank on the 7030
# and will only accept 1.8V level signals
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN M3   [get_ports {JX2_LVDS_0_N    }];
#set_property PACKAGE_PIN M4   [get_ports {JX2_LVDS_0_P    }];
set_property PACKAGE_PIN J1 [get_ports {GPOUT[3]}]
set_property PACKAGE_PIN J2 [get_ports {GPOUT[0]}]
#set_property PACKAGE_PIN K3   [get_ports {JX2_LVDS_10_N   }];
#set_property PACKAGE_PIN K4   [get_ports {JX2_LVDS_10_P   }];
#set_property PACKAGE_PIN L4   [get_ports {JX2_LVDS_11_N   }];
#set_property PACKAGE_PIN L5   [get_ports {JX2_LVDS_11_P   }];
#set_property PACKAGE_PIN T1   [get_ports {JX2_LVDS_12_N   }];
#set_property PACKAGE_PIN T2   [get_ports {JX2_LVDS_12_P   }];
#set_property PACKAGE_PIN U1   [get_ports {JX2_LVDS_13_N   }];
#set_property PACKAGE_PIN U2   [get_ports {JX2_LVDS_13_P   }];
#set_property PACKAGE_PIN R2   [get_ports {JX2_LVDS_14_N   }];
#set_property PACKAGE_PIN R3   [get_ports {JX2_LVDS_14_P   }];
#set_property PACKAGE_PIN M6   [get_ports {JX2_LVDS_15_N   }];
#set_property PACKAGE_PIN L6   [get_ports {JX2_LVDS_15_P   }];
#set_property PACKAGE_PIN K5   [get_ports {JX2_LVDS_16_N   }];
#set_property PACKAGE_PIN J5   [get_ports {JX2_LVDS_16_P   }];
#set_property PACKAGE_PIN R4   [get_ports {JX2_LVDS_17_N   }];
#set_property PACKAGE_PIN R5   [get_ports {JX2_LVDS_17_P   }];
#set_property PACKAGE_PIN J6   [get_ports {JX2_LVDS_18_N   }];
#set_property PACKAGE_PIN J7   [get_ports {JX2_LVDS_18_P   }];
#set_property PACKAGE_PIN P5   [get_ports {JX2_LVDS_19_N   }];
#set_property PACKAGE_PIN P6   [get_ports {JX2_LVDS_19_P   }];
#set_property PACKAGE_PIN L7   [get_ports {JX2_LVDS_2_N    }];
#set_property PACKAGE_PIN K7   [get_ports {JX2_LVDS_2_P    }];
#set_property PACKAGE_PIN K8   [get_ports {JX2_LVDS_20_N   }];
#set_property PACKAGE_PIN J8   [get_ports {JX2_LVDS_20_P   }];
#set_property PACKAGE_PIN N5   [get_ports {JX2_LVDS_21_N   }];
#set_property PACKAGE_PIN N6   [get_ports {JX2_LVDS_21_P   }];
#set_property PACKAGE_PIN M7   [get_ports {JX2_LVDS_22_N   }];
#set_property PACKAGE_PIN M8   [get_ports {JX2_LVDS_22_P   }];
#set_property PACKAGE_PIN P8   [get_ports {JX2_LVDS_23_N   }];
#set_property PACKAGE_PIN N8   [get_ports {JX2_LVDS_23_P   }];
set_property PACKAGE_PIN K2 [get_ports {GPOUT[7]}]
set_property PACKAGE_PIN J3 [get_ports {GPOUT[6]}]
#set_property PACKAGE_PIN R7   [get_ports {JX2_LVDS_4_N    }];
#set_property PACKAGE_PIN P7   [get_ports {JX2_LVDS_4_P    }];
set_property PACKAGE_PIN L1 [get_ports {GPOUT[9]}]
set_property PACKAGE_PIN L2 [get_ports {GPOUT[8]}]
#set_property PACKAGE_PIN N3   [get_ports {JX2_LVDS_6_N    }];
#set_property PACKAGE_PIN N4   [get_ports {JX2_LVDS_6_P    }];
#set_property PACKAGE_PIN P2   [get_ports {JX2_LVDS_7_N    }];
set_property PACKAGE_PIN P3 [get_ports {GPOUT[10]}]
#set_property PACKAGE_PIN M1   [get_ports {JX2_LVDS_8_N    }];
#set_property PACKAGE_PIN M2   [get_ports {JX2_LVDS_8_P    }];
#set_property PACKAGE_PIN P1   [get_ports {JX2_LVDS_9_N    }];
#set_property PACKAGE_PIN N1   [get_ports {JX2_LVDS_9_P    }];
#set_property PACKAGE_PIN H8   [get_ports {JX2_SE_0        }];
#set_property PACKAGE_PIN R8   [get_ports {JX2_SE_1        }];

# ----------------------------------------------------------------------------
# Expansion Connector JX3 - Bank 112
# ----------------------------------------------------------------------------

#set_property PACKAGE_PIN V9   [get_ports {MGTREFCLKC0_N   }];
#set_property PACKAGE_PIN U9   [get_ports {MGTREFCLKC0_P   }];
#set_property PACKAGE_PIN V5   [get_ports {MGTREFCLKC1_N   }];
#set_property PACKAGE_PIN U5   [get_ports {MGTREFCLKC1_P   }];
#set_property PACKAGE_PIN AB7  [get_ports {MGTRX0_N        }];
#set_property PACKAGE_PIN AA7  [get_ports {MGTRX0_P        }];
#set_property PACKAGE_PIN Y8   [get_ports {MGTRX1_N        }];
#set_property PACKAGE_PIN W8   [get_ports {MGTRX1_P        }];
#set_property PACKAGE_PIN AB9  [get_ports {MGTRX2_N        }];
#set_property PACKAGE_PIN AA9  [get_ports {MGTRX2_P        }];
#set_property PACKAGE_PIN Y6   [get_ports {MGTRX3_N        }];
#set_property PACKAGE_PIN W6   [get_ports {MGTRX3_P        }];
#set_property PACKAGE_PIN AB3  [get_ports {MGTTX0_N        }];
#set_property PACKAGE_PIN AA3  [get_ports {MGTTX0_P        }];
#set_property PACKAGE_PIN Y4   [get_ports {MGTTX1_N        }];
#set_property PACKAGE_PIN W4   [get_ports {MGTTX1_P        }];
#set_property PACKAGE_PIN AB5  [get_ports {MGTTX2_N        }];
#set_property PACKAGE_PIN AA5  [get_ports {MGTTX2_P        }];
#set_property PACKAGE_PIN Y2   [get_ports {MGTTX3_N        }];
#set_property PACKAGE_PIN W2   [get_ports {MGTTX3_P        }];


# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are
# evaluated prior to other PACKAGE_PIN constraints being applied, then
# the IOSTANDARD specified will likely not be applied properly to those
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed
# within the XDC file in a location that is evaluated AFTER all
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
#
# Warning! Bank 34 and Bank 35 are a High Performance Banks on the 7030
# and will only accept 1.8V level signals

# ----------------------------------------------------------------------------

# Set the bank voltage for IO Bank 34 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]]

# Set the bank voltage for IO Bank 35 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]]

# Set the bank voltage for IO Bank 13 to 1.8V by default.
#set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 13]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 13]];
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]]

create_clock -period 10.000 -name PJTAG_TCK [get_ports PJTAG_TCK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets iMaxClk_IBUF]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
