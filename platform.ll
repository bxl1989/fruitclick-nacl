; ModuleID = 'platform.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.FruitClick::Platform" = type { i32 (...)** }

@_ZN10FruitClick8Platform11ms_platformE = global %"class.FruitClick::Platform"* null, align 4

define void @_ZN10FruitClick8Platform9drawBeginEv() align 2 {
  %1 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !117
  %2 = bitcast %"class.FruitClick::Platform"* %1 to void (%"class.FruitClick::Platform"*)***, !dbg !117
  %3 = load void (%"class.FruitClick::Platform"*)*** %2, !dbg !117
  %4 = getelementptr inbounds void (%"class.FruitClick::Platform"*)** %3, i64 0, !dbg !117
  %5 = load void (%"class.FruitClick::Platform"*)** %4, !dbg !117
  call void %5(%"class.FruitClick::Platform"* %1), !dbg !117
  ret void, !dbg !119
}

define void @_ZN10FruitClick8Platform7drawEndEv() align 2 {
  %1 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !120
  %2 = bitcast %"class.FruitClick::Platform"* %1 to void (%"class.FruitClick::Platform"*)***, !dbg !120
  %3 = load void (%"class.FruitClick::Platform"*)*** %2, !dbg !120
  %4 = getelementptr inbounds void (%"class.FruitClick::Platform"*)** %3, i64 1, !dbg !120
  %5 = load void (%"class.FruitClick::Platform"*)** %4, !dbg !120
  call void %5(%"class.FruitClick::Platform"* %1), !dbg !120
  ret void, !dbg !122
}

define void @_ZN10FruitClick8Platform4drawENS0_7TextureEfff(i32 %id, float %x, float %y, float %angle) align 2 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 %id, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !123), !dbg !124
  store float %x, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !125), !dbg !126
  store float %y, float* %3, align 4
  call void @llvm.dbg.declare(metadata !{float* %3}, metadata !127), !dbg !128
  store float %angle, float* %4, align 4
  call void @llvm.dbg.declare(metadata !{float* %4}, metadata !129), !dbg !130
  %5 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !131
  %6 = bitcast %"class.FruitClick::Platform"* %5 to void (%"class.FruitClick::Platform"*, i32, float, float, float)***, !dbg !131
  %7 = load void (%"class.FruitClick::Platform"*, i32, float, float, float)*** %6, !dbg !131
  %8 = getelementptr inbounds void (%"class.FruitClick::Platform"*, i32, float, float, float)** %7, i64 2, !dbg !131
  %9 = load void (%"class.FruitClick::Platform"*, i32, float, float, float)** %8, !dbg !131
  %10 = load i32* %1, align 4, !dbg !131
  %11 = load float* %2, align 4, !dbg !131
  %12 = load float* %3, align 4, !dbg !131
  %13 = load float* %4, align 4, !dbg !131
  call void %9(%"class.FruitClick::Platform"* %5, i32 %10, float %11, float %12, float %13), !dbg !131
  ret void, !dbg !133
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @_ZN10FruitClick8Platform8drawTextEPKcff(i8* %text, float %x, float %y) align 2 {
  %1 = alloca i8*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store i8* %text, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !134), !dbg !135
  store float %x, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !136), !dbg !137
  store float %y, float* %3, align 4
  call void @llvm.dbg.declare(metadata !{float* %3}, metadata !138), !dbg !139
  %4 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !140
  %5 = bitcast %"class.FruitClick::Platform"* %4 to void (%"class.FruitClick::Platform"*, i8*, float, float)***, !dbg !140
  %6 = load void (%"class.FruitClick::Platform"*, i8*, float, float)*** %5, !dbg !140
  %7 = getelementptr inbounds void (%"class.FruitClick::Platform"*, i8*, float, float)** %6, i64 3, !dbg !140
  %8 = load void (%"class.FruitClick::Platform"*, i8*, float, float)** %7, !dbg !140
  %9 = load i8** %1, align 4, !dbg !140
  %10 = load float* %2, align 4, !dbg !140
  %11 = load float* %3, align 4, !dbg !140
  call void %8(%"class.FruitClick::Platform"* %4, i8* %9, float %10, float %11), !dbg !140
  ret void, !dbg !142
}

define void @_ZN10FruitClick8Platform9playSoundENS0_5SoundE(i32 %id) align 2 {
  %1 = alloca i32, align 4
  store i32 %id, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !143), !dbg !144
  %2 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !145
  %3 = bitcast %"class.FruitClick::Platform"* %2 to void (%"class.FruitClick::Platform"*, i32)***, !dbg !145
  %4 = load void (%"class.FruitClick::Platform"*, i32)*** %3, !dbg !145
  %5 = getelementptr inbounds void (%"class.FruitClick::Platform"*, i32)** %4, i64 4, !dbg !145
  %6 = load void (%"class.FruitClick::Platform"*, i32)** %5, !dbg !145
  %7 = load i32* %1, align 4, !dbg !145
  call void %6(%"class.FruitClick::Platform"* %2, i32 %7), !dbg !145
  ret void, !dbg !147
}

