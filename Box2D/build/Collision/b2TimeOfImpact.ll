; ModuleID = 'Collision/b2TimeOfImpact.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2TOIOutput = type { i32, float }
%struct.b2TOIInput = type { %struct.b2DistanceProxy, %struct.b2DistanceProxy, %struct.b2Sweep, %struct.b2Sweep, float }
%struct.b2DistanceProxy = type { [2 x %struct.b2Vec2], %struct.b2Vec2*, i32, float }
%struct.b2Vec2 = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2SimplexCache = type { float, i16, [3 x i8], [3 x i8] }
%struct.b2DistanceInput = type { %struct.b2DistanceProxy, %struct.b2DistanceProxy, %struct.b2Transform, %struct.b2Transform, i8 }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, float, i32 }
%struct.b2SeparationFunction = type { %struct.b2DistanceProxy*, %struct.b2DistanceProxy*, %struct.b2Sweep, %struct.b2Sweep, i32, %struct.b2Vec2, %struct.b2Vec2 }

@b2_toiCalls = global i32 0, align 4
@b2_toiIters = global i32 0, align 4
@b2_toiMaxIters = global i32 0, align 4
@b2_toiRootIters = global i32 0, align 4
@b2_toiMaxRootIters = global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"target > tolerance\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Collision/b2TimeOfImpact.cpp\00", align 1
@__PRETTY_FUNCTION__._Z14b2TimeOfImpactP11b2TOIOutputPK10b2TOIInput = private unnamed_addr constant [55 x i8] c"void b2TimeOfImpact(b2TOIOutput *, const b2TOIInput *)\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__._ZNK20b2SeparationFunction8EvaluateEiif = private unnamed_addr constant [68 x i8] c"float32 b2SeparationFunction::Evaluate(int32, int32, float32) const\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"0 <= index && index < m_count\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"/usr/local/include/Box2D/Collision/b2Distance.h\00", align 1
@__PRETTY_FUNCTION__._ZNK15b2DistanceProxy9GetVertexEi = private unnamed_addr constant [54 x i8] c"const b2Vec2 &b2DistanceProxy::GetVertex(int32) const\00", align 1
@__PRETTY_FUNCTION__._ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f = private unnamed_addr constant [81 x i8] c"float32 b2SeparationFunction::FindMinSeparation(int32 *, int32 *, float32) const\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"0 < count && count < 3\00", align 1
@__PRETTY_FUNCTION__._ZN20b2SeparationFunction10InitializeEPK14b2SimplexCachePK15b2DistanceProxyRK7b2SweepS5_S8_f = private unnamed_addr constant [158 x i8] c"float32 b2SeparationFunction::Initialize(const b2SimplexCache *, const b2DistanceProxy *, const b2Sweep &, const b2DistanceProxy *, const b2Sweep &, float32)\00", align 1

define void @_Z14b2TimeOfImpactP11b2TOIOutputPK10b2TOIInput(%struct.b2TOIOutput* %output, %struct.b2TOIInput* %input) {
  %1 = alloca %struct.b2TOIOutput*, align 4
  %2 = alloca %struct.b2TOIInput*, align 4
  %proxyA = alloca %struct.b2DistanceProxy*, align 4
  %proxyB = alloca %struct.b2DistanceProxy*, align 4
  %sweepA = alloca %struct.b2Sweep, align 4
  %sweepB = alloca %struct.b2Sweep, align 4
  %tMax = alloca float, align 4
  %totalRadius = alloca float, align 4
  %target = alloca float, align 4
  %tolerance = alloca float, align 4
  %t1 = alloca float, align 4
  %k_maxIterations = alloca i32, align 4
  %iter = alloca i32, align 4
  %cache = alloca %struct.b2SimplexCache, align 4
  %distanceInput = alloca %struct.b2DistanceInput, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %distanceOutput = alloca %struct.b2DistanceOutput, align 4
  %fcn = alloca %struct.b2SeparationFunction, align 4
  %done = alloca i8, align 1
  %t2 = alloca float, align 4
  %pushBackIter = alloca i32, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %s2 = alloca float, align 4
  %s1 = alloca float, align 4
  %rootIterCount = alloca i32, align 4
  %a1 = alloca float, align 4
  %a2 = alloca float, align 4
  %t = alloca float, align 4
  %s = alloca float, align 4
  store %struct.b2TOIOutput* %output, %struct.b2TOIOutput** %1, align 4
  store %struct.b2TOIInput* %input, %struct.b2TOIInput** %2, align 4
  %3 = load i32* @b2_toiCalls, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @b2_toiCalls, align 4
  %5 = load %struct.b2TOIOutput** %1, align 4
  %6 = getelementptr inbounds %struct.b2TOIOutput* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.b2TOIInput** %2, align 4
  %8 = getelementptr inbounds %struct.b2TOIInput* %7, i32 0, i32 4
  %9 = load float* %8, align 4
  %10 = load %struct.b2TOIOutput** %1, align 4
  %11 = getelementptr inbounds %struct.b2TOIOutput* %10, i32 0, i32 1
  store float %9, float* %11, align 4
  %12 = load %struct.b2TOIInput** %2, align 4
  %13 = getelementptr inbounds %struct.b2TOIInput* %12, i32 0, i32 0
  store %struct.b2DistanceProxy* %13, %struct.b2DistanceProxy** %proxyA, align 4
  %14 = load %struct.b2TOIInput** %2, align 4
  %15 = getelementptr inbounds %struct.b2TOIInput* %14, i32 0, i32 1
  store %struct.b2DistanceProxy* %15, %struct.b2DistanceProxy** %proxyB, align 4
  %16 = load %struct.b2TOIInput** %2, align 4
  %17 = getelementptr inbounds %struct.b2TOIInput* %16, i32 0, i32 2
  %18 = bitcast %struct.b2Sweep* %sweepA to i8*
  %19 = bitcast %struct.b2Sweep* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 36, i32 4, i1 false)
  %20 = load %struct.b2TOIInput** %2, align 4
  %21 = getelementptr inbounds %struct.b2TOIInput* %20, i32 0, i32 3
  %22 = bitcast %struct.b2Sweep* %sweepB to i8*
  %23 = bitcast %struct.b2Sweep* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 36, i32 4, i1 false)
  call void @_ZN7b2Sweep9NormalizeEv(%struct.b2Sweep* %sweepA)
  call void @_ZN7b2Sweep9NormalizeEv(%struct.b2Sweep* %sweepB)
  %24 = load %struct.b2TOIInput** %2, align 4
  %25 = getelementptr inbounds %struct.b2TOIInput* %24, i32 0, i32 4
  %26 = load float* %25, align 4
  store float %26, float* %tMax, align 4
  %27 = load %struct.b2DistanceProxy** %proxyA, align 4
  %28 = getelementptr inbounds %struct.b2DistanceProxy* %27, i32 0, i32 3
  %29 = load float* %28, align 4
  %30 = load %struct.b2DistanceProxy** %proxyB, align 4
  %31 = getelementptr inbounds %struct.b2DistanceProxy* %30, i32 0, i32 3
  %32 = load float* %31, align 4
  %33 = fadd float %29, %32
  store float %33, float* %totalRadius, align 4
  %34 = load float* %totalRadius, align 4
  %35 = fsub float %34, 0x3F8EB851E0000000
  %36 = call float @_Z5b2MaxIfET_S0_S0_(float 0x3F747AE140000000, float %35)
  store float %36, float* %target, align 4
  store float 0x3F547AE140000000, float* %tolerance, align 4
  %37 = load float* %target, align 4
  %38 = load float* %tolerance, align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %0
  br label %43

