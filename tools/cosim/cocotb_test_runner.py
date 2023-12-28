import os
import cocotb
import json
import DUTWrapper
from cocotb.triggers import Timer


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

    async def wrapped_dut(*args):
        wrapped_dut = DUTWrapper.DUTWrapper(dut, config)
        await cocotb.start(wrapped_dut.run(8, num_cycles))
        tasks = generate_module_interface(
            wrapped_dut, args, config[toplevel]['args'])
        for task in tasks:
            await cocotb.start(task.run(num_cycles))
        await Timer(num_cycles*8+16, units='ns')

    await test_func(wrapped_dut)
