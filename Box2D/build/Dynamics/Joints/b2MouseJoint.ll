; ModuleID = 'Dynamics/Joints/b2MouseJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2MouseJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, float, %struct.b2Vec2, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Mat22, %struct.b2Vec2 }
%class.b2Joint = type { i32 (...)**, i32, %class.b2Joint*, %class.b2Joint*, %struct.b2JointEdge, %struct.b2JointEdge, %class.b2Body*, %class.b2Body*, i32, i8, i8, i8* }
%struct.b2JointEdge = type { %class.b2Body*, %class.b2Joint*, %struct.b2JointEdge*, %struct.b2JointEdge* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2World = type opaque
%class.b2Fixture = type opaque
%struct.b2ContactEdge = type opaque
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2MouseJointDef = type { %struct.b2JointDef, %struct.b2Vec2, float, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV12b2MouseJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12b2MouseJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2MouseJoint*)* @_ZNK12b2MouseJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2MouseJoint*)* @_ZNK12b2MouseJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2MouseJoint*, float)* @_ZNK12b2MouseJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2MouseJoint*, float)* @_ZNK12b2MouseJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2MouseJoint*)* @_ZN12b2MouseJoint4DumpEv to i8*), i8* bitcast (void (%class.b2MouseJoint*)* @_ZN12b2MouseJointD1Ev to i8*), i8* bitcast (void (%class.b2MouseJoint*)* @_ZN12b2MouseJointD0Ev to i8*), i8* bitcast (void (%class.b2MouseJoint*, %struct.b2SolverData*)* @_ZN12b2MouseJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2MouseJoint*, %struct.b2SolverData*)* @_ZN12b2MouseJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2MouseJoint*, %struct.b2SolverData*)* @_ZN12b2MouseJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [22 x i8] c"def->target.IsValid()\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"Dynamics/Joints/b2MouseJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN12b2MouseJointC2EPK15b2MouseJointDef = private unnamed_addr constant [52 x i8] c"b2MouseJoint::b2MouseJoint(const b2MouseJointDef *)\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"b2IsValid(def->maxForce) && def->maxForce >= 0.0f\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"b2IsValid(def->frequencyHz) && def->frequencyHz >= 0.0f\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"b2IsValid(def->dampingRatio) && def->dampingRatio >= 0.0f\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"d + h * k > 1.19209290e-7F\00", align 1
@__PRETTY_FUNCTION__._ZN12b2MouseJoint23InitVelocityConstraintsERK12b2SolverData = private unnamed_addr constant [73 x i8] c"virtual void b2MouseJoint::InitVelocityConstraints(const b2SolverData &)\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS12b2MouseJoint = constant [15 x i8] c"12b2MouseJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI12b2MouseJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8]* @_ZTS12b2MouseJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }
@.str6 = private unnamed_addr constant [39 x i8] c"Mouse joint dumping is not supported.\0A\00", align 1

@_ZN12b2MouseJointC1EPK15b2MouseJointDef = alias void (%class.b2MouseJoint*, %struct.b2MouseJointDef*)* @_ZN12b2MouseJointC2EPK15b2MouseJointDef

define void @_ZN12b2MouseJointC2EPK15b2MouseJointDef(%class.b2MouseJoint* %this, %struct.b2MouseJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca %struct.b2MouseJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store %struct.b2MouseJointDef* %def, %struct.b2MouseJointDef** %2, align 4
  %6 = load %class.b2MouseJoint** %1
  %7 = bitcast %class.b2MouseJoint* %6 to %class.b2Joint*
  %8 = load %struct.b2MouseJointDef** %2, align 4
  %9 = bitcast %struct.b2MouseJointDef* %8 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %7, %struct.b2JointDef* %9)
  %10 = bitcast %class.b2MouseJoint* %6 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV12b2MouseJoint, i64 0, i64 2), i8*** %10
  %11 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %31

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %31

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 6
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %15)
          to label %16 unwind label %31

; <label>:16                                      ; preds = %14
  %17 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %17)
          to label %18 unwind label %31

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %19)
          to label %20 unwind label %31

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 15
  invoke void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %21)
          to label %22 unwind label %31

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 16
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %23)
          to label %24 unwind label %31

; <label>:24                                      ; preds = %22
  %25 = load %struct.b2MouseJointDef** %2, align 4
  %26 = getelementptr inbounds %struct.b2MouseJointDef* %25, i32 0, i32 1
  %27 = invoke zeroext i1 @_ZNK6b2Vec27IsValidEv(%struct.b2Vec2* %26)
          to label %28 unwind label %31

; <label>:28                                      ; preds = %24
  br i1 %27, label %29, label %30

; <label>:29                                      ; preds = %28
  br label %37