; <label>:41                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 280, i8* getelementptr inbounds ([55 x i8]* @__PRETTY_FUNCTION__._Z14b2TimeOfImpactP11b2TOIOutputPK10b2TOIInput, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  store float 0.000000e+00, float* %t1, align 4
  store i32 20, i32* %k_maxIterations, align 4
  store i32 0, i32* %iter, align 4
  %44 = getelementptr inbounds %struct.b2SimplexCache* %cache, i32 0, i32 1
  store i16 0, i16* %44, align 2
  call void @_ZN15b2DistanceInputC1Ev(%struct.b2DistanceInput* %distanceInput)
  %45 = getelementptr inbounds %struct.b2DistanceInput* %distanceInput, i32 0, i32 0
  %46 = load %struct.b2TOIInput** %2, align 4
  %47 = getelementptr inbounds %struct.b2TOIInput* %46, i32 0, i32 0
  %48 = bitcast %struct.b2DistanceProxy* %45 to i8*
  %49 = bitcast %struct.b2DistanceProxy* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 28, i32 4, i1 false)
  %50 = getelementptr inbounds %struct.b2DistanceInput* %distanceInput, i32 0, i32 1
  %51 = load %struct.b2TOIInput** %2, align 4
  %52 = getelementptr inbounds %struct.b2TOIInput* %51, i32 0, i32 1
  %53 = bitcast %struct.b2DistanceProxy* %50 to i8*
  %54 = bitcast %struct.b2DistanceProxy* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %53, i8* %54, i32 28, i32 4, i1 false)
  %55 = getelementptr inbounds %struct.b2DistanceInput* %distanceInput, i32 0, i32 4
  store i8 0, i8* %55, align 1
  br label %56

; <label>:56                                      ; preds = %227, %43
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %57 = load float* %t1, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %sweepA, %struct.b2Transform* %xfA, float %57)
  %58 = load float* %t1, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %sweepB, %struct.b2Transform* %xfB, float %58)
  %59 = getelementptr inbounds %struct.b2DistanceInput* %distanceInput, i32 0, i32 2
  %60 = bitcast %struct.b2Transform* %59 to i8*
  %61 = bitcast %struct.b2Transform* %xfA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 16, i32 4, i1 false)
  %62 = getelementptr inbounds %struct.b2DistanceInput* %distanceInput, i32 0, i32 3
  %63 = bitcast %struct.b2Transform* %62 to i8*
  %64 = bitcast %struct.b2Transform* %xfB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 16, i32 4, i1 false)
  call void @_ZN16b2DistanceOutputC1Ev(%struct.b2DistanceOutput* %distanceOutput)
  call void @_Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput(%struct.b2DistanceOutput* %distanceOutput, %struct.b2SimplexCache* %cache, %struct.b2DistanceInput* %distanceInput)
  %65 = getelementptr inbounds %struct.b2DistanceOutput* %distanceOutput, i32 0, i32 2
  %66 = load float* %65, align 4
  %67 = fcmp ole float %66, 0.000000e+00
  br i1 %67, label %68, label %73

; <label>:68                                      ; preds = %56
  %69 = load %struct.b2TOIOutput** %1, align 4
  %70 = getelementptr inbounds %struct.b2TOIOutput* %69, i32 0, i32 0
  store i32 2, i32* %70, align 4
  %71 = load %struct.b2TOIOutput** %1, align 4
  %72 = getelementptr inbounds %struct.b2TOIOutput* %71, i32 0, i32 1
  store float 0.000000e+00, float* %72, align 4
  br label %228

; <label>:73                                      ; preds = %56
  %74 = getelementptr inbounds %struct.b2DistanceOutput* %distanceOutput, i32 0, i32 2
  %75 = load float* %74, align 4
  %76 = load float* %target, align 4
  %77 = load float* %tolerance, align 4
  %78 = fadd float %76, %77
  %79 = fcmp olt float %75, %78
  br i1 %79, label %80, label %86

; <label>:80                                      ; preds = %73
  %81 = load %struct.b2TOIOutput** %1, align 4
  %82 = getelementptr inbounds %struct.b2TOIOutput* %81, i32 0, i32 0
  store i32 3, i32* %82, align 4
  %83 = load float* %t1, align 4
  %84 = load %struct.b2TOIOutput** %1, align 4
  %85 = getelementptr inbounds %struct.b2TOIOutput* %84, i32 0, i32 1
  store float %83, float* %85, align 4
  br label %228

; <label>:86                                      ; preds = %73
  call void @_ZN20b2SeparationFunctionC1Ev(%struct.b2SeparationFunction* %fcn)
  %87 = load %struct.b2DistanceProxy** %proxyA, align 4
  %88 = load %struct.b2DistanceProxy** %proxyB, align 4
  %89 = load float* %t1, align 4
  %90 = call float @_ZN20b2SeparationFunction10InitializeEPK14b2SimplexCachePK15b2DistanceProxyRK7b2SweepS5_S8_f(%struct.b2SeparationFunction* %fcn, %struct.b2SimplexCache* %cache, %struct.b2DistanceProxy* %87, %struct.b2Sweep* %sweepA, %struct.b2DistanceProxy* %88, %struct.b2Sweep* %sweepB, float %89)
  store i8 0, i8* %done, align 1
  %91 = load float* %tMax, align 4
  store float %91, float* %t2, align 4
  store i32 0, i32* %pushBackIter, align 4
  br label %92

