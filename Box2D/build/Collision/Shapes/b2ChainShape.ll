; ModuleID = 'Collision/Shapes/b2ChainShape.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2ChainShape = type { %class.b2Shape, %struct.b2Vec2*, i32, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2Vec2 = type { float, float }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2RayCastOutput = type { %struct.b2Vec2, float }
%struct.b2RayCastInput = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2MassData = type { float, %struct.b2Vec2, float }

@_ZTV12b2ChainShape = unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12b2ChainShape to i8*), i8* bitcast (void (%class.b2ChainShape*)* @_ZN12b2ChainShapeD1Ev to i8*), i8* bitcast (void (%class.b2ChainShape*)* @_ZN12b2ChainShapeD0Ev to i8*), i8* bitcast (%class.b2Shape* (%class.b2ChainShape*, %class.b2BlockAllocator*)* @_ZNK12b2ChainShape5CloneEP16b2BlockAllocator to i8*), i8* bitcast (i32 (%class.b2ChainShape*)* @_ZNK12b2ChainShape13GetChildCountEv to i8*), i8* bitcast (i1 (%class.b2ChainShape*, %struct.b2Transform*, %struct.b2Vec2*)* @_ZNK12b2ChainShape9TestPointERK11b2TransformRK6b2Vec2 to i8*), i8* bitcast (i1 (%class.b2ChainShape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)* @_ZNK12b2ChainShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi to i8*), i8* bitcast (void (%class.b2ChainShape*, %struct.b2AABB*, %struct.b2Transform*, i32)* @_ZNK12b2ChainShape11ComputeAABBEP6b2AABBRK11b2Transformi to i8*), i8* bitcast (void (%class.b2ChainShape*, %struct.b2MassData*, float)* @_ZNK12b2ChainShape11ComputeMassEP10b2MassDataf to i8*)]
@.str = private unnamed_addr constant [37 x i8] c"m_vertices == __null && m_count == 0\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"Collision/Shapes/b2ChainShape.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN12b2ChainShape10CreateLoopEPK6b2Vec2i = private unnamed_addr constant [53 x i8] c"void b2ChainShape::CreateLoop(const b2Vec2 *, int32)\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"count >= 3\00", align 1
@__PRETTY_FUNCTION__._ZN12b2ChainShape11CreateChainEPK6b2Vec2i = private unnamed_addr constant [54 x i8] c"void b2ChainShape::CreateChain(const b2Vec2 *, int32)\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"count >= 2\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"0 <= index && index < m_count - 1\00", align 1
@__PRETTY_FUNCTION__._ZNK12b2ChainShape12GetChildEdgeEP11b2EdgeShapei = private unnamed_addr constant [60 x i8] c"void b2ChainShape::GetChildEdge(b2EdgeShape *, int32) const\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"childIndex < m_count\00", align 1
@__PRETTY_FUNCTION__._ZNK12b2ChainShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi = private unnamed_addr constant [112 x i8] c"virtual bool b2ChainShape::RayCast(b2RayCastOutput *, const b2RayCastInput &, const b2Transform &, int32) const\00", align 1
@__PRETTY_FUNCTION__._ZNK12b2ChainShape11ComputeAABBEP6b2AABBRK11b2Transformi = private unnamed_addr constant [83 x i8] c"virtual void b2ChainShape::ComputeAABB(b2AABB *, const b2Transform &, int32) const\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS12b2ChainShape = constant [15 x i8] c"12b2ChainShape\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Shape = linkonce_odr constant [9 x i8] c"7b2Shape\00"
@_ZTI7b2Shape = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Shape, i32 0, i32 0) }
@_ZTI12b2ChainShape = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8]* @_ZTS12b2ChainShape, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*) }
@_ZTV11b2EdgeShape = external unnamed_addr constant [10 x i8*]
@_ZTV7b2Shape = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD1Ev to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]

@_ZN12b2ChainShapeD1Ev = alias void (%class.b2ChainShape*)* @_ZN12b2ChainShapeD2Ev

