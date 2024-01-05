import os
import cocotb
import json
import DUTWrapper
from cocotb.triggers import RisingEdge, Timer, FallingEdge
from cocotb.utils import get_sim_time
from cpurunner import CpuRunner
from tensor import wrapNDArrayToTensor
import numpy as np


def duplicate_args(args):
    dup = []
    for arg in args:
        if isinstance(arg, np.ndarray):
            arg = arg.copy()
        elif not isinstance(arg, int):
            raise Exception(f'Unexpected type of arg = {arg}')
        dup.append(arg)
    return dup


def check_args(args, golden):
    assert (len(args) == len(golden))
    for i in range(len(args)):
        assert (isinstance(args[i], int) or isinstance(args[i], np.ndarray))
        if isinstance(args[i], int) and (args[i] != golden[i]):
            raise Exception(
                f'Arg {i} has wrong value {args[i]}. Golden value={golden[i]}.')
        elif isinstance(args[i], np.ndarray) and not np.array_equal(args[i], golden[i]):
            raise Exception(
                f'Arg {i} has wrong value {args[i]}. Golden value={golden[i]}.')


def generate_module_interface(dut, args, arg_configs):
    tasks = []
    for value, config in zip(args, arg_configs):
        if (config['type'] == 'integer'):
            dut[config['name']] = value
        if (config['type'] == 'memref'):
            for port_config in config['ports']:
                portInterface = DUTWrapper.PortInterface(
                    dut, port_config, value)
                tasks.append(portInterface)
    return tasks


async def probe_verifier(dut, expectedProbeTrace, probes):
    await FallingEdge(dut.rst)
    await FallingEdge(dut.rst)
    await Timer(1, units="ns")
    print(f'Probe verifier started at {get_sim_time("ns")}ns.')
    while (True):
        await RisingEdge(dut.clk)
        await Timer(2, units="ns")
        for probe in probes:
            id = probe["id"]
            name = probe["name"]
            value = dut.probes[id]
            if (not (value["valid"] is None)):
                try:
                    if (value["valid"].value == 0):
                        continue
                except:
                    print(
                        f"Error at {get_sim_time('ns')} ns: Bad value, {name}_valid = {value['signal']}")
                    continue

            expected = expectedProbeTrace[id][0]
            if (value["valid"] is not None):
                expectedProbeTrace[id].pop(0)

            try:
                if (value["signal"].value != expected):
                    print(
                        f"Error at {get_sim_time('ns')} ns: Probe {name} verilog value ({value['signal'].value.integer}!= expected({expected}))")
            except:
                print(
                    f"Error at {get_sim_time('ns')} ns: Probe {name} verilog value ({value['signal'].value.binstr}!= expected({expected}))")


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

    num_cycles = int(os.environ['COSIM_NUM_CYCLES'])
    cpu_mlir_file = os.path.join(
        os.environ['COSIM_OUTPUT_DIR'], 'cpu-sim.mlir')

    testmodule = __import__(os.environ['COSIM_TESTMODULE'])
    toplevel = os.environ['COSIM_VERILOG_TOPLEVEL']

    async def dut_verilog(args, cpuProbeTrace):
        args = wrapNDArrayToTensor(args)
        wrapped_dut = DUTWrapper.DUTWrapper(dut, config)
        await cocotb.start(wrapped_dut.run(8, num_cycles))
        tasks = generate_module_interface(
            wrapped_dut, args, config[toplevel]['args'])
        for task in tasks:
            await cocotb.start(task.run(num_cycles))
        await cocotb.start(probe_verifier(wrapped_dut, cpuProbeTrace, config[toplevel]['probes']))
        await Timer(num_cycles*8+16, units='ns')

    def dut_cpu(args):
        args = wrapNDArrayToTensor(args)
        runner = CpuRunner(cpu_mlir_file, toplevel)
        return runner.run(args)

    async def wrapped_dut(*args):
        args_cpu = duplicate_args(args)
        cpuProbeTrace = dut_cpu(args_cpu)
        await dut_verilog(args, cpuProbeTrace)
        check_args(args, args_cpu)

    await test_func(wrapped_dut)
