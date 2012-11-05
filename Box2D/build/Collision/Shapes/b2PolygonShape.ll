; ModuleID = 'Collision/Shapes/b2PolygonShape.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Shape = type { i32 (...)**, i32, float }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%struct.b2Vec2 = type { float, float }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2RayCastOutput = type { %struct.b2Vec2, float }
%struct.b2RayCastInput = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2MassData = type { float, %struct.b2Vec2, float }

@.str = private unnamed_addr constant [25 x i8] c"3 <= count && count <= 8\00", align 1
@.str1 = private unnamed_addr constant [36 x i8] c"Collision/Shapes/b2PolygonShape.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN14b2PolygonShape3SetEPK6b2Vec2i = private unnamed_addr constant [48 x i8] c"void b2PolygonShape::Set(const b2Vec2 *, int32)\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"edge.LengthSquared() > 1.19209290e-7F * 1.19209290e-7F\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"0.0f <= lower && lower <= input.maxFraction\00", align 1
@__PRETTY_FUNCTION__._ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi = private unnamed_addr constant [114 x i8] c"virtual bool b2PolygonShape::RayCast(b2RayCastOutput *, const b2RayCastInput &, const b2Transform &, int32) const\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"m_vertexCount >= 3\00", align 1
@__PRETTY_FUNCTION__._ZNK14b2PolygonShape11ComputeMassEP10b2MassDataf = private unnamed_addr constant [70 x i8] c"virtual void b2PolygonShape::ComputeMass(b2MassData *, float32) const\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"area > 1.19209290e-7F\00", align 1
@_ZTV14b2PolygonShape = unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14b2PolygonShape to i8*), i8* bitcast (void (%class.b2PolygonShape*)* @_ZN14b2PolygonShapeD1Ev to i8*), i8* bitcast (void (%class.b2PolygonShape*)* @_ZN14b2PolygonShapeD0Ev to i8*), i8* bitcast (%class.b2Shape* (%class.b2PolygonShape*, %class.b2BlockAllocator*)* @_ZNK14b2PolygonShape5CloneEP16b2BlockAllocator to i8*), i8* bitcast (i32 (%class.b2PolygonShape*)* @_ZNK14b2PolygonShape13GetChildCountEv to i8*), i8* bitcast (i1 (%class.b2PolygonShape*, %struct.b2Transform*, %struct.b2Vec2*)* @_ZNK14b2PolygonShape9TestPointERK11b2TransformRK6b2Vec2 to i8*), i8* bitcast (i1 (%class.b2PolygonShape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)* @_ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi to i8*), i8* bitcast (void (%class.b2PolygonShape*, %struct.b2AABB*, %struct.b2Transform*, i32)* @_ZNK14b2PolygonShape11ComputeAABBEP6b2AABBRK11b2Transformi to i8*), i8* bitcast (void (%class.b2PolygonShape*, %struct.b2MassData*, float)* @_ZNK14b2PolygonShape11ComputeMassEP10b2MassDataf to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS14b2PolygonShape = constant [17 x i8] c"14b2PolygonShape\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Shape = linkonce_odr constant [9 x i8] c"7b2Shape\00"
@_ZTI7b2Shape = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Shape, i32 0, i32 0) }
@_ZTI14b2PolygonShape = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([17 x i8]* @_ZTS14b2PolygonShape, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*) }
@.str6 = private unnamed_addr constant [11 x i8] c"count >= 3\00", align 1
@__PRETTY_FUNCTION__._ZL15ComputeCentroidPK6b2Vec2i = private unnamed_addr constant [46 x i8] c"b2Vec2 ComputeCentroid(const b2Vec2 *, int32)\00", align 1
@_ZTV7b2Shape = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD1Ev to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]

define %class.b2Shape* @_ZNK14b2PolygonShape5CloneEP16b2BlockAllocator(%class.b2PolygonShape* %this, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  %clone = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2PolygonShape** %1
  %4 = load %class.b2BlockAllocator** %2, align 4
  %5 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %4, i32 152)
  store i8* %5, i8** %mem, align 4
  %6 = load i8** %mem, align 4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %class.b2PolygonShape*
  call void @_ZN14b2PolygonShapeC1Ev(%class.b2PolygonShape* %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = phi %class.b2PolygonShape* [ %9, %8 ], [ null, %0 ]
  store %class.b2PolygonShape* %11, %class.b2PolygonShape** %clone, align 4
  %12 = load %class.b2PolygonShape** %clone, align 4
  %13 = call %class.b2PolygonShape* @_ZN14b2PolygonShapeaSERKS_(%class.b2PolygonShape* %12, %class.b2PolygonShape* %3) nounwind
  %14 = load %class.b2PolygonShape** %clone, align 4
  %15 = bitcast %class.b2PolygonShape* %14 to %class.b2Shape*
  ret %class.b2Shape* %15
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define linkonce_odr void @_ZN14b2PolygonShapeC1Ev(%class.b2PolygonShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %2 = load %class.b2PolygonShape** %1
  call void @_ZN14b2PolygonShapeC2Ev(%class.b2PolygonShape* %2)
  ret void
}

define linkonce_odr %class.b2PolygonShape* @_ZN14b2PolygonShapeaSERKS_(%class.b2PolygonShape* %this, %class.b2PolygonShape*) nounwind inlinehint align 2 {
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %2, align 4
  store %class.b2PolygonShape* %0, %class.b2PolygonShape** %3, align 4
  %4 = load %class.b2PolygonShape** %2
  %5 = bitcast %class.b2PolygonShape* %4 to %class.b2Shape*
  %6 = load %class.b2PolygonShape** %3
  %7 = bitcast %class.b2PolygonShape* %6 to %class.b2Shape*
  %8 = call %class.b2Shape* @_ZN7b2ShapeaSERKS_(%class.b2Shape* %5, %class.b2Shape* %7) nounwind
  %9 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 1
  %10 = load %class.b2PolygonShape** %3
  %11 = getelementptr inbounds %class.b2PolygonShape* %10, i32 0, i32 1
  %12 = bitcast %struct.b2Vec2* %9 to i8*
  %13 = bitcast %struct.b2Vec2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  %14 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %15 = bitcast [8 x %struct.b2Vec2]* %14 to i8*
  %16 = load %class.b2PolygonShape** %3
  %17 = getelementptr inbounds %class.b2PolygonShape* %16, i32 0, i32 2
  %18 = bitcast [8 x %struct.b2Vec2]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %18, i32 64, i32 1, i1 false)
  %19 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %20 = bitcast [8 x %struct.b2Vec2]* %19 to i8*
  %21 = load %class.b2PolygonShape** %3
  %22 = getelementptr inbounds %class.b2PolygonShape* %21, i32 0, i32 3
  %23 = bitcast [8 x %struct.b2Vec2]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %23, i32 64, i32 1, i1 false)
  %24 = load %class.b2PolygonShape** %3
  %25 = getelementptr inbounds %class.b2PolygonShape* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  %27 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  ret %class.b2PolygonShape* %4
}

