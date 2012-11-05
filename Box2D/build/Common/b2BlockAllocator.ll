; ModuleID = 'Common/b2BlockAllocator.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type { i32, %struct.b2Block* }
%struct.b2Block = type { %struct.b2Block* }

@_ZN16b2BlockAllocator12s_blockSizesE = global [14 x i32] [i32 16, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 448, i32 512, i32 640], align 4
@_ZN16b2BlockAllocator17s_blockSizeLookupE = global [641 x i8] zeroinitializer, align 1
@_ZN16b2BlockAllocator28s_blockSizeLookupInitializedE = global i8 0, align 1
@.str = private unnamed_addr constant [18 x i8] c"j < b2_blockSizes\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Common/b2BlockAllocator.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN16b2BlockAllocatorC2Ev = private unnamed_addr constant [37 x i8] c"b2BlockAllocator::b2BlockAllocator()\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"0 < size\00", align 1
@__PRETTY_FUNCTION__._ZN16b2BlockAllocator8AllocateEi = private unnamed_addr constant [40 x i8] c"void *b2BlockAllocator::Allocate(int32)\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"0 <= index && index < b2_blockSizes\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"blockCount * blockSize <= b2_chunkSize\00", align 1
@__PRETTY_FUNCTION__._ZN16b2BlockAllocator4FreeEPvi = private unnamed_addr constant [43 x i8] c"void b2BlockAllocator::Free(void *, int32)\00", align 1

@_ZN16b2BlockAllocatorC1Ev = alias void (%class.b2BlockAllocator*)* @_ZN16b2BlockAllocatorC2Ev
@_ZN16b2BlockAllocatorD1Ev = alias void (%class.b2BlockAllocator*)* @_ZN16b2BlockAllocatorD2Ev

define void @_ZN16b2BlockAllocatorC2Ev(%class.b2BlockAllocator* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2BlockAllocator*, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.b2BlockAllocator* %this, %class.b2BlockAllocator** %1, align 4
  %2 = load %class.b2BlockAllocator** %1
  %3 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 2
  store i32 128, i32* %3, align 4
  %4 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 2
  %6 = load i32* %5, align 4
  %7 = mul i32 %6, 8
  %8 = call i8* @_Z7b2Alloci(i32 %7)
  %9 = bitcast i8* %8 to %struct.b2Chunk*
  %10 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  store %struct.b2Chunk* %9, %struct.b2Chunk** %10, align 4
  %11 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  %12 = load %struct.b2Chunk** %11, align 4
  %13 = bitcast %struct.b2Chunk* %12 to i8*
  %14 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = mul i32 %15, 8
  call void @llvm.memset.p0i8.i32(i8* %13, i8 0, i32 %16, i32 1, i1 false)
  %17 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 3
  %18 = getelementptr inbounds [14 x %struct.b2Block*]* %17, i32 0, i32 0
  %19 = bitcast %struct.b2Block** %18 to i8*
  call void @llvm.memset.p0i8.i32(i8* %19, i8 0, i32 56, i32 1, i1 false)
  %20 = load i8* @_ZN16b2BlockAllocator28s_blockSizeLookupInitializedE, align 1
  %21 = trunc i8 %20 to i1
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %57

; <label>:24                                      ; preds = %0
  store i32 0, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %53, %24
  %26 = load i32* %i, align 4
  %27 = icmp sle i32 %26, 640
  br i1 %27, label %28, label %56

; <label>:28                                      ; preds = %25
  %29 = load i32* %j, align 4
  %30 = icmp slt i32 %29, 14
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  br label %34

; <label>:32                                      ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocatorC2Ev, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load i32* %i, align 4
  %36 = load i32* %j, align 4
  %37 = getelementptr inbounds [14 x i32]* @_ZN16b2BlockAllocator12s_blockSizesE, i32 0, i32 %36
  %38 = load i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %34
  %41 = load i32* %j, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i32* %i, align 4
  %44 = getelementptr inbounds [641 x i8]* @_ZN16b2BlockAllocator17s_blockSizeLookupE, i32 0, i32 %43
  store i8 %42, i8* %44, align 1
  br label %52

; <label>:45                                      ; preds = %34
  %46 = load i32* %j, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %j, align 4
  %48 = load i32* %j, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i32* %i, align 4
  %51 = getelementptr inbounds [641 x i8]* @_ZN16b2BlockAllocator17s_blockSizeLookupE, i32 0, i32 %50
  store i8 %49, i8* %51, align 1
  br label %52

; <label>:52                                      ; preds = %45, %40
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %i, align 4
  br label %25

; <label>:56                                      ; preds = %25
  store i8 1, i8* @_ZN16b2BlockAllocator28s_blockSizeLookupInitializedE, align 1
  br label %57

; <label>:57                                      ; preds = %56, %0
  ret void
}