; <label>:92                                      ; preds = %209, %86
  %93 = load float* %t2, align 4
  %94 = call float @_ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f(%struct.b2SeparationFunction* %fcn, i32* %indexA, i32* %indexB, float %93)
  store float %94, float* %s2, align 4
  %95 = load float* %s2, align 4
  %96 = load float* %target, align 4
  %97 = load float* %tolerance, align 4
  %98 = fadd float %96, %97
  %99 = fcmp ogt float %95, %98
  br i1 %99, label %100, label %106

; <label>:100                                     ; preds = %92
  %101 = load %struct.b2TOIOutput** %1, align 4
  %102 = getelementptr inbounds %struct.b2TOIOutput* %101, i32 0, i32 0
  store i32 4, i32* %102, align 4
  %103 = load float* %tMax, align 4
  %104 = load %struct.b2TOIOutput** %1, align 4
  %105 = getelementptr inbounds %struct.b2TOIOutput* %104, i32 0, i32 1
  store float %103, float* %105, align 4
  store i8 1, i8* %done, align 1
  br label %210

; <label>:106                                     ; preds = %92
  %107 = load float* %s2, align 4
  %108 = load float* %target, align 4
  %109 = load float* %tolerance, align 4
  %110 = fsub float %108, %109
  %111 = fcmp ogt float %107, %110
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %106
  %113 = load float* %t2, align 4
  store float %113, float* %t1, align 4
  br label %210

; <label>:114                                     ; preds = %106
  %115 = load i32* %indexA, align 4
  %116 = load i32* %indexB, align 4
  %117 = load float* %t1, align 4
  %118 = call float @_ZNK20b2SeparationFunction8EvaluateEiif(%struct.b2SeparationFunction* %fcn, i32 %115, i32 %116, float %117)
  store float %118, float* %s1, align 4
  %119 = load float* %s1, align 4
  %120 = load float* %target, align 4
  %121 = load float* %tolerance, align 4
  %122 = fsub float %120, %121
  %123 = fcmp olt float %119, %122
  br i1 %123, label %124, label %130

; <label>:124                                     ; preds = %114
  %125 = load %struct.b2TOIOutput** %1, align 4
  %126 = getelementptr inbounds %struct.b2TOIOutput* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load float* %t1, align 4
  %128 = load %struct.b2TOIOutput** %1, align 4
  %129 = getelementptr inbounds %struct.b2TOIOutput* %128, i32 0, i32 1
  store float %127, float* %129, align 4
  store i8 1, i8* %done, align 1
  br label %210

; <label>:130                                     ; preds = %114
  %131 = load float* %s1, align 4
  %132 = load float* %target, align 4
  %133 = load float* %tolerance, align 4
  %134 = fadd float %132, %133
  %135 = fcmp ole float %131, %134
  br i1 %135, label %136, label %142

; <label>:136                                     ; preds = %130
  %137 = load %struct.b2TOIOutput** %1, align 4
  %138 = getelementptr inbounds %struct.b2TOIOutput* %137, i32 0, i32 0
  store i32 3, i32* %138, align 4
  %139 = load float* %t1, align 4
  %140 = load %struct.b2TOIOutput** %1, align 4
  %141 = getelementptr inbounds %struct.b2TOIOutput* %140, i32 0, i32 1
  store float %139, float* %141, align 4
  store i8 1, i8* %done, align 1
  br label %210

; <label>:142                                     ; preds = %130
  store i32 0, i32* %rootIterCount, align 4
  %143 = load float* %t1, align 4
  store float %143, float* %a1, align 4
  %144 = load float* %t2, align 4
  store float %144, float* %a2, align 4
  br label %145

; <label>:145                                     ; preds = %199, %142
  %146 = load i32* %rootIterCount, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

; <label>:149                                     ; preds = %145
  %150 = load float* %a1, align 4
  %151 = load float* %target, align 4
  %152 = load float* %s1, align 4
  %153 = fsub float %151, %152
  %154 = load float* %a2, align 4
  %155 = load float* %a1, align 4
  %156 = fsub float %154, %155
  %157 = fmul float %153, %156
  %158 = load float* %s2, align 4
  %159 = load float* %s1, align 4
  %160 = fsub float %158, %159
  %161 = fdiv float %157, %160
  %162 = fadd float %150, %161
  store float %162, float* %t, align 4
  br label %168

; <label>:163                                     ; preds = %145
  %164 = load float* %a1, align 4
  %165 = load float* %a2, align 4
  %166 = fadd float %164, %165
  %167 = fmul float 5.000000e-01, %166
  store float %167, float* %t, align 4
  br label %168

; <label>:168                                     ; preds = %163, %149
  %169 = load i32* %indexA, align 4
  %170 = load i32* %indexB, align 4
  %171 = load float* %t, align 4
  %172 = call float @_ZNK20b2SeparationFunction8EvaluateEiif(%struct.b2SeparationFunction* %fcn, i32 %169, i32 %170, float %171)
  store float %172, float* %s, align 4
  %173 = load float* %s, align 4
  %174 = load float* %target, align 4
  %175 = fsub float %173, %174
  %176 = call float @_Z5b2AbsIfET_S0_(float %175)
  %177 = load float* %tolerance, align 4
  %178 = fcmp olt float %176, %177
  br i1 %178, label %179, label %181

; <label>:179                                     ; preds = %168
  %180 = load float* %t, align 4
  store float %180, float* %t2, align 4
  br label %200

; <label>:181                                     ; preds = %168
  %182 = load float* %s, align 4
  %183 = load float* %target, align 4
  %184 = fcmp ogt float %182, %183
  br i1 %184, label %185, label %188

; <label>:185                                     ; preds = %181
  %186 = load float* %t, align 4
  store float %186, float* %a1, align 4
  %187 = load float* %s, align 4
  store float %187, float* %s1, align 4
  br label %191

; <label>:188                                     ; preds = %181
  %189 = load float* %t, align 4
  store float %189, float* %a2, align 4
  %190 = load float* %s, align 4
  store float %190, float* %s2, align 4
  br label %191

; <label>:191                                     ; preds = %188, %185
  %192 = load i32* %rootIterCount, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %rootIterCount, align 4
  %194 = load i32* @b2_toiRootIters, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @b2_toiRootIters, align 4
  %196 = load i32* %rootIterCount, align 4
  %197 = icmp eq i32 %196, 50
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %191
  br label %200

