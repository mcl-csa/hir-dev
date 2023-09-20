# executionengine.py
from numpy.ctypeslib import ndpointer
import numpy
import ctypes
import gc
import sys
import os
import tempfile
from mlir.ir import *
from mlir.passmanager import *
from mlir.execution_engine import *
from mlir.runtime import *


def lowerToLLVM(module):
    pm = PassManager.parse(
        "lower-affine,convert-scf-to-cf,convert-memref-to-llvm,convert-func-to-llvm,reconcile-unrealized-casts"
    )
    pm.run(module)
    print(module)
    return module


def testMemrefAdd():
    with Context():
        with open('gesummv/cpu-module.mlir', 'r') as f:
            module = Module.parse(f.read())
        arg0 = ctypes.c_int32*1
        arg1 = ctypes.c_int32*1
        arg2 = np.ones((8), np.int32)
        arg3 = np.ones((8, 8), np.int32)
        arg4 = np.ones((8, 8), np.int32)
        arg5 = np.ones((8), np.int32)
        arg6 = np.ones((8), np.int32)
        arg2_memref_ptr = ctypes.pointer(
            ctypes.pointer(get_ranked_memref_descriptor(arg2)))
        arg3_memref_ptr = ctypes.pointer(
            ctypes.pointer(get_ranked_memref_descriptor(arg3)))
        arg4_memref_ptr = ctypes.pointer(
            ctypes.pointer(get_ranked_memref_descriptor(arg4)))
        arg5_memref_ptr = ctypes.pointer(
            ctypes.pointer(get_ranked_memref_descriptor(arg5)))
        arg6_memref_ptr = ctypes.pointer(
            ctypes.pointer(get_ranked_memref_descriptor(arg6)))

        execution_engine = ExecutionEngine(lowerToLLVM(module))
        execution_engine.invoke("gesummv_hir", arg0, arg1,
                                arg2_memref_ptr, arg3_memref_ptr, arg4_memref_ptr, arg5_memref_ptr, arg6_memref_ptr)


testMemrefAdd()


# lib = ctypes.cdll.LoadLibrary("./gesummv/cpu.so")
# fun = lib.gesummv_hir
# fun.restype = None
# fun.argtypes = [
#    ctypes.c_int,
#    ctypes.c_int,
#    ndpointer(ctypes.c_int, flags="C_CONTIGUOUS"),
#    ndpointer(ctypes.c_int, flags="C_CONTIGUOUS"),
#    ndpointer(ctypes.c_int, flags="C_CONTIGUOUS"),
#    ndpointer(ctypes.c_int, flags="C_CONTIGUOUS"),
#    ndpointer(ctypes.c_int, flags="C_CONTIGUOUS")]
#
# a = numpy.ones((8), numpy.int32)
# b = numpy.ones((8, 8), numpy.int32)
#
# for i in range(8):
#    a[i] = i
#    for j in range(8):
#        b[i][j] = i*8+j
#
# fun(0, 2, a, b, b, a, a)
