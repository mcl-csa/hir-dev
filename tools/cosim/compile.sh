mkdir -p build
../../circt/build/bin/circt-opt -gen-cosim-files="dir=./build/$1 entry=$1" $1.mlir>/dev/null
../../circt/build/bin/circt-opt --affine-to-hir --hir-opt --hir-simplify --hir-to-hw --export-split-verilog="dir-name=build/$1" $1.mlir>/dev/null
../../circt/build/bin/mlir-opt --lower-affine --convert-scf-to-cf --finalize-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts ./build/$1/cpu-sim.mlir >./build/$1/cpu_llvm.mlir>/dev/null
jq . ./build/$1/cosim.json
