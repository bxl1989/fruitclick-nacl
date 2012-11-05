; ModuleID = 'Dynamics/Joints/b2FrictionJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2FrictionJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat22, float }
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
%struct.b2FrictionJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV15b2FrictionJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI15b2FrictionJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2FrictionJoint*)* @_ZNK15b2FrictionJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2FrictionJoint*)* @_ZNK15b2FrictionJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2FrictionJoint*, float)* @_ZNK15b2FrictionJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2FrictionJoint*, float)* @_ZNK15b2FrictionJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2FrictionJoint*)* @_ZN15b2FrictionJoint4DumpEv to i8*), i8* bitcast (void (%class.b2FrictionJoint*)* @_ZN15b2FrictionJointD1Ev to i8*), i8* bitcast (void (%class.b2FrictionJoint*)* @_ZN15b2FrictionJointD0Ev to i8*), i8* bitcast (void (%class.b2FrictionJoint*, %struct.b2SolverData*)* @_ZN15b2FrictionJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2FrictionJoint*, %struct.b2SolverData*)* @_ZN15b2FrictionJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2FrictionJoint*, %struct.b2SolverData*)* @_ZN15b2FrictionJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [34 x i8] c"b2IsValid(force) && force >= 0.0f\00", align 1
@.str1 = private unnamed_addr constant [36 x i8] c"Dynamics/Joints/b2FrictionJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN15b2FrictionJoint11SetMaxForceEf = private unnamed_addr constant [43 x i8] c"void b2FrictionJoint::SetMaxForce(float32)\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"b2IsValid(torque) && torque >= 0.0f\00", align 1
@__PRETTY_FUNCTION__._ZN15b2FrictionJoint12SetMaxTorqueEf = private unnamed_addr constant [44 x i8] c"void b2FrictionJoint::SetMaxTorque(float32)\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"  b2FrictionJointDef jd;\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"  jd.maxForce = %.15lef;\0A\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"  jd.maxTorque = %.15lef;\0A\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS15b2FrictionJoint = constant [18 x i8] c"15b2FrictionJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI15b2FrictionJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([18 x i8]* @_ZTS15b2FrictionJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN15b2FrictionJointC1EPK18b2FrictionJointDef = alias void (%class.b2FrictionJoint*, %struct.b2FrictionJointDef*)* @_ZN15b2FrictionJointC2EPK18b2FrictionJointDef

define void @_ZN18b2FrictionJointDef10InitializeEP6b2BodyS1_RK6b2Vec2(%struct.b2FrictionJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %anchor) align 2 {
  %1 = alloca %struct.b2FrictionJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %struct.b2FrictionJointDef* %this, %struct.b2FrictionJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor, %struct.b2Vec2** %4, align 4
  %7 = load %struct.b2FrictionJointDef** %1
  %8 = load %class.b2Body** %2, align 4
  %9 = bitcast %struct.b2FrictionJointDef* %7 to %struct.b2JointDef*
  %10 = getelementptr inbounds %struct.b2JointDef* %9, i32 0, i32 2
  store %class.b2Body* %8, %class.b2Body** %10, align 4
  %11 = load %class.b2Body** %3, align 4
  %12 = bitcast %struct.b2FrictionJointDef* %7 to %struct.b2JointDef*
  %13 = getelementptr inbounds %struct.b2JointDef* %12, i32 0, i32 3
  store %class.b2Body* %11, %class.b2Body** %13, align 4
  %14 = getelementptr inbounds %struct.b2FrictionJointDef* %7, i32 0, i32 1
  %15 = bitcast %struct.b2FrictionJointDef* %7 to %struct.b2JointDef*
  %16 = getelementptr inbounds %struct.b2JointDef* %15, i32 0, i32 2
  %17 = load %class.b2Body** %16, align 4
  %18 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %5, %class.b2Body* %17, %struct.b2Vec2* %18)
  %19 = bitcast %struct.b2Vec2* %14 to i8*
  %20 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = getelementptr inbounds %struct.b2FrictionJointDef* %7, i32 0, i32 2
  %22 = bitcast %struct.b2FrictionJointDef* %7 to %struct.b2JointDef*
  %23 = getelementptr inbounds %struct.b2JointDef* %22, i32 0, i32 3
  %24 = load %class.b2Body** %23, align 4
  %25 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %24, %struct.b2Vec2* %25)
  %26 = bitcast %struct.b2Vec2* %21 to i8*
  %27 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  ret void
}

