; ModuleID = 'Collision/Shapes/b2CircleShape.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Shape = type { i32 (...)**, i32, float }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
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

@_ZTV13b2CircleShape = unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI13b2CircleShape to i8*), i8* bitcast (void (%class.b2CircleShape*)* @_ZN13b2CircleShapeD1Ev to i8*), i8* bitcast (void (%class.b2CircleShape*)* @_ZN13b2CircleShapeD0Ev to i8*), i8* bitcast (%class.b2Shape* (%class.b2CircleShape*, %class.b2BlockAllocator*)* @_ZNK13b2CircleShape5CloneEP16b2BlockAllocator to i8*), i8* bitcast (i32 (%class.b2CircleShape*)* @_ZNK13b2CircleShape13GetChildCountEv to i8*), i8* bitcast (i1 (%class.b2CircleShape*, %struct.b2Transform*, %struct.b2Vec2*)* @_ZNK13b2CircleShape9TestPointERK11b2TransformRK6b2Vec2 to i8*), i8* bitcast (i1 (%class.b2CircleShape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)* @_ZNK13b2CircleShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi to i8*), i8* bitcast (void (%class.b2CircleShape*, %struct.b2AABB*, %struct.b2Transform*, i32)* @_ZNK13b2CircleShape11ComputeAABBEP6b2AABBRK11b2Transformi to i8*), i8* bitcast (void (%class.b2CircleShape*, %struct.b2MassData*, float)* @_ZNK13b2CircleShape11ComputeMassEP10b2MassDataf to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS13b2CircleShape = constant [16 x i8] c"13b2CircleShape\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Shape = linkonce_odr constant [9 x i8] c"7b2Shape\00"
@_ZTI7b2Shape = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Shape, i32 0, i32 0) }
@_ZTI13b2CircleShape = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([16 x i8]* @_ZTS13b2CircleShape, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*) }
@_ZTV7b2Shape = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD1Ev to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]

define %class.b2Shape* @_ZNK13b2CircleShape5CloneEP16b2BlockAllocator(%class.b2CircleShape* %this, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  %clone = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2CircleShape** %1
  %4 = load %class.b2BlockAllocator** %2, align 4
  %5 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %4, i32 20)
  store i8* %5, i8** %mem, align 4
  %6 = load i8** %mem, align 4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %class.b2CircleShape*
  call void @_ZN13b2CircleShapeC1Ev(%class.b2CircleShape* %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = phi %class.b2CircleShape* [ %9, %8 ], [ null, %0 ]
  store %class.b2CircleShape* %11, %class.b2CircleShape** %clone, align 4
  %12 = load %class.b2CircleShape** %clone, align 4
  %13 = call %class.b2CircleShape* @_ZN13b2CircleShapeaSERKS_(%class.b2CircleShape* %12, %class.b2CircleShape* %3) nounwind
  %14 = load %class.b2CircleShape** %clone, align 4
  %15 = bitcast %class.b2CircleShape* %14 to %class.b2Shape*
  ret %class.b2Shape* %15
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define linkonce_odr void @_ZN13b2CircleShapeC1Ev(%class.b2CircleShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %2 = load %class.b2CircleShape** %1
  call void @_ZN13b2CircleShapeC2Ev(%class.b2CircleShape* %2)
  ret void
}

define linkonce_odr %class.b2CircleShape* @_ZN13b2CircleShapeaSERKS_(%class.b2CircleShape* %this, %class.b2CircleShape*) nounwind inlinehint align 2 {
  %2 = alloca %class.b2CircleShape*, align 4
  %3 = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %2, align 4
  store %class.b2CircleShape* %0, %class.b2CircleShape** %3, align 4
  %4 = load %class.b2CircleShape** %2
  %5 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %6 = load %class.b2CircleShape** %3
  %7 = bitcast %class.b2CircleShape* %6 to %class.b2Shape*
  %8 = call %class.b2Shape* @_ZN7b2ShapeaSERKS_(%class.b2Shape* %5, %class.b2Shape* %7) nounwind
  %9 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  %10 = load %class.b2CircleShape** %3
  %11 = getelementptr inbounds %class.b2CircleShape* %10, i32 0, i32 1
  %12 = bitcast %struct.b2Vec2* %9 to i8*
  %13 = bitcast %struct.b2Vec2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  ret %class.b2CircleShape* %4
}

define i32 @_ZNK13b2CircleShape13GetChildCountEv(%class.b2CircleShape* %this) nounwind align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %2 = load %class.b2CircleShape** %1
  ret i32 1
}

