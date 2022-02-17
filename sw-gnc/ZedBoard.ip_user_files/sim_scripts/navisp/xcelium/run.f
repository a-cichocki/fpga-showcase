-makelib xcelium_lib/xilinx_vip -sv \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_processing_system7_0_0/sim/navisp_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xbar_0/sim/navisp_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_rst_ps7_0_100M_0/sim/navisp_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_1 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_0/sim/navisp_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_bram_0/sim/navisp_axi_bram_ctrl_0_bram_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_apb_bridge_v3_0_15 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/7df3/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_axi_apb_bridge_0_0/sim/navisp_axi_apb_bridge_0_0.vhd" \
-endlib
-makelib xcelium_lib/ahblite_axi_bridge_v3_0_14 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/2efd/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_ahblite_axi_bridge_1_0/sim/navisp_ahblite_axi_bridge_1_0.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlslice_0_0/sim/navisp_xlslice_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_axi_gpio_0_1/sim/navisp_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlslice_0_1/sim/navisp_xlslice_0_1.v" \
-endlib
-makelib xcelium_lib/grlib \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config_types.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/version.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/stdlib.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/amba.vhd" \
-endlib
-makelib xcelium_lib/cbk \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/General_pkg/General_pkg.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_pkg.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_flashio.vhd" \
-endlib
-makelib xcelium_lib/grlib \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/devices.vhd" \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/amba/ahbmst.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ipshared/e213/sources_1/imports/new/FtNandCtrlWrap.vhd" \
  "../../../bd/navisp/ip/navisp_FtNandCtrlWrap_0_1/sim/navisp_FtNandCtrlWrap_0_1.vhd" \
  "../../../bd/navisp/ip/navisp_ahblite_axi_bridge_0_1/sim/navisp_ahblite_axi_bridge_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlslice_0_2/sim/navisp_xlslice_0_2.v" \
  "../../../bd/navisp/ip/navisp_xlslice_0_3/sim/navisp_xlslice_0_3.v" \
  "../../../bd/navisp/ip/navisp_xlslice_0_4/sim/navisp_xlslice_0_4.v" \
  "../../../bd/navisp/ip/navisp_xlslice_2_0/sim/navisp_xlslice_2_0.v" \
  "../../../bd/navisp/ip/navisp_xlslice_2_1/sim/navisp_xlslice_2_1.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlconcat_0_1/sim/navisp_xlconcat_0_1.v" \
  "../../../bd/navisp/ip/navisp_xlslice_0_6/sim/navisp_xlslice_0_6.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_ila_0_0/sim/navisp_ila_0_0.vhd" \
  "../../../bd/navisp/ip/navisp_ila_0_1/sim/navisp_ila_0_1.vhd" \
  "../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/sim/bd_1828.vhd" \
  "../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/ip/ip_0/sim/bd_1828_ila_lib_0.vhd" \
  "../../../bd/navisp/ip/navisp_system_ila_0_0/sim/navisp_system_ila_0_0.vhd" \
-endlib
-makelib xcelium_lib/cbk \
  "../../../bd/navisp/ipshared/5901/sources_1/imports/Navisp_pkg/MaxAcq.vhd" \
  "../../../bd/navisp/ipshared/5901/sources_1/imports/new/MaxAcqWrap.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_MaxAcqWrap_0_1/sim/navisp_MaxAcqWrap_0_1.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uart16550_v2_0_21 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a71f/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_axi_uart16550_0_0/sim/navisp_axi_uart16550_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlconcat_0_2/sim/navisp_xlconcat_0_2.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xlconstant_0_0/sim/navisp_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_conv_funs_pkg.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_proc_common_pkg.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_ipif_pkg.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_family_support.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_family.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_soft_reset.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_pselect_f.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_address_decoder.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_slave_attachment.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_interrupt_control.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/navisp_xadc_wiz_0_0_axi_lite_ipif.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0_xadc_core_drp.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0_axi_xadc.vhd" \
  "../../../bd/navisp/ip/navisp_xadc_wiz_0_0/navisp_xadc_wiz_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/ip/navisp_auto_pc_4/sim/navisp_auto_pc_4.v" \
  "../../../bd/navisp/ip/navisp_auto_pc_0/sim/navisp_auto_pc_0.v" \
  "../../../bd/navisp/ip/navisp_auto_pc_1/sim/navisp_auto_pc_1.v" \
  "../../../bd/navisp/ip/navisp_auto_pc_2/sim/navisp_auto_pc_2.v" \
  "../../../bd/navisp/ip/navisp_auto_pc_3/sim/navisp_auto_pc_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/navisp/sim/navisp.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

