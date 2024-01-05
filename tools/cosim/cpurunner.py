from mlir.runtime import *
from mlir.execution_engine import *
from mlir.passmanager import *
from mlir.ir import *
import ctypes
from tensor import Tensor


def lowerToLLVM(module):
    pm = PassManager.parse(
        "builtin.module(lower-affine,convert-scf-to-cf,convert-to-llvm)")
    pm.run(module.operation)
    return module


class CpuRunner:
    def __init__(self, mlirFile, top):
        self.topLevel = top
        self.cpuProbeTrace = {}
        with Context(), open(mlirFile, 'r') as f:
            self.module = Module.parse(f.read())
            self.module = lowerToLLVM(self.module)

    def getCArgs(self, args):
        c_args = []
        c_int_p = ctypes.c_int64*1
        for arg in args:
            if (isinstance(arg, int)):
                c_args.append(c_int_p(arg))
            elif (isinstance(arg, Tensor)):
                c_args.append(arg.getRankedCPtr())
            elif (isinstance(arg, np.ndarray)):
                raise Exception(
                    f'Expected argument :{arg} to be wrapped in Tensor.')
            else:
                raise Exception(f'Uknown type of argument :{arg}')

        return c_args

    def getRecordFunc(self):
        @ctypes.CFUNCTYPE(None, ctypes.c_int32, ctypes.c_int32)
        def record(value, id):
            if (id not in self.cpuProbeTrace):
                self.cpuProbeTrace[id] = []
            self.cpuProbeTrace[id].append(value)
        return record

    def run(self, args):
        c_args = self.getCArgs(args)
        execution_engine = ExecutionEngine(self.module)
        execution_engine.register_runtime(
            "record", self.getRecordFunc())
        execution_engine.invoke(self.topLevel, *c_args)
        return self.cpuProbeTrace
