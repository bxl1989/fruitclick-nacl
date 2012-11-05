; ModuleID = 'Dynamics/Joints/b2WeldJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2WeldJoint = type { %class.b2Joint, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Vec3, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33 }
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
%struct.b2Vec3 = type { float, float, float }
%struct.b2Mat33 = type { %struct.b2Vec3, %struct.b2Vec3, %struct.b2Vec3 }
%struct.b2WeldJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV11b2WeldJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11b2WeldJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WeldJoint*)* @_ZNK11b2WeldJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WeldJoint*)* @_ZNK11b2WeldJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WeldJoint*, float)* @_ZNK11b2WeldJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2WeldJoint*, float)* @_ZNK11b2WeldJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2WeldJoint*)* @_ZN11b2WeldJoint4DumpEv to i8*), i8* bitcast (void (%class.b2WeldJoint*)* @_ZN11b2WeldJointD1Ev to i8*), i8* bitcast (void (%class.b2WeldJoint*)* @_ZN11b2WeldJointD0Ev to i8*), i8* bitcast (void (%class.b2WeldJoint*, %struct.b2SolverData*)* @_ZN11b2WeldJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2WeldJoint*, %struct.b2SolverData*)* @_ZN11b2WeldJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2WeldJoint*, %struct.b2SolverData*)* @_ZN11b2WeldJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [22 x i8] c"  b2WeldJointDef jd;\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"  jd.referenceAngle = %.15lef;\0A\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"  jd.frequencyHz = %.15lef;\0A\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"  jd.dampingRatio = %.15lef;\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11b2WeldJoint = constant [14 x i8] c"11b2WeldJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI11b2WeldJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11b2WeldJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN11b2WeldJointC1EPK14b2WeldJointDef = alias void (%class.b2WeldJoint*, %struct.b2WeldJointDef*)* @_ZN11b2WeldJointC2EPK14b2WeldJointDef

define void @_ZN14b2WeldJointDef10InitializeEP6b2BodyS1_RK6b2Vec2(%struct.b2WeldJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %anchor) align 2 {
  %1 = alloca %struct.b2WeldJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %struct.b2WeldJointDef* %this, %struct.b2WeldJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor, %struct.b2Vec2** %4, align 4
  %7 = load %struct.b2WeldJointDef** %1
  %8 = load %class.b2Body** %2, align 4
  %9 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %10 = getelementptr inbounds %struct.b2JointDef* %9, i32 0, i32 2
  store %class.b2Body* %8, %class.b2Body** %10, align 4
  %11 = load %class.b2Body** %3, align 4
  %12 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %13 = getelementptr inbounds %struct.b2JointDef* %12, i32 0, i32 3
  store %class.b2Body* %11, %class.b2Body** %13, align 4
  %14 = getelementptr inbounds %struct.b2WeldJointDef* %7, i32 0, i32 1
  %15 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %16 = getelementptr inbounds %struct.b2JointDef* %15, i32 0, i32 2
  %17 = load %class.b2Body** %16, align 4
  %18 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %5, %class.b2Body* %17, %struct.b2Vec2* %18)
  %19 = bitcast %struct.b2Vec2* %14 to i8*
  %20 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = getelementptr inbounds %struct.b2WeldJointDef* %7, i32 0, i32 2
  %22 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %23 = getelementptr inbounds %struct.b2JointDef* %22, i32 0, i32 3
  %24 = load %class.b2Body** %23, align 4
  %25 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %24, %struct.b2Vec2* %25)
  %26 = bitcast %struct.b2Vec2* %21 to i8*
  %27 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %28 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %29 = getelementptr inbounds %struct.b2JointDef* %28, i32 0, i32 3
  %30 = load %class.b2Body** %29, align 4
  %31 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %30)
  %32 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  %33 = getelementptr inbounds %struct.b2JointDef* %32, i32 0, i32 2
  %34 = load %class.b2Body** %33, align 4
  %35 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %34)
  %36 = fsub float %31, %35
  %37 = getelementptr inbounds %struct.b2WeldJointDef* %7, i32 0, i32 3
  store float %36, float* %37, align 4
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

define linkonce_odr float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.b2Sweep* %3, i32 0, i32 4
  %5 = load float* %4, align 4
  ret float %5
}

define void @_ZN11b2WeldJointC2EPK14b2WeldJointDef(%class.b2WeldJoint* %this, %struct.b2WeldJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca %struct.b2WeldJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store %struct.b2WeldJointDef* %def, %struct.b2WeldJointDef** %2, align 4
  %5 = load %class.b2WeldJoint** %1
  %6 = bitcast %class.b2WeldJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2WeldJointDef** %2, align 4
  %8 = bitcast %struct.b2WeldJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2WeldJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV11b2WeldJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %50

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 5
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %50

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 8
  invoke void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %14)
          to label %15 unwind label %50

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %50

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %50

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 13
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %50

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 14
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %50

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 19
  invoke void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %24)
          to label %25 unwind label %50

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 4
  %27 = load %struct.b2WeldJointDef** %2, align 4
  %28 = getelementptr inbounds %struct.b2WeldJointDef* %27, i32 0, i32 1
  %29 = bitcast %struct.b2Vec2* %26 to i8*
  %30 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %31 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 5
  %32 = load %struct.b2WeldJointDef** %2, align 4
  %33 = getelementptr inbounds %struct.b2WeldJointDef* %32, i32 0, i32 2
  %34 = bitcast %struct.b2Vec2* %31 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = load %struct.b2WeldJointDef** %2, align 4
  %37 = getelementptr inbounds %struct.b2WeldJointDef* %36, i32 0, i32 3
  %38 = load float* %37, align 4
  %39 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 6
  store float %38, float* %39, align 4
  %40 = load %struct.b2WeldJointDef** %2, align 4
  %41 = getelementptr inbounds %struct.b2WeldJointDef* %40, i32 0, i32 4
  %42 = load float* %41, align 4
  %43 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 1
  store float %42, float* %43, align 4
  %44 = load %struct.b2WeldJointDef** %2, align 4
  %45 = getelementptr inbounds %struct.b2WeldJointDef* %44, i32 0, i32 5
  %46 = load float* %45, align 4
  %47 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 2
  store float %46, float* %47, align 4
  %48 = getelementptr inbounds %class.b2WeldJoint* %5, i32 0, i32 8
  invoke void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %48)
          to label %49 unwind label %50

; <label>:49                                      ; preds = %25
  ret void

; <label>:50                                      ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %0
  %51 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %3
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %4
  %54 = bitcast %class.b2WeldJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %54)
          to label %55 unwind label %62

; <label>:55                                      ; preds = %50
  br label %56

; <label>:56                                      ; preds = %55
  %57 = load i8** %3
  %58 = load i8** %3
  %59 = load i32* %4
  %60 = insertvalue { i8*, i32 } undef, i8* %58, 0
  %61 = insertvalue { i8*, i32 } %60, i32 %59, 1
  resume { i8*, i32 } %61

; <label>:62                                      ; preds = %50
  %63 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define linkonce_odr void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
  call void @_ZN6b2Vec3C2Ev(%struct.b2Vec3* %2)
  ret void
}

define linkonce_odr void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  %2 = load %struct.b2Mat33** %1
  call void @_ZN7b2Mat33C2Ev(%struct.b2Mat33* %2)
  ret void
}

