; ModuleID = 'Collision/b2CollideCircle.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%struct.b2Vec2 = type { float, float }
%union.b2ContactID = type { i32 }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }

define void @_Z16b2CollideCirclesP10b2ManifoldPK13b2CircleShapeRK11b2TransformS3_S6_(%struct.b2Manifold* %manifold, %class.b2CircleShape* %circleA, %struct.b2Transform* %xfA, %class.b2CircleShape* %circleB, %struct.b2Transform* %xfB) {
  %1 = alloca %struct.b2Manifold*, align 4
  %2 = alloca %class.b2CircleShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %class.b2CircleShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %pA = alloca %struct.b2Vec2, align 4
  %pB = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %distSqr = alloca float, align 4
  %rA = alloca float, align 4
  %rB = alloca float, align 4
  %radius = alloca float, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %1, align 4
  store %class.b2CircleShape* %circleA, %class.b2CircleShape** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %class.b2CircleShape* %circleB, %class.b2CircleShape** %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  %6 = load %struct.b2Manifold** %1, align 4
  %7 = getelementptr inbounds %struct.b2Manifold* %6, i32 0, i32 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.b2Transform** %3
  %9 = load %class.b2CircleShape** %2, align 4
  %10 = getelementptr inbounds %class.b2CircleShape* %9, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pA, %struct.b2Transform* %8, %struct.b2Vec2* %10)
  %11 = load %struct.b2Transform** %5
  %12 = load %class.b2CircleShape** %4, align 4
  %13 = getelementptr inbounds %class.b2CircleShape* %12, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pB, %struct.b2Transform* %11, %struct.b2Vec2* %13)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %pB, %struct.b2Vec2* %pA)
  %14 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %d)
  store float %14, float* %distSqr, align 4
  %15 = load %class.b2CircleShape** %2, align 4
  %16 = bitcast %class.b2CircleShape* %15 to %class.b2Shape*
  %17 = getelementptr inbounds %class.b2Shape* %16, i32 0, i32 2
  %18 = load float* %17, align 4
  store float %18, float* %rA, align 4
  %19 = load %class.b2CircleShape** %4, align 4
  %20 = bitcast %class.b2CircleShape* %19 to %class.b2Shape*
  %21 = getelementptr inbounds %class.b2Shape* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  store float %22, float* %rB, align 4
  %23 = load float* %rA, align 4
  %24 = load float* %rB, align 4
  %25 = fadd float %23, %24
  store float %25, float* %radius, align 4
  %26 = load float* %distSqr, align 4
  %27 = load float* %radius, align 4
  %28 = load float* %radius, align 4
  %29 = fmul float %27, %28
  %30 = fcmp ogt float %26, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %0
  br label %58

; <label>:32                                      ; preds = %0
  %33 = load %struct.b2Manifold** %1, align 4
  %34 = getelementptr inbounds %struct.b2Manifold* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  %35 = load %struct.b2Manifold** %1, align 4
  %36 = getelementptr inbounds %struct.b2Manifold* %35, i32 0, i32 2
  %37 = load %class.b2CircleShape** %2, align 4
  %38 = getelementptr inbounds %class.b2CircleShape* %37, i32 0, i32 1
  %39 = bitcast %struct.b2Vec2* %36 to i8*
  %40 = bitcast %struct.b2Vec2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 8, i32 4, i1 false)
  %41 = load %struct.b2Manifold** %1, align 4
  %42 = getelementptr inbounds %struct.b2Manifold* %41, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %42)
  %43 = load %struct.b2Manifold** %1, align 4
  %44 = getelementptr inbounds %struct.b2Manifold* %43, i32 0, i32 4
  store i32 1, i32* %44, align 4
  %45 = load %struct.b2Manifold** %1, align 4
  %46 = getelementptr inbounds %struct.b2Manifold* %45, i32 0, i32 0
  %47 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.b2ManifoldPoint* %47, i32 0, i32 0
  %49 = load %class.b2CircleShape** %4, align 4
  %50 = getelementptr inbounds %class.b2CircleShape* %49, i32 0, i32 1
  %51 = bitcast %struct.b2Vec2* %48 to i8*
  %52 = bitcast %struct.b2Vec2* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %51, i8* %52, i32 8, i32 4, i1 false)
  %53 = load %struct.b2Manifold** %1, align 4
  %54 = getelementptr inbounds %struct.b2Manifold* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.b2ManifoldPoint* %55, i32 0, i32 3
  %57 = bitcast %union.b2ContactID* %56 to i32*
  store i32 0, i32* %57, align 4
  br label %58