; <label>:199                                     ; preds = %191
  br label %145

; <label>:200                                     ; preds = %198, %179
  %201 = load i32* @b2_toiMaxRootIters, align 4
  %202 = load i32* %rootIterCount, align 4
  %203 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %201, i32 %202)
  store i32 %203, i32* @b2_toiMaxRootIters, align 4
  %204 = load i32* %pushBackIter, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %pushBackIter, align 4
  %206 = load i32* %pushBackIter, align 4
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %209

; <label>:208                                     ; preds = %200
  br label %210

; <label>:209                                     ; preds = %200
  br label %92

; <label>:210                                     ; preds = %208, %136, %124, %112, %100
  %211 = load i32* %iter, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %iter, align 4
  %213 = load i32* @b2_toiIters, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @b2_toiIters, align 4
  %215 = load i8* %done, align 1
  %216 = trunc i8 %215 to i1
  br i1 %216, label %217, label %218

; <label>:217                                     ; preds = %210
  br label %228

; <label>:218                                     ; preds = %210
  %219 = load i32* %iter, align 4
  %220 = icmp eq i32 %219, 20
  br i1 %220, label %221, label %227

; <label>:221                                     ; preds = %218
  %222 = load %struct.b2TOIOutput** %1, align 4
  %223 = getelementptr inbounds %struct.b2TOIOutput* %222, i32 0, i32 0
  store i32 1, i32* %223, align 4
  %224 = load float* %t1, align 4
  %225 = load %struct.b2TOIOutput** %1, align 4
  %226 = getelementptr inbounds %struct.b2TOIOutput* %225, i32 0, i32 1
  store float %224, float* %226, align 4
  br label %228

; <label>:227                                     ; preds = %218
  br label %56

; <label>:228                                     ; preds = %221, %217, %80, %68
  %229 = load i32* @b2_toiMaxIters, align 4
  %230 = load i32* %iter, align 4
  %231 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %229, i32 %230)
  store i32 %231, i32* @b2_toiMaxIters, align 4
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr void @_ZN7b2Sweep9NormalizeEv(%struct.b2Sweep* %this) nounwind inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  %twoPi = alloca float, align 4
  %d = alloca float, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  store float 0x401921FB60000000, float* %twoPi, align 4
  %3 = load float* %twoPi, align 4
  %4 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 3
  %5 = load float* %4, align 4
  %6 = load float* %twoPi, align 4
  %7 = fdiv float %5, %6
  %8 = call float @floorf(float %7) nounwind readnone
  %9 = fmul float %3, %8
  store float %9, float* %d, align 4
  %10 = load float* %d, align 4
  %11 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 3
  %12 = load float* %11, align 4
  %13 = fsub float %12, %10
  store float %13, float* %11, align 4
  %14 = load float* %d, align 4
  %15 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 4
  %16 = load float* %15, align 4
  %17 = fsub float %16, %14
  store float %17, float* %15, align 4
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZN15b2DistanceInputC1Ev(%struct.b2DistanceInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceInput*, align 4
  store %struct.b2DistanceInput* %this, %struct.b2DistanceInput** %1, align 4
  %2 = load %struct.b2DistanceInput** %1
  call void @_ZN15b2DistanceInputC2Ev(%struct.b2DistanceInput* %2)
  ret void
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
  ret void
}

define linkonce_odr void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %this, %struct.b2Transform* %xf, float %beta) inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  %2 = alloca %struct.b2Transform*, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %angle = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %2, align 4
  store float %beta, float* %3, align 4
  %8 = load %struct.b2Sweep** %1
  %9 = load %struct.b2Transform** %2, align 4
  %10 = getelementptr inbounds %struct.b2Transform* %9, i32 0, i32 0
  %11 = load float* %3, align 4
  %12 = fsub float 1.000000e+00, %11
  %13 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %12, %struct.b2Vec2* %13)
  %14 = load float* %3, align 4
  %15 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 2
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %14, %struct.b2Vec2* %15)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %5, %struct.b2Vec2* %6)
  %16 = bitcast %struct.b2Vec2* %10 to i8*
  %17 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %18 = load float* %3, align 4
  %19 = fsub float 1.000000e+00, %18
  %20 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 3
  %21 = load float* %20, align 4
  %22 = fmul float %19, %21
  %23 = load float* %3, align 4
  %24 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 4
  %25 = load float* %24, align 4
  %26 = fmul float %23, %25
  %27 = fadd float %22, %26
  store float %27, float* %angle, align 4
  %28 = load %struct.b2Transform** %2, align 4
  %29 = getelementptr inbounds %struct.b2Transform* %28, i32 0, i32 1
  %30 = load float* %angle, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %29, float %30)
  %31 = load %struct.b2Transform** %2, align 4
  %32 = getelementptr inbounds %struct.b2Transform* %31, i32 0, i32 0
  %33 = load %struct.b2Transform** %2, align 4
  %34 = getelementptr inbounds %struct.b2Transform* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 0
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %34, %struct.b2Vec2* %35)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %32, %struct.b2Vec2* %7)
  ret void
}

define linkonce_odr void @_ZN16b2DistanceOutputC1Ev(%struct.b2DistanceOutput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2DistanceOutput*, align 4
  store %struct.b2DistanceOutput* %this, %struct.b2DistanceOutput** %1, align 4
  %2 = load %struct.b2DistanceOutput** %1
  call void @_ZN16b2DistanceOutputC2Ev(%struct.b2DistanceOutput* %2)
  ret void
}

declare void @_Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput(%struct.b2DistanceOutput*, %struct.b2SimplexCache*, %struct.b2DistanceInput*)

define linkonce_odr void @_ZN20b2SeparationFunctionC1Ev(%struct.b2SeparationFunction* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2SeparationFunction*, align 4
  store %struct.b2SeparationFunction* %this, %struct.b2SeparationFunction** %1, align 4
  %2 = load %struct.b2SeparationFunction** %1
  call void @_ZN20b2SeparationFunctionC2Ev(%struct.b2SeparationFunction* %2)
  ret void
}