define linkonce_odr void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %this) nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
  %3 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 0
  store float 0.000000e+00, float* %3, align 4
  %4 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 1
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 2
  store float 0.000000e+00, float* %5, align 4
  ret void
}

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN11b2WeldJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2WeldJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
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
  %K = alloca %struct.b2Mat33, align 4
  %invM = alloca float, align 4
  %m = alloca float, align 4
  %C = alloca float, align 4
  %omega = alloca float, align 4
  %d = alloca float, align 4
  %k = alloca float, align 4
  %h = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2WeldJoint** %1
  %10 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %11 = getelementptr inbounds %class.b2Joint* %10, i32 0, i32 6
  %12 = load %class.b2Body** %11, align 4
  %13 = getelementptr inbounds %class.b2Body* %12, i32 0, i32 2
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  store i32 %14, i32* %15, align 4
  %16 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %17 = getelementptr inbounds %class.b2Joint* %16, i32 0, i32 7
  %18 = load %class.b2Body** %17, align 4
  %19 = getelementptr inbounds %class.b2Body* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 13
  %23 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %24 = getelementptr inbounds %class.b2Joint* %23, i32 0, i32 6
  %25 = load %class.b2Body** %24, align 4
  %26 = getelementptr inbounds %class.b2Body* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.b2Sweep* %26, i32 0, i32 0
  %28 = bitcast %struct.b2Vec2* %22 to i8*
  %29 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 14
  %31 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %32 = getelementptr inbounds %class.b2Joint* %31, i32 0, i32 7
  %33 = load %class.b2Body** %32, align 4
  %34 = getelementptr inbounds %class.b2Body* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.b2Sweep* %34, i32 0, i32 0
  %36 = bitcast %struct.b2Vec2* %30 to i8*
  %37 = bitcast %struct.b2Vec2* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 8, i32 4, i1 false)
  %38 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %39 = getelementptr inbounds %class.b2Joint* %38, i32 0, i32 6
  %40 = load %class.b2Body** %39, align 4
  %41 = getelementptr inbounds %class.b2Body* %40, i32 0, i32 17
  %42 = load float* %41, align 4
  %43 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 15
  store float %42, float* %43, align 4
  %44 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %45 = getelementptr inbounds %class.b2Joint* %44, i32 0, i32 7
  %46 = load %class.b2Body** %45, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 17
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 16
  store float %48, float* %49, align 4
  %50 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 6
  %52 = load %class.b2Body** %51, align 4
  %53 = getelementptr inbounds %class.b2Body* %52, i32 0, i32 19
  %54 = load float* %53, align 4
  %55 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 17
  store float %54, float* %55, align 4
  %56 = bitcast %class.b2WeldJoint* %9 to %class.b2Joint*
  %57 = getelementptr inbounds %class.b2Joint* %56, i32 0, i32 7
  %58 = load %class.b2Body** %57, align 4
  %59 = getelementptr inbounds %class.b2Body* %58, i32 0, i32 19
  %60 = load float* %59, align 4
  %61 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 18
  store float %60, float* %61, align 4
  %62 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %63 = load i32* %62, align 4
  %64 = load %struct.b2SolverData** %2
  %65 = getelementptr inbounds %struct.b2SolverData* %64, i32 0, i32 1
  %66 = load %struct.b2Position** %65, align 4
  %67 = getelementptr inbounds %struct.b2Position* %66, i32 %63
  %68 = getelementptr inbounds %struct.b2Position* %67, i32 0, i32 0
  %69 = bitcast %struct.b2Vec2* %cA to i8*
  %70 = bitcast %struct.b2Vec2* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 8, i32 4, i1 false)
  %71 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %72 = load i32* %71, align 4
  %73 = load %struct.b2SolverData** %2
  %74 = getelementptr inbounds %struct.b2SolverData* %73, i32 0, i32 1
  %75 = load %struct.b2Position** %74, align 4
  %76 = getelementptr inbounds %struct.b2Position* %75, i32 %72
  %77 = getelementptr inbounds %struct.b2Position* %76, i32 0, i32 1
  %78 = load float* %77, align 4
  store float %78, float* %aA, align 4
  %79 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %80 = load i32* %79, align 4
  %81 = load %struct.b2SolverData** %2
  %82 = getelementptr inbounds %struct.b2SolverData* %81, i32 0, i32 2
  %83 = load %struct.b2Velocity** %82, align 4
  %84 = getelementptr inbounds %struct.b2Velocity* %83, i32 %80
  %85 = getelementptr inbounds %struct.b2Velocity* %84, i32 0, i32 0
  %86 = bitcast %struct.b2Vec2* %vA to i8*
  %87 = bitcast %struct.b2Vec2* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %86, i8* %87, i32 8, i32 4, i1 false)
  %88 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %89 = load i32* %88, align 4
  %90 = load %struct.b2SolverData** %2
  %91 = getelementptr inbounds %struct.b2SolverData* %90, i32 0, i32 2
  %92 = load %struct.b2Velocity** %91, align 4
  %93 = getelementptr inbounds %struct.b2Velocity* %92, i32 %89
  %94 = getelementptr inbounds %struct.b2Velocity* %93, i32 0, i32 1
  %95 = load float* %94, align 4
  store float %95, float* %wA, align 4
  %96 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %97 = load i32* %96, align 4
  %98 = load %struct.b2SolverData** %2
  %99 = getelementptr inbounds %struct.b2SolverData* %98, i32 0, i32 1
  %100 = load %struct.b2Position** %99, align 4
  %101 = getelementptr inbounds %struct.b2Position* %100, i32 %97
  %102 = getelementptr inbounds %struct.b2Position* %101, i32 0, i32 0
  %103 = bitcast %struct.b2Vec2* %cB to i8*
  %104 = bitcast %struct.b2Vec2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %106 = load i32* %105, align 4
  %107 = load %struct.b2SolverData** %2
  %108 = getelementptr inbounds %struct.b2SolverData* %107, i32 0, i32 1
  %109 = load %struct.b2Position** %108, align 4
  %110 = getelementptr inbounds %struct.b2Position* %109, i32 %106
  %111 = getelementptr inbounds %struct.b2Position* %110, i32 0, i32 1
  %112 = load float* %111, align 4
  store float %112, float* %aB, align 4
  %113 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %114 = load i32* %113, align 4
  %115 = load %struct.b2SolverData** %2
  %116 = getelementptr inbounds %struct.b2SolverData* %115, i32 0, i32 2
  %117 = load %struct.b2Velocity** %116, align 4
  %118 = getelementptr inbounds %struct.b2Velocity* %117, i32 %114
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 0, i32 0
  %120 = bitcast %struct.b2Vec2* %vB to i8*
  %121 = bitcast %struct.b2Vec2* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %121, i32 8, i32 4, i1 false)
  %122 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %123 = load i32* %122, align 4
  %124 = load %struct.b2SolverData** %2
  %125 = getelementptr inbounds %struct.b2SolverData* %124, i32 0, i32 2
  %126 = load %struct.b2Velocity** %125, align 4
  %127 = getelementptr inbounds %struct.b2Velocity* %126, i32 %123
  %128 = getelementptr inbounds %struct.b2Velocity* %127, i32 0, i32 1
  %129 = load float* %128, align 4
  store float %129, float* %wB, align 4
  %130 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %130)
  %131 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %131)
  %132 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %133 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 4
  %134 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 13
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %133, %struct.b2Vec2* %134)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %135 = bitcast %struct.b2Vec2* %132 to i8*
  %136 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* %136, i32 8, i32 4, i1 false)
  %137 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %138 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 5
  %139 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 14
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %138, %struct.b2Vec2* %139)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %140 = bitcast %struct.b2Vec2* %137 to i8*
  %141 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %141, i32 8, i32 4, i1 false)
  %142 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 15
  %143 = load float* %142, align 4
  store float %143, float* %mA, align 4
  %144 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 16
  %145 = load float* %144, align 4
  store float %145, float* %mB, align 4
  %146 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 17
  %147 = load float* %146, align 4
  store float %147, float* %iA, align 4
  %148 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 18
  %149 = load float* %148, align 4
  store float %149, float* %iB, align 4
  call void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %K)
  %150 = load float* %mA, align 4
  %151 = load float* %mB, align 4
  %152 = fadd float %150, %151
  %153 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %154 = getelementptr inbounds %struct.b2Vec2* %153, i32 0, i32 1
  %155 = load float* %154, align 4
  %156 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %157 = getelementptr inbounds %struct.b2Vec2* %156, i32 0, i32 1
  %158 = load float* %157, align 4
  %159 = fmul float %155, %158
  %160 = load float* %iA, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %152, %161
  %163 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %164 = getelementptr inbounds %struct.b2Vec2* %163, i32 0, i32 1
  %165 = load float* %164, align 4
  %166 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %167 = getelementptr inbounds %struct.b2Vec2* %166, i32 0, i32 1
  %168 = load float* %167, align 4
  %169 = fmul float %165, %168
  %170 = load float* %iB, align 4
  %171 = fmul float %169, %170
  %172 = fadd float %162, %171
  %173 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %174 = getelementptr inbounds %struct.b2Vec3* %173, i32 0, i32 0
  store float %172, float* %174, align 4
  %175 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %176 = getelementptr inbounds %struct.b2Vec2* %175, i32 0, i32 1
  %177 = load float* %176, align 4
  %178 = fsub float -0.000000e+00, %177
  %179 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %180 = getelementptr inbounds %struct.b2Vec2* %179, i32 0, i32 0
  %181 = load float* %180, align 4
  %182 = fmul float %178, %181
  %183 = load float* %iA, align 4
  %184 = fmul float %182, %183
  %185 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %186 = getelementptr inbounds %struct.b2Vec2* %185, i32 0, i32 1
  %187 = load float* %186, align 4
  %188 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %189 = getelementptr inbounds %struct.b2Vec2* %188, i32 0, i32 0
  %190 = load float* %189, align 4
  %191 = fmul float %187, %190
  %192 = load float* %iB, align 4
  %193 = fmul float %191, %192
  %194 = fsub float %184, %193
  %195 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %196 = getelementptr inbounds %struct.b2Vec3* %195, i32 0, i32 0
  store float %194, float* %196, align 4
  %197 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %198 = getelementptr inbounds %struct.b2Vec2* %197, i32 0, i32 1
  %199 = load float* %198, align 4
  %200 = fsub float -0.000000e+00, %199
  %201 = load float* %iA, align 4
  %202 = fmul float %200, %201
  %203 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %204 = getelementptr inbounds %struct.b2Vec2* %203, i32 0, i32 1
  %205 = load float* %204, align 4
  %206 = load float* %iB, align 4
  %207 = fmul float %205, %206
  %208 = fsub float %202, %207
  %209 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %210 = getelementptr inbounds %struct.b2Vec3* %209, i32 0, i32 0
  store float %208, float* %210, align 4
  %211 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %212 = getelementptr inbounds %struct.b2Vec3* %211, i32 0, i32 0
  %213 = load float* %212, align 4
  %214 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %215 = getelementptr inbounds %struct.b2Vec3* %214, i32 0, i32 1
  store float %213, float* %215, align 4
  %216 = load float* %mA, align 4
  %217 = load float* %mB, align 4
  %218 = fadd float %216, %217
  %219 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %220 = getelementptr inbounds %struct.b2Vec2* %219, i32 0, i32 0
  %221 = load float* %220, align 4
  %222 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %223 = getelementptr inbounds %struct.b2Vec2* %222, i32 0, i32 0
  %224 = load float* %223, align 4
  %225 = fmul float %221, %224
  %226 = load float* %iA, align 4
  %227 = fmul float %225, %226
  %228 = fadd float %218, %227
  %229 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %230 = getelementptr inbounds %struct.b2Vec2* %229, i32 0, i32 0
  %231 = load float* %230, align 4
  %232 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %233 = getelementptr inbounds %struct.b2Vec2* %232, i32 0, i32 0
  %234 = load float* %233, align 4
  %235 = fmul float %231, %234
  %236 = load float* %iB, align 4
  %237 = fmul float %235, %236
  %238 = fadd float %228, %237
  %239 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %240 = getelementptr inbounds %struct.b2Vec3* %239, i32 0, i32 1
  store float %238, float* %240, align 4
  %241 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %242 = getelementptr inbounds %struct.b2Vec2* %241, i32 0, i32 0
  %243 = load float* %242, align 4
  %244 = load float* %iA, align 4
  %245 = fmul float %243, %244
  %246 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %247 = getelementptr inbounds %struct.b2Vec2* %246, i32 0, i32 0
  %248 = load float* %247, align 4
  %249 = load float* %iB, align 4
  %250 = fmul float %248, %249
  %251 = fadd float %245, %250
  %252 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %253 = getelementptr inbounds %struct.b2Vec3* %252, i32 0, i32 1
  store float %251, float* %253, align 4
  %254 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %255 = getelementptr inbounds %struct.b2Vec3* %254, i32 0, i32 0
  %256 = load float* %255, align 4
  %257 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %258 = getelementptr inbounds %struct.b2Vec3* %257, i32 0, i32 2
  store float %256, float* %258, align 4
  %259 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %260 = getelementptr inbounds %struct.b2Vec3* %259, i32 0, i32 1
  %261 = load float* %260, align 4
  %262 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %263 = getelementptr inbounds %struct.b2Vec3* %262, i32 0, i32 2
  store float %261, float* %263, align 4
  %264 = load float* %iA, align 4
  %265 = load float* %iB, align 4
  %266 = fadd float %264, %265
  %267 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %268 = getelementptr inbounds %struct.b2Vec3* %267, i32 0, i32 2
  store float %266, float* %268, align 4
  %269 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 1
  %270 = load float* %269, align 4
  %271 = fcmp ogt float %270, 0.000000e+00
  br i1 %271, label %272, label %353