declare i8* @_Z7b2Alloci(i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define void @_ZN16b2BlockAllocatorD2Ev(%class.b2BlockAllocator* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2BlockAllocator*, align 4
  %i = alloca i32, align 4
  store %class.b2BlockAllocator* %this, %class.b2BlockAllocator** %1, align 4
  %2 = load %class.b2BlockAllocator** %1
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %16, %0
  %4 = load i32* %i, align 4
  %5 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %3
  %9 = load i32* %i, align 4
  %10 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  %11 = load %struct.b2Chunk** %10, align 4
  %12 = getelementptr inbounds %struct.b2Chunk* %11, i32 %9
  %13 = getelementptr inbounds %struct.b2Chunk* %12, i32 0, i32 1
  %14 = load %struct.b2Block** %13, align 4
  %15 = bitcast %struct.b2Block* %14 to i8*
  call void @_Z6b2FreePv(i8* %15)
  br label %16

; <label>:16                                      ; preds = %8
  %17 = load i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %3

; <label>:19                                      ; preds = %3
  %20 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  %21 = load %struct.b2Chunk** %20, align 4
  %22 = bitcast %struct.b2Chunk* %21 to i8*
  call void @_Z6b2FreePv(i8* %22)
  ret void
}

declare void @_Z6b2FreePv(i8*)

define i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %this, i32 %size) align 2 {
  %1 = alloca i8*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %3 = alloca i32, align 4
  %index = alloca i32, align 4
  %block = alloca %struct.b2Block*, align 4
  %oldChunks = alloca %struct.b2Chunk*, align 4
  %chunk = alloca %struct.b2Chunk*, align 4
  %blockSize = alloca i32, align 4
  %blockCount = alloca i32, align 4
  %i = alloca i32, align 4
  %block1 = alloca %struct.b2Block*, align 4
  %next = alloca %struct.b2Block*, align 4
  %last = alloca %struct.b2Block*, align 4
  store %class.b2BlockAllocator* %this, %class.b2BlockAllocator** %2, align 4
  store i32 %size, i32* %3, align 4
  %4 = load %class.b2BlockAllocator** %2
  %5 = load i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i8* null, i8** %1
  br label %171

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4
  %10 = icmp slt i32 0, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  br label %14

; <label>:12                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 104, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocator8AllocateEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %3, align 4
  %16 = icmp sgt i32 %15, 640
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %14
  %18 = load i32* %3, align 4
  %19 = call i8* @_Z7b2Alloci(i32 %18)
  store i8* %19, i8** %1
  br label %171

; <label>:20                                      ; preds = %14
  %21 = load i32* %3, align 4
  %22 = getelementptr inbounds [641 x i8]* @_ZN16b2BlockAllocator17s_blockSizeLookupE, i32 0, i32 %21
  %23 = load i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %index, align 4
  %25 = load i32* %index, align 4
  %26 = icmp sle i32 0, %25
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %20
  %28 = load i32* %index, align 4
  %29 = icmp slt i32 %28, 14
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %27
  br label %33

; <label>:31                                      ; preds = %27, %20
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 112, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocator8AllocateEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load i32* %index, align 4
  %35 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %36 = getelementptr inbounds [14 x %struct.b2Block*]* %35, i32 0, i32 %34
  %37 = load %struct.b2Block** %36, align 4
  %38 = icmp ne %struct.b2Block* %37, null
  br i1 %38, label %39, label %52

; <label>:39                                      ; preds = %33
  %40 = load i32* %index, align 4
  %41 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %42 = getelementptr inbounds [14 x %struct.b2Block*]* %41, i32 0, i32 %40
  %43 = load %struct.b2Block** %42, align 4
  store %struct.b2Block* %43, %struct.b2Block** %block, align 4
  %44 = load %struct.b2Block** %block, align 4
  %45 = getelementptr inbounds %struct.b2Block* %44, i32 0, i32 0
  %46 = load %struct.b2Block** %45, align 4
  %47 = load i32* %index, align 4
  %48 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %49 = getelementptr inbounds [14 x %struct.b2Block*]* %48, i32 0, i32 %47
  store %struct.b2Block* %46, %struct.b2Block** %49, align 4
  %50 = load %struct.b2Block** %block, align 4
  %51 = bitcast %struct.b2Block* %50 to i8*
  store i8* %51, i8** %1
  br label %171

; <label>:52                                      ; preds = %33
  %53 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 1
  %54 = load i32* %53, align 4
  %55 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 2
  %56 = load i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %86

; <label>:58                                      ; preds = %52
  %59 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 0
  %60 = load %struct.b2Chunk** %59, align 4
  store %struct.b2Chunk* %60, %struct.b2Chunk** %oldChunks, align 4
  %61 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 2
  %62 = load i32* %61, align 4
  %63 = add nsw i32 %62, 128
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 2
  %65 = load i32* %64, align 4
  %66 = mul i32 %65, 8
  %67 = call i8* @_Z7b2Alloci(i32 %66)
  %68 = bitcast i8* %67 to %struct.b2Chunk*
  %69 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 0
  store %struct.b2Chunk* %68, %struct.b2Chunk** %69, align 4
  %70 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 0
  %71 = load %struct.b2Chunk** %70, align 4
  %72 = bitcast %struct.b2Chunk* %71 to i8*
  %73 = load %struct.b2Chunk** %oldChunks, align 4
  %74 = bitcast %struct.b2Chunk* %73 to i8*
  %75 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 1
  %76 = load i32* %75, align 4
  %77 = mul i32 %76, 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %74, i32 %77, i32 1, i1 false)
  %78 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 0
  %79 = load %struct.b2Chunk** %78, align 4
  %80 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 1
  %81 = load i32* %80, align 4
  %82 = getelementptr inbounds %struct.b2Chunk* %79, i32 %81
  %83 = bitcast %struct.b2Chunk* %82 to i8*
  call void @llvm.memset.p0i8.i32(i8* %83, i8 0, i32 1024, i32 1, i1 false)
  %84 = load %struct.b2Chunk** %oldChunks, align 4
  %85 = bitcast %struct.b2Chunk* %84 to i8*
  call void @_Z6b2FreePv(i8* %85)
  br label %86

