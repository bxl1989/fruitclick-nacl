; ModuleID = 'Collision/b2CollidePolygon.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%struct.b2Vec2 = type { float, float }
%union.b2ContactID = type { i32 }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2ClipVertex = type { %struct.b2Vec2, %union.b2ContactID }
%struct.b2ContactFeature = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [43 x i8] c"0 <= edge1 && edge1 < poly1->m_vertexCount\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"Collision/b2CollidePolygon.cpp\00", align 1
@__PRETTY_FUNCTION__._ZL18b2FindIncidentEdgeP12b2ClipVertexPK14b2PolygonShapeRK11b2TransformiS3_S6_ = private unnamed_addr constant [137 x i8] c"void b2FindIncidentEdge(b2ClipVertex *, const b2PolygonShape *, const b2Transform &, int32, const b2PolygonShape *, const b2Transform &)\00", align 1
@__PRETTY_FUNCTION__._ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_ = private unnamed_addr constant [122 x i8] c"float32 b2EdgeSeparation(const b2PolygonShape *, const b2Transform &, int32, const b2PolygonShape *, const b2Transform &)\00", align 1

define void @_Z17b2CollidePolygonsP10b2ManifoldPK14b2PolygonShapeRK11b2TransformS3_S6_(%struct.b2Manifold* %manifold, %class.b2PolygonShape* %polyA, %struct.b2Transform* %xfA, %class.b2PolygonShape* %polyB, %struct.b2Transform* %xfB) {
  %1 = alloca %struct.b2Manifold*, align 4
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %class.b2PolygonShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %totalRadius = alloca float, align 4
  %edgeA = alloca i32, align 4
  %separationA = alloca float, align 4
  %edgeB = alloca i32, align 4
  %separationB = alloca float, align 4
  %poly1 = alloca %class.b2PolygonShape*, align 4
  %poly2 = alloca %class.b2PolygonShape*, align 4
  %xf1 = alloca %struct.b2Transform, align 4
  %xf2 = alloca %struct.b2Transform, align 4
  %edge1 = alloca i32, align 4
  %flip = alloca i8, align 1
  %k_relativeTol = alloca float, align 4
  %k_absoluteTol = alloca float, align 4
  %incidentEdge = alloca [2 x %struct.b2ClipVertex], align 4
  %count1 = alloca i32, align 4
  %vertices1 = alloca %struct.b2Vec2*, align 4
  %iv1 = alloca i32, align 4
  %iv2 = alloca i32, align 4
  %v11 = alloca %struct.b2Vec2, align 4
  %v12 = alloca %struct.b2Vec2, align 4
  %localTangent = alloca %struct.b2Vec2, align 4
  %localNormal = alloca %struct.b2Vec2, align 4
  %planePoint = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %tangent = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %frontOffset = alloca float, align 4
  %sideOffset1 = alloca float, align 4
  %sideOffset2 = alloca float, align 4
  %clipPoints1 = alloca [2 x %struct.b2ClipVertex], align 4
  %clipPoints2 = alloca [2 x %struct.b2ClipVertex], align 4
  %np = alloca i32, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %pointCount = alloca i32, align 4
  %i = alloca i32, align 4
  %separation = alloca float, align 4
  %cp = alloca %struct.b2ManifoldPoint*, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %cf = alloca %struct.b2ContactFeature, align 1
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %1, align 4
  store %class.b2PolygonShape* %polyA, %class.b2PolygonShape** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %class.b2PolygonShape* %polyB, %class.b2PolygonShape** %4, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %5, align 4
  %11 = load %struct.b2Manifold** %1, align 4
  %12 = getelementptr inbounds %struct.b2Manifold* %11, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = load %class.b2PolygonShape** %2, align 4
  %14 = bitcast %class.b2PolygonShape* %13 to %class.b2Shape*
  %15 = getelementptr inbounds %class.b2Shape* %14, i32 0, i32 2
  %16 = load float* %15, align 4
  %17 = load %class.b2PolygonShape** %4, align 4
  %18 = bitcast %class.b2PolygonShape* %17 to %class.b2Shape*
  %19 = getelementptr inbounds %class.b2Shape* %18, i32 0, i32 2
  %20 = load float* %19, align 4
  %21 = fadd float %16, %20
  store float %21, float* %totalRadius, align 4
  store i32 0, i32* %edgeA, align 4
  %22 = load %class.b2PolygonShape** %2, align 4
  %23 = load %struct.b2Transform** %3
  %24 = load %class.b2PolygonShape** %4, align 4
  %25 = load %struct.b2Transform** %5
  %26 = call float @_ZL19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_(i32* %edgeA, %class.b2PolygonShape* %22, %struct.b2Transform* %23, %class.b2PolygonShape* %24, %struct.b2Transform* %25)
  store float %26, float* %separationA, align 4
  %27 = load float* %separationA, align 4
  %28 = load float* %totalRadius, align 4
  %29 = fcmp ogt float %27, %28
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %0
  br label %240

; <label>:31                                      ; preds = %0
  store i32 0, i32* %edgeB, align 4
  %32 = load %class.b2PolygonShape** %4, align 4
  %33 = load %struct.b2Transform** %5
  %34 = load %class.b2PolygonShape** %2, align 4
  %35 = load %struct.b2Transform** %3
  %36 = call float @_ZL19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_(i32* %edgeB, %class.b2PolygonShape* %32, %struct.b2Transform* %33, %class.b2PolygonShape* %34, %struct.b2Transform* %35)
  store float %36, float* %separationB, align 4
  %37 = load float* %separationB, align 4
  %38 = load float* %totalRadius, align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %31
  br label %240

; <label>:41                                      ; preds = %31
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xf1)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xf2)
  store float 0x3FEF5C2900000000, float* %k_relativeTol, align 4
  store float 0x3F50624DE0000000, float* %k_absoluteTol, align 4
  %42 = load float* %separationB, align 4
  %43 = load float* %separationA, align 4
  %44 = fmul float 0x3FEF5C2900000000, %43
  %45 = fadd float %44, 0x3F50624DE0000000
  %46 = fcmp ogt float %42, %45
  br i1 %46, label %47, label %59

