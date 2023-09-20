; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @record(i32)

define void @gesummv_hir(i32 %0, i32 %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6) !dbg !3 {
  %8 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0, !dbg !7
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %8, ptr %2, 1, !dbg !9
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, i64 0, 2, !dbg !10
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 8, 3, 0, !dbg !11
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 1, 4, 0, !dbg !12
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %3, 0, !dbg !13
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, ptr %3, 1, !dbg !14
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, i64 0, 2, !dbg !15
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 8, 3, 0, !dbg !16
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 8, 4, 0, !dbg !17
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 8, 3, 1, !dbg !18
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 1, 4, 1, !dbg !19
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %4, 0, !dbg !20
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, ptr %4, 1, !dbg !21
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 0, 2, !dbg !22
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 8, 3, 0, !dbg !23
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 8, 4, 0, !dbg !24
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 8, 3, 1, !dbg !25
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 1, 4, 1, !dbg !26
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0, !dbg !27
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, ptr %5, 1, !dbg !28
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, i64 0, 2, !dbg !29
  %30 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %29, i64 8, 3, 0, !dbg !30
  %31 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %30, i64 1, 4, 0, !dbg !31
  %32 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %6, 0, !dbg !32
  %33 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %32, ptr %6, 1, !dbg !33
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %33, i64 0, 2, !dbg !34
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, i64 8, 3, 0, !dbg !35
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 1, 4, 0, !dbg !36
  %37 = alloca i32, i64 ptrtoint (ptr getelementptr (i32, ptr null, i64 1) to i64), align 4, !dbg !37
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %37, 0, !dbg !38
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, ptr %37, 1, !dbg !39
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 0, 2, !dbg !40
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 1, 3, 0, !dbg !41
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 1, 4, 0, !dbg !42
  %43 = alloca i32, i64 ptrtoint (ptr getelementptr (i32, ptr null, i64 1) to i64), align 4, !dbg !43
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %43, 0, !dbg !44
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, ptr %43, 1, !dbg !45
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 0, 2, !dbg !46
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 1, 3, 0, !dbg !47
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 1, 4, 0, !dbg !48
  br label %49, !dbg !49

49:                                               ; preds = %83, %7
  %50 = phi i64 [ %95, %83 ], [ 0, %7 ]
  %51 = icmp slt i64 %50, 8, !dbg !50
  br i1 %51, label %52, label %96, !dbg !51

52:                                               ; preds = %49
  %53 = getelementptr i32, ptr %43, i64 0, !dbg !52
  store i32 0, ptr %53, align 4, !dbg !53
  %54 = getelementptr i32, ptr %37, i64 0, !dbg !54
  store i32 0, ptr %54, align 4, !dbg !55
  br label %55, !dbg !56

55:                                               ; preds = %58, %52
  %56 = phi i64 [ %82, %58 ], [ 0, %52 ]
  %57 = icmp slt i64 %56, 8, !dbg !57
  br i1 %57, label %58, label %83, !dbg !58

58:                                               ; preds = %55
  %59 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, 1, !dbg !59
  %60 = mul i64 %50, 8, !dbg !60
  %61 = add i64 %60, %56, !dbg !61
  %62 = getelementptr i32, ptr %59, i64 %61, !dbg !62
  %63 = load i32, ptr %62, align 4, !dbg !63
  call void @record(i32 %63), !dbg !64
  %64 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %31, 1, !dbg !65
  %65 = getelementptr i32, ptr %64, i64 %56, !dbg !66
  %66 = load i32, ptr %65, align 4, !dbg !67
  %67 = mul i32 %63, %66, !dbg !68
  %68 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 1, !dbg !69
  %69 = mul i64 %50, 8, !dbg !70
  %70 = add i64 %69, %56, !dbg !71
  %71 = getelementptr i32, ptr %68, i64 %70, !dbg !72
  %72 = load i32, ptr %71, align 4, !dbg !73
  %73 = mul i32 %72, %66, !dbg !74
  %74 = getelementptr i32, ptr %43, i64 0, !dbg !75
  %75 = load i32, ptr %74, align 4, !dbg !76
  %76 = add i32 %75, %67, !dbg !77
  %77 = getelementptr i32, ptr %43, i64 0, !dbg !78
  store i32 %76, ptr %77, align 4, !dbg !79
  %78 = getelementptr i32, ptr %37, i64 0, !dbg !80
  %79 = load i32, ptr %78, align 4, !dbg !81
  %80 = add i32 %79, %73, !dbg !82
  %81 = getelementptr i32, ptr %37, i64 0, !dbg !83
  store i32 %80, ptr %81, align 4, !dbg !84
  %82 = add i64 %56, 1, !dbg !85
  br label %55, !dbg !86

83:                                               ; preds = %55
  %84 = getelementptr i32, ptr %43, i64 0, !dbg !87
  %85 = load i32, ptr %84, align 4, !dbg !88
  %86 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1, !dbg !89
  %87 = getelementptr i32, ptr %86, i64 %50, !dbg !90
  store i32 %85, ptr %87, align 4, !dbg !91
  %88 = getelementptr i32, ptr %37, i64 0, !dbg !92
  %89 = load i32, ptr %88, align 4, !dbg !93
  %90 = mul i32 %0, %85, !dbg !94
  %91 = mul i32 %1, %89, !dbg !95
  %92 = add i32 %90, %91, !dbg !96
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, 1, !dbg !97
  %94 = getelementptr i32, ptr %93, i64 %50, !dbg !98
  store i32 %92, ptr %94, align 4, !dbg !99
  %95 = add i64 %50, 1, !dbg !100
  br label %49, !dbg !101

96:                                               ; preds = %49
  ret void, !dbg !102
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "gesummv_hir", linkageName: "gesummv_hir", scope: null, file: !4, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "gesummv/cpu_llvm.mlir", directory: "/home/kingshuk/Git_Clones/hir-dev/tools")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 5, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 6, column: 10, scope: !8)
!10 = !DILocation(line: 8, column: 10, scope: !8)
!11 = !DILocation(line: 10, column: 10, scope: !8)
!12 = !DILocation(line: 12, column: 10, scope: !8)
!13 = !DILocation(line: 14, column: 11, scope: !8)
!14 = !DILocation(line: 15, column: 11, scope: !8)
!15 = !DILocation(line: 17, column: 11, scope: !8)
!16 = !DILocation(line: 19, column: 11, scope: !8)
!17 = !DILocation(line: 21, column: 11, scope: !8)
!18 = !DILocation(line: 23, column: 11, scope: !8)
!19 = !DILocation(line: 25, column: 11, scope: !8)
!20 = !DILocation(line: 27, column: 11, scope: !8)
!21 = !DILocation(line: 28, column: 11, scope: !8)
!22 = !DILocation(line: 30, column: 11, scope: !8)
!23 = !DILocation(line: 32, column: 11, scope: !8)
!24 = !DILocation(line: 34, column: 11, scope: !8)
!25 = !DILocation(line: 36, column: 11, scope: !8)
!26 = !DILocation(line: 38, column: 11, scope: !8)
!27 = !DILocation(line: 40, column: 11, scope: !8)
!28 = !DILocation(line: 41, column: 11, scope: !8)
!29 = !DILocation(line: 43, column: 11, scope: !8)
!30 = !DILocation(line: 45, column: 11, scope: !8)
!31 = !DILocation(line: 47, column: 11, scope: !8)
!32 = !DILocation(line: 49, column: 11, scope: !8)
!33 = !DILocation(line: 50, column: 11, scope: !8)
!34 = !DILocation(line: 52, column: 11, scope: !8)
!35 = !DILocation(line: 54, column: 11, scope: !8)
!36 = !DILocation(line: 56, column: 11, scope: !8)
!37 = !DILocation(line: 63, column: 11, scope: !8)
!38 = !DILocation(line: 65, column: 11, scope: !8)
!39 = !DILocation(line: 66, column: 11, scope: !8)
!40 = !DILocation(line: 68, column: 11, scope: !8)
!41 = !DILocation(line: 69, column: 11, scope: !8)
!42 = !DILocation(line: 70, column: 11, scope: !8)
!43 = !DILocation(line: 76, column: 11, scope: !8)
!44 = !DILocation(line: 78, column: 11, scope: !8)
!45 = !DILocation(line: 79, column: 11, scope: !8)
!46 = !DILocation(line: 81, column: 11, scope: !8)
!47 = !DILocation(line: 82, column: 11, scope: !8)
!48 = !DILocation(line: 83, column: 11, scope: !8)
!49 = !DILocation(line: 87, column: 5, scope: !8)
!50 = !DILocation(line: 89, column: 11, scope: !8)
!51 = !DILocation(line: 90, column: 5, scope: !8)
!52 = !DILocation(line: 93, column: 11, scope: !8)
!53 = !DILocation(line: 94, column: 5, scope: !8)
!54 = !DILocation(line: 96, column: 11, scope: !8)
!55 = !DILocation(line: 97, column: 5, scope: !8)
!56 = !DILocation(line: 101, column: 5, scope: !8)
!57 = !DILocation(line: 103, column: 11, scope: !8)
!58 = !DILocation(line: 104, column: 5, scope: !8)
!59 = !DILocation(line: 106, column: 11, scope: !8)
!60 = !DILocation(line: 108, column: 11, scope: !8)
!61 = !DILocation(line: 109, column: 11, scope: !8)
!62 = !DILocation(line: 110, column: 11, scope: !8)
!63 = !DILocation(line: 111, column: 11, scope: !8)
!64 = !DILocation(line: 112, column: 5, scope: !8)
!65 = !DILocation(line: 113, column: 12, scope: !8)
!66 = !DILocation(line: 114, column: 12, scope: !8)
!67 = !DILocation(line: 115, column: 12, scope: !8)
!68 = !DILocation(line: 116, column: 12, scope: !8)
!69 = !DILocation(line: 117, column: 12, scope: !8)
!70 = !DILocation(line: 119, column: 12, scope: !8)
!71 = !DILocation(line: 120, column: 12, scope: !8)
!72 = !DILocation(line: 121, column: 12, scope: !8)
!73 = !DILocation(line: 122, column: 12, scope: !8)
!74 = !DILocation(line: 123, column: 12, scope: !8)
!75 = !DILocation(line: 125, column: 12, scope: !8)
!76 = !DILocation(line: 126, column: 12, scope: !8)
!77 = !DILocation(line: 127, column: 12, scope: !8)
!78 = !DILocation(line: 129, column: 12, scope: !8)
!79 = !DILocation(line: 130, column: 5, scope: !8)
!80 = !DILocation(line: 132, column: 12, scope: !8)
!81 = !DILocation(line: 133, column: 12, scope: !8)
!82 = !DILocation(line: 134, column: 12, scope: !8)
!83 = !DILocation(line: 136, column: 12, scope: !8)
!84 = !DILocation(line: 137, column: 5, scope: !8)
!85 = !DILocation(line: 138, column: 12, scope: !8)
!86 = !DILocation(line: 139, column: 5, scope: !8)
!87 = !DILocation(line: 142, column: 12, scope: !8)
!88 = !DILocation(line: 143, column: 12, scope: !8)
!89 = !DILocation(line: 144, column: 12, scope: !8)
!90 = !DILocation(line: 145, column: 12, scope: !8)
!91 = !DILocation(line: 146, column: 5, scope: !8)
!92 = !DILocation(line: 148, column: 12, scope: !8)
!93 = !DILocation(line: 149, column: 12, scope: !8)
!94 = !DILocation(line: 150, column: 12, scope: !8)
!95 = !DILocation(line: 151, column: 12, scope: !8)
!96 = !DILocation(line: 152, column: 12, scope: !8)
!97 = !DILocation(line: 153, column: 12, scope: !8)
!98 = !DILocation(line: 154, column: 12, scope: !8)
!99 = !DILocation(line: 155, column: 5, scope: !8)
!100 = !DILocation(line: 156, column: 12, scope: !8)
!101 = !DILocation(line: 157, column: 5, scope: !8)
!102 = !DILocation(line: 159, column: 5, scope: !8)