; <label>:86                                      ; preds = %58, %52
  %87 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 0
  %88 = load %struct.b2Chunk** %87, align 4
  %89 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 1
  %90 = load i32* %89, align 4
  %91 = getelementptr inbounds %struct.b2Chunk* %88, i32 %90
  store %struct.b2Chunk* %91, %struct.b2Chunk** %chunk, align 4
  %92 = call i8* @_Z7b2Alloci(i32 16384)
  %93 = bitcast i8* %92 to %struct.b2Block*
  %94 = load %struct.b2Chunk** %chunk, align 4
  %95 = getelementptr inbounds %struct.b2Chunk* %94, i32 0, i32 1
  store %struct.b2Block* %93, %struct.b2Block** %95, align 4
  %96 = load i32* %index, align 4
  %97 = getelementptr inbounds [14 x i32]* @_ZN16b2BlockAllocator12s_blockSizesE, i32 0, i32 %96
  %98 = load i32* %97, align 4
  store i32 %98, i32* %blockSize, align 4
  %99 = load i32* %blockSize, align 4
  %100 = load %struct.b2Chunk** %chunk, align 4
  %101 = getelementptr inbounds %struct.b2Chunk* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32* %blockSize, align 4
  %103 = sdiv i32 16384, %102
  store i32 %103, i32* %blockCount, align 4
  %104 = load i32* %blockCount, align 4
  %105 = load i32* %blockSize, align 4
  %106 = mul nsw i32 %104, %105
  %107 = icmp sle i32 %106, 16384
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %86
  br label %111

