onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+body_G -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.body_G xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {body_G.udo}

run -all

endsim

quit -force