define linkonce_odr void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %class.b2Body* %this, %struct.b2Vec2* %worldPoint) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2Vec2* %worldPoint, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 3
  %5 = load %struct.b2Vec2** %2
  call void @_Z6b2MulTRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %agg.result, %struct.b2Transform* %4, %struct.b2Vec2* %5)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @_ZN15b2FrictionJointC2EPK18b2FrictionJointDef(%class.b2FrictionJoint* %this, %struct.b2FrictionJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca %struct.b2FrictionJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store %struct.b2FrictionJointDef* %def, %struct.b2FrictionJointDef** %2, align 4
  %5 = load %class.b2FrictionJoint** %1
  %6 = bitcast %class.b2FrictionJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2FrictionJointDef** %2, align 4
  %8 = bitcast %struct.b2FrictionJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2FrictionJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV15b2FrictionJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %47

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %47

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %14)
          to label %15 unwind label %47

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 9
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %47

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 10
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %47

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %47

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %47

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 17
  invoke void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %24)
          to label %25 unwind label %47

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 1
  %27 = load %struct.b2FrictionJointDef** %2, align 4
  %28 = getelementptr inbounds %struct.b2FrictionJointDef* %27, i32 0, i32 1
  %29 = bitcast %struct.b2Vec2* %26 to i8*
  %30 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %31 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 2
  %32 = load %struct.b2FrictionJointDef** %2, align 4
  %33 = getelementptr inbounds %struct.b2FrictionJointDef* %32, i32 0, i32 2
  %34 = bitcast %struct.b2Vec2* %31 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 3
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %36)
          to label %37 unwind label %47

; <label>:37                                      ; preds = %25
  %38 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 4
  store float 0.000000e+00, float* %38, align 4
  %39 = load %struct.b2FrictionJointDef** %2, align 4
  %40 = getelementptr inbounds %struct.b2FrictionJointDef* %39, i32 0, i32 3
  %41 = load float* %40, align 4
  %42 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 5
  store float %41, float* %42, align 4
  %43 = load %struct.b2FrictionJointDef** %2, align 4
  %44 = getelementptr inbounds %struct.b2FrictionJointDef* %43, i32 0, i32 4
  %45 = load float* %44, align 4
  %46 = getelementptr inbounds %class.b2FrictionJoint* %5, i32 0, i32 6
  store float %45, float* %46, align 4
  ret void

; <label>:47                                      ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %0
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %3
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %4
  %51 = bitcast %class.b2FrictionJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %51)
          to label %52 unwind label %59

; <label>:52                                      ; preds = %47
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i8** %3
  %55 = load i8** %3
  %56 = load i32* %4
  %57 = insertvalue { i8*, i32 } undef, i8* %55, 0
  %58 = insertvalue { i8*, i32 } %57, i32 %56, 1
  resume { i8*, i32 } %58