; <label>:47                                      ; preds = %41
  %48 = load %class.b2PolygonShape** %4, align 4
  store %class.b2PolygonShape* %48, %class.b2PolygonShape** %poly1, align 4
  %49 = load %class.b2PolygonShape** %2, align 4
  store %class.b2PolygonShape* %49, %class.b2PolygonShape** %poly2, align 4
  %50 = load %struct.b2Transform** %5
  %51 = bitcast %struct.b2Transform* %xf1 to i8*
  %52 = bitcast %struct.b2Transform* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %51, i8* %52, i32 16, i32 4, i1 false)
  %53 = load %struct.b2Transform** %3
  %54 = bitcast %struct.b2Transform* %xf2 to i8*
  %55 = bitcast %struct.b2Transform* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %55, i32 16, i32 4, i1 false)
  %56 = load i32* %edgeB, align 4
  store i32 %56, i32* %edge1, align 4
  %57 = load %struct.b2Manifold** %1, align 4
  %58 = getelementptr inbounds %struct.b2Manifold* %57, i32 0, i32 3
  store i32 2, i32* %58, align 4
  store i8 1, i8* %flip, align 1
  br label %71

; <label>:59                                      ; preds = %41
  %60 = load %class.b2PolygonShape** %2, align 4
  store %class.b2PolygonShape* %60, %class.b2PolygonShape** %poly1, align 4
  %61 = load %class.b2PolygonShape** %4, align 4
  store %class.b2PolygonShape* %61, %class.b2PolygonShape** %poly2, align 4
  %62 = load %struct.b2Transform** %3
  %63 = bitcast %struct.b2Transform* %xf1 to i8*
  %64 = bitcast %struct.b2Transform* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 16, i32 4, i1 false)
  %65 = load %struct.b2Transform** %5
  %66 = bitcast %struct.b2Transform* %xf2 to i8*
  %67 = bitcast %struct.b2Transform* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 16, i32 4, i1 false)
  %68 = load i32* %edgeA, align 4
  store i32 %68, i32* %edge1, align 4
  %69 = load %struct.b2Manifold** %1, align 4
  %70 = getelementptr inbounds %struct.b2Manifold* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  store i8 0, i8* %flip, align 1
  br label %71

; <label>:71                                      ; preds = %59, %47
  %72 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %incidentEdge, i32 0, i32 0
  %73 = getelementptr inbounds %struct.b2ClipVertex* %72, i32 2
  br label %74

; <label>:74                                      ; preds = %74, %71
  %75 = phi %struct.b2ClipVertex* [ %72, %71 ], [ %76, %74 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %75)
  %76 = getelementptr inbounds %struct.b2ClipVertex* %75, i32 1
  %77 = icmp eq %struct.b2ClipVertex* %76, %73
  br i1 %77, label %78, label %74

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %incidentEdge, i32 0, i32 0
  %80 = load %class.b2PolygonShape** %poly1, align 4
  %81 = load i32* %edge1, align 4
  %82 = load %class.b2PolygonShape** %poly2, align 4
  call void @_ZL18b2FindIncidentEdgeP12b2ClipVertexPK14b2PolygonShapeRK11b2TransformiS3_S6_(%struct.b2ClipVertex* %79, %class.b2PolygonShape* %80, %struct.b2Transform* %xf1, i32 %81, %class.b2PolygonShape* %82, %struct.b2Transform* %xf2)
  %83 = load %class.b2PolygonShape** %poly1, align 4
  %84 = getelementptr inbounds %class.b2PolygonShape* %83, i32 0, i32 4
  %85 = load i32* %84, align 4
  store i32 %85, i32* %count1, align 4
  %86 = load %class.b2PolygonShape** %poly1, align 4
  %87 = getelementptr inbounds %class.b2PolygonShape* %86, i32 0, i32 2
  %88 = getelementptr inbounds [8 x %struct.b2Vec2]* %87, i32 0, i32 0
  store %struct.b2Vec2* %88, %struct.b2Vec2** %vertices1, align 4
  %89 = load i32* %edge1, align 4
  store i32 %89, i32* %iv1, align 4
  %90 = load i32* %edge1, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32* %count1, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %97

; <label>:94                                      ; preds = %78
  %95 = load i32* %edge1, align 4
  %96 = add nsw i32 %95, 1
  br label %98

; <label>:97                                      ; preds = %78
  br label %98

; <label>:98                                      ; preds = %97, %94
  %99 = phi i32 [ %96, %94 ], [ 0, %97 ]
  store i32 %99, i32* %iv2, align 4
  %100 = load i32* %iv1, align 4
  %101 = load %struct.b2Vec2** %vertices1, align 4
  %102 = getelementptr inbounds %struct.b2Vec2* %101, i32 %100
  %103 = bitcast %struct.b2Vec2* %v11 to i8*
  %104 = bitcast %struct.b2Vec2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = load i32* %iv2, align 4
  %106 = load %struct.b2Vec2** %vertices1, align 4
  %107 = getelementptr inbounds %struct.b2Vec2* %106, i32 %105
  %108 = bitcast %struct.b2Vec2* %v12 to i8*
  %109 = bitcast %struct.b2Vec2* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %localTangent, %struct.b2Vec2* %v12, %struct.b2Vec2* %v11)
  %110 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %localTangent)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %localNormal, %struct.b2Vec2* %localTangent, float 1.000000e+00)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %v11, %struct.b2Vec2* %v12)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %planePoint, float 5.000000e-01, %struct.b2Vec2* %6)
  %111 = getelementptr inbounds %struct.b2Transform* %xf1, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %tangent, %struct.b2Rot* %111, %struct.b2Vec2* %localTangent)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %normal, %struct.b2Vec2* %tangent, float 1.000000e+00)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Transform* %xf1, %struct.b2Vec2* %v11)
  %112 = bitcast %struct.b2Vec2* %v11 to i8*
  %113 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %xf1, %struct.b2Vec2* %v12)
  %114 = bitcast %struct.b2Vec2* %v12 to i8*
  %115 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* %115, i32 8, i32 4, i1 false)
  %116 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %normal, %struct.b2Vec2* %v11)
  store float %116, float* %frontOffset, align 4
  %117 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %tangent, %struct.b2Vec2* %v11)
  %118 = fsub float -0.000000e+00, %117
  %119 = load float* %totalRadius, align 4
  %120 = fadd float %118, %119
  store float %120, float* %sideOffset1, align 4
  %121 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %tangent, %struct.b2Vec2* %v12)
  %122 = load float* %totalRadius, align 4
  %123 = fadd float %121, %122
  store float %123, float* %sideOffset2, align 4
  %124 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %125 = getelementptr inbounds %struct.b2ClipVertex* %124, i32 2
  br label %126

