quit -sim

# Do file
vsim -gui work.cache

# Add control waves
add wave -position insertpoint  \
sim:/cache/CLK \
sim:/cache/RST \
sim:/cache/FilterSize \
sim:/cache/FilterWR \
sim:/cache/WindowWR \
sim:/cache/Din \
sim:/cache/FilterDout \
sim:/cache/WindowDout \
sim:/cache/ResultWR \
sim:/cache/ResultDin \
sim:/cache/ResultDout \
sim:/cache/FilterEN \
sim:/cache/FilterDin \
sim:/cache/Filter \
sim:/cache/WindowEN \
sim:/cache/WindowDin \
sim:/cache/Window

# Adjust clock
force -freeze sim:/cache/CLK 0 0, 1 {50 ns} -r 100

# Reset
force -freeze sim:/cache/RST 1 0

# Input values
force -freeze sim:/cache/FilterSize 0 0
force -freeze sim:/cache/FilterWR 0 0
force -freeze sim:/cache/WindowWR 0 0
force -freeze sim:/cache/ResultWR 0 0
force -freeze sim:/cache/Din x\"0000000000\" 0
force -freeze sim:/cache/ResultDin x\"00\" 0
run

force -freeze sim:/cache/RST 0 0

#
# Start simulating
#

force -freeze sim:/cache/FilterSize 1 0
force -freeze sim:/cache/WindowWR 1 0
force -freeze sim:/cache/Din x\"FFEEDDCCBB\" 0
run

force -freeze sim:/cache/Din x\"EEDDCCBBAA\" 0
run

force -freeze sim:/cache/Din x\"DDCCBBAA99\" 0
run

force -freeze sim:/cache/Din x\"CCBBAA9988\" 0
run

force -freeze sim:/cache/Din x\"BBAA998877\" 0
run