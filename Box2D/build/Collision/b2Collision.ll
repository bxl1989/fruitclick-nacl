; ModuleID = 'Collision/b2Collision.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2WorldManifold = type { %struct.b2Vec2, [2 x %struct.b2Vec2] }
%struct.b2Vec2 = type { float, float }
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2RayCastOutput = type { %struct.b2Vec2, float }
%struct.b2RayCastInput = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2ClipVertex = type { %struct.b2Vec2, %union.b2ContactID }
%struct.b2ContactFeature = type { i8, i8, i8, i8 }
%class.b2Shape = type opaque
%struct.b2DistanceInput = type { %struct.b2DistanceProxy, %struct.b2DistanceProxy, %struct.b2Transform, %struct.b2Transform, i8 }
%struct.b2DistanceProxy = type { [2 x %struct.b2Vec2], %struct.b2Vec2*, i32, float }
%struct.b2SimplexCache = type { float, i16, [3 x i8], [3 x i8] }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, float, i32 }

define void @_ZN15b2WorldManifold10InitializeEPK10b2ManifoldRK11b2TransformfS5_f(%struct.b2WorldManifold* %this, %struct.b2Manifold* %manifold, %struct.b2Transform* %xfA, float %radiusA, %struct.b2Transform* %xfB, float %radiusB) align 2 {
  %1 = alloca %struct.b2WorldManifold*, align 4
  %2 = alloca %struct.b2Manifold*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca float, align 4
  %pointA = alloca %struct.b2Vec2, align 4
  %pointB = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %planePoint = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %clipPoint = alloca %struct.b2Vec2, align 4
  %cA1 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %cB2 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %planePoint3 = alloca %struct.b2Vec2, align 4
  %i4 = alloca i32, align 4
  %clipPoint5 = alloca %struct.b2Vec2, align 4
  %cB6 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %cA7 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  %22 = alloca %struct.b2Vec2, align 4
  %23 = alloca %struct.b2Vec2, align 4
  %24 = alloca %struct.b2Vec2, align 4
  store %struct.b2WorldManifold* %this, %struct.b2WorldManifold** %1, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store float %radiusA, float* %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  store float %radiusB, float* %6, align 4
  %25 = load %struct.b2WorldManifold** %1
  %26 = load %struct.b2Manifold** %2, align 4
  %27 = getelementptr inbounds %struct.b2Manifold* %26, i32 0, i32 4
  %28 = load i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %0
  br label %146

; <label>:31                                      ; preds = %0
  %32 = load %struct.b2Manifold** %2, align 4
  %33 = getelementptr inbounds %struct.b2Manifold* %32, i32 0, i32 3
  %34 = load i32* %33, align 4
  switch i32 %34, label %146 [
    i32 0, label %35
    i32 1, label %62
    i32 2, label %102
  ]

; <label>:35                                      ; preds = %31
  %36 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %36, float 1.000000e+00, float 0.000000e+00)
  %37 = load %struct.b2Transform** %3
  %38 = load %struct.b2Manifold** %2, align 4
  %39 = getelementptr inbounds %struct.b2Manifold* %38, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA, %struct.b2Transform* %37, %struct.b2Vec2* %39)
  %40 = load %struct.b2Transform** %5
  %41 = load %struct.b2Manifold** %2, align 4
  %42 = getelementptr inbounds %struct.b2Manifold* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2ManifoldPoint* %43, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB, %struct.b2Transform* %40, %struct.b2Vec2* %44)
  %45 = call float @_Z17b2DistanceSquaredRK6b2Vec2S1_(%struct.b2Vec2* %pointA, %struct.b2Vec2* %pointB)
  %46 = fcmp ogt float %45, 0x3D10000000000000
  br i1 %46, label %47, label %53

; <label>:47                                      ; preds = %35
  %48 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %49 = bitcast %struct.b2Vec2* %48 to i8*
  %50 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 8, i32 4, i1 false)
  %51 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %52 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %51)
  br label %53

; <label>:53                                      ; preds = %47, %35
  %54 = load float* %4, align 4
  %55 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %54, %struct.b2Vec2* %55)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %cA, %struct.b2Vec2* %pointA, %struct.b2Vec2* %8)
  %56 = load float* %6, align 4
  %57 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %56, %struct.b2Vec2* %57)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %cB, %struct.b2Vec2* %pointB, %struct.b2Vec2* %9)
  %58 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 1
  %59 = getelementptr inbounds [2 x %struct.b2Vec2]* %58, i32 0, i32 0
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %cA, %struct.b2Vec2* %cB)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float 5.000000e-01, %struct.b2Vec2* %11)
  %60 = bitcast %struct.b2Vec2* %59 to i8*
  %61 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  br label %146

; <label>:62                                      ; preds = %31
  %63 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %64 = load %struct.b2Transform** %3
  %65 = getelementptr inbounds %struct.b2Transform* %64, i32 0, i32 1
  %66 = load %struct.b2Manifold** %2, align 4
  %67 = getelementptr inbounds %struct.b2Manifold* %66, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %12, %struct.b2Rot* %65, %struct.b2Vec2* %67)
  %68 = bitcast %struct.b2Vec2* %63 to i8*
  %69 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %68, i8* %69, i32 8, i32 4, i1 false)
  %70 = load %struct.b2Transform** %3
  %71 = load %struct.b2Manifold** %2, align 4
  %72 = getelementptr inbounds %struct.b2Manifold* %71, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %planePoint, %struct.b2Transform* %70, %struct.b2Vec2* %72)
  store i32 0, i32* %i, align 4
  br label %73

; <label>:73                                      ; preds = %98, %62
  %74 = load i32* %i, align 4
  %75 = load %struct.b2Manifold** %2, align 4
  %76 = getelementptr inbounds %struct.b2Manifold* %75, i32 0, i32 4
  %77 = load i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %101

; <label>:79                                      ; preds = %73
  %80 = load %struct.b2Transform** %5
  %81 = load i32* %i, align 4
  %82 = load %struct.b2Manifold** %2, align 4
  %83 = getelementptr inbounds %struct.b2Manifold* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %83, i32 0, i32 %81
  %85 = getelementptr inbounds %struct.b2ManifoldPoint* %84, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %clipPoint, %struct.b2Transform* %80, %struct.b2Vec2* %85)
  %86 = load float* %4, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %clipPoint, %struct.b2Vec2* %planePoint)
  %87 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %88 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %14, %struct.b2Vec2* %87)
  %89 = fsub float %86, %88
  %90 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %89, %struct.b2Vec2* %90)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %cA1, %struct.b2Vec2* %clipPoint, %struct.b2Vec2* %13)
  %91 = load float* %6, align 4
  %92 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %91, %struct.b2Vec2* %92)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %cB2, %struct.b2Vec2* %clipPoint, %struct.b2Vec2* %15)
  %93 = load i32* %i, align 4
  %94 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 1
  %95 = getelementptr inbounds [2 x %struct.b2Vec2]* %94, i32 0, i32 %93
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %17, %struct.b2Vec2* %cA1, %struct.b2Vec2* %cB2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %16, float 5.000000e-01, %struct.b2Vec2* %17)
  %96 = bitcast %struct.b2Vec2* %95 to i8*
  %97 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %96, i8* %97, i32 8, i32 4, i1 false)
  br label %98

; <label>:98                                      ; preds = %79
  %99 = load i32* %i, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %i, align 4
  br label %73

; <label>:101                                     ; preds = %73
  br label %146

; <label>:102                                     ; preds = %31
  %103 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %104 = load %struct.b2Transform** %5
  %105 = getelementptr inbounds %struct.b2Transform* %104, i32 0, i32 1
  %106 = load %struct.b2Manifold** %2, align 4
  %107 = getelementptr inbounds %struct.b2Manifold* %106, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %18, %struct.b2Rot* %105, %struct.b2Vec2* %107)
  %108 = bitcast %struct.b2Vec2* %103 to i8*
  %109 = bitcast %struct.b2Vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 8, i32 4, i1 false)
  %110 = load %struct.b2Transform** %5
  %111 = load %struct.b2Manifold** %2, align 4
  %112 = getelementptr inbounds %struct.b2Manifold* %111, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %planePoint3, %struct.b2Transform* %110, %struct.b2Vec2* %112)
  store i32 0, i32* %i4, align 4
  br label %113

; <label>:113                                     ; preds = %138, %102
  %114 = load i32* %i4, align 4
  %115 = load %struct.b2Manifold** %2, align 4
  %116 = getelementptr inbounds %struct.b2Manifold* %115, i32 0, i32 4
  %117 = load i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %141

; <label>:119                                     ; preds = %113
  %120 = load %struct.b2Transform** %3
  %121 = load i32* %i4, align 4
  %122 = load %struct.b2Manifold** %2, align 4
  %123 = getelementptr inbounds %struct.b2Manifold* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %123, i32 0, i32 %121
  %125 = getelementptr inbounds %struct.b2ManifoldPoint* %124, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %clipPoint5, %struct.b2Transform* %120, %struct.b2Vec2* %125)
  %126 = load float* %6, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %20, %struct.b2Vec2* %clipPoint5, %struct.b2Vec2* %planePoint3)
  %127 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %128 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %20, %struct.b2Vec2* %127)
  %129 = fsub float %126, %128
  %130 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %19, float %129, %struct.b2Vec2* %130)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %cB6, %struct.b2Vec2* %clipPoint5, %struct.b2Vec2* %19)
  %131 = load float* %4, align 4
  %132 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %21, float %131, %struct.b2Vec2* %132)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %cA7, %struct.b2Vec2* %clipPoint5, %struct.b2Vec2* %21)
  %133 = load i32* %i4, align 4
  %134 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 1
  %135 = getelementptr inbounds [2 x %struct.b2Vec2]* %134, i32 0, i32 %133
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %23, %struct.b2Vec2* %cA7, %struct.b2Vec2* %cB6)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %22, float 5.000000e-01, %struct.b2Vec2* %23)
  %136 = bitcast %struct.b2Vec2* %135 to i8*
  %137 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %136, i8* %137, i32 8, i32 4, i1 false)
  br label %138

