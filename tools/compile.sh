mkdir -p build
../circt/build/bin/circt-opt -instrument-cosim="dir=./build/$1 entry=gesummv_hir" $1.mlir>/dev/null
../circt/build/bin/mlir-opt --lower-affine --convert-scf-to-cf --finalize-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts ./build/$1/cpu-module.mlir >./build/$1/cpu_llvm.mlir
