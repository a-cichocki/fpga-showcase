#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2019.1.1 (64-bit)
#
# Filename    : navisp.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Thu Feb 06 06:07:51 +0100 2020
# SW Build 2580384 on Sat Jun 29 08:12:21 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved. 
#
# usage: navisp.sh [-help]
# usage: navisp.sh [-lib_map_path]
# usage: navisp.sh [-noclean_files]
# usage: navisp.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'navisp.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xilinx_vip xil_defaultlib xpm axi_infrastructure_v1_1_0 axi_vip_v1_1_5 processing_system7_vip_v1_0_7 generic_baseblocks_v2_1_0 axi_register_slice_v2_1_19 fifo_generator_v13_2_4 axi_data_fifo_v2_1_18 axi_crossbar_v2_1_20 lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 axi_bram_ctrl_v4_1_1 blk_mem_gen_v8_4_3 lib_pkg_v1_0_2 axi_apb_bridge_v3_0_15 ahblite_axi_bridge_v3_0_14 xlslice_v1_0_2 axi_lite_ipif_v3_0_4 interrupt_control_v3_1_4 axi_gpio_v2_0_21 grlib cbk xlconcat_v2_1_3 lib_srl_fifo_v1_0_2 axi_uart16550_v2_0_21 xlconstant_v1_1_6 axi_protocol_converter_v2_1_19)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "navisp.sh - Script generated by export_simulation (Vivado v2019.1.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_5 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_7 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_processing_system7_0_0/sim/navisp_processing_system7_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_4 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_20 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xbar_0/sim/navisp_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_rst_ps7_0_100M_0/sim/navisp_rst_ps7_0_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_bram_ctrl_v4_1_1 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_0/sim/navisp_axi_bram_ctrl_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_bram_0/sim/navisp_axi_bram_ctrl_0_bram_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_apb_bridge_v3_0_15 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/7df3/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_axi_apb_bridge_0_0/sim/navisp_axi_apb_bridge_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work ahblite_axi_bridge_v3_0_14 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/2efd/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_ahblite_axi_bridge_1_0/sim/navisp_ahblite_axi_bridge_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlslice_v1_0_2 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_0/sim/navisp_xlslice_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_21 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_axi_gpio_0_1/sim/navisp_axi_gpio_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_1/sim/navisp_xlslice_0_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work grlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config_types.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/version.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/stdlib.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/amba.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work cbk $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/General_pkg/General_pkg.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_pkg.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_flashio.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work grlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/devices.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/amba/ahbmst.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ipshared/e213/sources_1/imports/new/FtNandCtrlWrap.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_FtNandCtrlWrap_0_1/sim/navisp_FtNandCtrlWrap_0_1.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_ahblite_axi_bridge_0_1/sim/navisp_ahblite_axi_bridge_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_2/sim/navisp_xlslice_0_2.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_3/sim/navisp_xlslice_0_3.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_4/sim/navisp_xlslice_0_4.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_2_0/sim/navisp_xlslice_2_0.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_2_1/sim/navisp_xlslice_2_1.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconcat_v2_1_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlconcat_0_1/sim/navisp_xlconcat_0_1.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlslice_0_6/sim/navisp_xlslice_0_6.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_ila_0_0/sim/navisp_ila_0_0.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_ila_0_1/sim/navisp_ila_0_1.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/sim/bd_1828.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/ip/ip_0/sim/bd_1828_ila_lib_0.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_system_ila_0_0/sim/navisp_system_ila_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work cbk $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ipshared/5901/sources_1/imports/Navisp_pkg/MaxAcq.vhd" \
    "$ref_dir/../../../bd/navisp/ipshared/5901/sources_1/imports/new/MaxAcqWrap.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_MaxAcqWrap_0_1/sim/navisp_MaxAcqWrap_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uart16550_v2_0_21 $vhdlan_opts \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a71f/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_axi_uart16550_0_0/sim/navisp_axi_uart16550_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlconcat_0_2/sim/navisp_xlconcat_0_2.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconstant_v1_1_6 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xlconstant_0_0/sim/navisp_xlconstant_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_conv_funs_pkg.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_proc_common_pkg.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_ipif_pkg.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_family_support.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_family.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_soft_reset.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_pselect_f.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_address_decoder.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_slave_attachment.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_interrupt_control.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_axi_lite_ipif.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0_xadc_core_drp.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0_axi_xadc.vhd" \
    "$ref_dir/../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_protocol_converter_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" +incdir+"$ref_dir/../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" +incdir+"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/navisp/ip/navisp_auto_pc_4/sim/navisp_auto_pc_4.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_auto_pc_0/sim/navisp_auto_pc_0.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_auto_pc_1/sim/navisp_auto_pc_1.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_auto_pc_2/sim/navisp_auto_pc_2.v" \
    "$ref_dir/../../../bd/navisp/ip/navisp_auto_pc_3/sim/navisp_auto_pc_3.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/navisp/sim/navisp.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.navisp xil_defaultlib.glbl -o navisp_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./navisp_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./navisp.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key navisp_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc navisp_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./navisp.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: navisp.sh [-help]\n\
Usage: navisp.sh [-lib_map_path]\n\
Usage: navisp.sh [-reset_run]\n\
Usage: navisp.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
