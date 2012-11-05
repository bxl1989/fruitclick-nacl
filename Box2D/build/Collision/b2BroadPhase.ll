; ModuleID = 'Collision/b2BroadPhase.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2BroadPhase = type { %class.b2DynamicTree, i32, i32*, i32, i32, %struct.b2Pair*, i32, i32, i32 }
%class.b2DynamicTree = type { i32, %struct.b2TreeNode*, i32, i32, i32, i32, i32 }
%struct.b2TreeNode = type { %struct.b2AABB, i8*, %union.anon, i32, i32, i32 }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2Vec2 = type { float, float }
%union.anon = type { i32 }
%struct.b2Pair = type { i32, i32, i32 }

@_ZN12b2BroadPhaseC1Ev = alias void (%class.b2BroadPhase*)* @_ZN12b2BroadPhaseC2Ev
@_ZN12b2BroadPhaseD1Ev = alias void (%class.b2BroadPhase*)* @_ZN12b2BroadPhaseD2Ev

define void @_ZN12b2BroadPhaseC2Ev(%class.b2BroadPhase* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  call void @_ZN13b2DynamicTreeC1Ev(%class.b2DynamicTree* %5)
  %6 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 6
  store i32 16, i32* %7, align 4
  %8 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 6
  %10 = load i32* %9, align 4
  %11 = mul i32 %10, 12
  %12 = invoke i8* @_Z7b2Alloci(i32 %11)
          to label %13 unwind label %25

; <label>:13                                      ; preds = %0
  %14 = bitcast i8* %12 to %struct.b2Pair*
  %15 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  store %struct.b2Pair* %14, %struct.b2Pair** %15, align 4
  %16 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 3
  store i32 16, i32* %16, align 4
  %17 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 3
  %19 = load i32* %18, align 4
  %20 = mul i32 %19, 4
  %21 = invoke i8* @_Z7b2Alloci(i32 %20)
          to label %22 unwind label %25

; <label>:22                                      ; preds = %13
  %23 = bitcast i8* %21 to i32*
  %24 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 2
  store i32* %23, i32** %24, align 4
  ret void

; <label>:25                                      ; preds = %13, %0
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %2
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %3
  %29 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  invoke void @_ZN13b2DynamicTreeD1Ev(%class.b2DynamicTree* %29)
          to label %30 unwind label %37

; <label>:30                                      ; preds = %25
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load i8** %2
  %33 = load i8** %2
  %34 = load i32* %3
  %35 = insertvalue { i8*, i32 } undef, i8* %33, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36

; <label>:37                                      ; preds = %25
  %38 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN13b2DynamicTreeC1Ev(%class.b2DynamicTree*)

declare i8* @_Z7b2Alloci(i32)

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13b2DynamicTreeD1Ev(%class.b2DynamicTree*)

declare void @_ZSt9terminatev()

define void @_ZN12b2BroadPhaseD2Ev(%class.b2BroadPhase* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 2
  %6 = load i32** %5, align 4
  %7 = bitcast i32* %6 to i8*
  invoke void @_Z6b2FreePv(i8* %7)
          to label %8 unwind label %14

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  %10 = load %struct.b2Pair** %9, align 4
  %11 = bitcast %struct.b2Pair* %10 to i8*
  invoke void @_Z6b2FreePv(i8* %11)
          to label %12 unwind label %14

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  call void @_ZN13b2DynamicTreeD1Ev(%class.b2DynamicTree* %13)
  ret void

; <label>:14                                      ; preds = %8, %0
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %2
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %3
  %18 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  invoke void @_ZN13b2DynamicTreeD1Ev(%class.b2DynamicTree* %18)
          to label %19 unwind label %26

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i8** %2
  %22 = load i8** %2
  %23 = load i32* %3
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

; <label>:26                                      ; preds = %14
  %27 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_Z6b2FreePv(i8*)

define i32 @_ZN12b2BroadPhase11CreateProxyERK6b2AABBPv(%class.b2BroadPhase* %this, %struct.b2AABB* %aabb, i8* %userData) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca i8*, align 4
  %proxyId = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store i8* %userData, i8** %3, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  %6 = load %struct.b2AABB** %2
  %7 = load i8** %3, align 4
  %8 = call i32 @_ZN13b2DynamicTree11CreateProxyERK6b2AABBPv(%class.b2DynamicTree* %5, %struct.b2AABB* %6, i8* %7)
  store i32 %8, i32* %proxyId, align 4
  %9 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32* %proxyId, align 4
  call void @_ZN12b2BroadPhase10BufferMoveEi(%class.b2BroadPhase* %4, i32 %12)
  %13 = load i32* %proxyId, align 4
  ret i32 %13
}

declare i32 @_ZN13b2DynamicTree11CreateProxyERK6b2AABBPv(%class.b2DynamicTree*, %struct.b2AABB*, i8*)

define void @_ZN12b2BroadPhase10BufferMoveEi(%class.b2BroadPhase* %this, i32 %proxyId) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  %oldBuffer = alloca i32*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 3
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %31

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %11 = load i32** %10, align 4
  store i32* %11, i32** %oldBuffer, align 4
  %12 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 3
  %13 = load i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = mul i32 %16, 4
  %18 = call i8* @_Z7b2Alloci(i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  store i32* %19, i32** %20, align 4
  %21 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %22 = load i32** %21, align 4
  %23 = bitcast i32* %22 to i8*
  %24 = load i32** %oldBuffer, align 4
  %25 = bitcast i32* %24 to i8*
  %26 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %27 = load i32* %26, align 4
  %28 = mul i32 %27, 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %25, i32 %28, i32 1, i1 false)
  %29 = load i32** %oldBuffer, align 4
  %30 = bitcast i32* %29 to i8*
  call void @_Z6b2FreePv(i8* %30)
  br label %31

; <label>:31                                      ; preds = %9, %0
  %32 = load i32* %2, align 4
  %33 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %34 = load i32* %33, align 4
  %35 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %36 = load i32** %35, align 4
  %37 = getelementptr inbounds i32* %36, i32 %34
  store i32 %32, i32* %37
  %38 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %39 = load i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  ret void
}

