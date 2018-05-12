quit -sim

# Do file
vsim work.main

# Add control waves
add wave -position insertpoint  \
sim:/main/CLK \
sim:/main/RST \
sim:/main/Start \
sim:/main/FilterSize \
sim:/main/Stride \
sim:/main/Instr \
sim:/main/Done

#
# Load Memory
#
mem load -i {DATA.mem} /main/RAM/Mem

#
# Adjust clock
#
force -freeze sim:/main/CLK 0 0, 1 {50 ns} -r 100

#
# Initial values
#
force -freeze sim:/main/RST 1 0
force -freeze sim:/main/Start 1 0
force -freeze sim:/main/FilterSize 0 0
force -freeze sim:/main/Stride 0 0
force -freeze sim:/main/Instr 0 0
run

force -freeze sim:/main/RST 0 0
run

force -freeze sim:/main/Start 0 0

run 77777777