; <label>:30                                      ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__._ZN12b2MouseJointC2EPK15b2MouseJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:31                                      ; preds = %92, %90, %79, %65, %51, %37, %24, %22, %20, %18, %16, %14, %12, %0
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %3
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %4
  %35 = bitcast %class.b2MouseJoint* %6 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %35)
          to label %111 unwind label %118
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %29
  %38 = load %struct.b2MouseJointDef** %2, align 4
  %39 = getelementptr inbounds %struct.b2MouseJointDef* %38, i32 0, i32 2
  %40 = load float* %39, align 4
  %41 = invoke zeroext i1 @_Z9b2IsValidf(float %40)
          to label %42 unwind label %31

; <label>:42                                      ; preds = %37
  br i1 %41, label %43, label %49

; <label>:43                                      ; preds = %42
  %44 = load %struct.b2MouseJointDef** %2, align 4
  %45 = getelementptr inbounds %struct.b2MouseJointDef* %44, i32 0, i32 2
  %46 = load float* %45, align 4
  %47 = fcmp oge float %46, 0.000000e+00
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %43
  br label %51

; <label>:49                                      ; preds = %43, %42
  call void @__assert_fail(i8* getelementptr inbounds ([50 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__._ZN12b2MouseJointC2EPK15b2MouseJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = load %struct.b2MouseJointDef** %2, align 4
  %53 = getelementptr inbounds %struct.b2MouseJointDef* %52, i32 0, i32 3
  %54 = load float* %53, align 4
  %55 = invoke zeroext i1 @_Z9b2IsValidf(float %54)
          to label %56 unwind label %31

; <label>:56                                      ; preds = %51
  br i1 %55, label %57, label %63

; <label>:57                                      ; preds = %56
  %58 = load %struct.b2MouseJointDef** %2, align 4
  %59 = getelementptr inbounds %struct.b2MouseJointDef* %58, i32 0, i32 3
  %60 = load float* %59, align 4
  %61 = fcmp oge float %60, 0.000000e+00
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %57
  br label %65

; <label>:63                                      ; preds = %57, %56
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__._ZN12b2MouseJointC2EPK15b2MouseJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:65                                      ; preds = %64, %62
  %66 = load %struct.b2MouseJointDef** %2, align 4
  %67 = getelementptr inbounds %struct.b2MouseJointDef* %66, i32 0, i32 4
  %68 = load float* %67, align 4
  %69 = invoke zeroext i1 @_Z9b2IsValidf(float %68)
          to label %70 unwind label %31

; <label>:70                                      ; preds = %65
  br i1 %69, label %71, label %77

; <label>:71                                      ; preds = %70
  %72 = load %struct.b2MouseJointDef** %2, align 4
  %73 = getelementptr inbounds %struct.b2MouseJointDef* %72, i32 0, i32 4
  %74 = load float* %73, align 4
  %75 = fcmp oge float %74, 0.000000e+00
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %71
  br label %79

; <label>:77                                      ; preds = %71, %70
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__._ZN12b2MouseJointC2EPK15b2MouseJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %79

; <label>:79                                      ; preds = %78, %76
  %80 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 2
  %81 = load %struct.b2MouseJointDef** %2, align 4
  %82 = getelementptr inbounds %struct.b2MouseJointDef* %81, i32 0, i32 1
  %83 = bitcast %struct.b2Vec2* %80 to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  %85 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 1
  %86 = bitcast %class.b2MouseJoint* %6 to %class.b2Joint*
  %87 = getelementptr inbounds %class.b2Joint* %86, i32 0, i32 7
  %88 = load %class.b2Body** %87, align 4
  %89 = invoke %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %88)
          to label %90 unwind label %31

; <label>:90                                      ; preds = %79
  %91 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 2
  invoke void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Transform* %89, %struct.b2Vec2* %91)
          to label %92 unwind label %31

; <label>:92                                      ; preds = %90
  %93 = bitcast %struct.b2Vec2* %85 to i8*
  %94 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %93, i8* %94, i32 8, i32 4, i1 false)
  %95 = load %struct.b2MouseJointDef** %2, align 4
  %96 = getelementptr inbounds %struct.b2MouseJointDef* %95, i32 0, i32 2
  %97 = load float* %96, align 4
  %98 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 7
  store float %97, float* %98, align 4
  %99 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 6
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %99)
          to label %100 unwind label %31

; <label>:100                                     ; preds = %92
  %101 = load %struct.b2MouseJointDef** %2, align 4
  %102 = getelementptr inbounds %struct.b2MouseJointDef* %101, i32 0, i32 3
  %103 = load float* %102, align 4
  %104 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 3
  store float %103, float* %104, align 4
  %105 = load %struct.b2MouseJointDef** %2, align 4
  %106 = getelementptr inbounds %struct.b2MouseJointDef* %105, i32 0, i32 4
  %107 = load float* %106, align 4
  %108 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 4
  store float %107, float* %108, align 4
  %109 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 5
  store float 0.000000e+00, float* %109, align 4
  %110 = getelementptr inbounds %class.b2MouseJoint* %6, i32 0, i32 8
  store float 0.000000e+00, float* %110, align 4
  ret void

