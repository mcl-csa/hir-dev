# executionengine.py
import sys  # noqa
sys.path.append("../circt/build/tools/mlir/python_packages/mlir_core")  # noqa

from mlir.runtime import *
from mlir.execution_engine import *
from mlir.passmanager import *
from mlir.ir import *
import ctypes
import numpy as np


def lowerToLLVM(module):
    pm = PassManager.parse(
        "builtin.module(lower-affine,convert-scf-to-cf,convert-to-llvm)")
    pm.run(module.operation)
    return module

# Define a callback to print values.


@ctypes.CFUNCTYPE(None, ctypes.c_int32)
def record(a):
    print(a)


class CpuRunner:
    def __init__(self, mlirFile):
        with Context(), open(mlirFile, 'r') as f:
            self.module = Module.parse(f.read())
            self.module = lowerToLLVM(self.module)

    def getCArgs(self, args):
        c_args = []
        c_int_p = ctypes.c_int64*1
        for arg in args:
            if (isinstance(arg, int)):
                c_args.append(c_int_p(arg))
            elif (isinstance(arg, np.ndarray)):
                c_args.append(ctypes.pointer(
                    ctypes.pointer(get_ranked_memref_descriptor((arg)))))
        return c_args

    def run(self, *args):
        c_args = self.getCArgs(args)
        execution_engine = ExecutionEngine(self.module)
        execution_engine.register_runtime(
            "record", record)
        execution_engine.invoke("gesummv_hir", *c_args)


arg0 = 1
arg1 = 2
arg2 = np.ones((8), np.int32)
arg3 = np.ones((8, 8), np.int32)
arg4 = np.ones((8, 8), np.int32)
arg5 = np.ones((8), np.int32)
arg6 = np.zeros((8), np.int32)

cpuRunner = CpuRunner('build/gesummv/cpu-module.mlir')
cpuRunner.run(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
print(arg6)