define void @_ZN12b2BroadPhase12DestroyProxyEi(%class.b2BroadPhase* %this, i32 %proxyId) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = load i32* %2, align 4
  call void @_ZN12b2BroadPhase12UnBufferMoveEi(%class.b2BroadPhase* %3, i32 %4)
  %5 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %9 = load i32* %2, align 4
  call void @_ZN13b2DynamicTree12DestroyProxyEi(%class.b2DynamicTree* %8, i32 %9)
  ret void
}

define void @_ZN12b2BroadPhase12UnBufferMoveEi(%class.b2BroadPhase* %this, i32 %proxyId) nounwind align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %23, %0
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %7 = load i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

; <label>:9                                       ; preds = %4
  %10 = load i32* %i, align 4
  %11 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %12 = load i32** %11, align 4
  %13 = getelementptr inbounds i32* %12, i32 %10
  %14 = load i32* %13
  %15 = load i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %9
  %18 = load i32* %i, align 4
  %19 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %20 = load i32** %19, align 4
  %21 = getelementptr inbounds i32* %20, i32 %18
  store i32 -1, i32* %21
  br label %26

; <label>:22                                      ; preds = %9
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %4

; <label>:26                                      ; preds = %17, %4
  ret void
}

declare void @_ZN13b2DynamicTree12DestroyProxyEi(%class.b2DynamicTree*, i32)

define void @_ZN12b2BroadPhase9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2BroadPhase* %this, i32 %proxyId, %struct.b2AABB* %aabb, %struct.b2Vec2* %displacement) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %buffer = alloca i8, align 1
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %3, align 4
  store %struct.b2Vec2* %displacement, %struct.b2Vec2** %4, align 4
  %5 = load %class.b2BroadPhase** %1
  %6 = getelementptr inbounds %class.b2BroadPhase* %5, i32 0, i32 0
  %7 = load i32* %2, align 4
  %8 = load %struct.b2AABB** %3
  %9 = load %struct.b2Vec2** %4
  %10 = call zeroext i1 @_ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2DynamicTree* %6, i32 %7, %struct.b2AABB* %8, %struct.b2Vec2* %9)
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %buffer, align 1
  %12 = load i8* %buffer, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4
  call void @_ZN12b2BroadPhase10BufferMoveEi(%class.b2BroadPhase* %5, i32 %15)
  br label %16