; <label>:111                                     ; preds = %31
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load i8** %3
  %114 = load i8** %3
  %115 = load i32* %4
  %116 = insertvalue { i8*, i32 } undef, i8* %114, 0
  %117 = insertvalue { i8*, i32 } %116, i32 %115, 1
  resume { i8*, i32 } %117

; <label>:118                                     ; preds = %31
  %119 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint*, %struct.b2JointDef*)

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

declare i32 @__gxx_personality_v0(...)

define linkonce_odr void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  call void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %2)
  ret void
}

define linkonce_odr zeroext i1 @_ZNK6b2Vec27IsValidEv(%struct.b2Vec2* %this) nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = call zeroext i1 @_Z9b2IsValidf(float %4)
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %8 = load float* %7, align 4
  %9 = call zeroext i1 @_Z9b2IsValidf(float %8)
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  ret i1 %11
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr zeroext i1 @_Z9b2IsValidf(float %x) nounwind inlinehint {
  %1 = alloca i1, align 1
  %2 = alloca float, align 4
  %infinity = alloca float, align 4
  store float %x, float* %2, align 4
  %3 = load float* %2, align 4
  %4 = load float* %2, align 4
  %5 = fcmp une float %3, %4
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i1 false, i1* %1
  br label %19

; <label>:7                                       ; preds = %0
  %8 = call float @_ZNSt14numeric_limitsIfE8infinityEv() nounwind
  store float %8, float* %infinity, align 4
  %9 = load float* %infinity, align 4
  %10 = fsub float -0.000000e+00, %9
  %11 = load float* %2, align 4
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %7
  %14 = load float* %2, align 4
  %15 = load float* %infinity, align 4
  %16 = fcmp olt float %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %7
  %18 = phi i1 [ false, %7 ], [ %16, %13 ]
  store i1 %18, i1* %1
  br label %19

; <label>:19                                      ; preds = %17, %6
  %20 = load i1* %1
  ret i1 %20
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

define linkonce_odr %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 3
  ret %struct.b2Transform* %3
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

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN12b2MouseJoint9SetTargetERK6b2Vec2(%class.b2MouseJoint* %this, %struct.b2Vec2* %target) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store %struct.b2Vec2* %target, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = bitcast %class.b2MouseJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 7
  %6 = load %class.b2Body** %5, align 4
  %7 = call zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %6)
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = bitcast %class.b2MouseJoint* %3 to %class.b2Joint*
  %12 = getelementptr inbounds %class.b2Joint* %11, i32 0, i32 7
  %13 = load %class.b2Body** %12, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %13, i1 zeroext true)
  br label %14

; <label>:14                                      ; preds = %10, %0
  %15 = getelementptr inbounds %class.b2MouseJoint* %3, i32 0, i32 2
  %16 = load %struct.b2Vec2** %2
  %17 = bitcast %struct.b2Vec2* %15 to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  ret void
}

define linkonce_odr zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 2
  ret i1 %7
}

define linkonce_odr void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %this, i1 zeroext %flag) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca i8, align 1
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2Body** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %7, label %21

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %9 = load i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %7
  %14 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %15 = load i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, 2
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %14, align 2
  %19 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 23
  store float 0.000000e+00, float* %19, align 4
  br label %20

; <label>:20                                      ; preds = %13, %7
  br label %32

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %23 = load i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, -3
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2
  %27 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 23
  store float 0.000000e+00, float* %27, align 4
  %28 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 5
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %28)
  %29 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 6
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 7
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %30)
  %31 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 8
  store float 0.000000e+00, float* %31, align 4
  br label %32

; <label>:32                                      ; preds = %21, %20
  ret void
}

define %struct.b2Vec2* @_ZNK12b2MouseJoint9GetTargetEv(%class.b2MouseJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 2
  ret %struct.b2Vec2* %3
}

define void @_ZN12b2MouseJoint11SetMaxForceEf(%class.b2MouseJoint* %this, float %force) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store float %force, float* %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2MouseJoint* %3, i32 0, i32 7
  store float %4, float* %5, align 4
  ret void
}

define float @_ZNK12b2MouseJoint11GetMaxForceEv(%class.b2MouseJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 7
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN12b2MouseJoint12SetFrequencyEf(%class.b2MouseJoint* %this, float %hz) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store float %hz, float* %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2MouseJoint* %3, i32 0, i32 3
  store float %4, float* %5, align 4
  ret void
}

define float @_ZNK12b2MouseJoint12GetFrequencyEv(%class.b2MouseJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 3
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN12b2MouseJoint15SetDampingRatioEf(%class.b2MouseJoint* %this, float %ratio) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store float %ratio, float* %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2MouseJoint* %3, i32 0, i32 4
  store float %4, float* %5, align 4
  ret void
}