define zeroext i1 @_ZNK13b2CircleShape9TestPointERK11b2TransformRK6b2Vec2(%class.b2CircleShape* %this, %struct.b2Transform* %transform, %struct.b2Vec2* %p) align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  %center = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  store %struct.b2Transform* %transform, %struct.b2Transform** %2, align 4
  store %struct.b2Vec2* %p, %struct.b2Vec2** %3, align 4
  %5 = load %class.b2CircleShape** %1
  %6 = load %struct.b2Transform** %2
  %7 = getelementptr inbounds %struct.b2Transform* %6, i32 0, i32 0
  %8 = load %struct.b2Transform** %2
  %9 = getelementptr inbounds %struct.b2Transform* %8, i32 0, i32 1
  %10 = getelementptr inbounds %class.b2CircleShape* %5, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %4, %struct.b2Rot* %9, %struct.b2Vec2* %10)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %center, %struct.b2Vec2* %7, %struct.b2Vec2* %4)
  %11 = load %struct.b2Vec2** %3
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %11, %struct.b2Vec2* %center)
  %12 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %d)
  %13 = bitcast %class.b2CircleShape* %5 to %class.b2Shape*
  %14 = getelementptr inbounds %class.b2Shape* %13, i32 0, i32 2
  %15 = load float* %14, align 4
  %16 = bitcast %class.b2CircleShape* %5 to %class.b2Shape*
  %17 = getelementptr inbounds %class.b2Shape* %16, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = fmul float %15, %18
  %20 = fcmp ole float %12, %19
  ret i1 %20
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

define zeroext i1 @_ZNK13b2CircleShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi(%class.b2CircleShape* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input, %struct.b2Transform* %transform, i32 %childIndex) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2CircleShape*, align 4
  %3 = alloca %struct.b2RayCastOutput*, align 4
  %4 = alloca %struct.b2RayCastInput*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca i32, align 4
  %position = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %s = alloca %struct.b2Vec2, align 4
  %b = alloca float, align 4
  %r = alloca %struct.b2Vec2, align 4
  %c = alloca float, align 4
  %rr = alloca float, align 4
  %sigma = alloca float, align 4
  %a = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %2, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %3, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %4, align 4
  store %struct.b2Transform* %transform, %struct.b2Transform** %5, align 4
  store i32 %childIndex, i32* %6, align 4
  %10 = load %class.b2CircleShape** %2
  %11 = load %struct.b2Transform** %5
  %12 = getelementptr inbounds %struct.b2Transform* %11, i32 0, i32 0
  %13 = load %struct.b2Transform** %5
  %14 = getelementptr inbounds %struct.b2Transform* %13, i32 0, i32 1
  %15 = getelementptr inbounds %class.b2CircleShape* %10, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %14, %struct.b2Vec2* %15)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %position, %struct.b2Vec2* %12, %struct.b2Vec2* %7)
  %16 = load %struct.b2RayCastInput** %4
  %17 = getelementptr inbounds %struct.b2RayCastInput* %16, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %s, %struct.b2Vec2* %17, %struct.b2Vec2* %position)
  %18 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %s, %struct.b2Vec2* %s)
  %19 = bitcast %class.b2CircleShape* %10 to %class.b2Shape*
  %20 = getelementptr inbounds %class.b2Shape* %19, i32 0, i32 2
  %21 = load float* %20, align 4
  %22 = bitcast %class.b2CircleShape* %10 to %class.b2Shape*
  %23 = getelementptr inbounds %class.b2Shape* %22, i32 0, i32 2
  %24 = load float* %23, align 4
  %25 = fmul float %21, %24
  %26 = fsub float %18, %25
  store float %26, float* %b, align 4
  %27 = load %struct.b2RayCastInput** %4
  %28 = getelementptr inbounds %struct.b2RayCastInput* %27, i32 0, i32 1
  %29 = load %struct.b2RayCastInput** %4
  %30 = getelementptr inbounds %struct.b2RayCastInput* %29, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %r, %struct.b2Vec2* %28, %struct.b2Vec2* %30)
  %31 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %s, %struct.b2Vec2* %r)
  store float %31, float* %c, align 4
  %32 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %r, %struct.b2Vec2* %r)
  store float %32, float* %rr, align 4
  %33 = load float* %c, align 4
  %34 = load float* %c, align 4
  %35 = fmul float %33, %34
  %36 = load float* %rr, align 4
  %37 = load float* %b, align 4
  %38 = fmul float %36, %37
  %39 = fsub float %35, %38
  store float %39, float* %sigma, align 4
  %40 = load float* %sigma, align 4
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %45, label %42

