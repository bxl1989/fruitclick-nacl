; ModuleID = 'Common/b2Math.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Vec2 = type { float, float }
%struct.b2Vec3 = type { float, float, float }
%struct.b2Mat33 = type { %struct.b2Vec3, %struct.b2Vec3, %struct.b2Vec3 }

@b2Vec2_zero = global %struct.b2Vec2 zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() {
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* @b2Vec2_zero, float 0.000000e+00, float 0.000000e+00)
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

define void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Mat33* %this, %struct.b2Vec3* %b) align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  %det = alloca float, align 4
  %3 = alloca %struct.b2Vec3, align 4
  %4 = alloca %struct.b2Vec3, align 4
  %5 = alloca %struct.b2Vec3, align 4
  %6 = alloca %struct.b2Vec3, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  store %struct.b2Vec3* %b, %struct.b2Vec3** %2, align 4
  %7 = load %struct.b2Mat33** %1
  %8 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 2
  call void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* sret %3, %struct.b2Vec3* %9, %struct.b2Vec3* %10)
  %11 = call float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %8, %struct.b2Vec3* %3)
  store float %11, float* %det, align 4
  %12 = load float* %det, align 4
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = load float* %det, align 4
  %16 = fdiv float 1.000000e+00, %15
  store float %16, float* %det, align 4
  br label %17

; <label>:17                                      ; preds = %14, %0
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %agg.result)
  %18 = load float* %det, align 4
  %19 = load %struct.b2Vec3** %2
  %20 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 2
  call void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* sret %4, %struct.b2Vec3* %20, %struct.b2Vec3* %21)
  %22 = call float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %19, %struct.b2Vec3* %4)
  %23 = fmul float %18, %22
  %24 = getelementptr inbounds %struct.b2Vec3* %agg.result, i32 0, i32 0
  store float %23, float* %24, align 4
  %25 = load float* %det, align 4
  %26 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 0
  %27 = load %struct.b2Vec3** %2
  %28 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 2
  call void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* sret %5, %struct.b2Vec3* %27, %struct.b2Vec3* %28)
  %29 = call float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %26, %struct.b2Vec3* %5)
  %30 = fmul float %25, %29
  %31 = getelementptr inbounds %struct.b2Vec3* %agg.result, i32 0, i32 1
  store float %30, float* %31, align 4
  %32 = load float* %det, align 4
  %33 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.b2Mat33* %7, i32 0, i32 1
  %35 = load %struct.b2Vec3** %2
  call void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* sret %6, %struct.b2Vec3* %34, %struct.b2Vec3* %35)
  %36 = call float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %33, %struct.b2Vec3* %6)
  %37 = fmul float %32, %36
  %38 = getelementptr inbounds %struct.b2Vec3* %agg.result, i32 0, i32 2
  store float %37, float* %38, align 4
  ret void
}

define linkonce_odr float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %a, %struct.b2Vec3* %b) nounwind inlinehint {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %a, %struct.b2Vec3** %1, align 4
  store %struct.b2Vec3* %b, %struct.b2Vec3** %2, align 4
  %3 = load %struct.b2Vec3** %1
  %4 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec3** %2
  %7 = getelementptr inbounds %struct.b2Vec3* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Vec3** %1
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec3** %2
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  %18 = load %struct.b2Vec3** %1
  %19 = getelementptr inbounds %struct.b2Vec3* %18, i32 0, i32 2
  %20 = load float* %19, align 4
  %21 = load %struct.b2Vec3** %2
  %22 = getelementptr inbounds %struct.b2Vec3* %21, i32 0, i32 2
  %23 = load float* %22, align 4
  %24 = fmul float %20, %23
  %25 = fadd float %17, %24
  ret float %25
}

define linkonce_odr void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Vec3* %a, %struct.b2Vec3* %b) inlinehint {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %a, %struct.b2Vec3** %1, align 4
  store %struct.b2Vec3* %b, %struct.b2Vec3** %2, align 4
  %3 = load %struct.b2Vec3** %1
  %4 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 1
  %5 = load float* %4, align 4
  %6 = load %struct.b2Vec3** %2
  %7 = getelementptr inbounds %struct.b2Vec3* %6, i32 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.b2Vec3** %1
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 2
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec3** %2
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fsub float %9, %16
  %18 = load %struct.b2Vec3** %1
  %19 = getelementptr inbounds %struct.b2Vec3* %18, i32 0, i32 2
  %20 = load float* %19, align 4
  %21 = load %struct.b2Vec3** %2
  %22 = getelementptr inbounds %struct.b2Vec3* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = fmul float %20, %23
  %25 = load %struct.b2Vec3** %1
  %26 = getelementptr inbounds %struct.b2Vec3* %25, i32 0, i32 0
  %27 = load float* %26, align 4
  %28 = load %struct.b2Vec3** %2
  %29 = getelementptr inbounds %struct.b2Vec3* %28, i32 0, i32 2
  %30 = load float* %29, align 4
  %31 = fmul float %27, %30
  %32 = fsub float %24, %31
  %33 = load %struct.b2Vec3** %1
  %34 = getelementptr inbounds %struct.b2Vec3* %33, i32 0, i32 0
  %35 = load float* %34, align 4
  %36 = load %struct.b2Vec3** %2
  %37 = getelementptr inbounds %struct.b2Vec3* %36, i32 0, i32 1
  %38 = load float* %37, align 4
  %39 = fmul float %35, %38
  %40 = load %struct.b2Vec3** %1
  %41 = getelementptr inbounds %struct.b2Vec3* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  %43 = load %struct.b2Vec3** %2
  %44 = getelementptr inbounds %struct.b2Vec3* %43, i32 0, i32 0
  %45 = load float* %44, align 4
  %46 = fmul float %42, %45
  %47 = fsub float %39, %46
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %agg.result, float %17, float %32, float %47)
  ret void
}

define linkonce_odr void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
  call void @_ZN6b2Vec3C2Ev(%struct.b2Vec3* %2)
  ret void
}

define void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Mat33* %this, %struct.b2Vec2* %b) align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %a11 = alloca float, align 4
  %a12 = alloca float, align 4
  %a21 = alloca float, align 4
  %a22 = alloca float, align 4
  %det = alloca float, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Mat33** %1
  %4 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  store float %6, float* %a11, align 4
  %7 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.b2Vec3* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  store float %9, float* %a12, align 4
  %10 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  store float %12, float* %a21, align 4
  %13 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  store float %15, float* %a22, align 4
  %16 = load float* %a11, align 4
  %17 = load float* %a22, align 4
  %18 = fmul float %16, %17
  %19 = load float* %a12, align 4
  %20 = load float* %a21, align 4
  %21 = fmul float %19, %20
  %22 = fsub float %18, %21
  store float %22, float* %det, align 4
  %23 = load float* %det, align 4
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %0
  %26 = load float* %det, align 4
  %27 = fdiv float 1.000000e+00, %26
  store float %27, float* %det, align 4
  br label %28

