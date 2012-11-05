; ModuleID = 'Collision/b2Distance.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Vec2 = type { float, float }
%struct.b2DistanceProxy = type { [2 x %struct.b2Vec2], %struct.b2Vec2*, i32, float }
%class.b2Shape = type { i32 (...)**, i32, float }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%class.b2ChainShape = type { %class.b2Shape, %struct.b2Vec2*, i32, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%struct.b2Simplex = type { %struct.b2SimplexVertex, %struct.b2SimplexVertex, %struct.b2SimplexVertex, i32 }
%struct.b2SimplexVertex = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i32, i32 }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, float, i32 }
%struct.b2SimplexCache = type { float, i16, [3 x i8], [3 x i8] }
%struct.b2DistanceInput = type { %struct.b2DistanceProxy, %struct.b2DistanceProxy, %struct.b2Transform, %struct.b2Transform, i8 }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }

@b2_gjkCalls = global i32 0, align 4
@b2_gjkIters = global i32 0, align 4
@b2_gjkMaxIters = global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0 <= index && index < chain->m_count\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"Collision/b2Distance.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN15b2DistanceProxy3SetEPK7b2Shapei = private unnamed_addr constant [50 x i8] c"void b2DistanceProxy::Set(const b2Shape *, int32)\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__._Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput = private unnamed_addr constant [79 x i8] c"void b2Distance(b2DistanceOutput *, b2SimplexCache *, const b2DistanceInput *)\00", align 1
@__PRETTY_FUNCTION__._ZNK9b2Simplex9GetMetricEv = private unnamed_addr constant [37 x i8] c"float32 b2Simplex::GetMetric() const\00", align 1
@__PRETTY_FUNCTION__._ZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_ = private unnamed_addr constant [59 x i8] c"void b2Simplex::GetWitnessPoints(b2Vec2 *, b2Vec2 *) const\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"0 <= index && index < m_count\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"/usr/local/include/Box2D/Collision/b2Distance.h\00", align 1
@__PRETTY_FUNCTION__._ZNK15b2DistanceProxy9GetVertexEi = private unnamed_addr constant [54 x i8] c"const b2Vec2 &b2DistanceProxy::GetVertex(int32) const\00", align 1
@__PRETTY_FUNCTION__._ZNK9b2Simplex18GetSearchDirectionEv = private unnamed_addr constant [45 x i8] c"b2Vec2 b2Simplex::GetSearchDirection() const\00", align 1
@__PRETTY_FUNCTION__._ZNK9b2Simplex15GetClosestPointEv = private unnamed_addr constant [42 x i8] c"b2Vec2 b2Simplex::GetClosestPoint() const\00", align 1
@b2Vec2_zero = external global %struct.b2Vec2
@.str5 = private unnamed_addr constant [18 x i8] c"cache->count <= 3\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Simplex9ReadCacheEPK14b2SimplexCachePK15b2DistanceProxyRK11b2TransformS5_S8_ = private unnamed_addr constant [142 x i8] c"void b2Simplex::ReadCache(const b2SimplexCache *, const b2DistanceProxy *, const b2Transform &, const b2DistanceProxy *, const b2Transform &)\00", align 1

define void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy* %this, %class.b2Shape* %shape, i32 %index) align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  %2 = alloca %class.b2Shape*, align 4
  %3 = alloca i32, align 4
  %circle = alloca %class.b2CircleShape*, align 4
  %polygon = alloca %class.b2PolygonShape*, align 4
  %chain = alloca %class.b2ChainShape*, align 4
  %edge = alloca %class.b2EdgeShape*, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  store %class.b2Shape* %shape, %class.b2Shape** %2, align 4
  store i32 %index, i32* %3, align 4
  %4 = load %struct.b2DistanceProxy** %1
  %5 = load %class.b2Shape** %2, align 4
  %6 = call i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %5)
  switch i32 %6, label %107 [
    i32 0, label %7
    i32 2, label %19
    i32 3, label %35
    i32 1, label %95
  ]

; <label>:7                                       ; preds = %0
  %8 = load %class.b2Shape** %2, align 4
  %9 = bitcast %class.b2Shape* %8 to %class.b2CircleShape*
  store %class.b2CircleShape* %9, %class.b2CircleShape** %circle, align 4
  %10 = load %class.b2CircleShape** %circle, align 4
  %11 = getelementptr inbounds %class.b2CircleShape* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 1
  store %struct.b2Vec2* %11, %struct.b2Vec2** %12, align 4
  %13 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 2
  store i32 1, i32* %13, align 4
  %14 = load %class.b2CircleShape** %circle, align 4
  %15 = bitcast %class.b2CircleShape* %14 to %class.b2Shape*
  %16 = getelementptr inbounds %class.b2Shape* %15, i32 0, i32 2
  %17 = load float* %16, align 4
  %18 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 3
  store float %17, float* %18, align 4
  br label %108

; <label>:19                                      ; preds = %0
  %20 = load %class.b2Shape** %2, align 4
  %21 = bitcast %class.b2Shape* %20 to %class.b2PolygonShape*
  store %class.b2PolygonShape* %21, %class.b2PolygonShape** %polygon, align 4
  %22 = load %class.b2PolygonShape** %polygon, align 4
  %23 = getelementptr inbounds %class.b2PolygonShape* %22, i32 0, i32 2
  %24 = getelementptr inbounds [8 x %struct.b2Vec2]* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 1
  store %struct.b2Vec2* %24, %struct.b2Vec2** %25, align 4
  %26 = load %class.b2PolygonShape** %polygon, align 4
  %27 = getelementptr inbounds %class.b2PolygonShape* %26, i32 0, i32 4
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %class.b2PolygonShape** %polygon, align 4
  %31 = bitcast %class.b2PolygonShape* %30 to %class.b2Shape*
  %32 = getelementptr inbounds %class.b2Shape* %31, i32 0, i32 2
  %33 = load float* %32, align 4
  %34 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 3
  store float %33, float* %34, align 4
  br label %108

; <label>:35                                      ; preds = %0
  %36 = load %class.b2Shape** %2, align 4
  %37 = bitcast %class.b2Shape* %36 to %class.b2ChainShape*
  store %class.b2ChainShape* %37, %class.b2ChainShape** %chain, align 4
  %38 = load i32* %3, align 4
  %39 = icmp sle i32 0, %38
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %35
  %41 = load i32* %3, align 4
  %42 = load %class.b2ChainShape** %chain, align 4
  %43 = getelementptr inbounds %class.b2ChainShape* %42, i32 0, i32 2
  %44 = load i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %40
  br label %49

; <label>:47                                      ; preds = %40, %35
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__._ZN15b2DistanceProxy3SetEPK7b2Shapei, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.b2Vec2]* %50, i32 0, i32 0
  %52 = load i32* %3, align 4
  %53 = load %class.b2ChainShape** %chain, align 4
  %54 = getelementptr inbounds %class.b2ChainShape* %53, i32 0, i32 1
  %55 = load %struct.b2Vec2** %54, align 4
  %56 = getelementptr inbounds %struct.b2Vec2* %55, i32 %52
  %57 = bitcast %struct.b2Vec2* %51 to i8*
  %58 = bitcast %struct.b2Vec2* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %58, i32 8, i32 4, i1 false)
  %59 = load i32* %3, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %class.b2ChainShape** %chain, align 4
  %62 = getelementptr inbounds %class.b2ChainShape* %61, i32 0, i32 2
  %63 = load i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %76

; <label>:65                                      ; preds = %49
  %66 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.b2Vec2]* %66, i32 0, i32 1
  %68 = load i32* %3, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %class.b2ChainShape** %chain, align 4
  %71 = getelementptr inbounds %class.b2ChainShape* %70, i32 0, i32 1
  %72 = load %struct.b2Vec2** %71, align 4
  %73 = getelementptr inbounds %struct.b2Vec2* %72, i32 %69
  %74 = bitcast %struct.b2Vec2* %67 to i8*
  %75 = bitcast %struct.b2Vec2* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 8, i32 4, i1 false)
  br label %85

; <label>:76                                      ; preds = %49
  %77 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 0
  %78 = getelementptr inbounds [2 x %struct.b2Vec2]* %77, i32 0, i32 1
  %79 = load %class.b2ChainShape** %chain, align 4
  %80 = getelementptr inbounds %class.b2ChainShape* %79, i32 0, i32 1
  %81 = load %struct.b2Vec2** %80, align 4
  %82 = getelementptr inbounds %struct.b2Vec2* %81, i32 0
  %83 = bitcast %struct.b2Vec2* %78 to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  br label %85

; <label>:85                                      ; preds = %76, %65
  %86 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.b2Vec2]* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 1
  store %struct.b2Vec2* %87, %struct.b2Vec2** %88, align 4
  %89 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 2
  store i32 2, i32* %89, align 4
  %90 = load %class.b2ChainShape** %chain, align 4
  %91 = bitcast %class.b2ChainShape* %90 to %class.b2Shape*
  %92 = getelementptr inbounds %class.b2Shape* %91, i32 0, i32 2
  %93 = load float* %92, align 4
  %94 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 3
  store float %93, float* %94, align 4
  br label %108

