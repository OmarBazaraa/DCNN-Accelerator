# ACCELERATOR BASE UNIT
vsim -gui work.accelerator

# Add Signals
add wave -position insertpoint  \
sim:/accelerator/CLK \
sim:/accelerator/RST \
sim:/accelerator/Start \
sim:/accelerator/FilterSize \
sim:/accelerator/Instr \
sim:/accelerator/FilterDin \
sim:/accelerator/WindowDin \
sim:/accelerator/Done \
sim:/accelerator/Result \
sim:/accelerator/CounterCLK \
sim:/accelerator/CounterRST \
sim:/accelerator/ResultReady \
sim:/accelerator/LoopingAndResultNotReady \
sim:/accelerator/CounterOut \
sim:/accelerator/L1FirstOperands \
sim:/accelerator/L1SecondOperands \
sim:/accelerator/L1Results \
sim:/accelerator/L1ResultsLarge \
sim:/accelerator/L1OperationResults \
sim:/accelerator/L2FirstOperands \
sim:/accelerator/L2SecondOperands \
sim:/accelerator/L2Results \
sim:/accelerator/L2ResultsLarge \
sim:/accelerator/L2OperationResults \
sim:/accelerator/L3FirstOperands \
sim:/accelerator/L3SecondOperands \
sim:/accelerator/L3Results \
sim:/accelerator/L3ResultsLarge \
sim:/accelerator/L3OperationResults \
sim:/accelerator/L4FirstOperands \
sim:/accelerator/L4SecondOperands \
sim:/accelerator/L4Results \
sim:/accelerator/L4ResultsLarge \
sim:/accelerator/L4OperationResults \
sim:/accelerator/L5FirstOperands \
sim:/accelerator/L5SecondOperands \
sim:/accelerator/L5Results \
sim:/accelerator/L5ResultsLarge \
sim:/accelerator/L5OperationResults


#
# Force Window Values
#
force -freeze sim:/accelerator/WindowDin(0)(0) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(0)(1) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(0)(2) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(0)(3) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(0)(4) x\"FF\" 0

force -freeze sim:/accelerator/WindowDin(1)(0) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(1)(1) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(1)(2) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(1)(3) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(1)(4) x\"FF\" 0

force -freeze sim:/accelerator/WindowDin(2)(0) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(2)(1) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(2)(2) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(2)(3) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(2)(4) x\"FF\" 0

force -freeze sim:/accelerator/WindowDin(3)(0) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(3)(1) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(3)(2) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(3)(3) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(3)(4) x\"FF\" 0

force -freeze sim:/accelerator/WindowDin(4)(0) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(4)(1) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(4)(2) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(4)(3) x\"FF\" 0
force -freeze sim:/accelerator/WindowDin(4)(4) x\"FF\" 0

#
# Force Filter Values
#
force -freeze sim:/accelerator/FilterDin(0)(0) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(0)(1) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(0)(2) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(0)(3) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(0)(4) x\"02\" 0

force -freeze sim:/accelerator/FilterDin(1)(0) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(1)(1) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(1)(2) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(1)(3) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(1)(4) x\"02\" 0

force -freeze sim:/accelerator/FilterDin(2)(0) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(2)(1) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(2)(2) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(2)(3) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(2)(4) x\"02\" 0

force -freeze sim:/accelerator/FilterDin(3)(0) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(3)(1) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(3)(2) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(3)(3) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(3)(4) x\"02\" 0

force -freeze sim:/accelerator/FilterDin(4)(0) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(4)(1) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(4)(2) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(4)(3) x\"02\" 0
force -freeze sim:/accelerator/FilterDin(4)(4) x\"02\" 0

#
# Initial Values
#
force -freeze sim:/accelerator/CLK 1 0, 0 {50 ns} -r 100
force -freeze sim:/accelerator/RST 1 0
force -freeze sim:/accelerator/Start 0 0
force -freeze sim:/accelerator/FilterSize 0 0
force -freeze sim:/accelerator/Instr 1 0
run

force -freeze sim:/accelerator/RST 0 0
force -freeze sim:/accelerator/Start 1 0
run

force -freeze sim:/accelerator/Start 0 0

run 1000