define void @_ZN14b2PolygonShape8SetAsBoxEff(%class.b2PolygonShape* %this, float %hx, float %hy) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store float %hx, float* %2, align 4
  store float %hy, float* %3, align 4
  %4 = load %class.b2PolygonShape** %1
  %5 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 4
  store i32 4, i32* %5, align 4
  %6 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %7 = getelementptr inbounds [8 x %struct.b2Vec2]* %6, i32 0, i32 0
  %8 = load float* %2, align 4
  %9 = fsub float -0.000000e+00, %8
  %10 = load float* %3, align 4
  %11 = fsub float -0.000000e+00, %10
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %7, float %9, float %11)
  %12 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %13 = getelementptr inbounds [8 x %struct.b2Vec2]* %12, i32 0, i32 1
  %14 = load float* %2, align 4
  %15 = load float* %3, align 4
  %16 = fsub float -0.000000e+00, %15
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %13, float %14, float %16)
  %17 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %18 = getelementptr inbounds [8 x %struct.b2Vec2]* %17, i32 0, i32 2
  %19 = load float* %2, align 4
  %20 = load float* %3, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %18, float %19, float %20)
  %21 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %22 = getelementptr inbounds [8 x %struct.b2Vec2]* %21, i32 0, i32 3
  %23 = load float* %2, align 4
  %24 = fsub float -0.000000e+00, %23
  %25 = load float* %3, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %22, float %24, float %25)
  %26 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %27 = getelementptr inbounds [8 x %struct.b2Vec2]* %26, i32 0, i32 0
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %27, float 0.000000e+00, float -1.000000e+00)
  %28 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %29 = getelementptr inbounds [8 x %struct.b2Vec2]* %28, i32 0, i32 1
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %29, float 1.000000e+00, float 0.000000e+00)
  %30 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %31 = getelementptr inbounds [8 x %struct.b2Vec2]* %30, i32 0, i32 2
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %31, float 0.000000e+00, float 1.000000e+00)
  %32 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %33 = getelementptr inbounds [8 x %struct.b2Vec2]* %32, i32 0, i32 3
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %33, float -1.000000e+00, float 0.000000e+00)
  %34 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %34)
  ret void
}

define linkonce_odr void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %this, float %x_, float %y_) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store float %x_, float* %2, align 4
  store float %y_, float* %3, align 4
  %4 = load %struct.b2Vec2** %1
  %5 = load float* %2, align 4
  %6 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  store float %5, float* %6, align 4
  %7 = load float* %3, align 4
  %8 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 1
  store float %7, float* %8, align 4
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

define void @_ZN14b2PolygonShape8SetAsBoxEffRK6b2Vec2f(%class.b2PolygonShape* %this, float %hx, float %hy, %struct.b2Vec2* %center, float %angle) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca float, align 4
  %xf = alloca %struct.b2Transform, align 4
  %i = alloca i32, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store float %hx, float* %2, align 4
  store float %hy, float* %3, align 4
  store %struct.b2Vec2* %center, %struct.b2Vec2** %4, align 4
  store float %angle, float* %5, align 4
  %8 = load %class.b2PolygonShape** %1
  %9 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 4
  store i32 4, i32* %9, align 4
  %10 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %11 = getelementptr inbounds [8 x %struct.b2Vec2]* %10, i32 0, i32 0
  %12 = load float* %2, align 4
  %13 = fsub float -0.000000e+00, %12
  %14 = load float* %3, align 4
  %15 = fsub float -0.000000e+00, %14
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %11, float %13, float %15)
  %16 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %17 = getelementptr inbounds [8 x %struct.b2Vec2]* %16, i32 0, i32 1
  %18 = load float* %2, align 4
  %19 = load float* %3, align 4
  %20 = fsub float -0.000000e+00, %19
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %17, float %18, float %20)
  %21 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %22 = getelementptr inbounds [8 x %struct.b2Vec2]* %21, i32 0, i32 2
  %23 = load float* %2, align 4
  %24 = load float* %3, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %22, float %23, float %24)
  %25 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %26 = getelementptr inbounds [8 x %struct.b2Vec2]* %25, i32 0, i32 3
  %27 = load float* %2, align 4
  %28 = fsub float -0.000000e+00, %27
  %29 = load float* %3, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %26, float %28, float %29)
  %30 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %31 = getelementptr inbounds [8 x %struct.b2Vec2]* %30, i32 0, i32 0
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %31, float 0.000000e+00, float -1.000000e+00)
  %32 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %33 = getelementptr inbounds [8 x %struct.b2Vec2]* %32, i32 0, i32 1
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %33, float 1.000000e+00, float 0.000000e+00)
  %34 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %35 = getelementptr inbounds [8 x %struct.b2Vec2]* %34, i32 0, i32 2
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %35, float 0.000000e+00, float 1.000000e+00)
  %36 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %37 = getelementptr inbounds [8 x %struct.b2Vec2]* %36, i32 0, i32 3
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %37, float -1.000000e+00, float 0.000000e+00)
  %38 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 1
  %39 = load %struct.b2Vec2** %4
  %40 = bitcast %struct.b2Vec2* %38 to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xf)
  %42 = getelementptr inbounds %struct.b2Transform* %xf, i32 0, i32 0
  %43 = load %struct.b2Vec2** %4
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  %45 = bitcast %struct.b2Vec2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  %46 = getelementptr inbounds %struct.b2Transform* %xf, i32 0, i32 1
  %47 = load float* %5, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %46, float %47)
  store i32 0, i32* %i, align 4
  br label %48

; <label>:48                                      ; preds = %71, %0
  %49 = load i32* %i, align 4
  %50 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 4
  %51 = load i32* %50, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %74

