; ModuleID = 'Collision/b2CollideEdge.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%struct.b2Vec2 = type { float, float }
%union.b2ContactID = type { i32 }
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
%struct.b2ContactFeature = type { i8, i8, i8, i8 }
%struct.b2EPCollider = type { %struct.b2TempPolygon, %struct.b2Transform, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, i8 }
%struct.b2TempPolygon = type { [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%struct.b2EPAxis = type { i32, i32, float }
%struct.b2ClipVertex = type { %struct.b2Vec2, %union.b2ContactID }
%struct.b2ReferenceFace = type { i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, %struct.b2Vec2, float }

@.str = private unnamed_addr constant [11 x i8] c"den > 0.0f\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Collision/b2CollideEdge.cpp\00", align 1
@__PRETTY_FUNCTION__._Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_ = private unnamed_addr constant [128 x i8] c"void b2CollideEdgeAndCircle(b2Manifold *, const b2EdgeShape *, const b2Transform &, const b2CircleShape *, const b2Transform &)\00", align 1

define void @_Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold* %manifold, %class.b2EdgeShape* %edgeA, %struct.b2Transform* %xfA, %class.b2CircleShape* %circleB, %struct.b2Transform* %xfB) {
  %1 = alloca %struct.b2Manifold*, align 4
  %2 = alloca %class.b2EdgeShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %class.b2CircleShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %Q = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %A = alloca %struct.b2Vec2, align 4
  %B = alloca %struct.b2Vec2, align 4
  %e = alloca %struct.b2Vec2, align 4
  %u = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %v = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %radius = alloca float, align 4
  %cf = alloca %struct.b2ContactFeature, align 1
  %P = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %dd = alloca float, align 4
  %A1 = alloca %struct.b2Vec2, align 4
  %B1 = alloca %struct.b2Vec2, align 4
  %e1 = alloca %struct.b2Vec2, align 4
  %u1 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %P1 = alloca %struct.b2Vec2, align 4
  %d2 = alloca %struct.b2Vec2, align 4
  %dd3 = alloca float, align 4
  %B2 = alloca %struct.b2Vec2, align 4
  %A2 = alloca %struct.b2Vec2, align 4
  %e2 = alloca %struct.b2Vec2, align 4
  %v2 = alloca float, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %den = alloca float, align 4
  %P4 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %d5 = alloca %struct.b2Vec2, align 4
  %dd6 = alloca float, align 4
  %n = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %1, align 4
  store %class.b2EdgeShape* %edgeA, %class.b2EdgeShape** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %class.b2CircleShape* %circleB, %class.b2CircleShape** %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  %15 = load %struct.b2Manifold** %1, align 4
  %16 = getelementptr inbounds %struct.b2Manifold* %15, i32 0, i32 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.b2Transform** %3
  %18 = load %struct.b2Transform** %5
  %19 = load %class.b2CircleShape** %4, align 4
  %20 = getelementptr inbounds %class.b2CircleShape* %19, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %6, %struct.b2Transform* %18, %struct.b2Vec2* %20)
  call void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %Q, %struct.b2Transform* %17, %struct.b2Vec2* %6)
  %21 = load %class.b2EdgeShape** %2, align 4
  %22 = getelementptr inbounds %class.b2EdgeShape* %21, i32 0, i32 1
  %23 = bitcast %struct.b2Vec2* %A to i8*
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  %25 = load %class.b2EdgeShape** %2, align 4
  %26 = getelementptr inbounds %class.b2EdgeShape* %25, i32 0, i32 2
  %27 = bitcast %struct.b2Vec2* %B to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e, %struct.b2Vec2* %B, %struct.b2Vec2* %A)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %B, %struct.b2Vec2* %Q)
  %29 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %e, %struct.b2Vec2* %7)
  store float %29, float* %u, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %Q, %struct.b2Vec2* %A)
  %30 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %e, %struct.b2Vec2* %8)
  store float %30, float* %v, align 4
  %31 = load %class.b2EdgeShape** %2, align 4
  %32 = bitcast %class.b2EdgeShape* %31 to %class.b2Shape*
  %33 = getelementptr inbounds %class.b2Shape* %32, i32 0, i32 2
  %34 = load float* %33, align 4
  %35 = load %class.b2CircleShape** %4, align 4
  %36 = bitcast %class.b2CircleShape* %35 to %class.b2Shape*
  %37 = getelementptr inbounds %class.b2Shape* %36, i32 0, i32 2
  %38 = load float* %37, align 4
  %39 = fadd float %34, %38
  store float %39, float* %radius, align 4
  %40 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 3
  store i8 0, i8* %41, align 1
  %42 = load float* %v, align 4
  %43 = fcmp ole float %42, 0.000000e+00
  br i1 %43, label %44, label %104

; <label>:44                                      ; preds = %0
  %45 = bitcast %struct.b2Vec2* %P to i8*
  %46 = bitcast %struct.b2Vec2* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %Q, %struct.b2Vec2* %P)
  %47 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %d)
  store float %47, float* %dd, align 4
  %48 = load float* %dd, align 4
  %49 = load float* %radius, align 4
  %50 = load float* %radius, align 4
  %51 = fmul float %49, %50
  %52 = fcmp ogt float %48, %51
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %44
  br label %237

; <label>:54                                      ; preds = %44
  %55 = load %class.b2EdgeShape** %2, align 4
  %56 = getelementptr inbounds %class.b2EdgeShape* %55, i32 0, i32 5
  %57 = load i8* %56, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %71

; <label>:59                                      ; preds = %54
  %60 = load %class.b2EdgeShape** %2, align 4
  %61 = getelementptr inbounds %class.b2EdgeShape* %60, i32 0, i32 3
  %62 = bitcast %struct.b2Vec2* %A1 to i8*
  %63 = bitcast %struct.b2Vec2* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 8, i32 4, i1 false)
  %64 = bitcast %struct.b2Vec2* %B1 to i8*
  %65 = bitcast %struct.b2Vec2* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %64, i8* %65, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e1, %struct.b2Vec2* %B1, %struct.b2Vec2* %A1)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %B1, %struct.b2Vec2* %Q)
  %66 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %e1, %struct.b2Vec2* %9)
  store float %66, float* %u1, align 4
  %67 = load float* %u1, align 4
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %59
  br label %237

; <label>:70                                      ; preds = %59
  br label %71

; <label>:71                                      ; preds = %70, %54
  %72 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 0
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 2
  store i8 0, i8* %73, align 1
  %74 = load %struct.b2Manifold** %1, align 4
  %75 = getelementptr inbounds %struct.b2Manifold* %74, i32 0, i32 4
  store i32 1, i32* %75, align 4
  %76 = load %struct.b2Manifold** %1, align 4
  %77 = getelementptr inbounds %struct.b2Manifold* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load %struct.b2Manifold** %1, align 4
  %79 = getelementptr inbounds %struct.b2Manifold* %78, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %79)
  %80 = load %struct.b2Manifold** %1, align 4
  %81 = getelementptr inbounds %struct.b2Manifold* %80, i32 0, i32 2
  %82 = bitcast %struct.b2Vec2* %81 to i8*
  %83 = bitcast %struct.b2Vec2* %P to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 8, i32 4, i1 false)
  %84 = load %struct.b2Manifold** %1, align 4
  %85 = getelementptr inbounds %struct.b2Manifold* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.b2ManifoldPoint* %86, i32 0, i32 3
  %88 = bitcast %union.b2ContactID* %87 to i32*
  store i32 0, i32* %88, align 4
  %89 = load %struct.b2Manifold** %1, align 4
  %90 = getelementptr inbounds %struct.b2Manifold* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.b2ManifoldPoint* %91, i32 0, i32 3
  %93 = bitcast %union.b2ContactID* %92 to %struct.b2ContactFeature*
  %94 = bitcast %struct.b2ContactFeature* %93 to i8*
  %95 = bitcast %struct.b2ContactFeature* %cf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %95, i32 4, i32 1, i1 false)
  %96 = load %struct.b2Manifold** %1, align 4
  %97 = getelementptr inbounds %struct.b2Manifold* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.b2ManifoldPoint* %98, i32 0, i32 0
  %100 = load %class.b2CircleShape** %4, align 4
  %101 = getelementptr inbounds %class.b2CircleShape* %100, i32 0, i32 1
  %102 = bitcast %struct.b2Vec2* %99 to i8*
  %103 = bitcast %struct.b2Vec2* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 8, i32 4, i1 false)
  br label %237

; <label>:104                                     ; preds = %0
  %105 = load float* %u, align 4
  %106 = fcmp ole float %105, 0.000000e+00
  br i1 %106, label %107, label %167

; <label>:107                                     ; preds = %104
  %108 = bitcast %struct.b2Vec2* %P1 to i8*
  %109 = bitcast %struct.b2Vec2* %B to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d2, %struct.b2Vec2* %Q, %struct.b2Vec2* %P1)
  %110 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d2, %struct.b2Vec2* %d2)
  store float %110, float* %dd3, align 4
  %111 = load float* %dd3, align 4
  %112 = load float* %radius, align 4
  %113 = load float* %radius, align 4
  %114 = fmul float %112, %113
  %115 = fcmp ogt float %111, %114
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %107
  br label %237

; <label>:117                                     ; preds = %107
  %118 = load %class.b2EdgeShape** %2, align 4
  %119 = getelementptr inbounds %class.b2EdgeShape* %118, i32 0, i32 6
  %120 = load i8* %119, align 1
  %121 = trunc i8 %120 to i1
  br i1 %121, label %122, label %134

; <label>:122                                     ; preds = %117
  %123 = load %class.b2EdgeShape** %2, align 4
  %124 = getelementptr inbounds %class.b2EdgeShape* %123, i32 0, i32 4
  %125 = bitcast %struct.b2Vec2* %B2 to i8*
  %126 = bitcast %struct.b2Vec2* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %125, i8* %126, i32 8, i32 4, i1 false)
  %127 = bitcast %struct.b2Vec2* %A2 to i8*
  %128 = bitcast %struct.b2Vec2* %B to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %127, i8* %128, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %e2, %struct.b2Vec2* %B2, %struct.b2Vec2* %A2)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %Q, %struct.b2Vec2* %A2)
  %129 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %e2, %struct.b2Vec2* %10)
  store float %129, float* %v2, align 4
  %130 = load float* %v2, align 4
  %131 = fcmp ogt float %130, 0.000000e+00
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %122
  br label %237

; <label>:133                                     ; preds = %122
  br label %134

; <label>:134                                     ; preds = %133, %117
  %135 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 0
  store i8 1, i8* %135, align 1
  %136 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 2
  store i8 0, i8* %136, align 1
  %137 = load %struct.b2Manifold** %1, align 4
  %138 = getelementptr inbounds %struct.b2Manifold* %137, i32 0, i32 4
  store i32 1, i32* %138, align 4
  %139 = load %struct.b2Manifold** %1, align 4
  %140 = getelementptr inbounds %struct.b2Manifold* %139, i32 0, i32 3
  store i32 0, i32* %140, align 4
  %141 = load %struct.b2Manifold** %1, align 4
  %142 = getelementptr inbounds %struct.b2Manifold* %141, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %142)
  %143 = load %struct.b2Manifold** %1, align 4
  %144 = getelementptr inbounds %struct.b2Manifold* %143, i32 0, i32 2
  %145 = bitcast %struct.b2Vec2* %144 to i8*
  %146 = bitcast %struct.b2Vec2* %P1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %145, i8* %146, i32 8, i32 4, i1 false)
  %147 = load %struct.b2Manifold** %1, align 4
  %148 = getelementptr inbounds %struct.b2Manifold* %147, i32 0, i32 0
  %149 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.b2ManifoldPoint* %149, i32 0, i32 3
  %151 = bitcast %union.b2ContactID* %150 to i32*
  store i32 0, i32* %151, align 4
  %152 = load %struct.b2Manifold** %1, align 4
  %153 = getelementptr inbounds %struct.b2Manifold* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.b2ManifoldPoint* %154, i32 0, i32 3
  %156 = bitcast %union.b2ContactID* %155 to %struct.b2ContactFeature*
  %157 = bitcast %struct.b2ContactFeature* %156 to i8*
  %158 = bitcast %struct.b2ContactFeature* %cf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %157, i8* %158, i32 4, i32 1, i1 false)
  %159 = load %struct.b2Manifold** %1, align 4
  %160 = getelementptr inbounds %struct.b2Manifold* %159, i32 0, i32 0
  %161 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.b2ManifoldPoint* %161, i32 0, i32 0
  %163 = load %class.b2CircleShape** %4, align 4
  %164 = getelementptr inbounds %class.b2CircleShape* %163, i32 0, i32 1
  %165 = bitcast %struct.b2Vec2* %162 to i8*
  %166 = bitcast %struct.b2Vec2* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %165, i8* %166, i32 8, i32 4, i1 false)
  br label %237