; <label>:272                                     ; preds = %0
  %273 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 19
  call void @_ZNK7b2Mat3312GetInverse22EPS_(%struct.b2Mat33* %K, %struct.b2Mat33* %273)
  %274 = load float* %iA, align 4
  %275 = load float* %iB, align 4
  %276 = fadd float %274, %275
  store float %276, float* %invM, align 4
  %277 = load float* %invM, align 4
  %278 = fcmp ogt float %277, 0.000000e+00
  br i1 %278, label %279, label %282

; <label>:279                                     ; preds = %272
  %280 = load float* %invM, align 4
  %281 = fdiv float 1.000000e+00, %280
  br label %283

; <label>:282                                     ; preds = %272
  br label %283

; <label>:283                                     ; preds = %282, %279
  %284 = phi float [ %281, %279 ], [ 0.000000e+00, %282 ]
  store float %284, float* %m, align 4
  %285 = load float* %aB, align 4
  %286 = load float* %aA, align 4
  %287 = fsub float %285, %286
  %288 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 6
  %289 = load float* %288, align 4
  %290 = fsub float %287, %289
  store float %290, float* %C, align 4
  %291 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 1
  %292 = load float* %291, align 4
  %293 = fmul float 0x401921FB60000000, %292
  store float %293, float* %omega, align 4
  %294 = load float* %m, align 4
  %295 = fmul float 2.000000e+00, %294
  %296 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 2
  %297 = load float* %296, align 4
  %298 = fmul float %295, %297
  %299 = load float* %omega, align 4
  %300 = fmul float %298, %299
  store float %300, float* %d, align 4
  %301 = load float* %m, align 4
  %302 = load float* %omega, align 4
  %303 = fmul float %301, %302
  %304 = load float* %omega, align 4
  %305 = fmul float %303, %304
  store float %305, float* %k, align 4
  %306 = load %struct.b2SolverData** %2
  %307 = getelementptr inbounds %struct.b2SolverData* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.b2TimeStep* %307, i32 0, i32 0
  %309 = load float* %308, align 4
  store float %309, float* %h, align 4
  %310 = load float* %h, align 4
  %311 = load float* %d, align 4
  %312 = load float* %h, align 4
  %313 = load float* %k, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %311, %314
  %316 = fmul float %310, %315
  %317 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  store float %316, float* %317, align 4
  %318 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  %319 = load float* %318, align 4
  %320 = fcmp une float %319, 0.000000e+00
  br i1 %320, label %321, label %325

; <label>:321                                     ; preds = %283
  %322 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  %323 = load float* %322, align 4
  %324 = fdiv float 1.000000e+00, %323
  br label %326

; <label>:325                                     ; preds = %283
  br label %326

; <label>:326                                     ; preds = %325, %321
  %327 = phi float [ %324, %321 ], [ 0.000000e+00, %325 ]
  %328 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  store float %327, float* %328, align 4
  %329 = load float* %C, align 4
  %330 = load float* %h, align 4
  %331 = fmul float %329, %330
  %332 = load float* %k, align 4
  %333 = fmul float %331, %332
  %334 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  %335 = load float* %334, align 4
  %336 = fmul float %333, %335
  %337 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 3
  store float %336, float* %337, align 4
  %338 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  %339 = load float* %338, align 4
  %340 = load float* %invM, align 4
  %341 = fadd float %340, %339
  store float %341, float* %invM, align 4
  %342 = load float* %invM, align 4
  %343 = fcmp une float %342, 0.000000e+00
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %326
  %345 = load float* %invM, align 4
  %346 = fdiv float 1.000000e+00, %345
  br label %348