; <label>:126                                     ; preds = %126, %98
  %127 = phi %struct.b2ClipVertex* [ %124, %98 ], [ %128, %126 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %127)
  %128 = getelementptr inbounds %struct.b2ClipVertex* %127, i32 1
  %129 = icmp eq %struct.b2ClipVertex* %128, %125
  br i1 %129, label %130, label %126

; <label>:130                                     ; preds = %126
  %131 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 0
  %132 = getelementptr inbounds %struct.b2ClipVertex* %131, i32 2
  br label %133

; <label>:133                                     ; preds = %133, %130
  %134 = phi %struct.b2ClipVertex* [ %131, %130 ], [ %135, %133 ]
  call void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %134)
  %135 = getelementptr inbounds %struct.b2ClipVertex* %134, i32 1
  %136 = icmp eq %struct.b2ClipVertex* %135, %132
  br i1 %136, label %137, label %133

; <label>:137                                     ; preds = %133
  %138 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %incidentEdge, i32 0, i32 0
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %9, %struct.b2Vec2* %tangent)
  %140 = load float* %sideOffset1, align 4
  %141 = load i32* %iv1, align 4
  %142 = call i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex* %138, %struct.b2ClipVertex* %139, %struct.b2Vec2* %9, float %140, i32 %141)
  store i32 %142, i32* %np, align 4
  %143 = load i32* %np, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %137
  br label %240

; <label>:146                                     ; preds = %137
  %147 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints1, i32 0, i32 0
  %149 = load float* %sideOffset2, align 4
  %150 = load i32* %iv2, align 4
  %151 = call i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex* %147, %struct.b2ClipVertex* %148, %struct.b2Vec2* %tangent, float %149, i32 %150)
  store i32 %151, i32* %np, align 4
  %152 = load i32* %np, align 4
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %146
  br label %240

; <label>:155                                     ; preds = %146
  %156 = load %struct.b2Manifold** %1, align 4
  %157 = getelementptr inbounds %struct.b2Manifold* %156, i32 0, i32 1
  %158 = bitcast %struct.b2Vec2* %157 to i8*
  %159 = bitcast %struct.b2Vec2* %localNormal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 8, i32 4, i1 false)
  %160 = load %struct.b2Manifold** %1, align 4
  %161 = getelementptr inbounds %struct.b2Manifold* %160, i32 0, i32 2
  %162 = bitcast %struct.b2Vec2* %161 to i8*
  %163 = bitcast %struct.b2Vec2* %planePoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %162, i8* %163, i32 8, i32 4, i1 false)
  store i32 0, i32* %pointCount, align 4
  store i32 0, i32* %i, align 4
  br label %164

; <label>:164                                     ; preds = %233, %155
  %165 = load i32* %i, align 4
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %167, label %236

; <label>:167                                     ; preds = %164
  %168 = load i32* %i, align 4
  %169 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %168
  %170 = getelementptr inbounds %struct.b2ClipVertex* %169, i32 0, i32 0
  %171 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %normal, %struct.b2Vec2* %170)
  %172 = load float* %frontOffset, align 4
  %173 = fsub float %171, %172
  store float %173, float* %separation, align 4
  %174 = load float* %separation, align 4
  %175 = load float* %totalRadius, align 4
  %176 = fcmp ole float %174, %175
  br i1 %176, label %177, label %232

; <label>:177                                     ; preds = %167
  %178 = load %struct.b2Manifold** %1, align 4
  %179 = getelementptr inbounds %struct.b2Manifold* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %179, i32 0, i32 0
  %181 = load i32* %pointCount, align 4
  %182 = getelementptr inbounds %struct.b2ManifoldPoint* %180, i32 %181
  store %struct.b2ManifoldPoint* %182, %struct.b2ManifoldPoint** %cp, align 4
  %183 = load %struct.b2ManifoldPoint** %cp, align 4
  %184 = getelementptr inbounds %struct.b2ManifoldPoint* %183, i32 0, i32 0
  %185 = load i32* %i, align 4
  %186 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %185
  %187 = getelementptr inbounds %struct.b2ClipVertex* %186, i32 0, i32 0
  call void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %10, %struct.b2Transform* %xf2, %struct.b2Vec2* %187)
  %188 = bitcast %struct.b2Vec2* %184 to i8*
  %189 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %188, i8* %189, i32 8, i32 4, i1 false)
  %190 = load %struct.b2ManifoldPoint** %cp, align 4
  %191 = getelementptr inbounds %struct.b2ManifoldPoint* %190, i32 0, i32 3
  %192 = load i32* %i, align 4
  %193 = getelementptr inbounds [2 x %struct.b2ClipVertex]* %clipPoints2, i32 0, i32 %192
  %194 = getelementptr inbounds %struct.b2ClipVertex* %193, i32 0, i32 1
  %195 = bitcast %union.b2ContactID* %191 to i8*
  %196 = bitcast %union.b2ContactID* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %195, i8* %196, i32 4, i32 4, i1 false)
  %197 = load i8* %flip, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %199, label %229