; <label>:138                                     ; preds = %119
  %139 = load i32* %i4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %i4, align 4
  br label %113

; <label>:141                                     ; preds = %113
  %142 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  %143 = getelementptr inbounds %struct.b2WorldManifold* %25, i32 0, i32 0
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %24, %struct.b2Vec2* %143)
  %144 = bitcast %struct.b2Vec2* %142 to i8*
  %145 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %144, i8* %145, i32 8, i32 4, i1 false)
  br label %146

; <label>:146                                     ; preds = %30, %31, %141, %101, %53
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

define linkonce_odr float @_Z17b2DistanceSquaredRK6b2Vec2S1_(%struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %c = alloca %struct.b2Vec2, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load %struct.b2Vec2** %2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %c, %struct.b2Vec2* %3, %struct.b2Vec2* %4)
  %5 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %c, %struct.b2Vec2* %c)
  ret float %5
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

define void @_Z16b2GetPointStatesP12b2PointStateS0_PK10b2ManifoldS3_(i32* %state1, i32* %state2, %struct.b2Manifold* %manifold1, %struct.b2Manifold* %manifold2) nounwind {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca %struct.b2Manifold*, align 4
  %4 = alloca %struct.b2Manifold*, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %id = alloca %union.b2ContactID, align 4
  %j = alloca i32, align 4
  %i2 = alloca i32, align 4
  %id3 = alloca %union.b2ContactID, align 4
  %j4 = alloca i32, align 4
  store i32* %state1, i32** %1, align 4
  store i32* %state2, i32** %2, align 4
  store %struct.b2Manifold* %manifold1, %struct.b2Manifold** %3, align 4
  store %struct.b2Manifold* %manifold2, %struct.b2Manifold** %4, align 4
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %15, %0
  %6 = load i32* %i, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4
  %10 = load i32** %1, align 4
  %11 = getelementptr inbounds i32* %10, i32 %9
  store i32 0, i32* %11
  %12 = load i32* %i, align 4
  %13 = load i32** %2, align 4
  %14 = getelementptr inbounds i32* %13, i32 %12
  store i32 0, i32* %14
  br label %15

; <label>:15                                      ; preds = %8
  %16 = load i32* %i, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %5

; <label>:18                                      ; preds = %5
  store i32 0, i32* %i1, align 4
  br label %19

; <label>:19                                      ; preds = %62, %18
  %20 = load i32* %i1, align 4
  %21 = load %struct.b2Manifold** %3, align 4
  %22 = getelementptr inbounds %struct.b2Manifold* %21, i32 0, i32 4
  %23 = load i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %65

; <label>:25                                      ; preds = %19
  %26 = load i32* %i1, align 4
  %27 = load %struct.b2Manifold** %3, align 4
  %28 = getelementptr inbounds %struct.b2Manifold* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %28, i32 0, i32 %26
  %30 = getelementptr inbounds %struct.b2ManifoldPoint* %29, i32 0, i32 3
  %31 = bitcast %union.b2ContactID* %id to i8*
  %32 = bitcast %union.b2ContactID* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 4, i32 4, i1 false)
  %33 = load i32* %i1, align 4
  %34 = load i32** %1, align 4
  %35 = getelementptr inbounds i32* %34, i32 %33
  store i32 3, i32* %35
  store i32 0, i32* %j, align 4
  br label %36

; <label>:36                                      ; preds = %58, %25
  %37 = load i32* %j, align 4
  %38 = load %struct.b2Manifold** %4, align 4
  %39 = getelementptr inbounds %struct.b2Manifold* %38, i32 0, i32 4
  %40 = load i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %61

; <label>:42                                      ; preds = %36
  %43 = load i32* %j, align 4
  %44 = load %struct.b2Manifold** %4, align 4
  %45 = getelementptr inbounds %struct.b2Manifold* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %45, i32 0, i32 %43
  %47 = getelementptr inbounds %struct.b2ManifoldPoint* %46, i32 0, i32 3
  %48 = bitcast %union.b2ContactID* %47 to i32*
  %49 = load i32* %48, align 4
  %50 = bitcast %union.b2ContactID* %id to i32*
  %51 = load i32* %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

; <label>:53                                      ; preds = %42
  %54 = load i32* %i1, align 4
  %55 = load i32** %1, align 4
  %56 = getelementptr inbounds i32* %55, i32 %54
  store i32 2, i32* %56
  br label %61

; <label>:57                                      ; preds = %42
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load i32* %j, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %j, align 4
  br label %36

; <label>:61                                      ; preds = %53, %36
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i32* %i1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i1, align 4
  br label %19

; <label>:65                                      ; preds = %19
  store i32 0, i32* %i2, align 4
  br label %66

