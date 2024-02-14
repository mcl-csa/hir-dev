import os
import subprocess
from pprint import pprint

class Shell:
    def __init__(self,config):
        pprint(config) 
        self.verilator = config['verilator']
        self.cxx = config['cxx_compiler']
        self.circt_opt = config['circt_opt']
        self.mlir_opt = config['mlir_opt']

    def compile_mlir(self,mlir_path):
        #FIXME
        cmd_compile = [self.circt_opt, mlir_path ]
        

    def verilate(self, top, svDir, includeDir):
        cmd_verilate = [self.verilator, '--cc', f"{svDir}/*.sv", '--top-module',
                        top, '--prefix', 'Vtop', '-Mdir', '.']

        if (includeDir != ''):
            pli_header = f'{includeDir}/pli.h'
            if (os.path.isfile()):
                cmd_verilate += ['--FI', pli_header]

        subprocess.run(cmd_verilate, shell=False)

    def build_shared_lib(self, includeDir):
        cmd_compile = [self.cxx, '--shared', '-fPIC',  '*.cpp', ]
        result = subprocess.run([self.verilator, '--getenv', 'VERILATOR_ROOT'],
                                capture_output=True,  # Python >= 3.7 only
                                text=True  # Python >= 3.7 only
                                )
        verilator_root = result.stdout
        print(verilator_root)
        # subprocess.run(cmd_compile, shell=False)
