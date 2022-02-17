onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_mon_cmd -L xil_defaultlib -L xpm -L fifo_generator_v13_2_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_mon_cmd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_mon_cmd.udo}

run -all

endsim

quit -force
