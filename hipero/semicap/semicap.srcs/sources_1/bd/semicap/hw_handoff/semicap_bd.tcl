
################################################################
# This is a generated script based on design: semicap
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source semicap_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# icapmux

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.5 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name semicap

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set AXI_ENG [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_ENG ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {12} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $AXI_ENG

  set AXI_HW [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_HW ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {12} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $AXI_HW


  # Create ports
  set IRq [ create_bd_port -dir O IRq ]
  set areset_n [ create_bd_port -dir I -type rst areset_n ]
  set clk_axi [ create_bd_port -dir I -type clk clk_axi ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {AXI_ENG:AXI_HW} \
   CONFIG.ASSOCIATED_RESET {areset_n} \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk_axi
  set iRpMinVoter_0 [ create_bd_port -dir I -from 3 -to 0 iRpMinVoter_0 ]
  set oRpReset_n_0 [ create_bd_port -dir O -from 2 -to 0 oRpReset_n_0 ]
  set spi_c_0 [ create_bd_port -dir O spi_c_0 ]
  set spi_d_0 [ create_bd_port -dir O spi_d_0 ]
  set spi_q_0 [ create_bd_port -dir I spi_q_0 ]
  set spi_s_n_0 [ create_bd_port -dir O spi_s_n_0 ]

  # Create instance: axi_hwicap, and set properties
  set axi_hwicap [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap ]
  set_property -dict [ list \
   CONFIG.C_ICAP_EXTERNAL {1} \
   CONFIG.C_MODE {0} \
   CONFIG.C_OPERATION {1} \
   CONFIG.C_READ_FIFO_DEPTH {256} \
   CONFIG.C_WRITE_FIFO_DEPTH {1024} \
 ] $axi_hwicap

  # Create instance: hipero_icap_0, and set properties
  set hipero_icap_0 [ create_bd_cell -type ip -vlnv cbkpan:hipero:hipero_icap:2.0 hipero_icap_0 ]

  # Create instance: hipero_sem, and set properties
  set hipero_sem [ create_bd_cell -type ip -vlnv xilinx.com:ip:sem_ultra:3.1 hipero_sem ]
  set_property -dict [ list \
   CONFIG.MODE {mitigation_and_testing} \
 ] $hipero_sem

  # Create instance: icapmux_0, and set properties
  set block_name icapmux
  set block_cell_name icapmux_0
  if { [catch {set icapmux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $icapmux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: semicap_axi_0, and set properties
  set semicap_axi_0 [ create_bd_cell -type ip -vlnv cbkpan:hipero:semicap_axi:1.0 semicap_axi_0 ]

  # Create instance: semicap_engine_0, and set properties
  set semicap_engine_0 [ create_bd_cell -type ip -vlnv cbkpan:hipero:semicap_engine:1.0 semicap_engine_0 ]

  # Create instance: semicap_spihelper_0, and set properties
  set semicap_spihelper_0 [ create_bd_cell -type ip -vlnv cbkpan:hipero:semicap_spihelper:1.0 semicap_spihelper_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_ports AXI_ENG] [get_bd_intf_pins semicap_axi_0/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_LITE_0_1 [get_bd_intf_ports AXI_HW] [get_bd_intf_pins axi_hwicap/S_AXI_LITE]

  # Create port connections
  connect_bd_net -net axi_hwicap_cap_req [get_bd_pins axi_hwicap/cap_req] [get_bd_pins semicap_engine_0/iHwIcapRequest]
  connect_bd_net -net axi_hwicap_icap_csib [get_bd_pins axi_hwicap/icap_csib] [get_bd_pins icapmux_0/iHwIcapCsib]
  connect_bd_net -net axi_hwicap_icap_o [get_bd_pins axi_hwicap/icap_o] [get_bd_pins icapmux_0/iHwIcapO]
  connect_bd_net -net axi_hwicap_icap_rdwrb [get_bd_pins axi_hwicap/icap_rdwrb] [get_bd_pins icapmux_0/iHwIcapWr_n]
  connect_bd_net -net axi_hwicap_ip2intc_irpt [get_bd_pins axi_hwicap/ip2intc_irpt] [get_bd_pins semicap_engine_0/iHwIcapIrq]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_axi] [get_bd_pins axi_hwicap/icap_clk] [get_bd_pins axi_hwicap/s_axi_aclk] [get_bd_pins hipero_icap_0/icap_clk] [get_bd_pins hipero_sem/icap_clk] [get_bd_pins semicap_axi_0/s00_axi_aclk] [get_bd_pins semicap_engine_0/iClk] [get_bd_pins semicap_spihelper_0/icap_clk]
  connect_bd_net -net hipero_icap_0_fecc_crcerror [get_bd_pins hipero_icap_0/fecc_crcerror] [get_bd_pins hipero_sem/fecc_crcerror]
  connect_bd_net -net hipero_icap_0_fecc_eccerrornotsingle [get_bd_pins hipero_icap_0/fecc_eccerrornotsingle] [get_bd_pins hipero_sem/fecc_eccerrornotsingle]
  connect_bd_net -net hipero_icap_0_fecc_eccerrorsingle [get_bd_pins hipero_icap_0/fecc_eccerrorsingle] [get_bd_pins hipero_sem/fecc_eccerrorsingle]
  connect_bd_net -net hipero_icap_0_fecc_endofframe [get_bd_pins hipero_icap_0/fecc_endofframe] [get_bd_pins hipero_sem/fecc_endofframe]
  connect_bd_net -net hipero_icap_0_fecc_endofscan [get_bd_pins hipero_icap_0/fecc_endofscan] [get_bd_pins hipero_sem/fecc_endofscan]
  connect_bd_net -net hipero_icap_0_fecc_far [get_bd_pins hipero_icap_0/fecc_far] [get_bd_pins hipero_sem/fecc_far]
  connect_bd_net -net hipero_icap_0_icap_avail [get_bd_pins hipero_icap_0/icap_avail] [get_bd_pins icapmux_0/iIcapAvail]
  connect_bd_net -net hipero_icap_0_icap_o [get_bd_pins hipero_icap_0/icap_o] [get_bd_pins icapmux_0/iIcapO]
  connect_bd_net -net hipero_icap_0_icap_prdone [get_bd_pins hipero_icap_0/icap_prdone] [get_bd_pins icapmux_0/iIcapPrDone]
  connect_bd_net -net hipero_icap_0_icap_prerror [get_bd_pins hipero_icap_0/icap_prerror] [get_bd_pins icapmux_0/iIcapPrError]
  connect_bd_net -net hipero_sem_cap_req [get_bd_pins hipero_sem/cap_req] [get_bd_pins semicap_engine_0/iSemCapRequest]
  connect_bd_net -net hipero_sem_command_busy [get_bd_pins hipero_sem/command_busy] [get_bd_pins semicap_engine_0/iSemCmdBusy]
  connect_bd_net -net hipero_sem_fecc_farsel [get_bd_pins hipero_icap_0/fecc_farsel] [get_bd_pins hipero_sem/fecc_farsel]
  connect_bd_net -net hipero_sem_fetch_rxread [get_bd_pins hipero_sem/fetch_rxread] [get_bd_pins semicap_spihelper_0/fetch_rxread]
  connect_bd_net -net hipero_sem_fetch_txdata [get_bd_pins hipero_sem/fetch_txdata] [get_bd_pins semicap_spihelper_0/fetch_txdata]
  connect_bd_net -net hipero_sem_fetch_txwrite [get_bd_pins hipero_sem/fetch_txwrite] [get_bd_pins semicap_spihelper_0/fetch_txwrite]
  connect_bd_net -net hipero_sem_icap_csib [get_bd_pins hipero_sem/icap_csib] [get_bd_pins icapmux_0/iSemIcapCsib]
  connect_bd_net -net hipero_sem_icap_i [get_bd_pins hipero_sem/icap_i] [get_bd_pins icapmux_0/iSemIcapO]
  connect_bd_net -net hipero_sem_icap_rdwrb [get_bd_pins hipero_sem/icap_rdwrb] [get_bd_pins icapmux_0/iSemIcapWr_n]
  connect_bd_net -net hipero_sem_monitor_rxread [get_bd_pins hipero_sem/monitor_rxread] [get_bd_pins semicap_engine_0/iSemMonRxRead]
  connect_bd_net -net hipero_sem_monitor_txdata [get_bd_pins hipero_sem/monitor_txdata] [get_bd_pins semicap_engine_0/iSemMonTxData]
  connect_bd_net -net hipero_sem_monitor_txwrite [get_bd_pins hipero_sem/monitor_txwrite] [get_bd_pins semicap_engine_0/iSemMonTxWrite]
  connect_bd_net -net hipero_sem_status_classification [get_bd_pins hipero_sem/status_classification] [get_bd_pins semicap_engine_0/iSemStatusclassification]
  connect_bd_net -net hipero_sem_status_correction [get_bd_pins hipero_sem/status_correction] [get_bd_pins semicap_engine_0/iSemStatuscorrection]
  connect_bd_net -net hipero_sem_status_detect_only [get_bd_pins hipero_sem/status_detect_only] [get_bd_pins semicap_engine_0/iSemStatusdetectOnly]
  connect_bd_net -net hipero_sem_status_diagnostic_scan [get_bd_pins hipero_sem/status_diagnostic_scan] [get_bd_pins semicap_engine_0/iSemStatusdiagnosticScan]
  connect_bd_net -net hipero_sem_status_essential [get_bd_pins hipero_sem/status_essential] [get_bd_pins semicap_engine_0/iSemStatusessential]
  connect_bd_net -net hipero_sem_status_heartbeat [get_bd_pins hipero_sem/status_heartbeat] [get_bd_pins semicap_engine_0/iSemStatusheartbeat]
  connect_bd_net -net hipero_sem_status_initialization [get_bd_pins hipero_sem/status_initialization] [get_bd_pins semicap_engine_0/iSemStatusinitialization]
  connect_bd_net -net hipero_sem_status_injection [get_bd_pins hipero_sem/status_injection] [get_bd_pins semicap_engine_0/iSemStatusinjection]
  connect_bd_net -net hipero_sem_status_observation [get_bd_pins hipero_sem/status_observation] [get_bd_pins semicap_engine_0/iSemStatusobservation]
  connect_bd_net -net hipero_sem_status_uncorrectable [get_bd_pins hipero_sem/status_uncorrectable] [get_bd_pins semicap_engine_0/iSemStatusuncorrectable]
  connect_bd_net -net iRpMinVoter_0_1 [get_bd_ports iRpMinVoter_0] [get_bd_pins semicap_engine_0/iRpMinVoter]
  connect_bd_net -net icapmux_0_oHwIcapAvail [get_bd_pins axi_hwicap/icap_avail] [get_bd_pins icapmux_0/oHwIcapAvail]
  connect_bd_net -net icapmux_0_oHwIcapI [get_bd_pins axi_hwicap/icap_i] [get_bd_pins icapmux_0/oHwIcapI]
  connect_bd_net -net icapmux_0_oIcapCsib [get_bd_pins hipero_icap_0/icap_csib] [get_bd_pins icapmux_0/oIcapCsib]
  connect_bd_net -net icapmux_0_oIcapI [get_bd_pins hipero_icap_0/icap_i] [get_bd_pins icapmux_0/oIcapI]
  connect_bd_net -net icapmux_0_oIcapRdWrb [get_bd_pins hipero_icap_0/icap_rdwrb] [get_bd_pins icapmux_0/oIcapRdWrb]
  connect_bd_net -net icapmux_0_oSemIcapAvail [get_bd_pins hipero_sem/icap_avail] [get_bd_pins icapmux_0/oSemIcapAvail]
  connect_bd_net -net icapmux_0_oSemIcapI [get_bd_pins hipero_sem/icap_o] [get_bd_pins icapmux_0/oSemIcapI]
  connect_bd_net -net icapmux_0_oSemIcapPrDone [get_bd_pins hipero_sem/icap_prdone] [get_bd_pins icapmux_0/oSemIcapPrDone]
  connect_bd_net -net icapmux_0_oSemIcapPrError [get_bd_pins hipero_sem/icap_prerror] [get_bd_pins icapmux_0/oSemIcapPrError]
  connect_bd_net -net s00_axi_aresetn_0_1 [get_bd_ports areset_n] [get_bd_pins axi_hwicap/s_axi_aresetn] [get_bd_pins semicap_axi_0/s00_axi_aresetn] [get_bd_pins semicap_engine_0/iRst_n]
  connect_bd_net -net semicap_axi_0_oConfigRegIrqMask [get_bd_pins semicap_axi_0/oConfigRegIrqMask] [get_bd_pins semicap_engine_0/iConfigRegIrqMask]
  connect_bd_net -net semicap_axi_0_oConfigRegSemEn [get_bd_pins semicap_axi_0/oConfigRegSemEn] [get_bd_pins semicap_engine_0/iConfigRegSemEn]
  connect_bd_net -net semicap_axi_0_oMinVoterRegClearStrobe [get_bd_pins semicap_axi_0/oMinVoterRegClearStrobe] [get_bd_pins semicap_engine_0/iMinVoterRegClearStrobe]
  connect_bd_net -net semicap_axi_0_oMonitorRegByte [get_bd_pins semicap_axi_0/oMonitorRegByte] [get_bd_pins semicap_engine_0/iMonitorRegByte]
  connect_bd_net -net semicap_axi_0_oMonitorRegGetByte [get_bd_pins semicap_axi_0/oMonitorRegGetByte] [get_bd_pins semicap_engine_0/iMonitorRegGetByte]
  connect_bd_net -net semicap_axi_0_oMonitorRegPutByte [get_bd_pins semicap_axi_0/oMonitorRegPutByte] [get_bd_pins semicap_engine_0/iMonitorRegPutByte]
  connect_bd_net -net semicap_axi_0_oMonitorRegWriteStrobe [get_bd_pins semicap_axi_0/oMonitorRegWriteStrobe] [get_bd_pins semicap_engine_0/iMonitorRegWriteStrobe]
  connect_bd_net -net semicap_axi_0_oResetsReg [get_bd_pins semicap_axi_0/oResetsReg] [get_bd_pins semicap_engine_0/iResetsReg]
  connect_bd_net -net semicap_axi_0_oTblAddReg [get_bd_pins semicap_axi_0/oTblAddReg] [get_bd_pins semicap_engine_0/iTblAddReg]
  connect_bd_net -net semicap_engine_0_oConfigRegIrqMask [get_bd_pins semicap_axi_0/iConfigRegIrqMask] [get_bd_pins semicap_engine_0/oConfigRegIrqMask]
  connect_bd_net -net semicap_engine_0_oConfigRegSemEn [get_bd_pins semicap_axi_0/iConfigRegSemEn] [get_bd_pins semicap_engine_0/oConfigRegSemEn]
  connect_bd_net -net semicap_engine_0_oDevInfoId [get_bd_pins semicap_axi_0/iDevInfoId] [get_bd_pins semicap_engine_0/oDevInfoId]
  connect_bd_net -net semicap_engine_0_oDevInfoVersionMajor [get_bd_pins semicap_axi_0/iDevInfoVersionMajor] [get_bd_pins semicap_engine_0/oDevInfoVersionMajor]
  connect_bd_net -net semicap_engine_0_oDevInfoVersionMinor [get_bd_pins semicap_axi_0/iDevInfoVersionMinor] [get_bd_pins semicap_engine_0/oDevInfoVersionMinor]
  connect_bd_net -net semicap_engine_0_oHwIcapEos [get_bd_pins axi_hwicap/eos_in] [get_bd_pins semicap_engine_0/oHwIcapEos]
  connect_bd_net -net semicap_engine_0_oHwIcapGrant [get_bd_pins axi_hwicap/cap_gnt] [get_bd_pins semicap_engine_0/oHwIcapGrant]
  connect_bd_net -net semicap_engine_0_oHwIcapRelinquish [get_bd_pins axi_hwicap/cap_rel] [get_bd_pins semicap_engine_0/oHwIcapRelinquish]
  connect_bd_net -net semicap_engine_0_oIRq [get_bd_ports IRq] [get_bd_pins semicap_engine_0/oIRq]
  connect_bd_net -net semicap_engine_0_oMinVoterRegCmpStat [get_bd_pins semicap_axi_0/iMinVoterRegCmpStat] [get_bd_pins semicap_engine_0/oMinVoterRegCmpStat]
  connect_bd_net -net semicap_engine_0_oMinVoterRegTmrStat [get_bd_pins semicap_axi_0/iMinVoterRegTmrStat] [get_bd_pins semicap_engine_0/oMinVoterRegTmrStat]
  connect_bd_net -net semicap_engine_0_oMonitorRegByte [get_bd_pins semicap_axi_0/iMonitorRegByte] [get_bd_pins semicap_engine_0/oMonitorRegByte]
  connect_bd_net -net semicap_engine_0_oMuxSemSelect [get_bd_pins icapmux_0/iEngSemSelect] [get_bd_pins semicap_engine_0/oMuxSemSelect]
  connect_bd_net -net semicap_engine_0_oRpReset_n [get_bd_ports oRpReset_n_0] [get_bd_pins semicap_engine_0/oRpReset_n]
  connect_bd_net -net semicap_engine_0_oSemAuxErrorCrEs [get_bd_pins hipero_sem/aux_error_cr_es] [get_bd_pins semicap_engine_0/oSemAuxErrorCrEs]
  connect_bd_net -net semicap_engine_0_oSemAuxErrorCrNe [get_bd_pins hipero_sem/aux_error_cr_ne] [get_bd_pins semicap_engine_0/oSemAuxErrorCrNe]
  connect_bd_net -net semicap_engine_0_oSemAuxErrorUc [get_bd_pins hipero_sem/aux_error_uc] [get_bd_pins semicap_engine_0/oSemAuxErrorUc]
  connect_bd_net -net semicap_engine_0_oSemCapGrant [get_bd_pins hipero_sem/cap_gnt] [get_bd_pins semicap_engine_0/oSemCapGrant]
  connect_bd_net -net semicap_engine_0_oSemCapRelinquish [get_bd_pins hipero_sem/cap_rel] [get_bd_pins semicap_engine_0/oSemCapRelinquish]
  connect_bd_net -net semicap_engine_0_oSemCmdCode [get_bd_pins hipero_sem/command_code] [get_bd_pins semicap_engine_0/oSemCmdCode]
  connect_bd_net -net semicap_engine_0_oSemCmdStrobe [get_bd_pins hipero_sem/command_strobe] [get_bd_pins semicap_engine_0/oSemCmdStrobe]
  connect_bd_net -net semicap_engine_0_oSemFetchTblAddr [get_bd_pins hipero_sem/fetch_tbladdr] [get_bd_pins semicap_engine_0/oSemFetchTblAddr]
  connect_bd_net -net semicap_engine_0_oSemMonRxData [get_bd_pins hipero_sem/monitor_rxdata] [get_bd_pins semicap_engine_0/oSemMonRxData]
  connect_bd_net -net semicap_engine_0_oSemMonRxEmpty [get_bd_pins hipero_sem/monitor_rxempty] [get_bd_pins semicap_engine_0/oSemMonRxEmpty]
  connect_bd_net -net semicap_engine_0_oSemMonTxFull [get_bd_pins hipero_sem/monitor_txfull] [get_bd_pins semicap_engine_0/oSemMonTxFull]
  connect_bd_net -net semicap_engine_0_oStatusRegFifoCmdFull [get_bd_pins semicap_axi_0/iStatusRegFifoCmdFull] [get_bd_pins semicap_engine_0/oStatusRegFifoCmdFull]
  connect_bd_net -net semicap_engine_0_oStatusRegFifoStatFull [get_bd_pins semicap_axi_0/iStatusRegFifoStatFull] [get_bd_pins semicap_engine_0/oStatusRegFifoStatFull]
  connect_bd_net -net semicap_engine_0_oStatusRegMonEmpty [get_bd_pins semicap_axi_0/iStatusRegMonEmpty] [get_bd_pins semicap_engine_0/oStatusRegMonEmpty]
  connect_bd_net -net semicap_engine_0_oStatusRegState [get_bd_pins semicap_axi_0/iStatusRegState] [get_bd_pins semicap_engine_0/oStatusRegState]
  connect_bd_net -net semicap_engine_0_oTblAddReg [get_bd_pins semicap_axi_0/iTblAddReg] [get_bd_pins semicap_engine_0/oTblAddReg]
  connect_bd_net -net semicap_spihelper_0_fetch_rxdata [get_bd_pins hipero_sem/fetch_rxdata] [get_bd_pins semicap_spihelper_0/fetch_rxdata]
  connect_bd_net -net semicap_spihelper_0_fetch_rxempty [get_bd_pins hipero_sem/fetch_rxempty] [get_bd_pins semicap_spihelper_0/fetch_rxempty]
  connect_bd_net -net semicap_spihelper_0_fetch_txfull [get_bd_pins hipero_sem/fetch_txfull] [get_bd_pins semicap_spihelper_0/fetch_txfull]
  connect_bd_net -net semicap_spihelper_0_spi_c [get_bd_ports spi_c_0] [get_bd_pins semicap_spihelper_0/spi_c]
  connect_bd_net -net semicap_spihelper_0_spi_d [get_bd_ports spi_d_0] [get_bd_pins semicap_spihelper_0/spi_d]
  connect_bd_net -net semicap_spihelper_0_spi_s_n [get_bd_ports spi_s_n_0] [get_bd_pins semicap_spihelper_0/spi_s_n]
  connect_bd_net -net spi_q_0_1 [get_bd_ports spi_q_0] [get_bd_pins semicap_spihelper_0/spi_q]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces AXI_HW] [get_bd_addr_segs axi_hwicap/S_AXI_LITE/Reg] SEG_axi_hwicap_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces AXI_ENG] [get_bd_addr_segs semicap_axi_0/S00_AXI/S00_AXI_reg] SEG_semicap_axi_0_S00_AXI_reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