; <label>:58                                      ; preds = %32, %31
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

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

define void @_Z25b2CollidePolygonAndCircleP10b2ManifoldPK14b2PolygonShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold* %manifold, %class.b2PolygonShape* %polygonA, %struct.b2Transform* %xfA, %class.b2CircleShape* %circleB, %struct.b2Transform* %xfB) {
  %1 = alloca %struct.b2Manifold*, align 4
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %class.b2CircleShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %c = alloca %struct.b2Vec2, align 4
  %cLocal = alloca %struct.b2Vec2, align 4
  %normalIndex = alloca i32, align 4
  %separation = alloca float, align 4
  %radius = alloca float, align 4
  %vertexCount = alloca i32, align 4
  %vertices = alloca %struct.b2Vec2*, align 4
  %normals = alloca %struct.b2Vec2*, align 4
  %i = alloca i32, align 4
  %s = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %vertIndex1 = alloca i32, align 4
  %vertIndex2 = alloca i32, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %u1 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %u2 = alloca float, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %faceCenter = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %separation1 = alloca float, align 4
  %16 = alloca %struct.b2Vec2, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %1, align 4
  store %class.b2PolygonShape* %polygonA, %class.b2PolygonShape** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %class.b2CircleShape* %circleB, %class.b2CircleShape** %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  %17 = load %struct.b2Manifold** %1, align 4
  %18 = getelementptr inbounds %struct.b2Manifold* %17, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.b2Transform** %5
  %20 = load %class.b2CircleShape** %4, align 4
  %21 = getelementptr inbounds %class.b2CircleShape* %20, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %c, %struct.b2Transform* %19, %struct.b2Vec2* %21)
  %22 = load %struct.b2Transform** %3
  call void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %cLocal, %struct.b2Transform* %22, %struct.b2Vec2* %c)
  store i32 0, i32* %normalIndex, align 4
  store float 0xC7EFFFFFE0000000, float* %separation, align 4
  %23 = load %class.b2PolygonShape** %2, align 4
  %24 = bitcast %class.b2PolygonShape* %23 to %class.b2Shape*
  %25 = getelementptr inbounds %class.b2Shape* %24, i32 0, i32 2
  %26 = load float* %25, align 4
  %27 = load %class.b2CircleShape** %4, align 4
  %28 = bitcast %class.b2CircleShape* %27 to %class.b2Shape*
  %29 = getelementptr inbounds %class.b2Shape* %28, i32 0, i32 2
  %30 = load float* %29, align 4
  %31 = fadd float %26, %30
  store float %31, float* %radius, align 4
  %32 = load %class.b2PolygonShape** %2, align 4
  %33 = getelementptr inbounds %class.b2PolygonShape* %32, i32 0, i32 4
  %34 = load i32* %33, align 4
  store i32 %34, i32* %vertexCount, align 4
  %35 = load %class.b2PolygonShape** %2, align 4
  %36 = getelementptr inbounds %class.b2PolygonShape* %35, i32 0, i32 2
  %37 = getelementptr inbounds [8 x %struct.b2Vec2]* %36, i32 0, i32 0
  store %struct.b2Vec2* %37, %struct.b2Vec2** %vertices, align 4
  %38 = load %class.b2PolygonShape** %2, align 4
  %39 = getelementptr inbounds %class.b2PolygonShape* %38, i32 0, i32 3
  %40 = getelementptr inbounds [8 x %struct.b2Vec2]* %39, i32 0, i32 0
  store %struct.b2Vec2* %40, %struct.b2Vec2** %normals, align 4
  store i32 0, i32* %i, align 4
  br label %41

