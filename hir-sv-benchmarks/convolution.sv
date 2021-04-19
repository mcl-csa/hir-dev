module  {
  hir.func @convolution at %arg3 (%arg0 : !hir.memref<16x16xi32, {rd = 1 : i64}>, %arg1 : !hir.memref<2x2xi32, {rd = 1 : i64}>, %arg2 : !hir.memref<16x16xi32, {wr = 1 : i64}>) {
    %0:2 = hir.alloca("reg") : !hir.memref<1xi32, [0], {rd = 0 : i64}>, !hir.memref<1xi32, [0], {wr = 1 : i64}>
    %1 = hir.constant(0 : i64) : !hir.const
    %2 = hir.constant(1 : i64) : !hir.const
    %3 = hir.constant(2 : i64) : !hir.const
    %4 = hir.constant(3 : i64) : !hir.const
    %5 = hir.constant(4 : i64) : !hir.const
    %6 = hir.constant(15 : i64) : !hir.const
    %7 = hir.constant(16 : i64) : !hir.const
    %8 = hir.for %arg4 : i32 = %1 : !hir.const to %6 : !hir.const step %2 : !hir.const iter_time( %arg5 = %arg3 + %2) {
      %9 = hir.for %arg6 : i32 = %1 : !hir.const to %6 : !hir.const step %2 : !hir.const iter_time( %arg7 = %arg5 + %2) {
        %10 = hir.for %arg8 : i32 = %1 : !hir.const to %3 : !hir.const step %2 : !hir.const iter_time( %arg9 = %arg7 + %2) {
          %11 = hir.for %arg10 : i32 = %1 : !hir.const to %3 : !hir.const step %2 : !hir.const iter_time( %arg11 = %arg9 + %2) {
            %13 = hir.add(%arg4, %arg8) : (i32, i32) -> (i32)
            %14 = hir.add(%arg6, %arg10) : (i32, i32) -> (i32)
            %15 = hir.load %arg0[%13, %14] at %arg11 : !hir.memref<16x16xi32, {rd = 1 : i64}>[i32, i32] -> i32
            %16 = hir.load %arg1[%arg8, %arg10] at %arg11 : !hir.memref<2x2xi32, {rd = 1 : i64}>[i32, i32] -> i32
            %17 = hir.call @i32mult_dsp48(%15, %16) at %arg11 + %2 : !hir.func<(i32, i32) -> (i32 delay 2)>
            %18 = hir.load %0#0[%1] at %arg11 + %4 : !hir.memref<1xi32, [0], {rd = 0 : i64}>[!hir.const] -> i32
            %19 = hir.add(%17, %18) : (i32, i32) -> (i32)
            hir.store %19 to %0#1[%1] at %arg11 + %4 : (i32, !hir.memref<1xi32, [0], {wr = 1 : i64}>[!hir.const])
            hir.yield at %arg11 + %2
          }
          %12 = hir.load %0#0[%1] at %11 + %4 : !hir.memref<1xi32, [0], {rd = 0 : i64}>[!hir.const] -> i32
          hir.store %12 to %arg2[%arg4, %arg6] at %11 + %4 : (i32, !hir.memref<16x16xi32, {wr = 1 : i64}>[i32, i32])
          hir.yield at %11 + %2
        }
        hir.yield at %10 + %2
      }
      hir.yield at %9 + %2
    }
    hir.return
  }
}

