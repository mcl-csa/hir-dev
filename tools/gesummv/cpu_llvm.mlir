module attributes {llvm.data_layout = ""} {
  llvm.func @record(i32) attributes {sym_visibility = "private"}
  llvm.func @gesummv_hir(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "X", "Y"], hwAccel} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg2, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.insertvalue %arg2, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.insertvalue %3, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(8 : index) : i64
    %6 = llvm.insertvalue %5, %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.insertvalue %7, %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.insertvalue %arg3, %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg3, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.mlir.constant(8 : index) : i64
    %15 = llvm.insertvalue %14, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.insertvalue %16, %15[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.mlir.constant(8 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %arg4, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.insertvalue %arg4, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.mlir.constant(8 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.mlir.constant(8 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %31 = llvm.mlir.constant(8 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %arg5, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %arg5, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.mlir.constant(8 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %arg6, %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %arg6, %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.mlir.constant(8 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.mlir.constant(0 : i32) : i32
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.null : !llvm.ptr<i32>
    %57 = llvm.getelementptr %56[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %59 = llvm.alloca %58 x i32 : (i64) -> !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %54, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %55, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.null : !llvm.ptr<i32>
    %70 = llvm.getelementptr %69[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.alloca %71 x i32 : (i64) -> !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %67, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %79 = llvm.insertvalue %68, %78[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(8 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb5
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.getelementptr %72[%85] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %86 : !llvm.ptr<i32>
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.getelementptr %59[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %88 : !llvm.ptr<i32>
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(8 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%89 : i64)
  ^bb3(%92: i64):  // 2 preds: ^bb2, ^bb4
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %94 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %95 = llvm.mlir.constant(8 : index) : i64
    %96 = llvm.mul %83, %95  : i64
    %97 = llvm.add %96, %92  : i64
    %98 = llvm.getelementptr %94[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.load %98 : !llvm.ptr<i32>
    llvm.call @record(%99) : (i32) -> ()
    %100 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.getelementptr %100[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.mul %99, %102  {result_delays = [1]} : i32
    %104 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mul %83, %105  : i64
    %107 = llvm.add %106, %92  : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.mul %109, %102  {result_delays = [1]} : i32
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.getelementptr %72[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.add %113, %103  {result_delays = [0]} : i32
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.getelementptr %72[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %114, %116 : !llvm.ptr<i32>
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.getelementptr %59[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.add %119, %110  {result_delays = [0]} : i32
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.getelementptr %59[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %120, %122 : !llvm.ptr<i32>
    %123 = llvm.add %92, %91  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb5:  // pred: ^bb3
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.getelementptr %72[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.getelementptr %127[%83] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %126, %128 : !llvm.ptr<i32>
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.getelementptr %59[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.mul %arg0, %126  {result_delays = [1]} : i32
    %133 = llvm.mul %arg1, %131  {result_delays = [1]} : i32
    %134 = llvm.add %132, %133  {result_delays = [0]} : i32
    %135 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %136 = llvm.getelementptr %135[%83] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %134, %136 : !llvm.ptr<i32>
    %137 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%137 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
}