define void @_ZN12b2ChainShapeD0Ev(%class.b2ChainShape* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  %4 = load %class.b2ChainShape** %1
  invoke void @_ZN12b2ChainShapeD1Ev(%class.b2ChainShape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2ChainShape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2ChainShape* %4 to i8*
  call void @_ZdlPv(i8* %11) nounwind
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8** %2
  %14 = load i8** %2
  %15 = load i32* %3
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZdlPv(i8*) nounwind

define void @_ZN12b2ChainShapeD2Ev(%class.b2ChainShape* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = bitcast %class.b2ChainShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV12b2ChainShape, i64 0, i64 2), i8*** %5
  %6 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %7 = load %struct.b2Vec2** %6, align 4
  %8 = bitcast %struct.b2Vec2* %7 to i8*
  invoke void @_Z6b2FreePv(i8* %8)
          to label %9 unwind label %13

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  store %struct.b2Vec2* null, %struct.b2Vec2** %10, align 4
  %11 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %12)
  ret void

; <label>:13                                      ; preds = %0
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %2
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %3
  %17 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %17)
          to label %18 unwind label %25

; <label>:18                                      ; preds = %13
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load i8** %2
  %21 = load i8** %2
  %22 = load i32* %3
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

; <label>:25                                      ; preds = %13
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_Z6b2FreePv(i8*)

define linkonce_odr void @_ZN7b2ShapeD2Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN12b2ChainShape10CreateLoopEPK6b2Vec2i(%class.b2ChainShape* %this, %struct.b2Vec2* %vertices, i32 %count) align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca i32, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2Vec2* %vertices, %struct.b2Vec2** %2, align 4
  store i32 %count, i32* %3, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %6 = load %struct.b2Vec2** %5, align 4
  %7 = icmp eq %struct.b2Vec2* %6, null
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  br label %15

; <label>:13                                      ; preds = %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([53 x i8]* @__PRETTY_FUNCTION__._ZN12b2ChainShape10CreateLoopEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i32* %3, align 4
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  br label %21

; <label>:19                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([53 x i8]* @__PRETTY_FUNCTION__._ZN12b2ChainShape10CreateLoopEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %26 = load i32* %25, align 4
  %27 = mul i32 %26, 8
  %28 = call i8* @_Z7b2Alloci(i32 %27)
  %29 = bitcast i8* %28 to %struct.b2Vec2*
  %30 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  store %struct.b2Vec2* %29, %struct.b2Vec2** %30, align 4
  %31 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %32 = load %struct.b2Vec2** %31, align 4
  %33 = bitcast %struct.b2Vec2* %32 to i8*
  %34 = load %struct.b2Vec2** %2, align 4
  %35 = bitcast %struct.b2Vec2* %34 to i8*
  %36 = load i32* %3, align 4
  %37 = mul i32 %36, 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %35, i32 %37, i32 1, i1 false)
  %38 = load i32* %3, align 4
  %39 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %40 = load %struct.b2Vec2** %39, align 4
  %41 = getelementptr inbounds %struct.b2Vec2* %40, i32 %38
  %42 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %43 = load %struct.b2Vec2** %42, align 4
  %44 = getelementptr inbounds %struct.b2Vec2* %43, i32 0
  %45 = bitcast %struct.b2Vec2* %41 to i8*
  %46 = bitcast %struct.b2Vec2* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 8, i32 4, i1 false)
  %47 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 3
  %48 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %49 = load i32* %48, align 4
  %50 = sub nsw i32 %49, 2
  %51 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %52 = load %struct.b2Vec2** %51, align 4
  %53 = getelementptr inbounds %struct.b2Vec2* %52, i32 %50
  %54 = bitcast %struct.b2Vec2* %47 to i8*
  %55 = bitcast %struct.b2Vec2* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %55, i32 8, i32 4, i1 false)
  %56 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 4
  %57 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %58 = load %struct.b2Vec2** %57, align 4
  %59 = getelementptr inbounds %struct.b2Vec2* %58, i32 1
  %60 = bitcast %struct.b2Vec2* %56 to i8*
  %61 = bitcast %struct.b2Vec2* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 5
  store i8 1, i8* %62, align 1
  %63 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 6
  store i8 1, i8* %63, align 1
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i8* @_Z7b2Alloci(i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @_ZN12b2ChainShape11CreateChainEPK6b2Vec2i(%class.b2ChainShape* %this, %struct.b2Vec2* %vertices, i32 %count) align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca i32, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2Vec2* %vertices, %struct.b2Vec2** %2, align 4
  store i32 %count, i32* %3, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %6 = load %struct.b2Vec2** %5, align 4
  %7 = icmp eq %struct.b2Vec2* %6, null
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  br label %15

; <label>:13                                      ; preds = %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__._ZN12b2ChainShape11CreateChainEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i32* %3, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  br label %21

; <label>:19                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__._ZN12b2ChainShape11CreateChainEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load i32* %3, align 4
  %23 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = mul i32 %24, 8
  %26 = call i8* @_Z7b2Alloci(i32 %25)
  %27 = bitcast i8* %26 to %struct.b2Vec2*
  %28 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  store %struct.b2Vec2* %27, %struct.b2Vec2** %28, align 4
  %29 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %30 = load %struct.b2Vec2** %29, align 4
  %31 = bitcast %struct.b2Vec2* %30 to i8*
  %32 = load %struct.b2Vec2** %2, align 4
  %33 = bitcast %struct.b2Vec2* %32 to i8*
  %34 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %35 = load i32* %34, align 4
  %36 = mul i32 %35, 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %33, i32 %36, i32 1, i1 false)
  %37 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 6
  store i8 0, i8* %38, align 1
  ret void
}