; <label>:95                                      ; preds = %0
  %96 = load %class.b2Shape** %2, align 4
  %97 = bitcast %class.b2Shape* %96 to %class.b2EdgeShape*
  store %class.b2EdgeShape* %97, %class.b2EdgeShape** %edge, align 4
  %98 = load %class.b2EdgeShape** %edge, align 4
  %99 = getelementptr inbounds %class.b2EdgeShape* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 1
  store %struct.b2Vec2* %99, %struct.b2Vec2** %100, align 4
  %101 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 2
  store i32 2, i32* %101, align 4
  %102 = load %class.b2EdgeShape** %edge, align 4
  %103 = bitcast %class.b2EdgeShape* %102 to %class.b2Shape*
  %104 = getelementptr inbounds %class.b2Shape* %103, i32 0, i32 2
  %105 = load float* %104, align 4
  %106 = getelementptr inbounds %struct.b2DistanceProxy* %4, i32 0, i32 3
  store float %105, float* %106, align 4
  br label %108

; <label>:107                                     ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 81, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__._ZN15b2DistanceProxy3SetEPK7b2Shapei, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:108                                     ; preds = %95, %85, %19, %7
  ret void
}

define linkonce_odr i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = getelementptr inbounds %class.b2Shape* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @_ZN9b2Simplex6Solve2Ev(%struct.b2Simplex* %this) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %w1 = alloca %struct.b2Vec2, align 4
  %w2 = alloca %struct.b2Vec2, align 4
  %e12 = alloca %struct.b2Vec2, align 4
  %d12_2 = alloca float, align 4
  %d12_1 = alloca float, align 4
  %inv_d12 = alloca float, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %2 = load %struct.b2Simplex** %1
  %3 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.b2SimplexVertex* %3, i32 0, i32 2
  %5 = bitcast %struct.b2Vec2* %w1 to i8*
  %6 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 8, i32 4, i1 false)
  %7 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.b2SimplexVertex* %7, i32 0, i32 2
  %9 = bitcast %struct.b2Vec2* %w2 to i8*
  %10 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e12, %struct.b2Vec2* %w2, %struct.b2Vec2* %w1)
  %11 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w1, %struct.b2Vec2* %e12)
  %12 = fsub float -0.000000e+00, %11
  store float %12, float* %d12_2, align 4
  %13 = load float* %d12_2, align 4
  %14 = fcmp ole float %13, 0.000000e+00
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %17 = getelementptr inbounds %struct.b2SimplexVertex* %16, i32 0, i32 3
  store float 1.000000e+00, float* %17, align 4
  %18 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 1, i32* %18, align 4
  br label %47

; <label>:19                                      ; preds = %0
  %20 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w2, %struct.b2Vec2* %e12)
  store float %20, float* %d12_1, align 4
  %21 = load float* %d12_1, align 4
  %22 = fcmp ole float %21, 0.000000e+00
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2SimplexVertex* %24, i32 0, i32 3
  store float 1.000000e+00, float* %25, align 4
  %26 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %28 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %29 = bitcast %struct.b2SimplexVertex* %27 to i8*
  %30 = bitcast %struct.b2SimplexVertex* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 36, i32 4, i1 false)
  br label %47

; <label>:31                                      ; preds = %19
  %32 = load float* %d12_1, align 4
  %33 = load float* %d12_2, align 4
  %34 = fadd float %32, %33
  %35 = fdiv float 1.000000e+00, %34
  store float %35, float* %inv_d12, align 4
  %36 = load float* %d12_1, align 4
  %37 = load float* %inv_d12, align 4
  %38 = fmul float %36, %37
  %39 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %40 = getelementptr inbounds %struct.b2SimplexVertex* %39, i32 0, i32 3
  store float %38, float* %40, align 4
  %41 = load float* %d12_2, align 4
  %42 = load float* %inv_d12, align 4
  %43 = fmul float %41, %42
  %44 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.b2SimplexVertex* %44, i32 0, i32 3
  store float %43, float* %45, align 4
  %46 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 2, i32* %46, align 4
  br label %47

; <label>:47                                      ; preds = %31, %23, %15
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

define void @_ZN9b2Simplex6Solve3Ev(%struct.b2Simplex* %this) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %w1 = alloca %struct.b2Vec2, align 4
  %w2 = alloca %struct.b2Vec2, align 4
  %w3 = alloca %struct.b2Vec2, align 4
  %e12 = alloca %struct.b2Vec2, align 4
  %w1e12 = alloca float, align 4
  %w2e12 = alloca float, align 4
  %d12_1 = alloca float, align 4
  %d12_2 = alloca float, align 4
  %e13 = alloca %struct.b2Vec2, align 4
  %w1e13 = alloca float, align 4
  %w3e13 = alloca float, align 4
  %d13_1 = alloca float, align 4
  %d13_2 = alloca float, align 4
  %e23 = alloca %struct.b2Vec2, align 4
  %w2e23 = alloca float, align 4
  %w3e23 = alloca float, align 4
  %d23_1 = alloca float, align 4
  %d23_2 = alloca float, align 4
  %n123 = alloca float, align 4
  %d123_1 = alloca float, align 4
  %d123_2 = alloca float, align 4
  %d123_3 = alloca float, align 4
  %inv_d12 = alloca float, align 4
  %inv_d13 = alloca float, align 4
  %inv_d23 = alloca float, align 4
  %inv_d123 = alloca float, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %2 = load %struct.b2Simplex** %1
  %3 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.b2SimplexVertex* %3, i32 0, i32 2
  %5 = bitcast %struct.b2Vec2* %w1 to i8*
  %6 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 8, i32 4, i1 false)
  %7 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.b2SimplexVertex* %7, i32 0, i32 2
  %9 = bitcast %struct.b2Vec2* %w2 to i8*
  %10 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %11 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.b2SimplexVertex* %11, i32 0, i32 2
  %13 = bitcast %struct.b2Vec2* %w3 to i8*
  %14 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e12, %struct.b2Vec2* %w2, %struct.b2Vec2* %w1)
  %15 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w1, %struct.b2Vec2* %e12)
  store float %15, float* %w1e12, align 4
  %16 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w2, %struct.b2Vec2* %e12)
  store float %16, float* %w2e12, align 4
  %17 = load float* %w2e12, align 4
  store float %17, float* %d12_1, align 4
  %18 = load float* %w1e12, align 4
  %19 = fsub float -0.000000e+00, %18
  store float %19, float* %d12_2, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e13, %struct.b2Vec2* %w3, %struct.b2Vec2* %w1)
  %20 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w1, %struct.b2Vec2* %e13)
  store float %20, float* %w1e13, align 4
  %21 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w3, %struct.b2Vec2* %e13)
  store float %21, float* %w3e13, align 4
  %22 = load float* %w3e13, align 4
  store float %22, float* %d13_1, align 4
  %23 = load float* %w1e13, align 4
  %24 = fsub float -0.000000e+00, %23
  store float %24, float* %d13_2, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e23, %struct.b2Vec2* %w3, %struct.b2Vec2* %w2)
  %25 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w2, %struct.b2Vec2* %e23)
  store float %25, float* %w2e23, align 4
  %26 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %w3, %struct.b2Vec2* %e23)
  store float %26, float* %w3e23, align 4
  %27 = load float* %w3e23, align 4
  store float %27, float* %d23_1, align 4
  %28 = load float* %w2e23, align 4
  %29 = fsub float -0.000000e+00, %28
  store float %29, float* %d23_2, align 4
  %30 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %e12, %struct.b2Vec2* %e13)
  store float %30, float* %n123, align 4
  %31 = load float* %n123, align 4
  %32 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %w2, %struct.b2Vec2* %w3)
  %33 = fmul float %31, %32
  store float %33, float* %d123_1, align 4
  %34 = load float* %n123, align 4
  %35 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %w3, %struct.b2Vec2* %w1)
  %36 = fmul float %34, %35
  store float %36, float* %d123_2, align 4
  %37 = load float* %n123, align 4
  %38 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %w1, %struct.b2Vec2* %w2)
  %39 = fmul float %37, %38
  store float %39, float* %d123_3, align 4
  %40 = load float* %d12_2, align 4
  %41 = fcmp ole float %40, 0.000000e+00
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %0
  %43 = load float* %d13_2, align 4
  %44 = fcmp ole float %43, 0.000000e+00
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %47 = getelementptr inbounds %struct.b2SimplexVertex* %46, i32 0, i32 3
  store float 1.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %183

; <label>:49                                      ; preds = %42, %0
  %50 = load float* %d12_1, align 4
  %51 = fcmp ogt float %50, 0.000000e+00
  br i1 %51, label %52, label %74

; <label>:52                                      ; preds = %49
  %53 = load float* %d12_2, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %74

; <label>:55                                      ; preds = %52
  %56 = load float* %d123_3, align 4
  %57 = fcmp ole float %56, 0.000000e+00
  br i1 %57, label %58, label %74

; <label>:58                                      ; preds = %55
  %59 = load float* %d12_1, align 4
  %60 = load float* %d12_2, align 4
  %61 = fadd float %59, %60
  %62 = fdiv float 1.000000e+00, %61
  store float %62, float* %inv_d12, align 4
  %63 = load float* %d12_1, align 4
  %64 = load float* %inv_d12, align 4
  %65 = fmul float %63, %64
  %66 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %67 = getelementptr inbounds %struct.b2SimplexVertex* %66, i32 0, i32 3
  store float %65, float* %67, align 4
  %68 = load float* %d12_2, align 4
  %69 = load float* %inv_d12, align 4
  %70 = fmul float %68, %69
  %71 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %72 = getelementptr inbounds %struct.b2SimplexVertex* %71, i32 0, i32 3
  store float %70, float* %72, align 4
  %73 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 2, i32* %73, align 4
  br label %183

; <label>:74                                      ; preds = %55, %52, %49
  %75 = load float* %d13_1, align 4
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %103

; <label>:77                                      ; preds = %74
  %78 = load float* %d13_2, align 4
  %79 = fcmp ogt float %78, 0.000000e+00
  br i1 %79, label %80, label %103

; <label>:80                                      ; preds = %77
  %81 = load float* %d123_2, align 4
  %82 = fcmp ole float %81, 0.000000e+00
  br i1 %82, label %83, label %103

; <label>:83                                      ; preds = %80
  %84 = load float* %d13_1, align 4
  %85 = load float* %d13_2, align 4
  %86 = fadd float %84, %85
  %87 = fdiv float 1.000000e+00, %86
  store float %87, float* %inv_d13, align 4
  %88 = load float* %d13_1, align 4
  %89 = load float* %inv_d13, align 4
  %90 = fmul float %88, %89
  %91 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %92 = getelementptr inbounds %struct.b2SimplexVertex* %91, i32 0, i32 3
  store float %90, float* %92, align 4
  %93 = load float* %d13_2, align 4
  %94 = load float* %inv_d13, align 4
  %95 = fmul float %93, %94
  %96 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %97 = getelementptr inbounds %struct.b2SimplexVertex* %96, i32 0, i32 3
  store float %95, float* %97, align 4
  %98 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 2, i32* %98, align 4
  %99 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %100 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %101 = bitcast %struct.b2SimplexVertex* %99 to i8*
  %102 = bitcast %struct.b2SimplexVertex* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %101, i8* %102, i32 36, i32 4, i1 false)
  br label %183

; <label>:103                                     ; preds = %80, %77, %74
  %104 = load float* %d12_1, align 4
  %105 = fcmp ole float %104, 0.000000e+00
  br i1 %105, label %106, label %117

; <label>:106                                     ; preds = %103
  %107 = load float* %d23_2, align 4
  %108 = fcmp ole float %107, 0.000000e+00
  br i1 %108, label %109, label %117

; <label>:109                                     ; preds = %106
  %110 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %111 = getelementptr inbounds %struct.b2SimplexVertex* %110, i32 0, i32 3
  store float 1.000000e+00, float* %111, align 4
  %112 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %114 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %115 = bitcast %struct.b2SimplexVertex* %113 to i8*
  %116 = bitcast %struct.b2SimplexVertex* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 36, i32 4, i1 false)
  br label %183

; <label>:117                                     ; preds = %106, %103
  %118 = load float* %d13_1, align 4
  %119 = fcmp ole float %118, 0.000000e+00
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %117
  %121 = load float* %d23_1, align 4
  %122 = fcmp ole float %121, 0.000000e+00
  br i1 %122, label %123, label %131

; <label>:123                                     ; preds = %120
  %124 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %125 = getelementptr inbounds %struct.b2SimplexVertex* %124, i32 0, i32 3
  store float 1.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 1, i32* %126, align 4
  %127 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %128 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %129 = bitcast %struct.b2SimplexVertex* %127 to i8*
  %130 = bitcast %struct.b2SimplexVertex* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %129, i8* %130, i32 36, i32 4, i1 false)
  br label %183

; <label>:131                                     ; preds = %120, %117
  %132 = load float* %d23_1, align 4
  %133 = fcmp ogt float %132, 0.000000e+00
  br i1 %133, label %134, label %160

; <label>:134                                     ; preds = %131
  %135 = load float* %d23_2, align 4
  %136 = fcmp ogt float %135, 0.000000e+00
  br i1 %136, label %137, label %160

; <label>:137                                     ; preds = %134
  %138 = load float* %d123_1, align 4
  %139 = fcmp ole float %138, 0.000000e+00
  br i1 %139, label %140, label %160

; <label>:140                                     ; preds = %137
  %141 = load float* %d23_1, align 4
  %142 = load float* %d23_2, align 4
  %143 = fadd float %141, %142
  %144 = fdiv float 1.000000e+00, %143
  store float %144, float* %inv_d23, align 4
  %145 = load float* %d23_1, align 4
  %146 = load float* %inv_d23, align 4
  %147 = fmul float %145, %146
  %148 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %149 = getelementptr inbounds %struct.b2SimplexVertex* %148, i32 0, i32 3
  store float %147, float* %149, align 4
  %150 = load float* %d23_2, align 4
  %151 = load float* %inv_d23, align 4
  %152 = fmul float %150, %151
  %153 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %154 = getelementptr inbounds %struct.b2SimplexVertex* %153, i32 0, i32 3
  store float %152, float* %154, align 4
  %155 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 2, i32* %155, align 4
  %156 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %157 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %158 = bitcast %struct.b2SimplexVertex* %156 to i8*
  %159 = bitcast %struct.b2SimplexVertex* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 36, i32 4, i1 false)
  br label %183

; <label>:160                                     ; preds = %137, %134, %131
  %161 = load float* %d123_1, align 4
  %162 = load float* %d123_2, align 4
  %163 = fadd float %161, %162
  %164 = load float* %d123_3, align 4
  %165 = fadd float %163, %164
  %166 = fdiv float 1.000000e+00, %165
  store float %166, float* %inv_d123, align 4
  %167 = load float* %d123_1, align 4
  %168 = load float* %inv_d123, align 4
  %169 = fmul float %167, %168
  %170 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  %171 = getelementptr inbounds %struct.b2SimplexVertex* %170, i32 0, i32 3
  store float %169, float* %171, align 4
  %172 = load float* %d123_2, align 4
  %173 = load float* %inv_d123, align 4
  %174 = fmul float %172, %173
  %175 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  %176 = getelementptr inbounds %struct.b2SimplexVertex* %175, i32 0, i32 3
  store float %174, float* %176, align 4
  %177 = load float* %d123_3, align 4
  %178 = load float* %inv_d123, align 4
  %179 = fmul float %177, %178
  %180 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  %181 = getelementptr inbounds %struct.b2SimplexVertex* %180, i32 0, i32 3
  store float %179, float* %181, align 4
  %182 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 3
  store i32 3, i32* %182, align 4
  br label %183

; <label>:183                                     ; preds = %160, %140, %123, %109, %83, %58, %45
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

define void @_Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput(%struct.b2DistanceOutput* %output, %struct.b2SimplexCache* %cache, %struct.b2DistanceInput* %input) {
  %1 = alloca %struct.b2DistanceOutput*, align 4
  %2 = alloca %struct.b2SimplexCache*, align 4
  %3 = alloca %struct.b2DistanceInput*, align 4
  %proxyA = alloca %struct.b2DistanceProxy*, align 4
  %proxyB = alloca %struct.b2DistanceProxy*, align 4
  %transformA = alloca %struct.b2Transform, align 4
  %transformB = alloca %struct.b2Transform, align 4
  %simplex = alloca %struct.b2Simplex, align 4
  %vertices = alloca %struct.b2SimplexVertex*, align 4
  %k_maxIters = alloca i32, align 4
  %saveA = alloca [3 x i32], align 4
  %saveB = alloca [3 x i32], align 4
  %saveCount = alloca i32, align 4
  %closestPoint = alloca %struct.b2Vec2, align 4
  %distanceSqr1 = alloca float, align 4
  %distanceSqr2 = alloca float, align 4
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %vertex = alloca %struct.b2SimplexVertex*, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %wBLocal = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %duplicate = alloca i8, align 1
  %i1 = alloca i32, align 4
  %rA = alloca float, align 4
  %rB = alloca float, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  store %struct.b2DistanceOutput* %output, %struct.b2DistanceOutput** %1, align 4
  store %struct.b2SimplexCache* %cache, %struct.b2SimplexCache** %2, align 4
  store %struct.b2DistanceInput* %input, %struct.b2DistanceInput** %3, align 4
  %13 = load i32* @b2_gjkCalls, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @b2_gjkCalls, align 4
  %15 = load %struct.b2DistanceInput** %3, align 4
  %16 = getelementptr inbounds %struct.b2DistanceInput* %15, i32 0, i32 0
  store %struct.b2DistanceProxy* %16, %struct.b2DistanceProxy** %proxyA, align 4
  %17 = load %struct.b2DistanceInput** %3, align 4
  %18 = getelementptr inbounds %struct.b2DistanceInput* %17, i32 0, i32 1
  store %struct.b2DistanceProxy* %18, %struct.b2DistanceProxy** %proxyB, align 4
  %19 = load %struct.b2DistanceInput** %3, align 4
  %20 = getelementptr inbounds %struct.b2DistanceInput* %19, i32 0, i32 2
  %21 = bitcast %struct.b2Transform* %transformA to i8*
  %22 = bitcast %struct.b2Transform* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 16, i32 4, i1 false)
  %23 = load %struct.b2DistanceInput** %3, align 4
  %24 = getelementptr inbounds %struct.b2DistanceInput* %23, i32 0, i32 3
  %25 = bitcast %struct.b2Transform* %transformB to i8*
  %26 = bitcast %struct.b2Transform* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 16, i32 4, i1 false)
  call void @_ZN9b2SimplexC1Ev(%struct.b2Simplex* %simplex)
  %27 = load %struct.b2SimplexCache** %2, align 4
  %28 = load %struct.b2DistanceProxy** %proxyA, align 4
  %29 = load %struct.b2DistanceProxy** %proxyB, align 4
  call void @_ZN9b2Simplex9ReadCacheEPK14b2SimplexCachePK15b2DistanceProxyRK11b2TransformS5_S8_(%struct.b2Simplex* %simplex, %struct.b2SimplexCache* %27, %struct.b2DistanceProxy* %28, %struct.b2Transform* %transformA, %struct.b2DistanceProxy* %29, %struct.b2Transform* %transformB)
  %30 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 0
  store %struct.b2SimplexVertex* %30, %struct.b2SimplexVertex** %vertices, align 4
  store i32 20, i32* %k_maxIters, align 4
  store i32 0, i32* %saveCount, align 4
  call void @_ZNK9b2Simplex15GetClosestPointEv(%struct.b2Vec2* sret %closestPoint, %struct.b2Simplex* %simplex)
  %31 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %closestPoint)
  store float %31, float* %distanceSqr1, align 4
  %32 = load float* %distanceSqr1, align 4
  store float %32, float* %distanceSqr2, align 4
  store i32 0, i32* %iter, align 4
  br label %33

; <label>:33                                      ; preds = %157, %0
  %34 = load i32* %iter, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %161

; <label>:36                                      ; preds = %33
  %37 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 3
  %38 = load i32* %37, align 4
  store i32 %38, i32* %saveCount, align 4
  store i32 0, i32* %i, align 4
  br label %39

; <label>:39                                      ; preds = %58, %36
  %40 = load i32* %i, align 4
  %41 = load i32* %saveCount, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

; <label>:43                                      ; preds = %39
  %44 = load i32* %i, align 4
  %45 = load %struct.b2SimplexVertex** %vertices, align 4
  %46 = getelementptr inbounds %struct.b2SimplexVertex* %45, i32 %44
  %47 = getelementptr inbounds %struct.b2SimplexVertex* %46, i32 0, i32 4
  %48 = load i32* %47, align 4
  %49 = load i32* %i, align 4
  %50 = getelementptr inbounds [3 x i32]* %saveA, i32 0, i32 %49
  store i32 %48, i32* %50, align 4
  %51 = load i32* %i, align 4
  %52 = load %struct.b2SimplexVertex** %vertices, align 4
  %53 = getelementptr inbounds %struct.b2SimplexVertex* %52, i32 %51
  %54 = getelementptr inbounds %struct.b2SimplexVertex* %53, i32 0, i32 5
  %55 = load i32* %54, align 4
  %56 = load i32* %i, align 4
  %57 = getelementptr inbounds [3 x i32]* %saveB, i32 0, i32 %56
  store i32 %55, i32* %57, align 4
  br label %58

; <label>:58                                      ; preds = %43
  %59 = load i32* %i, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %i, align 4
  br label %39

; <label>:61                                      ; preds = %39
  %62 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 3
  %63 = load i32* %62, align 4
  switch i32 %63, label %66 [
    i32 1, label %67
    i32 2, label %64
    i32 3, label %65
  ]

; <label>:64                                      ; preds = %61
  call void @_ZN9b2Simplex6Solve2Ev(%struct.b2Simplex* %simplex)
  br label %67

; <label>:65                                      ; preds = %61
  call void @_ZN9b2Simplex6Solve3Ev(%struct.b2Simplex* %simplex)
  br label %67

; <label>:66                                      ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 498, i8* getelementptr inbounds ([79 x i8]* @__PRETTY_FUNCTION__._Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:67                                      ; preds = %65, %64, %61
  %68 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 3
  %69 = load i32* %68, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %67
  br label %161

; <label>:72                                      ; preds = %67
  call void @_ZNK9b2Simplex15GetClosestPointEv(%struct.b2Vec2* sret %p, %struct.b2Simplex* %simplex)
  %73 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %p)
  store float %73, float* %distanceSqr2, align 4
  %74 = load float* %distanceSqr2, align 4
  %75 = load float* %distanceSqr1, align 4
  %76 = fcmp oge float %74, %75
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %72
  br label %78

; <label>:78                                      ; preds = %77, %72
  %79 = load float* %distanceSqr2, align 4
  store float %79, float* %distanceSqr1, align 4
  call void @_ZNK9b2Simplex18GetSearchDirectionEv(%struct.b2Vec2* sret %d, %struct.b2Simplex* %simplex)
  %80 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %d)
  %81 = fcmp olt float %80, 0x3D10000000000000
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %78
  br label %161

; <label>:83                                      ; preds = %78
  %84 = load %struct.b2SimplexVertex** %vertices, align 4
  %85 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 3
  %86 = load i32* %85, align 4
  %87 = getelementptr inbounds %struct.b2SimplexVertex* %84, i32 %86
  store %struct.b2SimplexVertex* %87, %struct.b2SimplexVertex** %vertex, align 4
  %88 = load %struct.b2DistanceProxy** %proxyA, align 4
  %89 = getelementptr inbounds %struct.b2Transform* %transformA, i32 0, i32 1
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %5, %struct.b2Vec2* %d)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %4, %struct.b2Rot* %89, %struct.b2Vec2* %5)
  %90 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %88, %struct.b2Vec2* %4)
  %91 = load %struct.b2SimplexVertex** %vertex, align 4
  %92 = getelementptr inbounds %struct.b2SimplexVertex* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.b2SimplexVertex** %vertex, align 4
  %94 = getelementptr inbounds %struct.b2SimplexVertex* %93, i32 0, i32 0
  %95 = load %struct.b2DistanceProxy** %proxyA, align 4
  %96 = load %struct.b2SimplexVertex** %vertex, align 4
  %97 = getelementptr inbounds %struct.b2SimplexVertex* %96, i32 0, i32 4
  %98 = load i32* %97, align 4
  %99 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %95, i32 %98)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %6, %struct.b2Transform* %transformA, %struct.b2Vec2* %99)
  %100 = bitcast %struct.b2Vec2* %94 to i8*
  %101 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %100, i8* %101, i32 8, i32 4, i1 false)
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %wBLocal)
  %102 = load %struct.b2DistanceProxy** %proxyB, align 4
  %103 = getelementptr inbounds %struct.b2Transform* %transformB, i32 0, i32 1
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %103, %struct.b2Vec2* %d)
  %104 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %102, %struct.b2Vec2* %7)
  %105 = load %struct.b2SimplexVertex** %vertex, align 4
  %106 = getelementptr inbounds %struct.b2SimplexVertex* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.b2SimplexVertex** %vertex, align 4
  %108 = getelementptr inbounds %struct.b2SimplexVertex* %107, i32 0, i32 1
  %109 = load %struct.b2DistanceProxy** %proxyB, align 4
  %110 = load %struct.b2SimplexVertex** %vertex, align 4
  %111 = getelementptr inbounds %struct.b2SimplexVertex* %110, i32 0, i32 5
  %112 = load i32* %111, align 4
  %113 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %109, i32 %112)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %transformB, %struct.b2Vec2* %113)
  %114 = bitcast %struct.b2Vec2* %108 to i8*
  %115 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* %115, i32 8, i32 4, i1 false)
  %116 = load %struct.b2SimplexVertex** %vertex, align 4
  %117 = getelementptr inbounds %struct.b2SimplexVertex* %116, i32 0, i32 2
  %118 = load %struct.b2SimplexVertex** %vertex, align 4
  %119 = getelementptr inbounds %struct.b2SimplexVertex* %118, i32 0, i32 1
  %120 = load %struct.b2SimplexVertex** %vertex, align 4
  %121 = getelementptr inbounds %struct.b2SimplexVertex* %120, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %119, %struct.b2Vec2* %121)
  %122 = bitcast %struct.b2Vec2* %117 to i8*
  %123 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 8, i32 4, i1 false)
  %124 = load i32* %iter, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %iter, align 4
  %126 = load i32* @b2_gjkIters, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @b2_gjkIters, align 4
  store i8 0, i8* %duplicate, align 1
  store i32 0, i32* %i1, align 4
  br label %128

; <label>:128                                     ; preds = %150, %83
  %129 = load i32* %i1, align 4
  %130 = load i32* %saveCount, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %153

; <label>:132                                     ; preds = %128
  %133 = load %struct.b2SimplexVertex** %vertex, align 4
  %134 = getelementptr inbounds %struct.b2SimplexVertex* %133, i32 0, i32 4
  %135 = load i32* %134, align 4
  %136 = load i32* %i1, align 4
  %137 = getelementptr inbounds [3 x i32]* %saveA, i32 0, i32 %136
  %138 = load i32* %137, align 4
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %149

; <label>:140                                     ; preds = %132
  %141 = load %struct.b2SimplexVertex** %vertex, align 4
  %142 = getelementptr inbounds %struct.b2SimplexVertex* %141, i32 0, i32 5
  %143 = load i32* %142, align 4
  %144 = load i32* %i1, align 4
  %145 = getelementptr inbounds [3 x i32]* %saveB, i32 0, i32 %144
  %146 = load i32* %145, align 4
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %140
  store i8 1, i8* %duplicate, align 1
  br label %153

; <label>:149                                     ; preds = %140, %132
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32* %i1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i1, align 4
  br label %128

; <label>:153                                     ; preds = %148, %128
  %154 = load i8* %duplicate, align 1
  %155 = trunc i8 %154 to i1
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  br label %161

; <label>:157                                     ; preds = %153
  %158 = getelementptr inbounds %struct.b2Simplex* %simplex, i32 0, i32 3
  %159 = load i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %33

; <label>:161                                     ; preds = %156, %82, %71, %33
  %162 = load i32* @b2_gjkMaxIters, align 4
  %163 = load i32* %iter, align 4
  %164 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %162, i32 %163)
  store i32 %164, i32* @b2_gjkMaxIters, align 4
  %165 = load %struct.b2DistanceOutput** %1, align 4
  %166 = getelementptr inbounds %struct.b2DistanceOutput* %165, i32 0, i32 0
  %167 = load %struct.b2DistanceOutput** %1, align 4
  %168 = getelementptr inbounds %struct.b2DistanceOutput* %167, i32 0, i32 1
  call void @_ZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_(%struct.b2Simplex* %simplex, %struct.b2Vec2* %166, %struct.b2Vec2* %168)
  %169 = load %struct.b2DistanceOutput** %1, align 4
  %170 = getelementptr inbounds %struct.b2DistanceOutput* %169, i32 0, i32 0
  %171 = load %struct.b2DistanceOutput** %1, align 4
  %172 = getelementptr inbounds %struct.b2DistanceOutput* %171, i32 0, i32 1
  %173 = call float @_Z10b2DistanceRK6b2Vec2S1_(%struct.b2Vec2* %170, %struct.b2Vec2* %172)
  %174 = load %struct.b2DistanceOutput** %1, align 4
  %175 = getelementptr inbounds %struct.b2DistanceOutput* %174, i32 0, i32 2
  store float %173, float* %175, align 4
  %176 = load i32* %iter, align 4
  %177 = load %struct.b2DistanceOutput** %1, align 4
  %178 = getelementptr inbounds %struct.b2DistanceOutput* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load %struct.b2SimplexCache** %2, align 4
  call void @_ZNK9b2Simplex10WriteCacheEP14b2SimplexCache(%struct.b2Simplex* %simplex, %struct.b2SimplexCache* %179)
  %180 = load %struct.b2DistanceInput** %3, align 4
  %181 = getelementptr inbounds %struct.b2DistanceInput* %180, i32 0, i32 4
  %182 = load i8* %181, align 1
  %183 = trunc i8 %182 to i1
  br i1 %183, label %184, label %238

; <label>:184                                     ; preds = %161
  %185 = load %struct.b2DistanceProxy** %proxyA, align 4
  %186 = getelementptr inbounds %struct.b2DistanceProxy* %185, i32 0, i32 3
  %187 = load float* %186, align 4
  store float %187, float* %rA, align 4
  %188 = load %struct.b2DistanceProxy** %proxyB, align 4
  %189 = getelementptr inbounds %struct.b2DistanceProxy* %188, i32 0, i32 3
  %190 = load float* %189, align 4
  store float %190, float* %rB, align 4
  %191 = load %struct.b2DistanceOutput** %1, align 4
  %192 = getelementptr inbounds %struct.b2DistanceOutput* %191, i32 0, i32 2
  %193 = load float* %192, align 4
  %194 = load float* %rA, align 4
  %195 = load float* %rB, align 4
  %196 = fadd float %194, %195
  %197 = fcmp ogt float %193, %196
  br i1 %197, label %198, label %222

; <label>:198                                     ; preds = %184
  %199 = load %struct.b2DistanceOutput** %1, align 4
  %200 = getelementptr inbounds %struct.b2DistanceOutput* %199, i32 0, i32 2
  %201 = load float* %200, align 4
  %202 = fcmp ogt float %201, 0x3E80000000000000
  br i1 %202, label %203, label %222

; <label>:203                                     ; preds = %198
  %204 = load float* %rA, align 4
  %205 = load float* %rB, align 4
  %206 = fadd float %204, %205
  %207 = load %struct.b2DistanceOutput** %1, align 4
  %208 = getelementptr inbounds %struct.b2DistanceOutput* %207, i32 0, i32 2
  %209 = load float* %208, align 4
  %210 = fsub float %209, %206
  store float %210, float* %208, align 4
  %211 = load %struct.b2DistanceOutput** %1, align 4
  %212 = getelementptr inbounds %struct.b2DistanceOutput* %211, i32 0, i32 1
  %213 = load %struct.b2DistanceOutput** %1, align 4
  %214 = getelementptr inbounds %struct.b2DistanceOutput* %213, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %normal, %struct.b2Vec2* %212, %struct.b2Vec2* %214)
  %215 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %normal)
  %216 = load %struct.b2DistanceOutput** %1, align 4
  %217 = getelementptr inbounds %struct.b2DistanceOutput* %216, i32 0, i32 0
  %218 = load float* %rA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %218, %struct.b2Vec2* %normal)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %217, %struct.b2Vec2* %10)
  %219 = load %struct.b2DistanceOutput** %1, align 4
  %220 = getelementptr inbounds %struct.b2DistanceOutput* %219, i32 0, i32 1
  %221 = load float* %rB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %221, %struct.b2Vec2* %normal)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %220, %struct.b2Vec2* %11)
  br label %237

; <label>:222                                     ; preds = %198, %184
  %223 = load %struct.b2DistanceOutput** %1, align 4
  %224 = getelementptr inbounds %struct.b2DistanceOutput* %223, i32 0, i32 0
  %225 = load %struct.b2DistanceOutput** %1, align 4
  %226 = getelementptr inbounds %struct.b2DistanceOutput* %225, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %12, %struct.b2Vec2* %224, %struct.b2Vec2* %226)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %p2, float 5.000000e-01, %struct.b2Vec2* %12)
  %227 = load %struct.b2DistanceOutput** %1, align 4
  %228 = getelementptr inbounds %struct.b2DistanceOutput* %227, i32 0, i32 0
  %229 = bitcast %struct.b2Vec2* %228 to i8*
  %230 = bitcast %struct.b2Vec2* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %229, i8* %230, i32 8, i32 4, i1 false)
  %231 = load %struct.b2DistanceOutput** %1, align 4
  %232 = getelementptr inbounds %struct.b2DistanceOutput* %231, i32 0, i32 1
  %233 = bitcast %struct.b2Vec2* %232 to i8*
  %234 = bitcast %struct.b2Vec2* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %233, i8* %234, i32 8, i32 4, i1 false)
  %235 = load %struct.b2DistanceOutput** %1, align 4
  %236 = getelementptr inbounds %struct.b2DistanceOutput* %235, i32 0, i32 2
  store float 0.000000e+00, float* %236, align 4
  br label %237

; <label>:237                                     ; preds = %222, %203
  br label %238

; <label>:238                                     ; preds = %237, %161
  ret void
}

define linkonce_odr void @_ZN9b2SimplexC1Ev(%struct.b2Simplex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %2 = load %struct.b2Simplex** %1
  call void @_ZN9b2SimplexC2Ev(%struct.b2Simplex* %2)
  ret void
}