define float @_ZNK12b2MouseJoint15GetDampingRatioEv(%class.b2MouseJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 4
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN12b2MouseJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2MouseJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %qB = alloca %struct.b2Rot, align 4
  %mass = alloca float, align 4
  %omega = alloca float, align 4
  %d = alloca float, align 4
  %k = alloca float, align 4
  %h = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %K = alloca %struct.b2Mat22, align 4
  %5 = alloca %struct.b2Mat22, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2MouseJoint** %1
  %10 = bitcast %class.b2MouseJoint* %9 to %class.b2Joint*
  %11 = getelementptr inbounds %class.b2Joint* %10, i32 0, i32 7
  %12 = load %class.b2Body** %11, align 4
  %13 = getelementptr inbounds %class.b2Body* %12, i32 0, i32 2
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 12
  %17 = bitcast %class.b2MouseJoint* %9 to %class.b2Joint*
  %18 = getelementptr inbounds %class.b2Joint* %17, i32 0, i32 7
  %19 = load %class.b2Body** %18, align 4
  %20 = getelementptr inbounds %class.b2Body* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.b2Sweep* %20, i32 0, i32 0
  %22 = bitcast %struct.b2Vec2* %16 to i8*
  %23 = bitcast %struct.b2Vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 8, i32 4, i1 false)
  %24 = bitcast %class.b2MouseJoint* %9 to %class.b2Joint*
  %25 = getelementptr inbounds %class.b2Joint* %24, i32 0, i32 7
  %26 = load %class.b2Body** %25, align 4
  %27 = getelementptr inbounds %class.b2Body* %26, i32 0, i32 17
  %28 = load float* %27, align 4
  %29 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 13
  store float %28, float* %29, align 4
  %30 = bitcast %class.b2MouseJoint* %9 to %class.b2Joint*
  %31 = getelementptr inbounds %class.b2Joint* %30, i32 0, i32 7
  %32 = load %class.b2Body** %31, align 4
  %33 = getelementptr inbounds %class.b2Body* %32, i32 0, i32 19
  %34 = load float* %33, align 4
  %35 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 14
  store float %34, float* %35, align 4
  %36 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %37 = load i32* %36, align 4
  %38 = load %struct.b2SolverData** %2
  %39 = getelementptr inbounds %struct.b2SolverData* %38, i32 0, i32 1
  %40 = load %struct.b2Position** %39, align 4
  %41 = getelementptr inbounds %struct.b2Position* %40, i32 %37
  %42 = getelementptr inbounds %struct.b2Position* %41, i32 0, i32 0
  %43 = bitcast %struct.b2Vec2* %cB to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  %45 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %46 = load i32* %45, align 4
  %47 = load %struct.b2SolverData** %2
  %48 = getelementptr inbounds %struct.b2SolverData* %47, i32 0, i32 1
  %49 = load %struct.b2Position** %48, align 4
  %50 = getelementptr inbounds %struct.b2Position* %49, i32 %46
  %51 = getelementptr inbounds %struct.b2Position* %50, i32 0, i32 1
  %52 = load float* %51, align 4
  store float %52, float* %aB, align 4
  %53 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %54 = load i32* %53, align 4
  %55 = load %struct.b2SolverData** %2
  %56 = getelementptr inbounds %struct.b2SolverData* %55, i32 0, i32 2
  %57 = load %struct.b2Velocity** %56, align 4
  %58 = getelementptr inbounds %struct.b2Velocity* %57, i32 %54
  %59 = getelementptr inbounds %struct.b2Velocity* %58, i32 0, i32 0
  %60 = bitcast %struct.b2Vec2* %vB to i8*
  %61 = bitcast %struct.b2Vec2* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %63 = load i32* %62, align 4
  %64 = load %struct.b2SolverData** %2
  %65 = getelementptr inbounds %struct.b2SolverData* %64, i32 0, i32 2
  %66 = load %struct.b2Velocity** %65, align 4
  %67 = getelementptr inbounds %struct.b2Velocity* %66, i32 %63
  %68 = getelementptr inbounds %struct.b2Velocity* %67, i32 0, i32 1
  %69 = load float* %68, align 4
  store float %69, float* %wB, align 4
  %70 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %70)
  %71 = bitcast %class.b2MouseJoint* %9 to %class.b2Joint*
  %72 = getelementptr inbounds %class.b2Joint* %71, i32 0, i32 7
  %73 = load %class.b2Body** %72, align 4
  %74 = call float @_ZNK6b2Body7GetMassEv(%class.b2Body* %73)
  store float %74, float* %mass, align 4
  %75 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 3
  %76 = load float* %75, align 4
  %77 = fmul float 0x401921FB60000000, %76
  store float %77, float* %omega, align 4
  %78 = load float* %mass, align 4
  %79 = fmul float 2.000000e+00, %78
  %80 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 4
  %81 = load float* %80, align 4
  %82 = fmul float %79, %81
  %83 = load float* %omega, align 4
  %84 = fmul float %82, %83
  store float %84, float* %d, align 4
  %85 = load float* %mass, align 4
  %86 = load float* %omega, align 4
  %87 = load float* %omega, align 4
  %88 = fmul float %86, %87
  %89 = fmul float %85, %88
  store float %89, float* %k, align 4
  %90 = load %struct.b2SolverData** %2
  %91 = getelementptr inbounds %struct.b2SolverData* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.b2TimeStep* %91, i32 0, i32 0
  %93 = load float* %92, align 4
  store float %93, float* %h, align 4
  %94 = load float* %d, align 4
  %95 = load float* %h, align 4
  %96 = load float* %k, align 4
  %97 = fmul float %95, %96
  %98 = fadd float %94, %97
  %99 = fcmp ogt float %98, 0x3E80000000000000
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %0
  br label %103

