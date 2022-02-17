onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+navisp -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_bram_ctrl_v4_1_1 -L blk_mem_gen_v8_4_3 -L lib_pkg_v1_0_2 -L axi_apb_bridge_v3_0_15 -L ahblite_axi_bridge_v3_0_14 -L xlslice_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_21 -L grlib -L cbk -L xlconcat_v2_1_3 -L lib_srl_fifo_v1_0_2 -L axi_uart16550_v2_0_21 -L xlconstant_v1_1_6 -L axi_protocol_converter_v2_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.navisp xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {navisp.udo}

run -all

endsim

quit -force