; <label>:66                                      ; preds = %109, %65
  %67 = load i32* %i2, align 4
  %68 = load %struct.b2Manifold** %4, align 4
  %69 = getelementptr inbounds %struct.b2Manifold* %68, i32 0, i32 4
  %70 = load i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %112

; <label>:72                                      ; preds = %66
  %73 = load i32* %i2, align 4
  %74 = load %struct.b2Manifold** %4, align 4
  %75 = getelementptr inbounds %struct.b2Manifold* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %75, i32 0, i32 %73
  %77 = getelementptr inbounds %struct.b2ManifoldPoint* %76, i32 0, i32 3
  %78 = bitcast %union.b2ContactID* %id3 to i8*
  %79 = bitcast %union.b2ContactID* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 4, i32 4, i1 false)
  %80 = load i32* %i2, align 4
  %81 = load i32** %2, align 4
  %82 = getelementptr inbounds i32* %81, i32 %80
  store i32 1, i32* %82
  store i32 0, i32* %j4, align 4
  br label %83

; <label>:83                                      ; preds = %105, %72
  %84 = load i32* %j4, align 4
  %85 = load %struct.b2Manifold** %3, align 4
  %86 = getelementptr inbounds %struct.b2Manifold* %85, i32 0, i32 4
  %87 = load i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %108

; <label>:89                                      ; preds = %83
  %90 = load i32* %j4, align 4
  %91 = load %struct.b2Manifold** %3, align 4
  %92 = getelementptr inbounds %struct.b2Manifold* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %92, i32 0, i32 %90
  %94 = getelementptr inbounds %struct.b2ManifoldPoint* %93, i32 0, i32 3
  %95 = bitcast %union.b2ContactID* %94 to i32*
  %96 = load i32* %95, align 4
  %97 = bitcast %union.b2ContactID* %id3 to i32*
  %98 = load i32* %97, align 4
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %104

; <label>:100                                     ; preds = %89
  %101 = load i32* %i2, align 4
  %102 = load i32** %2, align 4
  %103 = getelementptr inbounds i32* %102, i32 %101
  store i32 2, i32* %103
  br label %108

; <label>:104                                     ; preds = %89
  br label %105

; <label>:105                                     ; preds = %104
  %106 = load i32* %j4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %j4, align 4
  br label %83

; <label>:108                                     ; preds = %100, %83
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i32* %i2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i2, align 4
  br label %66

; <label>:112                                     ; preds = %66
  ret void
}

define zeroext i1 @_ZNK6b2AABB7RayCastEP15b2RayCastOutputRK14b2RayCastInput(%struct.b2AABB* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2RayCastOutput*, align 4
  %4 = alloca %struct.b2RayCastInput*, align 4
  %tmin = alloca float, align 4
  %tmax = alloca float, align 4
  %p = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %absD = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %inv_d = alloca float, align 4
  %t1 = alloca float, align 4
  %t2 = alloca float, align 4
  %s = alloca float, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %2, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %3, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %4, align 4
  %5 = load %struct.b2AABB** %2
  store float 0xC7EFFFFFE0000000, float* %tmin, align 4
  store float 0x47EFFFFFE0000000, float* %tmax, align 4
  %6 = load %struct.b2RayCastInput** %4
  %7 = getelementptr inbounds %struct.b2RayCastInput* %6, i32 0, i32 0
  %8 = bitcast %struct.b2Vec2* %p to i8*
  %9 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %10 = load %struct.b2RayCastInput** %4
  %11 = getelementptr inbounds %struct.b2RayCastInput* %10, i32 0, i32 1
  %12 = load %struct.b2RayCastInput** %4
  %13 = getelementptr inbounds %struct.b2RayCastInput* %12, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %11, %struct.b2Vec2* %13)
  call void @_Z5b2AbsRK6b2Vec2(%struct.b2Vec2* sret %absD, %struct.b2Vec2* %d)
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %normal)
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %86, %0
  %15 = load i32* %i, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %89

; <label>:17                                      ; preds = %14
  %18 = load i32* %i, align 4
  %19 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %absD, i32 %18)
  %20 = load float* %19
  %21 = fcmp olt float %20, 0x3E80000000000000
  br i1 %21, label %22, label %40

; <label>:22                                      ; preds = %17
  %23 = load i32* %i, align 4
  %24 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %p, i32 %23)
  %25 = load float* %24
  %26 = getelementptr inbounds %struct.b2AABB* %5, i32 0, i32 0
  %27 = load i32* %i, align 4
  %28 = call float @_ZNK6b2Vec2clEi(%struct.b2Vec2* %26, i32 %27)
  %29 = fcmp olt float %25, %28
  br i1 %29, label %38, label %30

; <label>:30                                      ; preds = %22
  %31 = getelementptr inbounds %struct.b2AABB* %5, i32 0, i32 1
  %32 = load i32* %i, align 4
  %33 = call float @_ZNK6b2Vec2clEi(%struct.b2Vec2* %31, i32 %32)
  %34 = load i32* %i, align 4
  %35 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %p, i32 %34)
  %36 = load float* %35
  %37 = fcmp olt float %33, %36
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %30, %22
  store i1 false, i1* %1
  br label %107