; <label>:167                                     ; preds = %104
  %168 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %e, %struct.b2Vec2* %e)
  store float %168, float* %den, align 4
  %169 = load float* %den, align 4
  %170 = fcmp ogt float %169, 0.000000e+00
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %167
  br label %174

; <label>:172                                     ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([128 x i8]* @__PRETTY_FUNCTION__._Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %174

; <label>:174                                     ; preds = %173, %171
  %175 = load float* %den, align 4
  %176 = fdiv float 1.000000e+00, %175
  %177 = load float* %u, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %177, %struct.b2Vec2* %A)
  %178 = load float* %v, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %178, %struct.b2Vec2* %B)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %12, %struct.b2Vec2* %13)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P4, float %176, %struct.b2Vec2* %11)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d5, %struct.b2Vec2* %Q, %struct.b2Vec2* %P4)
  %179 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d5, %struct.b2Vec2* %d5)
  store float %179, float* %dd6, align 4
  %180 = load float* %dd6, align 4
  %181 = load float* %radius, align 4
  %182 = load float* %radius, align 4
  %183 = fmul float %181, %182
  %184 = fcmp ogt float %180, %183
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %174
  br label %237

; <label>:186                                     ; preds = %174
  %187 = getelementptr inbounds %struct.b2Vec2* %e, i32 0, i32 1
  %188 = load float* %187, align 4
  %189 = fsub float -0.000000e+00, %188
  %190 = getelementptr inbounds %struct.b2Vec2* %e, i32 0, i32 0
  %191 = load float* %190, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %n, float %189, float %191)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %Q, %struct.b2Vec2* %A)
  %192 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %n, %struct.b2Vec2* %14)
  %193 = fcmp olt float %192, 0.000000e+00
  br i1 %193, label %194, label %201

; <label>:194                                     ; preds = %186
  %195 = getelementptr inbounds %struct.b2Vec2* %n, i32 0, i32 0
  %196 = load float* %195, align 4
  %197 = fsub float -0.000000e+00, %196
  %198 = getelementptr inbounds %struct.b2Vec2* %n, i32 0, i32 1
  %199 = load float* %198, align 4
  %200 = fsub float -0.000000e+00, %199
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %n, float %197, float %200)
  br label %201

; <label>:201                                     ; preds = %194, %186
  %202 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %n)
  %203 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 0
  store i8 0, i8* %203, align 1
  %204 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 2
  store i8 1, i8* %204, align 1
  %205 = load %struct.b2Manifold** %1, align 4
  %206 = getelementptr inbounds %struct.b2Manifold* %205, i32 0, i32 4
  store i32 1, i32* %206, align 4
  %207 = load %struct.b2Manifold** %1, align 4
  %208 = getelementptr inbounds %struct.b2Manifold* %207, i32 0, i32 3
  store i32 1, i32* %208, align 4
  %209 = load %struct.b2Manifold** %1, align 4
  %210 = getelementptr inbounds %struct.b2Manifold* %209, i32 0, i32 1
  %211 = bitcast %struct.b2Vec2* %210 to i8*
  %212 = bitcast %struct.b2Vec2* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %211, i8* %212, i32 8, i32 4, i1 false)
  %213 = load %struct.b2Manifold** %1, align 4
  %214 = getelementptr inbounds %struct.b2Manifold* %213, i32 0, i32 2
  %215 = bitcast %struct.b2Vec2* %214 to i8*
  %216 = bitcast %struct.b2Vec2* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %215, i8* %216, i32 8, i32 4, i1 false)
  %217 = load %struct.b2Manifold** %1, align 4
  %218 = getelementptr inbounds %struct.b2Manifold* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.b2ManifoldPoint* %219, i32 0, i32 3
  %221 = bitcast %union.b2ContactID* %220 to i32*
  store i32 0, i32* %221, align 4
  %222 = load %struct.b2Manifold** %1, align 4
  %223 = getelementptr inbounds %struct.b2Manifold* %222, i32 0, i32 0
  %224 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.b2ManifoldPoint* %224, i32 0, i32 3
  %226 = bitcast %union.b2ContactID* %225 to %struct.b2ContactFeature*
  %227 = bitcast %struct.b2ContactFeature* %226 to i8*
  %228 = bitcast %struct.b2ContactFeature* %cf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %227, i8* %228, i32 4, i32 1, i1 false)
  %229 = load %struct.b2Manifold** %1, align 4
  %230 = getelementptr inbounds %struct.b2Manifold* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.b2ManifoldPoint* %231, i32 0, i32 0
  %233 = load %class.b2CircleShape** %4, align 4
  %234 = getelementptr inbounds %class.b2CircleShape* %233, i32 0, i32 1
  %235 = bitcast %struct.b2Vec2* %232 to i8*
  %236 = bitcast %struct.b2Vec2* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %235, i8* %236, i32 8, i32 4, i1 false)
  br label %237

; <label>:237                                     ; preds = %201, %185, %134, %132, %116, %71, %69, %53
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

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

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

define void @_ZN12b2EPCollider7CollideEP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK14b2PolygonShapeS7_(%struct.b2EPCollider* %this, %struct.b2Manifold* %manifold, %class.b2EdgeShape* %edgeA, %struct.b2Transform* %xfA, %class.b2PolygonShape* %polygonB, %struct.b2Transform* %xfB) align 2 {
  %1 = alloca %struct.b2EPCollider*, align 4
  %2 = alloca %struct.b2Manifold*, align 4
  %3 = alloca %class.b2EdgeShape*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %5 = alloca %class.b2PolygonShape*, align 4
  %6 = alloca %struct.b2Transform*, align 4
  %7 = alloca %struct.b2Transform, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %hasVertex0 = alloca i8, align 1
  %hasVertex3 = alloca i8, align 1
  %edge1 = alloca %struct.b2Vec2, align 4
  %offset1 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %offset0 = alloca float, align 4
  %offset2 = alloca float, align 4
  %convex1 = alloca i8, align 1
  %convex2 = alloca i8, align 1
  %edge0 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %edge2 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  %22 = alloca %struct.b2Vec2, align 4
  %23 = alloca %struct.b2Vec2, align 4
  %24 = alloca %struct.b2Vec2, align 4
  %25 = alloca %struct.b2Vec2, align 4
  %26 = alloca %struct.b2Vec2, align 4
  %27 = alloca %struct.b2Vec2, align 4
  %28 = alloca %struct.b2Vec2, align 4
  %29 = alloca %struct.b2Vec2, align 4
  %30 = alloca %struct.b2Vec2, align 4
  %31 = alloca %struct.b2Vec2, align 4
  %32 = alloca %struct.b2Vec2, align 4
  %33 = alloca %struct.b2Vec2, align 4
  %34 = alloca %struct.b2Vec2, align 4
  %35 = alloca %struct.b2Vec2, align 4
  %36 = alloca %struct.b2Vec2, align 4
  %37 = alloca %struct.b2Vec2, align 4
  %38 = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %39 = alloca %struct.b2Vec2, align 4
  %40 = alloca %struct.b2Vec2, align 4
  %edgeAxis = alloca %struct.b2EPAxis, align 4
  %polygonAxis = alloca %struct.b2EPAxis, align 4
  %k_relativeTol = alloca float, align 4
  %k_absoluteTol = alloca float, align 4
  %primaryAxis = alloca %struct.b2EPAxis, align 4
  %ie = alloca [2 x %struct.b2ClipVertex], align 4
  %rf = alloca %struct.b2ReferenceFace, align 4
  %bestIndex = alloca i32, align 4
  %bestValue = alloca float, align 4
  %i1 = alloca i32, align 4
  %value = alloca float, align 4
  %i12 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %41 = alloca %struct.b2Vec2, align 4
  %42 = alloca %struct.b2Vec2, align 4
  %clipPoints1 = alloca [2 x %struct.b2ClipVertex], align 4
  %clipPoints2 = alloca [2 x %struct.b2ClipVertex], align 4
  %np = alloca i32, align 4
  %pointCount = alloca i32, align 4
  %i3 = alloca i32, align 4
  %separation = alloca float, align 4
  %43 = alloca %struct.b2Vec2, align 4
  %cp = alloca %struct.b2ManifoldPoint*, align 4
  %44 = alloca %struct.b2Vec2, align 4
  store %struct.b2EPCollider* %this, %struct.b2EPCollider** %1, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %2, align 4
  store %class.b2EdgeShape* %edgeA, %class.b2EdgeShape** %3, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %4, align 4
  store %class.b2PolygonShape* %polygonB, %class.b2PolygonShape** %5, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %6, align 4
  %45 = load %struct.b2EPCollider** %1
  %46 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 1
  %47 = load %struct.b2Transform** %4
  %48 = load %struct.b2Transform** %6
  call void @_Z6b2MulTRK11b2TransformS1_(%struct.b2Transform* sret %7, %struct.b2Transform* %47, %struct.b2Transform* %48)
  %49 = bitcast %struct.b2Transform* %46 to i8*
  %50 = bitcast %struct.b2Transform* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 16, i32 4, i1 false)
  %51 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 2
  %52 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 1
  %53 = load %class.b2PolygonShape** %5, align 4
  %54 = getelementptr inbounds %class.b2PolygonShape* %53, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %52, %struct.b2Vec2* %54)
  %55 = bitcast %struct.b2Vec2* %51 to i8*
  %56 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 8, i32 4, i1 false)
  %57 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 3
  %58 = load %class.b2EdgeShape** %3, align 4
  %59 = getelementptr inbounds %class.b2EdgeShape* %58, i32 0, i32 3
  %60 = bitcast %struct.b2Vec2* %57 to i8*
  %61 = bitcast %struct.b2Vec2* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  %63 = load %class.b2EdgeShape** %3, align 4
  %64 = getelementptr inbounds %class.b2EdgeShape* %63, i32 0, i32 1
  %65 = bitcast %struct.b2Vec2* %62 to i8*
  %66 = bitcast %struct.b2Vec2* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %66, i32 8, i32 4, i1 false)
  %67 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  %68 = load %class.b2EdgeShape** %3, align 4
  %69 = getelementptr inbounds %class.b2EdgeShape* %68, i32 0, i32 2
  %70 = bitcast %struct.b2Vec2* %67 to i8*
  %71 = bitcast %struct.b2Vec2* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %70, i8* %71, i32 8, i32 4, i1 false)
  %72 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 6
  %73 = load %class.b2EdgeShape** %3, align 4
  %74 = getelementptr inbounds %class.b2EdgeShape* %73, i32 0, i32 4
  %75 = bitcast %struct.b2Vec2* %72 to i8*
  %76 = bitcast %struct.b2Vec2* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %75, i8* %76, i32 8, i32 4, i1 false)
  %77 = load %class.b2EdgeShape** %3, align 4
  %78 = getelementptr inbounds %class.b2EdgeShape* %77, i32 0, i32 5
  %79 = load i8* %78, align 1
  %80 = trunc i8 %79 to i1
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %hasVertex0, align 1
  %82 = load %class.b2EdgeShape** %3, align 4
  %83 = getelementptr inbounds %class.b2EdgeShape* %82, i32 0, i32 6
  %84 = load i8* %83, align 1
  %85 = trunc i8 %84 to i1
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %hasVertex3, align 1
  %87 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  %88 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %edge1, %struct.b2Vec2* %87, %struct.b2Vec2* %88)
  %89 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %edge1)
  %90 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %91 = getelementptr inbounds %struct.b2Vec2* %edge1, i32 0, i32 1
  %92 = load float* %91, align 4
  %93 = getelementptr inbounds %struct.b2Vec2* %edge1, i32 0, i32 0
  %94 = load float* %93, align 4
  %95 = fsub float -0.000000e+00, %94
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %90, float %92, float %95)
  %96 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %97 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 2
  %98 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %97, %struct.b2Vec2* %98)
  %99 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %96, %struct.b2Vec2* %9)
  store float %99, float* %offset1, align 4
  store float 0.000000e+00, float* %offset0, align 4
  store float 0.000000e+00, float* %offset2, align 4
  store i8 0, i8* %convex1, align 1
  store i8 0, i8* %convex2, align 1
  %100 = load i8* %hasVertex0, align 1
  %101 = trunc i8 %100 to i1
  br i1 %101, label %102, label %119

