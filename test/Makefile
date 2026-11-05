# Makefile
# See https://docs.cocotb.org/en/stable/quickstart.html for more info

# defaults
SIM ?= icarus
FST ?= -fst # Use more efficient FST format
TOPLEVEL_LANG ?= verilog
SRC_DIR = $(PWD)/../src
PROJECT_SOURCES = project.v ABSOLUTE.v ADDSUB.v AND_GATE.v AND_GATE_3_INPUTS.v AND_GATE_BUS.v Adder.v BRESENY.v Bresenham.v CNTRL.v Comparator.v DIVISION.v DLY.v Decoder_4.v Decoder_8.v FA.v GRAPHICSCARD.v HORIZONTAL.v LogisimCounter.v LogisimRNG.v MATH.v MULTIPLY.v Multiplexer_bus_16.v Multiplexer_bus_2.v Multiplexer_bus_4.v NOR_GATE_8_INPUTS.v OR_GATE.v OR_GATE_3_INPUTS.v OR_GATE_8_INPUTS.v OR_GATE_BUS.v PLA_PLA_1.v RAMCONTENTS_RAM_1.v REGISTERS.v REGISTER_FLIP_FLOP.v SHIFTREG_18_Classic.v SHIFTREG_3_Classic.v SORTSHIFT.v STCK.v SUBTRACTFORDIVIDE.v S_R_FLIPFLOP.v Shifter_11_bit.v Subtractor.v TRIANGLE.v UNA.v XOR_GATE_BUS_ONEHOT.v XOR_GATE_ONEHOT.v

ifneq ($(GATES),yes)

# RTL simulation:
SIM_BUILD				= sim_build/rtl
VERILOG_SOURCES += $(addprefix $(SRC_DIR)/,$(PROJECT_SOURCES))

else

# Gate level simulation:
SIM_BUILD				= sim_build/gl
COMPILE_ARGS    += -DGL_TEST
COMPILE_ARGS    += -DFUNCTIONAL
COMPILE_ARGS    += -DUSE_POWER_PINS
COMPILE_ARGS    += -DSIM
COMPILE_ARGS    += -DUNIT_DELAY=\#1
VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v
VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v

# this gets copied in by the GDS action workflow
VERILOG_SOURCES += $(PWD)/gate_level_netlist.v

endif

# Allow sharing configuration between design and testbench via `include`:
COMPILE_ARGS 		+= -I$(SRC_DIR)

# Include the testbench sources:
VERILOG_SOURCES += $(PWD)/tb.v
TOPLEVEL = tb

# List test modules to run, separated by commas and without the .py suffix:
COCOTB_TEST_MODULES = test

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