define void @_ZN12b2ChainShape13SetPrevVertexERK6b2Vec2(%class.b2ChainShape* %this, %struct.b2Vec2* %prevVertex) nounwind align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2Vec2* %prevVertex, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2ChainShape** %1
  %4 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 3
  %5 = load %struct.b2Vec2** %2
  %6 = bitcast %struct.b2Vec2* %4 to i8*
  %7 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %8 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 5
  store i8 1, i8* %8, align 1
  ret void
}

define void @_ZN12b2ChainShape13SetNextVertexERK6b2Vec2(%class.b2ChainShape* %this, %struct.b2Vec2* %nextVertex) nounwind align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2Vec2* %nextVertex, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2ChainShape** %1
  %4 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 4
  %5 = load %struct.b2Vec2** %2
  %6 = bitcast %struct.b2Vec2* %4 to i8*
  %7 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %8 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 6
  store i8 1, i8* %8, align 1
  ret void
}

define %class.b2Shape* @_ZNK12b2ChainShape5CloneEP16b2BlockAllocator(%class.b2ChainShape* %this, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  %clone = alloca %class.b2ChainShape*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2ChainShape** %1
  %4 = load %class.b2BlockAllocator** %2, align 4
  %5 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %4, i32 40)
  store i8* %5, i8** %mem, align 4
  %6 = load i8** %mem, align 4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %class.b2ChainShape*
  call void @_ZN12b2ChainShapeC1Ev(%class.b2ChainShape* %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = phi %class.b2ChainShape* [ %9, %8 ], [ null, %0 ]
  store %class.b2ChainShape* %11, %class.b2ChainShape** %clone, align 4
  %12 = load %class.b2ChainShape** %clone, align 4
  %13 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 1
  %14 = load %struct.b2Vec2** %13, align 4
  %15 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 2
  %16 = load i32* %15, align 4
  call void @_ZN12b2ChainShape11CreateChainEPK6b2Vec2i(%class.b2ChainShape* %12, %struct.b2Vec2* %14, i32 %16)
  %17 = load %class.b2ChainShape** %clone, align 4
  %18 = getelementptr inbounds %class.b2ChainShape* %17, i32 0, i32 3
  %19 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 3
  %20 = bitcast %struct.b2Vec2* %18 to i8*
  %21 = bitcast %struct.b2Vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = load %class.b2ChainShape** %clone, align 4
  %23 = getelementptr inbounds %class.b2ChainShape* %22, i32 0, i32 4
  %24 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 4
  %25 = bitcast %struct.b2Vec2* %23 to i8*
  %26 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 4, i1 false)
  %27 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 5
  %28 = load i8* %27, align 1
  %29 = trunc i8 %28 to i1
  %30 = load %class.b2ChainShape** %clone, align 4
  %31 = getelementptr inbounds %class.b2ChainShape* %30, i32 0, i32 5
  %32 = zext i1 %29 to i8
  store i8 %32, i8* %31, align 1
  %33 = getelementptr inbounds %class.b2ChainShape* %3, i32 0, i32 6
  %34 = load i8* %33, align 1
  %35 = trunc i8 %34 to i1
  %36 = load %class.b2ChainShape** %clone, align 4
  %37 = getelementptr inbounds %class.b2ChainShape* %36, i32 0, i32 6
  %38 = zext i1 %35 to i8
  store i8 %38, i8* %37, align 1
  %39 = load %class.b2ChainShape** %clone, align 4
  %40 = bitcast %class.b2ChainShape* %39 to %class.b2Shape*
  ret %class.b2Shape* %40
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define linkonce_odr void @_ZN12b2ChainShapeC1Ev(%class.b2ChainShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  %2 = load %class.b2ChainShape** %1
  call void @_ZN12b2ChainShapeC2Ev(%class.b2ChainShape* %2)
  ret void
}

