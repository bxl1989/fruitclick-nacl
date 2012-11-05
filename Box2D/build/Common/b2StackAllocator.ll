; ModuleID = 'Common/b2StackAllocator.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2StackAllocator = type { [102400 x i8], i32, i32, i32, [32 x %struct.b2StackEntry], i32 }
%struct.b2StackEntry = type { i8*, i32, i8 }

@.str = private unnamed_addr constant [13 x i8] c"m_index == 0\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Common/b2StackAllocator.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN16b2StackAllocatorD2Ev = private unnamed_addr constant [38 x i8] c"b2StackAllocator::~b2StackAllocator()\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"m_entryCount == 0\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"m_entryCount < b2_maxStackEntries\00", align 1
@__PRETTY_FUNCTION__._ZN16b2StackAllocator8AllocateEi = private unnamed_addr constant [40 x i8] c"void *b2StackAllocator::Allocate(int32)\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"m_entryCount > 0\00", align 1
@__PRETTY_FUNCTION__._ZN16b2StackAllocator4FreeEPv = private unnamed_addr constant [36 x i8] c"void b2StackAllocator::Free(void *)\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"p == entry->data\00", align 1

@_ZN16b2StackAllocatorC1Ev = alias void (%class.b2StackAllocator*)* @_ZN16b2StackAllocatorC2Ev
@_ZN16b2StackAllocatorD1Ev = alias void (%class.b2StackAllocator*)* @_ZN16b2StackAllocatorD2Ev

define void @_ZN16b2StackAllocatorC2Ev(%class.b2StackAllocator* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2StackAllocator*, align 4
  store %class.b2StackAllocator* %this, %class.b2StackAllocator** %1, align 4
  %2 = load %class.b2StackAllocator** %1
  %3 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 4
  %4 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 3
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 5
  store i32 0, i32* %7, align 4
  ret void
}

define void @_ZN16b2StackAllocatorD2Ev(%class.b2StackAllocator* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2StackAllocator*, align 4
  store %class.b2StackAllocator* %this, %class.b2StackAllocator** %1, align 4
  %2 = load %class.b2StackAllocator** %1
  %3 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN16b2StackAllocatorD2Ev, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 5
  %11 = load i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  br label %16

; <label>:14                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN16b2StackAllocatorD2Ev, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %this, i32 %size) align 2 {
  %1 = alloca %class.b2StackAllocator*, align 4
  %2 = alloca i32, align 4
  %entry = alloca %struct.b2StackEntry*, align 4
  store %class.b2StackAllocator* %this, %class.b2StackAllocator** %1, align 4
  store i32 %size, i32* %2, align 4
  %3 = load %class.b2StackAllocator** %1
  %4 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %5 = load i32* %4, align 4
  %6 = icmp slt i32 %5, 32
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN16b2StackAllocator8AllocateEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 4
  %12 = getelementptr inbounds [32 x %struct.b2StackEntry]* %11, i32 0, i32 0
  %13 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %struct.b2StackEntry* %12, i32 %14
  store %struct.b2StackEntry* %15, %struct.b2StackEntry** %entry, align 4
  %16 = load i32* %2, align 4
  %17 = load %struct.b2StackEntry** %entry, align 4
  %18 = getelementptr inbounds %struct.b2StackEntry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = load i32* %2, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp sgt i32 %22, 102400
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %10
  %25 = load i32* %2, align 4
  %26 = call i8* @_Z7b2Alloci(i32 %25)
  %27 = load %struct.b2StackEntry** %entry, align 4
  %28 = getelementptr inbounds %struct.b2StackEntry* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 4
  %29 = load %struct.b2StackEntry** %entry, align 4
  %30 = getelementptr inbounds %struct.b2StackEntry* %29, i32 0, i32 2
  store i8 1, i8* %30, align 1
  br label %45

; <label>:31                                      ; preds = %10
  %32 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 0
  %33 = getelementptr inbounds [102400 x i8]* %32, i32 0, i32 0
  %34 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = getelementptr inbounds i8* %33, i32 %35
  %37 = load %struct.b2StackEntry** %entry, align 4
  %38 = getelementptr inbounds %struct.b2StackEntry* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 4
  %39 = load %struct.b2StackEntry** %entry, align 4
  %40 = getelementptr inbounds %struct.b2StackEntry* %39, i32 0, i32 2
  store i8 0, i8* %40, align 1
  %41 = load i32* %2, align 4
  %42 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 1
  %43 = load i32* %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

; <label>:45                                      ; preds = %31, %24
  %46 = load i32* %2, align 4
  %47 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 2
  %48 = load i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 3
  %51 = load i32* %50, align 4
  %52 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 2
  %53 = load i32* %52, align 4
  %54 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %51, i32 %53)
  %55 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %57 = load i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.b2StackEntry** %entry, align 4
  %60 = getelementptr inbounds %struct.b2StackEntry* %59, i32 0, i32 0
  %61 = load i8** %60, align 4
  ret i8* %61
}

