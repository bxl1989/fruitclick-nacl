; ModuleID = 'Common/b2Timer.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Timer = type { i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }

@_ZN7b2TimerC1Ev = alias void (%class.b2Timer*)* @_ZN7b2TimerC2Ev

define void @_ZN7b2TimerC2Ev(%class.b2Timer* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Timer*, align 4
  store %class.b2Timer* %this, %class.b2Timer** %1, align 4
  %2 = load %class.b2Timer** %1
  call void @_ZN7b2Timer5ResetEv(%class.b2Timer* %2)
  ret void
}

define void @_ZN7b2Timer5ResetEv(%class.b2Timer* %this) nounwind align 2 {
  %1 = alloca %class.b2Timer*, align 4
  %t = alloca %struct.timeval, align 4
  store %class.b2Timer* %this, %class.b2Timer** %1, align 4
  %2 = load %class.b2Timer** %1
  %3 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) nounwind
  %4 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2Timer* %2, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 0x3F50624DE0000000
  %11 = fptoui float %10 to i32
  %12 = getelementptr inbounds %class.b2Timer* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  ret void
}

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

define float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %this) nounwind align 2 {
  %1 = alloca %class.b2Timer*, align 4
  %t = alloca %struct.timeval, align 4
  store %class.b2Timer* %this, %class.b2Timer** %1, align 4
  %2 = load %class.b2Timer** %1
  %3 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) nounwind
  %4 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2Timer* %2, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = sub i32 %5, %7
  %9 = mul i32 %8, 1000
  %10 = uitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, 0x3F50624DE0000000
  %15 = fadd float %10, %14
  %16 = getelementptr inbounds %class.b2Timer* %2, i32 0, i32 1
  %17 = load i32* %16, align 4
  %18 = uitofp i32 %17 to float
  %19 = fsub float %15, %18
  ret float %19
}
