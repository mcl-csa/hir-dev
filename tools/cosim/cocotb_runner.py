from environment import Environment
import cocotb
from DUTWrapper import DUTWrapper
from PortInterface import generate_port_interfaces
from cocotb.triggers import RisingEdge, Timer, FallingEdge
from cocotb.utils import get_sim_time
from cpurunner import CpuRunner
from tensor import wrapNDArrayToTensor
import numpy as np


def clone_args(args):
    dup = []
    for arg in args:
        if isinstance(arg, np.ndarray):
            arg = arg.copy()
        elif not isinstance(arg, int):
            raise Exception(f'Unexpected type of arg = {arg}')
        dup.append(arg)
    return dup


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
    env = Environment()

    async def dut_verilog(args, cpuProbeTrace):
        args = wrapNDArrayToTensor(args)
        wrapped_dut = DUTWrapper(dut, env.config)
        await cocotb.start(wrapped_dut.run(8, env.num_cycles))
        tasks = generate_port_interfaces(
            wrapped_dut, args, env.config[env.toplevel]['args'])
        for task in tasks:
            await cocotb.start(task.run(env.num_cycles))
        await cocotb.start(probe_verifier(wrapped_dut, cpuProbeTrace, env.config[env.toplevel]['probes']))
        await Timer(env.num_cycles*8+16, units='ns')

    def dut_cpu(args):
        args = wrapNDArrayToTensor(args)
        runner = CpuRunner(env.cpu_mlir_file, env.toplevel)
        return runner.run(args)

    async def wrapped_dut(*args):
        args_cpu = clone_args(args)
        cpuProbeTrace = dut_cpu(args_cpu)
        await dut_verilog(args, cpuProbeTrace)

    await env.test_func(wrapped_dut)