; <label>:102                                     ; preds = %0
  %103 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  %104 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 3
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %edge0, %struct.b2Vec2* %103, %struct.b2Vec2* %104)
  %105 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %edge0)
  %106 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  %107 = getelementptr inbounds %struct.b2Vec2* %edge0, i32 0, i32 1
  %108 = load float* %107, align 4
  %109 = getelementptr inbounds %struct.b2Vec2* %edge0, i32 0, i32 0
  %110 = load float* %109, align 4
  %111 = fsub float -0.000000e+00, %110
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %106, float %108, float %111)
  %112 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %edge0, %struct.b2Vec2* %edge1)
  %113 = fcmp oge float %112, 0.000000e+00
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %convex1, align 1
  %115 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  %116 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 2
  %117 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 3
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %116, %struct.b2Vec2* %117)
  %118 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %115, %struct.b2Vec2* %10)
  store float %118, float* %offset0, align 4
  br label %119

; <label>:119                                     ; preds = %102, %0
  %120 = load i8* %hasVertex3, align 1
  %121 = trunc i8 %120 to i1
  br i1 %121, label %122, label %139

; <label>:122                                     ; preds = %119
  %123 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 6
  %124 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %edge2, %struct.b2Vec2* %123, %struct.b2Vec2* %124)
  %125 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %edge2)
  %126 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  %127 = getelementptr inbounds %struct.b2Vec2* %edge2, i32 0, i32 1
  %128 = load float* %127, align 4
  %129 = getelementptr inbounds %struct.b2Vec2* %edge2, i32 0, i32 0
  %130 = load float* %129, align 4
  %131 = fsub float -0.000000e+00, %130
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %126, float %128, float %131)
  %132 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %edge1, %struct.b2Vec2* %edge2)
  %133 = fcmp ogt float %132, 0.000000e+00
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %convex2, align 1
  %135 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  %136 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 2
  %137 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %136, %struct.b2Vec2* %137)
  %138 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %135, %struct.b2Vec2* %11)
  store float %138, float* %offset2, align 4
  br label %139

; <label>:139                                     ; preds = %122, %119
  %140 = load i8* %hasVertex0, align 1
  %141 = trunc i8 %140 to i1
  br i1 %141, label %142, label %336

; <label>:142                                     ; preds = %139
  %143 = load i8* %hasVertex3, align 1
  %144 = trunc i8 %143 to i1
  br i1 %144, label %145, label %336

; <label>:145                                     ; preds = %142
  %146 = load i8* %convex1, align 1
  %147 = trunc i8 %146 to i1
  br i1 %147, label %148, label %194

; <label>:148                                     ; preds = %145
  %149 = load i8* %convex2, align 1
  %150 = trunc i8 %149 to i1
  br i1 %150, label %151, label %194

; <label>:151                                     ; preds = %148
  %152 = load float* %offset0, align 4
  %153 = fcmp oge float %152, 0.000000e+00
  br i1 %153, label %160, label %154

; <label>:154                                     ; preds = %151
  %155 = load float* %offset1, align 4
  %156 = fcmp oge float %155, 0.000000e+00
  br i1 %156, label %160, label %157

; <label>:157                                     ; preds = %154
  %158 = load float* %offset2, align 4
  %159 = fcmp oge float %158, 0.000000e+00
  br label %160

; <label>:160                                     ; preds = %157, %154, %151
  %161 = phi i1 [ true, %154 ], [ true, %151 ], [ %159, %157 ]
  %162 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %163 = zext i1 %161 to i8
  store i8 %163, i8* %162, align 1
  %164 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %165 = load i8* %164, align 1
  %166 = trunc i8 %165 to i1
  br i1 %166, label %167, label %180

; <label>:167                                     ; preds = %160
  %168 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %169 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %170 = bitcast %struct.b2Vec2* %168 to i8*
  %171 = bitcast %struct.b2Vec2* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %170, i8* %171, i32 8, i32 4, i1 false)
  %172 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %173 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  %174 = bitcast %struct.b2Vec2* %172 to i8*
  %175 = bitcast %struct.b2Vec2* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %174, i8* %175, i32 8, i32 4, i1 false)
  %176 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %177 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  %178 = bitcast %struct.b2Vec2* %176 to i8*
  %179 = bitcast %struct.b2Vec2* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %178, i8* %179, i32 8, i32 4, i1 false)
  br label %193

; <label>:180                                     ; preds = %160
  %181 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %182 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %12, %struct.b2Vec2* %182)
  %183 = bitcast %struct.b2Vec2* %181 to i8*
  %184 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %183, i8* %184, i32 8, i32 4, i1 false)
  %185 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %186 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %13, %struct.b2Vec2* %186)
  %187 = bitcast %struct.b2Vec2* %185 to i8*
  %188 = bitcast %struct.b2Vec2* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %187, i8* %188, i32 8, i32 4, i1 false)
  %189 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %190 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %14, %struct.b2Vec2* %190)
  %191 = bitcast %struct.b2Vec2* %189 to i8*
  %192 = bitcast %struct.b2Vec2* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %191, i8* %192, i32 8, i32 4, i1 false)
  br label %193

; <label>:193                                     ; preds = %180, %167
  br label %335

; <label>:194                                     ; preds = %148, %145
  %195 = load i8* %convex1, align 1
  %196 = trunc i8 %195 to i1
  br i1 %196, label %197, label %242

; <label>:197                                     ; preds = %194
  %198 = load float* %offset0, align 4
  %199 = fcmp oge float %198, 0.000000e+00
  br i1 %199, label %208, label %200

; <label>:200                                     ; preds = %197
  %201 = load float* %offset1, align 4
  %202 = fcmp oge float %201, 0.000000e+00
  br i1 %202, label %203, label %206

; <label>:203                                     ; preds = %200
  %204 = load float* %offset2, align 4
  %205 = fcmp oge float %204, 0.000000e+00
  br label %206

; <label>:206                                     ; preds = %203, %200
  %207 = phi i1 [ false, %200 ], [ %205, %203 ]
  br label %208

; <label>:208                                     ; preds = %206, %197
  %209 = phi i1 [ true, %197 ], [ %207, %206 ]
  %210 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %211 = zext i1 %209 to i8
  store i8 %211, i8* %210, align 1
  %212 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %213 = load i8* %212, align 1
  %214 = trunc i8 %213 to i1
  br i1 %214, label %215, label %228

; <label>:215                                     ; preds = %208
  %216 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %217 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %218 = bitcast %struct.b2Vec2* %216 to i8*
  %219 = bitcast %struct.b2Vec2* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %218, i8* %219, i32 8, i32 4, i1 false)
  %220 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %221 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  %222 = bitcast %struct.b2Vec2* %220 to i8*
  %223 = bitcast %struct.b2Vec2* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %222, i8* %223, i32 8, i32 4, i1 false)
  %224 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %225 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %226 = bitcast %struct.b2Vec2* %224 to i8*
  %227 = bitcast %struct.b2Vec2* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %226, i8* %227, i32 8, i32 4, i1 false)
  br label %241

; <label>:228                                     ; preds = %208
  %229 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %230 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %15, %struct.b2Vec2* %230)
  %231 = bitcast %struct.b2Vec2* %229 to i8*
  %232 = bitcast %struct.b2Vec2* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %231, i8* %232, i32 8, i32 4, i1 false)
  %233 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %234 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %16, %struct.b2Vec2* %234)
  %235 = bitcast %struct.b2Vec2* %233 to i8*
  %236 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %235, i8* %236, i32 8, i32 4, i1 false)
  %237 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %238 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %17, %struct.b2Vec2* %238)
  %239 = bitcast %struct.b2Vec2* %237 to i8*
  %240 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %239, i8* %240, i32 8, i32 4, i1 false)
  br label %241

; <label>:241                                     ; preds = %228, %215
  br label %334

; <label>:242                                     ; preds = %194
  %243 = load i8* %convex2, align 1
  %244 = trunc i8 %243 to i1
  br i1 %244, label %245, label %290

; <label>:245                                     ; preds = %242
  %246 = load float* %offset2, align 4
  %247 = fcmp oge float %246, 0.000000e+00
  br i1 %247, label %256, label %248

; <label>:248                                     ; preds = %245
  %249 = load float* %offset0, align 4
  %250 = fcmp oge float %249, 0.000000e+00
  br i1 %250, label %251, label %254

; <label>:251                                     ; preds = %248
  %252 = load float* %offset1, align 4
  %253 = fcmp oge float %252, 0.000000e+00
  br label %254

; <label>:254                                     ; preds = %251, %248
  %255 = phi i1 [ false, %248 ], [ %253, %251 ]
  br label %256

; <label>:256                                     ; preds = %254, %245
  %257 = phi i1 [ true, %245 ], [ %255, %254 ]
  %258 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %259 = zext i1 %257 to i8
  store i8 %259, i8* %258, align 1
  %260 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %261 = load i8* %260, align 1
  %262 = trunc i8 %261 to i1
  br i1 %262, label %263, label %276

; <label>:263                                     ; preds = %256
  %264 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %265 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %266 = bitcast %struct.b2Vec2* %264 to i8*
  %267 = bitcast %struct.b2Vec2* %265 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %266, i8* %267, i32 8, i32 4, i1 false)
  %268 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %269 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %270 = bitcast %struct.b2Vec2* %268 to i8*
  %271 = bitcast %struct.b2Vec2* %269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %270, i8* %271, i32 8, i32 4, i1 false)
  %272 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %273 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  %274 = bitcast %struct.b2Vec2* %272 to i8*
  %275 = bitcast %struct.b2Vec2* %273 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %274, i8* %275, i32 8, i32 4, i1 false)
  br label %289

; <label>:276                                     ; preds = %256
  %277 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %278 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %18, %struct.b2Vec2* %278)
  %279 = bitcast %struct.b2Vec2* %277 to i8*
  %280 = bitcast %struct.b2Vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %279, i8* %280, i32 8, i32 4, i1 false)
  %281 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %282 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %19, %struct.b2Vec2* %282)
  %283 = bitcast %struct.b2Vec2* %281 to i8*
  %284 = bitcast %struct.b2Vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %283, i8* %284, i32 8, i32 4, i1 false)
  %285 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %286 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %20, %struct.b2Vec2* %286)
  %287 = bitcast %struct.b2Vec2* %285 to i8*
  %288 = bitcast %struct.b2Vec2* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %287, i8* %288, i32 8, i32 4, i1 false)
  br label %289

; <label>:289                                     ; preds = %276, %263
  br label %333

; <label>:290                                     ; preds = %242
  %291 = load float* %offset0, align 4
  %292 = fcmp oge float %291, 0.000000e+00
  br i1 %292, label %293, label %299

; <label>:293                                     ; preds = %290
  %294 = load float* %offset1, align 4
  %295 = fcmp oge float %294, 0.000000e+00
  br i1 %295, label %296, label %299

; <label>:296                                     ; preds = %293
  %297 = load float* %offset2, align 4
  %298 = fcmp oge float %297, 0.000000e+00
  br label %299

; <label>:299                                     ; preds = %296, %293, %290
  %300 = phi i1 [ false, %293 ], [ false, %290 ], [ %298, %296 ]
  %301 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %302 = zext i1 %300 to i8
  store i8 %302, i8* %301, align 1
  %303 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %304 = load i8* %303, align 1
  %305 = trunc i8 %304 to i1
  br i1 %305, label %306, label %319

; <label>:306                                     ; preds = %299
  %307 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %308 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %309 = bitcast %struct.b2Vec2* %307 to i8*
  %310 = bitcast %struct.b2Vec2* %308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %309, i8* %310, i32 8, i32 4, i1 false)
  %311 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %312 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %313 = bitcast %struct.b2Vec2* %311 to i8*
  %314 = bitcast %struct.b2Vec2* %312 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %313, i8* %314, i32 8, i32 4, i1 false)
  %315 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %316 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %317 = bitcast %struct.b2Vec2* %315 to i8*
  %318 = bitcast %struct.b2Vec2* %316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %317, i8* %318, i32 8, i32 4, i1 false)
  br label %332

; <label>:319                                     ; preds = %299
  %320 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %321 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %21, %struct.b2Vec2* %321)
  %322 = bitcast %struct.b2Vec2* %320 to i8*
  %323 = bitcast %struct.b2Vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %322, i8* %323, i32 8, i32 4, i1 false)
  %324 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %325 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %22, %struct.b2Vec2* %325)
  %326 = bitcast %struct.b2Vec2* %324 to i8*
  %327 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %326, i8* %327, i32 8, i32 4, i1 false)
  %328 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %329 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %23, %struct.b2Vec2* %329)
  %330 = bitcast %struct.b2Vec2* %328 to i8*
  %331 = bitcast %struct.b2Vec2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %330, i8* %331, i32 8, i32 4, i1 false)
  br label %332

