vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/processing_system7_vip_v1_0_7
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/axi_apb_bridge_v3_0_15
vlib modelsim_lib/msim/ahblite_axi_bridge_v3_0_14
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_21
vlib modelsim_lib/msim/grlib
vlib modelsim_lib/msim/cbk
vlib modelsim_lib/msim/xlconcat_v2_1_3
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uart16550_v2_0_21
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 modelsim_lib/msim/processing_system7_vip_v1_0_7
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_1 modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap axi_apb_bridge_v3_0_15 modelsim_lib/msim/axi_apb_bridge_v3_0_15
vmap ahblite_axi_bridge_v3_0_14 modelsim_lib/msim/ahblite_axi_bridge_v3_0_14
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 modelsim_lib/msim/axi_gpio_v2_0_21
vmap grlib modelsim_lib/msim/grlib
vmap cbk modelsim_lib/msim/cbk
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_21 modelsim_lib/msim/axi_uart16550_v2_0_21
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_processing_system7_0_0/sim/navisp_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xbar_0/sim/navisp_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_rst_ps7_0_100M_0/sim/navisp_rst_ps7_0_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_1 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_0/sim/navisp_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_axi_bram_ctrl_0_bram_0/sim/navisp_axi_bram_ctrl_0_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_15 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/7df3/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_axi_apb_bridge_0_0/sim/navisp_axi_apb_bridge_0_0.vhd" \

vcom -work ahblite_axi_bridge_v3_0_14 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/2efd/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_ahblite_axi_bridge_1_0/sim/navisp_ahblite_axi_bridge_1_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlslice_0_0/sim/navisp_xlslice_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_axi_gpio_0_1/sim/navisp_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlslice_0_1/sim/navisp_xlslice_0_1.v" \

vcom -work grlib -64 -93 \
"../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config_types.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/config.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/version.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/stdlib/stdlib.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/amba.vhd" \

vcom -work cbk -64 -93 \
"../../../bd/navisp/ipshared/e213/sources_1/imports/General_pkg/General_pkg.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_pkg.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/EepromCtrls_pkg/FtNandCtrl_flashio.vhd" \

vcom -work grlib -64 -93 \
"../../../bd/navisp/ipshared/e213/sources_1/imports/grlib/amba/devices.vhd" \
"../../../bd/navisp/ipshared/e213/sources_1/imports/amba/ahbmst.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ipshared/e213/sources_1/imports/new/FtNandCtrlWrap.vhd" \
"../../../bd/navisp/ip/navisp_FtNandCtrlWrap_0_1/sim/navisp_FtNandCtrlWrap_0_1.vhd" \
"../../../bd/navisp/ip/navisp_ahblite_axi_bridge_0_1/sim/navisp_ahblite_axi_bridge_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlslice_0_2/sim/navisp_xlslice_0_2.v" \
"../../../bd/navisp/ip/navisp_xlslice_0_3/sim/navisp_xlslice_0_3.v" \
"../../../bd/navisp/ip/navisp_xlslice_0_4/sim/navisp_xlslice_0_4.v" \
"../../../bd/navisp/ip/navisp_xlslice_2_0/sim/navisp_xlslice_2_0.v" \
"../../../bd/navisp/ip/navisp_xlslice_2_1/sim/navisp_xlslice_2_1.v" \

vlog -work xlconcat_v2_1_3 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlconcat_0_1/sim/navisp_xlconcat_0_1.v" \
"../../../bd/navisp/ip/navisp_xlslice_0_6/sim/navisp_xlslice_0_6.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_ila_0_0/sim/navisp_ila_0_0.vhd" \
"../../../bd/navisp/ip/navisp_ila_0_1/sim/navisp_ila_0_1.vhd" \
"../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/sim/bd_1828.vhd" \
"../../../bd/navisp/ip/navisp_system_ila_0_0/bd_0/ip/ip_0/sim/bd_1828_ila_lib_0.vhd" \
"../../../bd/navisp/ip/navisp_system_ila_0_0/sim/navisp_system_ila_0_0.vhd" \

vcom -work cbk -64 -93 \
"../../../bd/navisp/ipshared/5901/sources_1/imports/Navisp_pkg/MaxAcq.vhd" \
"../../../bd/navisp/ipshared/5901/sources_1/imports/new/MaxAcqWrap.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_MaxAcqWrap_0_1/sim/navisp_MaxAcqWrap_0_1.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_21 -64 -93 \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/a71f/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/ip/navisp_axi_uart16550_0_0/sim/navisp_axi_uart16550_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlconcat_0_2/sim/navisp_xlconcat_0_2.v" \

vlog -work xlconstant_v1_1_6 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_xlconstant_0_0/sim/navisp_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
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

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/ec67/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/8c62/hdl" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ip/navisp_processing_system7_0_0" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/122e/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/6887/hdl/verilog" "+incdir+../../../../ZedBoard.srcs/sources_1/bd/navisp/ipshared/9623/hdl/verilog" "+incdir+G:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/navisp/ip/navisp_auto_pc_4/sim/navisp_auto_pc_4.v" \
"../../../bd/navisp/ip/navisp_auto_pc_0/sim/navisp_auto_pc_0.v" \
"../../../bd/navisp/ip/navisp_auto_pc_1/sim/navisp_auto_pc_1.v" \
"../../../bd/navisp/ip/navisp_auto_pc_2/sim/navisp_auto_pc_2.v" \
"../../../bd/navisp/ip/navisp_auto_pc_3/sim/navisp_auto_pc_3.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/navisp/sim/navisp.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

