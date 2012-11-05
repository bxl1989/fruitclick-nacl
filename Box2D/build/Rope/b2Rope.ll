; ModuleID = 'Rope/b2Rope.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Rope = type { i32, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Vec2*, float*, float*, float*, %struct.b2Vec2, float, float, float }
%struct.b2Vec2 = type { float, float }
%struct.b2RopeDef = type { %struct.b2Vec2*, i32, float*, %struct.b2Vec2, float, float, float }
%class.b2Draw = type { i32 (...)**, i32 }
%struct.b2Color = type { float, float, float }

@.str = private unnamed_addr constant [16 x i8] c"def->count >= 3\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"Rope/b2Rope.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Rope10InitializeEPK9b2RopeDef = private unnamed_addr constant [43 x i8] c"void b2Rope::Initialize(const b2RopeDef *)\00", align 1

@_ZN6b2RopeC1Ev = alias void (%class.b2Rope*)* @_ZN6b2RopeC2Ev
@_ZN6b2RopeD1Ev = alias void (%class.b2Rope*)* @_ZN6b2RopeD2Ev

define void @_ZN6b2RopeC2Ev(%class.b2Rope* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Rope*, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  %2 = load %class.b2Rope** %1
  %3 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 7
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 1
  store %struct.b2Vec2* null, %struct.b2Vec2** %5, align 4
  %6 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 2
  store %struct.b2Vec2* null, %struct.b2Vec2** %6, align 4
  %7 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 3
  store %struct.b2Vec2* null, %struct.b2Vec2** %7, align 4
  %8 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 4
  store float* null, float** %8, align 4
  %9 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 5
  store float* null, float** %9, align 4
  %10 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 6
  store float* null, float** %10, align 4
  %11 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 7
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %11)
  %12 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 9
  store float 1.000000e+00, float* %12, align 4
  %13 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 10
  store float 0x3FB99999A0000000, float* %13, align 4
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

define void @_ZN6b2RopeD2Ev(%class.b2Rope* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Rope*, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  %2 = load %class.b2Rope** %1
  %3 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 1
  %4 = load %struct.b2Vec2** %3, align 4
  %5 = bitcast %struct.b2Vec2* %4 to i8*
  call void @_Z6b2FreePv(i8* %5)
  %6 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 2
  %7 = load %struct.b2Vec2** %6, align 4
  %8 = bitcast %struct.b2Vec2* %7 to i8*
  call void @_Z6b2FreePv(i8* %8)
  %9 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 3
  %10 = load %struct.b2Vec2** %9, align 4
  %11 = bitcast %struct.b2Vec2* %10 to i8*
  call void @_Z6b2FreePv(i8* %11)
  %12 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 4
  %13 = load float** %12, align 4
  %14 = bitcast float* %13 to i8*
  call void @_Z6b2FreePv(i8* %14)
  %15 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 5
  %16 = load float** %15, align 4
  %17 = bitcast float* %16 to i8*
  call void @_Z6b2FreePv(i8* %17)
  %18 = getelementptr inbounds %class.b2Rope* %2, i32 0, i32 6
  %19 = load float** %18, align 4
  %20 = bitcast float* %19 to i8*
  call void @_Z6b2FreePv(i8* %20)
  ret void
}

declare void @_Z6b2FreePv(i8*)

define void @_ZN6b2Rope10InitializeEPK9b2RopeDef(%class.b2Rope* %this, %struct.b2RopeDef* %def) align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %2 = alloca %struct.b2RopeDef*, align 4
  %i = alloca i32, align 4
  %m = alloca float, align 4
  %count2 = alloca i32, align 4
  %count3 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %i2 = alloca i32, align 4
  %p13 = alloca %struct.b2Vec2, align 4
  %p24 = alloca %struct.b2Vec2, align 4
  %p3 = alloca %struct.b2Vec2, align 4
  %d1 = alloca %struct.b2Vec2, align 4
  %d2 = alloca %struct.b2Vec2, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  store %struct.b2RopeDef* %def, %struct.b2RopeDef** %2, align 4
  %3 = load %class.b2Rope** %1
  %4 = load %struct.b2RopeDef** %2, align 4
  %5 = getelementptr inbounds %struct.b2RopeDef* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp sge i32 %6, 3
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN6b2Rope10InitializeEPK9b2RopeDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = load %struct.b2RopeDef** %2, align 4
  %13 = getelementptr inbounds %struct.b2RopeDef* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %17 = load i32* %16, align 4
  %18 = mul i32 %17, 8
  %19 = call i8* @_Z7b2Alloci(i32 %18)
  %20 = bitcast i8* %19 to %struct.b2Vec2*
  %21 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  store %struct.b2Vec2* %20, %struct.b2Vec2** %21, align 4
  %22 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %23 = load i32* %22, align 4
  %24 = mul i32 %23, 8
  %25 = call i8* @_Z7b2Alloci(i32 %24)
  %26 = bitcast i8* %25 to %struct.b2Vec2*
  %27 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 2
  store %struct.b2Vec2* %26, %struct.b2Vec2** %27, align 4
  %28 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %29 = load i32* %28, align 4
  %30 = mul i32 %29, 8
  %31 = call i8* @_Z7b2Alloci(i32 %30)
  %32 = bitcast i8* %31 to %struct.b2Vec2*
  %33 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 3
  store %struct.b2Vec2* %32, %struct.b2Vec2** %33, align 4
  %34 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %35 = load i32* %34, align 4
  %36 = mul i32 %35, 4
  %37 = call i8* @_Z7b2Alloci(i32 %36)
  %38 = bitcast i8* %37 to float*
  %39 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 4
  store float* %38, float** %39, align 4
  store i32 0, i32* %i, align 4
  br label %40