; <label>:332                                     ; preds = %319, %306
  br label %333

; <label>:333                                     ; preds = %332, %289
  br label %334

; <label>:334                                     ; preds = %333, %241
  br label %335

; <label>:335                                     ; preds = %334, %193
  br label %547

; <label>:336                                     ; preds = %142, %139
  %337 = load i8* %hasVertex0, align 1
  %338 = trunc i8 %337 to i1
  br i1 %338, label %339, label %423

; <label>:339                                     ; preds = %336
  %340 = load i8* %convex1, align 1
  %341 = trunc i8 %340 to i1
  br i1 %341, label %342, label %382

; <label>:342                                     ; preds = %339
  %343 = load float* %offset0, align 4
  %344 = fcmp oge float %343, 0.000000e+00
  br i1 %344, label %348, label %345

; <label>:345                                     ; preds = %342
  %346 = load float* %offset1, align 4
  %347 = fcmp oge float %346, 0.000000e+00
  br label %348

; <label>:348                                     ; preds = %345, %342
  %349 = phi i1 [ true, %342 ], [ %347, %345 ]
  %350 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %351 = zext i1 %349 to i8
  store i8 %351, i8* %350, align 1
  %352 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %353 = load i8* %352, align 1
  %354 = trunc i8 %353 to i1
  br i1 %354, label %355, label %368

; <label>:355                                     ; preds = %348
  %356 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %357 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %358 = bitcast %struct.b2Vec2* %356 to i8*
  %359 = bitcast %struct.b2Vec2* %357 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %358, i8* %359, i32 8, i32 4, i1 false)
  %360 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %361 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  %362 = bitcast %struct.b2Vec2* %360 to i8*
  %363 = bitcast %struct.b2Vec2* %361 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %362, i8* %363, i32 8, i32 4, i1 false)
  %364 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %365 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %24, %struct.b2Vec2* %365)
  %366 = bitcast %struct.b2Vec2* %364 to i8*
  %367 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %366, i8* %367, i32 8, i32 4, i1 false)
  br label %381

; <label>:368                                     ; preds = %348
  %369 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %370 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %25, %struct.b2Vec2* %370)
  %371 = bitcast %struct.b2Vec2* %369 to i8*
  %372 = bitcast %struct.b2Vec2* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %371, i8* %372, i32 8, i32 4, i1 false)
  %373 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %374 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %375 = bitcast %struct.b2Vec2* %373 to i8*
  %376 = bitcast %struct.b2Vec2* %374 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %375, i8* %376, i32 8, i32 4, i1 false)
  %377 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %378 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %26, %struct.b2Vec2* %378)
  %379 = bitcast %struct.b2Vec2* %377 to i8*
  %380 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %379, i8* %380, i32 8, i32 4, i1 false)
  br label %381

; <label>:381                                     ; preds = %368, %355
  br label %422

; <label>:382                                     ; preds = %339
  %383 = load float* %offset0, align 4
  %384 = fcmp oge float %383, 0.000000e+00
  br i1 %384, label %385, label %388

; <label>:385                                     ; preds = %382
  %386 = load float* %offset1, align 4
  %387 = fcmp oge float %386, 0.000000e+00
  br label %388

; <label>:388                                     ; preds = %385, %382
  %389 = phi i1 [ false, %382 ], [ %387, %385 ]
  %390 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %391 = zext i1 %389 to i8
  store i8 %391, i8* %390, align 1
  %392 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %393 = load i8* %392, align 1
  %394 = trunc i8 %393 to i1
  br i1 %394, label %395, label %408

; <label>:395                                     ; preds = %388
  %396 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %397 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %398 = bitcast %struct.b2Vec2* %396 to i8*
  %399 = bitcast %struct.b2Vec2* %397 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %398, i8* %399, i32 8, i32 4, i1 false)
  %400 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %401 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %402 = bitcast %struct.b2Vec2* %400 to i8*
  %403 = bitcast %struct.b2Vec2* %401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %402, i8* %403, i32 8, i32 4, i1 false)
  %404 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %405 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %27, %struct.b2Vec2* %405)
  %406 = bitcast %struct.b2Vec2* %404 to i8*
  %407 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %406, i8* %407, i32 8, i32 4, i1 false)
  br label %421

; <label>:408                                     ; preds = %388
  %409 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %410 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %28, %struct.b2Vec2* %410)
  %411 = bitcast %struct.b2Vec2* %409 to i8*
  %412 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %411, i8* %412, i32 8, i32 4, i1 false)
  %413 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %414 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %415 = bitcast %struct.b2Vec2* %413 to i8*
  %416 = bitcast %struct.b2Vec2* %414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %415, i8* %416, i32 8, i32 4, i1 false)
  %417 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %418 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 7
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %29, %struct.b2Vec2* %418)
  %419 = bitcast %struct.b2Vec2* %417 to i8*
  %420 = bitcast %struct.b2Vec2* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %419, i8* %420, i32 8, i32 4, i1 false)
  br label %421

; <label>:421                                     ; preds = %408, %395
  br label %422

; <label>:422                                     ; preds = %421, %381
  br label %546

; <label>:423                                     ; preds = %336
  %424 = load i8* %hasVertex3, align 1
  %425 = trunc i8 %424 to i1
  br i1 %425, label %426, label %510

; <label>:426                                     ; preds = %423
  %427 = load i8* %convex2, align 1
  %428 = trunc i8 %427 to i1
  br i1 %428, label %429, label %469

; <label>:429                                     ; preds = %426
  %430 = load float* %offset1, align 4
  %431 = fcmp oge float %430, 0.000000e+00
  br i1 %431, label %435, label %432

; <label>:432                                     ; preds = %429
  %433 = load float* %offset2, align 4
  %434 = fcmp oge float %433, 0.000000e+00
  br label %435

; <label>:435                                     ; preds = %432, %429
  %436 = phi i1 [ true, %429 ], [ %434, %432 ]
  %437 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %438 = zext i1 %436 to i8
  store i8 %438, i8* %437, align 1
  %439 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %440 = load i8* %439, align 1
  %441 = trunc i8 %440 to i1
  br i1 %441, label %442, label %455

; <label>:442                                     ; preds = %435
  %443 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %444 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %445 = bitcast %struct.b2Vec2* %443 to i8*
  %446 = bitcast %struct.b2Vec2* %444 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %445, i8* %446, i32 8, i32 4, i1 false)
  %447 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %448 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %30, %struct.b2Vec2* %448)
  %449 = bitcast %struct.b2Vec2* %447 to i8*
  %450 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %449, i8* %450, i32 8, i32 4, i1 false)
  %451 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %452 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  %453 = bitcast %struct.b2Vec2* %451 to i8*
  %454 = bitcast %struct.b2Vec2* %452 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %453, i8* %454, i32 8, i32 4, i1 false)
  br label %468

; <label>:455                                     ; preds = %435
  %456 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %457 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %31, %struct.b2Vec2* %457)
  %458 = bitcast %struct.b2Vec2* %456 to i8*
  %459 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %458, i8* %459, i32 8, i32 4, i1 false)
  %460 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %461 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %32, %struct.b2Vec2* %461)
  %462 = bitcast %struct.b2Vec2* %460 to i8*
  %463 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %462, i8* %463, i32 8, i32 4, i1 false)
  %464 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %465 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %466 = bitcast %struct.b2Vec2* %464 to i8*
  %467 = bitcast %struct.b2Vec2* %465 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %466, i8* %467, i32 8, i32 4, i1 false)
  br label %468

; <label>:468                                     ; preds = %455, %442
  br label %509

; <label>:469                                     ; preds = %426
  %470 = load float* %offset1, align 4
  %471 = fcmp oge float %470, 0.000000e+00
  br i1 %471, label %472, label %475

; <label>:472                                     ; preds = %469
  %473 = load float* %offset2, align 4
  %474 = fcmp oge float %473, 0.000000e+00
  br label %475

; <label>:475                                     ; preds = %472, %469
  %476 = phi i1 [ false, %469 ], [ %474, %472 ]
  %477 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %478 = zext i1 %476 to i8
  store i8 %478, i8* %477, align 1
  %479 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %480 = load i8* %479, align 1
  %481 = trunc i8 %480 to i1
  br i1 %481, label %482, label %495

; <label>:482                                     ; preds = %475
  %483 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %484 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %485 = bitcast %struct.b2Vec2* %483 to i8*
  %486 = bitcast %struct.b2Vec2* %484 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %485, i8* %486, i32 8, i32 4, i1 false)
  %487 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %488 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %33, %struct.b2Vec2* %488)
  %489 = bitcast %struct.b2Vec2* %487 to i8*
  %490 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %489, i8* %490, i32 8, i32 4, i1 false)
  %491 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %492 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %493 = bitcast %struct.b2Vec2* %491 to i8*
  %494 = bitcast %struct.b2Vec2* %492 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %493, i8* %494, i32 8, i32 4, i1 false)
  br label %508

; <label>:495                                     ; preds = %475
  %496 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %497 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %34, %struct.b2Vec2* %497)
  %498 = bitcast %struct.b2Vec2* %496 to i8*
  %499 = bitcast %struct.b2Vec2* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %498, i8* %499, i32 8, i32 4, i1 false)
  %500 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %501 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 9
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %35, %struct.b2Vec2* %501)
  %502 = bitcast %struct.b2Vec2* %500 to i8*
  %503 = bitcast %struct.b2Vec2* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %502, i8* %503, i32 8, i32 4, i1 false)
  %504 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %505 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %506 = bitcast %struct.b2Vec2* %504 to i8*
  %507 = bitcast %struct.b2Vec2* %505 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %506, i8* %507, i32 8, i32 4, i1 false)
  br label %508

; <label>:508                                     ; preds = %495, %482
  br label %509

; <label>:509                                     ; preds = %508, %468
  br label %545

; <label>:510                                     ; preds = %423
  %511 = load float* %offset1, align 4
  %512 = fcmp oge float %511, 0.000000e+00
  %513 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %514 = zext i1 %512 to i8
  store i8 %514, i8* %513, align 1
  %515 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %516 = load i8* %515, align 1
  %517 = trunc i8 %516 to i1
  br i1 %517, label %518, label %531

; <label>:518                                     ; preds = %510
  %519 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %520 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %521 = bitcast %struct.b2Vec2* %519 to i8*
  %522 = bitcast %struct.b2Vec2* %520 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %521, i8* %522, i32 8, i32 4, i1 false)
  %523 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %524 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %36, %struct.b2Vec2* %524)
  %525 = bitcast %struct.b2Vec2* %523 to i8*
  %526 = bitcast %struct.b2Vec2* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %525, i8* %526, i32 8, i32 4, i1 false)
  %527 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %528 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %37, %struct.b2Vec2* %528)
  %529 = bitcast %struct.b2Vec2* %527 to i8*
  %530 = bitcast %struct.b2Vec2* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %529, i8* %530, i32 8, i32 4, i1 false)
  br label %544

; <label>:531                                     ; preds = %510
  %532 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %533 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %38, %struct.b2Vec2* %533)
  %534 = bitcast %struct.b2Vec2* %532 to i8*
  %535 = bitcast %struct.b2Vec2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %534, i8* %535, i32 8, i32 4, i1 false)
  %536 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 13
  %537 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %538 = bitcast %struct.b2Vec2* %536 to i8*
  %539 = bitcast %struct.b2Vec2* %537 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %538, i8* %539, i32 8, i32 4, i1 false)
  %540 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 14
  %541 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %542 = bitcast %struct.b2Vec2* %540 to i8*
  %543 = bitcast %struct.b2Vec2* %541 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %542, i8* %543, i32 8, i32 4, i1 false)
  br label %544

; <label>:544                                     ; preds = %531, %518
  br label %545

; <label>:545                                     ; preds = %544, %509
  br label %546

; <label>:546                                     ; preds = %545, %422
  br label %547

; <label>:547                                     ; preds = %546, %335
  %548 = load %class.b2PolygonShape** %5, align 4
  %549 = getelementptr inbounds %class.b2PolygonShape* %548, i32 0, i32 4
  %550 = load i32* %549, align 4
  %551 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %552 = getelementptr inbounds %struct.b2TempPolygon* %551, i32 0, i32 2
  store i32 %550, i32* %552, align 4
  store i32 0, i32* %i, align 4
  br label %553

; <label>:553                                     ; preds = %583, %547
  %554 = load i32* %i, align 4
  %555 = load %class.b2PolygonShape** %5, align 4
  %556 = getelementptr inbounds %class.b2PolygonShape* %555, i32 0, i32 4
  %557 = load i32* %556, align 4
  %558 = icmp slt i32 %554, %557
  br i1 %558, label %559, label %586

