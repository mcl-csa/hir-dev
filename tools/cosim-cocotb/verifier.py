from cocotb.triggers import RisingEdge, Timer, FallingEdge
from cocotb.utils import get_sim_time


async def probe_verifier(dut, expectedProbeTrace, env):
    probes = env.config[env.toplevel]['probes']
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
