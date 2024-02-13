import numpy as np


def tb_gesummv(dut):
    alpha = 15
    beta = 2
    temp = np.arange(stop=8, dtype=np.int32)
    A = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    B = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    X = np.arange(stop=8, dtype=np.int32)
    Y = np.zeros((8), np.int32)
    dut(alpha, beta, temp, A, B, X, Y)
    print(f'Y={Y}')

tb_gesummv.dut_file = 'gesummv.mlir'
tb_gesummv.dut = 'gesummv'
tb_gesummv.ncycles = 200
