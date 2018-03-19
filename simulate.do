quit -sim

# Do file
vsim -gui work.controller

# Add control waves
add wave -position insertpoint  \
sim:/controller/CLK \
sim:/controller/RST \
sim:/controller/Start \
sim:/controller/FilterSize \
sim:/controller/Stride \
sim:/controller/Instr \
sim:/controller/Done \

sim:/controller/CurRow \
sim:/controller/CurCol \

sim:/controller/MemAddr \
sim:/controller/CacheAddr \

sim:/controller/Load \
sim:/controller/LoadWind \
sim:/controller/Store \
sim:/controller/StartCalc \

sim:/controller/NxtLoad \
sim:/controller/NxtLoadWind \
sim:/controller/NxtStore \
sim:/controller/NxtStartCalc \

sim:/controller/CntRST \
sim:/controller/CntEN \
sim:/controller/IsRunning \
sim:/controller/IsDone \
sim:/controller/IsFilterLoaded \
sim:/controller/IsWindowLoaded \
sim:/controller/IsCalcTurn \
sim:/controller/IsCalcFinished \

sim:/controller/NxtRow \
sim:/controller/NxtCol \

sim:/controller/RowCout \
sim:/controller/ColInc \
sim:/controller/WindRow \
sim:/controller/WindCol \
sim:/controller/StoreRow \
sim:/controller/StoreCol \

sim:/controller/WindowAddr \
sim:/controller/FilterAddr \
sim:/controller/LoadAddr \
sim:/controller/StoreAddr \


sim:/controller/SizePlusOne \
sim:/controller/SizeVal \
sim:/controller/SizeMaxIdx \
sim:/controller/SizePlusCol

# Adjust clock
force -freeze sim:/controller/CLK 0 0, 1 {50 ns} -r 100

# Reset
force -freeze sim:/controller/RST 1 0
run
force -freeze sim:/controller/RST 0 0

# Input values
force -freeze sim:/controller/Start 1 0
force -freeze sim:/controller/FilterSize 0 0
force -freeze sim:/controller/Stride 0 0
force -freeze sim:/controller/Instr 1 0
run