; <label>:101                                     ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 125, i8* getelementptr inbounds ([73 x i8]* @__PRETTY_FUNCTION__._ZN12b2MouseJoint23InitVelocityConstraintsERK12b2SolverData, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load float* %h, align 4
  %105 = load float* %d, align 4
  %106 = load float* %h, align 4
  %107 = load float* %k, align 4
  %108 = fmul float %106, %107
  %109 = fadd float %105, %108
  %110 = fmul float %104, %109
  %111 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  store float %110, float* %111, align 4
  %112 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  %113 = load float* %112, align 4
  %114 = fcmp une float %113, 0.000000e+00
  br i1 %114, label %115, label %120

; <label>:115                                     ; preds = %103
  %116 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  %117 = load float* %116, align 4
  %118 = fdiv float 1.000000e+00, %117
  %119 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  store float %118, float* %119, align 4
  br label %120

; <label>:120                                     ; preds = %115, %103
  %121 = load float* %h, align 4
  %122 = load float* %k, align 4
  %123 = fmul float %121, %122
  %124 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  %125 = load float* %124, align 4
  %126 = fmul float %123, %125
  %127 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 5
  store float %126, float* %127, align 4
  %128 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %129 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 1
  %130 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 12
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %129, %struct.b2Vec2* %130)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  %131 = bitcast %struct.b2Vec2* %128 to i8*
  %132 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %131, i8* %132, i32 8, i32 4, i1 false)
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %K)
  %133 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 13
  %134 = load float* %133, align 4
  %135 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 14
  %136 = load float* %135, align 4
  %137 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %138 = getelementptr inbounds %struct.b2Vec2* %137, i32 0, i32 1
  %139 = load float* %138, align 4
  %140 = fmul float %136, %139
  %141 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %142 = getelementptr inbounds %struct.b2Vec2* %141, i32 0, i32 1
  %143 = load float* %142, align 4
  %144 = fmul float %140, %143
  %145 = fadd float %134, %144
  %146 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  %147 = load float* %146, align 4
  %148 = fadd float %145, %147
  %149 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %150 = getelementptr inbounds %struct.b2Vec2* %149, i32 0, i32 0
  store float %148, float* %150, align 4
  %151 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 14
  %152 = load float* %151, align 4
  %153 = fsub float -0.000000e+00, %152
  %154 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %155 = getelementptr inbounds %struct.b2Vec2* %154, i32 0, i32 0
  %156 = load float* %155, align 4
  %157 = fmul float %153, %156
  %158 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %159 = getelementptr inbounds %struct.b2Vec2* %158, i32 0, i32 1
  %160 = load float* %159, align 4
  %161 = fmul float %157, %160
  %162 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %163 = getelementptr inbounds %struct.b2Vec2* %162, i32 0, i32 1
  store float %161, float* %163, align 4
  %164 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %165 = getelementptr inbounds %struct.b2Vec2* %164, i32 0, i32 1
  %166 = load float* %165, align 4
  %167 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %168 = getelementptr inbounds %struct.b2Vec2* %167, i32 0, i32 0
  store float %166, float* %168, align 4
  %169 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 13
  %170 = load float* %169, align 4
  %171 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 14
  %172 = load float* %171, align 4
  %173 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %174 = getelementptr inbounds %struct.b2Vec2* %173, i32 0, i32 0
  %175 = load float* %174, align 4
  %176 = fmul float %172, %175
  %177 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %178 = getelementptr inbounds %struct.b2Vec2* %177, i32 0, i32 0
  %179 = load float* %178, align 4
  %180 = fmul float %176, %179
  %181 = fadd float %170, %180
  %182 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 8
  %183 = load float* %182, align 4
  %184 = fadd float %181, %183
  %185 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %186 = getelementptr inbounds %struct.b2Vec2* %185, i32 0, i32 1
  store float %184, float* %186, align 4
  %187 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 15
  call void @_ZNK7b2Mat2210GetInverseEv(%struct.b2Mat22* sret %5, %struct.b2Mat22* %K)
  %188 = bitcast %struct.b2Mat22* %187 to i8*
  %189 = bitcast %struct.b2Mat22* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %188, i8* %189, i32 16, i32 4, i1 false)
  %190 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 16
  %191 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %cB, %struct.b2Vec2* %191)
  %192 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %7, %struct.b2Vec2* %192)
  %193 = bitcast %struct.b2Vec2* %190 to i8*
  %194 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %193, i8* %194, i32 8, i32 4, i1 false)
  %195 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 16
  %196 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 5
  %197 = load float* %196, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %195, float %197)
  %198 = load float* %wB, align 4
  %199 = fmul float %198, 0x3FEF5C2900000000
  store float %199, float* %wB, align 4
  %200 = load %struct.b2SolverData** %2
  %201 = getelementptr inbounds %struct.b2SolverData* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.b2TimeStep* %201, i32 0, i32 5
  %203 = load i8* %202, align 1
  %204 = trunc i8 %203 to i1
  br i1 %204, label %205, label %222

