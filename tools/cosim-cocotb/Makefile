# Makefile

# defaults
SIM = icarus
WAVES = 1
TOPLEVEL_LANG = verilog

VERILOG_SOURCES = $(wildcard ${COSIM_OUTPUT_DIR}/*.sv)
VERILOG_SOURCES += ${COSIM_VERILOG_LIBS}
SIM_BUILD = ${COSIM_VERILOG_DIR}/sim_build

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL=${COSIM_VERILOG_TOPLEVEL}
# MODULE is the basename of the Python test file
MODULE = cocotb_runner
# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim