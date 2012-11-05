; ModuleID = 'Collision/Shapes/b2EdgeShape.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2Shape = type { i32 (...)**, i32, float }
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

@_ZTV11b2EdgeShape = unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11b2EdgeShape to i8*), i8* bitcast (void (%class.b2EdgeShape*)* @_ZN11b2EdgeShapeD1Ev to i8*), i8* bitcast (void (%class.b2EdgeShape*)* @_ZN11b2EdgeShapeD0Ev to i8*), i8* bitcast (%class.b2Shape* (%class.b2EdgeShape*, %class.b2BlockAllocator*)* @_ZNK11b2EdgeShape5CloneEP16b2BlockAllocator to i8*), i8* bitcast (i32 (%class.b2EdgeShape*)* @_ZNK11b2EdgeShape13GetChildCountEv to i8*), i8* bitcast (i1 (%class.b2EdgeShape*, %struct.b2Transform*, %struct.b2Vec2*)* @_ZNK11b2EdgeShape9TestPointERK11b2TransformRK6b2Vec2 to i8*), i8* bitcast (i1 (%class.b2EdgeShape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)* @_ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi to i8*), i8* bitcast (void (%class.b2EdgeShape*, %struct.b2AABB*, %struct.b2Transform*, i32)* @_ZNK11b2EdgeShape11ComputeAABBEP6b2AABBRK11b2Transformi to i8*), i8* bitcast (void (%class.b2EdgeShape*, %struct.b2MassData*, float)* @_ZNK11b2EdgeShape11ComputeMassEP10b2MassDataf to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11b2EdgeShape = constant [14 x i8] c"11b2EdgeShape\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Shape = linkonce_odr constant [9 x i8] c"7b2Shape\00"
@_ZTI7b2Shape = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Shape, i32 0, i32 0) }
@_ZTI11b2EdgeShape = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11b2EdgeShape, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*) }
@_ZTV7b2Shape = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD1Ev to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]

define void @_ZN11b2EdgeShape3SetERK6b2Vec2S2_(%class.b2EdgeShape* %this, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2) nounwind align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  store %struct.b2Vec2* %v1, %struct.b2Vec2** %2, align 4
  store %struct.b2Vec2* %v2, %struct.b2Vec2** %3, align 4
  %4 = load %class.b2EdgeShape** %1
  %5 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 1
  %6 = load %struct.b2Vec2** %2
  %7 = bitcast %struct.b2Vec2* %5 to i8*
  %8 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 8, i32 4, i1 false)
  %9 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 2
  %10 = load %struct.b2Vec2** %3
  %11 = bitcast %struct.b2Vec2* %9 to i8*
  %12 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  %13 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 6
  store i8 0, i8* %14, align 1
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define %class.b2Shape* @_ZNK11b2EdgeShape5CloneEP16b2BlockAllocator(%class.b2EdgeShape* %this, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  %clone = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2EdgeShape** %1
  %4 = load %class.b2BlockAllocator** %2, align 4
  %5 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %4, i32 48)
  store i8* %5, i8** %mem, align 4
  %6 = load i8** %mem, align 4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %class.b2EdgeShape*
  call void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = phi %class.b2EdgeShape* [ %9, %8 ], [ null, %0 ]
  store %class.b2EdgeShape* %11, %class.b2EdgeShape** %clone, align 4
  %12 = load %class.b2EdgeShape** %clone, align 4
  %13 = call %class.b2EdgeShape* @_ZN11b2EdgeShapeaSERKS_(%class.b2EdgeShape* %12, %class.b2EdgeShape* %3) nounwind
  %14 = load %class.b2EdgeShape** %clone, align 4
  %15 = bitcast %class.b2EdgeShape* %14 to %class.b2Shape*
  ret %class.b2Shape* %15
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define linkonce_odr void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeC2Ev(%class.b2EdgeShape* %2)
  ret void
}

define linkonce_odr %class.b2EdgeShape* @_ZN11b2EdgeShapeaSERKS_(%class.b2EdgeShape* %this, %class.b2EdgeShape*) nounwind inlinehint align 2 {
  %2 = alloca %class.b2EdgeShape*, align 4
  %3 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %2, align 4
  store %class.b2EdgeShape* %0, %class.b2EdgeShape** %3, align 4
  %4 = load %class.b2EdgeShape** %2
  %5 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  %6 = load %class.b2EdgeShape** %3
  %7 = bitcast %class.b2EdgeShape* %6 to %class.b2Shape*
  %8 = call %class.b2Shape* @_ZN7b2ShapeaSERKS_(%class.b2Shape* %5, %class.b2Shape* %7) nounwind
  %9 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 1
  %10 = load %class.b2EdgeShape** %3
  %11 = getelementptr inbounds %class.b2EdgeShape* %10, i32 0, i32 1
  %12 = bitcast %struct.b2Vec2* %9 to i8*
  %13 = bitcast %struct.b2Vec2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  %14 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 2
  %15 = load %class.b2EdgeShape** %3
  %16 = getelementptr inbounds %class.b2EdgeShape* %15, i32 0, i32 2
  %17 = bitcast %struct.b2Vec2* %14 to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  %20 = load %class.b2EdgeShape** %3
  %21 = getelementptr inbounds %class.b2EdgeShape* %20, i32 0, i32 3
  %22 = bitcast %struct.b2Vec2* %19 to i8*
  %23 = bitcast %struct.b2Vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 8, i32 4, i1 false)
  %24 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  %25 = load %class.b2EdgeShape** %3
  %26 = getelementptr inbounds %class.b2EdgeShape* %25, i32 0, i32 4
  %27 = bitcast %struct.b2Vec2* %24 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = load %class.b2EdgeShape** %3
  %30 = getelementptr inbounds %class.b2EdgeShape* %29, i32 0, i32 5
  %31 = load i8* %30, align 1
  %32 = trunc i8 %31 to i1
  %33 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 5
  %34 = zext i1 %32 to i8
  store i8 %34, i8* %33, align 1
  %35 = load %class.b2EdgeShape** %3
  %36 = getelementptr inbounds %class.b2EdgeShape* %35, i32 0, i32 6
  %37 = load i8* %36, align 1
  %38 = trunc i8 %37 to i1
  %39 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 6
  %40 = zext i1 %38 to i8
  store i8 %40, i8* %39, align 1
  ret %class.b2EdgeShape* %4
}

define i32 @_ZNK11b2EdgeShape13GetChildCountEv(%class.b2EdgeShape* %this) nounwind align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  ret i32 1
}

define zeroext i1 @_ZNK11b2EdgeShape9TestPointERK11b2TransformRK6b2Vec2(%class.b2EdgeShape* %this, %struct.b2Transform* %xf, %struct.b2Vec2* %p) nounwind align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %2, align 4
  store %struct.b2Vec2* %p, %struct.b2Vec2** %3, align 4
  %4 = load %class.b2EdgeShape** %1
  %5 = load %struct.b2Transform** %2
  %6 = load %struct.b2Vec2** %3
  ret i1 false
}

