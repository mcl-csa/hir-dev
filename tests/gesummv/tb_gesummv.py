import numpy as np

def test_gesummv(dut):
    alpha = 1
    beta = 2
    #A = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    #B = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    #X = np.arange(stop=8, dtype=np.int32)

    temp = np.zeros((8), np.int32)
    A = np.reshape(np.loadtxt('A.txt', dtype=np.int32), (8, 8))
    B = np.reshape(np.loadtxt('B.txt', dtype=np.int32), (8, 8))
    X = np.reshape(np.loadtxt('X.txt', dtype=np.int32), (8))
    Y = np.zeros((8), np.int32)
    print(f'A={A}')
    dut.set_sim_duration(1000)
    dut.run(alpha, beta, temp, A, B, X, Y)
    print(f'temp={temp}')
    print(f'Y={Y}')
