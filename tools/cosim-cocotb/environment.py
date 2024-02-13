import os
import json


class Environment:
    def __init__(self):
        if ('COSIM_CONFIG' not in os.environ):
            raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_CONFIG' not set."
        with open(os.environ['COSIM_CONFIG']) as f:
            self.config = json.load(f)

        if ('COSIM_TESTMODULE' not in os.environ):
            raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTMODULE' not set."
        testmodule = __import__(os.environ['COSIM_TESTMODULE'])

        if ('COSIM_TESTNAME' not in os.environ):
            raise "INTERNAL_ERROR: ENVIRONMENT VARIABLE 'COSIM_TESTNAME' not set."
        testname = os.environ['COSIM_TESTNAME']
        self.test_func = getattr(testmodule, testname)

        self.num_cycles = int(os.environ['COSIM_NUM_CYCLES'])
        self.cpu_mlir_file = os.path.join(
            os.environ['COSIM_OUTPUT_DIR'], 'cpu-sim.mlir')

        self.toplevel = os.environ['COSIM_VERILOG_TOPLEVEL']