define linkonce_odr void @_ZN9b2Simplex9ReadCacheEPK14b2SimplexCachePK15b2DistanceProxyRK11b2TransformS5_S8_(%struct.b2Simplex* %this, %struct.b2SimplexCache* %cache, %struct.b2DistanceProxy* %proxyA, %struct.b2Transform* %transformA, %struct.b2DistanceProxy* %proxyB, %struct.b2Transform* %transformB) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %2 = alloca %struct.b2SimplexCache*, align 4
  %3 = alloca %struct.b2DistanceProxy*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %5 = alloca %struct.b2DistanceProxy*, align 4
  %6 = alloca %struct.b2Transform*, align 4
  %vertices = alloca %struct.b2SimplexVertex*, align 4
  %i = alloca i32, align 4
  %v = alloca %struct.b2SimplexVertex*, align 4
  %wALocal = alloca %struct.b2Vec2, align 4
  %wBLocal = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %metric1 = alloca float, align 4
  %metric2 = alloca float, align 4
  %v1 = alloca %struct.b2SimplexVertex*, align 4
  %wALocal2 = alloca %struct.b2Vec2, align 4
  %wBLocal3 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  store %struct.b2SimplexCache* %cache, %struct.b2SimplexCache** %2, align 4
  store %struct.b2DistanceProxy* %proxyA, %struct.b2DistanceProxy** %3, align 4
  store %struct.b2Transform* %transformA, %struct.b2Transform** %4, align 4
  store %struct.b2DistanceProxy* %proxyB, %struct.b2DistanceProxy** %5, align 4
  store %struct.b2Transform* %transformB, %struct.b2Transform** %6, align 4
  %13 = load %struct.b2Simplex** %1
  %14 = load %struct.b2SimplexCache** %2, align 4
  %15 = getelementptr inbounds %struct.b2SimplexCache* %14, i32 0, i32 1
  %16 = load i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 3
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %0
  br label %22

; <label>:20                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 102, i8* getelementptr inbounds ([142 x i8]* @__PRETTY_FUNCTION__._ZN9b2Simplex9ReadCacheEPK14b2SimplexCachePK15b2DistanceProxyRK11b2TransformS5_S8_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %struct.b2SimplexCache** %2, align 4
  %24 = getelementptr inbounds %struct.b2SimplexCache* %23, i32 0, i32 1
  %25 = load i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 0
  store %struct.b2SimplexVertex* %28, %struct.b2SimplexVertex** %vertices, align 4
  store i32 0, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %88, %22
  %30 = load i32* %i, align 4
  %31 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  %32 = load i32* %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %91

; <label>:34                                      ; preds = %29
  %35 = load %struct.b2SimplexVertex** %vertices, align 4
  %36 = load i32* %i, align 4
  %37 = getelementptr inbounds %struct.b2SimplexVertex* %35, i32 %36
  store %struct.b2SimplexVertex* %37, %struct.b2SimplexVertex** %v, align 4
  %38 = load i32* %i, align 4
  %39 = load %struct.b2SimplexCache** %2, align 4
  %40 = getelementptr inbounds %struct.b2SimplexCache* %39, i32 0, i32 2
  %41 = getelementptr inbounds [3 x i8]* %40, i32 0, i32 %38
  %42 = load i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.b2SimplexVertex** %v, align 4
  %45 = getelementptr inbounds %struct.b2SimplexVertex* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32* %i, align 4
  %47 = load %struct.b2SimplexCache** %2, align 4
  %48 = getelementptr inbounds %struct.b2SimplexCache* %47, i32 0, i32 3
  %49 = getelementptr inbounds [3 x i8]* %48, i32 0, i32 %46
  %50 = load i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.b2SimplexVertex** %v, align 4
  %53 = getelementptr inbounds %struct.b2SimplexVertex* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.b2DistanceProxy** %3, align 4
  %55 = load %struct.b2SimplexVertex** %v, align 4
  %56 = getelementptr inbounds %struct.b2SimplexVertex* %55, i32 0, i32 4
  %57 = load i32* %56, align 4
  %58 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %54, i32 %57)
  %59 = bitcast %struct.b2Vec2* %wALocal to i8*
  %60 = bitcast %struct.b2Vec2* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %59, i8* %60, i32 8, i32 4, i1 false)
  %61 = load %struct.b2DistanceProxy** %5, align 4
  %62 = load %struct.b2SimplexVertex** %v, align 4
  %63 = getelementptr inbounds %struct.b2SimplexVertex* %62, i32 0, i32 5
  %64 = load i32* %63, align 4
  %65 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %61, i32 %64)
  %66 = bitcast %struct.b2Vec2* %wBLocal to i8*
  %67 = bitcast %struct.b2Vec2* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 8, i32 4, i1 false)
  %68 = load %struct.b2SimplexVertex** %v, align 4
  %69 = getelementptr inbounds %struct.b2SimplexVertex* %68, i32 0, i32 0
  %70 = load %struct.b2Transform** %4
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Transform* %70, %struct.b2Vec2* %wALocal)
  %71 = bitcast %struct.b2Vec2* %69 to i8*
  %72 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %71, i8* %72, i32 8, i32 4, i1 false)
  %73 = load %struct.b2SimplexVertex** %v, align 4
  %74 = getelementptr inbounds %struct.b2SimplexVertex* %73, i32 0, i32 1
  %75 = load %struct.b2Transform** %6
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %75, %struct.b2Vec2* %wBLocal)
  %76 = bitcast %struct.b2Vec2* %74 to i8*
  %77 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %76, i8* %77, i32 8, i32 4, i1 false)
  %78 = load %struct.b2SimplexVertex** %v, align 4
  %79 = getelementptr inbounds %struct.b2SimplexVertex* %78, i32 0, i32 2
  %80 = load %struct.b2SimplexVertex** %v, align 4
  %81 = getelementptr inbounds %struct.b2SimplexVertex* %80, i32 0, i32 1
  %82 = load %struct.b2SimplexVertex** %v, align 4
  %83 = getelementptr inbounds %struct.b2SimplexVertex* %82, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %81, %struct.b2Vec2* %83)
  %84 = bitcast %struct.b2Vec2* %79 to i8*
  %85 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %85, i32 8, i32 4, i1 false)
  %86 = load %struct.b2SimplexVertex** %v, align 4
  %87 = getelementptr inbounds %struct.b2SimplexVertex* %86, i32 0, i32 3
  store float 0.000000e+00, float* %87, align 4
  br label %88

; <label>:88                                      ; preds = %34
  %89 = load i32* %i, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %i, align 4
  br label %29

; <label>:91                                      ; preds = %29
  %92 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  %93 = load i32* %92, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %115

; <label>:95                                      ; preds = %91
  %96 = load %struct.b2SimplexCache** %2, align 4
  %97 = getelementptr inbounds %struct.b2SimplexCache* %96, i32 0, i32 0
  %98 = load float* %97, align 4
  store float %98, float* %metric1, align 4
  %99 = call float @_ZNK9b2Simplex9GetMetricEv(%struct.b2Simplex* %13)
  store float %99, float* %metric2, align 4
  %100 = load float* %metric2, align 4
  %101 = load float* %metric1, align 4
  %102 = fmul float 5.000000e-01, %101
  %103 = fcmp olt float %100, %102
  br i1 %103, label %112, label %104

; <label>:104                                     ; preds = %95
  %105 = load float* %metric1, align 4
  %106 = fmul float 2.000000e+00, %105
  %107 = load float* %metric2, align 4
  %108 = fcmp olt float %106, %107
  br i1 %108, label %112, label %109

; <label>:109                                     ; preds = %104
  %110 = load float* %metric2, align 4
  %111 = fcmp olt float %110, 0x3E80000000000000
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109, %104, %95
  %113 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  store i32 0, i32* %113, align 4
  br label %114

; <label>:114                                     ; preds = %112, %109
  br label %115

; <label>:115                                     ; preds = %114, %91
  %116 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  %117 = load i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %153

; <label>:119                                     ; preds = %115
  %120 = load %struct.b2SimplexVertex** %vertices, align 4
  %121 = getelementptr inbounds %struct.b2SimplexVertex* %120, i32 0
  store %struct.b2SimplexVertex* %121, %struct.b2SimplexVertex** %v1, align 4
  %122 = load %struct.b2SimplexVertex** %v1, align 4
  %123 = getelementptr inbounds %struct.b2SimplexVertex* %122, i32 0, i32 4
  store i32 0, i32* %123, align 4
  %124 = load %struct.b2SimplexVertex** %v1, align 4
  %125 = getelementptr inbounds %struct.b2SimplexVertex* %124, i32 0, i32 5
  store i32 0, i32* %125, align 4
  %126 = load %struct.b2DistanceProxy** %3, align 4
  %127 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %126, i32 0)
  %128 = bitcast %struct.b2Vec2* %wALocal2 to i8*
  %129 = bitcast %struct.b2Vec2* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %128, i8* %129, i32 8, i32 4, i1 false)
  %130 = load %struct.b2DistanceProxy** %5, align 4
  %131 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %130, i32 0)
  %132 = bitcast %struct.b2Vec2* %wBLocal3 to i8*
  %133 = bitcast %struct.b2Vec2* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %132, i8* %133, i32 8, i32 4, i1 false)
  %134 = load %struct.b2SimplexVertex** %v1, align 4
  %135 = getelementptr inbounds %struct.b2SimplexVertex* %134, i32 0, i32 0
  %136 = load %struct.b2Transform** %4
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %10, %struct.b2Transform* %136, %struct.b2Vec2* %wALocal2)
  %137 = bitcast %struct.b2Vec2* %135 to i8*
  %138 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %137, i8* %138, i32 8, i32 4, i1 false)
  %139 = load %struct.b2SimplexVertex** %v1, align 4
  %140 = getelementptr inbounds %struct.b2SimplexVertex* %139, i32 0, i32 1
  %141 = load %struct.b2Transform** %6
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %11, %struct.b2Transform* %141, %struct.b2Vec2* %wBLocal3)
  %142 = bitcast %struct.b2Vec2* %140 to i8*
  %143 = bitcast %struct.b2Vec2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %142, i8* %143, i32 8, i32 4, i1 false)
  %144 = load %struct.b2SimplexVertex** %v1, align 4
  %145 = getelementptr inbounds %struct.b2SimplexVertex* %144, i32 0, i32 2
  %146 = load %struct.b2SimplexVertex** %v1, align 4
  %147 = getelementptr inbounds %struct.b2SimplexVertex* %146, i32 0, i32 1
  %148 = load %struct.b2SimplexVertex** %v1, align 4
  %149 = getelementptr inbounds %struct.b2SimplexVertex* %148, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %12, %struct.b2Vec2* %147, %struct.b2Vec2* %149)
  %150 = bitcast %struct.b2Vec2* %145 to i8*
  %151 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %150, i8* %151, i32 8, i32 4, i1 false)
  %152 = getelementptr inbounds %struct.b2Simplex* %13, i32 0, i32 3
  store i32 1, i32* %152, align 4
  br label %153

