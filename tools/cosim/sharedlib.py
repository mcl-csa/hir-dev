import ctypes


class SharedLib:
    def __init__(self, lib_path, functions):
        self.lib = ctypes.cdll.LoadLibrary(lib_path)
        self.functions = {}
        self.variables = {}
        for func in functions:
            f = getattr(self.lib, func['name'])
            f.argtypes = func['argtypes']
            if (func['restype']):
                f.restype = func['restype']
            self.functions[func['name']] = f

    def function(self, name):
        if (name in self.functions):
            return self.functions[name]
        else:
            raise Exception('Unknown attribute.')
