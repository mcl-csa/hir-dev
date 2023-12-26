import simulator as cosim
import numpy as np

config = {
    'mlir_file': 'gesummv.mlir',
    'top_level': 'gesummv_hir',
    'waveform_file': 'gesummv.vcd',
    'output_dir': 'build/gesummv_hir',
    'num_cycles': 10,
    'verilog_libs': ['../../includes/helper.sv']
}


@cosim.test(**config)
async def gesummv_tb(dut):
    alpha = 15
    beta = 2
    temp = np.ones((8), np.int32)
    A = np.ones((8, 8), np.int32)
    B = np.ones((8, 8), np.int32)
    X = np.ones((8), np.int32)
    Y = np.zeros((8), np.int32)
    await dut(alpha, beta, temp, A, B, X, Y)