; <label>:59                                      ; preds = %47
  %60 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN15b2FrictionJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2FrictionJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %aA = alloca float, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %aB = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %K = alloca %struct.b2Mat22, align 4
  %7 = alloca %struct.b2Mat22, align 4
  %P = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %10 = load %class.b2FrictionJoint** %1
  %11 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %12 = getelementptr inbounds %class.b2Joint* %11, i32 0, i32 6
  %13 = load %class.b2Body** %12, align 4
  %14 = getelementptr inbounds %class.b2Body* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  store i32 %15, i32* %16, align 4
  %17 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %18 = getelementptr inbounds %class.b2Joint* %17, i32 0, i32 7
  %19 = load %class.b2Body** %18, align 4
  %20 = getelementptr inbounds %class.b2Body* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 11
  %24 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %25 = getelementptr inbounds %class.b2Joint* %24, i32 0, i32 6
  %26 = load %class.b2Body** %25, align 4
  %27 = getelementptr inbounds %class.b2Body* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.b2Sweep* %27, i32 0, i32 0
  %29 = bitcast %struct.b2Vec2* %23 to i8*
  %30 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %31 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 12
  %32 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %33 = getelementptr inbounds %class.b2Joint* %32, i32 0, i32 7
  %34 = load %class.b2Body** %33, align 4
  %35 = getelementptr inbounds %class.b2Body* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.b2Sweep* %35, i32 0, i32 0
  %37 = bitcast %struct.b2Vec2* %31 to i8*
  %38 = bitcast %struct.b2Vec2* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 8, i32 4, i1 false)
  %39 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %40 = getelementptr inbounds %class.b2Joint* %39, i32 0, i32 6
  %41 = load %class.b2Body** %40, align 4
  %42 = getelementptr inbounds %class.b2Body* %41, i32 0, i32 17
  %43 = load float* %42, align 4
  %44 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 13
  store float %43, float* %44, align 4
  %45 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %46 = getelementptr inbounds %class.b2Joint* %45, i32 0, i32 7
  %47 = load %class.b2Body** %46, align 4
  %48 = getelementptr inbounds %class.b2Body* %47, i32 0, i32 17
  %49 = load float* %48, align 4
  %50 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 14
  store float %49, float* %50, align 4
  %51 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %52 = getelementptr inbounds %class.b2Joint* %51, i32 0, i32 6
  %53 = load %class.b2Body** %52, align 4
  %54 = getelementptr inbounds %class.b2Body* %53, i32 0, i32 19
  %55 = load float* %54, align 4
  %56 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 15
  store float %55, float* %56, align 4
  %57 = bitcast %class.b2FrictionJoint* %10 to %class.b2Joint*
  %58 = getelementptr inbounds %class.b2Joint* %57, i32 0, i32 7
  %59 = load %class.b2Body** %58, align 4
  %60 = getelementptr inbounds %class.b2Body* %59, i32 0, i32 19
  %61 = load float* %60, align 4
  %62 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 16
  store float %61, float* %62, align 4
  %63 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  %64 = load i32* %63, align 4
  %65 = load %struct.b2SolverData** %2
  %66 = getelementptr inbounds %struct.b2SolverData* %65, i32 0, i32 1
  %67 = load %struct.b2Position** %66, align 4
  %68 = getelementptr inbounds %struct.b2Position* %67, i32 %64
  %69 = getelementptr inbounds %struct.b2Position* %68, i32 0, i32 1
  %70 = load float* %69, align 4
  store float %70, float* %aA, align 4
  %71 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  %72 = load i32* %71, align 4
  %73 = load %struct.b2SolverData** %2
  %74 = getelementptr inbounds %struct.b2SolverData* %73, i32 0, i32 2
  %75 = load %struct.b2Velocity** %74, align 4
  %76 = getelementptr inbounds %struct.b2Velocity* %75, i32 %72
  %77 = getelementptr inbounds %struct.b2Velocity* %76, i32 0, i32 0
  %78 = bitcast %struct.b2Vec2* %vA to i8*
  %79 = bitcast %struct.b2Vec2* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 8, i32 4, i1 false)
  %80 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  %81 = load i32* %80, align 4
  %82 = load %struct.b2SolverData** %2
  %83 = getelementptr inbounds %struct.b2SolverData* %82, i32 0, i32 2
  %84 = load %struct.b2Velocity** %83, align 4
  %85 = getelementptr inbounds %struct.b2Velocity* %84, i32 %81
  %86 = getelementptr inbounds %struct.b2Velocity* %85, i32 0, i32 1
  %87 = load float* %86, align 4
  store float %87, float* %wA, align 4
  %88 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  %89 = load i32* %88, align 4
  %90 = load %struct.b2SolverData** %2
  %91 = getelementptr inbounds %struct.b2SolverData* %90, i32 0, i32 1
  %92 = load %struct.b2Position** %91, align 4
  %93 = getelementptr inbounds %struct.b2Position* %92, i32 %89
  %94 = getelementptr inbounds %struct.b2Position* %93, i32 0, i32 1
  %95 = load float* %94, align 4
  store float %95, float* %aB, align 4
  %96 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  %97 = load i32* %96, align 4
  %98 = load %struct.b2SolverData** %2
  %99 = getelementptr inbounds %struct.b2SolverData* %98, i32 0, i32 2
  %100 = load %struct.b2Velocity** %99, align 4
  %101 = getelementptr inbounds %struct.b2Velocity* %100, i32 %97
  %102 = getelementptr inbounds %struct.b2Velocity* %101, i32 0, i32 0
  %103 = bitcast %struct.b2Vec2* %vB to i8*
  %104 = bitcast %struct.b2Vec2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  %106 = load i32* %105, align 4
  %107 = load %struct.b2SolverData** %2
  %108 = getelementptr inbounds %struct.b2SolverData* %107, i32 0, i32 2
  %109 = load %struct.b2Velocity** %108, align 4
  %110 = getelementptr inbounds %struct.b2Velocity* %109, i32 %106
  %111 = getelementptr inbounds %struct.b2Velocity* %110, i32 0, i32 1
  %112 = load float* %111, align 4
  store float %112, float* %wB, align 4
  %113 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %113)
  %114 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %114)
  %115 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %116 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 1
  %117 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 11
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %116, %struct.b2Vec2* %117)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %118 = bitcast %struct.b2Vec2* %115 to i8*
  %119 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %118, i8* %119, i32 8, i32 4, i1 false)
  %120 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %121 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 2
  %122 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 12
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %121, %struct.b2Vec2* %122)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %123 = bitcast %struct.b2Vec2* %120 to i8*
  %124 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %123, i8* %124, i32 8, i32 4, i1 false)
  %125 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 13
  %126 = load float* %125, align 4
  store float %126, float* %mA, align 4
  %127 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 14
  %128 = load float* %127, align 4
  store float %128, float* %mB, align 4
  %129 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 15
  %130 = load float* %129, align 4
  store float %130, float* %iA, align 4
  %131 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 16
  %132 = load float* %131, align 4
  store float %132, float* %iB, align 4
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %K)
  %133 = load float* %mA, align 4
  %134 = load float* %mB, align 4
  %135 = fadd float %133, %134
  %136 = load float* %iA, align 4
  %137 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %138 = getelementptr inbounds %struct.b2Vec2* %137, i32 0, i32 1
  %139 = load float* %138, align 4
  %140 = fmul float %136, %139
  %141 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %142 = getelementptr inbounds %struct.b2Vec2* %141, i32 0, i32 1
  %143 = load float* %142, align 4
  %144 = fmul float %140, %143
  %145 = fadd float %135, %144
  %146 = load float* %iB, align 4
  %147 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %148 = getelementptr inbounds %struct.b2Vec2* %147, i32 0, i32 1
  %149 = load float* %148, align 4
  %150 = fmul float %146, %149
  %151 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %152 = getelementptr inbounds %struct.b2Vec2* %151, i32 0, i32 1
  %153 = load float* %152, align 4
  %154 = fmul float %150, %153
  %155 = fadd float %145, %154
  %156 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %157 = getelementptr inbounds %struct.b2Vec2* %156, i32 0, i32 0
  store float %155, float* %157, align 4
  %158 = load float* %iA, align 4
  %159 = fsub float -0.000000e+00, %158
  %160 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %161 = getelementptr inbounds %struct.b2Vec2* %160, i32 0, i32 0
  %162 = load float* %161, align 4
  %163 = fmul float %159, %162
  %164 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %165 = getelementptr inbounds %struct.b2Vec2* %164, i32 0, i32 1
  %166 = load float* %165, align 4
  %167 = fmul float %163, %166
  %168 = load float* %iB, align 4
  %169 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %170 = getelementptr inbounds %struct.b2Vec2* %169, i32 0, i32 0
  %171 = load float* %170, align 4
  %172 = fmul float %168, %171
  %173 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %174 = getelementptr inbounds %struct.b2Vec2* %173, i32 0, i32 1
  %175 = load float* %174, align 4
  %176 = fmul float %172, %175
  %177 = fsub float %167, %176
  %178 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %179 = getelementptr inbounds %struct.b2Vec2* %178, i32 0, i32 1
  store float %177, float* %179, align 4
  %180 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %181 = getelementptr inbounds %struct.b2Vec2* %180, i32 0, i32 1
  %182 = load float* %181, align 4
  %183 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %184 = getelementptr inbounds %struct.b2Vec2* %183, i32 0, i32 0
  store float %182, float* %184, align 4
  %185 = load float* %mA, align 4
  %186 = load float* %mB, align 4
  %187 = fadd float %185, %186
  %188 = load float* %iA, align 4
  %189 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %190 = getelementptr inbounds %struct.b2Vec2* %189, i32 0, i32 0
  %191 = load float* %190, align 4
  %192 = fmul float %188, %191
  %193 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %194 = getelementptr inbounds %struct.b2Vec2* %193, i32 0, i32 0
  %195 = load float* %194, align 4
  %196 = fmul float %192, %195
  %197 = fadd float %187, %196
  %198 = load float* %iB, align 4
  %199 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %200 = getelementptr inbounds %struct.b2Vec2* %199, i32 0, i32 0
  %201 = load float* %200, align 4
  %202 = fmul float %198, %201
  %203 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %204 = getelementptr inbounds %struct.b2Vec2* %203, i32 0, i32 0
  %205 = load float* %204, align 4
  %206 = fmul float %202, %205
  %207 = fadd float %197, %206
  %208 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %209 = getelementptr inbounds %struct.b2Vec2* %208, i32 0, i32 1
  store float %207, float* %209, align 4
  %210 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 17
  call void @_ZNK7b2Mat2210GetInverseEv(%struct.b2Mat22* sret %7, %struct.b2Mat22* %K)
  %211 = bitcast %struct.b2Mat22* %210 to i8*
  %212 = bitcast %struct.b2Mat22* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %211, i8* %212, i32 16, i32 4, i1 false)
  %213 = load float* %iA, align 4
  %214 = load float* %iB, align 4
  %215 = fadd float %213, %214
  %216 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 18
  store float %215, float* %216, align 4
  %217 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 18
  %218 = load float* %217, align 4
  %219 = fcmp ogt float %218, 0.000000e+00
  br i1 %219, label %220, label %225