define i32 @_ZNK12b2ChainShape13GetChildCountEv(%class.b2ChainShape* %this) nounwind align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  %2 = load %class.b2ChainShape** %1
  %3 = getelementptr inbounds %class.b2ChainShape* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = sub nsw i32 %4, 1
  ret i32 %5
}

define void @_ZNK12b2ChainShape12GetChildEdgeEP11b2EdgeShapei(%class.b2ChainShape* %this, %class.b2EdgeShape* %edge, i32 %index) nounwind align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %class.b2EdgeShape*, align 4
  %3 = alloca i32, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %class.b2EdgeShape* %edge, %class.b2EdgeShape** %2, align 4
  store i32 %index, i32* %3, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = load i32* %3, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4
  %9 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %16

; <label>:14                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 89, i8* getelementptr inbounds ([60 x i8]* @__PRETTY_FUNCTION__._ZNK12b2ChainShape12GetChildEdgeEP11b2EdgeShapei, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load %class.b2EdgeShape** %2, align 4
  %18 = bitcast %class.b2EdgeShape* %17 to %class.b2Shape*
  %19 = getelementptr inbounds %class.b2Shape* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  %21 = getelementptr inbounds %class.b2Shape* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = load %class.b2EdgeShape** %2, align 4
  %24 = bitcast %class.b2EdgeShape* %23 to %class.b2Shape*
  %25 = getelementptr inbounds %class.b2Shape* %24, i32 0, i32 2
  store float %22, float* %25, align 4
  %26 = load %class.b2EdgeShape** %2, align 4
  %27 = getelementptr inbounds %class.b2EdgeShape* %26, i32 0, i32 1
  %28 = load i32* %3, align 4
  %29 = add nsw i32 %28, 0
  %30 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %31 = load %struct.b2Vec2** %30, align 4
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 %29
  %33 = bitcast %struct.b2Vec2* %27 to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = load %class.b2EdgeShape** %2, align 4
  %36 = getelementptr inbounds %class.b2EdgeShape* %35, i32 0, i32 2
  %37 = load i32* %3, align 4
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %40 = load %struct.b2Vec2** %39, align 4
  %41 = getelementptr inbounds %struct.b2Vec2* %40, i32 %38
  %42 = bitcast %struct.b2Vec2* %36 to i8*
  %43 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = load i32* %3, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %58

; <label>:46                                      ; preds = %16
  %47 = load %class.b2EdgeShape** %2, align 4
  %48 = getelementptr inbounds %class.b2EdgeShape* %47, i32 0, i32 3
  %49 = load i32* %3, align 4
  %50 = sub nsw i32 %49, 1
  %51 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %52 = load %struct.b2Vec2** %51, align 4
  %53 = getelementptr inbounds %struct.b2Vec2* %52, i32 %50
  %54 = bitcast %struct.b2Vec2* %48 to i8*
  %55 = bitcast %struct.b2Vec2* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %55, i32 8, i32 4, i1 false)
  %56 = load %class.b2EdgeShape** %2, align 4
  %57 = getelementptr inbounds %class.b2EdgeShape* %56, i32 0, i32 5
  store i8 1, i8* %57, align 1
  br label %70