; <label>:39                                      ; preds = %30
  br label %85

; <label>:40                                      ; preds = %17
  %41 = load i32* %i, align 4
  %42 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %d, i32 %41)
  %43 = load float* %42
  %44 = fdiv float 1.000000e+00, %43
  store float %44, float* %inv_d, align 4
  %45 = getelementptr inbounds %struct.b2AABB* %5, i32 0, i32 0
  %46 = load i32* %i, align 4
  %47 = call float @_ZNK6b2Vec2clEi(%struct.b2Vec2* %45, i32 %46)
  %48 = load i32* %i, align 4
  %49 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %p, i32 %48)
  %50 = load float* %49
  %51 = fsub float %47, %50
  %52 = load float* %inv_d, align 4
  %53 = fmul float %51, %52
  store float %53, float* %t1, align 4
  %54 = getelementptr inbounds %struct.b2AABB* %5, i32 0, i32 1
  %55 = load i32* %i, align 4
  %56 = call float @_ZNK6b2Vec2clEi(%struct.b2Vec2* %54, i32 %55)
  %57 = load i32* %i, align 4
  %58 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %p, i32 %57)
  %59 = load float* %58
  %60 = fsub float %56, %59
  %61 = load float* %inv_d, align 4
  %62 = fmul float %60, %61
  store float %62, float* %t2, align 4
  store float -1.000000e+00, float* %s, align 4
  %63 = load float* %t1, align 4
  %64 = load float* %t2, align 4
  %65 = fcmp ogt float %63, %64
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %40
  call void @_Z6b2SwapIfEvRT_S1_(float* %t1, float* %t2)
  store float 1.000000e+00, float* %s, align 4
  br label %67

; <label>:67                                      ; preds = %66, %40
  %68 = load float* %t1, align 4
  %69 = load float* %tmin, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %76

; <label>:71                                      ; preds = %67
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %normal)
  %72 = load float* %s, align 4
  %73 = load i32* %i, align 4
  %74 = call float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %normal, i32 %73)
  store float %72, float* %74
  %75 = load float* %t1, align 4
  store float %75, float* %tmin, align 4
  br label %76

; <label>:76                                      ; preds = %71, %67
  %77 = load float* %tmax, align 4
  %78 = load float* %t2, align 4
  %79 = call float @_Z5b2MinIfET_S0_S0_(float %77, float %78)
  store float %79, float* %tmax, align 4
  %80 = load float* %tmin, align 4
  %81 = load float* %tmax, align 4
  %82 = fcmp ogt float %80, %81
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %76
  store i1 false, i1* %1
  br label %107

; <label>:84                                      ; preds = %76
  br label %85

; <label>:85                                      ; preds = %84, %39
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load i32* %i, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %i, align 4
  br label %14

; <label>:89                                      ; preds = %14
  %90 = load float* %tmin, align 4
  %91 = fcmp olt float %90, 0.000000e+00
  br i1 %91, label %98, label %92

; <label>:92                                      ; preds = %89
  %93 = load %struct.b2RayCastInput** %4
  %94 = getelementptr inbounds %struct.b2RayCastInput* %93, i32 0, i32 2
  %95 = load float* %94, align 4
  %96 = load float* %tmin, align 4
  %97 = fcmp olt float %95, %96
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92, %89
  store i1 false, i1* %1
  br label %107

; <label>:99                                      ; preds = %92
  %100 = load float* %tmin, align 4
  %101 = load %struct.b2RayCastOutput** %3, align 4
  %102 = getelementptr inbounds %struct.b2RayCastOutput* %101, i32 0, i32 1
  store float %100, float* %102, align 4
  %103 = load %struct.b2RayCastOutput** %3, align 4
  %104 = getelementptr inbounds %struct.b2RayCastOutput* %103, i32 0, i32 0
  %105 = bitcast %struct.b2Vec2* %104 to i8*
  %106 = bitcast %struct.b2Vec2* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %105, i8* %106, i32 8, i32 4, i1 false)
  store i1 true, i1* %1
  br label %107

; <label>:107                                     ; preds = %99, %98, %83, %38
  %108 = load i1* %1
  ret i1 %108
}

define linkonce_odr void @_Z5b2AbsRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = call float @_Z5b2AbsIfET_S0_(float %4)
  %6 = load %struct.b2Vec2** %1
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 1
  %8 = load float* %7, align 4
  %9 = call float @_Z5b2AbsIfET_S0_(float %8)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %5, float %9)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define linkonce_odr float* @_ZN6b2Vec2clEi(%struct.b2Vec2* %this, i32 %i) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca i32, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store i32 %i, i32* %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %6 = getelementptr inbounds float* %5, i32 %4
  ret float* %6
}