; <label>:199                                     ; preds = %177
  %200 = load %struct.b2ManifoldPoint** %cp, align 4
  %201 = getelementptr inbounds %struct.b2ManifoldPoint* %200, i32 0, i32 3
  %202 = bitcast %union.b2ContactID* %201 to %struct.b2ContactFeature*
  %203 = bitcast %struct.b2ContactFeature* %cf to i8*
  %204 = bitcast %struct.b2ContactFeature* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %203, i8* %204, i32 4, i32 1, i1 false)
  %205 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 1
  %206 = load i8* %205, align 1
  %207 = load %struct.b2ManifoldPoint** %cp, align 4
  %208 = getelementptr inbounds %struct.b2ManifoldPoint* %207, i32 0, i32 3
  %209 = bitcast %union.b2ContactID* %208 to %struct.b2ContactFeature*
  %210 = getelementptr inbounds %struct.b2ContactFeature* %209, i32 0, i32 0
  store i8 %206, i8* %210, align 1
  %211 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 0
  %212 = load i8* %211, align 1
  %213 = load %struct.b2ManifoldPoint** %cp, align 4
  %214 = getelementptr inbounds %struct.b2ManifoldPoint* %213, i32 0, i32 3
  %215 = bitcast %union.b2ContactID* %214 to %struct.b2ContactFeature*
  %216 = getelementptr inbounds %struct.b2ContactFeature* %215, i32 0, i32 1
  store i8 %212, i8* %216, align 1
  %217 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 3
  %218 = load i8* %217, align 1
  %219 = load %struct.b2ManifoldPoint** %cp, align 4
  %220 = getelementptr inbounds %struct.b2ManifoldPoint* %219, i32 0, i32 3
  %221 = bitcast %union.b2ContactID* %220 to %struct.b2ContactFeature*
  %222 = getelementptr inbounds %struct.b2ContactFeature* %221, i32 0, i32 2
  store i8 %218, i8* %222, align 1
  %223 = getelementptr inbounds %struct.b2ContactFeature* %cf, i32 0, i32 2
  %224 = load i8* %223, align 1
  %225 = load %struct.b2ManifoldPoint** %cp, align 4
  %226 = getelementptr inbounds %struct.b2ManifoldPoint* %225, i32 0, i32 3
  %227 = bitcast %union.b2ContactID* %226 to %struct.b2ContactFeature*
  %228 = getelementptr inbounds %struct.b2ContactFeature* %227, i32 0, i32 3
  store i8 %224, i8* %228, align 1
  br label %229

; <label>:229                                     ; preds = %199, %177
  %230 = load i32* %pointCount, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %pointCount, align 4
  br label %232

; <label>:232                                     ; preds = %229, %167
  br label %233

; <label>:233                                     ; preds = %232
  %234 = load i32* %i, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %i, align 4
  br label %164

; <label>:236                                     ; preds = %164
  %237 = load i32* %pointCount, align 4
  %238 = load %struct.b2Manifold** %1, align 4
  %239 = getelementptr inbounds %struct.b2Manifold* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  br label %240

; <label>:240                                     ; preds = %236, %154, %145, %40, %30
  ret void
}

define internal float @_ZL19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_(i32* %edgeIndex, %class.b2PolygonShape* %poly1, %struct.b2Transform* %xf1, %class.b2PolygonShape* %poly2, %struct.b2Transform* %xf2) {
  %1 = alloca float, align 4
  %2 = alloca i32*, align 4
  %3 = alloca %class.b2PolygonShape*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %5 = alloca %class.b2PolygonShape*, align 4
  %6 = alloca %struct.b2Transform*, align 4
  %count1 = alloca i32, align 4
  %normals1 = alloca %struct.b2Vec2*, align 4
  %d = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %dLocal1 = alloca %struct.b2Vec2, align 4
  %edge = alloca i32, align 4
  %maxDot = alloca float, align 4
  %i = alloca i32, align 4
  %dot = alloca float, align 4
  %s = alloca float, align 4
  %prevEdge = alloca i32, align 4
  %sPrev = alloca float, align 4
  %nextEdge = alloca i32, align 4
  %sNext = alloca float, align 4
  %bestEdge = alloca i32, align 4
  %bestSeparation = alloca float, align 4
  %increment = alloca i32, align 4
  store i32* %edgeIndex, i32** %2, align 4
  store %class.b2PolygonShape* %poly1, %class.b2PolygonShape** %3, align 4
  store %struct.b2Transform* %xf1, %struct.b2Transform** %4, align 4
  store %class.b2PolygonShape* %poly2, %class.b2PolygonShape** %5, align 4
  store %struct.b2Transform* %xf2, %struct.b2Transform** %6, align 4
  %9 = load %class.b2PolygonShape** %3, align 4
  %10 = getelementptr inbounds %class.b2PolygonShape* %9, i32 0, i32 4
  %11 = load i32* %10, align 4
  store i32 %11, i32* %count1, align 4
  %12 = load %class.b2PolygonShape** %3, align 4
  %13 = getelementptr inbounds %class.b2PolygonShape* %12, i32 0, i32 3
  %14 = getelementptr inbounds [8 x %struct.b2Vec2]* %13, i32 0, i32 0
  store %struct.b2Vec2* %14, %struct.b2Vec2** %normals1, align 4
  %15 = load %struct.b2Transform** %6
  %16 = load %class.b2PolygonShape** %5, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %16, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Transform* %15, %struct.b2Vec2* %17)
  %18 = load %struct.b2Transform** %4
  %19 = load %class.b2PolygonShape** %3, align 4
  %20 = getelementptr inbounds %class.b2PolygonShape* %19, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %18, %struct.b2Vec2* %20)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %7, %struct.b2Vec2* %8)
  %21 = load %struct.b2Transform** %4
  %22 = getelementptr inbounds %struct.b2Transform* %21, i32 0, i32 1
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %dLocal1, %struct.b2Rot* %22, %struct.b2Vec2* %d)
  store i32 0, i32* %edge, align 4
  store float 0xC7EFFFFFE0000000, float* %maxDot, align 4
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %39, %0
  %24 = load i32* %i, align 4
  %25 = load i32* %count1, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