; <label>:58                                      ; preds = %16
  %59 = load %class.b2EdgeShape** %2, align 4
  %60 = getelementptr inbounds %class.b2EdgeShape* %59, i32 0, i32 3
  %61 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 3
  %62 = bitcast %struct.b2Vec2* %60 to i8*
  %63 = bitcast %struct.b2Vec2* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 8, i32 4, i1 false)
  %64 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 5
  %65 = load i8* %64, align 1
  %66 = trunc i8 %65 to i1
  %67 = load %class.b2EdgeShape** %2, align 4
  %68 = getelementptr inbounds %class.b2EdgeShape* %67, i32 0, i32 5
  %69 = zext i1 %66 to i8
  store i8 %69, i8* %68, align 1
  br label %70

; <label>:70                                      ; preds = %58, %46
  %71 = load i32* %3, align 4
  %72 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  %73 = load i32* %72, align 4
  %74 = sub nsw i32 %73, 2
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %88

; <label>:76                                      ; preds = %70
  %77 = load %class.b2EdgeShape** %2, align 4
  %78 = getelementptr inbounds %class.b2EdgeShape* %77, i32 0, i32 4
  %79 = load i32* %3, align 4
  %80 = add nsw i32 %79, 2
  %81 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  %82 = load %struct.b2Vec2** %81, align 4
  %83 = getelementptr inbounds %struct.b2Vec2* %82, i32 %80
  %84 = bitcast %struct.b2Vec2* %78 to i8*
  %85 = bitcast %struct.b2Vec2* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %85, i32 8, i32 4, i1 false)
  %86 = load %class.b2EdgeShape** %2, align 4
  %87 = getelementptr inbounds %class.b2EdgeShape* %86, i32 0, i32 6
  store i8 1, i8* %87, align 1
  br label %100

; <label>:88                                      ; preds = %70
  %89 = load %class.b2EdgeShape** %2, align 4
  %90 = getelementptr inbounds %class.b2EdgeShape* %89, i32 0, i32 4
  %91 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 4
  %92 = bitcast %struct.b2Vec2* %90 to i8*
  %93 = bitcast %struct.b2Vec2* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %93, i32 8, i32 4, i1 false)
  %94 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 6
  %95 = load i8* %94, align 1
  %96 = trunc i8 %95 to i1
  %97 = load %class.b2EdgeShape** %2, align 4
  %98 = getelementptr inbounds %class.b2EdgeShape* %97, i32 0, i32 6
  %99 = zext i1 %96 to i8
  store i8 %99, i8* %98, align 1
  br label %100

; <label>:100                                     ; preds = %88, %76
  ret void
}

define zeroext i1 @_ZNK12b2ChainShape9TestPointERK11b2TransformRK6b2Vec2(%class.b2ChainShape* %this, %struct.b2Transform* %xf, %struct.b2Vec2* %p) nounwind align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %2, align 4
  store %struct.b2Vec2* %p, %struct.b2Vec2** %3, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = load %struct.b2Transform** %2
  %6 = load %struct.b2Vec2** %3
  ret i1 false
}

define zeroext i1 @_ZNK12b2ChainShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2ChainShape* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2ChainShape*, align 4
  %3 = alloca %struct.b2RayCastOutput*, align 4
  %4 = alloca %struct.b2RayCastInput*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca i32, align 4
  %edgeShape = alloca %class.b2EdgeShape, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca i32
  store %class.b2ChainShape* %this, %class.b2ChainShape** %2, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %3, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %4, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %5, align 4
  store i32 %childIndex, i32* %6, align 4
  %10 = load %class.b2ChainShape** %2
  %11 = load i32* %6, align 4
  %12 = getelementptr inbounds %class.b2ChainShape* %10, i32 0, i32 2
  %13 = load i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 129, i8* getelementptr inbounds ([112 x i8]* @__PRETTY_FUNCTION__._ZNK12b2ChainShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  call void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %edgeShape)
  %19 = load i32* %6, align 4
  store i32 %19, i32* %i1, align 4
  %20 = load i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i2, align 4
  %22 = load i32* %i2, align 4
  %23 = getelementptr inbounds %class.b2ChainShape* %10, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %18
  store i32 0, i32* %i2, align 4
  br label %27