; <label>:28                                      ; preds = %25, %0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %agg.result)
  %29 = load float* %det, align 4
  %30 = load float* %a22, align 4
  %31 = load %struct.b2Vec2** %2
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 0, i32 0
  %33 = load float* %32, align 4
  %34 = fmul float %30, %33
  %35 = load float* %a12, align 4
  %36 = load %struct.b2Vec2** %2
  %37 = getelementptr inbounds %struct.b2Vec2* %36, i32 0, i32 1
  %38 = load float* %37, align 4
  %39 = fmul float %35, %38
  %40 = fsub float %34, %39
  %41 = fmul float %29, %40
  %42 = getelementptr inbounds %struct.b2Vec2* %agg.result, i32 0, i32 0
  store float %41, float* %42, align 4
  %43 = load float* %det, align 4
  %44 = load float* %a11, align 4
  %45 = load %struct.b2Vec2** %2
  %46 = getelementptr inbounds %struct.b2Vec2* %45, i32 0, i32 1
  %47 = load float* %46, align 4
  %48 = fmul float %44, %47
  %49 = load float* %a21, align 4
  %50 = load %struct.b2Vec2** %2
  %51 = getelementptr inbounds %struct.b2Vec2* %50, i32 0, i32 0
  %52 = load float* %51, align 4
  %53 = fmul float %49, %52
  %54 = fsub float %48, %53
  %55 = fmul float %43, %54
  %56 = getelementptr inbounds %struct.b2Vec2* %agg.result, i32 0, i32 1
  store float %55, float* %56, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define void @_ZNK7b2Mat3312GetInverse22EPS_(%struct.b2Mat33* %this, %struct.b2Mat33* %M) nounwind align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Mat33*, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %d = alloca float, align 4
  %det = alloca float, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  store %struct.b2Mat33* %M, %struct.b2Mat33** %2, align 4
  %3 = load %struct.b2Mat33** %1
  %4 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  store float %6, float* %a, align 4
  %7 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.b2Vec3* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  store float %9, float* %b, align 4
  %10 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  store float %12, float* %c, align 4
  %13 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  store float %15, float* %d, align 4
  %16 = load float* %a, align 4
  %17 = load float* %d, align 4
  %18 = fmul float %16, %17
  %19 = load float* %b, align 4
  %20 = load float* %c, align 4
  %21 = fmul float %19, %20
  %22 = fsub float %18, %21
  store float %22, float* %det, align 4
  %23 = load float* %det, align 4
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %0
  %26 = load float* %det, align 4
  %27 = fdiv float 1.000000e+00, %26
  store float %27, float* %det, align 4
  br label %28

; <label>:28                                      ; preds = %25, %0
  %29 = load float* %det, align 4
  %30 = load float* %d, align 4
  %31 = fmul float %29, %30
  %32 = load %struct.b2Mat33** %2, align 4
  %33 = getelementptr inbounds %struct.b2Mat33* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.b2Vec3* %33, i32 0, i32 0
  store float %31, float* %34, align 4
  %35 = load float* %det, align 4
  %36 = fsub float -0.000000e+00, %35
  %37 = load float* %b, align 4
  %38 = fmul float %36, %37
  %39 = load %struct.b2Mat33** %2, align 4
  %40 = getelementptr inbounds %struct.b2Mat33* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.b2Vec3* %40, i32 0, i32 0
  store float %38, float* %41, align 4
  %42 = load %struct.b2Mat33** %2, align 4
  %43 = getelementptr inbounds %struct.b2Mat33* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2Vec3* %43, i32 0, i32 2
  store float 0.000000e+00, float* %44, align 4
  %45 = load float* %det, align 4
  %46 = fsub float -0.000000e+00, %45
  %47 = load float* %c, align 4
  %48 = fmul float %46, %47
  %49 = load %struct.b2Mat33** %2, align 4
  %50 = getelementptr inbounds %struct.b2Mat33* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.b2Vec3* %50, i32 0, i32 1
  store float %48, float* %51, align 4
  %52 = load float* %det, align 4
  %53 = load float* %a, align 4
  %54 = fmul float %52, %53
  %55 = load %struct.b2Mat33** %2, align 4
  %56 = getelementptr inbounds %struct.b2Mat33* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.b2Vec3* %56, i32 0, i32 1
  store float %54, float* %57, align 4
  %58 = load %struct.b2Mat33** %2, align 4
  %59 = getelementptr inbounds %struct.b2Mat33* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.b2Vec3* %59, i32 0, i32 2
  store float 0.000000e+00, float* %60, align 4
  %61 = load %struct.b2Mat33** %2, align 4
  %62 = getelementptr inbounds %struct.b2Mat33* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.b2Vec3* %62, i32 0, i32 0
  store float 0.000000e+00, float* %63, align 4
  %64 = load %struct.b2Mat33** %2, align 4
  %65 = getelementptr inbounds %struct.b2Mat33* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.b2Vec3* %65, i32 0, i32 1
  store float 0.000000e+00, float* %66, align 4
  %67 = load %struct.b2Mat33** %2, align 4
  %68 = getelementptr inbounds %struct.b2Mat33* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.b2Vec3* %68, i32 0, i32 2
  store float 0.000000e+00, float* %69, align 4
  ret void
}