define linkonce_odr float @_ZNK6b2Vec2clEi(%struct.b2Vec2* %this, i32 %i) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca i32, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  store i32 %i, i32* %2, align 4
  %3 = load %struct.b2Vec2** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %6 = getelementptr inbounds float* %5, i32 %4
  %7 = load float* %6
  ret float %7
}

define linkonce_odr void @_Z6b2SwapIfEvRT_S1_(float* %a, float* %b) nounwind inlinehint {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %tmp = alloca float, align 4
  store float* %a, float** %1, align 4
  store float* %b, float** %2, align 4
  %3 = load float** %1
  %4 = load float* %3, align 4
  store float %4, float* %tmp, align 4
  %5 = load float** %2
  %6 = load float* %5, align 4
  %7 = load float** %1
  store float %6, float* %7, align 4
  %8 = load float* %tmp, align 4
  %9 = load float** %2
  store float %8, float* %9, align 4
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

define i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex* %vOut, %struct.b2ClipVertex* %vIn, %struct.b2Vec2* %normal, float %offset, i32 %vertexIndexA) {
  %1 = alloca %struct.b2ClipVertex*, align 4
  %2 = alloca %struct.b2ClipVertex*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %numOut = alloca i32, align 4
  %distance0 = alloca float, align 4
  %distance1 = alloca float, align 4
  %interp = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %struct.b2ClipVertex* %vOut, %struct.b2ClipVertex** %1, align 4
  store %struct.b2ClipVertex* %vIn, %struct.b2ClipVertex** %2, align 4
  store %struct.b2Vec2* %normal, %struct.b2Vec2** %3, align 4
  store float %offset, float* %4, align 4
  store i32 %vertexIndexA, i32* %5, align 4
  store i32 0, i32* %numOut, align 4
  %9 = load %struct.b2Vec2** %3
  %10 = load %struct.b2ClipVertex** %2, align 4
  %11 = getelementptr inbounds %struct.b2ClipVertex* %10, i32 0
  %12 = getelementptr inbounds %struct.b2ClipVertex* %11, i32 0, i32 0
  %13 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %9, %struct.b2Vec2* %12)
  %14 = load float* %4, align 4
  %15 = fsub float %13, %14
  store float %15, float* %distance0, align 4
  %16 = load %struct.b2Vec2** %3
  %17 = load %struct.b2ClipVertex** %2, align 4
  %18 = getelementptr inbounds %struct.b2ClipVertex* %17, i32 1
  %19 = getelementptr inbounds %struct.b2ClipVertex* %18, i32 0, i32 0
  %20 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %16, %struct.b2Vec2* %19)
  %21 = load float* %4, align 4
  %22 = fsub float %20, %21
  store float %22, float* %distance1, align 4
  %23 = load float* %distance0, align 4
  %24 = fcmp ole float %23, 0.000000e+00
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %0
  %26 = load i32* %numOut, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %numOut, align 4
  %28 = load %struct.b2ClipVertex** %1, align 4
  %29 = getelementptr inbounds %struct.b2ClipVertex* %28, i32 %26
  %30 = load %struct.b2ClipVertex** %2, align 4
  %31 = getelementptr inbounds %struct.b2ClipVertex* %30, i32 0
  %32 = bitcast %struct.b2ClipVertex* %29 to i8*
  %33 = bitcast %struct.b2ClipVertex* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 12, i32 4, i1 false)
  br label %34

; <label>:34                                      ; preds = %25, %0
  %35 = load float* %distance1, align 4
  %36 = fcmp ole float %35, 0.000000e+00
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %34
  %38 = load i32* %numOut, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %numOut, align 4
  %40 = load %struct.b2ClipVertex** %1, align 4
  %41 = getelementptr inbounds %struct.b2ClipVertex* %40, i32 %38
  %42 = load %struct.b2ClipVertex** %2, align 4
  %43 = getelementptr inbounds %struct.b2ClipVertex* %42, i32 1
  %44 = bitcast %struct.b2ClipVertex* %41 to i8*
  %45 = bitcast %struct.b2ClipVertex* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 12, i32 4, i1 false)
  br label %46

; <label>:46                                      ; preds = %37, %34
  %47 = load float* %distance0, align 4
  %48 = load float* %distance1, align 4
  %49 = fmul float %47, %48
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %51, label %107