; <label>:41                                      ; preds = %65, %0
  %42 = load i32* %i, align 4
  %43 = load i32* %vertexCount, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

; <label>:45                                      ; preds = %41
  %46 = load i32* %i, align 4
  %47 = load %struct.b2Vec2** %normals, align 4
  %48 = getelementptr inbounds %struct.b2Vec2* %47, i32 %46
  %49 = load i32* %i, align 4
  %50 = load %struct.b2Vec2** %vertices, align 4
  %51 = getelementptr inbounds %struct.b2Vec2* %50, i32 %49
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %51)
  %52 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %48, %struct.b2Vec2* %6)
  store float %52, float* %s, align 4
  %53 = load float* %s, align 4
  %54 = load float* %radius, align 4
  %55 = fcmp ogt float %53, %54
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %45
  br label %240

; <label>:57                                      ; preds = %45
  %58 = load float* %s, align 4
  %59 = load float* %separation, align 4
  %60 = fcmp ogt float %58, %59
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %57
  %62 = load float* %s, align 4
  store float %62, float* %separation, align 4
  %63 = load i32* %i, align 4
  store i32 %63, i32* %normalIndex, align 4
  br label %64

; <label>:64                                      ; preds = %61, %57
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i32* %i, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %i, align 4
  br label %41

; <label>:68                                      ; preds = %41
  %69 = load i32* %normalIndex, align 4
  store i32 %69, i32* %vertIndex1, align 4
  %70 = load i32* %vertIndex1, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32* %vertexCount, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %68
  %75 = load i32* %vertIndex1, align 4
  %76 = add nsw i32 %75, 1
  br label %78

; <label>:77                                      ; preds = %68
  br label %78

; <label>:78                                      ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  store i32 %79, i32* %vertIndex2, align 4
  %80 = load i32* %vertIndex1, align 4
  %81 = load %struct.b2Vec2** %vertices, align 4
  %82 = getelementptr inbounds %struct.b2Vec2* %81, i32 %80
  %83 = bitcast %struct.b2Vec2* %v1 to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  %85 = load i32* %vertIndex2, align 4
  %86 = load %struct.b2Vec2** %vertices, align 4
  %87 = getelementptr inbounds %struct.b2Vec2* %86, i32 %85
  %88 = bitcast %struct.b2Vec2* %v2 to i8*
  %89 = bitcast %struct.b2Vec2* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %88, i8* %89, i32 8, i32 4, i1 false)
  %90 = load float* %separation, align 4
  %91 = fcmp olt float %90, 0x3E80000000000000
  br i1 %91, label %92, label %121

