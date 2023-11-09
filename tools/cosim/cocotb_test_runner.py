import cocotb
from cocotb.triggers import Edge, RisingEdge, FallingEdge, Timer
import os
import json
from vcd import VCDWriter


class DUTWrapper:
    def __init__(self, dut, config, vcdf):
        self.name = dut._name
        self.dut = dut
        self.clk = self.dut.clk
        self.clk.value = 1
        self.config = config[self.name]
        self.time = 0
        if (vcdf):
            self.vcd_writer = VCDWriter(vcdf, timescale='1ns', date='today')
            self.vcd_var = {}
            self.register_args()
        else:
            self.vcd_writer = None

    def register_vcd_var(self, name, type, width):
        if (not hasattr(self.dut, name)):
            raise Exception(
                'Trying to register variable {name}, but dut does not have any such member.')

        vcd_var = self.vcd_writer.register_var(
            self.name, name, type, size=width)
        self.vcd_var[name] = vcd_var

    def register_args(self):
        self.register_vcd_var('clk', 'integer', width=1)

        for arg_config in self.config['args']:
            if (arg_config['type'] == 'integer'):
                self.register_vcd_var(
                    arg_config['name'], 'integer', width=arg_config['width'])

    def __getitem__(self, key):
        if (key not in self.vcd_var):
            raise Exception("{key} not registered as a variable.")
        return getattr(self.dut, key)

    def __setitem__(self, key, value):
        if (key not in self.vcd_var):
            raise Exception(f"{key} not registered as a variable.")
        setattr(self.dut, key, value)
        if (self.vcd_writer):
            self.vcd_writer.change(self.vcd_var[key], self.time, value)

    async def run(self, period, num_cycles):
        if (period % 2 != 0):
            raise Exception("Provide an even number clk period in nanosecond.")
        if (period < 4):
            raise Exception("Period must be atleast 4 (nanosecond).")
        half_cycle = period/2
        for _ in range(2*num_cycles):
            self['clk'] = 0
            self.time += half_cycle
            await Timer(half_cycle, units="ns")
            self['clk'] = 1
            self.time += half_cycle
            await Timer(half_cycle, units="ns")


async def generate_module_interface(dut, num_cycles, args, arg_configs):
    for _ in range(num_cycles):
        RisingEdge(dut.clk)
        for value, config in zip(args, arg_configs):
            if (config['type'] == 'integer'):
                dut[config['name']] = value


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

    async def wrapped_dut(*args):
        nonlocal dut
        dut = DUTWrapper(dut, config, vcdf)
        await cocotb.start(dut.run(8, num_cycles))
        await cocotb.start(generate_module_interface(dut, num_cycles, args, config[toplevel]['args']))
        await Timer(num_cycles*8+16, units='ns')

    await test_func(wrapped_dut)