; <label>:205                                     ; preds = %120
  %206 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 6
  %207 = load %struct.b2SolverData** %2
  %208 = getelementptr inbounds %struct.b2SolverData* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.b2TimeStep* %208, i32 0, i32 2
  %210 = load float* %209, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %206, float %210)
  %211 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 13
  %212 = load float* %211, align 4
  %213 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 6
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %212, %struct.b2Vec2* %213)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %8)
  %214 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 14
  %215 = load float* %214, align 4
  %216 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 11
  %217 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 6
  %218 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %216, %struct.b2Vec2* %217)
  %219 = fmul float %215, %218
  %220 = load float* %wB, align 4
  %221 = fadd float %220, %219
  store float %221, float* %wB, align 4
  br label %224

; <label>:222                                     ; preds = %120
  %223 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 6
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %223)
  br label %224

; <label>:224                                     ; preds = %222, %205
  %225 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %226 = load i32* %225, align 4
  %227 = load %struct.b2SolverData** %2
  %228 = getelementptr inbounds %struct.b2SolverData* %227, i32 0, i32 2
  %229 = load %struct.b2Velocity** %228, align 4
  %230 = getelementptr inbounds %struct.b2Velocity* %229, i32 %226
  %231 = getelementptr inbounds %struct.b2Velocity* %230, i32 0, i32 0
  %232 = bitcast %struct.b2Vec2* %231 to i8*
  %233 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %232, i8* %233, i32 8, i32 4, i1 false)
  %234 = load float* %wB, align 4
  %235 = getelementptr inbounds %class.b2MouseJoint* %9, i32 0, i32 10
  %236 = load i32* %235, align 4
  %237 = load %struct.b2SolverData** %2
  %238 = getelementptr inbounds %struct.b2SolverData* %237, i32 0, i32 2
  %239 = load %struct.b2Velocity** %238, align 4
  %240 = getelementptr inbounds %struct.b2Velocity* %239, i32 %236
  %241 = getelementptr inbounds %struct.b2Velocity* %240, i32 0, i32 1
  store float %234, float* %241, align 4
  ret void
}

define linkonce_odr void @_ZN5b2RotC1Ef(%struct.b2Rot* %this, float %angle) unnamed_addr align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  %2 = alloca float, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  store float %angle, float* %2, align 4
  %3 = load %struct.b2Rot** %1
  %4 = load float* %2, align 4
  call void @_ZN5b2RotC2Ef(%struct.b2Rot* %3, float %4)
  ret void
}

define linkonce_odr float @_ZNK6b2Body7GetMassEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 16
  %4 = load float* %3, align 4
  ret float %4
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

define linkonce_odr void @_ZNK7b2Mat2210GetInverseEv(%struct.b2Mat22* noalias sret %agg.result, %struct.b2Mat22* %this) align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %d = alloca float, align 4
  %det = alloca float, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  %3 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  store float %5, float* %a, align 4
  %6 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  store float %8, float* %b, align 4
  %9 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %10 = getelementptr inbounds %struct.b2Vec2* %9, i32 0, i32 1
  %11 = load float* %10, align 4
  store float %11, float* %c, align 4
  %12 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Vec2* %12, i32 0, i32 1
  %14 = load float* %13, align 4
  store float %14, float* %d, align 4
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %agg.result)
  %15 = load float* %a, align 4
  %16 = load float* %d, align 4
  %17 = fmul float %15, %16
  %18 = load float* %b, align 4
  %19 = load float* %c, align 4
  %20 = fmul float %18, %19
  %21 = fsub float %17, %20
  store float %21, float* %det, align 4
  %22 = load float* %det, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %0
  %25 = load float* %det, align 4
  %26 = fdiv float 1.000000e+00, %25
  store float %26, float* %det, align 4
  br label %27