; <label>:40                                      ; preds = %93, %11
  %41 = load i32* %i, align 4
  %42 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %43 = load i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %96

; <label>:45                                      ; preds = %40
  %46 = load i32* %i, align 4
  %47 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %48 = load %struct.b2Vec2** %47, align 4
  %49 = getelementptr inbounds %struct.b2Vec2* %48, i32 %46
  %50 = load i32* %i, align 4
  %51 = load %struct.b2RopeDef** %2, align 4
  %52 = getelementptr inbounds %struct.b2RopeDef* %51, i32 0, i32 0
  %53 = load %struct.b2Vec2** %52, align 4
  %54 = getelementptr inbounds %struct.b2Vec2* %53, i32 %50
  %55 = bitcast %struct.b2Vec2* %49 to i8*
  %56 = bitcast %struct.b2Vec2* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 8, i32 4, i1 false)
  %57 = load i32* %i, align 4
  %58 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 2
  %59 = load %struct.b2Vec2** %58, align 4
  %60 = getelementptr inbounds %struct.b2Vec2* %59, i32 %57
  %61 = load i32* %i, align 4
  %62 = load %struct.b2RopeDef** %2, align 4
  %63 = getelementptr inbounds %struct.b2RopeDef* %62, i32 0, i32 0
  %64 = load %struct.b2Vec2** %63, align 4
  %65 = getelementptr inbounds %struct.b2Vec2* %64, i32 %61
  %66 = bitcast %struct.b2Vec2* %60 to i8*
  %67 = bitcast %struct.b2Vec2* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 8, i32 4, i1 false)
  %68 = load i32* %i, align 4
  %69 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 3
  %70 = load %struct.b2Vec2** %69, align 4
  %71 = getelementptr inbounds %struct.b2Vec2* %70, i32 %68
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %71)
  %72 = load i32* %i, align 4
  %73 = load %struct.b2RopeDef** %2, align 4
  %74 = getelementptr inbounds %struct.b2RopeDef* %73, i32 0, i32 2
  %75 = load float** %74, align 4
  %76 = getelementptr inbounds float* %75, i32 %72
  %77 = load float* %76
  store float %77, float* %m, align 4
  %78 = load float* %m, align 4
  %79 = fcmp ogt float %78, 0.000000e+00
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %45
  %81 = load float* %m, align 4
  %82 = fdiv float 1.000000e+00, %81
  %83 = load i32* %i, align 4
  %84 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 4
  %85 = load float** %84, align 4
  %86 = getelementptr inbounds float* %85, i32 %83
  store float %82, float* %86
  br label %92

; <label>:87                                      ; preds = %45
  %88 = load i32* %i, align 4
  %89 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 4
  %90 = load float** %89, align 4
  %91 = getelementptr inbounds float* %90, i32 %88
  store float 0.000000e+00, float* %91
  br label %92

; <label>:92                                      ; preds = %87, %80
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %i, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %i, align 4
  br label %40

; <label>:96                                      ; preds = %40
  %97 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %98 = load i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %count2, align 4
  %100 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %101 = load i32* %100, align 4
  %102 = sub nsw i32 %101, 2
  store i32 %102, i32* %count3, align 4
  %103 = load i32* %count2, align 4
  %104 = mul i32 %103, 4
  %105 = call i8* @_Z7b2Alloci(i32 %104)
  %106 = bitcast i8* %105 to float*
  %107 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 5
  store float* %106, float** %107, align 4
  %108 = load i32* %count3, align 4
  %109 = mul i32 %108, 4
  %110 = call i8* @_Z7b2Alloci(i32 %109)
  %111 = bitcast i8* %110 to float*
  %112 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 6
  store float* %111, float** %112, align 4
  store i32 0, i32* %i1, align 4
  br label %113