; <label>:109                                     ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 140, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocator8AllocateEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  store i32 0, i32* %i, align 4
  br label %112

; <label>:112                                     ; preds = %140, %111
  %113 = load i32* %i, align 4
  %114 = load i32* %blockCount, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %143

; <label>:117                                     ; preds = %112
  %118 = load %struct.b2Chunk** %chunk, align 4
  %119 = getelementptr inbounds %struct.b2Chunk* %118, i32 0, i32 1
  %120 = load %struct.b2Block** %119, align 4
  %121 = bitcast %struct.b2Block* %120 to i8*
  %122 = load i32* %blockSize, align 4
  %123 = load i32* %i, align 4
  %124 = mul nsw i32 %122, %123
  %125 = getelementptr inbounds i8* %121, i32 %124
  %126 = bitcast i8* %125 to %struct.b2Block*
  store %struct.b2Block* %126, %struct.b2Block** %block1, align 4
  %127 = load %struct.b2Chunk** %chunk, align 4
  %128 = getelementptr inbounds %struct.b2Chunk* %127, i32 0, i32 1
  %129 = load %struct.b2Block** %128, align 4
  %130 = bitcast %struct.b2Block* %129 to i8*
  %131 = load i32* %blockSize, align 4
  %132 = load i32* %i, align 4
  %133 = add nsw i32 %132, 1
  %134 = mul nsw i32 %131, %133
  %135 = getelementptr inbounds i8* %130, i32 %134
  %136 = bitcast i8* %135 to %struct.b2Block*
  store %struct.b2Block* %136, %struct.b2Block** %next, align 4
  %137 = load %struct.b2Block** %next, align 4
  %138 = load %struct.b2Block** %block1, align 4
  %139 = getelementptr inbounds %struct.b2Block* %138, i32 0, i32 0
  store %struct.b2Block* %137, %struct.b2Block** %139, align 4
  br label %140

; <label>:140                                     ; preds = %117
  %141 = load i32* %i, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i, align 4
  br label %112

; <label>:143                                     ; preds = %112
  %144 = load %struct.b2Chunk** %chunk, align 4
  %145 = getelementptr inbounds %struct.b2Chunk* %144, i32 0, i32 1
  %146 = load %struct.b2Block** %145, align 4
  %147 = bitcast %struct.b2Block* %146 to i8*
  %148 = load i32* %blockSize, align 4
  %149 = load i32* %blockCount, align 4
  %150 = sub nsw i32 %149, 1
  %151 = mul nsw i32 %148, %150
  %152 = getelementptr inbounds i8* %147, i32 %151
  %153 = bitcast i8* %152 to %struct.b2Block*
  store %struct.b2Block* %153, %struct.b2Block** %last, align 4
  %154 = load %struct.b2Block** %last, align 4
  %155 = getelementptr inbounds %struct.b2Block* %154, i32 0, i32 0
  store %struct.b2Block* null, %struct.b2Block** %155, align 4
  %156 = load %struct.b2Chunk** %chunk, align 4
  %157 = getelementptr inbounds %struct.b2Chunk* %156, i32 0, i32 1
  %158 = load %struct.b2Block** %157, align 4
  %159 = getelementptr inbounds %struct.b2Block* %158, i32 0, i32 0
  %160 = load %struct.b2Block** %159, align 4
  %161 = load i32* %index, align 4
  %162 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %163 = getelementptr inbounds [14 x %struct.b2Block*]* %162, i32 0, i32 %161
  store %struct.b2Block* %160, %struct.b2Block** %163, align 4
  %164 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 1
  %165 = load i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.b2Chunk** %chunk, align 4
  %168 = getelementptr inbounds %struct.b2Chunk* %167, i32 0, i32 1
  %169 = load %struct.b2Block** %168, align 4
  %170 = bitcast %struct.b2Block* %169 to i8*
  store i8* %170, i8** %1
  br label %171