; <label>:220                                     ; preds = %0
  %221 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 18
  %222 = load float* %221, align 4
  %223 = fdiv float 1.000000e+00, %222
  %224 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 18
  store float %223, float* %224, align 4
  br label %225

; <label>:225                                     ; preds = %220, %0
  %226 = load %struct.b2SolverData** %2
  %227 = getelementptr inbounds %struct.b2SolverData* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.b2TimeStep* %227, i32 0, i32 5
  %229 = load i8* %228, align 1
  %230 = trunc i8 %229 to i1
  br i1 %230, label %231, label %270

; <label>:231                                     ; preds = %225
  %232 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 3
  %233 = load %struct.b2SolverData** %2
  %234 = getelementptr inbounds %struct.b2SolverData* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.b2TimeStep* %234, i32 0, i32 2
  %236 = load float* %235, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %232, float %236)
  %237 = load %struct.b2SolverData** %2
  %238 = getelementptr inbounds %struct.b2SolverData* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.b2TimeStep* %238, i32 0, i32 2
  %240 = load float* %239, align 4
  %241 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 4
  %242 = load float* %241, align 4
  %243 = fmul float %242, %240
  store float %243, float* %241, align 4
  %244 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 3
  %245 = getelementptr inbounds %struct.b2Vec2* %244, i32 0, i32 0
  %246 = load float* %245, align 4
  %247 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 3
  %248 = getelementptr inbounds %struct.b2Vec2* %247, i32 0, i32 1
  %249 = load float* %248, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %246, float %249)
  %250 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %250, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %8)
  %251 = load float* %iA, align 4
  %252 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 9
  %253 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %252, %struct.b2Vec2* %P)
  %254 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 4
  %255 = load float* %254, align 4
  %256 = fadd float %253, %255
  %257 = fmul float %251, %256
  %258 = load float* %wA, align 4
  %259 = fsub float %258, %257
  store float %259, float* %wA, align 4
  %260 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %260, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %9)
  %261 = load float* %iB, align 4
  %262 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 10
  %263 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %262, %struct.b2Vec2* %P)
  %264 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 4
  %265 = load float* %264, align 4
  %266 = fadd float %263, %265
  %267 = fmul float %261, %266
  %268 = load float* %wB, align 4
  %269 = fadd float %268, %267
  store float %269, float* %wB, align 4
  br label %273

