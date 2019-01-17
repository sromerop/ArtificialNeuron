onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ROM_a21_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_a21.udo}

run -all

quit -force