; <label>:27                                      ; preds = %23
  %28 = load i32* %i, align 4
  %29 = load %struct.b2Vec2** %normals1, align 4
  %30 = getelementptr inbounds %struct.b2Vec2* %29, i32 %28
  %31 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %30, %struct.b2Vec2* %dLocal1)
  store float %31, float* %dot, align 4
  %32 = load float* %dot, align 4
  %33 = load float* %maxDot, align 4
  %34 = fcmp ogt float %32, %33
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %27
  %36 = load float* %dot, align 4
  store float %36, float* %maxDot, align 4
  %37 = load i32* %i, align 4
  store i32 %37, i32* %edge, align 4
  br label %38

; <label>:38                                      ; preds = %35, %27
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i32* %i, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4
  br label %23

; <label>:42                                      ; preds = %23
  %43 = load %class.b2PolygonShape** %3, align 4
  %44 = load %struct.b2Transform** %4
  %45 = load i32* %edge, align 4
  %46 = load %class.b2PolygonShape** %5, align 4
  %47 = load %struct.b2Transform** %6
  %48 = call float @_ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_(%class.b2PolygonShape* %43, %struct.b2Transform* %44, i32 %45, %class.b2PolygonShape* %46, %struct.b2Transform* %47)
  store float %48, float* %s, align 4
  %49 = load i32* %edge, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %42
  %53 = load i32* %edge, align 4
  %54 = sub nsw i32 %53, 1
  br label %58

; <label>:55                                      ; preds = %42
  %56 = load i32* %count1, align 4
  %57 = sub nsw i32 %56, 1
  br label %58

; <label>:58                                      ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  store i32 %59, i32* %prevEdge, align 4
  %60 = load %class.b2PolygonShape** %3, align 4
  %61 = load %struct.b2Transform** %4
  %62 = load i32* %prevEdge, align 4
  %63 = load %class.b2PolygonShape** %5, align 4
  %64 = load %struct.b2Transform** %6
  %65 = call float @_ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_(%class.b2PolygonShape* %60, %struct.b2Transform* %61, i32 %62, %class.b2PolygonShape* %63, %struct.b2Transform* %64)
  store float %65, float* %sPrev, align 4
  %66 = load i32* %edge, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32* %count1, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %58
  %71 = load i32* %edge, align 4
  %72 = add nsw i32 %71, 1
  br label %74

; <label>:73                                      ; preds = %58
  br label %74

; <label>:74                                      ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  store i32 %75, i32* %nextEdge, align 4
  %76 = load %class.b2PolygonShape** %3, align 4
  %77 = load %struct.b2Transform** %4
  %78 = load i32* %nextEdge, align 4
  %79 = load %class.b2PolygonShape** %5, align 4
  %80 = load %struct.b2Transform** %6
  %81 = call float @_ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_(%class.b2PolygonShape* %76, %struct.b2Transform* %77, i32 %78, %class.b2PolygonShape* %79, %struct.b2Transform* %80)
  store float %81, float* %sNext, align 4
  %82 = load float* %sPrev, align 4
  %83 = load float* %s, align 4
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %92

; <label>:85                                      ; preds = %74
  %86 = load float* %sPrev, align 4
  %87 = load float* %sNext, align 4
  %88 = fcmp ogt float %86, %87
  br i1 %88, label %89, label %92

; <label>:89                                      ; preds = %85
  store i32 -1, i32* %increment, align 4
  %90 = load i32* %prevEdge, align 4
  store i32 %90, i32* %bestEdge, align 4
  %91 = load float* %sPrev, align 4
  store float %91, float* %bestSeparation, align 4
  br label %104

; <label>:92                                      ; preds = %85, %74
  %93 = load float* %sNext, align 4
  %94 = load float* %s, align 4
  %95 = fcmp ogt float %93, %94
  br i1 %95, label %96, label %99

; <label>:96                                      ; preds = %92
  store i32 1, i32* %increment, align 4
  %97 = load i32* %nextEdge, align 4
  store i32 %97, i32* %bestEdge, align 4
  %98 = load float* %sNext, align 4
  store float %98, float* %bestSeparation, align 4
  br label %103

; <label>:99                                      ; preds = %92
  %100 = load i32* %edge, align 4
  %101 = load i32** %2, align 4
  store i32 %100, i32* %101
  %102 = load float* %s, align 4
  store float %102, float* %1
  br label %150

; <label>:103                                     ; preds = %96
  br label %104

; <label>:104                                     ; preds = %103, %89
  br label %105

; <label>:105                                     ; preds = %145, %104
  %106 = load i32* %increment, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %120

; <label>:108                                     ; preds = %105
  %109 = load i32* %bestEdge, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %108
  %113 = load i32* %bestEdge, align 4
  %114 = sub nsw i32 %113, 1
  br label %118

; <label>:115                                     ; preds = %108
  %116 = load i32* %count1, align 4
  %117 = sub nsw i32 %116, 1
  br label %118

; <label>:118                                     ; preds = %115, %112
  %119 = phi i32 [ %114, %112 ], [ %117, %115 ]
  store i32 %119, i32* %edge, align 4
  br label %131

; <label>:120                                     ; preds = %105
  %121 = load i32* %bestEdge, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32* %count1, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %128

; <label>:125                                     ; preds = %120
  %126 = load i32* %bestEdge, align 4
  %127 = add nsw i32 %126, 1
  br label %129

; <label>:128                                     ; preds = %120
  br label %129

; <label>:129                                     ; preds = %128, %125
  %130 = phi i32 [ %127, %125 ], [ 0, %128 ]
  store i32 %130, i32* %edge, align 4
  br label %131

; <label>:131                                     ; preds = %129, %118
  %132 = load %class.b2PolygonShape** %3, align 4
  %133 = load %struct.b2Transform** %4
  %134 = load i32* %edge, align 4
  %135 = load %class.b2PolygonShape** %5, align 4
  %136 = load %struct.b2Transform** %6
  %137 = call float @_ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_(%class.b2PolygonShape* %132, %struct.b2Transform* %133, i32 %134, %class.b2PolygonShape* %135, %struct.b2Transform* %136)
  store float %137, float* %s, align 4
  %138 = load float* %s, align 4
  %139 = load float* %bestSeparation, align 4
  %140 = fcmp ogt float %138, %139
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %131
  %142 = load i32* %edge, align 4
  store i32 %142, i32* %bestEdge, align 4
  %143 = load float* %s, align 4
  store float %143, float* %bestSeparation, align 4
  br label %145