; <label>:270                                     ; preds = %225
  %271 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 3
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %271)
  %272 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 4
  store float 0.000000e+00, float* %272, align 4
  br label %273

; <label>:273                                     ; preds = %270, %231
  %274 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  %275 = load i32* %274, align 4
  %276 = load %struct.b2SolverData** %2
  %277 = getelementptr inbounds %struct.b2SolverData* %276, i32 0, i32 2
  %278 = load %struct.b2Velocity** %277, align 4
  %279 = getelementptr inbounds %struct.b2Velocity* %278, i32 %275
  %280 = getelementptr inbounds %struct.b2Velocity* %279, i32 0, i32 0
  %281 = bitcast %struct.b2Vec2* %280 to i8*
  %282 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %281, i8* %282, i32 8, i32 4, i1 false)
  %283 = load float* %wA, align 4
  %284 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 7
  %285 = load i32* %284, align 4
  %286 = load %struct.b2SolverData** %2
  %287 = getelementptr inbounds %struct.b2SolverData* %286, i32 0, i32 2
  %288 = load %struct.b2Velocity** %287, align 4
  %289 = getelementptr inbounds %struct.b2Velocity* %288, i32 %285
  %290 = getelementptr inbounds %struct.b2Velocity* %289, i32 0, i32 1
  store float %283, float* %290, align 4
  %291 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  %292 = load i32* %291, align 4
  %293 = load %struct.b2SolverData** %2
  %294 = getelementptr inbounds %struct.b2SolverData* %293, i32 0, i32 2
  %295 = load %struct.b2Velocity** %294, align 4
  %296 = getelementptr inbounds %struct.b2Velocity* %295, i32 %292
  %297 = getelementptr inbounds %struct.b2Velocity* %296, i32 0, i32 0
  %298 = bitcast %struct.b2Vec2* %297 to i8*
  %299 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %298, i8* %299, i32 8, i32 4, i1 false)
  %300 = load float* %wB, align 4
  %301 = getelementptr inbounds %class.b2FrictionJoint* %10, i32 0, i32 8
  %302 = load i32* %301, align 4
  %303 = load %struct.b2SolverData** %2
  %304 = getelementptr inbounds %struct.b2SolverData* %303, i32 0, i32 2
  %305 = load %struct.b2Velocity** %304, align 4
  %306 = getelementptr inbounds %struct.b2Velocity* %305, i32 %302
  %307 = getelementptr inbounds %struct.b2Velocity* %306, i32 0, i32 1
  store float %300, float* %307, align 4
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