; <label>:53                                      ; preds = %48
  %54 = load i32* %i, align 4
  %55 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %56 = getelementptr inbounds [8 x %struct.b2Vec2]* %55, i32 0, i32 %54
  %57 = load i32* %i, align 4
  %58 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 2
  %59 = getelementptr inbounds [8 x %struct.b2Vec2]* %58, i32 0, i32 %57
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %6, %struct.b2Transform* %xf, %struct.b2Vec2* %59)
  %60 = bitcast %struct.b2Vec2* %56 to i8*
  %61 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = load i32* %i, align 4
  %63 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %64 = getelementptr inbounds [8 x %struct.b2Vec2]* %63, i32 0, i32 %62
  %65 = getelementptr inbounds %struct.b2Transform* %xf, i32 0, i32 1
  %66 = load i32* %i, align 4
  %67 = getelementptr inbounds %class.b2PolygonShape* %8, i32 0, i32 3
  %68 = getelementptr inbounds [8 x %struct.b2Vec2]* %67, i32 0, i32 %66
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %65, %struct.b2Vec2* %68)
  %69 = bitcast %struct.b2Vec2* %64 to i8*
  %70 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 8, i32 4, i1 false)
  br label %71

; <label>:71                                      ; preds = %53
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %48

; <label>:74                                      ; preds = %48
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
  ret void
}

define linkonce_odr void @_ZN5b2Rot3SetEf(%struct.b2Rot* %this, float %angle) nounwind align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  %2 = alloca float, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  store float %angle, float* %2, align 4
  %3 = load %struct.b2Rot** %1
  %4 = load float* %2, align 4
  %5 = call float @sinf(float %4) nounwind readnone
  %6 = getelementptr inbounds %struct.b2Rot* %3, i32 0, i32 0
  store float %5, float* %6, align 4
  %7 = load float* %2, align 4
  %8 = call float @cosf(float %7) nounwind readnone
  %9 = getelementptr inbounds %struct.b2Rot* %3, i32 0, i32 1
  store float %8, float* %9, align 4
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

define linkonce_odr void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Rot* %q, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Rot*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Rot* %q, %struct.b2Rot** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Rot** %1
  %4 = getelementptr inbounds %struct.b2Rot* %3, i32 0, i32 1
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec2** %2
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Rot** %1
  %11 = getelementptr inbounds %struct.b2Rot* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fsub float %9, %16
  %18 = load %struct.b2Rot** %1
  %19 = getelementptr inbounds %struct.b2Rot* %18, i32 0, i32 0
  %20 = load float* %19, align 4
  %21 = load %struct.b2Vec2** %2
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = fmul float %20, %23
  %25 = load %struct.b2Rot** %1
  %26 = getelementptr inbounds %struct.b2Rot* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  %28 = load %struct.b2Vec2** %2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 1
  %30 = load float* %29, align 4
  %31 = fmul float %27, %30
  %32 = fadd float %24, %31
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %17, float %32)
  ret void
}

define i32 @_ZNK14b2PolygonShape13GetChildCountEv(%class.b2PolygonShape* %this) nounwind align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %2 = load %class.b2PolygonShape** %1
  ret i32 1
}

define void @_ZN14b2PolygonShape3SetEPK6b2Vec2i(%class.b2PolygonShape* %this, %struct.b2Vec2* %vertices, i32 %count) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i12 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %edge = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store %struct.b2Vec2* %vertices, %struct.b2Vec2** %2, align 4
  store i32 %count, i32* %3, align 4
  %6 = load %class.b2PolygonShape** %1
  %7 = load i32* %3, align 4
  %8 = icmp sle i32 3, %7
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %0
  %10 = load i32* %3, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %15

; <label>:13                                      ; preds = %9, %0
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__._ZN14b2PolygonShape3SetEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i32* %3, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %32, %15
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 4
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %35

; <label>:23                                      ; preds = %18
  %24 = load i32* %i, align 4
  %25 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 2
  %26 = getelementptr inbounds [8 x %struct.b2Vec2]* %25, i32 0, i32 %24
  %27 = load i32* %i, align 4
  %28 = load %struct.b2Vec2** %2, align 4
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 %27
  %30 = bitcast %struct.b2Vec2* %26 to i8*
  %31 = bitcast %struct.b2Vec2* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 8, i32 4, i1 false)
  br label %32

; <label>:32                                      ; preds = %23
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %18

; <label>:35                                      ; preds = %18
  store i32 0, i32* %i1, align 4
  br label %36

; <label>:36                                      ; preds = %75, %35
  %37 = load i32* %i1, align 4
  %38 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 4
  %39 = load i32* %38, align 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %78

; <label>:41                                      ; preds = %36
  %42 = load i32* %i1, align 4
  store i32 %42, i32* %i12, align 4
  %43 = load i32* %i1, align 4
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 4
  %46 = load i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %41
  %49 = load i32* %i1, align 4
  %50 = add nsw i32 %49, 1
  br label %52

; <label>:51                                      ; preds = %41
  br label %52

; <label>:52                                      ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %i2, align 4
  %54 = load i32* %i2, align 4
  %55 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 2
  %56 = getelementptr inbounds [8 x %struct.b2Vec2]* %55, i32 0, i32 %54
  %57 = load i32* %i12, align 4
  %58 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 2
  %59 = getelementptr inbounds [8 x %struct.b2Vec2]* %58, i32 0, i32 %57
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %edge, %struct.b2Vec2* %56, %struct.b2Vec2* %59)
  %60 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %edge)
  %61 = fcmp ogt float %60, 0x3D10000000000000
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %52
  br label %65

; <label>:63                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__._ZN14b2PolygonShape3SetEPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:65                                      ; preds = %64, %62
  %66 = load i32* %i1, align 4
  %67 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 3
  %68 = getelementptr inbounds [8 x %struct.b2Vec2]* %67, i32 0, i32 %66
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %4, %struct.b2Vec2* %edge, float 1.000000e+00)
  %69 = bitcast %struct.b2Vec2* %68 to i8*
  %70 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 8, i32 4, i1 false)
  %71 = load i32* %i1, align 4
  %72 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 3
  %73 = getelementptr inbounds [8 x %struct.b2Vec2]* %72, i32 0, i32 %71
  %74 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %73)
  br label %75

; <label>:75                                      ; preds = %65
  %76 = load i32* %i1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %i1, align 4
  br label %36

; <label>:78                                      ; preds = %36
  %79 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 1
  %80 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 2
  %81 = getelementptr inbounds [8 x %struct.b2Vec2]* %80, i32 0, i32 0
  %82 = getelementptr inbounds %class.b2PolygonShape* %6, i32 0, i32 4
  %83 = load i32* %82, align 4
  call void @_ZL15ComputeCentroidPK6b2Vec2i(%struct.b2Vec2* sret %5, %struct.b2Vec2* %81, i32 %83)
  %84 = bitcast %struct.b2Vec2* %79 to i8*
  %85 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %85, i32 8, i32 4, i1 false)
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
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
  %9 = fsub float %5, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fsub float %12, %15
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define linkonce_odr float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %this) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fmul float %9, %11
  %13 = fadd float %7, %12
  ret float %13
}