define linkonce_odr float @_ZN20b2SeparationFunction10InitializeEPK14b2SimplexCachePK15b2DistanceProxyRK7b2SweepS5_S8_f(%struct.b2SeparationFunction* %this, %struct.b2SimplexCache* %cache, %struct.b2DistanceProxy* %proxyA, %struct.b2Sweep* %sweepA, %struct.b2DistanceProxy* %proxyB, %struct.b2Sweep* %sweepB, float %t1) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2SeparationFunction*, align 4
  %3 = alloca %struct.b2SimplexCache*, align 4
  %4 = alloca %struct.b2DistanceProxy*, align 4
  %5 = alloca %struct.b2Sweep*, align 4
  %6 = alloca %struct.b2DistanceProxy*, align 4
  %7 = alloca %struct.b2Sweep*, align 4
  %8 = alloca float, align 4
  %count = alloca i32, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %localPointA = alloca %struct.b2Vec2, align 4
  %localPointB = alloca %struct.b2Vec2, align 4
  %pointA = alloca %struct.b2Vec2, align 4
  %pointB = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %s = alloca float, align 4
  %localPointB1 = alloca %struct.b2Vec2, align 4
  %localPointB2 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %pointB1 = alloca %struct.b2Vec2, align 4
  %localPointA2 = alloca %struct.b2Vec2, align 4
  %pointA3 = alloca %struct.b2Vec2, align 4
  %s4 = alloca float, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %localPointA1 = alloca %struct.b2Vec2, align 4
  %localPointA25 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %normal6 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %pointA7 = alloca %struct.b2Vec2, align 4
  %localPointB8 = alloca %struct.b2Vec2, align 4
  %pointB9 = alloca %struct.b2Vec2, align 4
  %s10 = alloca float, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  store %struct.b2SeparationFunction* %this, %struct.b2SeparationFunction** %2, align 4
  store %struct.b2SimplexCache* %cache, %struct.b2SimplexCache** %3, align 4
  store %struct.b2DistanceProxy* %proxyA, %struct.b2DistanceProxy** %4, align 4
  store %struct.b2Sweep* %sweepA, %struct.b2Sweep** %5, align 4
  store %struct.b2DistanceProxy* %proxyB, %struct.b2DistanceProxy** %6, align 4
  store %struct.b2Sweep* %sweepB, %struct.b2Sweep** %7, align 4
  store float %t1, float* %8, align 4
  %22 = load %struct.b2SeparationFunction** %2
  %23 = load %struct.b2DistanceProxy** %4, align 4
  %24 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 0
  store %struct.b2DistanceProxy* %23, %struct.b2DistanceProxy** %24, align 4
  %25 = load %struct.b2DistanceProxy** %6, align 4
  %26 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 1
  store %struct.b2DistanceProxy* %25, %struct.b2DistanceProxy** %26, align 4
  %27 = load %struct.b2SimplexCache** %3, align 4
  %28 = getelementptr inbounds %struct.b2SimplexCache* %27, i32 0, i32 1
  %29 = load i16* %28, align 2
  %30 = zext i16 %29 to i32
  store i32 %30, i32* %count, align 4
  %31 = load i32* %count, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %0
  %34 = load i32* %count, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %33
  br label %39

; <label>:37                                      ; preds = %33, %0
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([158 x i8]* @__PRETTY_FUNCTION__._ZN20b2SeparationFunction10InitializeEPK14b2SimplexCachePK15b2DistanceProxyRK7b2SweepS5_S8_f, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:39                                      ; preds = %38, %36
  %40 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 2
  %41 = load %struct.b2Sweep** %5
  %42 = bitcast %struct.b2Sweep* %40 to i8*
  %43 = bitcast %struct.b2Sweep* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 36, i32 4, i1 false)
  %44 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 3
  %45 = load %struct.b2Sweep** %7
  %46 = bitcast %struct.b2Sweep* %44 to i8*
  %47 = bitcast %struct.b2Sweep* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* %47, i32 36, i32 4, i1 false)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %48 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 2
  %49 = load float* %8, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %48, %struct.b2Transform* %xfA, float %49)
  %50 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 3
  %51 = load float* %8, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %50, %struct.b2Transform* %xfB, float %51)
  %52 = load i32* %count, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %82

; <label>:54                                      ; preds = %39
  %55 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 4
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 0
  %57 = load %struct.b2DistanceProxy** %56, align 4
  %58 = load %struct.b2SimplexCache** %3, align 4
  %59 = getelementptr inbounds %struct.b2SimplexCache* %58, i32 0, i32 2
  %60 = getelementptr inbounds [3 x i8]* %59, i32 0, i32 0
  %61 = load i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %57, i32 %62)
  %64 = bitcast %struct.b2Vec2* %localPointA to i8*
  %65 = bitcast %struct.b2Vec2* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %64, i8* %65, i32 8, i32 4, i1 false)
  %66 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 1
  %67 = load %struct.b2DistanceProxy** %66, align 4
  %68 = load %struct.b2SimplexCache** %3, align 4
  %69 = getelementptr inbounds %struct.b2SimplexCache* %68, i32 0, i32 3
  %70 = getelementptr inbounds [3 x i8]* %69, i32 0, i32 0
  %71 = load i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %67, i32 %72)
  %74 = bitcast %struct.b2Vec2* %localPointB to i8*
  %75 = bitcast %struct.b2Vec2* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB)
  %76 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %77 = bitcast %struct.b2Vec2* %76 to i8*
  %78 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %77, i8* %78, i32 8, i32 4, i1 false)
  %79 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  %80 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %79)
  store float %80, float* %s, align 4
  %81 = load float* %s, align 4
  store float %81, float* %1
  br label %201

; <label>:82                                      ; preds = %39
  %83 = load %struct.b2SimplexCache** %3, align 4
  %84 = getelementptr inbounds %struct.b2SimplexCache* %83, i32 0, i32 2
  %85 = getelementptr inbounds [3 x i8]* %84, i32 0, i32 0
  %86 = load i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load %struct.b2SimplexCache** %3, align 4
  %89 = getelementptr inbounds %struct.b2SimplexCache* %88, i32 0, i32 2
  %90 = getelementptr inbounds [3 x i8]* %89, i32 0, i32 1
  %91 = load i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %146