define void @_ZN15b2FrictionJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2FrictionJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %h = alloca float, align 4
  %Cdot = alloca float, align 4
  %impulse = alloca float, align 4
  %oldImpulse = alloca float, align 4
  %maxImpulse = alloca float, align 4
  %Cdot1 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %impulse2 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %oldImpulse3 = alloca %struct.b2Vec2, align 4
  %maxImpulse4 = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %11 = load %class.b2FrictionJoint** %1
  %12 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 7
  %13 = load i32* %12, align 4
  %14 = load %struct.b2SolverData** %2
  %15 = getelementptr inbounds %struct.b2SolverData* %14, i32 0, i32 2
  %16 = load %struct.b2Velocity** %15, align 4
  %17 = getelementptr inbounds %struct.b2Velocity* %16, i32 %13
  %18 = getelementptr inbounds %struct.b2Velocity* %17, i32 0, i32 0
  %19 = bitcast %struct.b2Vec2* %vA to i8*
  %20 = bitcast %struct.b2Vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 7
  %22 = load i32* %21, align 4
  %23 = load %struct.b2SolverData** %2
  %24 = getelementptr inbounds %struct.b2SolverData* %23, i32 0, i32 2
  %25 = load %struct.b2Velocity** %24, align 4
  %26 = getelementptr inbounds %struct.b2Velocity* %25, i32 %22
  %27 = getelementptr inbounds %struct.b2Velocity* %26, i32 0, i32 1
  %28 = load float* %27, align 4
  store float %28, float* %wA, align 4
  %29 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 8
  %30 = load i32* %29, align 4
  %31 = load %struct.b2SolverData** %2
  %32 = getelementptr inbounds %struct.b2SolverData* %31, i32 0, i32 2
  %33 = load %struct.b2Velocity** %32, align 4
  %34 = getelementptr inbounds %struct.b2Velocity* %33, i32 %30
  %35 = getelementptr inbounds %struct.b2Velocity* %34, i32 0, i32 0
  %36 = bitcast %struct.b2Vec2* %vB to i8*
  %37 = bitcast %struct.b2Vec2* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 8, i32 4, i1 false)
  %38 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 8
  %39 = load i32* %38, align 4
  %40 = load %struct.b2SolverData** %2
  %41 = getelementptr inbounds %struct.b2SolverData* %40, i32 0, i32 2
  %42 = load %struct.b2Velocity** %41, align 4
  %43 = getelementptr inbounds %struct.b2Velocity* %42, i32 %39
  %44 = getelementptr inbounds %struct.b2Velocity* %43, i32 0, i32 1
  %45 = load float* %44, align 4
  store float %45, float* %wB, align 4
  %46 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 13
  %47 = load float* %46, align 4
  store float %47, float* %mA, align 4
  %48 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 14
  %49 = load float* %48, align 4
  store float %49, float* %mB, align 4
  %50 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 15
  %51 = load float* %50, align 4
  store float %51, float* %iA, align 4
  %52 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 16
  %53 = load float* %52, align 4
  store float %53, float* %iB, align 4
  %54 = load %struct.b2SolverData** %2
  %55 = getelementptr inbounds %struct.b2SolverData* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.b2TimeStep* %55, i32 0, i32 0
  %57 = load float* %56, align 4
  store float %57, float* %h, align 4
  %58 = load float* %wB, align 4
  %59 = load float* %wA, align 4
  %60 = fsub float %58, %59
  store float %60, float* %Cdot, align 4
  %61 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 18
  %62 = load float* %61, align 4
  %63 = fsub float -0.000000e+00, %62
  %64 = load float* %Cdot, align 4
  %65 = fmul float %63, %64
  store float %65, float* %impulse, align 4
  %66 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 4
  %67 = load float* %66, align 4
  store float %67, float* %oldImpulse, align 4
  %68 = load float* %h, align 4
  %69 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 6
  %70 = load float* %69, align 4
  %71 = fmul float %68, %70
  store float %71, float* %maxImpulse, align 4
  %72 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 4
  %73 = load float* %72, align 4
  %74 = load float* %impulse, align 4
  %75 = fadd float %73, %74
  %76 = load float* %maxImpulse, align 4
  %77 = fsub float -0.000000e+00, %76
  %78 = load float* %maxImpulse, align 4
  %79 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %75, float %77, float %78)
  %80 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 4
  store float %79, float* %80, align 4
  %81 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 4
  %82 = load float* %81, align 4
  %83 = load float* %oldImpulse, align 4
  %84 = fsub float %82, %83
  store float %84, float* %impulse, align 4
  %85 = load float* %iA, align 4
  %86 = load float* %impulse, align 4
  %87 = fmul float %85, %86
  %88 = load float* %wA, align 4
  %89 = fsub float %88, %87
  store float %89, float* %wA, align 4
  %90 = load float* %iB, align 4
  %91 = load float* %impulse, align 4
  %92 = fmul float %90, %91
  %93 = load float* %wB, align 4
  %94 = fadd float %93, %92
  store float %94, float* %wB, align 4
  %95 = load float* %wB, align 4
  %96 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 10
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float %95, %struct.b2Vec2* %96)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %vA)
  %97 = load float* %wA, align 4
  %98 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 9
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %6, float %97, %struct.b2Vec2* %98)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot1, %struct.b2Vec2* %3, %struct.b2Vec2* %6)
  %99 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 17
  call void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Mat22* %99, %struct.b2Vec2* %Cdot1)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %impulse2, %struct.b2Vec2* %7)
  %100 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  %101 = bitcast %struct.b2Vec2* %oldImpulse3 to i8*
  %102 = bitcast %struct.b2Vec2* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %101, i8* %102, i32 8, i32 4, i1 false)
  %103 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %103, %struct.b2Vec2* %impulse2)
  %104 = load float* %h, align 4
  %105 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 5
  %106 = load float* %105, align 4
  %107 = fmul float %104, %106
  store float %107, float* %maxImpulse4, align 4
  %108 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  %109 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %108)
  %110 = load float* %maxImpulse4, align 4
  %111 = load float* %maxImpulse4, align 4
  %112 = fmul float %110, %111
  %113 = fcmp ogt float %109, %112
  br i1 %113, label %114, label %119