define linkonce_odr void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, float %s) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store float %s, float* %2, align 4
  %3 = load float* %2, align 4
  %4 = load %struct.b2Vec2** %1
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 1
  %6 = load float* %5, align 4
  %7 = fmul float %3, %6
  %8 = load float* %2, align 4
  %9 = fsub float -0.000000e+00, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = fmul float %9, %12
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %7, float %13)
  ret void
}

define linkonce_odr float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %this) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %length = alloca float, align 4
  %invLength = alloca float, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %2
  %4 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %3)
  store float %4, float* %length, align 4
  %5 = load float* %length, align 4
  %6 = fcmp olt float %5, 0x3E80000000000000
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store float 0.000000e+00, float* %1
  br label %20

; <label>:8                                       ; preds = %0
  %9 = load float* %length, align 4
  %10 = fdiv float 1.000000e+00, %9
  store float %10, float* %invLength, align 4
  %11 = load float* %invLength, align 4
  %12 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %13 = load float* %12, align 4
  %14 = fmul float %13, %11
  store float %14, float* %12, align 4
  %15 = load float* %invLength, align 4
  %16 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fmul float %17, %15
  store float %18, float* %16, align 4
  %19 = load float* %length, align 4
  store float %19, float* %1
  br label %20

; <label>:20                                      ; preds = %8, %7
  %21 = load float* %1
  ret float %21
}

define internal void @_ZL15ComputeCentroidPK6b2Vec2i(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %vs, i32 %count) {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca i32, align 4
  %area = alloca float, align 4
  %pRef = alloca %struct.b2Vec2, align 4
  %inv3 = alloca float, align 4
  %i = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %p3 = alloca %struct.b2Vec2, align 4
  %e1 = alloca %struct.b2Vec2, align 4
  %e2 = alloca %struct.b2Vec2, align 4
  %D = alloca float, align 4
  %triangleArea = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2Vec2* %vs, %struct.b2Vec2** %1, align 4
  store i32 %count, i32* %2, align 4
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 3
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__._ZL15ComputeCentroidPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %agg.result)
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %agg.result, float 0.000000e+00, float 0.000000e+00)
  store float 0.000000e+00, float* %area, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %pRef, float 0.000000e+00, float 0.000000e+00)
  store float 0x3FD5555560000000, float* %inv3, align 4
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %48, %11
  %13 = load i32* %i, align 4
  %14 = load i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

; <label>:16                                      ; preds = %12
  %17 = bitcast %struct.b2Vec2* %p1 to i8*
  %18 = bitcast %struct.b2Vec2* %pRef to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = load i32* %i, align 4
  %20 = load %struct.b2Vec2** %1, align 4
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 %19
  %22 = bitcast %struct.b2Vec2* %p2 to i8*
  %23 = bitcast %struct.b2Vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 8, i32 4, i1 false)
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32* %2, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %16
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.b2Vec2** %1, align 4
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 %30
  br label %36

; <label>:33                                      ; preds = %16
  %34 = load %struct.b2Vec2** %1, align 4
  %35 = getelementptr inbounds %struct.b2Vec2* %34, i32 0
  br label %36

; <label>:36                                      ; preds = %33, %28
  %37 = phi %struct.b2Vec2* [ %32, %28 ], [ %35, %33 ]
  %38 = bitcast %struct.b2Vec2* %p3 to i8*
  %39 = bitcast %struct.b2Vec2* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %39, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e1, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e2, %struct.b2Vec2* %p3, %struct.b2Vec2* %p1)
  %40 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %e1, %struct.b2Vec2* %e2)
  store float %40, float* %D, align 4
  %41 = load float* %D, align 4
  %42 = fmul float 5.000000e-01, %41
  store float %42, float* %triangleArea, align 4
  %43 = load float* %triangleArea, align 4
  %44 = load float* %area, align 4
  %45 = fadd float %44, %43
  store float %45, float* %area, align 4
  %46 = load float* %triangleArea, align 4
  %47 = fmul float %46, 0x3FD5555560000000
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %p1, %struct.b2Vec2* %p2)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %5, %struct.b2Vec2* %p3)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %3, float %47, %struct.b2Vec2* %4)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %agg.result, %struct.b2Vec2* %3)
  br label %48

; <label>:48                                      ; preds = %36
  %49 = load i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %12

; <label>:51                                      ; preds = %12
  %52 = load float* %area, align 4
  %53 = fcmp ogt float %52, 0x3E80000000000000
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %51
  br label %57

; <label>:55                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__._ZL15ComputeCentroidPK6b2Vec2i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %57

; <label>:57                                      ; preds = %56, %54
  %58 = load float* %area, align 4
  %59 = fdiv float 1.000000e+00, %58
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %agg.result, float %59)
  ret void
}

define zeroext i1 @_ZNK14b2PolygonShape9TestPointERK11b2TransformRK6b2Vec2(%class.b2PolygonShape* %this, %struct.b2Transform* %xf, %struct.b2Vec2* %p) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %pLocal = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %dot = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  store %struct.b2Vec2* %p, %struct.b2Vec2** %4, align 4
  %7 = load %class.b2PolygonShape** %2
  %8 = load %struct.b2Transform** %3
  %9 = getelementptr inbounds %struct.b2Transform* %8, i32 0, i32 1
  %10 = load %struct.b2Vec2** %4
  %11 = load %struct.b2Transform** %3
  %12 = getelementptr inbounds %struct.b2Transform* %11, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %10, %struct.b2Vec2* %12)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %pLocal, %struct.b2Rot* %9, %struct.b2Vec2* %5)
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %30, %0
  %14 = load i32* %i, align 4
  %15 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %16 = load i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %33

; <label>:18                                      ; preds = %13
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 3
  %21 = getelementptr inbounds [8 x %struct.b2Vec2]* %20, i32 0, i32 %19
  %22 = load i32* %i, align 4
  %23 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %24 = getelementptr inbounds [8 x %struct.b2Vec2]* %23, i32 0, i32 %22
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %pLocal, %struct.b2Vec2* %24)
  %25 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %21, %struct.b2Vec2* %6)
  store float %25, float* %dot, align 4
  %26 = load float* %dot, align 4
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %18
  store i1 false, i1* %1
  br label %34

; <label>:29                                      ; preds = %18
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %13

; <label>:33                                      ; preds = %13
  store i1 true, i1* %1
  br label %34