; <label>:27                                      ; preds = %24, %0
  %28 = load float* %det, align 4
  %29 = load float* %d, align 4
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 0
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 0, i32 0
  store float %30, float* %32, align 4
  %33 = load float* %det, align 4
  %34 = fsub float -0.000000e+00, %33
  %35 = load float* %b, align 4
  %36 = fmul float %34, %35
  %37 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 1
  %38 = getelementptr inbounds %struct.b2Vec2* %37, i32 0, i32 0
  store float %36, float* %38, align 4
  %39 = load float* %det, align 4
  %40 = fsub float -0.000000e+00, %39
  %41 = load float* %c, align 4
  %42 = fmul float %40, %41
  %43 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2Vec2* %43, i32 0, i32 1
  store float %42, float* %44, align 4
  %45 = load float* %det, align 4
  %46 = load float* %a, align 4
  %47 = fmul float %45, %46
  %48 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 1
  %49 = getelementptr inbounds %struct.b2Vec2* %48, i32 0, i32 1
  store float %47, float* %49, align 4
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

define void @_ZN12b2MouseJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2MouseJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %Cdot = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %impulse = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %oldImpulse = alloca %struct.b2Vec2, align 4
  %maxImpulse = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %10 = load %class.b2MouseJoint** %1
  %11 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 10
  %12 = load i32* %11, align 4
  %13 = load %struct.b2SolverData** %2
  %14 = getelementptr inbounds %struct.b2SolverData* %13, i32 0, i32 2
  %15 = load %struct.b2Velocity** %14, align 4
  %16 = getelementptr inbounds %struct.b2Velocity* %15, i32 %12
  %17 = getelementptr inbounds %struct.b2Velocity* %16, i32 0, i32 0
  %18 = bitcast %struct.b2Vec2* %vB to i8*
  %19 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  %20 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 10
  %21 = load i32* %20, align 4
  %22 = load %struct.b2SolverData** %2
  %23 = getelementptr inbounds %struct.b2SolverData* %22, i32 0, i32 2
  %24 = load %struct.b2Velocity** %23, align 4
  %25 = getelementptr inbounds %struct.b2Velocity* %24, i32 %21
  %26 = getelementptr inbounds %struct.b2Velocity* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  store float %27, float* %wB, align 4
  %28 = load float* %wB, align 4
  %29 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 11
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %3, float %28, %struct.b2Vec2* %29)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot, %struct.b2Vec2* %vB, %struct.b2Vec2* %3)
  %30 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 15
  %31 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 16
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %Cdot, %struct.b2Vec2* %31)
  %32 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 8
  %33 = load float* %32, align 4
  %34 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %33, %struct.b2Vec2* %34)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %5, %struct.b2Vec2* %6)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %4, %struct.b2Vec2* %7)
  call void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* sret %impulse, %struct.b2Mat22* %30, %struct.b2Vec2* %4)
  %35 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  %36 = bitcast %struct.b2Vec2* %oldImpulse to i8*
  %37 = bitcast %struct.b2Vec2* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 8, i32 4, i1 false)
  %38 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %38, %struct.b2Vec2* %impulse)
  %39 = load %struct.b2SolverData** %2
  %40 = getelementptr inbounds %struct.b2SolverData* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.b2TimeStep* %40, i32 0, i32 0
  %42 = load float* %41, align 4
  %43 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 7
  %44 = load float* %43, align 4
  %45 = fmul float %42, %44
  store float %45, float* %maxImpulse, align 4
  %46 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  %47 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %46)
  %48 = load float* %maxImpulse, align 4
  %49 = load float* %maxImpulse, align 4
  %50 = fmul float %48, %49
  %51 = fcmp ogt float %47, %50
  br i1 %51, label %52, label %58

; <label>:52                                      ; preds = %0
  %53 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  %54 = load float* %maxImpulse, align 4
  %55 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  %56 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %55)
  %57 = fdiv float %54, %56
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %53, float %57)
  br label %58

