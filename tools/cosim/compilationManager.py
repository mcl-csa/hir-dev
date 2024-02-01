class Compiler:
    def __init__(self, mlir_file, circt_opt, mlir_opt, build_folder):
        self.mlir_file = mlir_file
        self.circt_opt = circt_opt
        self.mlir_opt = mlir_opt
        self.build_folder = build_folder

    def generateCosimFiles(self):
        