; <label>:34                                      ; preds = %33, %28
  %35 = load i1* %1
  ret i1 %35
}

define linkonce_odr void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Rot* %q, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Rot*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Rot* %q, %struct.b2Rot** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Rot** %1
  %4 = getelementptr inbounds %struct.b2Rot* %3, i32 0, i32 1
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec2** %2
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Rot** %1
  %11 = getelementptr inbounds %struct.b2Rot* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  %18 = load %struct.b2Rot** %1
  %19 = getelementptr inbounds %struct.b2Rot* %18, i32 0, i32 0
  %20 = load float* %19, align 4
  %21 = fsub float -0.000000e+00, %20
  %22 = load %struct.b2Vec2** %2
  %23 = getelementptr inbounds %struct.b2Vec2* %22, i32 0, i32 0
  %24 = load float* %23, align 4
  %25 = fmul float %21, %24
  %26 = load %struct.b2Rot** %1
  %27 = getelementptr inbounds %struct.b2Rot* %26, i32 0, i32 1
  %28 = load float* %27, align 4
  %29 = load %struct.b2Vec2** %2
  %30 = getelementptr inbounds %struct.b2Vec2* %29, i32 0, i32 1
  %31 = load float* %30, align 4
  %32 = fmul float %28, %31
  %33 = fadd float %25, %32
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %17, float %33)
  ret void
}

define linkonce_odr float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %a, %struct.b2Vec2* %b) nounwind inlinehint {
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
  %9 = fmul float %5, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  ret float %17
}

define zeroext i1 @_ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2PolygonShape* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %struct.b2RayCastOutput*, align 4
  %4 = alloca %struct.b2RayCastInput*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %lower = alloca float, align 4
  %upper = alloca float, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %numerator = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %denominator = alloca float, align 4
  %10 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %2, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %3, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %4, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %5, align 4
  store i32 %childIndex, i32* %6, align 4
  %11 = load %class.b2PolygonShape** %2
  %12 = load %struct.b2Transform** %5
  %13 = getelementptr inbounds %struct.b2Transform* %12, i32 0, i32 1
  %14 = load %struct.b2RayCastInput** %4
  %15 = getelementptr inbounds %struct.b2RayCastInput* %14, i32 0, i32 0
  %16 = load %struct.b2Transform** %5
  %17 = getelementptr inbounds %struct.b2Transform* %16, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %15, %struct.b2Vec2* %17)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %p1, %struct.b2Rot* %13, %struct.b2Vec2* %7)
  %18 = load %struct.b2Transform** %5
  %19 = getelementptr inbounds %struct.b2Transform* %18, i32 0, i32 1
  %20 = load %struct.b2RayCastInput** %4
  %21 = getelementptr inbounds %struct.b2RayCastInput* %20, i32 0, i32 1
  %22 = load %struct.b2Transform** %5
  %23 = getelementptr inbounds %struct.b2Transform* %22, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %21, %struct.b2Vec2* %23)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %p2, %struct.b2Rot* %19, %struct.b2Vec2* %8)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  store float 0.000000e+00, float* %lower, align 4
  %24 = load %struct.b2RayCastInput** %4
  %25 = getelementptr inbounds %struct.b2RayCastInput* %24, i32 0, i32 2
  %26 = load float* %25, align 4
  store float %26, float* %upper, align 4
  store i32 -1, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %27

; <label>:27                                      ; preds = %86, %0
  %28 = load i32* %i, align 4
  %29 = getelementptr inbounds %class.b2PolygonShape* %11, i32 0, i32 4
  %30 = load i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %89

; <label>:32                                      ; preds = %27
  %33 = load i32* %i, align 4
  %34 = getelementptr inbounds %class.b2PolygonShape* %11, i32 0, i32 3
  %35 = getelementptr inbounds [8 x %struct.b2Vec2]* %34, i32 0, i32 %33
  %36 = load i32* %i, align 4
  %37 = getelementptr inbounds %class.b2PolygonShape* %11, i32 0, i32 2
  %38 = getelementptr inbounds [8 x %struct.b2Vec2]* %37, i32 0, i32 %36
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %38, %struct.b2Vec2* %p1)
  %39 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %35, %struct.b2Vec2* %9)
  store float %39, float* %numerator, align 4
  %40 = load i32* %i, align 4
  %41 = getelementptr inbounds %class.b2PolygonShape* %11, i32 0, i32 3
  %42 = getelementptr inbounds [8 x %struct.b2Vec2]* %41, i32 0, i32 %40
  %43 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %42, %struct.b2Vec2* %d)
  store float %43, float* %denominator, align 4
  %44 = load float* %denominator, align 4
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %32
  %47 = load float* %numerator, align 4
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  store i1 false, i1* %1
  br label %118

; <label>:50                                      ; preds = %46
  br label %80

; <label>:51                                      ; preds = %32
  %52 = load float* %denominator, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %65

; <label>:54                                      ; preds = %51
  %55 = load float* %numerator, align 4
  %56 = load float* %lower, align 4
  %57 = load float* %denominator, align 4
  %58 = fmul float %56, %57
  %59 = fcmp olt float %55, %58
  br i1 %59, label %60, label %65

; <label>:60                                      ; preds = %54
  %61 = load float* %numerator, align 4
  %62 = load float* %denominator, align 4
  %63 = fdiv float %61, %62
  store float %63, float* %lower, align 4
  %64 = load i32* %i, align 4
  store i32 %64, i32* %index, align 4
  br label %79

; <label>:65                                      ; preds = %54, %51
  %66 = load float* %denominator, align 4
  %67 = fcmp ogt float %66, 0.000000e+00
  br i1 %67, label %68, label %78

; <label>:68                                      ; preds = %65
  %69 = load float* %numerator, align 4
  %70 = load float* %upper, align 4
  %71 = load float* %denominator, align 4
  %72 = fmul float %70, %71
  %73 = fcmp olt float %69, %72
  br i1 %73, label %74, label %78

; <label>:74                                      ; preds = %68
  %75 = load float* %numerator, align 4
  %76 = load float* %denominator, align 4
  %77 = fdiv float %75, %76
  store float %77, float* %upper, align 4
  br label %78

; <label>:78                                      ; preds = %74, %68, %65
  br label %79

; <label>:79                                      ; preds = %78, %60
  br label %80

; <label>:80                                      ; preds = %79, %50
  %81 = load float* %upper, align 4
  %82 = load float* %lower, align 4
  %83 = fcmp olt float %81, %82
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %80
  store i1 false, i1* %1
  br label %118