; <label>:27                                      ; preds = %26, %18
  %28 = getelementptr inbounds %class.b2EdgeShape* %edgeShape, i32 0, i32 1
  %29 = load i32* %i1, align 4
  %30 = getelementptr inbounds %class.b2ChainShape* %10, i32 0, i32 1
  %31 = load %struct.b2Vec2** %30, align 4
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 %29
  %33 = bitcast %struct.b2Vec2* %28 to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = getelementptr inbounds %class.b2EdgeShape* %edgeShape, i32 0, i32 2
  %36 = load i32* %i2, align 4
  %37 = getelementptr inbounds %class.b2ChainShape* %10, i32 0, i32 1
  %38 = load %struct.b2Vec2** %37, align 4
  %39 = getelementptr inbounds %struct.b2Vec2* %38, i32 %36
  %40 = bitcast %struct.b2Vec2* %35 to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = load %struct.b2RayCastOutput** %3, align 4
  %43 = load %struct.b2RayCastInput** %4
  %44 = load %struct.b2Transform** %5
  %45 = invoke zeroext i1 @_ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2EdgeShape* %edgeShape, %struct.b2RayCastOutput* %42, %struct.b2RayCastInput* %43, %struct.b2Transform* %44, i32 0)
          to label %46 unwind label %48

; <label>:46                                      ; preds = %27
  store i1 %45, i1* %1
  store i32 1, i32* %9
  call void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %edgeShape)
  %47 = load i1* %1
  ret i1 %47

; <label>:48                                      ; preds = %27
  %49 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %7
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %8
  invoke void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %edgeShape)
          to label %52 unwind label %59

; <label>:52                                      ; preds = %48
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i8** %7
  %55 = load i8** %7
  %56 = load i32* %8
  %57 = insertvalue { i8*, i32 } undef, i8* %55, 0
  %58 = insertvalue { i8*, i32 } %57, i32 %56, 1
  resume { i8*, i32 } %58

; <label>:59                                      ; preds = %48
  %60 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

define linkonce_odr void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeC2Ev(%class.b2EdgeShape* %2)
  ret void
}

declare zeroext i1 @_ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2EdgeShape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)

define linkonce_odr void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %2)
  ret void
}

define void @_ZNK12b2ChainShape11ComputeAABBEP6b2AABBRK11b2Transformi(%class.b2ChainShape* %this, %struct.b2AABB* %aabb, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  store i32 %childIndex, i32* %4, align 4
  %7 = load %class.b2ChainShape** %1
  %8 = load i32* %4, align 4
  %9 = getelementptr inbounds %class.b2ChainShape* %7, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 148, i8* getelementptr inbounds ([83 x i8]* @__PRETTY_FUNCTION__._ZNK12b2ChainShape11ComputeAABBEP6b2AABBRK11b2Transformi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i32* %4, align 4
  store i32 %16, i32* %i1, align 4
  %17 = load i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i2, align 4
  %19 = load i32* %i2, align 4
  %20 = getelementptr inbounds %class.b2ChainShape* %7, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  store i32 0, i32* %i2, align 4
  br label %24

; <label>:24                                      ; preds = %23, %15
  %25 = load %struct.b2Transform** %3
  %26 = load i32* %i1, align 4
  %27 = getelementptr inbounds %class.b2ChainShape* %7, i32 0, i32 1
  %28 = load %struct.b2Vec2** %27, align 4
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 %26
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v1, %struct.b2Transform* %25, %struct.b2Vec2* %29)
  %30 = load %struct.b2Transform** %3
  %31 = load i32* %i2, align 4
  %32 = getelementptr inbounds %class.b2ChainShape* %7, i32 0, i32 1
  %33 = load %struct.b2Vec2** %32, align 4
  %34 = getelementptr inbounds %struct.b2Vec2* %33, i32 %31
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v2, %struct.b2Transform* %30, %struct.b2Vec2* %34)
  %35 = load %struct.b2AABB** %2, align 4
  %36 = getelementptr inbounds %struct.b2AABB* %35, i32 0, i32 0
  call void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  %37 = bitcast %struct.b2Vec2* %36 to i8*
  %38 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 8, i32 4, i1 false)
  %39 = load %struct.b2AABB** %2, align 4
  %40 = getelementptr inbounds %struct.b2AABB* %39, i32 0, i32 1
  call void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  %41 = bitcast %struct.b2Vec2* %40 to i8*
  %42 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 8, i32 4, i1 false)
  ret void
}