; <label>:114                                     ; preds = %0
  %115 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  %116 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %115)
  %117 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  %118 = load float* %maxImpulse4, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %117, float %118)
  br label %119

; <label>:119                                     ; preds = %114, %0
  %120 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 3
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %120, %struct.b2Vec2* %oldImpulse3)
  %121 = bitcast %struct.b2Vec2* %impulse2 to i8*
  %122 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %121, i8* %122, i32 8, i32 4, i1 false)
  %123 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %123, %struct.b2Vec2* %impulse2)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %9)
  %124 = load float* %iA, align 4
  %125 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 9
  %126 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %125, %struct.b2Vec2* %impulse2)
  %127 = fmul float %124, %126
  %128 = load float* %wA, align 4
  %129 = fsub float %128, %127
  store float %129, float* %wA, align 4
  %130 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %130, %struct.b2Vec2* %impulse2)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %10)
  %131 = load float* %iB, align 4
  %132 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 10
  %133 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %132, %struct.b2Vec2* %impulse2)
  %134 = fmul float %131, %133
  %135 = load float* %wB, align 4
  %136 = fadd float %135, %134
  store float %136, float* %wB, align 4
  %137 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 7
  %138 = load i32* %137, align 4
  %139 = load %struct.b2SolverData** %2
  %140 = getelementptr inbounds %struct.b2SolverData* %139, i32 0, i32 2
  %141 = load %struct.b2Velocity** %140, align 4
  %142 = getelementptr inbounds %struct.b2Velocity* %141, i32 %138
  %143 = getelementptr inbounds %struct.b2Velocity* %142, i32 0, i32 0
  %144 = bitcast %struct.b2Vec2* %143 to i8*
  %145 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %144, i8* %145, i32 8, i32 4, i1 false)
  %146 = load float* %wA, align 4
  %147 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 7
  %148 = load i32* %147, align 4
  %149 = load %struct.b2SolverData** %2
  %150 = getelementptr inbounds %struct.b2SolverData* %149, i32 0, i32 2
  %151 = load %struct.b2Velocity** %150, align 4
  %152 = getelementptr inbounds %struct.b2Velocity* %151, i32 %148
  %153 = getelementptr inbounds %struct.b2Velocity* %152, i32 0, i32 1
  store float %146, float* %153, align 4
  %154 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 8
  %155 = load i32* %154, align 4
  %156 = load %struct.b2SolverData** %2
  %157 = getelementptr inbounds %struct.b2SolverData* %156, i32 0, i32 2
  %158 = load %struct.b2Velocity** %157, align 4
  %159 = getelementptr inbounds %struct.b2Velocity* %158, i32 %155
  %160 = getelementptr inbounds %struct.b2Velocity* %159, i32 0, i32 0
  %161 = bitcast %struct.b2Vec2* %160 to i8*
  %162 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %161, i8* %162, i32 8, i32 4, i1 false)
  %163 = load float* %wB, align 4
  %164 = getelementptr inbounds %class.b2FrictionJoint* %11, i32 0, i32 8
  %165 = load i32* %164, align 4
  %166 = load %struct.b2SolverData** %2
  %167 = getelementptr inbounds %struct.b2SolverData* %166, i32 0, i32 2
  %168 = load %struct.b2Velocity** %167, align 4
  %169 = getelementptr inbounds %struct.b2Velocity* %168, i32 %165
  %170 = getelementptr inbounds %struct.b2Velocity* %169, i32 0, i32 1
  store float %163, float* %170, align 4
  ret void
}