; <label>:559                                     ; preds = %553
  %560 = load i32* %i, align 4
  %561 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %562 = getelementptr inbounds %struct.b2TempPolygon* %561, i32 0, i32 0
  %563 = getelementptr inbounds [8 x %struct.b2Vec2]* %562, i32 0, i32 %560
  %564 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 1
  %565 = load i32* %i, align 4
  %566 = load %class.b2PolygonShape** %5, align 4
  %567 = getelementptr inbounds %class.b2PolygonShape* %566, i32 0, i32 2
  %568 = getelementptr inbounds [8 x %struct.b2Vec2]* %567, i32 0, i32 %565
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %39, %struct.b2Transform* %564, %struct.b2Vec2* %568)
  %569 = bitcast %struct.b2Vec2* %563 to i8*
  %570 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %569, i8* %570, i32 8, i32 4, i1 false)
  %571 = load i32* %i, align 4
  %572 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %573 = getelementptr inbounds %struct.b2TempPolygon* %572, i32 0, i32 1
  %574 = getelementptr inbounds [8 x %struct.b2Vec2]* %573, i32 0, i32 %571
  %575 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 1
  %576 = getelementptr inbounds %struct.b2Transform* %575, i32 0, i32 1
  %577 = load i32* %i, align 4
  %578 = load %class.b2PolygonShape** %5, align 4
  %579 = getelementptr inbounds %class.b2PolygonShape* %578, i32 0, i32 3
  %580 = getelementptr inbounds [8 x %struct.b2Vec2]* %579, i32 0, i32 %577
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %40, %struct.b2Rot* %576, %struct.b2Vec2* %580)
  %581 = bitcast %struct.b2Vec2* %574 to i8*
  %582 = bitcast %struct.b2Vec2* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %581, i8* %582, i32 8, i32 4, i1 false)
  br label %583

; <label>:583                                     ; preds = %559
  %584 = load i32* %i, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %i, align 4
  br label %553

; <label>:586                                     ; preds = %553
  %587 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 15
  store float 0x3F947AE140000000, float* %587, align 4
  %588 = load %struct.b2Manifold** %2, align 4
  %589 = getelementptr inbounds %struct.b2Manifold* %588, i32 0, i32 4
  store i32 0, i32* %589, align 4
  call void @_ZN12b2EPCollider21ComputeEdgeSeparationEv(%struct.b2EPAxis* sret %edgeAxis, %struct.b2EPCollider* %45)
  %590 = getelementptr inbounds %struct.b2EPAxis* %edgeAxis, i32 0, i32 0
  %591 = load i32* %590, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %594

; <label>:593                                     ; preds = %586
  br label %1060

; <label>:594                                     ; preds = %586
  %595 = getelementptr inbounds %struct.b2EPAxis* %edgeAxis, i32 0, i32 2
  %596 = load float* %595, align 4
  %597 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 15
  %598 = load float* %597, align 4
  %599 = fcmp ogt float %596, %598
  br i1 %599, label %600, label %601

; <label>:600                                     ; preds = %594
  br label %1060

; <label>:601                                     ; preds = %594
  call void @_ZN12b2EPCollider24ComputePolygonSeparationEv(%struct.b2EPAxis* sret %polygonAxis, %struct.b2EPCollider* %45)
  %602 = getelementptr inbounds %struct.b2EPAxis* %polygonAxis, i32 0, i32 0
  %603 = load i32* %602, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %612

; <label>:605                                     ; preds = %601
  %606 = getelementptr inbounds %struct.b2EPAxis* %polygonAxis, i32 0, i32 2
  %607 = load float* %606, align 4
  %608 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 15
  %609 = load float* %608, align 4
  %610 = fcmp ogt float %607, %609
  br i1 %610, label %611, label %612

; <label>:611                                     ; preds = %605
  br label %1060

; <label>:612                                     ; preds = %605, %601
  store float 0x3FEF5C2900000000, float* %k_relativeTol, align 4
  store float 0x3F50624DE0000000, float* %k_absoluteTol, align 4
  %613 = getelementptr inbounds %struct.b2EPAxis* %polygonAxis, i32 0, i32 0
  %614 = load i32* %613, align 4
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %619

; <label>:616                                     ; preds = %612
  %617 = bitcast %struct.b2EPAxis* %primaryAxis to i8*
  %618 = bitcast %struct.b2EPAxis* %edgeAxis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %617, i8* %618, i32 12, i32 4, i1 false)
  br label %634

; <label>:619                                     ; preds = %612
  %620 = getelementptr inbounds %struct.b2EPAxis* %polygonAxis, i32 0, i32 2
  %621 = load float* %620, align 4
  %622 = getelementptr inbounds %struct.b2EPAxis* %edgeAxis, i32 0, i32 2
  %623 = load float* %622, align 4
  %624 = fmul float 0x3FEF5C2900000000, %623
  %625 = fadd float %624, 0x3F50624DE0000000
  %626 = fcmp ogt float %621, %625
  br i1 %626, label %627, label %630

; <label>:627                                     ; preds = %619
  %628 = bitcast %struct.b2EPAxis* %primaryAxis to i8*
  %629 = bitcast %struct.b2EPAxis* %polygonAxis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %628, i8* %629, i32 12, i32 4, i1 false)
  br label %633

; <label>:630                                     ; preds = %619
  %631 = bitcast %struct.b2EPAxis* %primaryAxis to i8*
  %632 = bitcast %struct.b2EPAxis* %edgeAxis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %631, i8* %632, i32 12, i32 4, i1 false)
  br label %633

; <label>:633                                     ; preds = %630, %627
  br label %634

; <label>:634                                     ; preds = %633, %616
  %635 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %636 = getelementptr inbounds %struct.b2ClipVertex* %635, i32 2
  br label %637

; <label>:637                                     ; preds = %637, %634
  %638 = phi %struct.b2ClipVertex* [ %635, %634 ], [ %639, %637 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %638)
  %639 = getelementptr inbounds %struct.b2ClipVertex* %638, i32 1
  %640 = icmp eq %struct.b2ClipVertex* %639, %636
  br i1 %640, label %641, label %637

; <label>:641                                     ; preds = %637
  call void @_ZN15b2ReferenceFaceC1Ev(%struct.b2ReferenceFace* %rf)
  %642 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 0
  %643 = load i32* %642, align 4
  %644 = icmp eq i32 %643, 1
  br i1 %644, label %645, label %776

; <label>:645                                     ; preds = %641
  %646 = load %struct.b2Manifold** %2, align 4
  %647 = getelementptr inbounds %struct.b2Manifold* %646, i32 0, i32 3
  store i32 1, i32* %647, align 4
  store i32 0, i32* %bestIndex, align 4
  %648 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %649 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %650 = getelementptr inbounds %struct.b2TempPolygon* %649, i32 0, i32 1
  %651 = getelementptr inbounds [8 x %struct.b2Vec2]* %650, i32 0, i32 0
  %652 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %648, %struct.b2Vec2* %651)
  store float %652, float* %bestValue, align 4
  store i32 1, i32* %i1, align 4
  br label %653

; <label>:653                                     ; preds = %673, %645
  %654 = load i32* %i1, align 4
  %655 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %656 = getelementptr inbounds %struct.b2TempPolygon* %655, i32 0, i32 2
  %657 = load i32* %656, align 4
  %658 = icmp slt i32 %654, %657
  br i1 %658, label %659, label %676

; <label>:659                                     ; preds = %653
  %660 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 10
  %661 = load i32* %i1, align 4
  %662 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %663 = getelementptr inbounds %struct.b2TempPolygon* %662, i32 0, i32 1
  %664 = getelementptr inbounds [8 x %struct.b2Vec2]* %663, i32 0, i32 %661
  %665 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %660, %struct.b2Vec2* %664)
  store float %665, float* %value, align 4
  %666 = load float* %value, align 4
  %667 = load float* %bestValue, align 4
  %668 = fcmp olt float %666, %667
  br i1 %668, label %669, label %672

; <label>:669                                     ; preds = %659
  %670 = load float* %value, align 4
  store float %670, float* %bestValue, align 4
  %671 = load i32* %i1, align 4
  store i32 %671, i32* %bestIndex, align 4
  br label %672

; <label>:672                                     ; preds = %669, %659
  br label %673

; <label>:673                                     ; preds = %672
  %674 = load i32* %i1, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %i1, align 4
  br label %653

; <label>:676                                     ; preds = %653
  %677 = load i32* %bestIndex, align 4
  store i32 %677, i32* %i12, align 4
  %678 = load i32* %i12, align 4
  %679 = add nsw i32 %678, 1
  %680 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %681 = getelementptr inbounds %struct.b2TempPolygon* %680, i32 0, i32 2
  %682 = load i32* %681, align 4
  %683 = icmp slt i32 %679, %682
  br i1 %683, label %684, label %687

; <label>:684                                     ; preds = %676
  %685 = load i32* %i12, align 4
  %686 = add nsw i32 %685, 1
  br label %688

; <label>:687                                     ; preds = %676
  br label %688

; <label>:688                                     ; preds = %687, %684
  %689 = phi i32 [ %686, %684 ], [ 0, %687 ]
  store i32 %689, i32* %i2, align 4
  %690 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %691 = getelementptr inbounds %struct.b2ClipVertex* %690, i32 0, i32 0
  %692 = load i32* %i12, align 4
  %693 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %694 = getelementptr inbounds %struct.b2TempPolygon* %693, i32 0, i32 0
  %695 = getelementptr inbounds [8 x %struct.b2Vec2]* %694, i32 0, i32 %692
  %696 = bitcast %struct.b2Vec2* %691 to i8*
  %697 = bitcast %struct.b2Vec2* %695 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %696, i8* %697, i32 8, i32 4, i1 false)
  %698 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %699 = getelementptr inbounds %struct.b2ClipVertex* %698, i32 0, i32 1
  %700 = bitcast %union.b2ContactID* %699 to %struct.b2ContactFeature*
  %701 = getelementptr inbounds %struct.b2ContactFeature* %700, i32 0, i32 0
  store i8 0, i8* %701, align 1
  %702 = load i32* %i12, align 4
  %703 = trunc i32 %702 to i8
  %704 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %705 = getelementptr inbounds %struct.b2ClipVertex* %704, i32 0, i32 1
  %706 = bitcast %union.b2ContactID* %705 to %struct.b2ContactFeature*
  %707 = getelementptr inbounds %struct.b2ContactFeature* %706, i32 0, i32 1
  store i8 %703, i8* %707, align 1
  %708 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %709 = getelementptr inbounds %struct.b2ClipVertex* %708, i32 0, i32 1
  %710 = bitcast %union.b2ContactID* %709 to %struct.b2ContactFeature*
  %711 = getelementptr inbounds %struct.b2ContactFeature* %710, i32 0, i32 2
  store i8 1, i8* %711, align 1
  %712 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %713 = getelementptr inbounds %struct.b2ClipVertex* %712, i32 0, i32 1
  %714 = bitcast %union.b2ContactID* %713 to %struct.b2ContactFeature*
  %715 = getelementptr inbounds %struct.b2ContactFeature* %714, i32 0, i32 3
  store i8 0, i8* %715, align 1
  %716 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %717 = getelementptr inbounds %struct.b2ClipVertex* %716, i32 0, i32 0
  %718 = load i32* %i2, align 4
  %719 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %720 = getelementptr inbounds %struct.b2TempPolygon* %719, i32 0, i32 0
  %721 = getelementptr inbounds [8 x %struct.b2Vec2]* %720, i32 0, i32 %718
  %722 = bitcast %struct.b2Vec2* %717 to i8*
  %723 = bitcast %struct.b2Vec2* %721 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %722, i8* %723, i32 8, i32 4, i1 false)
  %724 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %725 = getelementptr inbounds %struct.b2ClipVertex* %724, i32 0, i32 1
  %726 = bitcast %union.b2ContactID* %725 to %struct.b2ContactFeature*
  %727 = getelementptr inbounds %struct.b2ContactFeature* %726, i32 0, i32 0
  store i8 0, i8* %727, align 1
  %728 = load i32* %i2, align 4
  %729 = trunc i32 %728 to i8
  %730 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %731 = getelementptr inbounds %struct.b2ClipVertex* %730, i32 0, i32 1
  %732 = bitcast %union.b2ContactID* %731 to %struct.b2ContactFeature*
  %733 = getelementptr inbounds %struct.b2ContactFeature* %732, i32 0, i32 1
  store i8 %729, i8* %733, align 1
  %734 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %735 = getelementptr inbounds %struct.b2ClipVertex* %734, i32 0, i32 1
  %736 = bitcast %union.b2ContactID* %735 to %struct.b2ContactFeature*
  %737 = getelementptr inbounds %struct.b2ContactFeature* %736, i32 0, i32 2
  store i8 1, i8* %737, align 1
  %738 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %739 = getelementptr inbounds %struct.b2ClipVertex* %738, i32 0, i32 1
  %740 = bitcast %union.b2ContactID* %739 to %struct.b2ContactFeature*
  %741 = getelementptr inbounds %struct.b2ContactFeature* %740, i32 0, i32 3
  store i8 0, i8* %741, align 1
  %742 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 16
  %743 = load i8* %742, align 1
  %744 = trunc i8 %743 to i1
  br i1 %744, label %745, label %760

