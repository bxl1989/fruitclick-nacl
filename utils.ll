; ModuleID = 'utils.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@_ZN10FruitClick8g_bufferE = global [16 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i8* @_ZN10FruitClick8toStringEi(i32 %i) nounwind {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !30), !dbg !32
  %2 = load i32* %1, align 4, !dbg !33
  %3 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([16 x i8]* @_ZN10FruitClick8g_bufferE, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 %2) nounwind, !dbg !33
  ret i8* getelementptr inbounds ([16 x i8]* @_ZN10FruitClick8g_bufferE, i32 0, i32 0), !dbg !35
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @sprintf(i8*, i8*, ...) nounwind

define float @_ZN10FruitClick7toWorldEf(float %x) nounwind {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !36), !dbg !37
  %2 = load float* %1, align 4, !dbg !38
  %3 = fmul float %2, 0x3F847AE140000000, !dbg !38
  ret float %3, !dbg !38
}

define float @_ZN10FruitClick8toScreenEf(float %x) nounwind {
  %1 = alloca float, align 4
  store float %x, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !40), !dbg !41
  %2 = load float* %1, align 4, !dbg !42
  %3 = fmul float %2, 1.000000e+02, !dbg !42
  ret float %3, !dbg !42
}

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 4, metadata !"utils.cpp", metadata !"/home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl", metadata !"clang version 3.0 (tags/RELEASE_30/final 167235)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !21}
!5 = metadata !{i32 720942, i32 0, metadata !6, metadata !"toString", metadata !"toString", metadata !"_ZN10FruitClick8toStringEi", metadata !7, i32 9, metadata !8, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, i8* (i32)* @_ZN10FruitClick8toStringEi, null, null, metadata !13} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 720953, null, metadata !"FruitClick", metadata !7, i32 4} ; [ DW_TAG_namespace ]
!7 = metadata !{i32 720937, metadata !"utils.cpp", metadata !"/home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 720934, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 720932, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 720942, i32 0, metadata !6, metadata !"toWorld", metadata !"toWorld", metadata !"_ZN10FruitClick7toWorldEf", metadata !7, i32 15, metadata !16, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, float (float)* @_ZN10FruitClick7toWorldEf, null, null, metadata !19} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 720932, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 720942, i32 0, metadata !6, metadata !"toScreen", metadata !"toScreen", metadata !"_ZN10FruitClick8toScreenEf", metadata !7, i32 20, metadata !16, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, float (float)* @_ZN10FruitClick8toScreenEf, null, null, metadata !22} ; [ DW_TAG_subprogram ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 720948, i32 0, metadata !6, metadata !"g_buffer", metadata !"g_buffer", metadata !"_ZN10FruitClick8g_bufferE", metadata !7, i32 6, metadata !27, i32 0, i32 1, [16 x i8]* @_ZN10FruitClick8g_bufferE} ; [ DW_TAG_variable ]
!27 = metadata !{i32 720897, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !12, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 720929, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 721153, metadata !5, metadata !"i", metadata !7, i32 16777224, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 8, i32 26, metadata !5, null}
!33 = metadata !{i32 10, i32 5, metadata !34, null}
!34 = metadata !{i32 720907, metadata !5, i32 9, i32 1, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 11, i32 5, metadata !34, null}
!36 = metadata !{i32 721153, metadata !15, metadata !"x", metadata !7, i32 16777230, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 14, i32 21, metadata !15, null}
!38 = metadata !{i32 16, i32 5, metadata !39, null}
!39 = metadata !{i32 720907, metadata !15, i32 15, i32 1, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 721153, metadata !21, metadata !"x", metadata !7, i32 16777235, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 19, i32 22, metadata !21, null}
!42 = metadata !{i32 21, i32 5, metadata !43, null}
!43 = metadata !{i32 720907, metadata !21, i32 20, i32 1, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