; <label>:92                                      ; preds = %78
  %93 = load %struct.b2Manifold** %1, align 4
  %94 = getelementptr inbounds %struct.b2Manifold* %93, i32 0, i32 4
  store i32 1, i32* %94, align 4
  %95 = load %struct.b2Manifold** %1, align 4
  %96 = getelementptr inbounds %struct.b2Manifold* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.b2Manifold** %1, align 4
  %98 = getelementptr inbounds %struct.b2Manifold* %97, i32 0, i32 1
  %99 = load i32* %normalIndex, align 4
  %100 = load %struct.b2Vec2** %normals, align 4
  %101 = getelementptr inbounds %struct.b2Vec2* %100, i32 %99
  %102 = bitcast %struct.b2Vec2* %98 to i8*
  %103 = bitcast %struct.b2Vec2* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 8, i32 4, i1 false)
  %104 = load %struct.b2Manifold** %1, align 4
  %105 = getelementptr inbounds %struct.b2Manifold* %104, i32 0, i32 2
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float 5.000000e-01, %struct.b2Vec2* %8)
  %106 = bitcast %struct.b2Vec2* %105 to i8*
  %107 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %106, i8* %107, i32 8, i32 4, i1 false)
  %108 = load %struct.b2Manifold** %1, align 4
  %109 = getelementptr inbounds %struct.b2Manifold* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.b2ManifoldPoint* %110, i32 0, i32 0
  %112 = load %class.b2CircleShape** %4, align 4
  %113 = getelementptr inbounds %class.b2CircleShape* %112, i32 0, i32 1
  %114 = bitcast %struct.b2Vec2* %111 to i8*
  %115 = bitcast %struct.b2Vec2* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* %115, i32 8, i32 4, i1 false)
  %116 = load %struct.b2Manifold** %1, align 4
  %117 = getelementptr inbounds %struct.b2Manifold* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.b2ManifoldPoint* %118, i32 0, i32 3
  %120 = bitcast %union.b2ContactID* %119 to i32*
  store i32 0, i32* %120, align 4
  br label %240

; <label>:121                                     ; preds = %78
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %v1)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %v2, %struct.b2Vec2* %v1)
  %122 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %9, %struct.b2Vec2* %10)
  store float %122, float* %u1, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %v2)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %12, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  %123 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %11, %struct.b2Vec2* %12)
  store float %123, float* %u2, align 4
  %124 = load float* %u1, align 4
  %125 = fcmp ole float %124, 0.000000e+00
  br i1 %125, label %126, label %162

; <label>:126                                     ; preds = %121
  %127 = call float @_Z17b2DistanceSquaredRK6b2Vec2S1_(%struct.b2Vec2* %cLocal, %struct.b2Vec2* %v1)
  %128 = load float* %radius, align 4
  %129 = load float* %radius, align 4
  %130 = fmul float %128, %129
  %131 = fcmp ogt float %127, %130
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %126
  br label %240

; <label>:133                                     ; preds = %126
  %134 = load %struct.b2Manifold** %1, align 4
  %135 = getelementptr inbounds %struct.b2Manifold* %134, i32 0, i32 4
  store i32 1, i32* %135, align 4
  %136 = load %struct.b2Manifold** %1, align 4
  %137 = getelementptr inbounds %struct.b2Manifold* %136, i32 0, i32 3
  store i32 1, i32* %137, align 4
  %138 = load %struct.b2Manifold** %1, align 4
  %139 = getelementptr inbounds %struct.b2Manifold* %138, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %13, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %v1)
  %140 = bitcast %struct.b2Vec2* %139 to i8*
  %141 = bitcast %struct.b2Vec2* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %141, i32 8, i32 4, i1 false)
  %142 = load %struct.b2Manifold** %1, align 4
  %143 = getelementptr inbounds %struct.b2Manifold* %142, i32 0, i32 1
  %144 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %143)
  %145 = load %struct.b2Manifold** %1, align 4
  %146 = getelementptr inbounds %struct.b2Manifold* %145, i32 0, i32 2
  %147 = bitcast %struct.b2Vec2* %146 to i8*
  %148 = bitcast %struct.b2Vec2* %v1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %147, i8* %148, i32 8, i32 4, i1 false)
  %149 = load %struct.b2Manifold** %1, align 4
  %150 = getelementptr inbounds %struct.b2Manifold* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.b2ManifoldPoint* %151, i32 0, i32 0
  %153 = load %class.b2CircleShape** %4, align 4
  %154 = getelementptr inbounds %class.b2CircleShape* %153, i32 0, i32 1
  %155 = bitcast %struct.b2Vec2* %152 to i8*
  %156 = bitcast %struct.b2Vec2* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %155, i8* %156, i32 8, i32 4, i1 false)
  %157 = load %struct.b2Manifold** %1, align 4
  %158 = getelementptr inbounds %struct.b2Manifold* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.b2ManifoldPoint* %159, i32 0, i32 3
  %161 = bitcast %union.b2ContactID* %160 to i32*
  store i32 0, i32* %161, align 4
  br label %240

