import cocotb
from cocotb.triggers import Edge, RisingEdge, FallingEdge, Timer
import os
import json
from vcd import VCDWriter


@cocotb.test()
async def cocotb_testbench(dut):
    """Calls the actual cosim testbench."""
    if ('COSIM_CONFIG' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_CONFIG' not set."
    with open(os.environ['COSIM_CONFIG']) as f:
        config = json.load(f)

    if ('COSIM_TESTMODULE' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTMODULE' not set."
    testmodule = __import__(os.environ['COSIM_TESTMODULE'])

    if ('COSIM_TESTNAME' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTNAME' not set."
    testname = os.environ['COSIM_TESTNAME']
    test_func = getattr(testmodule, testname)

    if ('COSIM_NUM_CYCLES' not in os.environ):
        raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_NUM_CYCLES' not set."
    num_cycles = int(os.environ['COSIM_NUM_CYCLES'])

    testmodule = __import__(os.environ['COSIM_TESTMODULE'])
    toplevel = os.environ['COSIM_VERILOG_TOPLEVEL']
    num_edges_passed = 0

    vcdf = None
    if ('COSIM_WAVEFORM_FILE' in os.environ):
        vcdf = open(os.environ['COSIM_WAVEFORM_FILE'], 'w')

    if (vcdf):
        writer = VCDWriter(vcdf, timescale='1ns', date='today')
        assert (writer)
    else:
        writer = None

    def record(var, value):
        if (writer):
            writer.change(var, num_edges_passed*4, value)

    async def generate_clk():
        nonlocal writer
        nonlocal num_edges_passed
        vcd_clk = writer.register_var(toplevel, 'clk', 'integer', size=1)
        await Timer(4, units="ns")
        for _ in range(2*num_cycles):
            dut.clk.value = 0
            record(vcd_clk, 0)
            num_edges_passed += 1
            await Timer(4, units="ns")
            dut.clk.value = 1
            record(vcd_clk, 1)
            num_edges_passed += 1
            await Timer(4, units="ns")

    async def generate_module_interface(args):
        for value, arg in zip(args, config[toplevel]['Args']):
            if (arg['type'] == 'integer'):
                width = int(arg['width'])
                v = writer.register_var(
                    toplevel, arg['name'], 'integer', size=width)
                record(v, value)
                setattr(dut, arg['name'], value)

    async def wrapped_dut(*args):
        await cocotb.start(generate_clk())
        await cocotb.start(generate_module_interface(args))
        await Timer(num_cycles*8+16, units='ns')

    await test_func(wrapped_dut)