define void @_ZN10FruitClick8Platform3setEPS0_(%"class.FruitClick::Platform"* %concretePlatform) nounwind align 2 {
  %1 = alloca %"class.FruitClick::Platform"*, align 4
  store %"class.FruitClick::Platform"* %concretePlatform, %"class.FruitClick::Platform"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.FruitClick::Platform"** %1}, metadata !148), !dbg !149
  %2 = load %"class.FruitClick::Platform"** %1, align 4, !dbg !150
  store %"class.FruitClick::Platform"* %2, %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !150
  ret void, !dbg !152
}

define void @_ZN10FruitClick8Platform3logEPKc(i8* %text) align 2 {
  %1 = alloca i8*, align 4
  store i8* %text, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !153), !dbg !154
  %2 = load %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE, align 4, !dbg !155
  %3 = bitcast %"class.FruitClick::Platform"* %2 to void (%"class.FruitClick::Platform"*, i8*)***, !dbg !155
  %4 = load void (%"class.FruitClick::Platform"*, i8*)*** %3, !dbg !155
  %5 = getelementptr inbounds void (%"class.FruitClick::Platform"*, i8*)** %4, i64 5, !dbg !155
  %6 = load void (%"class.FruitClick::Platform"*, i8*)** %5, !dbg !155
  %7 = load i8** %1, align 4, !dbg !155
  call void %6(%"class.FruitClick::Platform"* %2, i8* %7), !dbg !155
  ret void, !dbg !157
}

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 720913, i32 0, i32 4, metadata !"platform.cpp", metadata !"/home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl", metadata !"clang version 3.0 (tags/RELEASE_30/final 167235)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !88, metadata !90, metadata !114} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !39}
!3 = metadata !{i32 720900, metadata !4, metadata !"Texture", metadata !6, i32 12, i64 32, i64 32, i32 0, i32 0, i32 0, metadata !85, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!4 = metadata !{i32 720898, metadata !5, metadata !"Platform", metadata !6, i32 8, i64 32, i64 32, i32 0, i32 0, null, metadata !7, i32 0, metadata !4, null} ; [ DW_TAG_class_type ]
!5 = metadata !{i32 720953, null, metadata !"FruitClick", metadata !6, i32 6} ; [ DW_TAG_namespace ]
!6 = metadata !{i32 720937, metadata !"./platform.h", metadata !"/home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl", null} ; [ DW_TAG_file_type ]
!7 = metadata !{metadata !8, metadata !14, metadata !19, metadata !22, metadata !28, metadata !36, metadata !45, metadata !50, metadata !56, metadata !62, metadata !65, metadata !70, metadata !75, metadata !80}
!8 = metadata !{i32 720909, metadata !6, metadata !"_vptr$Platform", metadata !6, i32 0, i64 32, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ]
!9 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 720911, null, metadata !"__vtbl_ptr_type", null, i32 0, i64 32, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 720932, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawBegin", metadata !"drawBegin", metadata !"_ZN10FruitClick8Platform9drawBeginEv", metadata !6, i32 18, metadata !15, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawEnd", metadata !"drawEnd", metadata !"_ZN10FruitClick8Platform7drawEndEv", metadata !6, i32 19, metadata !15, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20} ; [ DW_TAG_subprogram ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 720942, i32 0, metadata !4, metadata !"draw", metadata !"draw", metadata !"_ZN10FruitClick8Platform4drawENS0_7TextureEfff", metadata !6, i32 20, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !3, metadata !25, metadata !25, metadata !25}
!25 = metadata !{i32 720932, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawText", metadata !"drawText", metadata !"_ZN10FruitClick8Platform8drawTextEPKcff", metadata !6, i32 21, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !25, metadata !25}
!31 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 720934, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 720932, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 720942, i32 0, metadata !4, metadata !"playSound", metadata !"playSound", metadata !"_ZN10FruitClick8Platform9playSoundENS0_5SoundE", metadata !6, i32 29, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !39}
!39 = metadata !{i32 720900, metadata !4, metadata !"Sound", metadata !6, i32 23, i64 32, i64 32, i32 0, i32 0, i32 0, metadata !40, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 720936, metadata !"CRUNCH", i64 0} ; [ DW_TAG_enumerator ]
!42 = metadata !{i32 720936, metadata !"CRASH", i64 1} ; [ DW_TAG_enumerator ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 720942, i32 0, metadata !4, metadata !"log", metadata !"log", metadata !"_ZN10FruitClick8Platform3logEPKc", metadata !6, i32 30, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !48} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!50 = metadata !{i32 720942, i32 0, metadata !4, metadata !"set", metadata !"set", metadata !"_ZN10FruitClick8Platform3setEPS0_", metadata !6, i32 33, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, metadata !54} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !53}
!53 = metadata !{i32 720911, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !4} ; [ DW_TAG_pointer_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!56 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawBeginImpl", metadata !"drawBeginImpl", metadata !"_ZN10FruitClick8Platform13drawBeginImplEv", metadata !6, i32 36, metadata !57, i1 false, i1 false, i32 1, i32 0, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !60} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 720911, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !4} ; [ DW_TAG_pointer_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!62 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawEndImpl", metadata !"drawEndImpl", metadata !"_ZN10FruitClick8Platform11drawEndImplEv", metadata !6, i32 37, metadata !57, i1 false, i1 false, i32 1, i32 1, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !63} ; [ DW_TAG_subprogram ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!65 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawImpl", metadata !"drawImpl", metadata !"_ZN10FruitClick8Platform8drawImplENS0_7TextureEfff", metadata !6, i32 38, metadata !66, i1 false, i1 false, i32 2, i32 2, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !68} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !59, metadata !3, metadata !25, metadata !25, metadata !25}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!70 = metadata !{i32 720942, i32 0, metadata !4, metadata !"drawTextImpl", metadata !"drawTextImpl", metadata !"_ZN10FruitClick8Platform12drawTextImplEPKcff", metadata !6, i32 39, metadata !71, i1 false, i1 false, i32 2, i32 3, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !73} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !59, metadata !31, metadata !25, metadata !25}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!75 = metadata !{i32 720942, i32 0, metadata !4, metadata !"playSoundImpl", metadata !"playSoundImpl", metadata !"_ZN10FruitClick8Platform13playSoundImplENS0_5SoundE", metadata !6, i32 40, metadata !76, i1 false, i1 false, i32 2, i32 4, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !78} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !59, metadata !39}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!80 = metadata !{i32 720942, i32 0, metadata !4, metadata !"logImpl", metadata !"logImpl", metadata !"_ZN10FruitClick8Platform7logImplEPKc", metadata !6, i32 41, metadata !81, i1 false, i1 false, i32 2, i32 5, metadata !4, i32 258, i1 false, null, null, i32 0, metadata !83} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 720917, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 0, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !59, metadata !31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!85 = metadata !{metadata !86, metadata !87}
!86 = metadata !{i32 720936, metadata !"APPLE", i64 0} ; [ DW_TAG_enumerator ]
!87 = metadata !{i32 720936, metadata !"BACKGROUND", i64 1} ; [ DW_TAG_enumerator ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !92, metadata !96, metadata !99, metadata !102, metadata !105, metadata !108, metadata !111}
!92 = metadata !{i32 720942, i32 0, metadata !5, metadata !"drawBegin", metadata !"drawBegin", metadata !"_ZN10FruitClick8Platform9drawBeginEv", metadata !93, i32 8, metadata !15, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void ()* @_ZN10FruitClick8Platform9drawBeginEv, null, metadata !14, metadata !94} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 720937, metadata !"platform.cpp", metadata !"/home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl", null} ; [ DW_TAG_file_type ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!96 = metadata !{i32 720942, i32 0, metadata !5, metadata !"drawEnd", metadata !"drawEnd", metadata !"_ZN10FruitClick8Platform7drawEndEv", metadata !93, i32 13, metadata !15, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void ()* @_ZN10FruitClick8Platform7drawEndEv, null, metadata !19, metadata !97} ; [ DW_TAG_subprogram ]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 720932}                      ; [ DW_TAG_base_type ]
!99 = metadata !{i32 720942, i32 0, metadata !5, metadata !"draw", metadata !"draw", metadata !"_ZN10FruitClick8Platform4drawENS0_7TextureEfff", metadata !93, i32 18, metadata !23, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void (i32, float, float, float)* @_ZN10FruitClick8Platform4drawENS0_7TextureEfff, null, metadata !22, metadata !100} ; [ DW_TAG_subprogram ]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 720932}                     ; [ DW_TAG_base_type ]
!102 = metadata !{i32 720942, i32 0, metadata !5, metadata !"drawText", metadata !"drawText", metadata !"_ZN10FruitClick8Platform8drawTextEPKcff", metadata !93, i32 23, metadata !29, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void (i8*, float, float)* @_ZN10FruitClick8Platform8drawTextEPKcff, null, metadata !28, metadata !103} ; [ DW_TAG_subprogram ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 720932}                     ; [ DW_TAG_base_type ]
!105 = metadata !{i32 720942, i32 0, metadata !5, metadata !"playSound", metadata !"playSound", metadata !"_ZN10FruitClick8Platform9playSoundENS0_5SoundE", metadata !93, i32 28, metadata !37, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void (i32)* @_ZN10FruitClick8Platform9playSoundENS0_5SoundE, null, metadata !36, metadata !106} ; [ DW_TAG_subprogram ]
!106 = metadata !{metadata !107}
!107 = metadata !{i32 720932}                     ; [ DW_TAG_base_type ]
!108 = metadata !{i32 720942, i32 0, metadata !5, metadata !"set", metadata !"set", metadata !"_ZN10FruitClick8Platform3setEPS0_", metadata !93, i32 33, metadata !51, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void (%"class.FruitClick::Platform"*)* @_ZN10FruitClick8Platform3setEPS0_, null, metadata !50, metadata !109} ; [ DW_TAG_subprogram ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 720932}                     ; [ DW_TAG_base_type ]
!111 = metadata !{i32 720942, i32 0, metadata !5, metadata !"log", metadata !"log", metadata !"_ZN10FruitClick8Platform3logEPKc", metadata !93, i32 38, metadata !46, i1 false, i1 true, i32 0, i32 0, i32 0, i32 256, i1 false, void (i8*)* @_ZN10FruitClick8Platform3logEPKc, null, metadata !45, metadata !112} ; [ DW_TAG_subprogram ]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 720932}                     ; [ DW_TAG_base_type ]
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 720948, i32 0, metadata !4, metadata !"ms_platform", metadata !"ms_platform", metadata !"_ZN10FruitClick8Platform11ms_platformE", metadata !93, i32 5, metadata !59, i32 0, i32 1, %"class.FruitClick::Platform"** @_ZN10FruitClick8Platform11ms_platformE} ; [ DW_TAG_variable ]
!117 = metadata !{i32 9, i32 5, metadata !118, null}
!118 = metadata !{i32 720907, metadata !92, i32 8, i32 1, metadata !93, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 10, i32 1, metadata !118, null}
!120 = metadata !{i32 14, i32 5, metadata !121, null}
!121 = metadata !{i32 720907, metadata !96, i32 13, i32 1, metadata !93, i32 1} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 15, i32 1, metadata !121, null}
!123 = metadata !{i32 721153, metadata !99, metadata !"id", metadata !93, i32 16777233, metadata !3, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 17, i32 29, metadata !99, null}
!125 = metadata !{i32 721153, metadata !99, metadata !"x", metadata !93, i32 33554449, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 17, i32 39, metadata !99, null}
!127 = metadata !{i32 721153, metadata !99, metadata !"y", metadata !93, i32 50331665, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 17, i32 48, metadata !99, null}
!129 = metadata !{i32 721153, metadata !99, metadata !"angle", metadata !93, i32 67108881, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 17, i32 57, metadata !99, null}
!131 = metadata !{i32 19, i32 5, metadata !132, null}
!132 = metadata !{i32 720907, metadata !99, i32 18, i32 1, metadata !93, i32 2} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 20, i32 1, metadata !132, null}
!134 = metadata !{i32 721153, metadata !102, metadata !"text", metadata !93, i32 16777238, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 22, i32 37, metadata !102, null}
!136 = metadata !{i32 721153, metadata !102, metadata !"x", metadata !93, i32 33554454, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 22, i32 49, metadata !102, null}
!138 = metadata !{i32 721153, metadata !102, metadata !"y", metadata !93, i32 50331670, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 22, i32 58, metadata !102, null}
!140 = metadata !{i32 24, i32 5, metadata !141, null}
!141 = metadata !{i32 720907, metadata !102, i32 23, i32 1, metadata !93, i32 3} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 25, i32 1, metadata !141, null}
!143 = metadata !{i32 721153, metadata !105, metadata !"id", metadata !93, i32 16777243, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 27, i32 32, metadata !105, null}
!145 = metadata !{i32 29, i32 5, metadata !146, null}
!146 = metadata !{i32 720907, metadata !105, i32 28, i32 1, metadata !93, i32 4} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 30, i32 1, metadata !146, null}
!148 = metadata !{i32 721153, metadata !108, metadata !"concretePlatform", metadata !93, i32 16777248, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 32, i32 30, metadata !108, null}
!150 = metadata !{i32 34, i32 5, metadata !151, null}
!151 = metadata !{i32 720907, metadata !108, i32 33, i32 1, metadata !93, i32 5} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 35, i32 1, metadata !151, null}
!153 = metadata !{i32 721153, metadata !111, metadata !"text", metadata !93, i32 16777253, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 37, i32 32, metadata !111, null}
!155 = metadata !{i32 39, i32 5, metadata !156, null}
!156 = metadata !{i32 720907, metadata !111, i32 38, i32 1, metadata !93, i32 6} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 40, i32 1, metadata !156, null}