; <label>:94                                      ; preds = %82
  %95 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 4
  store i32 2, i32* %95, align 4
  %96 = load %struct.b2DistanceProxy** %6, align 4
  %97 = load %struct.b2SimplexCache** %3, align 4
  %98 = getelementptr inbounds %struct.b2SimplexCache* %97, i32 0, i32 3
  %99 = getelementptr inbounds [3 x i8]* %98, i32 0, i32 0
  %100 = load i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %96, i32 %101)
  %103 = bitcast %struct.b2Vec2* %localPointB1 to i8*
  %104 = bitcast %struct.b2Vec2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = load %struct.b2DistanceProxy** %6, align 4
  %106 = load %struct.b2SimplexCache** %3, align 4
  %107 = getelementptr inbounds %struct.b2SimplexCache* %106, i32 0, i32 3
  %108 = getelementptr inbounds [3 x i8]* %107, i32 0, i32 1
  %109 = load i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %105, i32 %110)
  %112 = bitcast %struct.b2Vec2* %localPointB2 to i8*
  %113 = bitcast %struct.b2Vec2* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 8, i32 4, i1 false)
  %114 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %localPointB2, %struct.b2Vec2* %localPointB1)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %10, %struct.b2Vec2* %11, float 1.000000e+00)
  %115 = bitcast %struct.b2Vec2* %114 to i8*
  %116 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 8, i32 4, i1 false)
  %117 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  %118 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %117)
  %119 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %120 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal, %struct.b2Rot* %119, %struct.b2Vec2* %120)
  %121 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 5
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %13, %struct.b2Vec2* %localPointB1, %struct.b2Vec2* %localPointB2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float 5.000000e-01, %struct.b2Vec2* %13)
  %122 = bitcast %struct.b2Vec2* %121 to i8*
  %123 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 8, i32 4, i1 false)
  %124 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB1, %struct.b2Transform* %xfB, %struct.b2Vec2* %124)
  %125 = load %struct.b2DistanceProxy** %4, align 4
  %126 = load %struct.b2SimplexCache** %3, align 4
  %127 = getelementptr inbounds %struct.b2SimplexCache* %126, i32 0, i32 2
  %128 = getelementptr inbounds [3 x i8]* %127, i32 0, i32 0
  %129 = load i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %125, i32 %130)
  %132 = bitcast %struct.b2Vec2* %localPointA2 to i8*
  %133 = bitcast %struct.b2Vec2* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %132, i8* %133, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA3, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA2)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %pointA3, %struct.b2Vec2* %pointB1)
  %134 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %14, %struct.b2Vec2* %normal)
  store float %134, float* %s4, align 4
  %135 = load float* %s4, align 4
  %136 = fcmp olt float %135, 0.000000e+00
  br i1 %136, label %137, label %144

; <label>:137                                     ; preds = %94
  %138 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  %139 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %15, %struct.b2Vec2* %139)
  %140 = bitcast %struct.b2Vec2* %138 to i8*
  %141 = bitcast %struct.b2Vec2* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %141, i32 8, i32 4, i1 false)
  %142 = load float* %s4, align 4
  %143 = fsub float -0.000000e+00, %142
  store float %143, float* %s4, align 4
  br label %144

; <label>:144                                     ; preds = %137, %94
  %145 = load float* %s4, align 4
  store float %145, float* %1
  br label %201

; <label>:146                                     ; preds = %82
  %147 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 4
  store i32 1, i32* %147, align 4
  %148 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 0
  %149 = load %struct.b2DistanceProxy** %148, align 4
  %150 = load %struct.b2SimplexCache** %3, align 4
  %151 = getelementptr inbounds %struct.b2SimplexCache* %150, i32 0, i32 2
  %152 = getelementptr inbounds [3 x i8]* %151, i32 0, i32 0
  %153 = load i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %149, i32 %154)
  %156 = bitcast %struct.b2Vec2* %localPointA1 to i8*
  %157 = bitcast %struct.b2Vec2* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %156, i8* %157, i32 8, i32 4, i1 false)
  %158 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 0
  %159 = load %struct.b2DistanceProxy** %158, align 4
  %160 = load %struct.b2SimplexCache** %3, align 4
  %161 = getelementptr inbounds %struct.b2SimplexCache* %160, i32 0, i32 2
  %162 = getelementptr inbounds [3 x i8]* %161, i32 0, i32 1
  %163 = load i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %159, i32 %164)
  %166 = bitcast %struct.b2Vec2* %localPointA25 to i8*
  %167 = bitcast %struct.b2Vec2* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %166, i8* %167, i32 8, i32 4, i1 false)
  %168 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %17, %struct.b2Vec2* %localPointA25, %struct.b2Vec2* %localPointA1)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %16, %struct.b2Vec2* %17, float 1.000000e+00)
  %169 = bitcast %struct.b2Vec2* %168 to i8*
  %170 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %169, i8* %170, i32 8, i32 4, i1 false)
  %171 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  %172 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %171)
  %173 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %174 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal6, %struct.b2Rot* %173, %struct.b2Vec2* %174)
  %175 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 5
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %19, %struct.b2Vec2* %localPointA1, %struct.b2Vec2* %localPointA25)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %18, float 5.000000e-01, %struct.b2Vec2* %19)
  %176 = bitcast %struct.b2Vec2* %175 to i8*
  %177 = bitcast %struct.b2Vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %176, i8* %177, i32 8, i32 4, i1 false)
  %178 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA7, %struct.b2Transform* %xfA, %struct.b2Vec2* %178)
  %179 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 1
  %180 = load %struct.b2DistanceProxy** %179, align 4
  %181 = load %struct.b2SimplexCache** %3, align 4
  %182 = getelementptr inbounds %struct.b2SimplexCache* %181, i32 0, i32 3
  %183 = getelementptr inbounds [3 x i8]* %182, i32 0, i32 0
  %184 = load i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %180, i32 %185)
  %187 = bitcast %struct.b2Vec2* %localPointB8 to i8*
  %188 = bitcast %struct.b2Vec2* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %187, i8* %188, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB9, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB8)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %20, %struct.b2Vec2* %pointB9, %struct.b2Vec2* %pointA7)
  %189 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %20, %struct.b2Vec2* %normal6)
  store float %189, float* %s10, align 4
  %190 = load float* %s10, align 4
  %191 = fcmp olt float %190, 0.000000e+00
  br i1 %191, label %192, label %199

; <label>:192                                     ; preds = %146
  %193 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  %194 = getelementptr inbounds %struct.b2SeparationFunction* %22, i32 0, i32 6
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %21, %struct.b2Vec2* %194)
  %195 = bitcast %struct.b2Vec2* %193 to i8*
  %196 = bitcast %struct.b2Vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %195, i8* %196, i32 8, i32 4, i1 false)
  %197 = load float* %s10, align 4
  %198 = fsub float -0.000000e+00, %197
  store float %198, float* %s10, align 4
  br label %199