; <label>:347                                     ; preds = %326
  br label %348

; <label>:348                                     ; preds = %347, %344
  %349 = phi float [ %346, %344 ], [ 0.000000e+00, %347 ]
  %350 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 19
  %351 = getelementptr inbounds %struct.b2Mat33* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.b2Vec3* %351, i32 0, i32 2
  store float %349, float* %352, align 4
  br label %357

; <label>:353                                     ; preds = %0
  %354 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 19
  call void @_ZNK7b2Mat3315GetSymInverse33EPS_(%struct.b2Mat33* %K, %struct.b2Mat33* %354)
  %355 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 7
  store float 0.000000e+00, float* %355, align 4
  %356 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 3
  store float 0.000000e+00, float* %356, align 4
  br label %357

; <label>:357                                     ; preds = %353, %348
  %358 = load %struct.b2SolverData** %2
  %359 = getelementptr inbounds %struct.b2SolverData* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.b2TimeStep* %359, i32 0, i32 5
  %361 = load i8* %360, align 1
  %362 = trunc i8 %361 to i1
  br i1 %362, label %363, label %397

; <label>:363                                     ; preds = %357
  %364 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  %365 = load %struct.b2SolverData** %2
  %366 = getelementptr inbounds %struct.b2SolverData* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.b2TimeStep* %366, i32 0, i32 2
  %368 = load float* %367, align 4
  call void @_ZN6b2Vec3mLEf(%struct.b2Vec3* %364, float %368)
  %369 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  %370 = getelementptr inbounds %struct.b2Vec3* %369, i32 0, i32 0
  %371 = load float* %370, align 4
  %372 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  %373 = getelementptr inbounds %struct.b2Vec3* %372, i32 0, i32 1
  %374 = load float* %373, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %371, float %374)
  %375 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %375, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %7)
  %376 = load float* %iA, align 4
  %377 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 11
  %378 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %377, %struct.b2Vec2* %P)
  %379 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  %380 = getelementptr inbounds %struct.b2Vec3* %379, i32 0, i32 2
  %381 = load float* %380, align 4
  %382 = fadd float %378, %381
  %383 = fmul float %376, %382
  %384 = load float* %wA, align 4
  %385 = fsub float %384, %383
  store float %385, float* %wA, align 4
  %386 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %386, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %8)
  %387 = load float* %iB, align 4
  %388 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 12
  %389 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %388, %struct.b2Vec2* %P)
  %390 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  %391 = getelementptr inbounds %struct.b2Vec3* %390, i32 0, i32 2
  %392 = load float* %391, align 4
  %393 = fadd float %389, %392
  %394 = fmul float %387, %393
  %395 = load float* %wB, align 4
  %396 = fadd float %395, %394
  store float %396, float* %wB, align 4
  br label %399

; <label>:397                                     ; preds = %357
  %398 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 8
  call void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %398)
  br label %399

; <label>:399                                     ; preds = %397, %363
  %400 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %401 = load i32* %400, align 4
  %402 = load %struct.b2SolverData** %2
  %403 = getelementptr inbounds %struct.b2SolverData* %402, i32 0, i32 2
  %404 = load %struct.b2Velocity** %403, align 4
  %405 = getelementptr inbounds %struct.b2Velocity* %404, i32 %401
  %406 = getelementptr inbounds %struct.b2Velocity* %405, i32 0, i32 0
  %407 = bitcast %struct.b2Vec2* %406 to i8*
  %408 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %407, i8* %408, i32 8, i32 4, i1 false)
  %409 = load float* %wA, align 4
  %410 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 9
  %411 = load i32* %410, align 4
  %412 = load %struct.b2SolverData** %2
  %413 = getelementptr inbounds %struct.b2SolverData* %412, i32 0, i32 2
  %414 = load %struct.b2Velocity** %413, align 4
  %415 = getelementptr inbounds %struct.b2Velocity* %414, i32 %411
  %416 = getelementptr inbounds %struct.b2Velocity* %415, i32 0, i32 1
  store float %409, float* %416, align 4
  %417 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %418 = load i32* %417, align 4
  %419 = load %struct.b2SolverData** %2
  %420 = getelementptr inbounds %struct.b2SolverData* %419, i32 0, i32 2
  %421 = load %struct.b2Velocity** %420, align 4
  %422 = getelementptr inbounds %struct.b2Velocity* %421, i32 %418
  %423 = getelementptr inbounds %struct.b2Velocity* %422, i32 0, i32 0
  %424 = bitcast %struct.b2Vec2* %423 to i8*
  %425 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %424, i8* %425, i32 8, i32 4, i1 false)
  %426 = load float* %wB, align 4
  %427 = getelementptr inbounds %class.b2WeldJoint* %9, i32 0, i32 10
  %428 = load i32* %427, align 4
  %429 = load %struct.b2SolverData** %2
  %430 = getelementptr inbounds %struct.b2SolverData* %429, i32 0, i32 2
  %431 = load %struct.b2Velocity** %430, align 4
  %432 = getelementptr inbounds %struct.b2Velocity* %431, i32 %428
  %433 = getelementptr inbounds %struct.b2Velocity* %432, i32 0, i32 1
  store float %426, float* %433, align 4
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

declare void @_ZNK7b2Mat3312GetInverse22EPS_(%struct.b2Mat33*, %struct.b2Mat33*)

declare void @_ZNK7b2Mat3315GetSymInverse33EPS_(%struct.b2Mat33*, %struct.b2Mat33*)

define linkonce_odr void @_ZN6b2Vec3mLEf(%struct.b2Vec3* %this, float %s) nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca float, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  store float %s, float* %2, align 4
  %3 = load %struct.b2Vec3** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %6, %4
  store float %7, float* %5, align 4
  %8 = load float* %2, align 4
  %9 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 1
  %10 = load float* %9, align 4
  %11 = fmul float %10, %8
  store float %11, float* %9, align 4
  %12 = load float* %2, align 4
  %13 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 2
  %14 = load float* %13, align 4
  %15 = fmul float %14, %12
  store float %15, float* %13, align 4
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

define void @_ZN11b2WeldJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2WeldJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %Cdot2 = alloca float, align 4
  %impulse2 = alloca float, align 4
  %Cdot1 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %impulse1 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %P = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %Cdot11 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %Cdot22 = alloca float, align 4
  %Cdot = alloca %struct.b2Vec3, align 4
  %impulse = alloca %struct.b2Vec3, align 4
  %14 = alloca %struct.b2Vec3, align 4
  %P3 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %17 = load %class.b2WeldJoint** %1
  %18 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 9
  %19 = load i32* %18, align 4
  %20 = load %struct.b2SolverData** %2
  %21 = getelementptr inbounds %struct.b2SolverData* %20, i32 0, i32 2
  %22 = load %struct.b2Velocity** %21, align 4
  %23 = getelementptr inbounds %struct.b2Velocity* %22, i32 %19
  %24 = getelementptr inbounds %struct.b2Velocity* %23, i32 0, i32 0
  %25 = bitcast %struct.b2Vec2* %vA to i8*
  %26 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 4, i1 false)
  %27 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 9
  %28 = load i32* %27, align 4
  %29 = load %struct.b2SolverData** %2
  %30 = getelementptr inbounds %struct.b2SolverData* %29, i32 0, i32 2
  %31 = load %struct.b2Velocity** %30, align 4
  %32 = getelementptr inbounds %struct.b2Velocity* %31, i32 %28
  %33 = getelementptr inbounds %struct.b2Velocity* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  store float %34, float* %wA, align 4
  %35 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 10
  %36 = load i32* %35, align 4
  %37 = load %struct.b2SolverData** %2
  %38 = getelementptr inbounds %struct.b2SolverData* %37, i32 0, i32 2
  %39 = load %struct.b2Velocity** %38, align 4
  %40 = getelementptr inbounds %struct.b2Velocity* %39, i32 %36
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 0, i32 0
  %42 = bitcast %struct.b2Vec2* %vB to i8*
  %43 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 10
  %45 = load i32* %44, align 4
  %46 = load %struct.b2SolverData** %2
  %47 = getelementptr inbounds %struct.b2SolverData* %46, i32 0, i32 2
  %48 = load %struct.b2Velocity** %47, align 4
  %49 = getelementptr inbounds %struct.b2Velocity* %48, i32 %45
  %50 = getelementptr inbounds %struct.b2Velocity* %49, i32 0, i32 1
  %51 = load float* %50, align 4
  store float %51, float* %wB, align 4
  %52 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 15
  %53 = load float* %52, align 4
  store float %53, float* %mA, align 4
  %54 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 16
  %55 = load float* %54, align 4
  store float %55, float* %mB, align 4
  %56 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 17
  %57 = load float* %56, align 4
  store float %57, float* %iA, align 4
  %58 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 18
  %59 = load float* %58, align 4
  store float %59, float* %iB, align 4
  %60 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 1
  %61 = load float* %60, align 4
  %62 = fcmp ogt float %61, 0.000000e+00
  br i1 %62, label %63, label %132