define void @_ZNK7b2Mat3315GetSymInverse33EPS_(%struct.b2Mat33* %this, %struct.b2Mat33* %M) align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Mat33*, align 4
  %det = alloca float, align 4
  %3 = alloca %struct.b2Vec3, align 4
  %a11 = alloca float, align 4
  %a12 = alloca float, align 4
  %a13 = alloca float, align 4
  %a22 = alloca float, align 4
  %a23 = alloca float, align 4
  %a33 = alloca float, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  store %struct.b2Mat33* %M, %struct.b2Mat33** %2, align 4
  %4 = load %struct.b2Mat33** %1
  %5 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 2
  call void @_Z7b2CrossRK6b2Vec3S1_(%struct.b2Vec3* sret %3, %struct.b2Vec3* %6, %struct.b2Vec3* %7)
  %8 = call float @_Z5b2DotRK6b2Vec3S1_(%struct.b2Vec3* %5, %struct.b2Vec3* %3)
  store float %8, float* %det, align 4
  %9 = load float* %det, align 4
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = load float* %det, align 4
  %13 = fdiv float 1.000000e+00, %12
  store float %13, float* %det, align 4
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.b2Vec3* %15, i32 0, i32 0
  %17 = load float* %16, align 4
  store float %17, float* %a11, align 4
  %18 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.b2Vec3* %18, i32 0, i32 0
  %20 = load float* %19, align 4
  store float %20, float* %a12, align 4
  %21 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.b2Vec3* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  store float %23, float* %a13, align 4
  %24 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec3* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  store float %26, float* %a22, align 4
  %27 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 2
  %28 = getelementptr inbounds %struct.b2Vec3* %27, i32 0, i32 1
  %29 = load float* %28, align 4
  store float %29, float* %a23, align 4
  %30 = getelementptr inbounds %struct.b2Mat33* %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.b2Vec3* %30, i32 0, i32 2
  %32 = load float* %31, align 4
  store float %32, float* %a33, align 4
  %33 = load float* %det, align 4
  %34 = load float* %a22, align 4
  %35 = load float* %a33, align 4
  %36 = fmul float %34, %35
  %37 = load float* %a23, align 4
  %38 = load float* %a23, align 4
  %39 = fmul float %37, %38
  %40 = fsub float %36, %39
  %41 = fmul float %33, %40
  %42 = load %struct.b2Mat33** %2, align 4
  %43 = getelementptr inbounds %struct.b2Mat33* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2Vec3* %43, i32 0, i32 0
  store float %41, float* %44, align 4
  %45 = load float* %det, align 4
  %46 = load float* %a13, align 4
  %47 = load float* %a23, align 4
  %48 = fmul float %46, %47
  %49 = load float* %a12, align 4
  %50 = load float* %a33, align 4
  %51 = fmul float %49, %50
  %52 = fsub float %48, %51
  %53 = fmul float %45, %52
  %54 = load %struct.b2Mat33** %2, align 4
  %55 = getelementptr inbounds %struct.b2Mat33* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.b2Vec3* %55, i32 0, i32 1
  store float %53, float* %56, align 4
  %57 = load float* %det, align 4
  %58 = load float* %a12, align 4
  %59 = load float* %a23, align 4
  %60 = fmul float %58, %59
  %61 = load float* %a13, align 4
  %62 = load float* %a22, align 4
  %63 = fmul float %61, %62
  %64 = fsub float %60, %63
  %65 = fmul float %57, %64
  %66 = load %struct.b2Mat33** %2, align 4
  %67 = getelementptr inbounds %struct.b2Mat33* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.b2Vec3* %67, i32 0, i32 2
  store float %65, float* %68, align 4
  %69 = load %struct.b2Mat33** %2, align 4
  %70 = getelementptr inbounds %struct.b2Mat33* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.b2Vec3* %70, i32 0, i32 1
  %72 = load float* %71, align 4
  %73 = load %struct.b2Mat33** %2, align 4
  %74 = getelementptr inbounds %struct.b2Mat33* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.b2Vec3* %74, i32 0, i32 0
  store float %72, float* %75, align 4
  %76 = load float* %det, align 4
  %77 = load float* %a11, align 4
  %78 = load float* %a33, align 4
  %79 = fmul float %77, %78
  %80 = load float* %a13, align 4
  %81 = load float* %a13, align 4
  %82 = fmul float %80, %81
  %83 = fsub float %79, %82
  %84 = fmul float %76, %83
  %85 = load %struct.b2Mat33** %2, align 4
  %86 = getelementptr inbounds %struct.b2Mat33* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.b2Vec3* %86, i32 0, i32 1
  store float %84, float* %87, align 4
  %88 = load float* %det, align 4
  %89 = load float* %a13, align 4
  %90 = load float* %a12, align 4
  %91 = fmul float %89, %90
  %92 = load float* %a11, align 4
  %93 = load float* %a23, align 4
  %94 = fmul float %92, %93
  %95 = fsub float %91, %94
  %96 = fmul float %88, %95
  %97 = load %struct.b2Mat33** %2, align 4
  %98 = getelementptr inbounds %struct.b2Mat33* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.b2Vec3* %98, i32 0, i32 2
  store float %96, float* %99, align 4
  %100 = load %struct.b2Mat33** %2, align 4
  %101 = getelementptr inbounds %struct.b2Mat33* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.b2Vec3* %101, i32 0, i32 2
  %103 = load float* %102, align 4
  %104 = load %struct.b2Mat33** %2, align 4
  %105 = getelementptr inbounds %struct.b2Mat33* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.b2Vec3* %105, i32 0, i32 0
  store float %103, float* %106, align 4
  %107 = load %struct.b2Mat33** %2, align 4
  %108 = getelementptr inbounds %struct.b2Mat33* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.b2Vec3* %108, i32 0, i32 2
  %110 = load float* %109, align 4
  %111 = load %struct.b2Mat33** %2, align 4
  %112 = getelementptr inbounds %struct.b2Mat33* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.b2Vec3* %112, i32 0, i32 1
  store float %110, float* %113, align 4
  %114 = load float* %det, align 4
  %115 = load float* %a11, align 4
  %116 = load float* %a22, align 4
  %117 = fmul float %115, %116
  %118 = load float* %a12, align 4
  %119 = load float* %a12, align 4
  %120 = fmul float %118, %119
  %121 = fsub float %117, %120
  %122 = fmul float %114, %121
  %123 = load %struct.b2Mat33** %2, align 4
  %124 = getelementptr inbounds %struct.b2Mat33* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.b2Vec3* %124, i32 0, i32 2
  store float %122, float* %125, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}

