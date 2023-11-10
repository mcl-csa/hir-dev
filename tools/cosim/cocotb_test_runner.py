import cocotb
from cocotb.triggers import Edge, RisingEdge, FallingEdge, Timer
import os
import json
import numpy as np
import math
from vcd import VCDWriter


class DUTWrapper:
    def __init__(self, dut, config, vcdf):
        self.name = dut._name
        self.dut = dut
        self.clk = self.dut.clk
        self.dut.clk.value = 1
        self.config = config[self.name]
        self.time = 0
        if (vcdf):
            self.vcd_writer = VCDWriter(vcdf, timescale='1ns', date='today')
        else:
            self.vcd_writer = None
        self.wires = {}
        self.register_args()

    def keys(self):
        return self.wires.keys()

    def register_var(self, name, direction, type, width):
        if (not hasattr(self.dut, name)):
            raise Exception(
                f'Trying to register variable {name}, but dut does not have any such member.')

        if (self.vcd_writer):
            vcd_var = self.vcd_writer.register_var(
                self.name, name, type, size=width)
        else:
            vcd_var = None
        self.wires[name] = {'vcd_var': vcd_var, 'direction': direction}

    def register_port(self, name, port_num, config, shape, elementConfig):
        addr_width = math.log2(np.prod(shape))
        data_width = elementConfig['width']
        self.register_var(
            f"{name}_p{port_num}_addr_en", "out", "integer", 1)
        self.register_var(
            f"{name}_p{port_num}_addr_data", "out", "integer", addr_width)

        if ('rd_latency' in config):
            self.register_var(f"{name}_p{port_num}_rd_en", "out", "integer", 1)
            self.register_var(
                f"{name}_p{port_num}_rd_data", "in", "integer", data_width)

        if ('wr_latency' in config):
            self.register_var(f"{name}_p{port_num}_wr_en", "out", "integer", 1)
            self.register_var(
                f"{name}_p{port_num}_wr_data", "out", "integer", data_width)

    def register_args(self):
        self.register_var('clk', 'in', 'integer', 1)

        for arg_config in self.config['args']:
            if (arg_config['type'] == 'integer'):
                self.register_var(
                    arg_config['name'], 'in', 'integer', arg_config['width'])
            elif (arg_config['type'] == 'memref'):
                for port_num, port_config in enumerate(arg_config['ports']):
                    self.register_port(
                        arg_config['name'], port_num, port_config, arg_config['shape'], arg_config['element'])

    def __getitem__(self, name):
        if (name not in self.wires):
            raise Exception("{key} not registered as a variable.")
        return getattr(self.dut, name).value

    def __setitem__(self, name, value):
        if (name not in self.wires):
            raise Exception(f"{name} not registered as a variable.")
        if (self.wires[name]['direction'] != 'in'):
            raise Exception(f"Trying to write to read-only variable {name}.")

        setattr(self.dut, name, value)
        if (self.vcd_writer):
            self.vcd_writer.change(
                self.wires[name]['vcd_var'], self.time, value)

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
    for i in range(num_cycles):
        RisingEdge(dut.clk)
        for value, config in zip(args, arg_configs):
            if (config['type'] == 'integer'):
                dut[config['name']] = value+i


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