define linkonce_odr void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Transform* %T, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Transform*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store %struct.b2Transform* %T, %struct.b2Transform** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Transform** %1
  %4 = getelementptr inbounds %struct.b2Transform* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.b2Rot* %4, i32 0, i32 1
  %6 = load float* %5, align 4
  %7 = load %struct.b2Vec2** %2
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %6, %9
  %11 = load %struct.b2Transform** %1
  %12 = getelementptr inbounds %struct.b2Transform* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Rot* %12, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = load %struct.b2Vec2** %2
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fsub float %10, %18
  %20 = load %struct.b2Transform** %1
  %21 = getelementptr inbounds %struct.b2Transform* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = fadd float %19, %23
  store float %24, float* %x, align 4
  %25 = load %struct.b2Transform** %1
  %26 = getelementptr inbounds %struct.b2Transform* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.b2Rot* %26, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = load %struct.b2Vec2** %2
  %30 = getelementptr inbounds %struct.b2Vec2* %29, i32 0, i32 0
  %31 = load float* %30, align 4
  %32 = fmul float %28, %31
  %33 = load %struct.b2Transform** %1
  %34 = getelementptr inbounds %struct.b2Transform* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.b2Rot* %34, i32 0, i32 1
  %36 = load float* %35, align 4
  %37 = load %struct.b2Vec2** %2
  %38 = getelementptr inbounds %struct.b2Vec2* %37, i32 0, i32 1
  %39 = load float* %38, align 4
  %40 = fmul float %36, %39
  %41 = fadd float %32, %40
  %42 = load %struct.b2Transform** %1
  %43 = getelementptr inbounds %struct.b2Transform* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2Vec2* %43, i32 0, i32 1
  %45 = load float* %44, align 4
  %46 = fadd float %41, %45
  store float %46, float* %y, align 4
  %47 = load float* %x, align 4
  %48 = load float* %y, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %47, float %48)
  ret void
}

define linkonce_odr void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec2** %2
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = call float @_Z5b2MinIfET_S0_S0_(float %5, float %8)
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = call float @_Z5b2MinIfET_S0_S0_(float %12, float %15)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define linkonce_odr void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec2** %2
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = call float @_Z5b2MaxIfET_S0_S0_(float %5, float %8)
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = call float @_Z5b2MaxIfET_S0_S0_(float %12, float %15)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define void @_ZNK12b2ChainShape11ComputeMassEP10b2MassDataf(%class.b2ChainShape* %this, %struct.b2MassData* %massData, float %density) align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  %3 = alloca float, align 4
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  store float %density, float* %3, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = load %struct.b2MassData** %2, align 4
  %6 = getelementptr inbounds %struct.b2MassData* %5, i32 0, i32 0
  store float 0.000000e+00, float* %6, align 4
  %7 = load %struct.b2MassData** %2, align 4
  %8 = getelementptr inbounds %struct.b2MassData* %7, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %8)
  %9 = load %struct.b2MassData** %2, align 4
  %10 = getelementptr inbounds %struct.b2MassData* %9, i32 0, i32 2
  store float 0.000000e+00, float* %10, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %this) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  store float 0.000000e+00, float* %3, align 4
  %4 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  store float 0.000000e+00, float* %4, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %this, float %x, float %y) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store float %x, float* %2, align 4
  store float %y, float* %3, align 4
  %4 = load %struct.b2Vec2** %1
  %5 = load float* %2, align 4
  %6 = load float* %3, align 4
  call void @_ZN6b2Vec2C2Eff(%struct.b2Vec2* %4, float %5, float %6)
  ret void
}

define linkonce_odr float @_Z5b2MaxIfET_S0_S0_(float %a, float %b) nounwind inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %a, float* %1, align 4
  store float %b, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = load float* %2, align 4
  %5 = fcmp ogt float %3, %4
  %6 = load float* %1, align 4
  %7 = load float* %2, align 4
  %8 = select i1 %5, float %6, float %7
  ret float %8
}

define linkonce_odr void @_ZN6b2Vec2C2Eff(%struct.b2Vec2* %this, float %x, float %y) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store float %x, float* %2, align 4
  store float %y, float* %3, align 4
  %4 = load %struct.b2Vec2** %1
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %2, align 4
  store float %6, float* %5, align 4
  %7 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 1
  %8 = load float* %3, align 4
  store float %8, float* %7, align 4
  ret void
}