declare i8* @_Z7b2Alloci(i32)

define linkonce_odr i32 @_Z5b2MaxIiET_S0_S0_(i32 %a, i32 %b) nounwind inlinehint {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = icmp sgt i32 %3, %4
  %6 = load i32* %1, align 4
  %7 = load i32* %2, align 4
  %8 = select i1 %5, i32 %6, i32 %7
  ret i32 %8
}

define void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %this, i8* %p) align 2 {
  %1 = alloca %class.b2StackAllocator*, align 4
  %2 = alloca i8*, align 4
  %entry = alloca %struct.b2StackEntry*, align 4
  store %class.b2StackAllocator* %this, %class.b2StackAllocator** %1, align 4
  store i8* %p, i8** %2, align 4
  %3 = load %class.b2StackAllocator** %1
  %4 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %5 = load i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 63, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN16b2StackAllocator4FreeEPv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 4
  %12 = getelementptr inbounds [32 x %struct.b2StackEntry]* %11, i32 0, i32 0
  %13 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %struct.b2StackEntry* %12, i32 %14
  %16 = getelementptr inbounds %struct.b2StackEntry* %15, i32 -1
  store %struct.b2StackEntry* %16, %struct.b2StackEntry** %entry, align 4
  %17 = load i8** %2, align 4
  %18 = load %struct.b2StackEntry** %entry, align 4
  %19 = getelementptr inbounds %struct.b2StackEntry* %18, i32 0, i32 0
  %20 = load i8** %19, align 4
  %21 = icmp eq i8* %17, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %10
  br label %25

; <label>:23                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 65, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN16b2StackAllocator4FreeEPv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load %struct.b2StackEntry** %entry, align 4
  %27 = getelementptr inbounds %struct.b2StackEntry* %26, i32 0, i32 2
  %28 = load i8* %27, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %25
  %31 = load i8** %2, align 4
  call void @_Z6b2FreePv(i8* %31)
  br label %39

; <label>:32                                      ; preds = %25
  %33 = load %struct.b2StackEntry** %entry, align 4
  %34 = getelementptr inbounds %struct.b2StackEntry* %33, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 1
  %37 = load i32* %36, align 4
  %38 = sub nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

; <label>:39                                      ; preds = %32, %30
  %40 = load %struct.b2StackEntry** %entry, align 4
  %41 = getelementptr inbounds %struct.b2StackEntry* %40, i32 0, i32 1
  %42 = load i32* %41, align 4
  %43 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 2
  %44 = load i32* %43, align 4
  %45 = sub nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %class.b2StackAllocator* %3, i32 0, i32 5
  %47 = load i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  store i8* null, i8** %2, align 4
  ret void
}

declare void @_Z6b2FreePv(i8*)

define i32 @_ZNK16b2StackAllocator16GetMaxAllocationEv(%class.b2StackAllocator* %this) nounwind align 2 {
  %1 = alloca %class.b2StackAllocator*, align 4
  store %class.b2StackAllocator* %this, %class.b2StackAllocator** %1, align 4
  %2 = load %class.b2StackAllocator** %1
  %3 = getelementptr inbounds %class.b2StackAllocator* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  ret i32 %4
}
