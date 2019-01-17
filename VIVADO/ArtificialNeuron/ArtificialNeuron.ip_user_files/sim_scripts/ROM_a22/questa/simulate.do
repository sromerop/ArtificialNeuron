onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ROM_a22_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_a22.udo}

run -all

quit -force
