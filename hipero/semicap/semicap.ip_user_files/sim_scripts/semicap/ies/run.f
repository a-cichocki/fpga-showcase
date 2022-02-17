-makelib ies_lib/xil_defaultlib -sv \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "G:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/sem_ultra_v3_1_11 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ca37/hdl/sem_ultra_v3_1_vl_rfs.v" \
-endlib
-makelib ies_lib/hipero \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/synth/semicap_hipero_sem_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_13 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_hwicap_v3_0_23 \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/d697/hdl/axi_hwicap_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/hipero \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/sim/semicap_axi_hwicap_0.vhd" \
-endlib
-makelib ies_lib/cbkpan \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/8d27/hipero_icap.vhdl" \
-endlib
-makelib ies_lib/hipero \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_icap_0_0_1/sim/semicap_hipero_icap_0_0.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/2f76/hdl/semicap_axi_v1_0_S00_AXI.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/2f76/hdl/semicap_axi_v1_0.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_axi_0_0/sim/semicap_semicap_axi_0_0.vhd" \
-endlib
-makelib ies_lib/hipero \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4725/semicap_spihelper.srcs/sources_1/imports/imports/sem_ultra_0_spi_byte.v" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/4725/semicap_spihelper.srcs/sources_1/imports/imports/sem_ultra_0_spi.v" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_spihelper_0_0/sim/semicap_semicap_spihelper_0_0.v" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/sim/fifo_mon_cmd.v" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/sim/fifo_mon_stat.v" \
-endlib
-makelib ies_lib/hipero \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/icapArbiter.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/imports/srcs/minority_voter_status_latch.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/imports/srcs/sem_state_decoder.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/semicap_fsm.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ipshared/a967/semicap_engine.srcs/sources_1/new/semicap_engine.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/sim/semicap_semicap_engine_0_0.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/ip/semicap_icapmux_0_0/sim/semicap_icapmux_0_0.vhd" \
  "../../../../semicap.srcs/sources_1/bd/semicap/sim/semicap.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

