import cosim.simulator as cosim
import numpy as np


@cosim.test(mlir_file='gesummv.mlir', top_level='gesummv_hir', waveform_file='gesummv.wav', output_dir='build/gesummv')
async def test(dut):
    alpha = 1
    beta = 2
    temp = np.ones((8), np.int32)
    A = np.ones((8, 8), np.int32)
    B = np.ones((8, 8), np.int32)
    X = np.ones((8), np.int32)
    Y = np.zeros((8), np.int32)
    await dut(alpha, beta, temp, A, B, X, Y)
