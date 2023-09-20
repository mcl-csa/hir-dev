../circt/build/bin/circt-opt -instrument-cosim="dir=$1 entry=gesummv_hir" $1.mlir>/dev/null
../circt/build/bin/mlir-opt --lower-affine --convert-scf-to-cf --convert-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts $1/cpu-module.mlir >$1/cpu_llvm.mlir
../circt/build/bin/mlir-translate --mlir-to-llvmir $1/cpu_llvm.mlir >$1/cpu.ll
../circt/build/bin/llc $1/cpu.ll -o $1/cpu.o -filetype=obj 
gcc --shared $1/cpu.o recorder.c -o $1/cpu.so