; <label>:113                                     ; preds = %136, %96
  %114 = load i32* %i1, align 4
  %115 = load i32* %count2, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %139

; <label>:117                                     ; preds = %113
  %118 = load i32* %i1, align 4
  %119 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %120 = load %struct.b2Vec2** %119, align 4
  %121 = getelementptr inbounds %struct.b2Vec2* %120, i32 %118
  %122 = bitcast %struct.b2Vec2* %p1 to i8*
  %123 = bitcast %struct.b2Vec2* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 8, i32 4, i1 false)
  %124 = load i32* %i1, align 4
  %125 = add nsw i32 %124, 1
  %126 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %127 = load %struct.b2Vec2** %126, align 4
  %128 = getelementptr inbounds %struct.b2Vec2* %127, i32 %125
  %129 = bitcast %struct.b2Vec2* %p2 to i8*
  %130 = bitcast %struct.b2Vec2* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %129, i8* %130, i32 8, i32 4, i1 false)
  %131 = call float @_Z10b2DistanceRK6b2Vec2S1_(%struct.b2Vec2* %p1, %struct.b2Vec2* %p2)
  %132 = load i32* %i1, align 4
  %133 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 5
  %134 = load float** %133, align 4
  %135 = getelementptr inbounds float* %134, i32 %132
  store float %131, float* %135
  br label %136

; <label>:136                                     ; preds = %117
  %137 = load i32* %i1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %i1, align 4
  br label %113

; <label>:139                                     ; preds = %113
  store i32 0, i32* %i2, align 4
  br label %140

; <label>:140                                     ; preds = %174, %139
  %141 = load i32* %i2, align 4
  %142 = load i32* %count3, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %177

; <label>:144                                     ; preds = %140
  %145 = load i32* %i2, align 4
  %146 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %147 = load %struct.b2Vec2** %146, align 4
  %148 = getelementptr inbounds %struct.b2Vec2* %147, i32 %145
  %149 = bitcast %struct.b2Vec2* %p13 to i8*
  %150 = bitcast %struct.b2Vec2* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %149, i8* %150, i32 8, i32 4, i1 false)
  %151 = load i32* %i2, align 4
  %152 = add nsw i32 %151, 1
  %153 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %154 = load %struct.b2Vec2** %153, align 4
  %155 = getelementptr inbounds %struct.b2Vec2* %154, i32 %152
  %156 = bitcast %struct.b2Vec2* %p24 to i8*
  %157 = bitcast %struct.b2Vec2* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %156, i8* %157, i32 8, i32 4, i1 false)
  %158 = load i32* %i2, align 4
  %159 = add nsw i32 %158, 2
  %160 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %161 = load %struct.b2Vec2** %160, align 4
  %162 = getelementptr inbounds %struct.b2Vec2* %161, i32 %159
  %163 = bitcast %struct.b2Vec2* %p3 to i8*
  %164 = bitcast %struct.b2Vec2* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %163, i8* %164, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d1, %struct.b2Vec2* %p24, %struct.b2Vec2* %p13)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d2, %struct.b2Vec2* %p3, %struct.b2Vec2* %p24)
  %165 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %d1, %struct.b2Vec2* %d2)
  store float %165, float* %a, align 4
  %166 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d1, %struct.b2Vec2* %d2)
  store float %166, float* %b, align 4
  %167 = load float* %a, align 4
  %168 = load float* %b, align 4
  %169 = call float @_ZSt5atan2ff(float %167, float %168)
  %170 = load i32* %i2, align 4
  %171 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 6
  %172 = load float** %171, align 4
  %173 = getelementptr inbounds float* %172, i32 %170
  store float %169, float* %173
  br label %174

; <label>:174                                     ; preds = %144
  %175 = load i32* %i2, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %i2, align 4
  br label %140