; <label>:63                                      ; preds = %0
  %64 = load float* %wB, align 4
  %65 = load float* %wA, align 4
  %66 = fsub float %64, %65
  store float %66, float* %Cdot2, align 4
  %67 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 19
  %68 = getelementptr inbounds %struct.b2Mat33* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.b2Vec3* %68, i32 0, i32 2
  %70 = load float* %69, align 4
  %71 = fsub float -0.000000e+00, %70
  %72 = load float* %Cdot2, align 4
  %73 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 3
  %74 = load float* %73, align 4
  %75 = fadd float %72, %74
  %76 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 7
  %77 = load float* %76, align 4
  %78 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 8
  %79 = getelementptr inbounds %struct.b2Vec3* %78, i32 0, i32 2
  %80 = load float* %79, align 4
  %81 = fmul float %77, %80
  %82 = fadd float %75, %81
  %83 = fmul float %71, %82
  store float %83, float* %impulse2, align 4
  %84 = load float* %impulse2, align 4
  %85 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 8
  %86 = getelementptr inbounds %struct.b2Vec3* %85, i32 0, i32 2
  %87 = load float* %86, align 4
  %88 = fadd float %87, %84
  store float %88, float* %86, align 4
  %89 = load float* %iA, align 4
  %90 = load float* %impulse2, align 4
  %91 = fmul float %89, %90
  %92 = load float* %wA, align 4
  %93 = fsub float %92, %91
  store float %93, float* %wA, align 4
  %94 = load float* %iB, align 4
  %95 = load float* %impulse2, align 4
  %96 = fmul float %94, %95
  %97 = load float* %wB, align 4
  %98 = fadd float %97, %96
  store float %98, float* %wB, align 4
  %99 = load float* %wB, align 4
  %100 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 12
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float %99, %struct.b2Vec2* %100)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %vA)
  %101 = load float* %wA, align 4
  %102 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 11
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %6, float %101, %struct.b2Vec2* %102)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot1, %struct.b2Vec2* %3, %struct.b2Vec2* %6)
  %103 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 19
  call void @_Z7b2Mul22RK7b2Mat33RK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Mat33* %103, %struct.b2Vec2* %Cdot1)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %impulse1, %struct.b2Vec2* %7)
  %104 = getelementptr inbounds %struct.b2Vec2* %impulse1, i32 0, i32 0
  %105 = load float* %104, align 4
  %106 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 8
  %107 = getelementptr inbounds %struct.b2Vec3* %106, i32 0, i32 0
  %108 = load float* %107, align 4
  %109 = fadd float %108, %105
  store float %109, float* %107, align 4
  %110 = getelementptr inbounds %struct.b2Vec2* %impulse1, i32 0, i32 1
  %111 = load float* %110, align 4
  %112 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 8
  %113 = getelementptr inbounds %struct.b2Vec3* %112, i32 0, i32 1
  %114 = load float* %113, align 4
  %115 = fadd float %114, %111
  store float %115, float* %113, align 4
  %116 = bitcast %struct.b2Vec2* %P to i8*
  %117 = bitcast %struct.b2Vec2* %impulse1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %116, i8* %117, i32 8, i32 4, i1 false)
  %118 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %118, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %8)
  %119 = load float* %iA, align 4
  %120 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 11
  %121 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %120, %struct.b2Vec2* %P)
  %122 = fmul float %119, %121
  %123 = load float* %wA, align 4
  %124 = fsub float %123, %122
  store float %124, float* %wA, align 4
  %125 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %125, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %9)
  %126 = load float* %iB, align 4
  %127 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 12
  %128 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %127, %struct.b2Vec2* %P)
  %129 = fmul float %126, %128
  %130 = load float* %wB, align 4
  %131 = fadd float %130, %129
  store float %131, float* %wB, align 4
  br label %171

; <label>:132                                     ; preds = %0
  %133 = load float* %wB, align 4
  %134 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 12
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %12, float %133, %struct.b2Vec2* %134)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %vB, %struct.b2Vec2* %12)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %11, %struct.b2Vec2* %vA)
  %135 = load float* %wA, align 4
  %136 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 11
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %13, float %135, %struct.b2Vec2* %136)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot11, %struct.b2Vec2* %10, %struct.b2Vec2* %13)
  %137 = load float* %wB, align 4
  %138 = load float* %wA, align 4
  %139 = fsub float %137, %138
  store float %139, float* %Cdot22, align 4
  %140 = getelementptr inbounds %struct.b2Vec2* %Cdot11, i32 0, i32 0
  %141 = load float* %140, align 4
  %142 = getelementptr inbounds %struct.b2Vec2* %Cdot11, i32 0, i32 1
  %143 = load float* %142, align 4
  %144 = load float* %Cdot22, align 4
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %Cdot, float %141, float %143, float %144)
  %145 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 19
  call void @_Z5b2MulRK7b2Mat33RK6b2Vec3(%struct.b2Vec3* sret %14, %struct.b2Mat33* %145, %struct.b2Vec3* %Cdot)
  call void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* sret %impulse, %struct.b2Vec3* %14)
  %146 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 8
  call void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %146, %struct.b2Vec3* %impulse)
  %147 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  %148 = load float* %147, align 4
  %149 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 1
  %150 = load float* %149, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P3, float %148, float %150)
  %151 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %151, %struct.b2Vec2* %P3)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %15)
  %152 = load float* %iA, align 4
  %153 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 11
  %154 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %153, %struct.b2Vec2* %P3)
  %155 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %156 = load float* %155, align 4
  %157 = fadd float %154, %156
  %158 = fmul float %152, %157
  %159 = load float* %wA, align 4
  %160 = fsub float %159, %158
  store float %160, float* %wA, align 4
  %161 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %16, float %161, %struct.b2Vec2* %P3)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %16)
  %162 = load float* %iB, align 4
  %163 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 12
  %164 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %163, %struct.b2Vec2* %P3)
  %165 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %166 = load float* %165, align 4
  %167 = fadd float %164, %166
  %168 = fmul float %162, %167
  %169 = load float* %wB, align 4
  %170 = fadd float %169, %168
  store float %170, float* %wB, align 4
  br label %171

