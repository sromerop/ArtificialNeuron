onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ROM_a22 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ROM_a22 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ROM_a22.udo}

run -all

endsim

quit -force