; <label>:144                                     ; preds = %131
  br label %146

; <label>:145                                     ; preds = %141
  br label %105

; <label>:146                                     ; preds = %144
  %147 = load i32* %bestEdge, align 4
  %148 = load i32** %2, align 4
  store i32 %147, i32* %148
  %149 = load float* %bestSeparation, align 4
  store float %149, float* %1
  br label %150

; <label>:150                                     ; preds = %146, %99
  %151 = load float* %1
  ret float %151
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr void @_ZN12b2ClipVertexC1Ev(%struct.b2ClipVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ClipVertex*, align 4
  store %struct.b2ClipVertex* %this, %struct.b2ClipVertex** %1, align 4
  %2 = load %struct.b2ClipVertex** %1
  call void @_ZN12b2ClipVertexC2Ev(%struct.b2ClipVertex* %2)
  ret void
}

define internal void @_ZL18b2FindIncidentEdgeP12b2ClipVertexPK14b2PolygonShapeRK11b2TransformiS3_S6_(%struct.b2ClipVertex* %c, %class.b2PolygonShape* %poly1, %struct.b2Transform* %xf1, i32 %edge1, %class.b2PolygonShape* %poly2, %struct.b2Transform* %xf2) {
  %1 = alloca %struct.b2ClipVertex*, align 4
  %2 = alloca %class.b2PolygonShape*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.b2PolygonShape*, align 4
  %6 = alloca %struct.b2Transform*, align 4
  %normals1 = alloca %struct.b2Vec2*, align 4
  %count2 = alloca i32, align 4
  %vertices2 = alloca %struct.b2Vec2*, align 4
  %normals2 = alloca %struct.b2Vec2*, align 4
  %normal1 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %index = alloca i32, align 4
  %minDot = alloca float, align 4
  %i = alloca i32, align 4
  %dot = alloca float, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %struct.b2ClipVertex* %c, %struct.b2ClipVertex** %1, align 4
  store %class.b2PolygonShape* %poly1, %class.b2PolygonShape** %2, align 4
  store %struct.b2Transform* %xf1, %struct.b2Transform** %3, align 4
  store i32 %edge1, i32* %4, align 4
  store %class.b2PolygonShape* %poly2, %class.b2PolygonShape** %5, align 4
  store %struct.b2Transform* %xf2, %struct.b2Transform** %6, align 4
  %10 = load %class.b2PolygonShape** %2, align 4
  %11 = getelementptr inbounds %class.b2PolygonShape* %10, i32 0, i32 3
  %12 = getelementptr inbounds [8 x %struct.b2Vec2]* %11, i32 0, i32 0
  store %struct.b2Vec2* %12, %struct.b2Vec2** %normals1, align 4
  %13 = load %class.b2PolygonShape** %5, align 4
  %14 = getelementptr inbounds %class.b2PolygonShape* %13, i32 0, i32 4
  %15 = load i32* %14, align 4
  store i32 %15, i32* %count2, align 4
  %16 = load %class.b2PolygonShape** %5, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %16, i32 0, i32 2
  %18 = getelementptr inbounds [8 x %struct.b2Vec2]* %17, i32 0, i32 0
  store %struct.b2Vec2* %18, %struct.b2Vec2** %vertices2, align 4
  %19 = load %class.b2PolygonShape** %5, align 4
  %20 = getelementptr inbounds %class.b2PolygonShape* %19, i32 0, i32 3
  %21 = getelementptr inbounds [8 x %struct.b2Vec2]* %20, i32 0, i32 0
  store %struct.b2Vec2* %21, %struct.b2Vec2** %normals2, align 4
  %22 = load i32* %4, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %0
  %25 = load i32* %4, align 4
  %26 = load %class.b2PolygonShape** %2, align 4
  %27 = getelementptr inbounds %class.b2PolygonShape* %26, i32 0, i32 4
  %28 = load i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %24
  br label %33

; <label>:31                                      ; preds = %24, %0
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([137 x i8]* @__PRETTY_FUNCTION__._ZL18b2FindIncidentEdgeP12b2ClipVertexPK14b2PolygonShapeRK11b2TransformiS3_S6_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load %struct.b2Transform** %6
  %35 = getelementptr inbounds %struct.b2Transform* %34, i32 0, i32 1
  %36 = load %struct.b2Transform** %3
  %37 = getelementptr inbounds %struct.b2Transform* %36, i32 0, i32 1
  %38 = load i32* %4, align 4
  %39 = load %struct.b2Vec2** %normals1, align 4
  %40 = getelementptr inbounds %struct.b2Vec2* %39, i32 %38
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %37, %struct.b2Vec2* %40)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal1, %struct.b2Rot* %35, %struct.b2Vec2* %7)
  store i32 0, i32* %index, align 4
  store float 0x47EFFFFFE0000000, float* %minDot, align 4
  store i32 0, i32* %i, align 4
  br label %41

; <label>:41                                      ; preds = %57, %33
  %42 = load i32* %i, align 4
  %43 = load i32* %count2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

; <label>:45                                      ; preds = %41
  %46 = load i32* %i, align 4
  %47 = load %struct.b2Vec2** %normals2, align 4
  %48 = getelementptr inbounds %struct.b2Vec2* %47, i32 %46
  %49 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %normal1, %struct.b2Vec2* %48)
  store float %49, float* %dot, align 4
  %50 = load float* %dot, align 4
  %51 = load float* %minDot, align 4
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %45
  %54 = load float* %dot, align 4
  store float %54, float* %minDot, align 4
  %55 = load i32* %i, align 4
  store i32 %55, i32* %index, align 4
  br label %56

; <label>:56                                      ; preds = %53, %45
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i32* %i, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i, align 4
  br label %41

; <label>:60                                      ; preds = %41
  %61 = load i32* %index, align 4
  store i32 %61, i32* %i1, align 4
  %62 = load i32* %i1, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32* %count2, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