; <label>:42                                      ; preds = %0
  %43 = load float* %rr, align 4
  %44 = fcmp olt float %43, 0x3E80000000000000
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42, %0
  store i1 false, i1* %1
  br label %78

; <label>:46                                      ; preds = %42
  %47 = load float* %c, align 4
  %48 = load float* %sigma, align 4
  %49 = call float @_ZSt4sqrtf(float %48)
  %50 = fadd float %47, %49
  %51 = fsub float -0.000000e+00, %50
  store float %51, float* %a, align 4
  %52 = load float* %a, align 4
  %53 = fcmp ole float 0.000000e+00, %52
  br i1 %53, label %54, label %77

; <label>:54                                      ; preds = %46
  %55 = load float* %a, align 4
  %56 = load %struct.b2RayCastInput** %4
  %57 = getelementptr inbounds %struct.b2RayCastInput* %56, i32 0, i32 2
  %58 = load float* %57, align 4
  %59 = load float* %rr, align 4
  %60 = fmul float %58, %59
  %61 = fcmp ole float %55, %60
  br i1 %61, label %62, label %77

; <label>:62                                      ; preds = %54
  %63 = load float* %rr, align 4
  %64 = load float* %a, align 4
  %65 = fdiv float %64, %63
  store float %65, float* %a, align 4
  %66 = load float* %a, align 4
  %67 = load %struct.b2RayCastOutput** %3, align 4
  %68 = getelementptr inbounds %struct.b2RayCastOutput* %67, i32 0, i32 1
  store float %66, float* %68, align 4
  %69 = load %struct.b2RayCastOutput** %3, align 4
  %70 = getelementptr inbounds %struct.b2RayCastOutput* %69, i32 0, i32 0
  %71 = load float* %a, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %71, %struct.b2Vec2* %r)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %s, %struct.b2Vec2* %9)
  %72 = bitcast %struct.b2Vec2* %70 to i8*
  %73 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %73, i32 8, i32 4, i1 false)
  %74 = load %struct.b2RayCastOutput** %3, align 4
  %75 = getelementptr inbounds %struct.b2RayCastOutput* %74, i32 0, i32 0
  %76 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %75)
  store i1 true, i1* %1
  br label %78

; <label>:77                                      ; preds = %54, %46
  store i1 false, i1* %1
  br label %78

; <label>:78                                      ; preds = %77, %62, %45
  %79 = load i1* %1
  ret i1 %79
}

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
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

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

define void @_ZNK13b2CircleShape11ComputeAABBEP6b2AABBRK11b2Transformi(%class.b2CircleShape* %this, %struct.b2AABB* %aabb, %struct.b2Transform* %transform, i32 %childIndex) align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca i32, align 4
  %p = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store %struct.b2Transform* %transform, %struct.b2Transform** %3, align 4
  store i32 %childIndex, i32* %4, align 4
  %6 = load %class.b2CircleShape** %1
  %7 = load %struct.b2Transform** %3
  %8 = getelementptr inbounds %struct.b2Transform* %7, i32 0, i32 0
  %9 = load %struct.b2Transform** %3
  %10 = getelementptr inbounds %struct.b2Transform* %9, i32 0, i32 1
  %11 = getelementptr inbounds %class.b2CircleShape* %6, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %10, %struct.b2Vec2* %11)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %p, %struct.b2Vec2* %8, %struct.b2Vec2* %5)
  %12 = load %struct.b2AABB** %2, align 4
  %13 = getelementptr inbounds %struct.b2AABB* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.b2Vec2* %p, i32 0, i32 0
  %15 = load float* %14, align 4
  %16 = bitcast %class.b2CircleShape* %6 to %class.b2Shape*
  %17 = getelementptr inbounds %class.b2Shape* %16, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = fsub float %15, %18
  %20 = getelementptr inbounds %struct.b2Vec2* %p, i32 0, i32 1
  %21 = load float* %20, align 4
  %22 = bitcast %class.b2CircleShape* %6 to %class.b2Shape*
  %23 = getelementptr inbounds %class.b2Shape* %22, i32 0, i32 2
  %24 = load float* %23, align 4
  %25 = fsub float %21, %24
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %13, float %19, float %25)
  %26 = load %struct.b2AABB** %2, align 4
  %27 = getelementptr inbounds %struct.b2AABB* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.b2Vec2* %p, i32 0, i32 0
  %29 = load float* %28, align 4
  %30 = bitcast %class.b2CircleShape* %6 to %class.b2Shape*
  %31 = getelementptr inbounds %class.b2Shape* %30, i32 0, i32 2
  %32 = load float* %31, align 4
  %33 = fadd float %29, %32
  %34 = getelementptr inbounds %struct.b2Vec2* %p, i32 0, i32 1
  %35 = load float* %34, align 4
  %36 = bitcast %class.b2CircleShape* %6 to %class.b2Shape*
  %37 = getelementptr inbounds %class.b2Shape* %36, i32 0, i32 2
  %38 = load float* %37, align 4
  %39 = fadd float %35, %38
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %27, float %33, float %39)
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