; <label>:85                                      ; preds = %80
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load i32* %i, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %i, align 4
  br label %27

; <label>:89                                      ; preds = %27
  %90 = load float* %lower, align 4
  %91 = fcmp ole float 0.000000e+00, %90
  br i1 %91, label %92, label %99

; <label>:92                                      ; preds = %89
  %93 = load float* %lower, align 4
  %94 = load %struct.b2RayCastInput** %4
  %95 = getelementptr inbounds %struct.b2RayCastInput* %94, i32 0, i32 2
  %96 = load float* %95, align 4
  %97 = fcmp ole float %93, %96
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92
  br label %101

; <label>:99                                      ; preds = %92, %89
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([114 x i8]* @__PRETTY_FUNCTION__._ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %100, %98
  %102 = load i32* %index, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %117

; <label>:104                                     ; preds = %101
  %105 = load float* %lower, align 4
  %106 = load %struct.b2RayCastOutput** %3, align 4
  %107 = getelementptr inbounds %struct.b2RayCastOutput* %106, i32 0, i32 1
  store float %105, float* %107, align 4
  %108 = load %struct.b2RayCastOutput** %3, align 4
  %109 = getelementptr inbounds %struct.b2RayCastOutput* %108, i32 0, i32 0
  %110 = load %struct.b2Transform** %5
  %111 = getelementptr inbounds %struct.b2Transform* %110, i32 0, i32 1
  %112 = load i32* %index, align 4
  %113 = getelementptr inbounds %class.b2PolygonShape* %11, i32 0, i32 3
  %114 = getelementptr inbounds [8 x %struct.b2Vec2]* %113, i32 0, i32 %112
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %10, %struct.b2Rot* %111, %struct.b2Vec2* %114)
  %115 = bitcast %struct.b2Vec2* %109 to i8*
  %116 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 8, i32 4, i1 false)
  store i1 true, i1* %1
  br label %118

; <label>:117                                     ; preds = %101
  store i1 false, i1* %1
  br label %118

; <label>:118                                     ; preds = %117, %104, %84, %49
  %119 = load i1* %1
  ret i1 %119
}

define void @_ZNK14b2PolygonShape11ComputeAABBEP6b2AABBRK11b2Transformi(%class.b2PolygonShape* %this, %struct.b2AABB* %aabb, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca i32, align 4
  %lower = alloca %struct.b2Vec2, align 4
  %upper = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %v = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %r = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  store i32 %childIndex, i32* %4, align 4
  %9 = load %class.b2PolygonShape** %1
  %10 = load %struct.b2Transform** %3
  %11 = getelementptr inbounds %class.b2PolygonShape* %9, i32 0, i32 2
  %12 = getelementptr inbounds [8 x %struct.b2Vec2]* %11, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %lower, %struct.b2Transform* %10, %struct.b2Vec2* %12)
  %13 = bitcast %struct.b2Vec2* %upper to i8*
  %14 = bitcast %struct.b2Vec2* %lower to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 8, i32 4, i1 false)
  store i32 1, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %29, %0
  %16 = load i32* %i, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %9, i32 0, i32 4
  %18 = load i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

; <label>:20                                      ; preds = %15
  %21 = load %struct.b2Transform** %3
  %22 = load i32* %i, align 4
  %23 = getelementptr inbounds %class.b2PolygonShape* %9, i32 0, i32 2
  %24 = getelementptr inbounds [8 x %struct.b2Vec2]* %23, i32 0, i32 %22
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v, %struct.b2Transform* %21, %struct.b2Vec2* %24)
  call void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %lower, %struct.b2Vec2* %v)
  %25 = bitcast %struct.b2Vec2* %lower to i8*
  %26 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 4, i1 false)
  call void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %upper, %struct.b2Vec2* %v)
  %27 = bitcast %struct.b2Vec2* %upper to i8*
  %28 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  br label %29

; <label>:29                                      ; preds = %20
  %30 = load i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %15

; <label>:32                                      ; preds = %15
  %33 = bitcast %class.b2PolygonShape* %9 to %class.b2Shape*
  %34 = getelementptr inbounds %class.b2Shape* %33, i32 0, i32 2
  %35 = load float* %34, align 4
  %36 = bitcast %class.b2PolygonShape* %9 to %class.b2Shape*
  %37 = getelementptr inbounds %class.b2Shape* %36, i32 0, i32 2
  %38 = load float* %37, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %r, float %35, float %38)
  %39 = load %struct.b2AABB** %2, align 4
  %40 = getelementptr inbounds %struct.b2AABB* %39, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %lower, %struct.b2Vec2* %r)
  %41 = bitcast %struct.b2Vec2* %40 to i8*
  %42 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 8, i32 4, i1 false)
  %43 = load %struct.b2AABB** %2, align 4
  %44 = getelementptr inbounds %struct.b2AABB* %43, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %upper, %struct.b2Vec2* %r)
  %45 = bitcast %struct.b2Vec2* %44 to i8*
  %46 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 8, i32 4, i1 false)
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

define linkonce_odr void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
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
  %9 = fadd float %5, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fadd float %12, %15
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define void @_ZNK14b2PolygonShape11ComputeMassEP10b2MassDataf(%class.b2PolygonShape* %this, %struct.b2MassData* %massData, float %density) align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  %3 = alloca float, align 4
  %center = alloca %struct.b2Vec2, align 4
  %area = alloca float, align 4
  %I = alloca float, align 4
  %s = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %k_inv3 = alloca float, align 4
  %i1 = alloca i32, align 4
  %e1 = alloca %struct.b2Vec2, align 4
  %e2 = alloca %struct.b2Vec2, align 4
  %D = alloca float, align 4
  %triangleArea = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %ex1 = alloca float, align 4
  %ey1 = alloca float, align 4
  %ex2 = alloca float, align 4
  %ey2 = alloca float, align 4
  %intx2 = alloca float, align 4
  %inty2 = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  store float %density, float* %3, align 4
  %7 = load %class.b2PolygonShape** %1
  %8 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %9 = load i32* %8, align 4
  %10 = icmp sge i32 %9, 3
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 306, i8* getelementptr inbounds ([70 x i8]* @__PRETTY_FUNCTION__._ZNK14b2PolygonShape11ComputeMassEP10b2MassDataf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %center)
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %center, float 0.000000e+00, float 0.000000e+00)
  store float 0.000000e+00, float* %area, align 4
  store float 0.000000e+00, float* %I, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %s, float 0.000000e+00, float 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %24, %14
  %16 = load i32* %i, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %18 = load i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %15
  %21 = load i32* %i, align 4
  %22 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %23 = getelementptr inbounds [8 x %struct.b2Vec2]* %22, i32 0, i32 %21
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %s, %struct.b2Vec2* %23)
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %15

