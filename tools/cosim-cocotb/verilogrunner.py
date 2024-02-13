import os
import json
import random
import glob
from pathlib import Path
import sys

import cocotb
from cocotb.clock import Clock
from cocotb.runner import get_runner
from cocotb.triggers import RisingEdge
from cocotb.types import LogicArray

# @cocotb.test()


async def test_template(dut):
    dut.alpha = 1
    dut.beta = 2

    # Create a 10us period clock on port clk
    clock = Clock(dut.clk, 4000, units="ms")
    # Start the clock. Start it low to avoid issues on the first RisingEdge
    cocotb.start_soon(clock.start(start_high=False))

    for i in range(10):
        await RisingEdge(dut.clk)


class VerilogRunner():
    def __init__(self, configFile):
        if (not configFile.endswith(".json")):
            print("Unknown config file: " + configFile)
            return

        with open(configFile) as f:
            self.config = json.loads(f.read())

    def run(self, *args):
        pass

    def testRunner(self, top, svDir):
        hdl_toplevel_lang = "verilog"
        sim = "icarus"
        include_path = str(Path(__file__).resolve().parent / '../includes')
        verilog_sources = glob.glob(svDir+"/*.sv")
        include_sources = [include_path+'/helper.sv']
        print(verilog_sources)
        print(include_sources)

        runner = get_runner(sim)
        runner.build(
            verilog_sources=verilog_sources+include_sources,
            hdl_toplevel=top,
            always=True,
        )

        breakpoint()
        runner.test(hdl_toplevel='gesummv_hir', test_module="verilogrunner")