define void @_ZNK13b2CircleShape11ComputeMassEP10b2MassDataf(%class.b2CircleShape* %this, %struct.b2MassData* %massData, float %density) align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  %3 = alloca float, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  store float %density, float* %3, align 4
  %4 = load %class.b2CircleShape** %1
  %5 = load float* %3, align 4
  %6 = fmul float %5, 0x400921FB60000000
  %7 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %8 = getelementptr inbounds %class.b2Shape* %7, i32 0, i32 2
  %9 = load float* %8, align 4
  %10 = fmul float %6, %9
  %11 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %12 = getelementptr inbounds %class.b2Shape* %11, i32 0, i32 2
  %13 = load float* %12, align 4
  %14 = fmul float %10, %13
  %15 = load %struct.b2MassData** %2, align 4
  %16 = getelementptr inbounds %struct.b2MassData* %15, i32 0, i32 0
  store float %14, float* %16, align 4
  %17 = load %struct.b2MassData** %2, align 4
  %18 = getelementptr inbounds %struct.b2MassData* %17, i32 0, i32 1
  %19 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  %20 = bitcast %struct.b2Vec2* %18 to i8*
  %21 = bitcast %struct.b2Vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = load %struct.b2MassData** %2, align 4
  %23 = getelementptr inbounds %struct.b2MassData* %22, i32 0, i32 0
  %24 = load float* %23, align 4
  %25 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %26 = getelementptr inbounds %class.b2Shape* %25, i32 0, i32 2
  %27 = load float* %26, align 4
  %28 = fmul float 5.000000e-01, %27
  %29 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %30 = getelementptr inbounds %class.b2Shape* %29, i32 0, i32 2
  %31 = load float* %30, align 4
  %32 = fmul float %28, %31
  %33 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  %34 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  %35 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %33, %struct.b2Vec2* %34)
  %36 = fadd float %32, %35
  %37 = fmul float %24, %36
  %38 = load %struct.b2MassData** %2, align 4
  %39 = getelementptr inbounds %struct.b2MassData* %38, i32 0, i32 2
  store float %37, float* %39, align 4
  ret void
}

define linkonce_odr void @_ZN13b2CircleShapeD1Ev(%class.b2CircleShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %2 = load %class.b2CircleShape** %1
  call void @_ZN13b2CircleShapeD2Ev(%class.b2CircleShape* %2)
  ret void
}

define linkonce_odr void @_ZN13b2CircleShapeD0Ev(%class.b2CircleShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %4 = load %class.b2CircleShape** %1
  invoke void @_ZN13b2CircleShapeD1Ev(%class.b2CircleShape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2CircleShape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2CircleShape* %4 to i8*
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

define linkonce_odr void @_ZN13b2CircleShapeD2Ev(%class.b2CircleShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %2 = load %class.b2CircleShape** %1
  %3 = bitcast %class.b2CircleShape* %2 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %3)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD2Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
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

declare float @sqrtf(float) nounwind readnone

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

define linkonce_odr void @_ZN13b2CircleShapeC2Ev(%class.b2CircleShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2CircleShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2CircleShape* %this, %class.b2CircleShape** %1, align 4
  %4 = load %class.b2CircleShape** %1
  %5 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeC2Ev(%class.b2Shape* %5) nounwind
  %6 = bitcast %class.b2CircleShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV13b2CircleShape, i64 0, i64 2), i8*** %6
  %7 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
          to label %8 unwind label %15

; <label>:8                                       ; preds = %0
  %9 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %10 = getelementptr inbounds %class.b2Shape* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  %12 = getelementptr inbounds %class.b2Shape* %11, i32 0, i32 2
  store float 0.000000e+00, float* %12, align 4
  %13 = getelementptr inbounds %class.b2CircleShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %13)
          to label %14 unwind label %15

; <label>:14                                      ; preds = %8
  ret void

; <label>:15                                      ; preds = %8, %0
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %2
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %3
  %19 = bitcast %class.b2CircleShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %19)
          to label %20 unwind label %27

; <label>:20                                      ; preds = %15
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i8** %2
  %23 = load i8** %2
  %24 = load i32* %3
  %25 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

; <label>:27                                      ; preds = %15
  %28 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

declare void @_ZSt9terminatev()

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}

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