; <label>:66                                      ; preds = %60
  %67 = load i32* %i1, align 4
  %68 = add nsw i32 %67, 1
  br label %70

; <label>:69                                      ; preds = %60
  br label %70

; <label>:70                                      ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %i2, align 4
  %72 = load %struct.b2ClipVertex** %1, align 4
  %73 = getelementptr inbounds %struct.b2ClipVertex* %72, i32 0
  %74 = getelementptr inbounds %struct.b2ClipVertex* %73, i32 0, i32 0
  %75 = load %struct.b2Transform** %6
  %76 = load i32* %i1, align 4
  %77 = load %struct.b2Vec2** %vertices2, align 4
  %78 = getelementptr inbounds %struct.b2Vec2* %77, i32 %76
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %8, %struct.b2Transform* %75, %struct.b2Vec2* %78)
  %79 = bitcast %struct.b2Vec2* %74 to i8*
  %80 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %79, i8* %80, i32 8, i32 4, i1 false)
  %81 = load i32* %4, align 4
  %82 = trunc i32 %81 to i8
  %83 = load %struct.b2ClipVertex** %1, align 4
  %84 = getelementptr inbounds %struct.b2ClipVertex* %83, i32 0
  %85 = getelementptr inbounds %struct.b2ClipVertex* %84, i32 0, i32 1
  %86 = bitcast %union.b2ContactID* %85 to %struct.b2ContactFeature*
  %87 = getelementptr inbounds %struct.b2ContactFeature* %86, i32 0, i32 0
  store i8 %82, i8* %87, align 1
  %88 = load i32* %i1, align 4
  %89 = trunc i32 %88 to i8
  %90 = load %struct.b2ClipVertex** %1, align 4
  %91 = getelementptr inbounds %struct.b2ClipVertex* %90, i32 0
  %92 = getelementptr inbounds %struct.b2ClipVertex* %91, i32 0, i32 1
  %93 = bitcast %union.b2ContactID* %92 to %struct.b2ContactFeature*
  %94 = getelementptr inbounds %struct.b2ContactFeature* %93, i32 0, i32 1
  store i8 %89, i8* %94, align 1
  %95 = load %struct.b2ClipVertex** %1, align 4
  %96 = getelementptr inbounds %struct.b2ClipVertex* %95, i32 0
  %97 = getelementptr inbounds %struct.b2ClipVertex* %96, i32 0, i32 1
  %98 = bitcast %union.b2ContactID* %97 to %struct.b2ContactFeature*
  %99 = getelementptr inbounds %struct.b2ContactFeature* %98, i32 0, i32 2
  store i8 1, i8* %99, align 1
  %100 = load %struct.b2ClipVertex** %1, align 4
  %101 = getelementptr inbounds %struct.b2ClipVertex* %100, i32 0
  %102 = getelementptr inbounds %struct.b2ClipVertex* %101, i32 0, i32 1
  %103 = bitcast %union.b2ContactID* %102 to %struct.b2ContactFeature*
  %104 = getelementptr inbounds %struct.b2ContactFeature* %103, i32 0, i32 3
  store i8 0, i8* %104, align 1
  %105 = load %struct.b2ClipVertex** %1, align 4
  %106 = getelementptr inbounds %struct.b2ClipVertex* %105, i32 1
  %107 = getelementptr inbounds %struct.b2ClipVertex* %106, i32 0, i32 0
  %108 = load %struct.b2Transform** %6
  %109 = load i32* %i2, align 4
  %110 = load %struct.b2Vec2** %vertices2, align 4
  %111 = getelementptr inbounds %struct.b2Vec2* %110, i32 %109
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %9, %struct.b2Transform* %108, %struct.b2Vec2* %111)
  %112 = bitcast %struct.b2Vec2* %107 to i8*
  %113 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 8, i32 4, i1 false)
  %114 = load i32* %4, align 4
  %115 = trunc i32 %114 to i8
  %116 = load %struct.b2ClipVertex** %1, align 4
  %117 = getelementptr inbounds %struct.b2ClipVertex* %116, i32 1
  %118 = getelementptr inbounds %struct.b2ClipVertex* %117, i32 0, i32 1
  %119 = bitcast %union.b2ContactID* %118 to %struct.b2ContactFeature*
  %120 = getelementptr inbounds %struct.b2ContactFeature* %119, i32 0, i32 0
  store i8 %115, i8* %120, align 1
  %121 = load i32* %i2, align 4
  %122 = trunc i32 %121 to i8
  %123 = load %struct.b2ClipVertex** %1, align 4
  %124 = getelementptr inbounds %struct.b2ClipVertex* %123, i32 1
  %125 = getelementptr inbounds %struct.b2ClipVertex* %124, i32 0, i32 1
  %126 = bitcast %union.b2ContactID* %125 to %struct.b2ContactFeature*
  %127 = getelementptr inbounds %struct.b2ContactFeature* %126, i32 0, i32 1
  store i8 %122, i8* %127, align 1
  %128 = load %struct.b2ClipVertex** %1, align 4
  %129 = getelementptr inbounds %struct.b2ClipVertex* %128, i32 1
  %130 = getelementptr inbounds %struct.b2ClipVertex* %129, i32 0, i32 1
  %131 = bitcast %union.b2ContactID* %130 to %struct.b2ContactFeature*
  %132 = getelementptr inbounds %struct.b2ContactFeature* %131, i32 0, i32 2
  store i8 1, i8* %132, align 1
  %133 = load %struct.b2ClipVertex** %1, align 4
  %134 = getelementptr inbounds %struct.b2ClipVertex* %133, i32 1
  %135 = getelementptr inbounds %struct.b2ClipVertex* %134, i32 0, i32 1
  %136 = bitcast %union.b2ContactID* %135 to %struct.b2ContactFeature*
  %137 = getelementptr inbounds %struct.b2ContactFeature* %136, i32 0, i32 3
  store i8 0, i8* %137, align 1
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

declare i32 @_Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi(%struct.b2ClipVertex*, %struct.b2ClipVertex*, %struct.b2Vec2*, float, i32)

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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

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