; <label>:51                                      ; preds = %46
  %52 = load float* %distance0, align 4
  %53 = load float* %distance0, align 4
  %54 = load float* %distance1, align 4
  %55 = fsub float %53, %54
  %56 = fdiv float %52, %55
  store float %56, float* %interp, align 4
  %57 = load i32* %numOut, align 4
  %58 = load %struct.b2ClipVertex** %1, align 4
  %59 = getelementptr inbounds %struct.b2ClipVertex* %58, i32 %57
  %60 = getelementptr inbounds %struct.b2ClipVertex* %59, i32 0, i32 0
  %61 = load %struct.b2ClipVertex** %2, align 4
  %62 = getelementptr inbounds %struct.b2ClipVertex* %61, i32 0
  %63 = getelementptr inbounds %struct.b2ClipVertex* %62, i32 0, i32 0
  %64 = load float* %interp, align 4
  %65 = load %struct.b2ClipVertex** %2, align 4
  %66 = getelementptr inbounds %struct.b2ClipVertex* %65, i32 1
  %67 = getelementptr inbounds %struct.b2ClipVertex* %66, i32 0, i32 0
  %68 = load %struct.b2ClipVertex** %2, align 4
  %69 = getelementptr inbounds %struct.b2ClipVertex* %68, i32 0
  %70 = getelementptr inbounds %struct.b2ClipVertex* %69, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %67, %struct.b2Vec2* %70)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %64, %struct.b2Vec2* %8)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %63, %struct.b2Vec2* %7)
  %71 = bitcast %struct.b2Vec2* %60 to i8*
  %72 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %71, i8* %72, i32 8, i32 4, i1 false)
  %73 = load i32* %5, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i32* %numOut, align 4
  %76 = load %struct.b2ClipVertex** %1, align 4
  %77 = getelementptr inbounds %struct.b2ClipVertex* %76, i32 %75
  %78 = getelementptr inbounds %struct.b2ClipVertex* %77, i32 0, i32 1
  %79 = bitcast %union.b2ContactID* %78 to %struct.b2ContactFeature*
  %80 = getelementptr inbounds %struct.b2ContactFeature* %79, i32 0, i32 0
  store i8 %74, i8* %80, align 1
  %81 = load %struct.b2ClipVertex** %2, align 4
  %82 = getelementptr inbounds %struct.b2ClipVertex* %81, i32 0
  %83 = getelementptr inbounds %struct.b2ClipVertex* %82, i32 0, i32 1
  %84 = bitcast %union.b2ContactID* %83 to %struct.b2ContactFeature*
  %85 = getelementptr inbounds %struct.b2ContactFeature* %84, i32 0, i32 1
  %86 = load i8* %85, align 1
  %87 = load i32* %numOut, align 4
  %88 = load %struct.b2ClipVertex** %1, align 4
  %89 = getelementptr inbounds %struct.b2ClipVertex* %88, i32 %87
  %90 = getelementptr inbounds %struct.b2ClipVertex* %89, i32 0, i32 1
  %91 = bitcast %union.b2ContactID* %90 to %struct.b2ContactFeature*
  %92 = getelementptr inbounds %struct.b2ContactFeature* %91, i32 0, i32 1
  store i8 %86, i8* %92, align 1
  %93 = load i32* %numOut, align 4
  %94 = load %struct.b2ClipVertex** %1, align 4
  %95 = getelementptr inbounds %struct.b2ClipVertex* %94, i32 %93
  %96 = getelementptr inbounds %struct.b2ClipVertex* %95, i32 0, i32 1
  %97 = bitcast %union.b2ContactID* %96 to %struct.b2ContactFeature*
  %98 = getelementptr inbounds %struct.b2ContactFeature* %97, i32 0, i32 2
  store i8 0, i8* %98, align 1
  %99 = load i32* %numOut, align 4
  %100 = load %struct.b2ClipVertex** %1, align 4
  %101 = getelementptr inbounds %struct.b2ClipVertex* %100, i32 %99
  %102 = getelementptr inbounds %struct.b2ClipVertex* %101, i32 0, i32 1
  %103 = bitcast %union.b2ContactID* %102 to %struct.b2ContactFeature*
  %104 = getelementptr inbounds %struct.b2ContactFeature* %103, i32 0, i32 3
  store i8 1, i8* %104, align 1
  %105 = load i32* %numOut, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %numOut, align 4
  br label %107

; <label>:107                                     ; preds = %51, %46
  %108 = load i32* %numOut, align 4
  ret i32 %108
}

