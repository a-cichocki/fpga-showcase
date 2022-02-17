vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/sem_ultra_v3_1_11
vlib activehdl/hipero
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/lib_fifo_v1_0_13
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_hwicap_v3_0_23
vlib activehdl/cbkpan

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap sem_ultra_v3_1_11 activehdl/sem_ultra_v3_1_11
vmap hipero activehdl/hipero
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 activehdl/lib_fifo_v1_0_13
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_hwicap_v3_0_23 activehdl/axi_hwicap_v3_0_23
vmap cbkpan activehdl/cbkpan

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work sem_ultra_v3_1_11  -v2k5 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/sem_ultra_v3_1_vl_rfs.v" \

vlog -work hipero  -v2k5 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/synth/semicap_hipero_sem_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_hwicap_v3_0_23 -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/d697/hdl/axi_hwicap_v3_0_vh_rfs.vhd" \

vcom -work hipero -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/sim/semicap_axi_hwicap_0.vhd" \

vcom -work cbkpan -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/8d27/hipero_icap.vhdl" \

vcom -work hipero -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_icap_0_0_1/sim/semicap_hipero_icap_0_0.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/2f76/hdl/semicap_axi_v1_0_S00_AXI.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/2f76/hdl/semicap_axi_v1_0.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_axi_0_0/sim/semicap_semicap_axi_0_0.vhd" \

vlog -work hipero  -v2k5 "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/xilinx8/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi/db_rowmap" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/hood_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/diablo_ssi" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/simonly" "+incdir+../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/source" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4725/semicap_spihelper.srcs/sources_1/imports/imports/sem_ultra_0_spi_byte.v" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4725/semicap_spihelper.srcs/sources_1/imports/imports/sem_ultra_0_spi.v" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_spihelper_0_0/sim/semicap_semicap_spihelper_0_0.v" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/sim/fifo_mon_cmd.v" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/sim/fifo_mon_stat.v" \

vcom -work hipero -93 \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/icapArbiter.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/imports/srcs/minority_voter_status_latch.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/imports/srcs/sem_state_decoder.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/semicap_fsm.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/semicap_engine.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/sim/semicap_semicap_engine_0_0.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_icapmux_0_0/sim/semicap_icapmux_0_0.vhd" \
"../../../../semicap.srcs/sources_1/bd/semicap/sim/semicap.vhd" \

vlog -work hipero \
"glbl.v"