; <label>:745                                     ; preds = %688
  %746 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  store i32 0, i32* %746, align 4
  %747 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 1
  store i32 1, i32* %747, align 4
  %748 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  %749 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  %750 = bitcast %struct.b2Vec2* %748 to i8*
  %751 = bitcast %struct.b2Vec2* %749 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %750, i8* %751, i32 8, i32 4, i1 false)
  %752 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 3
  %753 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  %754 = bitcast %struct.b2Vec2* %752 to i8*
  %755 = bitcast %struct.b2Vec2* %753 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %754, i8* %755, i32 8, i32 4, i1 false)
  %756 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %757 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  %758 = bitcast %struct.b2Vec2* %756 to i8*
  %759 = bitcast %struct.b2Vec2* %757 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %758, i8* %759, i32 8, i32 4, i1 false)
  br label %775

; <label>:760                                     ; preds = %688
  %761 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  store i32 1, i32* %761, align 4
  %762 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 1
  store i32 0, i32* %762, align 4
  %763 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  %764 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  %765 = bitcast %struct.b2Vec2* %763 to i8*
  %766 = bitcast %struct.b2Vec2* %764 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %765, i8* %766, i32 8, i32 4, i1 false)
  %767 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 3
  %768 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  %769 = bitcast %struct.b2Vec2* %767 to i8*
  %770 = bitcast %struct.b2Vec2* %768 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %769, i8* %770, i32 8, i32 4, i1 false)
  %771 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %772 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 8
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %41, %struct.b2Vec2* %772)
  %773 = bitcast %struct.b2Vec2* %771 to i8*
  %774 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %773, i8* %774, i32 8, i32 4, i1 false)
  br label %775

; <label>:775                                     ; preds = %760, %745
  br label %869

; <label>:776                                     ; preds = %641
  %777 = load %struct.b2Manifold** %2, align 4
  %778 = getelementptr inbounds %struct.b2Manifold* %777, i32 0, i32 3
  store i32 2, i32* %778, align 4
  %779 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %780 = getelementptr inbounds %struct.b2ClipVertex* %779, i32 0, i32 0
  %781 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 4
  %782 = bitcast %struct.b2Vec2* %780 to i8*
  %783 = bitcast %struct.b2Vec2* %781 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %782, i8* %783, i32 8, i32 4, i1 false)
  %784 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %785 = getelementptr inbounds %struct.b2ClipVertex* %784, i32 0, i32 1
  %786 = bitcast %union.b2ContactID* %785 to %struct.b2ContactFeature*
  %787 = getelementptr inbounds %struct.b2ContactFeature* %786, i32 0, i32 0
  store i8 0, i8* %787, align 1
  %788 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 1
  %789 = load i32* %788, align 4
  %790 = trunc i32 %789 to i8
  %791 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %792 = getelementptr inbounds %struct.b2ClipVertex* %791, i32 0, i32 1
  %793 = bitcast %union.b2ContactID* %792 to %struct.b2ContactFeature*
  %794 = getelementptr inbounds %struct.b2ContactFeature* %793, i32 0, i32 1
  store i8 %790, i8* %794, align 1
  %795 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %796 = getelementptr inbounds %struct.b2ClipVertex* %795, i32 0, i32 1
  %797 = bitcast %union.b2ContactID* %796 to %struct.b2ContactFeature*
  %798 = getelementptr inbounds %struct.b2ContactFeature* %797, i32 0, i32 2
  store i8 0, i8* %798, align 1
  %799 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %800 = getelementptr inbounds %struct.b2ClipVertex* %799, i32 0, i32 1
  %801 = bitcast %union.b2ContactID* %800 to %struct.b2ContactFeature*
  %802 = getelementptr inbounds %struct.b2ContactFeature* %801, i32 0, i32 3
  store i8 1, i8* %802, align 1
  %803 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %804 = getelementptr inbounds %struct.b2ClipVertex* %803, i32 0, i32 0
  %805 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 5
  %806 = bitcast %struct.b2Vec2* %804 to i8*
  %807 = bitcast %struct.b2Vec2* %805 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %806, i8* %807, i32 8, i32 4, i1 false)
  %808 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %809 = getelementptr inbounds %struct.b2ClipVertex* %808, i32 0, i32 1
  %810 = bitcast %union.b2ContactID* %809 to %struct.b2ContactFeature*
  %811 = getelementptr inbounds %struct.b2ContactFeature* %810, i32 0, i32 0
  store i8 0, i8* %811, align 1
  %812 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 1
  %813 = load i32* %812, align 4
  %814 = trunc i32 %813 to i8
  %815 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %816 = getelementptr inbounds %struct.b2ClipVertex* %815, i32 0, i32 1
  %817 = bitcast %union.b2ContactID* %816 to %struct.b2ContactFeature*
  %818 = getelementptr inbounds %struct.b2ContactFeature* %817, i32 0, i32 1
  store i8 %814, i8* %818, align 1
  %819 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %820 = getelementptr inbounds %struct.b2ClipVertex* %819, i32 0, i32 1
  %821 = bitcast %union.b2ContactID* %820 to %struct.b2ContactFeature*
  %822 = getelementptr inbounds %struct.b2ContactFeature* %821, i32 0, i32 2
  store i8 0, i8* %822, align 1
  %823 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 1
  %824 = getelementptr inbounds %struct.b2ClipVertex* %823, i32 0, i32 1
  %825 = bitcast %union.b2ContactID* %824 to %struct.b2ContactFeature*
  %826 = getelementptr inbounds %struct.b2ContactFeature* %825, i32 0, i32 3
  store i8 1, i8* %826, align 1
  %827 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 1
  %828 = load i32* %827, align 4
  %829 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  store i32 %828, i32* %829, align 4
  %830 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %831 = load i32* %830, align 4
  %832 = add nsw i32 %831, 1
  %833 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %834 = getelementptr inbounds %struct.b2TempPolygon* %833, i32 0, i32 2
  %835 = load i32* %834, align 4
  %836 = icmp slt i32 %832, %835
  br i1 %836, label %837, label %841

; <label>:837                                     ; preds = %776
  %838 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %839 = load i32* %838, align 4
  %840 = add nsw i32 %839, 1
  br label %842

; <label>:841                                     ; preds = %776
  br label %842

; <label>:842                                     ; preds = %841, %837
  %843 = phi i32 [ %840, %837 ], [ 0, %841 ]
  %844 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 1
  store i32 %843, i32* %844, align 4
  %845 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  %846 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %847 = load i32* %846, align 4
  %848 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %849 = getelementptr inbounds %struct.b2TempPolygon* %848, i32 0, i32 0
  %850 = getelementptr inbounds [8 x %struct.b2Vec2]* %849, i32 0, i32 %847
  %851 = bitcast %struct.b2Vec2* %845 to i8*
  %852 = bitcast %struct.b2Vec2* %850 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %851, i8* %852, i32 8, i32 4, i1 false)
  %853 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 3
  %854 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 1
  %855 = load i32* %854, align 4
  %856 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %857 = getelementptr inbounds %struct.b2TempPolygon* %856, i32 0, i32 0
  %858 = getelementptr inbounds [8 x %struct.b2Vec2]* %857, i32 0, i32 %855
  %859 = bitcast %struct.b2Vec2* %853 to i8*
  %860 = bitcast %struct.b2Vec2* %858 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %859, i8* %860, i32 8, i32 4, i1 false)
  %861 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %862 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %863 = load i32* %862, align 4
  %864 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 0
  %865 = getelementptr inbounds %struct.b2TempPolygon* %864, i32 0, i32 1
  %866 = getelementptr inbounds [8 x %struct.b2Vec2]* %865, i32 0, i32 %863
  %867 = bitcast %struct.b2Vec2* %861 to i8*
  %868 = bitcast %struct.b2Vec2* %866 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %867, i8* %868, i32 8, i32 4, i1 false)
  br label %869

; <label>:869                                     ; preds = %842, %775
  %870 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 5
  %871 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %872 = getelementptr inbounds %struct.b2Vec2* %871, i32 0, i32 1
  %873 = load float* %872, align 4
  %874 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %875 = getelementptr inbounds %struct.b2Vec2* %874, i32 0, i32 0
  %876 = load float* %875, align 4
  %877 = fsub float -0.000000e+00, %876
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %870, float %873, float %877)
  %878 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 7
  %879 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 5
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %42, %struct.b2Vec2* %879)
  %880 = bitcast %struct.b2Vec2* %878 to i8*
  %881 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %880, i8* %881, i32 8, i32 4, i1 false)
  %882 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 5
  %883 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  %884 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %882, %struct.b2Vec2* %883)
  %885 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 6
  store float %884, float* %885, align 4
  %886 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 7
  %887 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 3
  %888 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %886, %struct.b2Vec2* %887)
  %889 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 8
  store float %888, float* %889, align 4
  %890 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %891 = getelementptr inbounds %struct.b2ClipVertex* %890, i32 2
  br label %892

; <label>:892                                     ; preds = %892, %869
  %893 = phi %struct.b2ClipVertex* [ %890, %869 ], [ %894, %892 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %893)
  %894 = getelementptr inbounds %struct.b2ClipVertex* %893, i32 1
  %895 = icmp eq %struct.b2ClipVertex* %894, %891
  br i1 %895, label %896, label %892

; <label>:896                                     ; preds = %892
  %897 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 0
  %898 = getelementptr inbounds %struct.b2ClipVertex* %897, i32 2
  br label %899

; <label>:899                                     ; preds = %899, %896
  %900 = phi %struct.b2ClipVertex* [ %897, %896 ], [ %901, %899 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %900)
  %901 = getelementptr inbounds %struct.b2ClipVertex* %900, i32 1
  %902 = icmp eq %struct.b2ClipVertex* %901, %898
  br i1 %902, label %903, label %899

; <label>:903                                     ; preds = %899
  %904 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %905 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %ie, i32 0, i32 0
  %906 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 5
  %907 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 6
  %908 = load float* %907, align 4
  %909 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %910 = load i32* %909, align 4
  %911 = call i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex* %904, %struct.b2ClipVertex* %905, %struct.b2Vec2* %906, float %908, i32 %910)
  store i32 %911, i32* %np, align 4
  %912 = load i32* %np, align 4
  %913 = icmp slt i32 %912, 2
  br i1 %913, label %914, label %915

; <label>:914                                     ; preds = %903
  br label %1060

; <label>:915                                     ; preds = %903
  %916 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 0
  %917 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %918 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 7
  %919 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 8
  %920 = load float* %919, align 4
  %921 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 1
  %922 = load i32* %921, align 4
  %923 = call i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex* %916, %struct.b2ClipVertex* %917, %struct.b2Vec2* %918, float %920, i32 %922)
  store i32 %923, i32* %np, align 4
  %924 = load i32* %np, align 4
  %925 = icmp slt i32 %924, 2
  br i1 %925, label %926, label %927

; <label>:926                                     ; preds = %915
  br label %1060

; <label>:927                                     ; preds = %915
  %928 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 0
  %929 = load i32* %928, align 4
  %930 = icmp eq i32 %929, 1
  br i1 %930, label %931, label %942

; <label>:931                                     ; preds = %927
  %932 = load %struct.b2Manifold** %2, align 4
  %933 = getelementptr inbounds %struct.b2Manifold* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %935 = bitcast %struct.b2Vec2* %933 to i8*
  %936 = bitcast %struct.b2Vec2* %934 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %935, i8* %936, i32 8, i32 4, i1 false)
  %937 = load %struct.b2Manifold** %2, align 4
  %938 = getelementptr inbounds %struct.b2Manifold* %937, i32 0, i32 2
  %939 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  %940 = bitcast %struct.b2Vec2* %938 to i8*
  %941 = bitcast %struct.b2Vec2* %939 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %940, i8* %941, i32 8, i32 4, i1 false)
  br label %961