define zeroext i1 @_ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2EdgeShape* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2EdgeShape*, align 4
  %3 = alloca %struct.b2RayCastOutput*, align 4
  %4 = alloca %struct.b2RayCastInput*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %e = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %numerator = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %denominator = alloca float, align 4
  %t = alloca float, align 4
  %q = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %r = alloca %struct.b2Vec2, align 4
  %rr = alloca float, align 4
  %s = alloca float, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %2, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %3, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %4, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %5, align 4
  store i32 %childIndex, i32* %6, align 4
  %13 = load %class.b2EdgeShape** %2
  %14 = load %struct.b2Transform** %5
  %15 = getelementptr inbounds %struct.b2Transform* %14, i32 0, i32 1
  %16 = load %struct.b2RayCastInput** %4
  %17 = getelementptr inbounds %struct.b2RayCastInput* %16, i32 0, i32 0
  %18 = load %struct.b2Transform** %5
  %19 = getelementptr inbounds %struct.b2Transform* %18, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %17, %struct.b2Vec2* %19)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %p1, %struct.b2Rot* %15, %struct.b2Vec2* %7)
  %20 = load %struct.b2Transform** %5
  %21 = getelementptr inbounds %struct.b2Transform* %20, i32 0, i32 1
  %22 = load %struct.b2RayCastInput** %4
  %23 = getelementptr inbounds %struct.b2RayCastInput* %22, i32 0, i32 1
  %24 = load %struct.b2Transform** %5
  %25 = getelementptr inbounds %struct.b2Transform* %24, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %23, %struct.b2Vec2* %25)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %p2, %struct.b2Rot* %21, %struct.b2Vec2* %8)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  %26 = getelementptr inbounds %class.b2EdgeShape* %13, i32 0, i32 1
  %27 = bitcast %struct.b2Vec2* %v1 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = getelementptr inbounds %class.b2EdgeShape* %13, i32 0, i32 2
  %30 = bitcast %struct.b2Vec2* %v2 to i8*
  %31 = bitcast %struct.b2Vec2* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e, %struct.b2Vec2* %v2, %struct.b2Vec2* %v1)
  %32 = getelementptr inbounds %struct.b2Vec2* %e, i32 0, i32 1
  %33 = load float* %32, align 4
  %34 = getelementptr inbounds %struct.b2Vec2* %e, i32 0, i32 0
  %35 = load float* %34, align 4
  %36 = fsub float -0.000000e+00, %35
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %normal, float %33, float %36)
  %37 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %normal)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %v1, %struct.b2Vec2* %p1)
  %38 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %normal, %struct.b2Vec2* %9)
  store float %38, float* %numerator, align 4
  %39 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %normal, %struct.b2Vec2* %d)
  store float %39, float* %denominator, align 4
  %40 = load float* %denominator, align 4
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %0
  store i1 false, i1* %1
  br label %89

; <label>:43                                      ; preds = %0
  %44 = load float* %numerator, align 4
  %45 = load float* %denominator, align 4
  %46 = fdiv float %44, %45
  store float %46, float* %t, align 4
  %47 = load float* %t, align 4
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %55, label %49

; <label>:49                                      ; preds = %43
  %50 = load %struct.b2RayCastInput** %4
  %51 = getelementptr inbounds %struct.b2RayCastInput* %50, i32 0, i32 2
  %52 = load float* %51, align 4
  %53 = load float* %t, align 4
  %54 = fcmp olt float %52, %53
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %49, %43
  store i1 false, i1* %1
  br label %89

; <label>:56                                      ; preds = %49
  %57 = load float* %t, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %57, %struct.b2Vec2* %d)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %q, %struct.b2Vec2* %p1, %struct.b2Vec2* %10)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %r, %struct.b2Vec2* %v2, %struct.b2Vec2* %v1)
  %58 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %r, %struct.b2Vec2* %r)
  store float %58, float* %rr, align 4
  %59 = load float* %rr, align 4
  %60 = fcmp oeq float %59, 0.000000e+00
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %56
  store i1 false, i1* %1
  br label %89

; <label>:62                                      ; preds = %56
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %q, %struct.b2Vec2* %v1)
  %63 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %11, %struct.b2Vec2* %r)
  %64 = load float* %rr, align 4
  %65 = fdiv float %63, %64
  store float %65, float* %s, align 4
  %66 = load float* %s, align 4
  %67 = fcmp olt float %66, 0.000000e+00
  br i1 %67, label %71, label %68

; <label>:68                                      ; preds = %62
  %69 = load float* %s, align 4
  %70 = fcmp olt float 1.000000e+00, %69
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68, %62
  store i1 false, i1* %1
  br label %89

; <label>:72                                      ; preds = %68
  %73 = load float* %t, align 4
  %74 = load %struct.b2RayCastOutput** %3, align 4
  %75 = getelementptr inbounds %struct.b2RayCastOutput* %74, i32 0, i32 1
  store float %73, float* %75, align 4
  %76 = load float* %numerator, align 4
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %72
  %79 = load %struct.b2RayCastOutput** %3, align 4
  %80 = getelementptr inbounds %struct.b2RayCastOutput* %79, i32 0, i32 0
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %12, %struct.b2Vec2* %normal)
  %81 = bitcast %struct.b2Vec2* %80 to i8*
  %82 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %81, i8* %82, i32 8, i32 4, i1 false)
  br label %88