; <label>:171                                     ; preds = %132, %63
  %172 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 9
  %173 = load i32* %172, align 4
  %174 = load %struct.b2SolverData** %2
  %175 = getelementptr inbounds %struct.b2SolverData* %174, i32 0, i32 2
  %176 = load %struct.b2Velocity** %175, align 4
  %177 = getelementptr inbounds %struct.b2Velocity* %176, i32 %173
  %178 = getelementptr inbounds %struct.b2Velocity* %177, i32 0, i32 0
  %179 = bitcast %struct.b2Vec2* %178 to i8*
  %180 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %180, i32 8, i32 4, i1 false)
  %181 = load float* %wA, align 4
  %182 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 9
  %183 = load i32* %182, align 4
  %184 = load %struct.b2SolverData** %2
  %185 = getelementptr inbounds %struct.b2SolverData* %184, i32 0, i32 2
  %186 = load %struct.b2Velocity** %185, align 4
  %187 = getelementptr inbounds %struct.b2Velocity* %186, i32 %183
  %188 = getelementptr inbounds %struct.b2Velocity* %187, i32 0, i32 1
  store float %181, float* %188, align 4
  %189 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 10
  %190 = load i32* %189, align 4
  %191 = load %struct.b2SolverData** %2
  %192 = getelementptr inbounds %struct.b2SolverData* %191, i32 0, i32 2
  %193 = load %struct.b2Velocity** %192, align 4
  %194 = getelementptr inbounds %struct.b2Velocity* %193, i32 %190
  %195 = getelementptr inbounds %struct.b2Velocity* %194, i32 0, i32 0
  %196 = bitcast %struct.b2Vec2* %195 to i8*
  %197 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %196, i8* %197, i32 8, i32 4, i1 false)
  %198 = load float* %wB, align 4
  %199 = getelementptr inbounds %class.b2WeldJoint* %17, i32 0, i32 10
  %200 = load i32* %199, align 4
  %201 = load %struct.b2SolverData** %2
  %202 = getelementptr inbounds %struct.b2SolverData* %201, i32 0, i32 2
  %203 = load %struct.b2Velocity** %202, align 4
  %204 = getelementptr inbounds %struct.b2Velocity* %203, i32 %200
  %205 = getelementptr inbounds %struct.b2Velocity* %204, i32 0, i32 1
  store float %198, float* %205, align 4
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

define linkonce_odr void @_Z7b2Mul22RK7b2Mat33RK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Mat33* %A, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Mat33* %A, %struct.b2Mat33** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Mat33** %1
  %4 = getelementptr inbounds %struct.b2Mat33* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = load %struct.b2Vec2** %2
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %6, %9
  %11 = load %struct.b2Mat33** %1
  %12 = getelementptr inbounds %struct.b2Mat33* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Vec3* %12, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = load %struct.b2Vec2** %2
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %10, %18
  %20 = load %struct.b2Mat33** %1
  %21 = getelementptr inbounds %struct.b2Mat33* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2Vec3* %21, i32 0, i32 1
  %23 = load float* %22, align 4
  %24 = load %struct.b2Vec2** %2
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 0
  %26 = load float* %25, align 4
  %27 = fmul float %23, %26
  %28 = load %struct.b2Mat33** %1
  %29 = getelementptr inbounds %struct.b2Mat33* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.b2Vec3* %29, i32 0, i32 1
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

define linkonce_odr void @_Z5b2MulRK7b2Mat33RK6b2Vec3(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Mat33* %A, %struct.b2Vec3* %v) inlinehint {
  %1 = alloca %struct.b2Mat33*, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  %3 = alloca %struct.b2Vec3, align 4
  %4 = alloca %struct.b2Vec3, align 4
  %5 = alloca %struct.b2Vec3, align 4
  %6 = alloca %struct.b2Vec3, align 4
  store %struct.b2Mat33* %A, %struct.b2Mat33** %1, align 4
  store %struct.b2Vec3* %v, %struct.b2Vec3** %2, align 4
  %7 = load %struct.b2Vec3** %2
  %8 = getelementptr inbounds %struct.b2Vec3* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = load %struct.b2Mat33** %1
  %11 = getelementptr inbounds %struct.b2Mat33* %10, i32 0, i32 0
  call void @_ZmlfRK6b2Vec3(%struct.b2Vec3* sret %4, float %9, %struct.b2Vec3* %11)
  %12 = load %struct.b2Vec3** %2
  %13 = getelementptr inbounds %struct.b2Vec3* %12, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = load %struct.b2Mat33** %1
  %16 = getelementptr inbounds %struct.b2Mat33* %15, i32 0, i32 1
  call void @_ZmlfRK6b2Vec3(%struct.b2Vec3* sret %5, float %14, %struct.b2Vec3* %16)
  call void @_ZplRK6b2Vec3S1_(%struct.b2Vec3* sret %3, %struct.b2Vec3* %4, %struct.b2Vec3* %5)
  %17 = load %struct.b2Vec3** %2
  %18 = getelementptr inbounds %struct.b2Vec3* %17, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %struct.b2Mat33** %1
  %21 = getelementptr inbounds %struct.b2Mat33* %20, i32 0, i32 2
  call void @_ZmlfRK6b2Vec3(%struct.b2Vec3* sret %6, float %19, %struct.b2Vec3* %21)
  call void @_ZplRK6b2Vec3S1_(%struct.b2Vec3* sret %agg.result, %struct.b2Vec3* %3, %struct.b2Vec3* %6)
  ret void
}

define linkonce_odr void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Vec3* %this) align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %agg.result)
  %3 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = fsub float -0.000000e+00, %4
  %6 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 1
  %7 = load float* %6, align 4
  %8 = fsub float -0.000000e+00, %7
  %9 = getelementptr inbounds %struct.b2Vec3* %2, i32 0, i32 2
  %10 = load float* %9, align 4
  %11 = fsub float -0.000000e+00, %10
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %agg.result, float %5, float %8, float %11)
  ret void
}

define linkonce_odr void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %this, %struct.b2Vec3* %v) nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  store %struct.b2Vec3* %v, %struct.b2Vec3** %2, align 4
  %3 = load %struct.b2Vec3** %1
  %4 = load %struct.b2Vec3** %2
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fadd float %8, %6
  store float %9, float* %7, align 4
  %10 = load %struct.b2Vec3** %2
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fadd float %14, %12
  store float %15, float* %13, align 4
  %16 = load %struct.b2Vec3** %2
  %17 = getelementptr inbounds %struct.b2Vec3* %16, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = getelementptr inbounds %struct.b2Vec3* %3, i32 0, i32 2
  %20 = load float* %19, align 4
  %21 = fadd float %20, %18
  store float %21, float* %19, align 4
  ret void
}