define linkonce_odr float @_Z5b2MinIfET_S0_S0_(float %a, float %b) nounwind inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %a, float* %1, align 4
  store float %b, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = load float* %2, align 4
  %5 = fcmp olt float %3, %4
  %6 = load float* %1, align 4
  %7 = load float* %2, align 4
  %8 = select i1 %5, float %6, float %7
  ret float %8
}

define linkonce_odr void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  %3 = bitcast %class.b2EdgeShape* %2 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %3)
  ret void
}

define linkonce_odr void @_ZN11b2EdgeShapeC2Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %4 = load %class.b2EdgeShape** %1
  %5 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeC2Ev(%class.b2Shape* %5) nounwind
  %6 = bitcast %class.b2EdgeShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV11b2EdgeShape, i64 0, i64 2), i8*** %6
  %7 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
          to label %8 unwind label %29

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %9)
          to label %10 unwind label %29

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %29

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %29

; <label>:14                                      ; preds = %12
  %15 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  %16 = getelementptr inbounds %class.b2Shape* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  %18 = getelementptr inbounds %class.b2Shape* %17, i32 0, i32 2
  store float 0x3F847AE140000000, float* %18, align 4
  %19 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.b2Vec2* %19, i32 0, i32 0
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 1
  store float 0.000000e+00, float* %22, align 4
  %23 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  %24 = getelementptr inbounds %struct.b2Vec2* %23, i32 0, i32 0
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  %26 = getelementptr inbounds %struct.b2Vec2* %25, i32 0, i32 1
  store float 0.000000e+00, float* %26, align 4
  %27 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 6
  store i8 0, i8* %28, align 1
  ret void

; <label>:29                                      ; preds = %12, %10, %8, %0
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %2
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %3
  %33 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %33)
          to label %34 unwind label %41

; <label>:34                                      ; preds = %29
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i8** %2
  %37 = load i8** %2
  %38 = load i32* %3
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41                                      ; preds = %29
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

define linkonce_odr void @_ZN7b2ShapeC2Ev(%class.b2Shape* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = bitcast %class.b2Shape* %2 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV7b2Shape, i64 0, i64 2), i8*** %3
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD1Ev(%class.b2Shape* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %2)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD0Ev(%class.b2Shape* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Shape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %4 = load %class.b2Shape** %1
  invoke void @_ZN7b2ShapeD1Ev(%class.b2Shape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2Shape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2Shape* %4 to i8*
  call void @_ZdlPv(i8* %11) nounwind
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8** %2
  %14 = load i8** %2
  %15 = load i32* %3
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

declare void @__cxa_pure_virtual()

define linkonce_odr void @_ZN12b2ChainShapeC2Ev(%class.b2ChainShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2ChainShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ChainShape* %this, %class.b2ChainShape** %1, align 4
  %4 = load %class.b2ChainShape** %1
  %5 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeC2Ev(%class.b2Shape* %5) nounwind
  %6 = bitcast %class.b2ChainShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV12b2ChainShape, i64 0, i64 2), i8*** %6
  %7 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
          to label %8 unwind label %19

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %9)
          to label %10 unwind label %19

; <label>:10                                      ; preds = %8
  %11 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  %12 = getelementptr inbounds %class.b2Shape* %11, i32 0, i32 1
  store i32 3, i32* %12, align 4
  %13 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  %14 = getelementptr inbounds %class.b2Shape* %13, i32 0, i32 2
  store float 0x3F847AE140000000, float* %14, align 4
  %15 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 1
  store %struct.b2Vec2* null, %struct.b2Vec2** %15, align 4
  %16 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %class.b2ChainShape* %4, i32 0, i32 6
  store i8 0, i8* %18, align 1
  ret void

; <label>:19                                      ; preds = %8, %0
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %2
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %3
  %23 = bitcast %class.b2ChainShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %23)
          to label %24 unwind label %31

; <label>:24                                      ; preds = %19
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8** %2
  %27 = load i8** %2
  %28 = load i32* %3
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

; <label>:31                                      ; preds = %19
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}
