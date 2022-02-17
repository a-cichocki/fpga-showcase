onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+semicap -L xil_defaultlib -L xpm -L sem_ultra_v3_1_11 -L hipero -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_4 -L lib_fifo_v1_0_13 -L interrupt_control_v3_1_4 -L axi_hwicap_v3_0_23 -L cbkpan -L unisims_ver -L unimacro_ver -L secureip -O5 hipero.semicap hipero.glbl

do {wave.do}

view wave
view structure

do {semicap.udo}

run -all

endsim

quit -force