; <label>:162                                     ; preds = %121
  %163 = load float* %u2, align 4
  %164 = fcmp ole float %163, 0.000000e+00
  br i1 %164, label %165, label %201

; <label>:165                                     ; preds = %162
  %166 = call float @_Z17b2DistanceSquaredRK6b2Vec2S1_(%struct.b2Vec2* %cLocal, %struct.b2Vec2* %v2)
  %167 = load float* %radius, align 4
  %168 = load float* %radius, align 4
  %169 = fmul float %167, %168
  %170 = fcmp ogt float %166, %169
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %165
  br label %240

; <label>:172                                     ; preds = %165
  %173 = load %struct.b2Manifold** %1, align 4
  %174 = getelementptr inbounds %struct.b2Manifold* %173, i32 0, i32 4
  store i32 1, i32* %174, align 4
  %175 = load %struct.b2Manifold** %1, align 4
  %176 = getelementptr inbounds %struct.b2Manifold* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = load %struct.b2Manifold** %1, align 4
  %178 = getelementptr inbounds %struct.b2Manifold* %177, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %v2)
  %179 = bitcast %struct.b2Vec2* %178 to i8*
  %180 = bitcast %struct.b2Vec2* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %180, i32 8, i32 4, i1 false)
  %181 = load %struct.b2Manifold** %1, align 4
  %182 = getelementptr inbounds %struct.b2Manifold* %181, i32 0, i32 1
  %183 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %182)
  %184 = load %struct.b2Manifold** %1, align 4
  %185 = getelementptr inbounds %struct.b2Manifold* %184, i32 0, i32 2
  %186 = bitcast %struct.b2Vec2* %185 to i8*
  %187 = bitcast %struct.b2Vec2* %v2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %186, i8* %187, i32 8, i32 4, i1 false)
  %188 = load %struct.b2Manifold** %1, align 4
  %189 = getelementptr inbounds %struct.b2Manifold* %188, i32 0, i32 0
  %190 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.b2ManifoldPoint* %190, i32 0, i32 0
  %192 = load %class.b2CircleShape** %4, align 4
  %193 = getelementptr inbounds %class.b2CircleShape* %192, i32 0, i32 1
  %194 = bitcast %struct.b2Vec2* %191 to i8*
  %195 = bitcast %struct.b2Vec2* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %194, i8* %195, i32 8, i32 4, i1 false)
  %196 = load %struct.b2Manifold** %1, align 4
  %197 = getelementptr inbounds %struct.b2Manifold* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.b2ManifoldPoint* %198, i32 0, i32 3
  %200 = bitcast %union.b2ContactID* %199 to i32*
  store i32 0, i32* %200, align 4
  br label %239

; <label>:201                                     ; preds = %162
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %15, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %faceCenter, float 5.000000e-01, %struct.b2Vec2* %15)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %16, %struct.b2Vec2* %cLocal, %struct.b2Vec2* %faceCenter)
  %202 = load i32* %vertIndex1, align 4
  %203 = load %struct.b2Vec2** %normals, align 4
  %204 = getelementptr inbounds %struct.b2Vec2* %203, i32 %202
  %205 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %16, %struct.b2Vec2* %204)
  store float %205, float* %separation1, align 4
  %206 = load float* %separation1, align 4
  %207 = load float* %radius, align 4
  %208 = fcmp ogt float %206, %207
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %201
  br label %240

