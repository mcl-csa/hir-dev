from cocotb.triggers import RisingEdge, Timer
import math
import numpy as np


class Tensor:
    def __init__(self, npTensor):
        self.npTensor = npTensor

    def __getitem__(self, idx):
        indices = np.unravel_index(idx, self.npTensor.shape)
        return self.npTensor[indices]

    def __setitem__(self, idx, value):
        indices = np.unravel_index(idx, self.npTensor.shape)
        self.npTensor[indices] = value


class PortInterface:
    def __init__(self, dut, port_config, values):
        self.dut = dut
        self.name = port_config['name']

        # convert multi-dim array to single dimension.
        self.values = Tensor(values)

        # Address bus.
        self.addr_en = f"{self.name}_addr_en"
        self.addr_data = f"{self.name}_addr_data"

        # Read bus.
        self.is_rd_port = False
        if ('rd_latency' in port_config):
            self.rd_latency = port_config['rd_latency']
            self.is_rd_port = True
            self.rd_en = f"{self.name}_rd_en"
            self.rd_data = f"{self.name}_rd_data"

        # Write bus.
        self.is_wr_port = False
        if ('wr_latency' in port_config):
            self.wr_latency = port_config['wr_latency']
            self.is_wr_port = True
            self.wr_en = f"{self.name}_wr_en"
            self.wr_data = f"{self.name}_wr_data"

    async def run(self,  num_cycles):
        if (self.is_rd_port):
            rd_queue = [None]*(self.rd_latency)
        if (self.is_wr_port):
            wr_queue = [None]*(self.wr_latency)
        for cycle in range(num_cycles):
            await RisingEdge(self.dut.clk)
            await Timer(1, units='ns')
            # Schedule the actions.
            if (self.dut[self.addr_en].binstr == '1'):
                addr = self.dut[self.addr_data]

                if (self.is_rd_port):
                    if (self.dut[self.rd_en].binstr == '1'):
                        rd_queue.append(addr)
                    else:
                        rd_queue.append(None)

                if (self.is_wr_port):
                    if (self.dut[self.wr_en].binstr == '1'):
                        wr_queue.append((addr, self.dut[self.wr_data]))
                    else:
                        wr_queue.append(None)
            else:
                if (self.is_rd_port):
                    rd_queue.append(None)
                if (self.is_wr_port):
                    wr_queue.append(None)

            # Perform the actions.
            # Read-before-write.
            if (self.is_rd_port):
                addr = rd_queue.pop(0)

                if (addr != None):
                    try:
                        self.dut[self.rd_data] = int(self.values[addr.integer])
                    except:
                        print(
                            f"ERROR: addr('{addr.binstr}') is not an integer.\n\t While reading from port {self.name} at {cycle} cycle.")

            if (self.is_wr_port):
                wr_req = wr_queue.pop(0)
                if (wr_req):
                    (addr, data) = wr_req
                    try:
                        addrv = addr.value
                    except:
                        print(
                            f"ERROR: addr('{addr.binstr}') is not an integer.\n\t While writing to port {self.name} at {cycle} cycle.")
                        continue

                    try:
                        datav = data.value
                    except:
                        print(
                            f"ERROR: data('{data.binstr}') is not an integer.\n\t While writing to port {self.name} at {cycle} cycle.")
                        continue

                    self.values[addrv] = datav


class DUTWrapper:
    def __init__(self, dut, config):
        self.name = dut._name
        self.dut = dut
        self.clk = self.dut.clk
        self.dut.clk.value = 1
        self.config = config[self.name]
        self.wires = {}
        self.register_args()

    def keys(self):
        return self.wires.keys()

    def register_var(self, name, direction, type, width):
        if (not hasattr(self.dut, name)):
            raise Exception(
                f'Trying to register variable {name}, but dut does not have any such member.')

        # Initial value of inputs.
        # if (direction == 'in'):
        #   setattr(self.dut, name, 0)
        self.wires[name] = {'direction': direction}

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
        self.register_var('rst', 'in', 'integer', 1)
        self.register_var('t', 'in', 'integer', 1)

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