define linkonce_odr float @_Z7b2ClampIfET_S0_S0_S0_(float %a, float %low, float %high) inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %a, float* %1, align 4
  store float %low, float* %2, align 4
  store float %high, float* %3, align 4
  %4 = load float* %2, align 4
  %5 = load float* %1, align 4
  %6 = load float* %3, align 4
  %7 = call float @_Z5b2MinIfET_S0_S0_(float %5, float %6)
  %8 = call float @_Z5b2MaxIfET_S0_S0_(float %4, float %7)
  ret float %8
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

define zeroext i1 @_ZN15b2FrictionJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2FrictionJoint* %this, %struct.b2SolverData* %data) nounwind align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %3 = load %class.b2FrictionJoint** %1
  %4 = load %struct.b2SolverData** %2
  ret i1 true
}

define void @_ZNK15b2FrictionJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2FrictionJoint* %this) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 1
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

define void @_ZNK15b2FrictionJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2FrictionJoint* %this) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 2
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK15b2FrictionJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2FrictionJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2FrictionJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2FrictionJoint* %3, i32 0, i32 3
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %4, %struct.b2Vec2* %5)
  ret void
}

define float @_ZNK15b2FrictionJoint17GetReactionTorqueEf(%class.b2FrictionJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2FrictionJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2FrictionJoint* %3, i32 0, i32 4
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  ret float %7
}

define void @_ZN15b2FrictionJoint11SetMaxForceEf(%class.b2FrictionJoint* %this, float %force) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store float %force, float* %2, align 4
  %3 = load %class.b2FrictionJoint** %1
  %4 = load float* %2, align 4
  %5 = call zeroext i1 @_Z9b2IsValidf(float %4)
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load float* %2, align 4
  %8 = fcmp oge float %7, 0.000000e+00
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %12

; <label>:10                                      ; preds = %6, %0
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN15b2FrictionJoint11SetMaxForceEf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load float* %2, align 4
  %14 = getelementptr inbounds %class.b2FrictionJoint* %3, i32 0, i32 5
  store float %13, float* %14, align 4
  ret void
}

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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define float @_ZNK15b2FrictionJoint11GetMaxForceEv(%class.b2FrictionJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 5
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN15b2FrictionJoint12SetMaxTorqueEf(%class.b2FrictionJoint* %this, float %torque) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  store float %torque, float* %2, align 4
  %3 = load %class.b2FrictionJoint** %1
  %4 = load float* %2, align 4
  %5 = call zeroext i1 @_Z9b2IsValidf(float %4)
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load float* %2, align 4
  %8 = fcmp oge float %7, 0.000000e+00
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %12

; <label>:10                                      ; preds = %6, %0
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([44 x i8]* @__PRETTY_FUNCTION__._ZN15b2FrictionJoint12SetMaxTorqueEf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load float* %2, align 4
  %14 = getelementptr inbounds %class.b2FrictionJoint* %3, i32 0, i32 6
  store float %13, float* %14, align 4
  ret void
}

define float @_ZNK15b2FrictionJoint12GetMaxTorqueEv(%class.b2FrictionJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 6
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN15b2FrictionJoint4DumpEv(%class.b2FrictionJoint* %this) align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str6, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str7, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str8, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 5
  %37 = load float* %36, align 4
  %38 = fpext float %37 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str9, i32 0, i32 0), double %38)
  %39 = getelementptr inbounds %class.b2FrictionJoint* %2, i32 0, i32 6
  %40 = load float* %39, align 4
  %41 = fpext float %40 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str10, i32 0, i32 0), double %41)
  %42 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  %43 = getelementptr inbounds %class.b2Joint* %42, i32 0, i32 8
  %44 = load i32* %43, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str11, i32 0, i32 0), i32 %44)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN15b2FrictionJointD1Ev(%class.b2FrictionJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  call void @_ZN15b2FrictionJointD2Ev(%class.b2FrictionJoint* %2)
  ret void
}

define linkonce_odr void @_ZN15b2FrictionJointD0Ev(%class.b2FrictionJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %4 = load %class.b2FrictionJoint** %1
  invoke void @_ZN15b2FrictionJointD1Ev(%class.b2FrictionJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2FrictionJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2FrictionJoint* %4 to i8*
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

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN15b2FrictionJointD2Ev(%class.b2FrictionJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2FrictionJoint*, align 4
  store %class.b2FrictionJoint* %this, %class.b2FrictionJoint** %1, align 4
  %2 = load %class.b2FrictionJoint** %1
  %3 = bitcast %class.b2FrictionJoint* %2 to %class.b2Joint*
  call void @_ZN7b2JointD2Ev(%class.b2Joint* %3)
  ret void
}

define linkonce_odr float @_ZNSt14numeric_limitsIfE8infinityEv() nounwind align 2 {
  ret float 0x7FF0000000000000
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
