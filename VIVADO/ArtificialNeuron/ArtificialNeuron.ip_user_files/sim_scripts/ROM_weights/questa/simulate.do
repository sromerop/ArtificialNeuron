onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ROM_weights_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_weights.udo}

run -all

quit -force