; <label>:942                                     ; preds = %927
  %943 = load %struct.b2Manifold** %2, align 4
  %944 = getelementptr inbounds %struct.b2Manifold* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %946 = load i32* %945, align 4
  %947 = load %class.b2PolygonShape** %5, align 4
  %948 = getelementptr inbounds %class.b2PolygonShape* %947, i32 0, i32 3
  %949 = getelementptr inbounds [8 x %struct.b2Vec2]* %948, i32 0, i32 %946
  %950 = bitcast %struct.b2Vec2* %944 to i8*
  %951 = bitcast %struct.b2Vec2* %949 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %950, i8* %951, i32 8, i32 4, i1 false)
  %952 = load %struct.b2Manifold** %2, align 4
  %953 = getelementptr inbounds %struct.b2Manifold* %952, i32 0, i32 2
  %954 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 0
  %955 = load i32* %954, align 4
  %956 = load %class.b2PolygonShape** %5, align 4
  %957 = getelementptr inbounds %class.b2PolygonShape* %956, i32 0, i32 2
  %958 = getelementptr inbounds [8 x %struct.b2Vec2]* %957, i32 0, i32 %955
  %959 = bitcast %struct.b2Vec2* %953 to i8*
  %960 = bitcast %struct.b2Vec2* %958 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %959, i8* %960, i32 8, i32 4, i1 false)
  br label %961

; <label>:961                                     ; preds = %942, %931
  store i32 0, i32* %pointCount, align 4
  store i32 0, i32* %i3, align 4
  br label %962

; <label>:962                                     ; preds = %1053, %961
  %963 = load i32* %i3, align 4
  %964 = icmp slt i32 %963, 2
  br i1 %964, label %965, label %1056

; <label>:965                                     ; preds = %962
  %966 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 4
  %967 = load i32* %i3, align 4
  %968 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %967
  %969 = getelementptr inbounds %struct.b2ClipVertex* %968, i32 0, i32 0
  %970 = getelementptr inbounds %struct.b2ReferenceFace* %rf, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %43, %struct.b2Vec2* %969, %struct.b2Vec2* %970)
  %971 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %966, %struct.b2Vec2* %43)
  store float %971, float* %separation, align 4
  %972 = load float* %separation, align 4
  %973 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 15
  %974 = load float* %973, align 4
  %975 = fcmp ole float %972, %974
  br i1 %975, label %976, label %1052

; <label>:976                                     ; preds = %965
  %977 = load %struct.b2Manifold** %2, align 4
  %978 = getelementptr inbounds %struct.b2Manifold* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %978, i32 0, i32 0
  %980 = load i32* %pointCount, align 4
  %981 = getelementptr inbounds %struct.b2ManifoldPoint* %979, i32 %980
  store %struct.b2ManifoldPoint* %981, %struct.b2ManifoldPoint** %cp, align 4
  %982 = getelementptr inbounds %struct.b2EPAxis* %primaryAxis, i32 0, i32 0
  %983 = load i32* %982, align 4
  %984 = icmp eq i32 %983, 1
  br i1 %984, label %985, label %1001

; <label>:985                                     ; preds = %976
  %986 = load %struct.b2ManifoldPoint** %cp, align 4
  %987 = getelementptr inbounds %struct.b2ManifoldPoint* %986, i32 0, i32 0
  %988 = getelementptr inbounds %struct.b2EPCollider* %45, i32 0, i32 1
  %989 = load i32* %i3, align 4
  %990 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %989
  %991 = getelementptr inbounds %struct.b2ClipVertex* %990, i32 0, i32 0
  call void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %44, %struct.b2Transform* %988, %struct.b2Vec2* %991)
  %992 = bitcast %struct.b2Vec2* %987 to i8*
  %993 = bitcast %struct.b2Vec2* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %992, i8* %993, i32 8, i32 4, i1 false)
  %994 = load %struct.b2ManifoldPoint** %cp, align 4
  %995 = getelementptr inbounds %struct.b2ManifoldPoint* %994, i32 0, i32 3
  %996 = load i32* %i3, align 4
  %997 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %996
  %998 = getelementptr inbounds %struct.b2ClipVertex* %997, i32 0, i32 1
  %999 = bitcast %union.b2ContactID* %995 to i8*
  %1000 = bitcast %union.b2ContactID* %998 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %999, i8* %1000, i32 4, i32 4, i1 false)
  br label %1049

; <label>:1001                                    ; preds = %976
  %1002 = load %struct.b2ManifoldPoint** %cp, align 4
  %1003 = getelementptr inbounds %struct.b2ManifoldPoint* %1002, i32 0, i32 0
  %1004 = load i32* %i3, align 4
  %1005 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %1004
  %1006 = getelementptr inbounds %struct.b2ClipVertex* %1005, i32 0, i32 0
  %1007 = bitcast %struct.b2Vec2* %1003 to i8*
  %1008 = bitcast %struct.b2Vec2* %1006 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1007, i8* %1008, i32 8, i32 4, i1 false)
  %1009 = load i32* %i3, align 4
  %1010 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %1009
  %1011 = getelementptr inbounds %struct.b2ClipVertex* %1010, i32 0, i32 1
  %1012 = bitcast %union.b2ContactID* %1011 to %struct.b2ContactFeature*
  %1013 = getelementptr inbounds %struct.b2ContactFeature* %1012, i32 0, i32 3
  %1014 = load i8* %1013, align 1
  %1015 = load %struct.b2ManifoldPoint** %cp, align 4
  %1016 = getelementptr inbounds %struct.b2ManifoldPoint* %1015, i32 0, i32 3
  %1017 = bitcast %union.b2ContactID* %1016 to %struct.b2ContactFeature*
  %1018 = getelementptr inbounds %struct.b2ContactFeature* %1017, i32 0, i32 2
  store i8 %1014, i8* %1018, align 1
  %1019 = load i32* %i3, align 4
  %1020 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %1019
  %1021 = getelementptr inbounds %struct.b2ClipVertex* %1020, i32 0, i32 1
  %1022 = bitcast %union.b2ContactID* %1021 to %struct.b2ContactFeature*
  %1023 = getelementptr inbounds %struct.b2ContactFeature* %1022, i32 0, i32 2
  %1024 = load i8* %1023, align 1
  %1025 = load %struct.b2ManifoldPoint** %cp, align 4
  %1026 = getelementptr inbounds %struct.b2ManifoldPoint* %1025, i32 0, i32 3
  %1027 = bitcast %union.b2ContactID* %1026 to %struct.b2ContactFeature*
  %1028 = getelementptr inbounds %struct.b2ContactFeature* %1027, i32 0, i32 3
  store i8 %1024, i8* %1028, align 1
  %1029 = load i32* %i3, align 4
  %1030 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %1029
  %1031 = getelementptr inbounds %struct.b2ClipVertex* %1030, i32 0, i32 1
  %1032 = bitcast %union.b2ContactID* %1031 to %struct.b2ContactFeature*
  %1033 = getelementptr inbounds %struct.b2ContactFeature* %1032, i32 0, i32 1
  %1034 = load i8* %1033, align 1
  %1035 = load %struct.b2ManifoldPoint** %cp, align 4
  %1036 = getelementptr inbounds %struct.b2ManifoldPoint* %1035, i32 0, i32 3
  %1037 = bitcast %union.b2ContactID* %1036 to %struct.b2ContactFeature*
  %1038 = getelementptr inbounds %struct.b2ContactFeature* %1037, i32 0, i32 0
  store i8 %1034, i8* %1038, align 1
  %1039 = load i32* %i3, align 4
  %1040 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %1039
  %1041 = getelementptr inbounds %struct.b2ClipVertex* %1040, i32 0, i32 1
  %1042 = bitcast %union.b2ContactID* %1041 to %struct.b2ContactFeature*
  %1043 = getelementptr inbounds %struct.b2ContactFeature* %1042, i32 0, i32 0
  %1044 = load i8* %1043, align 1
  %1045 = load %struct.b2ManifoldPoint** %cp, align 4
  %1046 = getelementptr inbounds %struct.b2ManifoldPoint* %1045, i32 0, i32 3
  %1047 = bitcast %union.b2ContactID* %1046 to %struct.b2ContactFeature*
  %1048 = getelementptr inbounds %struct.b2ContactFeature* %1047, i32 0, i32 1
  store i8 %1044, i8* %1048, align 1
  br label %1049

; <label>:1049                                    ; preds = %1001, %985
  %1050 = load i32* %pointCount, align 4
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, i32* %pointCount, align 4
  br label %1052

; <label>:1052                                    ; preds = %1049, %965
  br label %1053

; <label>:1053                                    ; preds = %1052
  %1054 = load i32* %i3, align 4
  %1055 = add nsw i32 %1054, 1
  store i32 %1055, i32* %i3, align 4
  br label %962

; <label>:1056                                    ; preds = %962
  %1057 = load i32* %pointCount, align 4
  %1058 = load %struct.b2Manifold** %2, align 4
  %1059 = getelementptr inbounds %struct.b2Manifold* %1058, i32 0, i32 4
  store i32 %1057, i32* %1059, align 4
  br label %1060

; <label>:1060                                    ; preds = %1056, %926, %914, %611, %600, %593
  ret void
}

define linkonce_odr void @_Z6b2MulTRK11b2TransformS1_(%struct.b2Transform* noalias sret %agg.result, %struct.b2Transform* %A, %struct.b2Transform* %B) inlinehint {
  %1 = alloca %struct.b2Transform*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca %struct.b2Rot, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2Transform* %A, %struct.b2Transform** %1, align 4
  store %struct.b2Transform* %B, %struct.b2Transform** %2, align 4
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %agg.result)
  %6 = getelementptr inbounds %struct.b2Transform* %agg.result, i32 0, i32 1
  %7 = load %struct.b2Transform** %1
  %8 = getelementptr inbounds %struct.b2Transform* %7, i32 0, i32 1
  %9 = load %struct.b2Transform** %2
  %10 = getelementptr inbounds %struct.b2Transform* %9, i32 0, i32 1
  call void @_Z6b2MulTRK5b2RotS1_(%struct.b2Rot* sret %3, %struct.b2Rot* %8, %struct.b2Rot* %10)
  %11 = bitcast %struct.b2Rot* %6 to i8*
  %12 = bitcast %struct.b2Rot* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  %13 = getelementptr inbounds %struct.b2Transform* %agg.result, i32 0, i32 0
  %14 = load %struct.b2Transform** %1
  %15 = getelementptr inbounds %struct.b2Transform* %14, i32 0, i32 1
  %16 = load %struct.b2Transform** %2
  %17 = getelementptr inbounds %struct.b2Transform* %16, i32 0, i32 0
  %18 = load %struct.b2Transform** %1
  %19 = getelementptr inbounds %struct.b2Transform* %18, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %17, %struct.b2Vec2* %19)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %4, %struct.b2Rot* %15, %struct.b2Vec2* %5)
  %20 = bitcast %struct.b2Vec2* %13 to i8*
  %21 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
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

define void @_ZN12b2EPCollider21ComputeEdgeSeparationEv(%struct.b2EPAxis* noalias sret %agg.result, %struct.b2EPCollider* %this) align 2 {
  %1 = alloca %struct.b2EPCollider*, align 4
  %i = alloca i32, align 4
  %s = alloca float, align 4
  %2 = alloca %struct.b2Vec2, align 4
  store %struct.b2EPCollider* %this, %struct.b2EPCollider** %1, align 4
  %3 = load %struct.b2EPCollider** %1
  %4 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.b2EPCollider* %3, i32 0, i32 16
  %6 = load i8* %5, align 1
  %7 = trunc i8 %6 to i1
  %8 = select i1 %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %10, align 4
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %33, %0
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds %struct.b2EPCollider* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.b2TempPolygon* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.b2EPCollider* %3, i32 0, i32 10
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %struct.b2EPCollider* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.b2TempPolygon* %20, i32 0, i32 0
  %22 = getelementptr inbounds [8 x %struct.b2Vec2]* %21, i32 0, i32 %19
  %23 = getelementptr inbounds %struct.b2EPCollider* %3, i32 0, i32 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %22, %struct.b2Vec2* %23)
  %24 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %18, %struct.b2Vec2* %2)
  store float %24, float* %s, align 4
  %25 = load float* %s, align 4
  %26 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  %27 = load float* %26, align 4
  %28 = fcmp olt float %25, %27
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %17
  %30 = load float* %s, align 4
  %31 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  store float %30, float* %31, align 4
  br label %32

