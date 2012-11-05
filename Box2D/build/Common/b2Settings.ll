; ModuleID = 'Common/b2Settings.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Version = type { i32, i32, i32 }

@b2_version = global %struct.b2Version { i32 2, i32 2, i32 1 }, align 4

define i8* @_Z7b2Alloci(i32 %size) nounwind {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call noalias i8* @malloc(i32 %2) nounwind
  ret i8* %3
}

declare noalias i8* @malloc(i32) nounwind

define void @_Z6b2FreePv(i8* %mem) nounwind {
  %1 = alloca i8*, align 4
  store i8* %mem, i8** %1, align 4
  %2 = load i8** %1, align 4
  call void @free(i8* %2) nounwind
  ret void
}

declare void @free(i8*) nounwind

define void @_Z5b2LogPKcz(i8* %string, ...) {
  %1 = alloca i8*, align 4
  %args = alloca i8*, align 4
  store i8* %string, i8** %1, align 4
  %2 = bitcast i8** %args to i8*
  call void @llvm.va_start(i8* %2)
  %3 = load i8** %1, align 4
  %4 = load i8** %args, align 4
  %5 = call i32 @vprintf(i8* %3, i8* %4)
  %6 = bitcast i8** %args to i8*
  call void @llvm.va_end(i8* %6)
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @vprintf(i8*, i8*)

declare void @llvm.va_end(i8*) nounwind