; <label>:199                                     ; preds = %192, %146
  %200 = load float* %s10, align 4
  store float %200, float* %1
  br label %201

; <label>:201                                     ; preds = %199, %144, %54
  %202 = load float* %1
  ret float %202
}

define linkonce_odr float @_ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f(%struct.b2SeparationFunction* %this, i32* %indexA, i32* %indexB, float %t) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2SeparationFunction*, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca float, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %axisA = alloca %struct.b2Vec2, align 4
  %axisB = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %localPointA = alloca %struct.b2Vec2, align 4
  %localPointB = alloca %struct.b2Vec2, align 4
  %pointA = alloca %struct.b2Vec2, align 4
  %pointB = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %pointA1 = alloca %struct.b2Vec2, align 4
  %axisB2 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %localPointB3 = alloca %struct.b2Vec2, align 4
  %pointB4 = alloca %struct.b2Vec2, align 4
  %separation5 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %normal6 = alloca %struct.b2Vec2, align 4
  %pointB7 = alloca %struct.b2Vec2, align 4
  %axisA8 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %localPointA9 = alloca %struct.b2Vec2, align 4
  %pointA10 = alloca %struct.b2Vec2, align 4
  %separation11 = alloca float, align 4
  %11 = alloca %struct.b2Vec2, align 4
  store %struct.b2SeparationFunction* %this, %struct.b2SeparationFunction** %2, align 4
  store i32* %indexA, i32** %3, align 4
  store i32* %indexB, i32** %4, align 4
  store float %t, float* %5, align 4
  %12 = load %struct.b2SeparationFunction** %2
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %13 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 2
  %14 = load float* %5, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %13, %struct.b2Transform* %xfA, float %14)
  %15 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 3
  %16 = load float* %5, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %15, %struct.b2Transform* %xfB, float %16)
  %17 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 4
  %18 = load i32* %17, align 4
  switch i32 %18, label %87 [
    i32 0, label %19
    i32 1, label %49
    i32 2, label %68
  ]

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisA, %struct.b2Rot* %20, %struct.b2Vec2* %21)
  %22 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %23 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %6, %struct.b2Vec2* %23)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisB, %struct.b2Rot* %22, %struct.b2Vec2* %6)
  %24 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %25 = load %struct.b2DistanceProxy** %24, align 4
  %26 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %25, %struct.b2Vec2* %axisA)
  %27 = load i32** %3, align 4
  store i32 %26, i32* %27
  %28 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %29 = load %struct.b2DistanceProxy** %28, align 4
  %30 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %29, %struct.b2Vec2* %axisB)
  %31 = load i32** %4, align 4
  store i32 %30, i32* %31
  %32 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %33 = load %struct.b2DistanceProxy** %32, align 4
  %34 = load i32** %3, align 4
  %35 = load i32* %34
  %36 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %33, i32 %35)
  %37 = bitcast %struct.b2Vec2* %localPointA to i8*
  %38 = bitcast %struct.b2Vec2* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 8, i32 4, i1 false)
  %39 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %40 = load %struct.b2DistanceProxy** %39, align 4
  %41 = load i32** %4, align 4
  %42 = load i32* %41
  %43 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %40, i32 %42)
  %44 = bitcast %struct.b2Vec2* %localPointB to i8*
  %45 = bitcast %struct.b2Vec2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %46 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  %47 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %7, %struct.b2Vec2* %46)
  store float %47, float* %separation, align 4
  %48 = load float* %separation, align 4
  store float %48, float* %1
  br label %88

; <label>:49                                      ; preds = %0
  %50 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %51 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal, %struct.b2Rot* %50, %struct.b2Vec2* %51)
  %52 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA1, %struct.b2Transform* %xfA, %struct.b2Vec2* %52)
  %53 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %8, %struct.b2Vec2* %normal)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisB2, %struct.b2Rot* %53, %struct.b2Vec2* %8)
  %54 = load i32** %3, align 4
  store i32 -1, i32* %54
  %55 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %56 = load %struct.b2DistanceProxy** %55, align 4
  %57 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %56, %struct.b2Vec2* %axisB2)
  %58 = load i32** %4, align 4
  store i32 %57, i32* %58
  %59 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %60 = load %struct.b2DistanceProxy** %59, align 4
  %61 = load i32** %4, align 4
  %62 = load i32* %61
  %63 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %60, i32 %62)
  %64 = bitcast %struct.b2Vec2* %localPointB3 to i8*
  %65 = bitcast %struct.b2Vec2* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %64, i8* %65, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB4, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB3)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %pointB4, %struct.b2Vec2* %pointA1)
  %66 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %9, %struct.b2Vec2* %normal)
  store float %66, float* %separation5, align 4
  %67 = load float* %separation5, align 4
  store float %67, float* %1
  br label %88

; <label>:68                                      ; preds = %0
  %69 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %70 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal6, %struct.b2Rot* %69, %struct.b2Vec2* %70)
  %71 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB7, %struct.b2Transform* %xfB, %struct.b2Vec2* %71)
  %72 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %10, %struct.b2Vec2* %normal6)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisA8, %struct.b2Rot* %72, %struct.b2Vec2* %10)
  %73 = load i32** %4, align 4
  store i32 -1, i32* %73
  %74 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %75 = load %struct.b2DistanceProxy** %74, align 4
  %76 = call i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %75, %struct.b2Vec2* %axisA8)
  %77 = load i32** %3, align 4
  store i32 %76, i32* %77
  %78 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %79 = load %struct.b2DistanceProxy** %78, align 4
  %80 = load i32** %3, align 4
  %81 = load i32* %80
  %82 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %79, i32 %81)
  %83 = bitcast %struct.b2Vec2* %localPointA9 to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA10, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA9)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %pointA10, %struct.b2Vec2* %pointB7)
  %85 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %11, %struct.b2Vec2* %normal6)
  store float %85, float* %separation11, align 4
  %86 = load float* %separation11, align 4
  store float %86, float* %1
  br label %88

; <label>:87                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([81 x i8]* @__PRETTY_FUNCTION__._ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %68, %49, %19
  %89 = load float* %1
  ret float %89
}