; <label>:32                                      ; preds = %29, %17
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32* %i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4
  br label %11

; <label>:36                                      ; preds = %11
  ret void
}

define void @_ZN12b2EPCollider24ComputePolygonSeparationEv(%struct.b2EPAxis* noalias sret %agg.result, %struct.b2EPCollider* %this) align 2 {
  %1 = alloca %struct.b2EPCollider*, align 4
  %perp = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %n = alloca %struct.b2Vec2, align 4
  %s1 = alloca float, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %s2 = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %s = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2EPCollider* %this, %struct.b2EPCollider** %1, align 4
  %6 = load %struct.b2EPCollider** %1
  %7 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 1
  store i32 -1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %9, align 4
  %10 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 10
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = fsub float -0.000000e+00, %12
  %14 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 10
  %15 = getelementptr inbounds %struct.b2Vec2* %14, i32 0, i32 0
  %16 = load float* %15, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %perp, float %13, float %16)
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %82, %0
  %18 = load i32* %i, align 4
  %19 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.b2TempPolygon* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %85

; <label>:23                                      ; preds = %17
  %24 = load i32* %i, align 4
  %25 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.b2TempPolygon* %25, i32 0, i32 1
  %27 = getelementptr inbounds [8 x %struct.b2Vec2]* %26, i32 0, i32 %24
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %n, %struct.b2Vec2* %27)
  %28 = load i32* %i, align 4
  %29 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.b2TempPolygon* %29, i32 0, i32 0
  %31 = getelementptr inbounds [8 x %struct.b2Vec2]* %30, i32 0, i32 %28
  %32 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %31, %struct.b2Vec2* %32)
  %33 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %n, %struct.b2Vec2* %2)
  store float %33, float* %s1, align 4
  %34 = load i32* %i, align 4
  %35 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.b2TempPolygon* %35, i32 0, i32 0
  %37 = getelementptr inbounds [8 x %struct.b2Vec2]* %36, i32 0, i32 %34
  %38 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 5
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %37, %struct.b2Vec2* %38)
  %39 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %n, %struct.b2Vec2* %3)
  store float %39, float* %s2, align 4
  %40 = load float* %s1, align 4
  %41 = load float* %s2, align 4
  %42 = call float @_Z5b2MinIfET_S0_S0_(float %40, float %41)
  store float %42, float* %s, align 4
  %43 = load float* %s, align 4
  %44 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 15
  %45 = load float* %44, align 4
  %46 = fcmp ogt float %43, %45
  br i1 %46, label %47, label %53

; <label>:47                                      ; preds = %23
  %48 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 0
  store i32 2, i32* %48, align 4
  %49 = load i32* %i, align 4
  %50 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load float* %s, align 4
  %52 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  store float %51, float* %52, align 4
  br label %86

; <label>:53                                      ; preds = %23
  %54 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %n, %struct.b2Vec2* %perp)
  %55 = fcmp oge float %54, 0.000000e+00
  br i1 %55, label %56, label %63

; <label>:56                                      ; preds = %53
  %57 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 14
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %n, %struct.b2Vec2* %57)
  %58 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 10
  %59 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %4, %struct.b2Vec2* %58)
  %60 = fcmp olt float %59, 0xBFA1DF46C0000000
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %56
  br label %82

; <label>:62                                      ; preds = %56
  br label %70

; <label>:63                                      ; preds = %53
  %64 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 13
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %n, %struct.b2Vec2* %64)
  %65 = getelementptr inbounds %struct.b2EPCollider* %6, i32 0, i32 10
  %66 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %5, %struct.b2Vec2* %65)
  %67 = fcmp olt float %66, 0xBFA1DF46C0000000
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %63
  br label %82

; <label>:69                                      ; preds = %63
  br label %70

; <label>:70                                      ; preds = %69, %62
  %71 = load float* %s, align 4
  %72 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  %73 = load float* %72, align 4
  %74 = fcmp ogt float %71, %73
  br i1 %74, label %75, label %81

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 0
  store i32 2, i32* %76, align 4
  %77 = load i32* %i, align 4
  %78 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load float* %s, align 4
  %80 = getelementptr inbounds %struct.b2EPAxis* %agg.result, i32 0, i32 2
  store float %79, float* %80, align 4
  br label %81

; <label>:81                                      ; preds = %75, %70
  br label %82

; <label>:82                                      ; preds = %81, %68, %61
  %83 = load i32* %i, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4
  br label %17

; <label>:85                                      ; preds = %17
  br label %86

; <label>:86                                      ; preds = %85, %47
  ret void
}

define linkonce_odr void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ClipVertex*, align 4
  store %struct.b2ClipVertex* %this, %struct.b2ClipVertex** %1, align 4
  %2 = load %struct.b2ClipVertex** %1
  call void @_ZN12b2ClipVertexC2Ev(%struct.b2ClipVertex* %2)
  ret void
}

define linkonce_odr void @_ZN15b2ReferenceFaceC1Ev(%struct.b2ReferenceFace* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ReferenceFace*, align 4
  store %struct.b2ReferenceFace* %this, %struct.b2ReferenceFace** %1, align 4
  %2 = load %struct.b2ReferenceFace** %1
  call void @_ZN15b2ReferenceFaceC2Ev(%struct.b2ReferenceFace* %2)
  ret void
}

declare i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex*, %struct.b2ClipVertex*, %struct.b2Vec2*, float, i32)

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

define void @_Z23b2CollideEdgeAndPolygonP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK14b2PolygonShapeS6_(%struct.b2Manifold* %manifold, %class.b2EdgeShape* %edgeA, %struct.b2Transform* %xfA, %class.b2PolygonShape* %polygonB, %struct.b2Transform* %xfB) {
  %1 = alloca %struct.b2Manifold*, align 4
  %2 = alloca %class.b2EdgeShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %class.b2PolygonShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %collider = alloca %struct.b2EPCollider, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %1, align 4
  store %class.b2EdgeShape* %edgeA, %class.b2EdgeShape** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %class.b2PolygonShape* %polygonB, %class.b2PolygonShape** %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  call void @_ZN12b2EPColliderC1Ev(%struct.b2EPCollider* %collider)
  %6 = load %struct.b2Manifold** %1, align 4
  %7 = load %class.b2EdgeShape** %2, align 4
  %8 = load %struct.b2Transform** %3
  %9 = load %class.b2PolygonShape** %4, align 4
  %10 = load %struct.b2Transform** %5
  call void @_ZN12b2EPCollider7CollideEP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK14b2PolygonShapeS7_(%struct.b2EPCollider* %collider, %struct.b2Manifold* %6, %class.b2EdgeShape* %7, %struct.b2Transform* %8, %class.b2PolygonShape* %9, %struct.b2Transform* %10)
  ret void
}

define linkonce_odr void @_ZN12b2EPColliderC1Ev(%struct.b2EPCollider* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2EPCollider*, align 4
  store %struct.b2EPCollider* %this, %struct.b2EPCollider** %1, align 4
  %2 = load %struct.b2EPCollider** %1
  call void @_ZN12b2EPColliderC2Ev(%struct.b2EPCollider* %2)
  ret void
}

define linkonce_odr void @_ZN12b2EPColliderC2Ev(%struct.b2EPCollider* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2EPCollider*, align 4
  store %struct.b2EPCollider* %this, %struct.b2EPCollider** %1, align 4
  %2 = load %struct.b2EPCollider** %1
  %3 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 0
  call void @_ZN13b2TempPolygonC1Ev(%struct.b2TempPolygon* %3)
  %4 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 1
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %4)
  %5 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  %6 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 3
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %6)
  %7 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 4
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  %8 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 5
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %8)
  %9 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 6
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %9)
  %10 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 7
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
  %11 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 8
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
  %12 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 9
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
  %13 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 10
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
  %14 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 13
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %14)
  %15 = getelementptr inbounds %struct.b2EPCollider* %2, i32 0, i32 14
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %15)
  ret void
}

define linkonce_odr void @_ZN13b2TempPolygonC1Ev(%struct.b2TempPolygon* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2TempPolygon*, align 4
  store %struct.b2TempPolygon* %this, %struct.b2TempPolygon** %1, align 4
  %2 = load %struct.b2TempPolygon** %1
  call void @_ZN13b2TempPolygonC2Ev(%struct.b2TempPolygon* %2)
  ret void
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
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

define linkonce_odr void @_ZN13b2TempPolygonC2Ev(%struct.b2TempPolygon* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2TempPolygon*, align 4
  store %struct.b2TempPolygon* %this, %struct.b2TempPolygon** %1, align 4
  %2 = load %struct.b2TempPolygon** %1
  %3 = getelementptr inbounds %struct.b2TempPolygon* %2, i32 0, i32 0
  %4 = getelementptr inbounds [8 x %struct.b2Vec2]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 8
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %struct.b2Vec2* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 1
  %9 = icmp eq %struct.b2Vec2* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.b2TempPolygon* %2, i32 0, i32 1
  %12 = getelementptr inbounds [8 x %struct.b2Vec2]* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.b2Vec2* %12, i32 8
  br label %14

; <label>:14                                      ; preds = %14, %10
  %15 = phi %struct.b2Vec2* [ %12, %10 ], [ %16, %14 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %15)
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 1
  %17 = icmp eq %struct.b2Vec2* %16, %13
  br i1 %17, label %18, label %14

; <label>:18                                      ; preds = %14
  ret void
}

define linkonce_odr void @_ZN15b2ReferenceFaceC2Ev(%struct.b2ReferenceFace* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ReferenceFace*, align 4
  store %struct.b2ReferenceFace* %this, %struct.b2ReferenceFace** %1, align 4
  %2 = load %struct.b2ReferenceFace** %1
  %3 = getelementptr inbounds %struct.b2ReferenceFace* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2ReferenceFace* %2, i32 0, i32 3
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  %5 = getelementptr inbounds %struct.b2ReferenceFace* %2, i32 0, i32 4
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  %6 = getelementptr inbounds %struct.b2ReferenceFace* %2, i32 0, i32 5
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %6)
  %7 = getelementptr inbounds %struct.b2ReferenceFace* %2, i32 0, i32 7
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  ret void
}

define linkonce_odr void @_ZN12b2ClipVertexC2Ev(%struct.b2ClipVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ClipVertex*, align 4
  store %struct.b2ClipVertex* %this, %struct.b2ClipVertex** %1, align 4
  %2 = load %struct.b2ClipVertex** %1
  %3 = getelementptr inbounds %struct.b2ClipVertex* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2ClipVertex* %2, i32 0, i32 1
  ret void
}

define linkonce_odr void @_Z6b2MulTRK5b2RotS1_(%struct.b2Rot* noalias sret %agg.result, %struct.b2Rot* %q, %struct.b2Rot* %r) inlinehint {
  %1 = alloca %struct.b2Rot*, align 4
  %2 = alloca %struct.b2Rot*, align 4
  store %struct.b2Rot* %q, %struct.b2Rot** %1, align 4
  store %struct.b2Rot* %r, %struct.b2Rot** %2, align 4
  call void @_ZN5b2RotC1Ev(%struct.b2Rot* %agg.result)
  %3 = load %struct.b2Rot** %1
  %4 = getelementptr inbounds %struct.b2Rot* %3, i32 0, i32 1
  %5 = load float* %4, align 4
  %6 = load %struct.b2Rot** %2
  %7 = getelementptr inbounds %struct.b2Rot* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Rot** %1
  %11 = getelementptr inbounds %struct.b2Rot* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = load %struct.b2Rot** %2
  %14 = getelementptr inbounds %struct.b2Rot* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fsub float %9, %16
  %18 = getelementptr inbounds %struct.b2Rot* %agg.result, i32 0, i32 0
  store float %17, float* %18, align 4
  %19 = load %struct.b2Rot** %1
  %20 = getelementptr inbounds %struct.b2Rot* %19, i32 0, i32 1
  %21 = load float* %20, align 4
  %22 = load %struct.b2Rot** %2
  %23 = getelementptr inbounds %struct.b2Rot* %22, i32 0, i32 1
  %24 = load float* %23, align 4
  %25 = fmul float %21, %24
  %26 = load %struct.b2Rot** %1
  %27 = getelementptr inbounds %struct.b2Rot* %26, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = load %struct.b2Rot** %2
  %30 = getelementptr inbounds %struct.b2Rot* %29, i32 0, i32 0
  %31 = load float* %30, align 4
  %32 = fmul float %28, %31
  %33 = fadd float %25, %32
  %34 = getelementptr inbounds %struct.b2Rot* %agg.result, i32 0, i32 1
  store float %33, float* %34, align 4
  ret void
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