; <label>:153                                     ; preds = %119, %115
  ret void
}

define linkonce_odr void @_ZNK9b2Simplex15GetClosestPointEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Simplex* %this) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %4 = load %struct.b2Simplex** %1
  %5 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 3
  %6 = load i32* %5, align 4
  switch i32 %6, label %26 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %13
    i32 3, label %24
  ]

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([42 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex15GetClosestPointEv, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 0
  %10 = getelementptr inbounds %struct.b2SimplexVertex* %9, i32 0, i32 2
  %11 = bitcast %struct.b2Vec2* %agg.result to i8*
  %12 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  br label %27

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.b2SimplexVertex* %14, i32 0, i32 3
  %16 = load float* %15, align 4
  %17 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.b2SimplexVertex* %17, i32 0, i32 2
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %2, float %16, %struct.b2Vec2* %18)
  %19 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.b2SimplexVertex* %19, i32 0, i32 3
  %21 = load float* %20, align 4
  %22 = getelementptr inbounds %struct.b2Simplex* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.b2SimplexVertex* %22, i32 0, i32 2
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %3, float %21, %struct.b2Vec2* %23)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %agg.result, %struct.b2Vec2* %2, %struct.b2Vec2* %3)
  br label %27

; <label>:24                                      ; preds = %0
  %25 = bitcast %struct.b2Vec2* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* bitcast (%struct.b2Vec2* @b2Vec2_zero to i8*), i32 8, i32 4, i1 false)
  br label %27

; <label>:26                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([42 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex15GetClosestPointEv, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:27                                      ; preds = %24, %13, %8
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

define linkonce_odr void @_ZNK9b2Simplex18GetSearchDirectionEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Simplex* %this) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %e12 = alloca %struct.b2Vec2, align 4
  %sgn = alloca float, align 4
  %2 = alloca %struct.b2Vec2, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %3 = load %struct.b2Simplex** %1
  %4 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 3
  %5 = load i32* %4, align 4
  switch i32 %5, label %21 [
    i32 1, label %6
    i32 2, label %9
  ]

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.b2SimplexVertex* %7, i32 0, i32 2
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %agg.result, %struct.b2Vec2* %8)
  br label %22

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.b2SimplexVertex* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.b2SimplexVertex* %12, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e12, %struct.b2Vec2* %11, %struct.b2Vec2* %13)
  %14 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.b2SimplexVertex* %14, i32 0, i32 2
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %2, %struct.b2Vec2* %15)
  %16 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %e12, %struct.b2Vec2* %2)
  store float %16, float* %sgn, align 4
  %17 = load float* %sgn, align 4
  %18 = fcmp ogt float %17, 0.000000e+00
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %9
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float 1.000000e+00, %struct.b2Vec2* %e12)
  br label %22

; <label>:20                                      ; preds = %9
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %agg.result, %struct.b2Vec2* %e12, float 1.000000e+00)
  br label %22

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex18GetSearchDirectionEv, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %20, %19, %6
  ret void
}

define linkonce_odr i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %this, %struct.b2Vec2* %d) inlinehint align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %bestIndex = alloca i32, align 4
  %bestValue = alloca float, align 4
  %i = alloca i32, align 4
  %value = alloca float, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  store %struct.b2Vec2* %d, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2DistanceProxy** %1
  store i32 0, i32* %bestIndex, align 4
  %4 = getelementptr inbounds %struct.b2DistanceProxy* %3, i32 0, i32 1
  %5 = load %struct.b2Vec2** %4, align 4
  %6 = getelementptr inbounds %struct.b2Vec2* %5, i32 0
  %7 = load %struct.b2Vec2** %2
  %8 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %6, %struct.b2Vec2* %7)
  store float %8, float* %bestValue, align 4
  store i32 1, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %28, %0
  %10 = load i32* %i, align 4
  %11 = getelementptr inbounds %struct.b2DistanceProxy* %3, i32 0, i32 2
  %12 = load i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %31

; <label>:14                                      ; preds = %9
  %15 = load i32* %i, align 4
  %16 = getelementptr inbounds %struct.b2DistanceProxy* %3, i32 0, i32 1
  %17 = load %struct.b2Vec2** %16, align 4
  %18 = getelementptr inbounds %struct.b2Vec2* %17, i32 %15
  %19 = load %struct.b2Vec2** %2
  %20 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %18, %struct.b2Vec2* %19)
  store float %20, float* %value, align 4
  %21 = load float* %value, align 4
  %22 = load float* %bestValue, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %14
  %25 = load i32* %i, align 4
  store i32 %25, i32* %bestIndex, align 4
  %26 = load float* %value, align 4
  store float %26, float* %bestValue, align 4
  br label %27

; <label>:27                                      ; preds = %24, %14
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %9

; <label>:31                                      ; preds = %9
  %32 = load i32* %bestIndex, align 4
  ret i32 %32
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

define linkonce_odr %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %this, i32 %index) nounwind inlinehint align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  %2 = alloca i32, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  store i32 %index, i32* %2, align 4
  %3 = load %struct.b2DistanceProxy** %1
  %4 = load i32* %2, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = getelementptr inbounds %struct.b2DistanceProxy* %3, i32 0, i32 2
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6, %0
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8]* @.str4, i32 0, i32 0), i32 103, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__._ZNK15b2DistanceProxy9GetVertexEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %2, align 4
  %16 = getelementptr inbounds %struct.b2DistanceProxy* %3, i32 0, i32 1
  %17 = load %struct.b2Vec2** %16, align 4
  %18 = getelementptr inbounds %struct.b2Vec2* %17, i32 %15
  ret %struct.b2Vec2* %18
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
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

define linkonce_odr void @_ZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_(%struct.b2Simplex* %this, %struct.b2Vec2* %pA, %struct.b2Vec2* %pB) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  store %struct.b2Vec2* %pA, %struct.b2Vec2** %2, align 4
  store %struct.b2Vec2* %pB, %struct.b2Vec2** %3, align 4
  %15 = load %struct.b2Simplex** %1
  %16 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 3
  %17 = load i32* %16, align 4
  switch i32 %17, label %80 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %30
    i32 3, label %57
  ]

; <label>:18                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([59 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:19                                      ; preds = %0
  %20 = load %struct.b2Vec2** %2, align 4
  %21 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2SimplexVertex* %21, i32 0, i32 0
  %23 = bitcast %struct.b2Vec2* %20 to i8*
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  %25 = load %struct.b2Vec2** %3, align 4
  %26 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %27 = getelementptr inbounds %struct.b2SimplexVertex* %26, i32 0, i32 1
  %28 = bitcast %struct.b2Vec2* %25 to i8*
  %29 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  br label %81

; <label>:30                                      ; preds = %0
  %31 = load %struct.b2Vec2** %2, align 4
  %32 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %33 = getelementptr inbounds %struct.b2SimplexVertex* %32, i32 0, i32 3
  %34 = load float* %33, align 4
  %35 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %36 = getelementptr inbounds %struct.b2SimplexVertex* %35, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %34, %struct.b2Vec2* %36)
  %37 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %38 = getelementptr inbounds %struct.b2SimplexVertex* %37, i32 0, i32 3
  %39 = load float* %38, align 4
  %40 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %41 = getelementptr inbounds %struct.b2SimplexVertex* %40, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %39, %struct.b2Vec2* %41)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %5, %struct.b2Vec2* %6)
  %42 = bitcast %struct.b2Vec2* %31 to i8*
  %43 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = load %struct.b2Vec2** %3, align 4
  %45 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %46 = getelementptr inbounds %struct.b2SimplexVertex* %45, i32 0, i32 3
  %47 = load float* %46, align 4
  %48 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %49 = getelementptr inbounds %struct.b2SimplexVertex* %48, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %47, %struct.b2Vec2* %49)
  %50 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %51 = getelementptr inbounds %struct.b2SimplexVertex* %50, i32 0, i32 3
  %52 = load float* %51, align 4
  %53 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %54 = getelementptr inbounds %struct.b2SimplexVertex* %53, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %52, %struct.b2Vec2* %54)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %8, %struct.b2Vec2* %9)
  %55 = bitcast %struct.b2Vec2* %44 to i8*
  %56 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 8, i32 4, i1 false)
  br label %81