; <label>:177                                     ; preds = %140
  %178 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 7
  %179 = load %struct.b2RopeDef** %2, align 4
  %180 = getelementptr inbounds %struct.b2RopeDef* %179, i32 0, i32 3
  %181 = bitcast %struct.b2Vec2* %178 to i8*
  %182 = bitcast %struct.b2Vec2* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %181, i8* %182, i32 8, i32 4, i1 false)
  %183 = load %struct.b2RopeDef** %2, align 4
  %184 = getelementptr inbounds %struct.b2RopeDef* %183, i32 0, i32 4
  %185 = load float* %184, align 4
  %186 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 8
  store float %185, float* %186, align 4
  %187 = load %struct.b2RopeDef** %2, align 4
  %188 = getelementptr inbounds %struct.b2RopeDef* %187, i32 0, i32 5
  %189 = load float* %188, align 4
  %190 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 9
  store float %189, float* %190, align 4
  %191 = load %struct.b2RopeDef** %2, align 4
  %192 = getelementptr inbounds %struct.b2RopeDef* %191, i32 0, i32 6
  %193 = load float* %192, align 4
  %194 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 10
  store float %193, float* %194, align 4
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i8* @_Z7b2Alloci(i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

define linkonce_odr float @_ZSt5atan2ff(float %__y, float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %__y, float* %1, align 4
  store float %__x, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = load float* %2, align 4
  %5 = call float @atan2f(float %3, float %4) nounwind readnone
  ret float %5
}

define void @_ZN6b2Rope4StepEfi(%class.b2Rope* %this, float %h, i32 %iterations) align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %d = alloca float, align 4
  %i = alloca i32, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %i1 = alloca i32, align 4
  %inv_h = alloca float, align 4
  %i2 = alloca i32, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  store float %h, float* %2, align 4
  store i32 %iterations, i32* %3, align 4
  %8 = load %class.b2Rope** %1
  %9 = load float* %2, align 4
  %10 = fpext float %9 to double
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %103

; <label>:13                                      ; preds = %0
  %14 = load float* %2, align 4
  %15 = fsub float -0.000000e+00, %14
  %16 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 8
  %17 = load float* %16, align 4
  %18 = fmul float %15, %17
  %19 = call float @expf(float %18) nounwind
  store float %19, float* %d, align 4
  store i32 0, i32* %i, align 4
  br label %20

; <label>:20                                      ; preds = %64, %13
  %21 = load i32* %i, align 4
  %22 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 0
  %23 = load i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %67

; <label>:25                                      ; preds = %20
  %26 = load i32* %i, align 4
  %27 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 2
  %28 = load %struct.b2Vec2** %27, align 4
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 %26
  %30 = load i32* %i, align 4
  %31 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 1
  %32 = load %struct.b2Vec2** %31, align 4
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 %30
  %34 = bitcast %struct.b2Vec2* %29 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = load i32* %i, align 4
  %37 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 4
  %38 = load float** %37, align 4
  %39 = getelementptr inbounds float* %38, i32 %36
  %40 = load float* %39
  %41 = fcmp ogt float %40, 0.000000e+00
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %25
  %43 = load i32* %i, align 4
  %44 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 3
  %45 = load %struct.b2Vec2** %44, align 4
  %46 = getelementptr inbounds %struct.b2Vec2* %45, i32 %43
  %47 = load float* %2, align 4
  %48 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 7
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %47, %struct.b2Vec2* %48)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %46, %struct.b2Vec2* %4)
  br label %49

; <label>:49                                      ; preds = %42, %25
  %50 = load i32* %i, align 4
  %51 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 3
  %52 = load %struct.b2Vec2** %51, align 4
  %53 = getelementptr inbounds %struct.b2Vec2* %52, i32 %50
  %54 = load float* %d, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %53, float %54)
  %55 = load i32* %i, align 4
  %56 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 1
  %57 = load %struct.b2Vec2** %56, align 4
  %58 = getelementptr inbounds %struct.b2Vec2* %57, i32 %55
  %59 = load float* %2, align 4
  %60 = load i32* %i, align 4
  %61 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 3
  %62 = load %struct.b2Vec2** %61, align 4
  %63 = getelementptr inbounds %struct.b2Vec2* %62, i32 %60
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %59, %struct.b2Vec2* %63)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %58, %struct.b2Vec2* %5)
  br label %64

; <label>:64                                      ; preds = %49
  %65 = load i32* %i, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4
  br label %20

; <label>:67                                      ; preds = %20
  store i32 0, i32* %i1, align 4
  br label %68

; <label>:68                                      ; preds = %73, %67
  %69 = load i32* %i1, align 4
  %70 = load i32* %3, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %68
  call void @_ZN6b2Rope7SolveC2Ev(%class.b2Rope* %8)
  call void @_ZN6b2Rope7SolveC3Ev(%class.b2Rope* %8)
  call void @_ZN6b2Rope7SolveC2Ev(%class.b2Rope* %8)
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32* %i1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i1, align 4
  br label %68

; <label>:76                                      ; preds = %68
  %77 = load float* %2, align 4
  %78 = fdiv float 1.000000e+00, %77
  store float %78, float* %inv_h, align 4
  store i32 0, i32* %i2, align 4
  br label %79

; <label>:79                                      ; preds = %100, %76
  %80 = load i32* %i2, align 4
  %81 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 0
  %82 = load i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %103