; <label>:16                                      ; preds = %14, %0
  ret void
}

declare zeroext i1 @_ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2DynamicTree*, i32, %struct.b2AABB*, %struct.b2Vec2*)

define void @_ZN12b2BroadPhase10TouchProxyEi(%class.b2BroadPhase* %this, i32 %proxyId) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = load i32* %2, align 4
  call void @_ZN12b2BroadPhase10BufferMoveEi(%class.b2BroadPhase* %3, i32 %4)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define zeroext i1 @_ZN12b2BroadPhase13QueryCallbackEi(%class.b2BroadPhase* %this, i32 %proxyId) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2BroadPhase*, align 4
  %3 = alloca i32, align 4
  %oldBuffer = alloca %struct.b2Pair*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %2, align 4
  store i32 %proxyId, i32* %3, align 4
  %4 = load %class.b2BroadPhase** %2
  %5 = load i32* %3, align 4
  %6 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 8
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i1 true, i1* %1
  br label %62

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  %12 = load i32* %11, align 4
  %13 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 6
  %14 = load i32* %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %38

; <label>:16                                      ; preds = %10
  %17 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  %18 = load %struct.b2Pair** %17, align 4
  store %struct.b2Pair* %18, %struct.b2Pair** %oldBuffer, align 4
  %19 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 6
  %20 = load i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 6
  %23 = load i32* %22, align 4
  %24 = mul i32 %23, 12
  %25 = call i8* @_Z7b2Alloci(i32 %24)
  %26 = bitcast i8* %25 to %struct.b2Pair*
  %27 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  store %struct.b2Pair* %26, %struct.b2Pair** %27, align 4
  %28 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  %29 = load %struct.b2Pair** %28, align 4
  %30 = bitcast %struct.b2Pair* %29 to i8*
  %31 = load %struct.b2Pair** %oldBuffer, align 4
  %32 = bitcast %struct.b2Pair* %31 to i8*
  %33 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  %34 = load i32* %33, align 4
  %35 = mul i32 %34, 12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %32, i32 %35, i32 1, i1 false)
  %36 = load %struct.b2Pair** %oldBuffer, align 4
  %37 = bitcast %struct.b2Pair* %36 to i8*
  call void @_Z6b2FreePv(i8* %37)
  br label %38

; <label>:38                                      ; preds = %16, %10
  %39 = load i32* %3, align 4
  %40 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 8
  %41 = load i32* %40, align 4
  %42 = call i32 @_Z5b2MinIiET_S0_S0_(i32 %39, i32 %41)
  %43 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  %44 = load i32* %43, align 4
  %45 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  %46 = load %struct.b2Pair** %45, align 4
  %47 = getelementptr inbounds %struct.b2Pair* %46, i32 %44
  %48 = getelementptr inbounds %struct.b2Pair* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  %49 = load i32* %3, align 4
  %50 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 8
  %51 = load i32* %50, align 4
  %52 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %49, i32 %51)
  %53 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  %54 = load i32* %53, align 4
  %55 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 5
  %56 = load %struct.b2Pair** %55, align 4
  %57 = getelementptr inbounds %struct.b2Pair* %56, i32 %54
  %58 = getelementptr inbounds %struct.b2Pair* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  %59 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 7
  %60 = load i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i1 true, i1* %1
  br label %62

; <label>:62                                      ; preds = %38, %9
  %63 = load i1* %1
  ret i1 %63
}

define linkonce_odr i32 @_Z5b2MinIiET_S0_S0_(i32 %a, i32 %b) nounwind inlinehint {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  %6 = load i32* %1, align 4
  %7 = load i32* %2, align 4
  %8 = select i1 %5, i32 %6, i32 %7
  ret i32 %8
}

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
