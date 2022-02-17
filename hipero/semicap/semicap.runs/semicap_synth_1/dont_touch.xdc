# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap.bd
# Block Designs: The module: 'semicap' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/semicap_hipero_sem_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_hipero_sem_0 || ORIG_REF_NAME==semicap_hipero_sem_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_icap_0_0_1/semicap_hipero_icap_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_hipero_icap_0_0 || ORIG_REF_NAME==semicap_hipero_icap_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_axi_0_0/semicap_semicap_axi_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_axi_0_0 || ORIG_REF_NAME==semicap_semicap_axi_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_spihelper_0_0/semicap_semicap_spihelper_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_spihelper_0_0 || ORIG_REF_NAME==semicap_semicap_spihelper_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_semicap_engine_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_engine_0_0 || ORIG_REF_NAME==semicap_semicap_engine_0_0} -quiet] -quiet

# IP: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/fifo_mon_cmd.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_mon_cmd || ORIG_REF_NAME==fifo_mon_cmd} -quiet] -quiet

# IP: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/fifo_mon_stat.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_mon_stat || ORIG_REF_NAME==fifo_mon_stat} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_icapmux_0_0/semicap_icapmux_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_icapmux_0_0 || ORIG_REF_NAME==semicap_icapmux_0_0} -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/synth/semicap_hipero_sem_0_ooc.xdc

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_ooc.xdc

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/fifo_mon_cmd.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==fifo_mon_cmd || ORIG_REF_NAME==fifo_mon_cmd} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/fifo_mon_stat.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==fifo_mon_stat || ORIG_REF_NAME==fifo_mon_stat} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'semicap'. Do not add the DONT_TOUCH constraint.

# Block Designs: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap.bd
# Block Designs: The module: 'semicap' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/semicap_hipero_sem_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_hipero_sem_0 || ORIG_REF_NAME==semicap_hipero_sem_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_icap_0_0_1/semicap_hipero_icap_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_hipero_icap_0_0 || ORIG_REF_NAME==semicap_hipero_icap_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_axi_0_0/semicap_semicap_axi_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_axi_0_0 || ORIG_REF_NAME==semicap_semicap_axi_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_spihelper_0_0/semicap_semicap_spihelper_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_spihelper_0_0 || ORIG_REF_NAME==semicap_semicap_spihelper_0_0} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_semicap_engine_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_semicap_engine_0_0 || ORIG_REF_NAME==semicap_semicap_engine_0_0} -quiet] -quiet

# IP: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/fifo_mon_cmd.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_mon_cmd || ORIG_REF_NAME==fifo_mon_cmd} -quiet] -quiet

# IP: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/fifo_mon_stat.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_mon_stat || ORIG_REF_NAME==fifo_mon_stat} -quiet] -quiet

# IP: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_icapmux_0_0/semicap_icapmux_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==semicap_icapmux_0_0 || ORIG_REF_NAME==semicap_icapmux_0_0} -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/synth/semicap_hipero_sem_0_ooc.xdc

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==semicap_axi_hwicap_0 || ORIG_REF_NAME==semicap_axi_hwicap_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_ooc.xdc

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/fifo_mon_cmd.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==fifo_mon_cmd || ORIG_REF_NAME==fifo_mon_cmd} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/fifo_mon_stat.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==fifo_mon_stat || ORIG_REF_NAME==fifo_mon_stat} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'semicap'. Do not add the DONT_TOUCH constraint.