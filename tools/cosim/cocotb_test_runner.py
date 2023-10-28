import cocotb
from cocotb.triggers import FallingEdge, Timer
import os
import json


@cocotb.test()
async def cocotb_testbench(dut):
    """Calls the actual cosim testbench."""
    if ('COSIM_CONFIG' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_CONFIG' not set."

    with open(os.environ['COSIM_CONFIG']) as f:
        config = json.load(f.read())

    if ('COSIM_TESTMODULE' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTMODULE' not set."
    testmodule = __import__(os.environ['COSIM_TESTMODULE'])

    if ('COSIM_TESTNAME' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTNAME' not set."
    testname = os.environ['COSIM_TESTNAME']

    breakpoint()

    for cycle in range(10):
        dut.clk.value = 0
        await Timer(1, units="ns")
        dut.clk.value = 1
        await Timer(1, units="ns")