; <label>:84                                      ; preds = %79
  %85 = load i32* %i2, align 4
  %86 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 3
  %87 = load %struct.b2Vec2** %86, align 4
  %88 = getelementptr inbounds %struct.b2Vec2* %87, i32 %85
  %89 = load float* %inv_h, align 4
  %90 = load i32* %i2, align 4
  %91 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 1
  %92 = load %struct.b2Vec2** %91, align 4
  %93 = getelementptr inbounds %struct.b2Vec2* %92, i32 %90
  %94 = load i32* %i2, align 4
  %95 = getelementptr inbounds %class.b2Rope* %8, i32 0, i32 2
  %96 = load %struct.b2Vec2** %95, align 4
  %97 = getelementptr inbounds %struct.b2Vec2* %96, i32 %94
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %93, %struct.b2Vec2* %97)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %89, %struct.b2Vec2* %7)
  %98 = bitcast %struct.b2Vec2* %88 to i8*
  %99 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %99, i32 8, i32 4, i1 false)
  br label %100

; <label>:100                                     ; preds = %84
  %101 = load i32* %i2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %i2, align 4
  br label %79

; <label>:103                                     ; preds = %12, %79
  ret void
}

declare float @expf(float) nounwind

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

define void @_ZN6b2Rope7SolveC2Ev(%class.b2Rope* %this) align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %count2 = alloca i32, align 4
  %i = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %L = alloca float, align 4
  %im1 = alloca float, align 4
  %im2 = alloca float, align 4
  %s1 = alloca float, align 4
  %s2 = alloca float, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  %4 = load %class.b2Rope** %1
  %5 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %count2, align 4
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %91, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %count2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %94

; <label>:12                                      ; preds = %8
  %13 = load i32* %i, align 4
  %14 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 1
  %15 = load %struct.b2Vec2** %14, align 4
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 %13
  %17 = bitcast %struct.b2Vec2* %p1 to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 1
  %22 = load %struct.b2Vec2** %21, align 4
  %23 = getelementptr inbounds %struct.b2Vec2* %22, i32 %20
  %24 = bitcast %struct.b2Vec2* %p2 to i8*
  %25 = bitcast %struct.b2Vec2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  %26 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %d)
  store float %26, float* %L, align 4
  %27 = load i32* %i, align 4
  %28 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 4
  %29 = load float** %28, align 4
  %30 = getelementptr inbounds float* %29, i32 %27
  %31 = load float* %30
  store float %31, float* %im1, align 4
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 4
  %35 = load float** %34, align 4
  %36 = getelementptr inbounds float* %35, i32 %33
  %37 = load float* %36
  store float %37, float* %im2, align 4
  %38 = load float* %im1, align 4
  %39 = load float* %im2, align 4
  %40 = fadd float %38, %39
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %12
  br label %91

; <label>:43                                      ; preds = %12
  %44 = load float* %im1, align 4
  %45 = load float* %im1, align 4
  %46 = load float* %im2, align 4
  %47 = fadd float %45, %46
  %48 = fdiv float %44, %47
  store float %48, float* %s1, align 4
  %49 = load float* %im2, align 4
  %50 = load float* %im1, align 4
  %51 = load float* %im2, align 4
  %52 = fadd float %50, %51
  %53 = fdiv float %49, %52
  store float %53, float* %s2, align 4
  %54 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 9
  %55 = load float* %54, align 4
  %56 = load float* %s1, align 4
  %57 = fmul float %55, %56
  %58 = load i32* %i, align 4
  %59 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 5
  %60 = load float** %59, align 4
  %61 = getelementptr inbounds float* %60, i32 %58
  %62 = load float* %61
  %63 = load float* %L, align 4
  %64 = fsub float %62, %63
  %65 = fmul float %57, %64
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %2, float %65, %struct.b2Vec2* %d)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %p1, %struct.b2Vec2* %2)
  %66 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 9
  %67 = load float* %66, align 4
  %68 = load float* %s2, align 4
  %69 = fmul float %67, %68
  %70 = load i32* %i, align 4
  %71 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 5
  %72 = load float** %71, align 4
  %73 = getelementptr inbounds float* %72, i32 %70
  %74 = load float* %73
  %75 = load float* %L, align 4
  %76 = fsub float %74, %75
  %77 = fmul float %69, %76
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %3, float %77, %struct.b2Vec2* %d)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %p2, %struct.b2Vec2* %3)
  %78 = load i32* %i, align 4
  %79 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 1
  %80 = load %struct.b2Vec2** %79, align 4
  %81 = getelementptr inbounds %struct.b2Vec2* %80, i32 %78
  %82 = bitcast %struct.b2Vec2* %81 to i8*
  %83 = bitcast %struct.b2Vec2* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 8, i32 4, i1 false)
  %84 = load i32* %i, align 4
  %85 = add nsw i32 %84, 1
  %86 = getelementptr inbounds %class.b2Rope* %4, i32 0, i32 1
  %87 = load %struct.b2Vec2** %86, align 4
  %88 = getelementptr inbounds %struct.b2Vec2* %87, i32 %85
  %89 = bitcast %struct.b2Vec2* %88 to i8*
  %90 = bitcast %struct.b2Vec2* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 8, i32 4, i1 false)
  br label %91