; <label>:57                                      ; preds = %0
  %58 = load %struct.b2Vec2** %2, align 4
  %59 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.b2SimplexVertex* %59, i32 0, i32 3
  %61 = load float* %60, align 4
  %62 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 0
  %63 = getelementptr inbounds %struct.b2SimplexVertex* %62, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %61, %struct.b2Vec2* %63)
  %64 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %65 = getelementptr inbounds %struct.b2SimplexVertex* %64, i32 0, i32 3
  %66 = load float* %65, align 4
  %67 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 1
  %68 = getelementptr inbounds %struct.b2SimplexVertex* %67, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %66, %struct.b2Vec2* %68)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %12, %struct.b2Vec2* %13)
  %69 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 2
  %70 = getelementptr inbounds %struct.b2SimplexVertex* %69, i32 0, i32 3
  %71 = load float* %70, align 4
  %72 = getelementptr inbounds %struct.b2Simplex* %15, i32 0, i32 2
  %73 = getelementptr inbounds %struct.b2SimplexVertex* %72, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %71, %struct.b2Vec2* %73)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %11, %struct.b2Vec2* %14)
  %74 = bitcast %struct.b2Vec2* %58 to i8*
  %75 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 8, i32 4, i1 false)
  %76 = load %struct.b2Vec2** %3, align 4
  %77 = load %struct.b2Vec2** %2, align 4
  %78 = bitcast %struct.b2Vec2* %76 to i8*
  %79 = bitcast %struct.b2Vec2* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 8, i32 4, i1 false)
  br label %81

; <label>:80                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 236, i8* getelementptr inbounds ([59 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:81                                      ; preds = %57, %30, %19
  ret void
}

define linkonce_odr float @_Z10b2DistanceRK6b2Vec2S1_(%struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %c = alloca %struct.b2Vec2, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load %struct.b2Vec2** %2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %c, %struct.b2Vec2* %3, %struct.b2Vec2* %4)
  %5 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %c)
  ret float %5
}

define linkonce_odr void @_ZNK9b2Simplex10WriteCacheEP14b2SimplexCache(%struct.b2Simplex* %this, %struct.b2SimplexCache* %cache) align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  %2 = alloca %struct.b2SimplexCache*, align 4
  %vertices = alloca %struct.b2SimplexVertex*, align 4
  %i = alloca i32, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  store %struct.b2SimplexCache* %cache, %struct.b2SimplexCache** %2, align 4
  %3 = load %struct.b2Simplex** %1
  %4 = call float @_ZNK9b2Simplex9GetMetricEv(%struct.b2Simplex* %3)
  %5 = load %struct.b2SimplexCache** %2, align 4
  %6 = getelementptr inbounds %struct.b2SimplexCache* %5, i32 0, i32 0
  store float %4, float* %6, align 4
  %7 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 3
  %8 = load i32* %7, align 4
  %9 = trunc i32 %8 to i16
  %10 = load %struct.b2SimplexCache** %2, align 4
  %11 = getelementptr inbounds %struct.b2SimplexCache* %10, i32 0, i32 1
  store i16 %9, i16* %11, align 2
  %12 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 0
  store %struct.b2SimplexVertex* %12, %struct.b2SimplexVertex** %vertices, align 4
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %39, %0
  %14 = load i32* %i, align 4
  %15 = getelementptr inbounds %struct.b2Simplex* %3, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %42

; <label>:18                                      ; preds = %13
  %19 = load i32* %i, align 4
  %20 = load %struct.b2SimplexVertex** %vertices, align 4
  %21 = getelementptr inbounds %struct.b2SimplexVertex* %20, i32 %19
  %22 = getelementptr inbounds %struct.b2SimplexVertex* %21, i32 0, i32 4
  %23 = load i32* %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i32* %i, align 4
  %26 = load %struct.b2SimplexCache** %2, align 4
  %27 = getelementptr inbounds %struct.b2SimplexCache* %26, i32 0, i32 2
  %28 = getelementptr inbounds [3 x i8]* %27, i32 0, i32 %25
  store i8 %24, i8* %28, align 1
  %29 = load i32* %i, align 4
  %30 = load %struct.b2SimplexVertex** %vertices, align 4
  %31 = getelementptr inbounds %struct.b2SimplexVertex* %30, i32 %29
  %32 = getelementptr inbounds %struct.b2SimplexVertex* %31, i32 0, i32 5
  %33 = load i32* %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32* %i, align 4
  %36 = load %struct.b2SimplexCache** %2, align 4
  %37 = getelementptr inbounds %struct.b2SimplexCache* %36, i32 0, i32 3
  %38 = getelementptr inbounds [3 x i8]* %37, i32 0, i32 %35
  store i8 %34, i8* %38, align 1
  br label %39

; <label>:39                                      ; preds = %18
  %40 = load i32* %i, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4
  br label %13

; <label>:42                                      ; preds = %13
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

define linkonce_odr void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %this, %struct.b2Vec2* %v) nounwind align 2 {
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
  %9 = fsub float %8, %6
  store float %9, float* %7, align 4
  %10 = load %struct.b2Vec2** %2
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fsub float %14, %12
  store float %15, float* %13, align 4
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

define linkonce_odr float @_ZNK9b2Simplex9GetMetricEv(%struct.b2Simplex* %this) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2Simplex*, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %2, align 4
  %5 = load %struct.b2Simplex** %2
  %6 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 3
  %7 = load i32* %6, align 4
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %16
  ]

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex9GetMetricEv, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:9                                       ; preds = %0
  store float 0.000000e+00, float* %1
  br label %27

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.b2SimplexVertex* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.b2SimplexVertex* %13, i32 0, i32 2
  %15 = call float @_Z10b2DistanceRK6b2Vec2S1_(%struct.b2Vec2* %12, %struct.b2Vec2* %14)
  store float %15, float* %1
  br label %27

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.b2SimplexVertex* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.b2SimplexVertex* %19, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %18, %struct.b2Vec2* %20)
  %21 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.b2SimplexVertex* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.b2Simplex* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.b2SimplexVertex* %23, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %22, %struct.b2Vec2* %24)
  %25 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %3, %struct.b2Vec2* %4)
  store float %25, float* %1
  br label %27

; <label>:26                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZNK9b2Simplex9GetMetricEv, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:27                                      ; preds = %16, %10, %9
  %28 = load float* %1
  ret float %28
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
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

define linkonce_odr void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, float %s, %struct.b2Vec2* %a) inlinehint {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store float %s, float* %1, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %2, align 4
  %3 = load float* %1, align 4
  %4 = fsub float -0.000000e+00, %3
  %5 = load %struct.b2Vec2** %2
  %6 = getelementptr inbounds %struct.b2Vec2* %5, i32 0, i32 1
  %7 = load float* %6, align 4
  %8 = fmul float %4, %7
  %9 = load float* %1, align 4
  %10 = load %struct.b2Vec2** %2
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = fmul float %9, %12
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %8, float %13)
  ret void
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

define linkonce_odr void @_ZN9b2SimplexC2Ev(%struct.b2Simplex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Simplex*, align 4
  store %struct.b2Simplex* %this, %struct.b2Simplex** %1, align 4
  %2 = load %struct.b2Simplex** %1
  %3 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 0
  call void @_ZN15b2SimplexVertexC1Ev(%struct.b2SimplexVertex* %3)
  %4 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 1
  call void @_ZN15b2SimplexVertexC1Ev(%struct.b2SimplexVertex* %4)
  %5 = getelementptr inbounds %struct.b2Simplex* %2, i32 0, i32 2
  call void @_ZN15b2SimplexVertexC1Ev(%struct.b2SimplexVertex* %5)
  ret void
}

define linkonce_odr void @_ZN15b2SimplexVertexC1Ev(%struct.b2SimplexVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2SimplexVertex*, align 4
  store %struct.b2SimplexVertex* %this, %struct.b2SimplexVertex** %1, align 4
  %2 = load %struct.b2SimplexVertex** %1
  call void @_ZN15b2SimplexVertexC2Ev(%struct.b2SimplexVertex* %2)
  ret void
}

define linkonce_odr void @_ZN15b2SimplexVertexC2Ev(%struct.b2SimplexVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2SimplexVertex*, align 4
  store %struct.b2SimplexVertex* %this, %struct.b2SimplexVertex** %1, align 4
  %2 = load %struct.b2SimplexVertex** %1
  %3 = getelementptr inbounds %struct.b2SimplexVertex* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2SimplexVertex* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  %5 = getelementptr inbounds %struct.b2SimplexVertex* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  ret void
}
