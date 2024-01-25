from cocotb.triggers import Timer


class DUTWrapper:
    def __init__(self, dut, config):
        self.name = dut._name
        self.dut = dut
        self.clk = self.dut.clk
        self.rst = self.dut.rst
        self.dut.clk.value = 1
        self.config = config[self.name]
        self.wires = {}
        self.probes = {}
        self.register_args()
        self.register_probes()

    def keys(self):
        return self.wires.keys()

    def register_var(self, name, direction):
        if (not hasattr(self.dut, name)):
            raise Exception(
                f'Trying to register variable {name}, but verilog DUT does not have any such member.')

        self.wires[name] = {'direction': direction}

    def register_port(self, name, port_num, config, shape, elementConfig):
        self.register_var(
            f"{name}_p{port_num}_addr_en", "out")
        self.register_var(
            f"{name}_p{port_num}_addr_data", "out")

        if ('rd_latency' in config):
            self.register_var(f"{name}_p{port_num}_rd_en", "out")
            self.register_var(
                f"{name}_p{port_num}_rd_data", "in")

        if ('wr_latency' in config):
            self.register_var(f"{name}_p{port_num}_wr_en", "out")
            self.register_var(
                f"{name}_p{port_num}_wr_data", "out")

    def register_probes(self):
        for probe in self.config['probes']:
            assert (hasattr(self.dut, probe["name"]))
            signal_handle = getattr(self.dut, probe["name"])
            valid_handle = None
            if (hasattr(self.dut, probe["name"]+"_valid")):
                valid_handle = getattr(self.dut, probe["name"]+"_valid")
            self.probes[probe["id"]] = {
                "signal": signal_handle, "valid": valid_handle}

    def register_args(self):
        self.register_var('clk', 'in')
        self.register_var('rst', 'in')
        self.register_var('t', 'in')

        for arg_config in self.config['args']:
            if (arg_config['type'] == 'integer'):
                self.register_var(
                    arg_config['name'], 'in')
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

        handle = getattr(self.dut, name)
        handle.value = value

    async def run(self, period, num_cycles):
        if (period % 2 != 0):
            raise Exception("Provide an even number clk period in nanosecond.")
        if (period < 4):
            raise Exception("Period must be atleast 4 (nanosecond).")
        half_cycle = period/2
        self['rst'] = 0
        self['t'] = 0
        self.time = 0
        for i in range(2*num_cycles):
            self['clk'] = 0
            self.time += half_cycle
            await Timer(half_cycle, units="ns")
            self['clk'] = 1
            self.time += half_cycle
            if (i == 2):
                self['rst'] = 1
            elif (i == 4):
                self['rst'] = 0

            if (i == 5):
                self['t'] = 1
            elif (i == 6):
                self['t'] = 0
            await Timer(half_cycle, units="ns")
