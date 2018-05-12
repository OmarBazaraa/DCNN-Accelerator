quit -sim

# Do file
vsim -gui work.main

# Add control waves
add wave -position insertpoint  \
sim:/main/CLK \
sim:/main/RST \
sim:/main/Start \
sim:/main/FilterSize \
sim:/main/Stride \
sim:/main/Instr \
sim:/main/Done \
sim:/main/MemRD \
sim:/main/MemWR \
sim:/main/MemAddr \
sim:/main/MemDin \
sim:/main/MemDout \
sim:/main/CacheFilterWR \
sim:/main/CacheWindowWR \
sim:/main/CacheFilter \
sim:/main/CacheWindow \
sim:/main/Calculating \
sim:/main/AccFinishCalc \
sim:/main/AccResult \
sim:/main/CONTROLLER/CurRow \
sim:/main/CONTROLLER/CurCol
#
# Load Memory
#
mem load -i {test/scripts/data/RAM_DATA.mem} /main/RAM/Mem

#
# Adjust clock
#
force -freeze sim:/main/CLK 0 0, 1 {50 ns} -r 100

#
# Initial values
#
force -freeze sim:/main/RST 1 0
force -freeze sim:/main/Start 1 0
force -freeze sim:/main/FilterSize 1 0
force -freeze sim:/main/Stride 0 0
force -freeze sim:/main/Instr 1 0
run

force -freeze sim:/main/RST 0 0
run

force -freeze sim:/main/Start 0 0

# run 83922300
run 77470600