define linkonce_odr float @_ZNK20b2SeparationFunction8EvaluateEiif(%struct.b2SeparationFunction* %this, i32 %indexA, i32 %indexB, float %t) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2SeparationFunction*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %axisA = alloca %struct.b2Vec2, align 4
  %axisB = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %localPointA = alloca %struct.b2Vec2, align 4
  %localPointB = alloca %struct.b2Vec2, align 4
  %pointA = alloca %struct.b2Vec2, align 4
  %pointB = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %pointA1 = alloca %struct.b2Vec2, align 4
  %axisB2 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %localPointB3 = alloca %struct.b2Vec2, align 4
  %pointB4 = alloca %struct.b2Vec2, align 4
  %separation5 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %normal6 = alloca %struct.b2Vec2, align 4
  %pointB7 = alloca %struct.b2Vec2, align 4
  %axisA8 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %localPointA9 = alloca %struct.b2Vec2, align 4
  %pointA10 = alloca %struct.b2Vec2, align 4
  %separation11 = alloca float, align 4
  %11 = alloca %struct.b2Vec2, align 4
  store %struct.b2SeparationFunction* %this, %struct.b2SeparationFunction** %2, align 4
  store i32 %indexA, i32* %3, align 4
  store i32 %indexB, i32* %4, align 4
  store float %t, float* %5, align 4
  %12 = load %struct.b2SeparationFunction** %2
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %13 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 2
  %14 = load float* %5, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %13, %struct.b2Transform* %xfA, float %14)
  %15 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 3
  %16 = load float* %5, align 4
  call void @_ZNK7b2Sweep12GetTransformEP11b2Transformf(%struct.b2Sweep* %15, %struct.b2Transform* %xfB, float %16)
  %17 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 4
  %18 = load i32* %17, align 4
  switch i32 %18, label %65 [
    i32 0, label %19
    i32 1, label %39
    i32 2, label %52
  ]

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisA, %struct.b2Rot* %20, %struct.b2Vec2* %21)
  %22 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %23 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %6, %struct.b2Vec2* %23)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisB, %struct.b2Rot* %22, %struct.b2Vec2* %6)
  %24 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %25 = load %struct.b2DistanceProxy** %24, align 4
  %26 = load i32* %3, align 4
  %27 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %25, i32 %26)
  %28 = bitcast %struct.b2Vec2* %localPointA to i8*
  %29 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %31 = load %struct.b2DistanceProxy** %30, align 4
  %32 = load i32* %4, align 4
  %33 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %31, i32 %32)
  %34 = bitcast %struct.b2Vec2* %localPointB to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %36 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  %37 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %7, %struct.b2Vec2* %36)
  store float %37, float* %separation, align 4
  %38 = load float* %separation, align 4
  store float %38, float* %1
  br label %66

; <label>:39                                      ; preds = %0
  %40 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %41 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal, %struct.b2Rot* %40, %struct.b2Vec2* %41)
  %42 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA1, %struct.b2Transform* %xfA, %struct.b2Vec2* %42)
  %43 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %8, %struct.b2Vec2* %normal)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisB2, %struct.b2Rot* %43, %struct.b2Vec2* %8)
  %44 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 1
  %45 = load %struct.b2DistanceProxy** %44, align 4
  %46 = load i32* %4, align 4
  %47 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %45, i32 %46)
  %48 = bitcast %struct.b2Vec2* %localPointB3 to i8*
  %49 = bitcast %struct.b2Vec2* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB4, %struct.b2Transform* %xfB, %struct.b2Vec2* %localPointB3)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %pointB4, %struct.b2Vec2* %pointA1)
  %50 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %9, %struct.b2Vec2* %normal)
  store float %50, float* %separation5, align 4
  %51 = load float* %separation5, align 4
  store float %51, float* %1
  br label %66

; <label>:52                                      ; preds = %0
  %53 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %54 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %normal6, %struct.b2Rot* %53, %struct.b2Vec2* %54)
  %55 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 5
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB7, %struct.b2Transform* %xfB, %struct.b2Vec2* %55)
  %56 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %10, %struct.b2Vec2* %normal6)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axisA8, %struct.b2Rot* %56, %struct.b2Vec2* %10)
  %57 = getelementptr inbounds %struct.b2SeparationFunction* %12, i32 0, i32 0
  %58 = load %struct.b2DistanceProxy** %57, align 4
  %59 = load i32* %3, align 4
  %60 = call %struct.b2Vec2* @_ZNK15b2DistanceProxy9GetVertexEi(%struct.b2DistanceProxy* %58, i32 %59)
  %61 = bitcast %struct.b2Vec2* %localPointA9 to i8*
  %62 = bitcast %struct.b2Vec2* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %61, i8* %62, i32 8, i32 4, i1 false)
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA10, %struct.b2Transform* %xfA, %struct.b2Vec2* %localPointA9)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %pointA10, %struct.b2Vec2* %pointB7)
  %63 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %11, %struct.b2Vec2* %normal6)
  store float %63, float* %separation11, align 4
  %64 = load float* %separation11, align 4
  store float %64, float* %1
  br label %66

; <label>:65                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 242, i8* getelementptr inbounds ([68 x i8]* @__PRETTY_FUNCTION__._ZNK20b2SeparationFunction8EvaluateEiif, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:66                                      ; preds = %52, %39, %19
  %67 = load float* %1
  ret float %67
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

define linkonce_odr i32 @_ZNK15b2DistanceProxy10GetSupportERK6b2Vec2(%struct.b2DistanceProxy* %this, %struct.b2Vec2* %d) nounwind inlinehint align 2 {
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

define linkonce_odr void @_ZN20b2SeparationFunctionC2Ev(%struct.b2SeparationFunction* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2SeparationFunction*, align 4
  store %struct.b2SeparationFunction* %this, %struct.b2SeparationFunction** %1, align 4
  %2 = load %struct.b2SeparationFunction** %1
  %3 = getelementptr inbounds %struct.b2SeparationFunction* %2, i32 0, i32 2
  call void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %3)
  %4 = getelementptr inbounds %struct.b2SeparationFunction* %2, i32 0, i32 3
  call void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %4)
  %5 = getelementptr inbounds %struct.b2SeparationFunction* %2, i32 0, i32 5
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  %6 = getelementptr inbounds %struct.b2SeparationFunction* %2, i32 0, i32 6
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %6)
  ret void
}

define linkonce_odr void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  call void @_ZN7b2SweepC2Ev(%struct.b2Sweep* %2)
  ret void
}

define linkonce_odr void @_ZN7b2SweepC2Ev(%struct.b2Sweep* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  %3 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  %5 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  ret void
}

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

declare float @floorf(float) nounwind readnone
