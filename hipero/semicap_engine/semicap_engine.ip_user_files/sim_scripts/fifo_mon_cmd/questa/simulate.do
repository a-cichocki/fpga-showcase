onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_mon_cmd_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_mon_cmd.udo}

run -all

quit -force