; <label>:210                                     ; preds = %201
  %211 = load %struct.b2Manifold** %1, align 4
  %212 = getelementptr inbounds %struct.b2Manifold* %211, i32 0, i32 4
  store i32 1, i32* %212, align 4
  %213 = load %struct.b2Manifold** %1, align 4
  %214 = getelementptr inbounds %struct.b2Manifold* %213, i32 0, i32 3
  store i32 1, i32* %214, align 4
  %215 = load %struct.b2Manifold** %1, align 4
  %216 = getelementptr inbounds %struct.b2Manifold* %215, i32 0, i32 1
  %217 = load i32* %vertIndex1, align 4
  %218 = load %struct.b2Vec2** %normals, align 4
  %219 = getelementptr inbounds %struct.b2Vec2* %218, i32 %217
  %220 = bitcast %struct.b2Vec2* %216 to i8*
  %221 = bitcast %struct.b2Vec2* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %220, i8* %221, i32 8, i32 4, i1 false)
  %222 = load %struct.b2Manifold** %1, align 4
  %223 = getelementptr inbounds %struct.b2Manifold* %222, i32 0, i32 2
  %224 = bitcast %struct.b2Vec2* %223 to i8*
  %225 = bitcast %struct.b2Vec2* %faceCenter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %224, i8* %225, i32 8, i32 4, i1 false)
  %226 = load %struct.b2Manifold** %1, align 4
  %227 = getelementptr inbounds %struct.b2Manifold* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.b2ManifoldPoint* %228, i32 0, i32 0
  %230 = load %class.b2CircleShape** %4, align 4
  %231 = getelementptr inbounds %class.b2CircleShape* %230, i32 0, i32 1
  %232 = bitcast %struct.b2Vec2* %229 to i8*
  %233 = bitcast %struct.b2Vec2* %231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %232, i8* %233, i32 8, i32 4, i1 false)
  %234 = load %struct.b2Manifold** %1, align 4
  %235 = getelementptr inbounds %struct.b2Manifold* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.b2ManifoldPoint* %236, i32 0, i32 3
  %238 = bitcast %union.b2ContactID* %237 to i32*
  store i32 0, i32* %238, align 4
  br label %239

; <label>:239                                     ; preds = %210, %172
  br label %240

; <label>:240                                     ; preds = %56, %92, %132, %171, %209, %239, %133
  ret void
}

define linkonce_odr void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Transform* %T, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Transform*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %px = alloca float, align 4
  %py = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store %struct.b2Transform* %T, %struct.b2Transform** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Vec2** %2
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %struct.b2Transform** %1
  %7 = getelementptr inbounds %struct.b2Transform* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = fsub float %5, %9
  store float %10, float* %px, align 4
  %11 = load %struct.b2Vec2** %2
  %12 = getelementptr inbounds %struct.b2Vec2* %11, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = load %struct.b2Transform** %1
  %15 = getelementptr inbounds %struct.b2Transform* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fsub float %13, %17
  store float %18, float* %py, align 4
  %19 = load %struct.b2Transform** %1
  %20 = getelementptr inbounds %struct.b2Transform* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Rot* %20, i32 0, i32 1
  %22 = load float* %21, align 4
  %23 = load float* %px, align 4
  %24 = fmul float %22, %23
  %25 = load %struct.b2Transform** %1
  %26 = getelementptr inbounds %struct.b2Transform* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.b2Rot* %26, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = load float* %py, align 4
  %30 = fmul float %28, %29
  %31 = fadd float %24, %30
  store float %31, float* %x, align 4
  %32 = load %struct.b2Transform** %1
  %33 = getelementptr inbounds %struct.b2Transform* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.b2Rot* %33, i32 0, i32 0
  %35 = load float* %34, align 4
  %36 = fsub float -0.000000e+00, %35
  %37 = load float* %px, align 4
  %38 = fmul float %36, %37
  %39 = load %struct.b2Transform** %1
  %40 = getelementptr inbounds %struct.b2Transform* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.b2Rot* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  %43 = load float* %py, align 4
  %44 = fmul float %42, %43
  %45 = fadd float %38, %44
  store float %45, float* %y, align 4
  %46 = load float* %x, align 4
  %47 = load float* %y, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %46, float %47)
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
