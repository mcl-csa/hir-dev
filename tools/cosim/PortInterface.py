from cocotb.triggers import RisingEdge, Timer


class PortInterface:
    def __init__(self, dut, port_config, tensor):
        self.dut = dut
        self.name = port_config['name']

        # convert multi-dim array to single dimension.
        self.tensor = tensor

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
                        self.dut[self.rd_data] = int(self.tensor[addr.integer])
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

                    self.tensor[addrv] = datav