; <label>:91                                      ; preds = %43, %42
  %92 = load i32* %i, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i, align 4
  br label %8

; <label>:94                                      ; preds = %8
  ret void
}

define void @_ZN6b2Rope7SolveC3Ev(%class.b2Rope* %this) align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %count3 = alloca i32, align 4
  %i = alloca i32, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %p3 = alloca %struct.b2Vec2, align 4
  %m1 = alloca float, align 4
  %m2 = alloca float, align 4
  %m3 = alloca float, align 4
  %d1 = alloca %struct.b2Vec2, align 4
  %d2 = alloca %struct.b2Vec2, align 4
  %L1sqr = alloca float, align 4
  %L2sqr = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %angle = alloca float, align 4
  %Jd1 = alloca %struct.b2Vec2, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %Jd2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %J1 = alloca %struct.b2Vec2, align 4
  %J2 = alloca %struct.b2Vec2, align 4
  %J3 = alloca %struct.b2Vec2, align 4
  %mass = alloca float, align 4
  %C = alloca float, align 4
  %impulse = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  %7 = load %class.b2Rope** %1
  %8 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 0
  %9 = load i32* %8, align 4
  %10 = sub nsw i32 %9, 2
  store i32 %10, i32* %count3, align 4
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %160, %0
  %12 = load i32* %i, align 4
  %13 = load i32* %count3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %163

; <label>:15                                      ; preds = %11
  %16 = load i32* %i, align 4
  %17 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %18 = load %struct.b2Vec2** %17, align 4
  %19 = getelementptr inbounds %struct.b2Vec2* %18, i32 %16
  %20 = bitcast %struct.b2Vec2* %p1 to i8*
  %21 = bitcast %struct.b2Vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  %24 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %25 = load %struct.b2Vec2** %24, align 4
  %26 = getelementptr inbounds %struct.b2Vec2* %25, i32 %23
  %27 = bitcast %struct.b2Vec2* %p2 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 2
  %31 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %32 = load %struct.b2Vec2** %31, align 4
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 %30
  %34 = bitcast %struct.b2Vec2* %p3 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = load i32* %i, align 4
  %37 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 4
  %38 = load float** %37, align 4
  %39 = getelementptr inbounds float* %38, i32 %36
  %40 = load float* %39
  store float %40, float* %m1, align 4
  %41 = load i32* %i, align 4
  %42 = add nsw i32 %41, 1
  %43 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 4
  %44 = load float** %43, align 4
  %45 = getelementptr inbounds float* %44, i32 %42
  %46 = load float* %45
  store float %46, float* %m2, align 4
  %47 = load i32* %i, align 4
  %48 = add nsw i32 %47, 2
  %49 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 4
  %50 = load float** %49, align 4
  %51 = getelementptr inbounds float* %50, i32 %48
  %52 = load float* %51
  store float %52, float* %m3, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d1, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d2, %struct.b2Vec2* %p3, %struct.b2Vec2* %p2)
  %53 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %d1)
  store float %53, float* %L1sqr, align 4
  %54 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %d2)
  store float %54, float* %L2sqr, align 4
  %55 = load float* %L1sqr, align 4
  %56 = load float* %L2sqr, align 4
  %57 = fmul float %55, %56
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %15
  br label %160

; <label>:60                                      ; preds = %15
  %61 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %d1, %struct.b2Vec2* %d2)
  store float %61, float* %a, align 4
  %62 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d1, %struct.b2Vec2* %d2)
  store float %62, float* %b, align 4
  %63 = load float* %a, align 4
  %64 = load float* %b, align 4
  %65 = call float @_ZSt5atan2ff(float %63, float %64)
  store float %65, float* %angle, align 4
  %66 = load float* %L1sqr, align 4
  %67 = fdiv float -1.000000e+00, %66
  call void @_ZNK6b2Vec24SkewEv(%struct.b2Vec2* sret %2, %struct.b2Vec2* %d1)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %Jd1, float %67, %struct.b2Vec2* %2)
  %68 = load float* %L2sqr, align 4
  %69 = fdiv float 1.000000e+00, %68
  call void @_ZNK6b2Vec24SkewEv(%struct.b2Vec2* sret %3, %struct.b2Vec2* %d2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %Jd2, float %69, %struct.b2Vec2* %3)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %J1, %struct.b2Vec2* %Jd1)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %J2, %struct.b2Vec2* %Jd1, %struct.b2Vec2* %Jd2)
  %70 = bitcast %struct.b2Vec2* %J3 to i8*
  %71 = bitcast %struct.b2Vec2* %Jd2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %70, i8* %71, i32 8, i32 4, i1 false)
  %72 = load float* %m1, align 4
  %73 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %J1, %struct.b2Vec2* %J1)
  %74 = fmul float %72, %73
  %75 = load float* %m2, align 4
  %76 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %J2, %struct.b2Vec2* %J2)
  %77 = fmul float %75, %76
  %78 = fadd float %74, %77
  %79 = load float* %m3, align 4
  %80 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %J3, %struct.b2Vec2* %J3)
  %81 = fmul float %79, %80
  %82 = fadd float %78, %81
  store float %82, float* %mass, align 4
  %83 = load float* %mass, align 4
  %84 = fcmp oeq float %83, 0.000000e+00
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %60
  br label %160