; <label>:171                                     ; preds = %143, %39, %17, %7
  %172 = load i8** %1
  ret i8* %172
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %this, i8* %p, i32 %size) align 2 {
  %1 = alloca %class.b2BlockAllocator*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %index = alloca i32, align 4
  %block = alloca %struct.b2Block*, align 4
  store %class.b2BlockAllocator* %this, %class.b2BlockAllocator** %1, align 4
  store i8* %p, i8** %2, align 4
  store i32 %size, i32* %3, align 4
  %4 = load %class.b2BlockAllocator** %1
  %5 = load i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %45

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4
  %10 = icmp slt i32 0, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  br label %14

; <label>:12                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocator4FreeEPvi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %3, align 4
  %16 = icmp sgt i32 %15, 640
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = load i8** %2, align 4
  call void @_Z6b2FreePv(i8* %18)
  br label %45

; <label>:19                                      ; preds = %14
  %20 = load i32* %3, align 4
  %21 = getelementptr inbounds [641 x i8]* @_ZN16b2BlockAllocator17s_blockSizeLookupE, i32 0, i32 %20
  %22 = load i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %index, align 4
  %24 = load i32* %index, align 4
  %25 = icmp sle i32 0, %24
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %19
  %27 = load i32* %index, align 4
  %28 = icmp slt i32 %27, 14
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %26
  br label %32

; <label>:30                                      ; preds = %26, %19
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN16b2BlockAllocator4FreeEPvi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i8** %2, align 4
  %34 = bitcast i8* %33 to %struct.b2Block*
  store %struct.b2Block* %34, %struct.b2Block** %block, align 4
  %35 = load i32* %index, align 4
  %36 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %37 = getelementptr inbounds [14 x %struct.b2Block*]* %36, i32 0, i32 %35
  %38 = load %struct.b2Block** %37, align 4
  %39 = load %struct.b2Block** %block, align 4
  %40 = getelementptr inbounds %struct.b2Block* %39, i32 0, i32 0
  store %struct.b2Block* %38, %struct.b2Block** %40, align 4
  %41 = load %struct.b2Block** %block, align 4
  %42 = load i32* %index, align 4
  %43 = getelementptr inbounds %class.b2BlockAllocator* %4, i32 0, i32 3
  %44 = getelementptr inbounds [14 x %struct.b2Block*]* %43, i32 0, i32 %42
  store %struct.b2Block* %41, %struct.b2Block** %44, align 4
  br label %45

; <label>:45                                      ; preds = %32, %17, %7
  ret void
}

define void @_ZN16b2BlockAllocator5ClearEv(%class.b2BlockAllocator* %this) align 2 {
  %1 = alloca %class.b2BlockAllocator*, align 4
  %i = alloca i32, align 4
  store %class.b2BlockAllocator* %this, %class.b2BlockAllocator** %1, align 4
  %2 = load %class.b2BlockAllocator** %1
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %16, %0
  %4 = load i32* %i, align 4
  %5 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %3
  %9 = load i32* %i, align 4
  %10 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  %11 = load %struct.b2Chunk** %10, align 4
  %12 = getelementptr inbounds %struct.b2Chunk* %11, i32 %9
  %13 = getelementptr inbounds %struct.b2Chunk* %12, i32 0, i32 1
  %14 = load %struct.b2Block** %13, align 4
  %15 = bitcast %struct.b2Block* %14 to i8*
  call void @_Z6b2FreePv(i8* %15)
  br label %16

; <label>:16                                      ; preds = %8
  %17 = load i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %3

; <label>:19                                      ; preds = %3
  %20 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 0
  %22 = load %struct.b2Chunk** %21, align 4
  %23 = bitcast %struct.b2Chunk* %22 to i8*
  %24 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 2
  %25 = load i32* %24, align 4
  %26 = mul i32 %25, 8
  call void @llvm.memset.p0i8.i32(i8* %23, i8 0, i32 %26, i32 1, i1 false)
  %27 = getelementptr inbounds %class.b2BlockAllocator* %2, i32 0, i32 3
  %28 = getelementptr inbounds [14 x %struct.b2Block*]* %27, i32 0, i32 0
  %29 = bitcast %struct.b2Block** %28 to i8*
  call void @llvm.memset.p0i8.i32(i8* %29, i8 0, i32 56, i32 1, i1 false)
  ret void
}
