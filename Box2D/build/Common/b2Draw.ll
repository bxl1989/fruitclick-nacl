; ModuleID = 'Common/b2Draw.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Draw = type { i32 (...)**, i32 }

@_ZTV6b2Draw = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI6b2Draw to i8*), i8* bitcast (void (%class.b2Draw*)* @_ZN6b2DrawD1Ev to i8*), i8* bitcast (void (%class.b2Draw*)* @_ZN6b2DrawD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS6b2Draw = linkonce_odr constant [8 x i8] c"6b2Draw\00"
@_ZTI6b2Draw = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([8 x i8]* @_ZTS6b2Draw, i32 0, i32 0) }

define void @_ZN6b2DrawC2Ev(%class.b2Draw* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  %2 = load %class.b2Draw** %1
  %3 = bitcast %class.b2Draw* %2 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV6b2Draw, i64 0, i64 2), i8*** %3
  %4 = getelementptr inbounds %class.b2Draw* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  ret void
}

define void @_ZN6b2Draw8SetFlagsEj(%class.b2Draw* %this, i32 %flags) nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  %2 = alloca i32, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  store i32 %flags, i32* %2, align 4
  %3 = load %class.b2Draw** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.b2Draw* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  ret void
}

define i32 @_ZNK6b2Draw8GetFlagsEv(%class.b2Draw* %this) nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  %2 = load %class.b2Draw** %1
  %3 = getelementptr inbounds %class.b2Draw* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

define void @_ZN6b2Draw11AppendFlagsEj(%class.b2Draw* %this, i32 %flags) nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  %2 = alloca i32, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  store i32 %flags, i32* %2, align 4
  %3 = load %class.b2Draw** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.b2Draw* %3, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, i32* %5, align 4
  ret void
}

define void @_ZN6b2Draw10ClearFlagsEj(%class.b2Draw* %this, i32 %flags) nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  %2 = alloca i32, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  store i32 %flags, i32* %2, align 4
  %3 = load %class.b2Draw** %1
  %4 = load i32* %2, align 4
  %5 = xor i32 %4, -1
  %6 = getelementptr inbounds %class.b2Draw* %3, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = and i32 %7, %5
  store i32 %8, i32* %6, align 4
  ret void
}

define linkonce_odr void @_ZN6b2DrawD1Ev(%class.b2Draw* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Draw*, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  %2 = load %class.b2Draw** %1
  call void @_ZN6b2DrawD2Ev(%class.b2Draw* %2)
  ret void
}

define linkonce_odr void @_ZN6b2DrawD0Ev(%class.b2Draw* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Draw*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  %4 = load %class.b2Draw** %1
  invoke void @_ZN6b2DrawD1Ev(%class.b2Draw* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2Draw* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2Draw* %4 to i8*
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

declare i32 @__gxx_personality_v0(...)

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN6b2DrawD2Ev(%class.b2Draw* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Draw*, align 4
  store %class.b2Draw* %this, %class.b2Draw** %1, align 4
  %2 = load %class.b2Draw** %1
  ret void
}
