import cocotb
from cocotb.triggers import Timer
import numpy as np
from environment import Environment
from DUTWrapper import DUTWrapper
from PortInterface import generate_port_interfaces
from cpurunner import CpuRunner
from tensor import wrapNDArrayToTensor
from callback_manager import callback_manager
from verifier import probe_verifier


async def io_manager(dut, args, env):
    tasks = generate_port_interfaces(
        dut, args, env.config[env.toplevel]['args'])
    for task in tasks:
        await cocotb.start(task.run(env.num_cycles))


@cocotb.test()
async def cocotb_testbench(dut):
    """Calls the actual cosim testbench."""
    env = Environment()

    async def dut_verilog(args, cpu_probe_trace):
        args = wrapNDArrayToTensor(args)
        wrapped_dut = DUTWrapper(dut, env.config)
        await cocotb.start(wrapped_dut.run(8, env.num_cycles))
        await cocotb.start(io_manager(wrapped_dut, args, env))
        await cocotb.start(probe_verifier(wrapped_dut, cpu_probe_trace, env))
        await cocotb.start(callback_manager(wrapped_dut))
        await Timer(env.num_cycles*8+16, units='ns')

    def dut_cpu(args):
        args = wrapNDArrayToTensor(args)
        runner = CpuRunner(env.cpu_mlir_file, env.toplevel)
        return runner.run(args)

    async def wrapped_dut(*args):
        def clone_if_array(arg):
            if isinstance(arg, np.ndarray):
                return arg.copy()
            elif not isinstance(arg, int):
                raise Exception('Unexpected type.')
            return arg

        args_cpu = list(map(clone_if_array, args))

        # Run the cpu and verilog simulation.
        cpuProbeTrace = dut_cpu(args_cpu)
        await dut_verilog(args, cpuProbeTrace)

    await env.test_func(wrapped_dut)