; <label>:83                                      ; preds = %72
  %84 = load %struct.b2RayCastOutput** %3, align 4
  %85 = getelementptr inbounds %struct.b2RayCastOutput* %84, i32 0, i32 0
  %86 = bitcast %struct.b2Vec2* %85 to i8*
  %87 = bitcast %struct.b2Vec2* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %86, i8* %87, i32 8, i32 4, i1 false)
  br label %88

; <label>:88                                      ; preds = %83, %78
  store i1 true, i1* %1
  br label %89

; <label>:89                                      ; preds = %88, %71, %61, %55, %42
  %90 = load i1* %1
  ret i1 %90
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

define linkonce_odr void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %this) align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %agg.result)
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = fsub float -0.000000e+00, %4
  %6 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %7 = load float* %6, align 4
  %8 = fsub float -0.000000e+00, %7
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %agg.result, float %5, float %8)
  ret void
}

define void @_ZNK11b2EdgeShape11ComputeAABBEP6b2AABBRK11b2Transformi(%class.b2EdgeShape* %this, %struct.b2AABB* %aabb, %struct.b2Transform* %xf, i32 %childIndex) align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca i32, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %lower = alloca %struct.b2Vec2, align 4
  %upper = alloca %struct.b2Vec2, align 4
  %r = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  store i32 %childIndex, i32* %4, align 4
  %7 = load %class.b2EdgeShape** %1
  %8 = load %struct.b2Transform** %3
  %9 = getelementptr inbounds %class.b2EdgeShape* %7, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v1, %struct.b2Transform* %8, %struct.b2Vec2* %9)
  %10 = load %struct.b2Transform** %3
  %11 = getelementptr inbounds %class.b2EdgeShape* %7, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v2, %struct.b2Transform* %10, %struct.b2Vec2* %11)
  call void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %lower, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  call void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %upper, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  %12 = bitcast %class.b2EdgeShape* %7 to %class.b2Shape*
  %13 = getelementptr inbounds %class.b2Shape* %12, i32 0, i32 2
  %14 = load float* %13, align 4
  %15 = bitcast %class.b2EdgeShape* %7 to %class.b2Shape*
  %16 = getelementptr inbounds %class.b2Shape* %15, i32 0, i32 2
  %17 = load float* %16, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %r, float %14, float %17)
  %18 = load %struct.b2AABB** %2, align 4
  %19 = getelementptr inbounds %struct.b2AABB* %18, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %lower, %struct.b2Vec2* %r)
  %20 = bitcast %struct.b2Vec2* %19 to i8*
  %21 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = load %struct.b2AABB** %2, align 4
  %23 = getelementptr inbounds %struct.b2AABB* %22, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %upper, %struct.b2Vec2* %r)
  %24 = bitcast %struct.b2Vec2* %23 to i8*
  %25 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 8, i32 4, i1 false)
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

define void @_ZNK11b2EdgeShape11ComputeMassEP10b2MassDataf(%class.b2EdgeShape* %this, %struct.b2MassData* %massData, float %density) align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  store float %density, float* %3, align 4
  %6 = load %class.b2EdgeShape** %1
  %7 = load %struct.b2MassData** %2, align 4
  %8 = getelementptr inbounds %struct.b2MassData* %7, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = load %struct.b2MassData** %2, align 4
  %10 = getelementptr inbounds %struct.b2MassData* %9, i32 0, i32 1
  %11 = getelementptr inbounds %class.b2EdgeShape* %6, i32 0, i32 1
  %12 = getelementptr inbounds %class.b2EdgeShape* %6, i32 0, i32 2
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %11, %struct.b2Vec2* %12)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float 5.000000e-01, %struct.b2Vec2* %5)
  %13 = bitcast %struct.b2Vec2* %10 to i8*
  %14 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 8, i32 4, i1 false)
  %15 = load %struct.b2MassData** %2, align 4
  %16 = getelementptr inbounds %struct.b2MassData* %15, i32 0, i32 2
  store float 0.000000e+00, float* %16, align 4
  ret void
}

define linkonce_odr void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %2)
  ret void
}

define linkonce_odr void @_ZN11b2EdgeShapeD0Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %4 = load %class.b2EdgeShape** %1
  invoke void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2EdgeShape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2EdgeShape* %4 to i8*
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

define linkonce_odr void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  %3 = bitcast %class.b2EdgeShape* %2 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %3)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD2Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
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

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
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

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
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