; <label>:86                                      ; preds = %60
  %87 = load float* %mass, align 4
  %88 = fdiv float 1.000000e+00, %87
  store float %88, float* %mass, align 4
  %89 = load float* %angle, align 4
  %90 = load i32* %i, align 4
  %91 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 6
  %92 = load float** %91, align 4
  %93 = getelementptr inbounds float* %92, i32 %90
  %94 = load float* %93
  %95 = fsub float %89, %94
  store float %95, float* %C, align 4
  br label %96

; <label>:96                                      ; preds = %99, %86
  %97 = load float* %C, align 4
  %98 = fcmp ogt float %97, 0x400921FB60000000
  br i1 %98, label %99, label %109

; <label>:99                                      ; preds = %96
  %100 = load float* %angle, align 4
  %101 = fsub float %100, 0x401921FB60000000
  store float %101, float* %angle, align 4
  %102 = load float* %angle, align 4
  %103 = load i32* %i, align 4
  %104 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 6
  %105 = load float** %104, align 4
  %106 = getelementptr inbounds float* %105, i32 %103
  %107 = load float* %106
  %108 = fsub float %102, %107
  store float %108, float* %C, align 4
  br label %96

; <label>:109                                     ; preds = %96
  br label %110

; <label>:110                                     ; preds = %113, %109
  %111 = load float* %C, align 4
  %112 = fcmp olt float %111, 0xC00921FB60000000
  br i1 %112, label %113, label %123

; <label>:113                                     ; preds = %110
  %114 = load float* %angle, align 4
  %115 = fadd float %114, 0x401921FB60000000
  store float %115, float* %angle, align 4
  %116 = load float* %angle, align 4
  %117 = load i32* %i, align 4
  %118 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 6
  %119 = load float** %118, align 4
  %120 = getelementptr inbounds float* %119, i32 %117
  %121 = load float* %120
  %122 = fsub float %116, %121
  store float %122, float* %C, align 4
  br label %110

; <label>:123                                     ; preds = %110
  %124 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 10
  %125 = load float* %124, align 4
  %126 = fsub float -0.000000e+00, %125
  %127 = load float* %mass, align 4
  %128 = fmul float %126, %127
  %129 = load float* %C, align 4
  %130 = fmul float %128, %129
  store float %130, float* %impulse, align 4
  %131 = load float* %m1, align 4
  %132 = load float* %impulse, align 4
  %133 = fmul float %131, %132
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %133, %struct.b2Vec2* %J1)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %p1, %struct.b2Vec2* %4)
  %134 = load float* %m2, align 4
  %135 = load float* %impulse, align 4
  %136 = fmul float %134, %135
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %136, %struct.b2Vec2* %J2)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %p2, %struct.b2Vec2* %5)
  %137 = load float* %m3, align 4
  %138 = load float* %impulse, align 4
  %139 = fmul float %137, %138
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %139, %struct.b2Vec2* %J3)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %p3, %struct.b2Vec2* %6)
  %140 = load i32* %i, align 4
  %141 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %142 = load %struct.b2Vec2** %141, align 4
  %143 = getelementptr inbounds %struct.b2Vec2* %142, i32 %140
  %144 = bitcast %struct.b2Vec2* %143 to i8*
  %145 = bitcast %struct.b2Vec2* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %144, i8* %145, i32 8, i32 4, i1 false)
  %146 = load i32* %i, align 4
  %147 = add nsw i32 %146, 1
  %148 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %149 = load %struct.b2Vec2** %148, align 4
  %150 = getelementptr inbounds %struct.b2Vec2* %149, i32 %147
  %151 = bitcast %struct.b2Vec2* %150 to i8*
  %152 = bitcast %struct.b2Vec2* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %151, i8* %152, i32 8, i32 4, i1 false)
  %153 = load i32* %i, align 4
  %154 = add nsw i32 %153, 2
  %155 = getelementptr inbounds %class.b2Rope* %7, i32 0, i32 1
  %156 = load %struct.b2Vec2** %155, align 4
  %157 = getelementptr inbounds %struct.b2Vec2* %156, i32 %154
  %158 = bitcast %struct.b2Vec2* %157 to i8*
  %159 = bitcast %struct.b2Vec2* %p3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 8, i32 4, i1 false)
  br label %160