define linkonce_odr void @_ZN6b2Vec3C2Ev(%struct.b2Vec3* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
  ret void
}

define linkonce_odr void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %this, float %x, float %y, float %z) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  store float %x, float* %2, align 4
  store float %y, float* %3, align 4
  store float %z, float* %4, align 4
  %5 = load %struct.b2Vec3** %1
  %6 = load float* %2, align 4
  %7 = load float* %3, align 4
  %8 = load float* %4, align 4
  call void @_ZN6b2Vec3C2Efff(%struct.b2Vec3* %5, float %6, float %7, float %8)
  ret void
}

define linkonce_odr void @_ZN6b2Vec3C2Efff(%struct.b2Vec3* %this, float %x, float %y, float %z) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  store float %x, float* %2, align 4
  store float %y, float* %3, align 4
  store float %z, float* %4, align 4
  %5 = load %struct.b2Vec3** %1
  %6 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 0
  %7 = load float* %2, align 4
  store float %7, float* %6, align 4
  %8 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 1
  %9 = load float* %3, align 4
  store float %9, float* %8, align 4
  %10 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 2
  %11 = load float* %4, align 4
  store float %11, float* %10, align 4
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

define internal void @_GLOBAL__I_a() {
  call void @__cxx_global_var_init()
  ret void
}