; <label>:27                                      ; preds = %15
  %28 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %29 = load i32* %28, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float 1.000000e+00, %30
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %s, float %31)
  store float 0x3FD5555560000000, float* %k_inv3, align 4
  store i32 0, i32* %i1, align 4
  br label %32

; <label>:32                                      ; preds = %101, %27
  %33 = load i32* %i1, align 4
  %34 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %35 = load i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %104

; <label>:37                                      ; preds = %32
  %38 = load i32* %i1, align 4
  %39 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %40 = getelementptr inbounds [8 x %struct.b2Vec2]* %39, i32 0, i32 %38
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e1, %struct.b2Vec2* %40, %struct.b2Vec2* %s)
  %41 = load i32* %i1, align 4
  %42 = add nsw i32 %41, 1
  %43 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 4
  %44 = load i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %37
  %47 = load i32* %i1, align 4
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %50 = getelementptr inbounds [8 x %struct.b2Vec2]* %49, i32 0, i32 %48
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e2, %struct.b2Vec2* %50, %struct.b2Vec2* %s)
  br label %54

; <label>:51                                      ; preds = %37
  %52 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %53 = getelementptr inbounds [8 x %struct.b2Vec2]* %52, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e2, %struct.b2Vec2* %53, %struct.b2Vec2* %s)
  br label %54

; <label>:54                                      ; preds = %51, %46
  %55 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %e1, %struct.b2Vec2* %e2)
  store float %55, float* %D, align 4
  %56 = load float* %D, align 4
  %57 = fmul float 5.000000e-01, %56
  store float %57, float* %triangleArea, align 4
  %58 = load float* %triangleArea, align 4
  %59 = load float* %area, align 4
  %60 = fadd float %59, %58
  store float %60, float* %area, align 4
  %61 = load float* %triangleArea, align 4
  %62 = fmul float %61, 0x3FD5555560000000
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %e1, %struct.b2Vec2* %e2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %62, %struct.b2Vec2* %5)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %center, %struct.b2Vec2* %4)
  %63 = getelementptr inbounds %struct.b2Vec2* %e1, i32 0, i32 0
  %64 = load float* %63, align 4
  store float %64, float* %ex1, align 4
  %65 = getelementptr inbounds %struct.b2Vec2* %e1, i32 0, i32 1
  %66 = load float* %65, align 4
  store float %66, float* %ey1, align 4
  %67 = getelementptr inbounds %struct.b2Vec2* %e2, i32 0, i32 0
  %68 = load float* %67, align 4
  store float %68, float* %ex2, align 4
  %69 = getelementptr inbounds %struct.b2Vec2* %e2, i32 0, i32 1
  %70 = load float* %69, align 4
  store float %70, float* %ey2, align 4
  %71 = load float* %ex1, align 4
  %72 = load float* %ex1, align 4
  %73 = fmul float %71, %72
  %74 = load float* %ex2, align 4
  %75 = load float* %ex1, align 4
  %76 = fmul float %74, %75
  %77 = fadd float %73, %76
  %78 = load float* %ex2, align 4
  %79 = load float* %ex2, align 4
  %80 = fmul float %78, %79
  %81 = fadd float %77, %80
  store float %81, float* %intx2, align 4
  %82 = load float* %ey1, align 4
  %83 = load float* %ey1, align 4
  %84 = fmul float %82, %83
  %85 = load float* %ey2, align 4
  %86 = load float* %ey1, align 4
  %87 = fmul float %85, %86
  %88 = fadd float %84, %87
  %89 = load float* %ey2, align 4
  %90 = load float* %ey2, align 4
  %91 = fmul float %89, %90
  %92 = fadd float %88, %91
  store float %92, float* %inty2, align 4
  %93 = load float* %D, align 4
  %94 = fmul float 0x3FB5555560000000, %93
  %95 = load float* %intx2, align 4
  %96 = load float* %inty2, align 4
  %97 = fadd float %95, %96
  %98 = fmul float %94, %97
  %99 = load float* %I, align 4
  %100 = fadd float %99, %98
  store float %100, float* %I, align 4
  br label %101

; <label>:101                                     ; preds = %54
  %102 = load i32* %i1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %i1, align 4
  br label %32

; <label>:104                                     ; preds = %32
  %105 = load float* %3, align 4
  %106 = load float* %area, align 4
  %107 = fmul float %105, %106
  %108 = load %struct.b2MassData** %2, align 4
  %109 = getelementptr inbounds %struct.b2MassData* %108, i32 0, i32 0
  store float %107, float* %109, align 4
  %110 = load float* %area, align 4
  %111 = fcmp ogt float %110, 0x3E80000000000000
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %104
  br label %115

; <label>:113                                     ; preds = %104
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([70 x i8]* @__PRETTY_FUNCTION__._ZNK14b2PolygonShape11ComputeMassEP10b2MassDataf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = load float* %area, align 4
  %117 = fdiv float 1.000000e+00, %116
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %center, float %117)
  %118 = load %struct.b2MassData** %2, align 4
  %119 = getelementptr inbounds %struct.b2MassData* %118, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %center, %struct.b2Vec2* %s)
  %120 = bitcast %struct.b2Vec2* %119 to i8*
  %121 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %121, i32 8, i32 4, i1 false)
  %122 = load float* %3, align 4
  %123 = load float* %I, align 4
  %124 = fmul float %122, %123
  %125 = load %struct.b2MassData** %2, align 4
  %126 = getelementptr inbounds %struct.b2MassData* %125, i32 0, i32 2
  store float %124, float* %126, align 4
  %127 = load %struct.b2MassData** %2, align 4
  %128 = getelementptr inbounds %struct.b2MassData* %127, i32 0, i32 0
  %129 = load float* %128, align 4
  %130 = load %struct.b2MassData** %2, align 4
  %131 = getelementptr inbounds %struct.b2MassData* %130, i32 0, i32 1
  %132 = load %struct.b2MassData** %2, align 4
  %133 = getelementptr inbounds %struct.b2MassData* %132, i32 0, i32 1
  %134 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %131, %struct.b2Vec2* %133)
  %135 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %center, %struct.b2Vec2* %center)
  %136 = fsub float %134, %135
  %137 = fmul float %129, %136
  %138 = load %struct.b2MassData** %2, align 4
  %139 = getelementptr inbounds %struct.b2MassData* %138, i32 0, i32 2
  %140 = load float* %139, align 4
  %141 = fadd float %140, %137
  store float %141, float* %139, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %this, %struct.b2Vec2* %v) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load %struct.b2Vec2** %2
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fadd float %8, %6
  store float %9, float* %7, align 4
  %10 = load %struct.b2Vec2** %2
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fadd float %14, %12
  store float %15, float* %13, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %this, float %a) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store float %a, float* %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %6, %4
  store float %7, float* %5, align 4
  %8 = load float* %2, align 4
  %9 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 1
  %10 = load float* %9, align 4
  %11 = fmul float %10, %8
  store float %11, float* %9, align 4
  ret void
}