define zeroext i1 @_ZN11b2WeldJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2WeldJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %positionError = alloca float, align 4
  %angularError = alloca float, align 4
  %K = alloca %struct.b2Mat33, align 4
  %C1 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %P = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %C11 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %C2 = alloca float, align 4
  %C = alloca %struct.b2Vec3, align 4
  %impulse = alloca %struct.b2Vec3, align 4
  %12 = alloca %struct.b2Vec3, align 4
  %P2 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %15 = load %class.b2WeldJoint** %1
  %16 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 9
  %17 = load i32* %16, align 4
  %18 = load %struct.b2SolverData** %2
  %19 = getelementptr inbounds %struct.b2SolverData* %18, i32 0, i32 1
  %20 = load %struct.b2Position** %19, align 4
  %21 = getelementptr inbounds %struct.b2Position* %20, i32 %17
  %22 = getelementptr inbounds %struct.b2Position* %21, i32 0, i32 0
  %23 = bitcast %struct.b2Vec2* %cA to i8*
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  %25 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 9
  %26 = load i32* %25, align 4
  %27 = load %struct.b2SolverData** %2
  %28 = getelementptr inbounds %struct.b2SolverData* %27, i32 0, i32 1
  %29 = load %struct.b2Position** %28, align 4
  %30 = getelementptr inbounds %struct.b2Position* %29, i32 %26
  %31 = getelementptr inbounds %struct.b2Position* %30, i32 0, i32 1
  %32 = load float* %31, align 4
  store float %32, float* %aA, align 4
  %33 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 10
  %34 = load i32* %33, align 4
  %35 = load %struct.b2SolverData** %2
  %36 = getelementptr inbounds %struct.b2SolverData* %35, i32 0, i32 1
  %37 = load %struct.b2Position** %36, align 4
  %38 = getelementptr inbounds %struct.b2Position* %37, i32 %34
  %39 = getelementptr inbounds %struct.b2Position* %38, i32 0, i32 0
  %40 = bitcast %struct.b2Vec2* %cB to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 10
  %43 = load i32* %42, align 4
  %44 = load %struct.b2SolverData** %2
  %45 = getelementptr inbounds %struct.b2SolverData* %44, i32 0, i32 1
  %46 = load %struct.b2Position** %45, align 4
  %47 = getelementptr inbounds %struct.b2Position* %46, i32 %43
  %48 = getelementptr inbounds %struct.b2Position* %47, i32 0, i32 1
  %49 = load float* %48, align 4
  store float %49, float* %aB, align 4
  %50 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %50)
  %51 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %51)
  %52 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 15
  %53 = load float* %52, align 4
  store float %53, float* %mA, align 4
  %54 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 16
  %55 = load float* %54, align 4
  store float %55, float* %mB, align 4
  %56 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 17
  %57 = load float* %56, align 4
  store float %57, float* %iA, align 4
  %58 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 18
  %59 = load float* %58, align 4
  store float %59, float* %iB, align 4
  %60 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 4
  %61 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 13
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %60, %struct.b2Vec2* %61)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %62 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 5
  %63 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 14
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %62, %struct.b2Vec2* %63)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %K)
  %64 = load float* %mA, align 4
  %65 = load float* %mB, align 4
  %66 = fadd float %64, %65
  %67 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %68 = load float* %67, align 4
  %69 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %70 = load float* %69, align 4
  %71 = fmul float %68, %70
  %72 = load float* %iA, align 4
  %73 = fmul float %71, %72
  %74 = fadd float %66, %73
  %75 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %76 = load float* %75, align 4
  %77 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %78 = load float* %77, align 4
  %79 = fmul float %76, %78
  %80 = load float* %iB, align 4
  %81 = fmul float %79, %80
  %82 = fadd float %74, %81
  %83 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %84 = getelementptr inbounds %struct.b2Vec3* %83, i32 0, i32 0
  store float %82, float* %84, align 4
  %85 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %86 = load float* %85, align 4
  %87 = fsub float -0.000000e+00, %86
  %88 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %89 = load float* %88, align 4
  %90 = fmul float %87, %89
  %91 = load float* %iA, align 4
  %92 = fmul float %90, %91
  %93 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %94 = load float* %93, align 4
  %95 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %96 = load float* %95, align 4
  %97 = fmul float %94, %96
  %98 = load float* %iB, align 4
  %99 = fmul float %97, %98
  %100 = fsub float %92, %99
  %101 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %102 = getelementptr inbounds %struct.b2Vec3* %101, i32 0, i32 0
  store float %100, float* %102, align 4
  %103 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %104 = load float* %103, align 4
  %105 = fsub float -0.000000e+00, %104
  %106 = load float* %iA, align 4
  %107 = fmul float %105, %106
  %108 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %109 = load float* %108, align 4
  %110 = load float* %iB, align 4
  %111 = fmul float %109, %110
  %112 = fsub float %107, %111
  %113 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %114 = getelementptr inbounds %struct.b2Vec3* %113, i32 0, i32 0
  store float %112, float* %114, align 4
  %115 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %116 = getelementptr inbounds %struct.b2Vec3* %115, i32 0, i32 0
  %117 = load float* %116, align 4
  %118 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %119 = getelementptr inbounds %struct.b2Vec3* %118, i32 0, i32 1
  store float %117, float* %119, align 4
  %120 = load float* %mA, align 4
  %121 = load float* %mB, align 4
  %122 = fadd float %120, %121
  %123 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %124 = load float* %123, align 4
  %125 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %126 = load float* %125, align 4
  %127 = fmul float %124, %126
  %128 = load float* %iA, align 4
  %129 = fmul float %127, %128
  %130 = fadd float %122, %129
  %131 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %132 = load float* %131, align 4
  %133 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %134 = load float* %133, align 4
  %135 = fmul float %132, %134
  %136 = load float* %iB, align 4
  %137 = fmul float %135, %136
  %138 = fadd float %130, %137
  %139 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %140 = getelementptr inbounds %struct.b2Vec3* %139, i32 0, i32 1
  store float %138, float* %140, align 4
  %141 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %142 = load float* %141, align 4
  %143 = load float* %iA, align 4
  %144 = fmul float %142, %143
  %145 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %146 = load float* %145, align 4
  %147 = load float* %iB, align 4
  %148 = fmul float %146, %147
  %149 = fadd float %144, %148
  %150 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %151 = getelementptr inbounds %struct.b2Vec3* %150, i32 0, i32 1
  store float %149, float* %151, align 4
  %152 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %153 = getelementptr inbounds %struct.b2Vec3* %152, i32 0, i32 0
  %154 = load float* %153, align 4
  %155 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %156 = getelementptr inbounds %struct.b2Vec3* %155, i32 0, i32 2
  store float %154, float* %156, align 4
  %157 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %158 = getelementptr inbounds %struct.b2Vec3* %157, i32 0, i32 1
  %159 = load float* %158, align 4
  %160 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %161 = getelementptr inbounds %struct.b2Vec3* %160, i32 0, i32 2
  store float %159, float* %161, align 4
  %162 = load float* %iA, align 4
  %163 = load float* %iB, align 4
  %164 = fadd float %162, %163
  %165 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %166 = getelementptr inbounds %struct.b2Vec3* %165, i32 0, i32 2
  store float %164, float* %166, align 4
  %167 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 1
  %168 = load float* %167, align 4
  %169 = fcmp ogt float %168, 0.000000e+00
  br i1 %169, label %170, label %184

; <label>:170                                     ; preds = %0
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %C1, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %171 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %C1)
  store float %171, float* %positionError, align 4
  store float 0.000000e+00, float* %angularError, align 4
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Mat33* %K, %struct.b2Vec2* %C1)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %P, %struct.b2Vec2* %7)
  %172 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %172, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %8)
  %173 = load float* %iA, align 4
  %174 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P)
  %175 = fmul float %173, %174
  %176 = load float* %aA, align 4
  %177 = fsub float %176, %175
  store float %177, float* %aA, align 4
  %178 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %178, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %9)
  %179 = load float* %iB, align 4
  %180 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P)
  %181 = fmul float %179, %180
  %182 = load float* %aB, align 4
  %183 = fadd float %182, %181
  store float %183, float* %aB, align 4
  br label %221

; <label>:184                                     ; preds = %0
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %11, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %C11, %struct.b2Vec2* %10, %struct.b2Vec2* %rA)
  %185 = load float* %aB, align 4
  %186 = load float* %aA, align 4
  %187 = fsub float %185, %186
  %188 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 6
  %189 = load float* %188, align 4
  %190 = fsub float %187, %189
  store float %190, float* %C2, align 4
  %191 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %C11)
  store float %191, float* %positionError, align 4
  %192 = load float* %C2, align 4
  %193 = call float @_Z5b2AbsIfET_S0_(float %192)
  store float %193, float* %angularError, align 4
  %194 = getelementptr inbounds %struct.b2Vec2* %C11, i32 0, i32 0
  %195 = load float* %194, align 4
  %196 = getelementptr inbounds %struct.b2Vec2* %C11, i32 0, i32 1
  %197 = load float* %196, align 4
  %198 = load float* %C2, align 4
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %C, float %195, float %197, float %198)
  call void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret %12, %struct.b2Mat33* %K, %struct.b2Vec3* %C)
  call void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* sret %impulse, %struct.b2Vec3* %12)
  %199 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  %200 = load float* %199, align 4
  %201 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 1
  %202 = load float* %201, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P2, float %200, float %202)
  %203 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %203, %struct.b2Vec2* %P2)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %13)
  %204 = load float* %iA, align 4
  %205 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P2)
  %206 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %207 = load float* %206, align 4
  %208 = fadd float %205, %207
  %209 = fmul float %204, %208
  %210 = load float* %aA, align 4
  %211 = fsub float %210, %209
  store float %211, float* %aA, align 4
  %212 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %212, %struct.b2Vec2* %P2)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %14)
  %213 = load float* %iB, align 4
  %214 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P2)
  %215 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %216 = load float* %215, align 4
  %217 = fadd float %214, %216
  %218 = fmul float %213, %217
  %219 = load float* %aB, align 4
  %220 = fadd float %219, %218
  store float %220, float* %aB, align 4
  br label %221