define zeroext i1 @_Z13b2TestOverlapPK7b2ShapeiS1_iRK11b2TransformS4_(%class.b2Shape* %shapeA, i32 %indexA, %class.b2Shape* %shapeB, i32 %indexB, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB) {
  %1 = alloca %class.b2Shape*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %class.b2Shape*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %6 = alloca %struct.b2Transform*, align 4
  %input = alloca %struct.b2DistanceInput, align 4
  %cache = alloca %struct.b2SimplexCache, align 4
  %output = alloca %struct.b2DistanceOutput, align 4
  store %class.b2Shape* %shapeA, %class.b2Shape** %1, align 4
  store i32 %indexA, i32* %2, align 4
  store %class.b2Shape* %shapeB, %class.b2Shape** %3, align 4
  store i32 %indexB, i32* %4, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %5, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %6, align 4
  call void @_ZN15b2DistanceInputC1Ev(%struct.b2DistanceInput* %input)
  %7 = getelementptr inbounds %struct.b2DistanceInput* %input, i32 0, i32 0
  %8 = load %class.b2Shape** %1, align 4
  %9 = load i32* %2, align 4
  call void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy* %7, %class.b2Shape* %8, i32 %9)
  %10 = getelementptr inbounds %struct.b2DistanceInput* %input, i32 0, i32 1
  %11 = load %class.b2Shape** %3, align 4
  %12 = load i32* %4, align 4
  call void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy* %10, %class.b2Shape* %11, i32 %12)
  %13 = getelementptr inbounds %struct.b2DistanceInput* %input, i32 0, i32 2
  %14 = load %struct.b2Transform** %5
  %15 = bitcast %struct.b2Transform* %13 to i8*
  %16 = bitcast %struct.b2Transform* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 16, i32 4, i1 false)
  %17 = getelementptr inbounds %struct.b2DistanceInput* %input, i32 0, i32 3
  %18 = load %struct.b2Transform** %6
  %19 = bitcast %struct.b2Transform* %17 to i8*
  %20 = bitcast %struct.b2Transform* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 16, i32 4, i1 false)
  %21 = getelementptr inbounds %struct.b2DistanceInput* %input, i32 0, i32 4
  store i8 1, i8* %21, align 1
  %22 = getelementptr inbounds %struct.b2SimplexCache* %cache, i32 0, i32 1
  store i16 0, i16* %22, align 2
  call void @_ZN16b2DistanceOutputC1Ev(%struct.b2DistanceOutput* %output)
  call void @_Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput(%struct.b2DistanceOutput* %output, %struct.b2SimplexCache* %cache, %struct.b2DistanceInput* %input)
  %23 = getelementptr inbounds %struct.b2DistanceOutput* %output, i32 0, i32 2
  %24 = load float* %23, align 4
  %25 = fcmp olt float %24, 0x3EB4000000000000
  ret i1 %25
}

define linkonce_odr void @_ZN15b2DistanceInputC1Ev(%struct.b2DistanceInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceInput*, align 4
  store %struct.b2DistanceInput* %this, %struct.b2DistanceInput** %1, align 4
  %2 = load %struct.b2DistanceInput** %1
  call void @_ZN15b2DistanceInputC2Ev(%struct.b2DistanceInput* %2)
  ret void
}

declare void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy*, %class.b2Shape*, i32)

define linkonce_odr void @_ZN16b2DistanceOutputC1Ev(%struct.b2DistanceOutput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceOutput*, align 4
  store %struct.b2DistanceOutput* %this, %struct.b2DistanceOutput** %1, align 4
  %2 = load %struct.b2DistanceOutput** %1
  call void @_ZN16b2DistanceOutputC2Ev(%struct.b2DistanceOutput* %2)
  ret void
}

declare void @_Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput(%struct.b2DistanceOutput*, %struct.b2SimplexCache*, %struct.b2DistanceInput*)

define linkonce_odr void @_ZN16b2DistanceOutputC2Ev(%struct.b2DistanceOutput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceOutput*, align 4
  store %struct.b2DistanceOutput* %this, %struct.b2DistanceOutput** %1, align 4
  %2 = load %struct.b2DistanceOutput** %1
  %3 = getelementptr inbounds %struct.b2DistanceOutput* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2DistanceOutput* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  ret void
}

define linkonce_odr void @_ZN15b2DistanceInputC2Ev(%struct.b2DistanceInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceInput*, align 4
  store %struct.b2DistanceInput* %this, %struct.b2DistanceInput** %1, align 4
  %2 = load %struct.b2DistanceInput** %1
  %3 = getelementptr inbounds %struct.b2DistanceInput* %2, i32 0, i32 0
  call void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %3)
  %4 = getelementptr inbounds %struct.b2DistanceInput* %2, i32 0, i32 1
  call void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %4)
  %5 = getelementptr inbounds %struct.b2DistanceInput* %2, i32 0, i32 2
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %5)
  %6 = getelementptr inbounds %struct.b2DistanceInput* %2, i32 0, i32 3
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %6)
  ret void
}

define linkonce_odr void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  %2 = load %struct.b2DistanceProxy** %1
  call void @_ZN15b2DistanceProxyC2Ev(%struct.b2DistanceProxy* %2)
  ret void
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
  ret void
}

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

define linkonce_odr void @_ZN15b2DistanceProxyC2Ev(%struct.b2DistanceProxy* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  %2 = load %struct.b2DistanceProxy** %1
  %3 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 0
  %4 = getelementptr inbounds [2 x %struct.b2Vec2]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 2
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %struct.b2Vec2* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 1
  %9 = icmp eq %struct.b2Vec2* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 1
  store %struct.b2Vec2* null, %struct.b2Vec2** %11, align 4
  %12 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 3
  store float 0.000000e+00, float* %13, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
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

define linkonce_odr float @_Z5b2AbsIfET_S0_(float %a) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %a, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = fcmp ogt float %2, 0.000000e+00
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load float* %1, align 4
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load float* %1, align 4
  %8 = fsub float -0.000000e+00, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi float [ %5, %4 ], [ %8, %6 ]
  ret float %10
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
