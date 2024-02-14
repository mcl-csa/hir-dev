from sharedlib import SharedLib
import ctypes


def verilated_type(width):
    assert (width > 0)

    # TODO: Support width larger than 64. Verilator returns an array of 32 bit integers for port larger than 64.
    if width <= 8:
        return ctypes.POINTER(ctypes.c_int8)
    elif width <= 32:
        return ctypes.POINTER(ctypes.c_int32)
    elif width <= 64:
        return ctypes.POINTER(ctypes.c_int64)
    else:
        raise Exception("We don't yet support bitwidth larger than 64.")


class PortVerilator:
    def __init(self, name, cref, width, readonly=True):
        self.name = name
        self.cref = cref
        self.width = width
        self.readonly = readonly

    def get(self):
        assert (self.width <= 64)
        return self.cref.contents

    def set(self,  value):
        assert (self.width <= 64)
        if (self.readonly):
            raise Exception(
                "Attempting to write to read-only port '{self.name}.")
        self.cref.contents = value


class DUTVerilator:
    def __init__(self, lib_path, config):
        functions = []
        self.ports = {}
        for port in config:
            function = {'name': port['name'], 'argtypes': [
                ctypes.c_void_p], 'restype': verilated_type(port['width'])}
            functions.append(function)
        self.lib = SharedLib(lib_path, functions)
        self.dut = self.lib.alloc()
        self.ports = {}
        for port in config:
            cref = self.lib.function(port['name'])(self.dut)

            self.ports[port['name']] = PortVerilator(
                port['name'], cref, port['width'], port['readonly'])

    def __del__(self):
        self.lib.dealloc(self.dut)

    def __getitem__(self, item):
        if (item not in self.ports):
            raise Exception(f'Could not find port {item}.')
        return self.ports[item].get()

    def __setitem__(self, item, value):
        if (item not in self.ports):
            raise Exception(f'Could not find port {item}.')
        return self.ports[item].set(value)