; <label>:221                                     ; preds = %184, %170
  %222 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 9
  %223 = load i32* %222, align 4
  %224 = load %struct.b2SolverData** %2
  %225 = getelementptr inbounds %struct.b2SolverData* %224, i32 0, i32 1
  %226 = load %struct.b2Position** %225, align 4
  %227 = getelementptr inbounds %struct.b2Position* %226, i32 %223
  %228 = getelementptr inbounds %struct.b2Position* %227, i32 0, i32 0
  %229 = bitcast %struct.b2Vec2* %228 to i8*
  %230 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %229, i8* %230, i32 8, i32 4, i1 false)
  %231 = load float* %aA, align 4
  %232 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 9
  %233 = load i32* %232, align 4
  %234 = load %struct.b2SolverData** %2
  %235 = getelementptr inbounds %struct.b2SolverData* %234, i32 0, i32 1
  %236 = load %struct.b2Position** %235, align 4
  %237 = getelementptr inbounds %struct.b2Position* %236, i32 %233
  %238 = getelementptr inbounds %struct.b2Position* %237, i32 0, i32 1
  store float %231, float* %238, align 4
  %239 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 10
  %240 = load i32* %239, align 4
  %241 = load %struct.b2SolverData** %2
  %242 = getelementptr inbounds %struct.b2SolverData* %241, i32 0, i32 1
  %243 = load %struct.b2Position** %242, align 4
  %244 = getelementptr inbounds %struct.b2Position* %243, i32 %240
  %245 = getelementptr inbounds %struct.b2Position* %244, i32 0, i32 0
  %246 = bitcast %struct.b2Vec2* %245 to i8*
  %247 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %246, i8* %247, i32 8, i32 4, i1 false)
  %248 = load float* %aB, align 4
  %249 = getelementptr inbounds %class.b2WeldJoint* %15, i32 0, i32 10
  %250 = load i32* %249, align 4
  %251 = load %struct.b2SolverData** %2
  %252 = getelementptr inbounds %struct.b2SolverData* %251, i32 0, i32 1
  %253 = load %struct.b2Position** %252, align 4
  %254 = getelementptr inbounds %struct.b2Position* %253, i32 %250
  %255 = getelementptr inbounds %struct.b2Position* %254, i32 0, i32 1
  store float %248, float* %255, align 4
  %256 = load float* %positionError, align 4
  %257 = fcmp ole float %256, 0x3F747AE140000000
  br i1 %257, label %258, label %261

; <label>:258                                     ; preds = %221
  %259 = load float* %angularError, align 4
  %260 = fcmp ole float %259, 0x3FA1DF46C0000000
  br label %261

; <label>:261                                     ; preds = %258, %221
  %262 = phi i1 [ false, %221 ], [ %260, %258 ]
  ret i1 %262
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

declare void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret, %struct.b2Mat33*, %struct.b2Vec2*)

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

declare void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret, %struct.b2Mat33*, %struct.b2Vec3*)

define void @_ZNK11b2WeldJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2WeldJoint* %this) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %2 = load %class.b2WeldJoint** %1
  %3 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 4
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

define void @_ZNK11b2WeldJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2WeldJoint* %this) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %2 = load %class.b2WeldJoint** %1
  %3 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 5
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK11b2WeldJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2WeldJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2WeldJoint** %1
  %4 = getelementptr inbounds %class.b2WeldJoint* %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %class.b2WeldJoint* %3, i32 0, i32 8
  %8 = getelementptr inbounds %struct.b2Vec3* %7, i32 0, i32 1
  %9 = load float* %8, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %6, float %9)
  %10 = load float* %2, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %10, %struct.b2Vec2* %P)
  ret void
}

define float @_ZNK11b2WeldJoint17GetReactionTorqueEf(%class.b2WeldJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2WeldJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2WeldJoint* %3, i32 0, i32 8
  %6 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 2
  %7 = load float* %6, align 4
  %8 = fmul float %4, %7
  ret float %8
}

define void @_ZN11b2WeldJoint4DumpEv(%class.b2WeldJoint* %this) align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %2 = load %class.b2WeldJoint** %1
  %3 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 4
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 4
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 5
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 5
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 6
  %37 = load float* %36, align 4
  %38 = fpext float %37 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str6, i32 0, i32 0), double %38)
  %39 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 1
  %40 = load float* %39, align 4
  %41 = fpext float %40 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), double %41)
  %42 = getelementptr inbounds %class.b2WeldJoint* %2, i32 0, i32 2
  %43 = load float* %42, align 4
  %44 = fpext float %43 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str8, i32 0, i32 0), double %44)
  %45 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  %46 = getelementptr inbounds %class.b2Joint* %45, i32 0, i32 8
  %47 = load i32* %46, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str9, i32 0, i32 0), i32 %47)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN11b2WeldJointD1Ev(%class.b2WeldJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %2 = load %class.b2WeldJoint** %1
  call void @_ZN11b2WeldJointD2Ev(%class.b2WeldJoint* %2)
  ret void
}

define linkonce_odr void @_ZN11b2WeldJointD0Ev(%class.b2WeldJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %4 = load %class.b2WeldJoint** %1
  invoke void @_ZN11b2WeldJointD1Ev(%class.b2WeldJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2WeldJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2WeldJoint* %4 to i8*
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

define linkonce_odr void @_ZN11b2WeldJointD2Ev(%class.b2WeldJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WeldJoint*, align 4
  store %class.b2WeldJoint* %this, %class.b2WeldJoint** %1, align 4
  %2 = load %class.b2WeldJoint** %1
  %3 = bitcast %class.b2WeldJoint* %2 to %class.b2Joint*
  call void @_ZN7b2JointD2Ev(%class.b2Joint* %3)
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

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

define linkonce_odr void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %this, float %x_, float %y_, float %z_) nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  store float %x_, float* %2, align 4
  store float %y_, float* %3, align 4
  store float %z_, float* %4, align 4
  %5 = load %struct.b2Vec3** %1
  %6 = load float* %2, align 4
  %7 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 0
  store float %6, float* %7, align 4
  %8 = load float* %3, align 4
  %9 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 1
  store float %8, float* %9, align 4
  %10 = load float* %4, align 4
  %11 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 2
  store float %10, float* %11, align 4
  ret void
}

define linkonce_odr void @_ZplRK6b2Vec3S1_(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Vec3* %a, %struct.b2Vec3* %b) inlinehint {
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
  %9 = fadd float %5, %8
  %10 = load %struct.b2Vec3** %1
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec3** %2
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fadd float %12, %15
  %17 = load %struct.b2Vec3** %1
  %18 = getelementptr inbounds %struct.b2Vec3* %17, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %struct.b2Vec3** %2
  %21 = getelementptr inbounds %struct.b2Vec3* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fadd float %19, %22
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %agg.result, float %9, float %16, float %23)
  ret void
}

define linkonce_odr void @_ZmlfRK6b2Vec3(%struct.b2Vec3* noalias sret %agg.result, float %s, %struct.b2Vec3* %a) inlinehint {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2Vec3*, align 4
  store float %s, float* %1, align 4
  store %struct.b2Vec3* %a, %struct.b2Vec3** %2, align 4
  %3 = load float* %1, align 4
  %4 = load %struct.b2Vec3** %2
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %3, %6
  %8 = load float* %1, align 4
  %9 = load %struct.b2Vec3** %2
  %10 = getelementptr inbounds %struct.b2Vec3* %9, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fmul float %8, %11
  %13 = load float* %1, align 4
  %14 = load %struct.b2Vec3** %2
  %15 = getelementptr inbounds %struct.b2Vec3* %14, i32 0, i32 2
  %16 = load float* %15, align 4
  %17 = fmul float %13, %16
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %agg.result, float %7, float %12, float %17)
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

define linkonce_odr void @_ZN7b2Mat33C2Ev(%struct.b2Mat33* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat33*, align 4
  store %struct.b2Mat33* %this, %struct.b2Mat33** %1, align 4
  %2 = load %struct.b2Mat33** %1
  %3 = getelementptr inbounds %struct.b2Mat33* %2, i32 0, i32 0
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %3)
  %4 = getelementptr inbounds %struct.b2Mat33* %2, i32 0, i32 1
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %4)
  %5 = getelementptr inbounds %struct.b2Mat33* %2, i32 0, i32 2
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %5)
  ret void
}

define linkonce_odr void @_ZN6b2Vec3C2Ev(%struct.b2Vec3* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec3*, align 4
  store %struct.b2Vec3* %this, %struct.b2Vec3** %1, align 4
  %2 = load %struct.b2Vec3** %1
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
