import simulator as cosim
import numpy as np

config = {
    'mlir_file': 'gesummv.mlir',
    'top_level': 'gesummv_hir',
    'waveform_file': 'gesummv.vcd',
    'output_dir': 'build/gesummv_hir',
    'num_cycles': 200,
    'verilog_libs': ['../../includes/helper.sv']
}


@cosim.test(**config)
async def gesummv_tb(dut):
    alpha = 15
    beta = 2
    temp = np.arange(stop=8, dtype=np.int32)
    A = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    B = np.reshape(np.arange(stop=64, dtype=np.int32), (8, 8))
    X = np.arange(stop=8, dtype=np.int32)
    Y = np.zeros((8), np.int32)
    await dut(alpha, beta, temp, A, B, X, Y)
    print(f'Y={Y}')