; <label>:58                                      ; preds = %52, %0
  %59 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 6
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %59, %struct.b2Vec2* %oldImpulse)
  %60 = bitcast %struct.b2Vec2* %impulse to i8*
  %61 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 13
  %63 = load float* %62, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %63, %struct.b2Vec2* %impulse)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %9)
  %64 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 14
  %65 = load float* %64, align 4
  %66 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 11
  %67 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %66, %struct.b2Vec2* %impulse)
  %68 = fmul float %65, %67
  %69 = load float* %wB, align 4
  %70 = fadd float %69, %68
  store float %70, float* %wB, align 4
  %71 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 10
  %72 = load i32* %71, align 4
  %73 = load %struct.b2SolverData** %2
  %74 = getelementptr inbounds %struct.b2SolverData* %73, i32 0, i32 2
  %75 = load %struct.b2Velocity** %74, align 4
  %76 = getelementptr inbounds %struct.b2Velocity* %75, i32 %72
  %77 = getelementptr inbounds %struct.b2Velocity* %76, i32 0, i32 0
  %78 = bitcast %struct.b2Vec2* %77 to i8*
  %79 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 8, i32 4, i1 false)
  %80 = load float* %wB, align 4
  %81 = getelementptr inbounds %class.b2MouseJoint* %10, i32 0, i32 10
  %82 = load i32* %81, align 4
  %83 = load %struct.b2SolverData** %2
  %84 = getelementptr inbounds %struct.b2SolverData* %83, i32 0, i32 2
  %85 = load %struct.b2Velocity** %84, align 4
  %86 = getelementptr inbounds %struct.b2Velocity* %85, i32 %82
  %87 = getelementptr inbounds %struct.b2Velocity* %86, i32 0, i32 1
  store float %80, float* %87, align 4
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

define linkonce_odr void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Mat22* %A, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Mat22*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Mat22* %A, %struct.b2Mat22** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Mat22** %1
  %4 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = load %struct.b2Vec2** %2
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %6, %9
  %11 = load %struct.b2Mat22** %1
  %12 = getelementptr inbounds %struct.b2Mat22* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Vec2* %12, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = load %struct.b2Vec2** %2
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %10, %18
  %20 = load %struct.b2Mat22** %1
  %21 = getelementptr inbounds %struct.b2Mat22* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 1
  %23 = load float* %22, align 4
  %24 = load %struct.b2Vec2** %2
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 0
  %26 = load float* %25, align 4
  %27 = fmul float %23, %26
  %28 = load %struct.b2Mat22** %1
  %29 = getelementptr inbounds %struct.b2Mat22* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.b2Vec2* %29, i32 0, i32 1
  %31 = load float* %30, align 4
  %32 = load %struct.b2Vec2** %2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fmul float %31, %34
  %36 = fadd float %27, %35
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %19, float %36)
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

define zeroext i1 @_ZN12b2MouseJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2MouseJoint* %this, %struct.b2SolverData* %data) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load %struct.b2SolverData** %2
  ret i1 true
}

define void @_ZNK12b2MouseJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2MouseJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 2
  %4 = bitcast %struct.b2Vec2* %agg.result to i8*
  %5 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 8, i32 4, i1 false)
  ret void
}

define void @_ZNK12b2MouseJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2MouseJoint* %this) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = bitcast %class.b2MouseJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2MouseJoint* %2, i32 0, i32 1
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define linkonce_odr void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %class.b2Body* %this, %struct.b2Vec2* %localPoint) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2Vec2* %localPoint, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 3
  %5 = load %struct.b2Vec2** %2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %agg.result, %struct.b2Transform* %4, %struct.b2Vec2* %5)
  ret void
}

define void @_ZNK12b2MouseJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2MouseJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2MouseJoint* %3, i32 0, i32 6
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %4, %struct.b2Vec2* %5)
  ret void
}

define float @_ZNK12b2MouseJoint17GetReactionTorqueEf(%class.b2MouseJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2MouseJoint** %1
  %4 = load float* %2, align 4
  %5 = fmul float %4, 0.000000e+00
  ret float %5
}

define linkonce_odr void @_ZN12b2MouseJoint4DumpEv(%class.b2MouseJoint* %this) align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0))
  ret void
}

define linkonce_odr void @_ZN12b2MouseJointD1Ev(%class.b2MouseJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  call void @_ZN12b2MouseJointD2Ev(%class.b2MouseJoint* %2)
  ret void
}

define linkonce_odr void @_ZN12b2MouseJointD0Ev(%class.b2MouseJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %4 = load %class.b2MouseJoint** %1
  invoke void @_ZN12b2MouseJointD1Ev(%class.b2MouseJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2MouseJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2MouseJoint* %4 to i8*
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

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN12b2MouseJointD2Ev(%class.b2MouseJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2MouseJoint*, align 4
  store %class.b2MouseJoint* %this, %class.b2MouseJoint** %1, align 4
  %2 = load %class.b2MouseJoint** %1
  %3 = bitcast %class.b2MouseJoint* %2 to %class.b2Joint*
  call void @_ZN7b2JointD2Ev(%class.b2Joint* %3)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

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

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

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

define linkonce_odr void @_ZN5b2RotC2Ef(%struct.b2Rot* %this, float %angle) unnamed_addr nounwind align 2 {
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

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

define linkonce_odr float @_ZNSt14numeric_limitsIfE8infinityEv() nounwind align 2 {
  ret float 0x7FF0000000000000
}

define linkonce_odr void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  %3 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}