define linkonce_odr void @_ZN12b2ClipVertexC2Ev(%struct.b2ClipVertex* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ClipVertex*, align 4
  store %struct.b2ClipVertex* %this, %struct.b2ClipVertex** %1, align 4
  %2 = load %struct.b2ClipVertex** %1
  %3 = getelementptr inbounds %struct.b2ClipVertex* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2ClipVertex* %2, i32 0, i32 1
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

define internal float @_ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_(%class.b2PolygonShape* %poly1, %struct.b2Transform* %xf1, i32 %edge1, %class.b2PolygonShape* %poly2, %struct.b2Transform* %xf2) {
  %1 = alloca %class.b2PolygonShape*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.b2PolygonShape*, align 4
  %5 = alloca %struct.b2Transform*, align 4
  %vertices1 = alloca %struct.b2Vec2*, align 4
  %normals1 = alloca %struct.b2Vec2*, align 4
  %count2 = alloca i32, align 4
  %vertices2 = alloca %struct.b2Vec2*, align 4
  %normal1World = alloca %struct.b2Vec2, align 4
  %normal1 = alloca %struct.b2Vec2, align 4
  %index = alloca i32, align 4
  %minDot = alloca float, align 4
  %i = alloca i32, align 4
  %dot = alloca float, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2PolygonShape* %poly1, %class.b2PolygonShape** %1, align 4
  store %struct.b2Transform* %xf1, %struct.b2Transform** %2, align 4
  store i32 %edge1, i32* %3, align 4
  store %class.b2PolygonShape* %poly2, %class.b2PolygonShape** %4, align 4
  store %struct.b2Transform* %xf2, %struct.b2Transform** %5, align 4
  %7 = load %class.b2PolygonShape** %1, align 4
  %8 = getelementptr inbounds %class.b2PolygonShape* %7, i32 0, i32 2
  %9 = getelementptr inbounds [8 x %struct.b2Vec2]* %8, i32 0, i32 0
  store %struct.b2Vec2* %9, %struct.b2Vec2** %vertices1, align 4
  %10 = load %class.b2PolygonShape** %1, align 4
  %11 = getelementptr inbounds %class.b2PolygonShape* %10, i32 0, i32 3
  %12 = getelementptr inbounds [8 x %struct.b2Vec2]* %11, i32 0, i32 0
  store %struct.b2Vec2* %12, %struct.b2Vec2** %normals1, align 4
  %13 = load %class.b2PolygonShape** %4, align 4
  %14 = getelementptr inbounds %class.b2PolygonShape* %13, i32 0, i32 4
  %15 = load i32* %14, align 4
  store i32 %15, i32* %count2, align 4
  %16 = load %class.b2PolygonShape** %4, align 4
  %17 = getelementptr inbounds %class.b2PolygonShape* %16, i32 0, i32 2
  %18 = getelementptr inbounds [8 x %struct.b2Vec2]* %17, i32 0, i32 0
  store %struct.b2Vec2* %18, %struct.b2Vec2** %vertices2, align 4
  %19 = load i32* %3, align 4
  %20 = icmp sle i32 0, %19
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %0
  %22 = load i32* %3, align 4
  %23 = load %class.b2PolygonShape** %1, align 4
  %24 = getelementptr inbounds %class.b2PolygonShape* %23, i32 0, i32 4
  %25 = load i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %21
  br label %30

; <label>:28                                      ; preds = %21, %0
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([122 x i8]* @__PRETTY_FUNCTION__._ZL16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.b2Transform** %2
  %32 = getelementptr inbounds %struct.b2Transform* %31, i32 0, i32 1
  %33 = load i32* %3, align 4
  %34 = load %struct.b2Vec2** %normals1, align 4
  %35 = getelementptr inbounds %struct.b2Vec2* %34, i32 %33
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal1World, %struct.b2Rot* %32, %struct.b2Vec2* %35)
  %36 = load %struct.b2Transform** %5
  %37 = getelementptr inbounds %struct.b2Transform* %36, i32 0, i32 1
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal1, %struct.b2Rot* %37, %struct.b2Vec2* %normal1World)
  store i32 0, i32* %index, align 4
  store float 0x47EFFFFFE0000000, float* %minDot, align 4
  store i32 0, i32* %i, align 4
  br label %38

; <label>:38                                      ; preds = %54, %30
  %39 = load i32* %i, align 4
  %40 = load i32* %count2, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

; <label>:42                                      ; preds = %38
  %43 = load i32* %i, align 4
  %44 = load %struct.b2Vec2** %vertices2, align 4
  %45 = getelementptr inbounds %struct.b2Vec2* %44, i32 %43
  %46 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %45, %struct.b2Vec2* %normal1)
  store float %46, float* %dot, align 4
  %47 = load float* %dot, align 4
  %48 = load float* %minDot, align 4
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %53

; <label>:50                                      ; preds = %42
  %51 = load float* %dot, align 4
  store float %51, float* %minDot, align 4
  %52 = load i32* %i, align 4
  store i32 %52, i32* %index, align 4
  br label %53

; <label>:53                                      ; preds = %50, %42
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4
  br label %38

; <label>:57                                      ; preds = %38
  %58 = load %struct.b2Transform** %2
  %59 = load i32* %3, align 4
  %60 = load %struct.b2Vec2** %vertices1, align 4
  %61 = getelementptr inbounds %struct.b2Vec2* %60, i32 %59
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v1, %struct.b2Transform* %58, %struct.b2Vec2* %61)
  %62 = load %struct.b2Transform** %5
  %63 = load i32* %index, align 4
  %64 = load %struct.b2Vec2** %vertices2, align 4
  %65 = getelementptr inbounds %struct.b2Vec2* %64, i32 %63
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v2, %struct.b2Transform* %62, %struct.b2Vec2* %65)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %v2, %struct.b2Vec2* %v1)
  %66 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %6, %struct.b2Vec2* %normal1World)
  store float %66, float* %separation, align 4
  %67 = load float* %separation, align 4
  ret float %67
}