; <label>:160                                     ; preds = %123, %85, %59
  %161 = load i32* %i, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %i, align 4
  br label %11

; <label>:163                                     ; preds = %11
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

define void @_ZN6b2Rope8SetAngleEf(%class.b2Rope* %this, float %angle) nounwind align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %2 = alloca float, align 4
  %count3 = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  store float %angle, float* %2, align 4
  %3 = load %class.b2Rope** %1
  %4 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = sub nsw i32 %5, 2
  store i32 %6, i32* %count3, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load i32* %i, align 4
  %9 = load i32* %count3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

; <label>:11                                      ; preds = %7
  %12 = load float* %2, align 4
  %13 = load i32* %i, align 4
  %14 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 6
  %15 = load float** %14, align 4
  %16 = getelementptr inbounds float* %15, i32 %13
  store float %12, float* %16
  br label %17

; <label>:17                                      ; preds = %11
  %18 = load i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %7

; <label>:20                                      ; preds = %7
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

define linkonce_odr void @_ZNK6b2Vec24SkewEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %this) align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %4 = load float* %3, align 4
  %5 = fsub float -0.000000e+00, %4
  %6 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %7 = load float* %6, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %5, float %7)
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

define void @_ZNK6b2Rope4DrawEP6b2Draw(%class.b2Rope* %this, %class.b2Draw* %draw) align 2 {
  %1 = alloca %class.b2Rope*, align 4
  %2 = alloca %class.b2Draw*, align 4
  %c = alloca %struct.b2Color, align 4
  %i = alloca i32, align 4
  store %class.b2Rope* %this, %class.b2Rope** %1, align 4
  store %class.b2Draw* %draw, %class.b2Draw** %2, align 4
  %3 = load %class.b2Rope** %1
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %c, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE6666660000000)
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %25, %0
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %28

; <label>:10                                      ; preds = %4
  %11 = load %class.b2Draw** %2, align 4
  %12 = bitcast %class.b2Draw* %11 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %13 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %12
  %14 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %13, i64 6
  %15 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %14
  %16 = load i32* %i, align 4
  %17 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %18 = load %struct.b2Vec2** %17, align 4
  %19 = getelementptr inbounds %struct.b2Vec2* %18, i32 %16
  %20 = load i32* %i, align 4
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %class.b2Rope* %3, i32 0, i32 1
  %23 = load %struct.b2Vec2** %22, align 4
  %24 = getelementptr inbounds %struct.b2Vec2* %23, i32 %21
  call void %15(%class.b2Draw* %11, %struct.b2Vec2* %19, %struct.b2Vec2* %24, %struct.b2Color* %c)
  br label %25

; <label>:25                                      ; preds = %10
  %26 = load i32* %i, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %4

; <label>:28                                      ; preds = %4
  ret void
}

define linkonce_odr void @_ZN7b2ColorC1Efff(%struct.b2Color* %this, float %r, float %g, float %b) unnamed_addr align 2 {
  %1 = alloca %struct.b2Color*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Color* %this, %struct.b2Color** %1, align 4
  store float %r, float* %2, align 4
  store float %g, float* %3, align 4
  store float %b, float* %4, align 4
  %5 = load %struct.b2Color** %1
  %6 = load float* %2, align 4
  %7 = load float* %3, align 4
  %8 = load float* %4, align 4
  call void @_ZN7b2ColorC2Efff(%struct.b2Color* %5, float %6, float %7, float %8)
  ret void
}

define linkonce_odr void @_ZN7b2ColorC2Efff(%struct.b2Color* %this, float %r, float %g, float %b) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Color*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Color* %this, %struct.b2Color** %1, align 4
  store float %r, float* %2, align 4
  store float %g, float* %3, align 4
  store float %b, float* %4, align 4
  %5 = load %struct.b2Color** %1
  %6 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 0
  %7 = load float* %2, align 4
  store float %7, float* %6, align 4
  %8 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 1
  %9 = load float* %3, align 4
  store float %9, float* %8, align 4
  %10 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 2
  %11 = load float* %4, align 4
  store float %11, float* %10, align 4
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

declare float @atan2f(float, float) nounwind readnone

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}