define linkonce_odr float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %a, %struct.b2Vec2* %b) nounwind inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec2** %2
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 1
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 0
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fsub float %9, %16
  ret float %17
}

define linkonce_odr void @_ZmlfRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, float %s, %struct.b2Vec2* %a) inlinehint {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store float %s, float* %1, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %2, align 4
  %3 = load float* %1, align 4
  %4 = load %struct.b2Vec2** %2
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %3, %6
  %8 = load float* %1, align 4
  %9 = load %struct.b2Vec2** %2
  %10 = getelementptr inbounds %struct.b2Vec2* %9, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fmul float %8, %11
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %7, float %12)
  ret void
}

define linkonce_odr void @_ZN14b2PolygonShapeD1Ev(%class.b2PolygonShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %2 = load %class.b2PolygonShape** %1
  call void @_ZN14b2PolygonShapeD2Ev(%class.b2PolygonShape* %2)
  ret void
}

define linkonce_odr void @_ZN14b2PolygonShapeD0Ev(%class.b2PolygonShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %4 = load %class.b2PolygonShape** %1
  invoke void @_ZN14b2PolygonShapeD1Ev(%class.b2PolygonShape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2PolygonShape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2PolygonShape* %4 to i8*
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

define linkonce_odr void @_ZN14b2PolygonShapeD2Ev(%class.b2PolygonShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %2 = load %class.b2PolygonShape** %1
  %3 = bitcast %class.b2PolygonShape* %2 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %3)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD2Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
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

define linkonce_odr float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %this) align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fmul float %9, %11
  %13 = fadd float %7, %12
  %14 = call float @_ZSt4sqrtf(float %13)
  ret float %14
}

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

define linkonce_odr void @_ZN11b2TransformC2Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  %3 = getelementptr inbounds %struct.b2Transform* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Transform* %2, i32 0, i32 1
  call void @_ZN5b2RotC1Ev(%struct.b2Rot* %4)
  ret void
}

define linkonce_odr void @_ZN5b2RotC1Ev(%struct.b2Rot* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  %2 = load %struct.b2Rot** %1
  call void @_ZN5b2RotC2Ev(%struct.b2Rot* %2)
  ret void
}

define linkonce_odr void @_ZN5b2RotC2Ev(%struct.b2Rot* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  %2 = load %struct.b2Rot** %1
  ret void
}

define linkonce_odr %class.b2Shape* @_ZN7b2ShapeaSERKS_(%class.b2Shape* %this, %class.b2Shape*) nounwind inlinehint align 2 {
  %2 = alloca %class.b2Shape*, align 4
  %3 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %2, align 4
  store %class.b2Shape* %0, %class.b2Shape** %3, align 4
  %4 = load %class.b2Shape** %2
  %5 = load %class.b2Shape** %3
  %6 = getelementptr inbounds %class.b2Shape* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = getelementptr inbounds %class.b2Shape* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load %class.b2Shape** %3
  %10 = getelementptr inbounds %class.b2Shape* %9, i32 0, i32 2
  %11 = load float* %10, align 4
  %12 = getelementptr inbounds %class.b2Shape* %4, i32 0, i32 2
  store float %11, float* %12, align 4
  ret %class.b2Shape* %4
}

define linkonce_odr void @_ZN14b2PolygonShapeC2Ev(%class.b2PolygonShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2PolygonShape* %this, %class.b2PolygonShape** %1, align 4
  %4 = load %class.b2PolygonShape** %1
  %5 = bitcast %class.b2PolygonShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeC2Ev(%class.b2Shape* %5) nounwind
  %6 = bitcast %class.b2PolygonShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV14b2PolygonShape, i64 0, i64 2), i8*** %6
  %7 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
          to label %8 unwind label %34

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 2
  %10 = getelementptr inbounds [8 x %struct.b2Vec2]* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 8
  br label %12

; <label>:12                                      ; preds = %14, %8
  %13 = phi %struct.b2Vec2* [ %10, %8 ], [ %15, %14 ]
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %34

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %struct.b2Vec2* %13, i32 1
  %16 = icmp eq %struct.b2Vec2* %15, %11
  br i1 %16, label %17, label %12

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 3
  %19 = getelementptr inbounds [8 x %struct.b2Vec2]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.b2Vec2* %19, i32 8
  br label %21

; <label>:21                                      ; preds = %23, %17
  %22 = phi %struct.b2Vec2* [ %19, %17 ], [ %24, %23 ]
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %34

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %struct.b2Vec2* %22, i32 1
  %25 = icmp eq %struct.b2Vec2* %24, %20
  br i1 %25, label %26, label %21

; <label>:26                                      ; preds = %23
  %27 = bitcast %class.b2PolygonShape* %4 to %class.b2Shape*
  %28 = getelementptr inbounds %class.b2Shape* %27, i32 0, i32 1
  store i32 2, i32* %28, align 4
  %29 = bitcast %class.b2PolygonShape* %4 to %class.b2Shape*
  %30 = getelementptr inbounds %class.b2Shape* %29, i32 0, i32 2
  store float 0x3F847AE140000000, float* %30, align 4
  %31 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %class.b2PolygonShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %32)
          to label %33 unwind label %34

; <label>:33                                      ; preds = %26
  ret void

; <label>:34                                      ; preds = %26, %21, %12, %0
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %2
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %3
  %38 = bitcast %class.b2PolygonShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %38)
          to label %39 unwind label %46

; <label>:39                                      ; preds = %34
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i8** %2
  %42 = load i8** %2
  %43 = load i32* %3
  %44 = insertvalue { i8*, i32 } undef, i8* %42, 0
  %45 = insertvalue { i8*, i32 } %44, i32 %43, 1
  resume { i8*, i32 } %45

; <label>:46                                      ; preds = %34
  %47 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

declare void @_ZSt9terminatev()

define linkonce_odr void @_ZN7b2ShapeD1Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
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
