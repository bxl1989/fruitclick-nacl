; ModuleID = 'Dynamics/Joints/b2RevoluteJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2RevoluteJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec3, float, i8, float, float, i8, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float, i32 }
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
%struct.b2RevoluteJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, i8, float, float, i8, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }

@_ZTV15b2RevoluteJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI15b2RevoluteJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RevoluteJoint*)* @_ZNK15b2RevoluteJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RevoluteJoint*)* @_ZNK15b2RevoluteJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RevoluteJoint*, float)* @_ZNK15b2RevoluteJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2RevoluteJoint*, float)* @_ZNK15b2RevoluteJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2RevoluteJoint*)* @_ZN15b2RevoluteJoint4DumpEv to i8*), i8* bitcast (void (%class.b2RevoluteJoint*)* @_ZN15b2RevoluteJointD1Ev to i8*), i8* bitcast (void (%class.b2RevoluteJoint*)* @_ZN15b2RevoluteJointD0Ev to i8*), i8* bitcast (void (%class.b2RevoluteJoint*, %struct.b2SolverData*)* @_ZN15b2RevoluteJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2RevoluteJoint*, %struct.b2SolverData*)* @_ZN15b2RevoluteJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2RevoluteJoint*, %struct.b2SolverData*)* @_ZN15b2RevoluteJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [15 x i8] c"lower <= upper\00", align 1
@.str1 = private unnamed_addr constant [36 x i8] c"Dynamics/Joints/b2RevoluteJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN15b2RevoluteJoint9SetLimitsEff = private unnamed_addr constant [50 x i8] c"void b2RevoluteJoint::SetLimits(float32, float32)\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"  b2RevoluteJointDef jd;\0A\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str5 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"  jd.referenceAngle = %.15lef;\0A\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"  jd.enableLimit = bool(%d);\0A\00", align 1
@.str10 = private unnamed_addr constant [28 x i8] c"  jd.lowerAngle = %.15lef;\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"  jd.upperAngle = %.15lef;\0A\00", align 1
@.str12 = private unnamed_addr constant [30 x i8] c"  jd.enableMotor = bool(%d);\0A\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"  jd.motorSpeed = %.15lef;\0A\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"  jd.maxMotorTorque = %.15lef;\0A\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS15b2RevoluteJoint = constant [18 x i8] c"15b2RevoluteJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI15b2RevoluteJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([18 x i8]* @_ZTS15b2RevoluteJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN15b2RevoluteJointC1EPK18b2RevoluteJointDef = alias void (%class.b2RevoluteJoint*, %struct.b2RevoluteJointDef*)* @_ZN15b2RevoluteJointC2EPK18b2RevoluteJointDef

define void @_ZN18b2RevoluteJointDef10InitializeEP6b2BodyS1_RK6b2Vec2(%struct.b2RevoluteJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %anchor) align 2 {
  %1 = alloca %struct.b2RevoluteJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %struct.b2RevoluteJointDef* %this, %struct.b2RevoluteJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor, %struct.b2Vec2** %4, align 4
  %7 = load %struct.b2RevoluteJointDef** %1
  %8 = load %class.b2Body** %2, align 4
  %9 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %10 = getelementptr inbounds %struct.b2JointDef* %9, i32 0, i32 2
  store %class.b2Body* %8, %class.b2Body** %10, align 4
  %11 = load %class.b2Body** %3, align 4
  %12 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %13 = getelementptr inbounds %struct.b2JointDef* %12, i32 0, i32 3
  store %class.b2Body* %11, %class.b2Body** %13, align 4
  %14 = getelementptr inbounds %struct.b2RevoluteJointDef* %7, i32 0, i32 1
  %15 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %16 = getelementptr inbounds %struct.b2JointDef* %15, i32 0, i32 2
  %17 = load %class.b2Body** %16, align 4
  %18 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %5, %class.b2Body* %17, %struct.b2Vec2* %18)
  %19 = bitcast %struct.b2Vec2* %14 to i8*
  %20 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = getelementptr inbounds %struct.b2RevoluteJointDef* %7, i32 0, i32 2
  %22 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %23 = getelementptr inbounds %struct.b2JointDef* %22, i32 0, i32 3
  %24 = load %class.b2Body** %23, align 4
  %25 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %24, %struct.b2Vec2* %25)
  %26 = bitcast %struct.b2Vec2* %21 to i8*
  %27 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %28 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %29 = getelementptr inbounds %struct.b2JointDef* %28, i32 0, i32 3
  %30 = load %class.b2Body** %29, align 4
  %31 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %30)
  %32 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  %33 = getelementptr inbounds %struct.b2JointDef* %32, i32 0, i32 2
  %34 = load %class.b2Body** %33, align 4
  %35 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %34)
  %36 = fsub float %31, %35
  %37 = getelementptr inbounds %struct.b2RevoluteJointDef* %7, i32 0, i32 3
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

define void @_ZN15b2RevoluteJointC2EPK18b2RevoluteJointDef(%class.b2RevoluteJoint* %this, %struct.b2RevoluteJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca %struct.b2RevoluteJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store %struct.b2RevoluteJointDef* %def, %struct.b2RevoluteJointDef** %2, align 4
  %5 = load %class.b2RevoluteJoint** %1
  %6 = bitcast %class.b2RevoluteJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2RevoluteJointDef** %2, align 4
  %8 = bitcast %struct.b2RevoluteJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2RevoluteJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV15b2RevoluteJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %72

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %72

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 3
  invoke void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %14)
          to label %15 unwind label %72

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 14
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %72

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 15
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %72

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 16
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %72

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 17
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %72

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 22
  invoke void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %24)
          to label %25 unwind label %72

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 1
  %27 = load %struct.b2RevoluteJointDef** %2, align 4
  %28 = getelementptr inbounds %struct.b2RevoluteJointDef* %27, i32 0, i32 1
  %29 = bitcast %struct.b2Vec2* %26 to i8*
  %30 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %31 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 2
  %32 = load %struct.b2RevoluteJointDef** %2, align 4
  %33 = getelementptr inbounds %struct.b2RevoluteJointDef* %32, i32 0, i32 2
  %34 = bitcast %struct.b2Vec2* %31 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = load %struct.b2RevoluteJointDef** %2, align 4
  %37 = getelementptr inbounds %struct.b2RevoluteJointDef* %36, i32 0, i32 3
  %38 = load float* %37, align 4
  %39 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 9
  store float %38, float* %39, align 4
  %40 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 3
  invoke void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %40)
          to label %41 unwind label %72

; <label>:41                                      ; preds = %25
  %42 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 4
  store float 0.000000e+00, float* %42, align 4
  %43 = load %struct.b2RevoluteJointDef** %2, align 4
  %44 = getelementptr inbounds %struct.b2RevoluteJointDef* %43, i32 0, i32 5
  %45 = load float* %44, align 4
  %46 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 10
  store float %45, float* %46, align 4
  %47 = load %struct.b2RevoluteJointDef** %2, align 4
  %48 = getelementptr inbounds %struct.b2RevoluteJointDef* %47, i32 0, i32 6
  %49 = load float* %48, align 4
  %50 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 11
  store float %49, float* %50, align 4
  %51 = load %struct.b2RevoluteJointDef** %2, align 4
  %52 = getelementptr inbounds %struct.b2RevoluteJointDef* %51, i32 0, i32 9
  %53 = load float* %52, align 4
  %54 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 6
  store float %53, float* %54, align 4
  %55 = load %struct.b2RevoluteJointDef** %2, align 4
  %56 = getelementptr inbounds %struct.b2RevoluteJointDef* %55, i32 0, i32 8
  %57 = load float* %56, align 4
  %58 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 7
  store float %57, float* %58, align 4
  %59 = load %struct.b2RevoluteJointDef** %2, align 4
  %60 = getelementptr inbounds %struct.b2RevoluteJointDef* %59, i32 0, i32 4
  %61 = load i8* %60, align 1
  %62 = trunc i8 %61 to i1
  %63 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 8
  %64 = zext i1 %62 to i8
  store i8 %64, i8* %63, align 1
  %65 = load %struct.b2RevoluteJointDef** %2, align 4
  %66 = getelementptr inbounds %struct.b2RevoluteJointDef* %65, i32 0, i32 7
  %67 = load i8* %66, align 1
  %68 = trunc i8 %67 to i1
  %69 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 5
  %70 = zext i1 %68 to i8
  store i8 %70, i8* %69, align 1
  %71 = getelementptr inbounds %class.b2RevoluteJoint* %5, i32 0, i32 24
  store i32 0, i32* %71, align 4
  ret void

; <label>:72                                      ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %0
  %73 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  store i8* %74, i8** %3
  %75 = extractvalue { i8*, i32 } %73, 1
  store i32 %75, i32* %4
  %76 = bitcast %class.b2RevoluteJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %76)
          to label %77 unwind label %84

; <label>:77                                      ; preds = %72
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i8** %3
  %80 = load i8** %3
  %81 = load i32* %4
  %82 = insertvalue { i8*, i32 } undef, i8* %80, 0
  %83 = insertvalue { i8*, i32 } %82, i32 %81, 1
  resume { i8*, i32 } %83

; <label>:84                                      ; preds = %72
  %85 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN15b2RevoluteJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2RevoluteJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
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
  %fixedRotation = alloca i8, align 1
  %jointAngle = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2RevoluteJoint** %1
  %10 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %11 = getelementptr inbounds %class.b2Joint* %10, i32 0, i32 6
  %12 = load %class.b2Body** %11, align 4
  %13 = getelementptr inbounds %class.b2Body* %12, i32 0, i32 2
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  store i32 %14, i32* %15, align 4
  %16 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %17 = getelementptr inbounds %class.b2Joint* %16, i32 0, i32 7
  %18 = load %class.b2Body** %17, align 4
  %19 = getelementptr inbounds %class.b2Body* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 16
  %23 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %24 = getelementptr inbounds %class.b2Joint* %23, i32 0, i32 6
  %25 = load %class.b2Body** %24, align 4
  %26 = getelementptr inbounds %class.b2Body* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.b2Sweep* %26, i32 0, i32 0
  %28 = bitcast %struct.b2Vec2* %22 to i8*
  %29 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 17
  %31 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %32 = getelementptr inbounds %class.b2Joint* %31, i32 0, i32 7
  %33 = load %class.b2Body** %32, align 4
  %34 = getelementptr inbounds %class.b2Body* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.b2Sweep* %34, i32 0, i32 0
  %36 = bitcast %struct.b2Vec2* %30 to i8*
  %37 = bitcast %struct.b2Vec2* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 8, i32 4, i1 false)
  %38 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %39 = getelementptr inbounds %class.b2Joint* %38, i32 0, i32 6
  %40 = load %class.b2Body** %39, align 4
  %41 = getelementptr inbounds %class.b2Body* %40, i32 0, i32 17
  %42 = load float* %41, align 4
  %43 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 18
  store float %42, float* %43, align 4
  %44 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %45 = getelementptr inbounds %class.b2Joint* %44, i32 0, i32 7
  %46 = load %class.b2Body** %45, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 17
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 19
  store float %48, float* %49, align 4
  %50 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 6
  %52 = load %class.b2Body** %51, align 4
  %53 = getelementptr inbounds %class.b2Body* %52, i32 0, i32 19
  %54 = load float* %53, align 4
  %55 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 20
  store float %54, float* %55, align 4
  %56 = bitcast %class.b2RevoluteJoint* %9 to %class.b2Joint*
  %57 = getelementptr inbounds %class.b2Joint* %56, i32 0, i32 7
  %58 = load %class.b2Body** %57, align 4
  %59 = getelementptr inbounds %class.b2Body* %58, i32 0, i32 19
  %60 = load float* %59, align 4
  %61 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 21
  store float %60, float* %61, align 4
  %62 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %63 = load i32* %62, align 4
  %64 = load %struct.b2SolverData** %2
  %65 = getelementptr inbounds %struct.b2SolverData* %64, i32 0, i32 1
  %66 = load %struct.b2Position** %65, align 4
  %67 = getelementptr inbounds %struct.b2Position* %66, i32 %63
  %68 = getelementptr inbounds %struct.b2Position* %67, i32 0, i32 0
  %69 = bitcast %struct.b2Vec2* %cA to i8*
  %70 = bitcast %struct.b2Vec2* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 8, i32 4, i1 false)
  %71 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %72 = load i32* %71, align 4
  %73 = load %struct.b2SolverData** %2
  %74 = getelementptr inbounds %struct.b2SolverData* %73, i32 0, i32 1
  %75 = load %struct.b2Position** %74, align 4
  %76 = getelementptr inbounds %struct.b2Position* %75, i32 %72
  %77 = getelementptr inbounds %struct.b2Position* %76, i32 0, i32 1
  %78 = load float* %77, align 4
  store float %78, float* %aA, align 4
  %79 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %80 = load i32* %79, align 4
  %81 = load %struct.b2SolverData** %2
  %82 = getelementptr inbounds %struct.b2SolverData* %81, i32 0, i32 2
  %83 = load %struct.b2Velocity** %82, align 4
  %84 = getelementptr inbounds %struct.b2Velocity* %83, i32 %80
  %85 = getelementptr inbounds %struct.b2Velocity* %84, i32 0, i32 0
  %86 = bitcast %struct.b2Vec2* %vA to i8*
  %87 = bitcast %struct.b2Vec2* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %86, i8* %87, i32 8, i32 4, i1 false)
  %88 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %89 = load i32* %88, align 4
  %90 = load %struct.b2SolverData** %2
  %91 = getelementptr inbounds %struct.b2SolverData* %90, i32 0, i32 2
  %92 = load %struct.b2Velocity** %91, align 4
  %93 = getelementptr inbounds %struct.b2Velocity* %92, i32 %89
  %94 = getelementptr inbounds %struct.b2Velocity* %93, i32 0, i32 1
  %95 = load float* %94, align 4
  store float %95, float* %wA, align 4
  %96 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  %97 = load i32* %96, align 4
  %98 = load %struct.b2SolverData** %2
  %99 = getelementptr inbounds %struct.b2SolverData* %98, i32 0, i32 1
  %100 = load %struct.b2Position** %99, align 4
  %101 = getelementptr inbounds %struct.b2Position* %100, i32 %97
  %102 = getelementptr inbounds %struct.b2Position* %101, i32 0, i32 0
  %103 = bitcast %struct.b2Vec2* %cB to i8*
  %104 = bitcast %struct.b2Vec2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  %106 = load i32* %105, align 4
  %107 = load %struct.b2SolverData** %2
  %108 = getelementptr inbounds %struct.b2SolverData* %107, i32 0, i32 1
  %109 = load %struct.b2Position** %108, align 4
  %110 = getelementptr inbounds %struct.b2Position* %109, i32 %106
  %111 = getelementptr inbounds %struct.b2Position* %110, i32 0, i32 1
  %112 = load float* %111, align 4
  store float %112, float* %aB, align 4
  %113 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  %114 = load i32* %113, align 4
  %115 = load %struct.b2SolverData** %2
  %116 = getelementptr inbounds %struct.b2SolverData* %115, i32 0, i32 2
  %117 = load %struct.b2Velocity** %116, align 4
  %118 = getelementptr inbounds %struct.b2Velocity* %117, i32 %114
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 0, i32 0
  %120 = bitcast %struct.b2Vec2* %vB to i8*
  %121 = bitcast %struct.b2Vec2* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %121, i32 8, i32 4, i1 false)
  %122 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
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
  %132 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %133 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 1
  %134 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %133, %struct.b2Vec2* %134)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %135 = bitcast %struct.b2Vec2* %132 to i8*
  %136 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* %136, i32 8, i32 4, i1 false)
  %137 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %138 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 2
  %139 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %138, %struct.b2Vec2* %139)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %140 = bitcast %struct.b2Vec2* %137 to i8*
  %141 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %141, i32 8, i32 4, i1 false)
  %142 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 18
  %143 = load float* %142, align 4
  store float %143, float* %mA, align 4
  %144 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 19
  %145 = load float* %144, align 4
  store float %145, float* %mB, align 4
  %146 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 20
  %147 = load float* %146, align 4
  store float %147, float* %iA, align 4
  %148 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 21
  %149 = load float* %148, align 4
  store float %149, float* %iB, align 4
  %150 = load float* %iA, align 4
  %151 = load float* %iB, align 4
  %152 = fadd float %150, %151
  %153 = fcmp oeq float %152, 0.000000e+00
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %fixedRotation, align 1
  %155 = load float* %mA, align 4
  %156 = load float* %mB, align 4
  %157 = fadd float %155, %156
  %158 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %159 = getelementptr inbounds %struct.b2Vec2* %158, i32 0, i32 1
  %160 = load float* %159, align 4
  %161 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %162 = getelementptr inbounds %struct.b2Vec2* %161, i32 0, i32 1
  %163 = load float* %162, align 4
  %164 = fmul float %160, %163
  %165 = load float* %iA, align 4
  %166 = fmul float %164, %165
  %167 = fadd float %157, %166
  %168 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %169 = getelementptr inbounds %struct.b2Vec2* %168, i32 0, i32 1
  %170 = load float* %169, align 4
  %171 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %172 = getelementptr inbounds %struct.b2Vec2* %171, i32 0, i32 1
  %173 = load float* %172, align 4
  %174 = fmul float %170, %173
  %175 = load float* %iB, align 4
  %176 = fmul float %174, %175
  %177 = fadd float %167, %176
  %178 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %179 = getelementptr inbounds %struct.b2Mat33* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.b2Vec3* %179, i32 0, i32 0
  store float %177, float* %180, align 4
  %181 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %182 = getelementptr inbounds %struct.b2Vec2* %181, i32 0, i32 1
  %183 = load float* %182, align 4
  %184 = fsub float -0.000000e+00, %183
  %185 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %186 = getelementptr inbounds %struct.b2Vec2* %185, i32 0, i32 0
  %187 = load float* %186, align 4
  %188 = fmul float %184, %187
  %189 = load float* %iA, align 4
  %190 = fmul float %188, %189
  %191 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %192 = getelementptr inbounds %struct.b2Vec2* %191, i32 0, i32 1
  %193 = load float* %192, align 4
  %194 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %195 = getelementptr inbounds %struct.b2Vec2* %194, i32 0, i32 0
  %196 = load float* %195, align 4
  %197 = fmul float %193, %196
  %198 = load float* %iB, align 4
  %199 = fmul float %197, %198
  %200 = fsub float %190, %199
  %201 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %202 = getelementptr inbounds %struct.b2Mat33* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.b2Vec3* %202, i32 0, i32 0
  store float %200, float* %203, align 4
  %204 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %205 = getelementptr inbounds %struct.b2Vec2* %204, i32 0, i32 1
  %206 = load float* %205, align 4
  %207 = fsub float -0.000000e+00, %206
  %208 = load float* %iA, align 4
  %209 = fmul float %207, %208
  %210 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %211 = getelementptr inbounds %struct.b2Vec2* %210, i32 0, i32 1
  %212 = load float* %211, align 4
  %213 = load float* %iB, align 4
  %214 = fmul float %212, %213
  %215 = fsub float %209, %214
  %216 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %217 = getelementptr inbounds %struct.b2Mat33* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.b2Vec3* %217, i32 0, i32 0
  store float %215, float* %218, align 4
  %219 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %220 = getelementptr inbounds %struct.b2Mat33* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.b2Vec3* %220, i32 0, i32 0
  %222 = load float* %221, align 4
  %223 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %224 = getelementptr inbounds %struct.b2Mat33* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.b2Vec3* %224, i32 0, i32 1
  store float %222, float* %225, align 4
  %226 = load float* %mA, align 4
  %227 = load float* %mB, align 4
  %228 = fadd float %226, %227
  %229 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %230 = getelementptr inbounds %struct.b2Vec2* %229, i32 0, i32 0
  %231 = load float* %230, align 4
  %232 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %233 = getelementptr inbounds %struct.b2Vec2* %232, i32 0, i32 0
  %234 = load float* %233, align 4
  %235 = fmul float %231, %234
  %236 = load float* %iA, align 4
  %237 = fmul float %235, %236
  %238 = fadd float %228, %237
  %239 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %240 = getelementptr inbounds %struct.b2Vec2* %239, i32 0, i32 0
  %241 = load float* %240, align 4
  %242 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %243 = getelementptr inbounds %struct.b2Vec2* %242, i32 0, i32 0
  %244 = load float* %243, align 4
  %245 = fmul float %241, %244
  %246 = load float* %iB, align 4
  %247 = fmul float %245, %246
  %248 = fadd float %238, %247
  %249 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %250 = getelementptr inbounds %struct.b2Mat33* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.b2Vec3* %250, i32 0, i32 1
  store float %248, float* %251, align 4
  %252 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %253 = getelementptr inbounds %struct.b2Vec2* %252, i32 0, i32 0
  %254 = load float* %253, align 4
  %255 = load float* %iA, align 4
  %256 = fmul float %254, %255
  %257 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %258 = getelementptr inbounds %struct.b2Vec2* %257, i32 0, i32 0
  %259 = load float* %258, align 4
  %260 = load float* %iB, align 4
  %261 = fmul float %259, %260
  %262 = fadd float %256, %261
  %263 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %264 = getelementptr inbounds %struct.b2Mat33* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.b2Vec3* %264, i32 0, i32 1
  store float %262, float* %265, align 4
  %266 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %267 = getelementptr inbounds %struct.b2Mat33* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.b2Vec3* %267, i32 0, i32 0
  %269 = load float* %268, align 4
  %270 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %271 = getelementptr inbounds %struct.b2Mat33* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.b2Vec3* %271, i32 0, i32 2
  store float %269, float* %272, align 4
  %273 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %274 = getelementptr inbounds %struct.b2Mat33* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.b2Vec3* %274, i32 0, i32 1
  %276 = load float* %275, align 4
  %277 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %278 = getelementptr inbounds %struct.b2Mat33* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.b2Vec3* %278, i32 0, i32 2
  store float %276, float* %279, align 4
  %280 = load float* %iA, align 4
  %281 = load float* %iB, align 4
  %282 = fadd float %280, %281
  %283 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 22
  %284 = getelementptr inbounds %struct.b2Mat33* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.b2Vec3* %284, i32 0, i32 2
  store float %282, float* %285, align 4
  %286 = load float* %iA, align 4
  %287 = load float* %iB, align 4
  %288 = fadd float %286, %287
  %289 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 23
  store float %288, float* %289, align 4
  %290 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 23
  %291 = load float* %290, align 4
  %292 = fcmp ogt float %291, 0.000000e+00
  br i1 %292, label %293, label %298

; <label>:293                                     ; preds = %0
  %294 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 23
  %295 = load float* %294, align 4
  %296 = fdiv float 1.000000e+00, %295
  %297 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 23
  store float %296, float* %297, align 4
  br label %298

; <label>:298                                     ; preds = %293, %0
  %299 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 5
  %300 = load i8* %299, align 1
  %301 = trunc i8 %300 to i1
  %302 = zext i1 %301 to i32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %307, label %304

; <label>:304                                     ; preds = %298
  %305 = load i8* %fixedRotation, align 1
  %306 = trunc i8 %305 to i1
  br i1 %306, label %307, label %309

; <label>:307                                     ; preds = %304, %298
  %308 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 4
  store float 0.000000e+00, float* %308, align 4
  br label %309

; <label>:309                                     ; preds = %307, %304
  %310 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 8
  %311 = load i8* %310, align 1
  %312 = trunc i8 %311 to i1
  br i1 %312, label %313, label %369

; <label>:313                                     ; preds = %309
  %314 = load i8* %fixedRotation, align 1
  %315 = trunc i8 %314 to i1
  %316 = zext i1 %315 to i32
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %369

; <label>:318                                     ; preds = %313
  %319 = load float* %aB, align 4
  %320 = load float* %aA, align 4
  %321 = fsub float %319, %320
  %322 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 9
  %323 = load float* %322, align 4
  %324 = fsub float %321, %323
  store float %324, float* %jointAngle, align 4
  %325 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 11
  %326 = load float* %325, align 4
  %327 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 10
  %328 = load float* %327, align 4
  %329 = fsub float %326, %328
  %330 = call float @_Z5b2AbsIfET_S0_(float %329)
  %331 = fcmp olt float %330, 0x3FB1DF46C0000000
  br i1 %331, label %332, label %334

; <label>:332                                     ; preds = %318
  %333 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  store i32 3, i32* %333, align 4
  br label %368

; <label>:334                                     ; preds = %318
  %335 = load float* %jointAngle, align 4
  %336 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 10
  %337 = load float* %336, align 4
  %338 = fcmp ole float %335, %337
  br i1 %338, label %339, label %348

; <label>:339                                     ; preds = %334
  %340 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  %341 = load i32* %340, align 4
  %342 = icmp ne i32 %341, 1
  br i1 %342, label %343, label %346

; <label>:343                                     ; preds = %339
  %344 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %345 = getelementptr inbounds %struct.b2Vec3* %344, i32 0, i32 2
  store float 0.000000e+00, float* %345, align 4
  br label %346

; <label>:346                                     ; preds = %343, %339
  %347 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  store i32 1, i32* %347, align 4
  br label %367

; <label>:348                                     ; preds = %334
  %349 = load float* %jointAngle, align 4
  %350 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 11
  %351 = load float* %350, align 4
  %352 = fcmp oge float %349, %351
  br i1 %352, label %353, label %362

; <label>:353                                     ; preds = %348
  %354 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  %355 = load i32* %354, align 4
  %356 = icmp ne i32 %355, 2
  br i1 %356, label %357, label %360

; <label>:357                                     ; preds = %353
  %358 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %359 = getelementptr inbounds %struct.b2Vec3* %358, i32 0, i32 2
  store float 0.000000e+00, float* %359, align 4
  br label %360

; <label>:360                                     ; preds = %357, %353
  %361 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  store i32 2, i32* %361, align 4
  br label %366

; <label>:362                                     ; preds = %348
  %363 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  store i32 0, i32* %363, align 4
  %364 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %365 = getelementptr inbounds %struct.b2Vec3* %364, i32 0, i32 2
  store float 0.000000e+00, float* %365, align 4
  br label %366

; <label>:366                                     ; preds = %362, %360
  br label %367

; <label>:367                                     ; preds = %366, %346
  br label %368

; <label>:368                                     ; preds = %367, %332
  br label %371

; <label>:369                                     ; preds = %313, %309
  %370 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 24
  store i32 0, i32* %370, align 4
  br label %371

; <label>:371                                     ; preds = %369, %368
  %372 = load %struct.b2SolverData** %2
  %373 = getelementptr inbounds %struct.b2SolverData* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.b2TimeStep* %373, i32 0, i32 5
  %375 = load i8* %374, align 1
  %376 = trunc i8 %375 to i1
  br i1 %376, label %377, label %424

; <label>:377                                     ; preds = %371
  %378 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %379 = load %struct.b2SolverData** %2
  %380 = getelementptr inbounds %struct.b2SolverData* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.b2TimeStep* %380, i32 0, i32 2
  %382 = load float* %381, align 4
  call void @_ZN6b2Vec3mLEf(%struct.b2Vec3* %378, float %382)
  %383 = load %struct.b2SolverData** %2
  %384 = getelementptr inbounds %struct.b2SolverData* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.b2TimeStep* %384, i32 0, i32 2
  %386 = load float* %385, align 4
  %387 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 4
  %388 = load float* %387, align 4
  %389 = fmul float %388, %386
  store float %389, float* %387, align 4
  %390 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %391 = getelementptr inbounds %struct.b2Vec3* %390, i32 0, i32 0
  %392 = load float* %391, align 4
  %393 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %394 = getelementptr inbounds %struct.b2Vec3* %393, i32 0, i32 1
  %395 = load float* %394, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %392, float %395)
  %396 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %396, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %7)
  %397 = load float* %iA, align 4
  %398 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 14
  %399 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %398, %struct.b2Vec2* %P)
  %400 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 4
  %401 = load float* %400, align 4
  %402 = fadd float %399, %401
  %403 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %404 = getelementptr inbounds %struct.b2Vec3* %403, i32 0, i32 2
  %405 = load float* %404, align 4
  %406 = fadd float %402, %405
  %407 = fmul float %397, %406
  %408 = load float* %wA, align 4
  %409 = fsub float %408, %407
  store float %409, float* %wA, align 4
  %410 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %410, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %8)
  %411 = load float* %iB, align 4
  %412 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 15
  %413 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %412, %struct.b2Vec2* %P)
  %414 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 4
  %415 = load float* %414, align 4
  %416 = fadd float %413, %415
  %417 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  %418 = getelementptr inbounds %struct.b2Vec3* %417, i32 0, i32 2
  %419 = load float* %418, align 4
  %420 = fadd float %416, %419
  %421 = fmul float %411, %420
  %422 = load float* %wB, align 4
  %423 = fadd float %422, %421
  store float %423, float* %wB, align 4
  br label %427

; <label>:424                                     ; preds = %371
  %425 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 3
  call void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %425)
  %426 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 4
  store float 0.000000e+00, float* %426, align 4
  br label %427

; <label>:427                                     ; preds = %424, %377
  %428 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %429 = load i32* %428, align 4
  %430 = load %struct.b2SolverData** %2
  %431 = getelementptr inbounds %struct.b2SolverData* %430, i32 0, i32 2
  %432 = load %struct.b2Velocity** %431, align 4
  %433 = getelementptr inbounds %struct.b2Velocity* %432, i32 %429
  %434 = getelementptr inbounds %struct.b2Velocity* %433, i32 0, i32 0
  %435 = bitcast %struct.b2Vec2* %434 to i8*
  %436 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %435, i8* %436, i32 8, i32 4, i1 false)
  %437 = load float* %wA, align 4
  %438 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 12
  %439 = load i32* %438, align 4
  %440 = load %struct.b2SolverData** %2
  %441 = getelementptr inbounds %struct.b2SolverData* %440, i32 0, i32 2
  %442 = load %struct.b2Velocity** %441, align 4
  %443 = getelementptr inbounds %struct.b2Velocity* %442, i32 %439
  %444 = getelementptr inbounds %struct.b2Velocity* %443, i32 0, i32 1
  store float %437, float* %444, align 4
  %445 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  %446 = load i32* %445, align 4
  %447 = load %struct.b2SolverData** %2
  %448 = getelementptr inbounds %struct.b2SolverData* %447, i32 0, i32 2
  %449 = load %struct.b2Velocity** %448, align 4
  %450 = getelementptr inbounds %struct.b2Velocity* %449, i32 %446
  %451 = getelementptr inbounds %struct.b2Velocity* %450, i32 0, i32 0
  %452 = bitcast %struct.b2Vec2* %451 to i8*
  %453 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %452, i8* %453, i32 8, i32 4, i1 false)
  %454 = load float* %wB, align 4
  %455 = getelementptr inbounds %class.b2RevoluteJoint* %9, i32 0, i32 13
  %456 = load i32* %455, align 4
  %457 = load %struct.b2SolverData** %2
  %458 = getelementptr inbounds %struct.b2SolverData* %457, i32 0, i32 2
  %459 = load %struct.b2Velocity** %458, align 4
  %460 = getelementptr inbounds %struct.b2Velocity* %459, i32 %456
  %461 = getelementptr inbounds %struct.b2Velocity* %460, i32 0, i32 1
  store float %454, float* %461, align 4
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

define void @_ZN15b2RevoluteJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2RevoluteJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %fixedRotation = alloca i8, align 1
  %Cdot = alloca float, align 4
  %impulse = alloca float, align 4
  %oldImpulse = alloca float, align 4
  %maxImpulse = alloca float, align 4
  %Cdot1 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %Cdot2 = alloca float, align 4
  %Cdot3 = alloca %struct.b2Vec3, align 4
  %impulse4 = alloca %struct.b2Vec3, align 4
  %7 = alloca %struct.b2Vec3, align 4
  %newImpulse = alloca float, align 4
  %rhs = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %reduced = alloca %struct.b2Vec2, align 4
  %newImpulse5 = alloca float, align 4
  %rhs6 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %reduced7 = alloca %struct.b2Vec2, align 4
  %P = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %Cdot8 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %impulse9 = alloca %struct.b2Vec2, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  %22 = alloca %struct.b2Vec2, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %23 = load %class.b2RevoluteJoint** %1
  %24 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 12
  %25 = load i32* %24, align 4
  %26 = load %struct.b2SolverData** %2
  %27 = getelementptr inbounds %struct.b2SolverData* %26, i32 0, i32 2
  %28 = load %struct.b2Velocity** %27, align 4
  %29 = getelementptr inbounds %struct.b2Velocity* %28, i32 %25
  %30 = getelementptr inbounds %struct.b2Velocity* %29, i32 0, i32 0
  %31 = bitcast %struct.b2Vec2* %vA to i8*
  %32 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 12
  %34 = load i32* %33, align 4
  %35 = load %struct.b2SolverData** %2
  %36 = getelementptr inbounds %struct.b2SolverData* %35, i32 0, i32 2
  %37 = load %struct.b2Velocity** %36, align 4
  %38 = getelementptr inbounds %struct.b2Velocity* %37, i32 %34
  %39 = getelementptr inbounds %struct.b2Velocity* %38, i32 0, i32 1
  %40 = load float* %39, align 4
  store float %40, float* %wA, align 4
  %41 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 13
  %42 = load i32* %41, align 4
  %43 = load %struct.b2SolverData** %2
  %44 = getelementptr inbounds %struct.b2SolverData* %43, i32 0, i32 2
  %45 = load %struct.b2Velocity** %44, align 4
  %46 = getelementptr inbounds %struct.b2Velocity* %45, i32 %42
  %47 = getelementptr inbounds %struct.b2Velocity* %46, i32 0, i32 0
  %48 = bitcast %struct.b2Vec2* %vB to i8*
  %49 = bitcast %struct.b2Vec2* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  %50 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 13
  %51 = load i32* %50, align 4
  %52 = load %struct.b2SolverData** %2
  %53 = getelementptr inbounds %struct.b2SolverData* %52, i32 0, i32 2
  %54 = load %struct.b2Velocity** %53, align 4
  %55 = getelementptr inbounds %struct.b2Velocity* %54, i32 %51
  %56 = getelementptr inbounds %struct.b2Velocity* %55, i32 0, i32 1
  %57 = load float* %56, align 4
  store float %57, float* %wB, align 4
  %58 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 18
  %59 = load float* %58, align 4
  store float %59, float* %mA, align 4
  %60 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 19
  %61 = load float* %60, align 4
  store float %61, float* %mB, align 4
  %62 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 20
  %63 = load float* %62, align 4
  store float %63, float* %iA, align 4
  %64 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 21
  %65 = load float* %64, align 4
  store float %65, float* %iB, align 4
  %66 = load float* %iA, align 4
  %67 = load float* %iB, align 4
  %68 = fadd float %66, %67
  %69 = fcmp oeq float %68, 0.000000e+00
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %fixedRotation, align 1
  %71 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 5
  %72 = load i8* %71, align 1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %74, label %127

; <label>:74                                      ; preds = %0
  %75 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 24
  %76 = load i32* %75, align 4
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %78, label %127

; <label>:78                                      ; preds = %74
  %79 = load i8* %fixedRotation, align 1
  %80 = trunc i8 %79 to i1
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %127

; <label>:83                                      ; preds = %78
  %84 = load float* %wB, align 4
  %85 = load float* %wA, align 4
  %86 = fsub float %84, %85
  %87 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 7
  %88 = load float* %87, align 4
  %89 = fsub float %86, %88
  store float %89, float* %Cdot, align 4
  %90 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 23
  %91 = load float* %90, align 4
  %92 = fsub float -0.000000e+00, %91
  %93 = load float* %Cdot, align 4
  %94 = fmul float %92, %93
  store float %94, float* %impulse, align 4
  %95 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 4
  %96 = load float* %95, align 4
  store float %96, float* %oldImpulse, align 4
  %97 = load %struct.b2SolverData** %2
  %98 = getelementptr inbounds %struct.b2SolverData* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.b2TimeStep* %98, i32 0, i32 0
  %100 = load float* %99, align 4
  %101 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 6
  %102 = load float* %101, align 4
  %103 = fmul float %100, %102
  store float %103, float* %maxImpulse, align 4
  %104 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 4
  %105 = load float* %104, align 4
  %106 = load float* %impulse, align 4
  %107 = fadd float %105, %106
  %108 = load float* %maxImpulse, align 4
  %109 = fsub float -0.000000e+00, %108
  %110 = load float* %maxImpulse, align 4
  %111 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %107, float %109, float %110)
  %112 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 4
  store float %111, float* %112, align 4
  %113 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 4
  %114 = load float* %113, align 4
  %115 = load float* %oldImpulse, align 4
  %116 = fsub float %114, %115
  store float %116, float* %impulse, align 4
  %117 = load float* %iA, align 4
  %118 = load float* %impulse, align 4
  %119 = fmul float %117, %118
  %120 = load float* %wA, align 4
  %121 = fsub float %120, %119
  store float %121, float* %wA, align 4
  %122 = load float* %iB, align 4
  %123 = load float* %impulse, align 4
  %124 = fmul float %122, %123
  %125 = load float* %wB, align 4
  %126 = fadd float %125, %124
  store float %126, float* %wB, align 4
  br label %127

; <label>:127                                     ; preds = %83, %78, %74, %0
  %128 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 8
  %129 = load i8* %128, align 1
  %130 = trunc i8 %129 to i1
  br i1 %130, label %131, label %294

; <label>:131                                     ; preds = %127
  %132 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 24
  %133 = load i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %294

; <label>:135                                     ; preds = %131
  %136 = load i8* %fixedRotation, align 1
  %137 = trunc i8 %136 to i1
  %138 = zext i1 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %294

; <label>:140                                     ; preds = %135
  %141 = load float* %wB, align 4
  %142 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 15
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float %141, %struct.b2Vec2* %142)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %vA)
  %143 = load float* %wA, align 4
  %144 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 14
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %6, float %143, %struct.b2Vec2* %144)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot1, %struct.b2Vec2* %3, %struct.b2Vec2* %6)
  %145 = load float* %wB, align 4
  %146 = load float* %wA, align 4
  %147 = fsub float %145, %146
  store float %147, float* %Cdot2, align 4
  %148 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  %149 = load float* %148, align 4
  %150 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 1
  %151 = load float* %150, align 4
  %152 = load float* %Cdot2, align 4
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %Cdot3, float %149, float %151, float %152)
  %153 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  call void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret %7, %struct.b2Mat33* %153, %struct.b2Vec3* %Cdot3)
  call void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* sret %impulse4, %struct.b2Vec3* %7)
  %154 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 24
  %155 = load i32* %154, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %159

; <label>:157                                     ; preds = %140
  %158 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  call void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %158, %struct.b2Vec3* %impulse4)
  br label %269

; <label>:159                                     ; preds = %140
  %160 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 24
  %161 = load i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %213

; <label>:163                                     ; preds = %159
  %164 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %165 = getelementptr inbounds %struct.b2Vec3* %164, i32 0, i32 2
  %166 = load float* %165, align 4
  %167 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  %168 = load float* %167, align 4
  %169 = fadd float %166, %168
  store float %169, float* %newImpulse, align 4
  %170 = load float* %newImpulse, align 4
  %171 = fcmp olt float %170, 0.000000e+00
  br i1 %171, label %172, label %210

; <label>:172                                     ; preds = %163
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %8, %struct.b2Vec2* %Cdot1)
  %173 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %174 = getelementptr inbounds %struct.b2Vec3* %173, i32 0, i32 2
  %175 = load float* %174, align 4
  %176 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  %177 = getelementptr inbounds %struct.b2Mat33* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.b2Vec3* %177, i32 0, i32 0
  %179 = load float* %178, align 4
  %180 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  %181 = getelementptr inbounds %struct.b2Mat33* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.b2Vec3* %181, i32 0, i32 1
  %183 = load float* %182, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %10, float %179, float %183)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %175, %struct.b2Vec2* %10)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %rhs, %struct.b2Vec2* %8, %struct.b2Vec2* %9)
  %184 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %reduced, %struct.b2Mat33* %184, %struct.b2Vec2* %rhs)
  %185 = getelementptr inbounds %struct.b2Vec2* %reduced, i32 0, i32 0
  %186 = load float* %185, align 4
  %187 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 0
  store float %186, float* %187, align 4
  %188 = getelementptr inbounds %struct.b2Vec2* %reduced, i32 0, i32 1
  %189 = load float* %188, align 4
  %190 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 1
  store float %189, float* %190, align 4
  %191 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %192 = getelementptr inbounds %struct.b2Vec3* %191, i32 0, i32 2
  %193 = load float* %192, align 4
  %194 = fsub float -0.000000e+00, %193
  %195 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  store float %194, float* %195, align 4
  %196 = getelementptr inbounds %struct.b2Vec2* %reduced, i32 0, i32 0
  %197 = load float* %196, align 4
  %198 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %199 = getelementptr inbounds %struct.b2Vec3* %198, i32 0, i32 0
  %200 = load float* %199, align 4
  %201 = fadd float %200, %197
  store float %201, float* %199, align 4
  %202 = getelementptr inbounds %struct.b2Vec2* %reduced, i32 0, i32 1
  %203 = load float* %202, align 4
  %204 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %205 = getelementptr inbounds %struct.b2Vec3* %204, i32 0, i32 1
  %206 = load float* %205, align 4
  %207 = fadd float %206, %203
  store float %207, float* %205, align 4
  %208 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %209 = getelementptr inbounds %struct.b2Vec3* %208, i32 0, i32 2
  store float 0.000000e+00, float* %209, align 4
  br label %212

; <label>:210                                     ; preds = %163
  %211 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  call void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %211, %struct.b2Vec3* %impulse4)
  br label %212

; <label>:212                                     ; preds = %210, %172
  br label %268

; <label>:213                                     ; preds = %159
  %214 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 24
  %215 = load i32* %214, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %267

; <label>:217                                     ; preds = %213
  %218 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %219 = getelementptr inbounds %struct.b2Vec3* %218, i32 0, i32 2
  %220 = load float* %219, align 4
  %221 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  %222 = load float* %221, align 4
  %223 = fadd float %220, %222
  store float %223, float* %newImpulse5, align 4
  %224 = load float* %newImpulse5, align 4
  %225 = fcmp ogt float %224, 0.000000e+00
  br i1 %225, label %226, label %264

; <label>:226                                     ; preds = %217
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %11, %struct.b2Vec2* %Cdot1)
  %227 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %228 = getelementptr inbounds %struct.b2Vec3* %227, i32 0, i32 2
  %229 = load float* %228, align 4
  %230 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  %231 = getelementptr inbounds %struct.b2Mat33* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.b2Vec3* %231, i32 0, i32 0
  %233 = load float* %232, align 4
  %234 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  %235 = getelementptr inbounds %struct.b2Mat33* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.b2Vec3* %235, i32 0, i32 1
  %237 = load float* %236, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %13, float %233, float %237)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %229, %struct.b2Vec2* %13)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %rhs6, %struct.b2Vec2* %11, %struct.b2Vec2* %12)
  %238 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %reduced7, %struct.b2Mat33* %238, %struct.b2Vec2* %rhs6)
  %239 = getelementptr inbounds %struct.b2Vec2* %reduced7, i32 0, i32 0
  %240 = load float* %239, align 4
  %241 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 0
  store float %240, float* %241, align 4
  %242 = getelementptr inbounds %struct.b2Vec2* %reduced7, i32 0, i32 1
  %243 = load float* %242, align 4
  %244 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 1
  store float %243, float* %244, align 4
  %245 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %246 = getelementptr inbounds %struct.b2Vec3* %245, i32 0, i32 2
  %247 = load float* %246, align 4
  %248 = fsub float -0.000000e+00, %247
  %249 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  store float %248, float* %249, align 4
  %250 = getelementptr inbounds %struct.b2Vec2* %reduced7, i32 0, i32 0
  %251 = load float* %250, align 4
  %252 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %253 = getelementptr inbounds %struct.b2Vec3* %252, i32 0, i32 0
  %254 = load float* %253, align 4
  %255 = fadd float %254, %251
  store float %255, float* %253, align 4
  %256 = getelementptr inbounds %struct.b2Vec2* %reduced7, i32 0, i32 1
  %257 = load float* %256, align 4
  %258 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %259 = getelementptr inbounds %struct.b2Vec3* %258, i32 0, i32 1
  %260 = load float* %259, align 4
  %261 = fadd float %260, %257
  store float %261, float* %259, align 4
  %262 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %263 = getelementptr inbounds %struct.b2Vec3* %262, i32 0, i32 2
  store float 0.000000e+00, float* %263, align 4
  br label %266

; <label>:264                                     ; preds = %217
  %265 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  call void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %265, %struct.b2Vec3* %impulse4)
  br label %266

; <label>:266                                     ; preds = %264, %226
  br label %267

; <label>:267                                     ; preds = %266, %213
  br label %268

; <label>:268                                     ; preds = %267, %212
  br label %269

; <label>:269                                     ; preds = %268, %157
  %270 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 0
  %271 = load float* %270, align 4
  %272 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 1
  %273 = load float* %272, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %271, float %273)
  %274 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %274, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %14)
  %275 = load float* %iA, align 4
  %276 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 14
  %277 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %276, %struct.b2Vec2* %P)
  %278 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  %279 = load float* %278, align 4
  %280 = fadd float %277, %279
  %281 = fmul float %275, %280
  %282 = load float* %wA, align 4
  %283 = fsub float %282, %281
  store float %283, float* %wA, align 4
  %284 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %284, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %15)
  %285 = load float* %iB, align 4
  %286 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 15
  %287 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %286, %struct.b2Vec2* %P)
  %288 = getelementptr inbounds %struct.b2Vec3* %impulse4, i32 0, i32 2
  %289 = load float* %288, align 4
  %290 = fadd float %287, %289
  %291 = fmul float %285, %290
  %292 = load float* %wB, align 4
  %293 = fadd float %292, %291
  store float %293, float* %wB, align 4
  br label %326

; <label>:294                                     ; preds = %135, %131, %127
  %295 = load float* %wB, align 4
  %296 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 15
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %18, float %295, %struct.b2Vec2* %296)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %17, %struct.b2Vec2* %vB, %struct.b2Vec2* %18)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %16, %struct.b2Vec2* %17, %struct.b2Vec2* %vA)
  %297 = load float* %wA, align 4
  %298 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 14
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %19, float %297, %struct.b2Vec2* %298)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %Cdot8, %struct.b2Vec2* %16, %struct.b2Vec2* %19)
  %299 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 22
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %20, %struct.b2Vec2* %Cdot8)
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %impulse9, %struct.b2Mat33* %299, %struct.b2Vec2* %20)
  %300 = getelementptr inbounds %struct.b2Vec2* %impulse9, i32 0, i32 0
  %301 = load float* %300, align 4
  %302 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %303 = getelementptr inbounds %struct.b2Vec3* %302, i32 0, i32 0
  %304 = load float* %303, align 4
  %305 = fadd float %304, %301
  store float %305, float* %303, align 4
  %306 = getelementptr inbounds %struct.b2Vec2* %impulse9, i32 0, i32 1
  %307 = load float* %306, align 4
  %308 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 3
  %309 = getelementptr inbounds %struct.b2Vec3* %308, i32 0, i32 1
  %310 = load float* %309, align 4
  %311 = fadd float %310, %307
  store float %311, float* %309, align 4
  %312 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %21, float %312, %struct.b2Vec2* %impulse9)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %21)
  %313 = load float* %iA, align 4
  %314 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 14
  %315 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %314, %struct.b2Vec2* %impulse9)
  %316 = fmul float %313, %315
  %317 = load float* %wA, align 4
  %318 = fsub float %317, %316
  store float %318, float* %wA, align 4
  %319 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %22, float %319, %struct.b2Vec2* %impulse9)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %22)
  %320 = load float* %iB, align 4
  %321 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 15
  %322 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %321, %struct.b2Vec2* %impulse9)
  %323 = fmul float %320, %322
  %324 = load float* %wB, align 4
  %325 = fadd float %324, %323
  store float %325, float* %wB, align 4
  br label %326

; <label>:326                                     ; preds = %294, %269
  %327 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 12
  %328 = load i32* %327, align 4
  %329 = load %struct.b2SolverData** %2
  %330 = getelementptr inbounds %struct.b2SolverData* %329, i32 0, i32 2
  %331 = load %struct.b2Velocity** %330, align 4
  %332 = getelementptr inbounds %struct.b2Velocity* %331, i32 %328
  %333 = getelementptr inbounds %struct.b2Velocity* %332, i32 0, i32 0
  %334 = bitcast %struct.b2Vec2* %333 to i8*
  %335 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %334, i8* %335, i32 8, i32 4, i1 false)
  %336 = load float* %wA, align 4
  %337 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 12
  %338 = load i32* %337, align 4
  %339 = load %struct.b2SolverData** %2
  %340 = getelementptr inbounds %struct.b2SolverData* %339, i32 0, i32 2
  %341 = load %struct.b2Velocity** %340, align 4
  %342 = getelementptr inbounds %struct.b2Velocity* %341, i32 %338
  %343 = getelementptr inbounds %struct.b2Velocity* %342, i32 0, i32 1
  store float %336, float* %343, align 4
  %344 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 13
  %345 = load i32* %344, align 4
  %346 = load %struct.b2SolverData** %2
  %347 = getelementptr inbounds %struct.b2SolverData* %346, i32 0, i32 2
  %348 = load %struct.b2Velocity** %347, align 4
  %349 = getelementptr inbounds %struct.b2Velocity* %348, i32 %345
  %350 = getelementptr inbounds %struct.b2Velocity* %349, i32 0, i32 0
  %351 = bitcast %struct.b2Vec2* %350 to i8*
  %352 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %351, i8* %352, i32 8, i32 4, i1 false)
  %353 = load float* %wB, align 4
  %354 = getelementptr inbounds %class.b2RevoluteJoint* %23, i32 0, i32 13
  %355 = load i32* %354, align 4
  %356 = load %struct.b2SolverData** %2
  %357 = getelementptr inbounds %struct.b2SolverData* %356, i32 0, i32 2
  %358 = load %struct.b2Velocity** %357, align 4
  %359 = getelementptr inbounds %struct.b2Velocity* %358, i32 %355
  %360 = getelementptr inbounds %struct.b2Velocity* %359, i32 0, i32 1
  store float %353, float* %360, align 4
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

declare void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret, %struct.b2Mat33*, %struct.b2Vec3*)

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

declare void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret, %struct.b2Mat33*, %struct.b2Vec2*)

define zeroext i1 @_ZN15b2RevoluteJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2RevoluteJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %angularError = alloca float, align 4
  %positionError = alloca float, align 4
  %fixedRotation = alloca i8, align 1
  %angle = alloca float, align 4
  %limitImpulse = alloca float, align 4
  %C = alloca float, align 4
  %C1 = alloca float, align 4
  %C2 = alloca float, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %C3 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %K = alloca %struct.b2Mat22, align 4
  %impulse = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %10 = load %class.b2RevoluteJoint** %1
  %11 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 12
  %12 = load i32* %11, align 4
  %13 = load %struct.b2SolverData** %2
  %14 = getelementptr inbounds %struct.b2SolverData* %13, i32 0, i32 1
  %15 = load %struct.b2Position** %14, align 4
  %16 = getelementptr inbounds %struct.b2Position* %15, i32 %12
  %17 = getelementptr inbounds %struct.b2Position* %16, i32 0, i32 0
  %18 = bitcast %struct.b2Vec2* %cA to i8*
  %19 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  %20 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 12
  %21 = load i32* %20, align 4
  %22 = load %struct.b2SolverData** %2
  %23 = getelementptr inbounds %struct.b2SolverData* %22, i32 0, i32 1
  %24 = load %struct.b2Position** %23, align 4
  %25 = getelementptr inbounds %struct.b2Position* %24, i32 %21
  %26 = getelementptr inbounds %struct.b2Position* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  store float %27, float* %aA, align 4
  %28 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 13
  %29 = load i32* %28, align 4
  %30 = load %struct.b2SolverData** %2
  %31 = getelementptr inbounds %struct.b2SolverData* %30, i32 0, i32 1
  %32 = load %struct.b2Position** %31, align 4
  %33 = getelementptr inbounds %struct.b2Position* %32, i32 %29
  %34 = getelementptr inbounds %struct.b2Position* %33, i32 0, i32 0
  %35 = bitcast %struct.b2Vec2* %cB to i8*
  %36 = bitcast %struct.b2Vec2* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
  %37 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 13
  %38 = load i32* %37, align 4
  %39 = load %struct.b2SolverData** %2
  %40 = getelementptr inbounds %struct.b2SolverData* %39, i32 0, i32 1
  %41 = load %struct.b2Position** %40, align 4
  %42 = getelementptr inbounds %struct.b2Position* %41, i32 %38
  %43 = getelementptr inbounds %struct.b2Position* %42, i32 0, i32 1
  %44 = load float* %43, align 4
  store float %44, float* %aB, align 4
  %45 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %45)
  %46 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %46)
  store float 0.000000e+00, float* %angularError, align 4
  store float 0.000000e+00, float* %positionError, align 4
  %47 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 20
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 21
  %50 = load float* %49, align 4
  %51 = fadd float %48, %50
  %52 = fcmp oeq float %51, 0.000000e+00
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %fixedRotation, align 1
  %54 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 8
  %55 = load i8* %54, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %141

; <label>:57                                      ; preds = %0
  %58 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 24
  %59 = load i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %141

; <label>:61                                      ; preds = %57
  %62 = load i8* %fixedRotation, align 1
  %63 = trunc i8 %62 to i1
  %64 = zext i1 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %141

; <label>:66                                      ; preds = %61
  %67 = load float* %aB, align 4
  %68 = load float* %aA, align 4
  %69 = fsub float %67, %68
  %70 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 9
  %71 = load float* %70, align 4
  %72 = fsub float %69, %71
  store float %72, float* %angle, align 4
  store float 0.000000e+00, float* %limitImpulse, align 4
  %73 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 24
  %74 = load i32* %73, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %89

; <label>:76                                      ; preds = %66
  %77 = load float* %angle, align 4
  %78 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 10
  %79 = load float* %78, align 4
  %80 = fsub float %77, %79
  %81 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %80, float 0xBFC1DF46C0000000, float 0x3FC1DF46C0000000)
  store float %81, float* %C, align 4
  %82 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 23
  %83 = load float* %82, align 4
  %84 = fsub float -0.000000e+00, %83
  %85 = load float* %C, align 4
  %86 = fmul float %84, %85
  store float %86, float* %limitImpulse, align 4
  %87 = load float* %C, align 4
  %88 = call float @_Z5b2AbsIfET_S0_(float %87)
  store float %88, float* %angularError, align 4
  br label %128

; <label>:89                                      ; preds = %66
  %90 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 24
  %91 = load i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %108

; <label>:93                                      ; preds = %89
  %94 = load float* %angle, align 4
  %95 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 10
  %96 = load float* %95, align 4
  %97 = fsub float %94, %96
  store float %97, float* %C1, align 4
  %98 = load float* %C1, align 4
  %99 = fsub float -0.000000e+00, %98
  store float %99, float* %angularError, align 4
  %100 = load float* %C1, align 4
  %101 = fadd float %100, 0x3FA1DF46C0000000
  %102 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %101, float 0xBFC1DF46C0000000, float 0.000000e+00)
  store float %102, float* %C1, align 4
  %103 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 23
  %104 = load float* %103, align 4
  %105 = fsub float -0.000000e+00, %104
  %106 = load float* %C1, align 4
  %107 = fmul float %105, %106
  store float %107, float* %limitImpulse, align 4
  br label %127

; <label>:108                                     ; preds = %89
  %109 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 24
  %110 = load i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %126

; <label>:112                                     ; preds = %108
  %113 = load float* %angle, align 4
  %114 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 11
  %115 = load float* %114, align 4
  %116 = fsub float %113, %115
  store float %116, float* %C2, align 4
  %117 = load float* %C2, align 4
  store float %117, float* %angularError, align 4
  %118 = load float* %C2, align 4
  %119 = fsub float %118, 0x3FA1DF46C0000000
  %120 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %119, float 0.000000e+00, float 0x3FC1DF46C0000000)
  store float %120, float* %C2, align 4
  %121 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 23
  %122 = load float* %121, align 4
  %123 = fsub float -0.000000e+00, %122
  %124 = load float* %C2, align 4
  %125 = fmul float %123, %124
  store float %125, float* %limitImpulse, align 4
  br label %126

; <label>:126                                     ; preds = %112, %108
  br label %127

; <label>:127                                     ; preds = %126, %93
  br label %128

; <label>:128                                     ; preds = %127, %76
  %129 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 20
  %130 = load float* %129, align 4
  %131 = load float* %limitImpulse, align 4
  %132 = fmul float %130, %131
  %133 = load float* %aA, align 4
  %134 = fsub float %133, %132
  store float %134, float* %aA, align 4
  %135 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 21
  %136 = load float* %135, align 4
  %137 = load float* %limitImpulse, align 4
  %138 = fmul float %136, %137
  %139 = load float* %aB, align 4
  %140 = fadd float %139, %138
  store float %140, float* %aB, align 4
  br label %141

; <label>:141                                     ; preds = %128, %61, %57, %0
  %142 = load float* %aA, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %qA, float %142)
  %143 = load float* %aB, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %qB, float %143)
  %144 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 1
  %145 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %144, %struct.b2Vec2* %145)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %146 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 2
  %147 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %146, %struct.b2Vec2* %147)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %C3, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %148 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %C3)
  store float %148, float* %positionError, align 4
  %149 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 18
  %150 = load float* %149, align 4
  store float %150, float* %mA, align 4
  %151 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 19
  %152 = load float* %151, align 4
  store float %152, float* %mB, align 4
  %153 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 20
  %154 = load float* %153, align 4
  store float %154, float* %iA, align 4
  %155 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 21
  %156 = load float* %155, align 4
  store float %156, float* %iB, align 4
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %K)
  %157 = load float* %mA, align 4
  %158 = load float* %mB, align 4
  %159 = fadd float %157, %158
  %160 = load float* %iA, align 4
  %161 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %162 = load float* %161, align 4
  %163 = fmul float %160, %162
  %164 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %165 = load float* %164, align 4
  %166 = fmul float %163, %165
  %167 = fadd float %159, %166
  %168 = load float* %iB, align 4
  %169 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %170 = load float* %169, align 4
  %171 = fmul float %168, %170
  %172 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %173 = load float* %172, align 4
  %174 = fmul float %171, %173
  %175 = fadd float %167, %174
  %176 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %177 = getelementptr inbounds %struct.b2Vec2* %176, i32 0, i32 0
  store float %175, float* %177, align 4
  %178 = load float* %iA, align 4
  %179 = fsub float -0.000000e+00, %178
  %180 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %181 = load float* %180, align 4
  %182 = fmul float %179, %181
  %183 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 1
  %184 = load float* %183, align 4
  %185 = fmul float %182, %184
  %186 = load float* %iB, align 4
  %187 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %188 = load float* %187, align 4
  %189 = fmul float %186, %188
  %190 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 1
  %191 = load float* %190, align 4
  %192 = fmul float %189, %191
  %193 = fsub float %185, %192
  %194 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %195 = getelementptr inbounds %struct.b2Vec2* %194, i32 0, i32 1
  store float %193, float* %195, align 4
  %196 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 0
  %197 = getelementptr inbounds %struct.b2Vec2* %196, i32 0, i32 1
  %198 = load float* %197, align 4
  %199 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %200 = getelementptr inbounds %struct.b2Vec2* %199, i32 0, i32 0
  store float %198, float* %200, align 4
  %201 = load float* %mA, align 4
  %202 = load float* %mB, align 4
  %203 = fadd float %201, %202
  %204 = load float* %iA, align 4
  %205 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %206 = load float* %205, align 4
  %207 = fmul float %204, %206
  %208 = getelementptr inbounds %struct.b2Vec2* %rA, i32 0, i32 0
  %209 = load float* %208, align 4
  %210 = fmul float %207, %209
  %211 = fadd float %203, %210
  %212 = load float* %iB, align 4
  %213 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %214 = load float* %213, align 4
  %215 = fmul float %212, %214
  %216 = getelementptr inbounds %struct.b2Vec2* %rB, i32 0, i32 0
  %217 = load float* %216, align 4
  %218 = fmul float %215, %217
  %219 = fadd float %211, %218
  %220 = getelementptr inbounds %struct.b2Mat22* %K, i32 0, i32 1
  %221 = getelementptr inbounds %struct.b2Vec2* %220, i32 0, i32 1
  store float %219, float* %221, align 4
  call void @_ZNK7b2Mat225SolveERK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Mat22* %K, %struct.b2Vec2* %C3)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %impulse, %struct.b2Vec2* %7)
  %222 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %222, %struct.b2Vec2* %impulse)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %8)
  %223 = load float* %iA, align 4
  %224 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %impulse)
  %225 = fmul float %223, %224
  %226 = load float* %aA, align 4
  %227 = fsub float %226, %225
  store float %227, float* %aA, align 4
  %228 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %228, %struct.b2Vec2* %impulse)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %9)
  %229 = load float* %iB, align 4
  %230 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %impulse)
  %231 = fmul float %229, %230
  %232 = load float* %aB, align 4
  %233 = fadd float %232, %231
  store float %233, float* %aB, align 4
  %234 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 12
  %235 = load i32* %234, align 4
  %236 = load %struct.b2SolverData** %2
  %237 = getelementptr inbounds %struct.b2SolverData* %236, i32 0, i32 1
  %238 = load %struct.b2Position** %237, align 4
  %239 = getelementptr inbounds %struct.b2Position* %238, i32 %235
  %240 = getelementptr inbounds %struct.b2Position* %239, i32 0, i32 0
  %241 = bitcast %struct.b2Vec2* %240 to i8*
  %242 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %241, i8* %242, i32 8, i32 4, i1 false)
  %243 = load float* %aA, align 4
  %244 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 12
  %245 = load i32* %244, align 4
  %246 = load %struct.b2SolverData** %2
  %247 = getelementptr inbounds %struct.b2SolverData* %246, i32 0, i32 1
  %248 = load %struct.b2Position** %247, align 4
  %249 = getelementptr inbounds %struct.b2Position* %248, i32 %245
  %250 = getelementptr inbounds %struct.b2Position* %249, i32 0, i32 1
  store float %243, float* %250, align 4
  %251 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 13
  %252 = load i32* %251, align 4
  %253 = load %struct.b2SolverData** %2
  %254 = getelementptr inbounds %struct.b2SolverData* %253, i32 0, i32 1
  %255 = load %struct.b2Position** %254, align 4
  %256 = getelementptr inbounds %struct.b2Position* %255, i32 %252
  %257 = getelementptr inbounds %struct.b2Position* %256, i32 0, i32 0
  %258 = bitcast %struct.b2Vec2* %257 to i8*
  %259 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %258, i8* %259, i32 8, i32 4, i1 false)
  %260 = load float* %aB, align 4
  %261 = getelementptr inbounds %class.b2RevoluteJoint* %10, i32 0, i32 13
  %262 = load i32* %261, align 4
  %263 = load %struct.b2SolverData** %2
  %264 = getelementptr inbounds %struct.b2SolverData* %263, i32 0, i32 1
  %265 = load %struct.b2Position** %264, align 4
  %266 = getelementptr inbounds %struct.b2Position* %265, i32 %262
  %267 = getelementptr inbounds %struct.b2Position* %266, i32 0, i32 1
  store float %260, float* %267, align 4
  %268 = load float* %positionError, align 4
  %269 = fcmp ole float %268, 0x3F747AE140000000
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %141
  %271 = load float* %angularError, align 4
  %272 = fcmp ole float %271, 0x3FA1DF46C0000000
  br label %273

; <label>:273                                     ; preds = %270, %141
  %274 = phi i1 [ false, %141 ], [ %272, %270 ]
  ret i1 %274
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

define linkonce_odr void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  call void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %2)
  ret void
}

define linkonce_odr void @_ZNK7b2Mat225SolveERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Mat22* %this, %struct.b2Vec2* %b) align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %a11 = alloca float, align 4
  %a12 = alloca float, align 4
  %a21 = alloca float, align 4
  %a22 = alloca float, align 4
  %det = alloca float, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  store %struct.b2Vec2* %b, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Mat22** %1
  %4 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  store float %6, float* %a11, align 4
  %7 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  store float %9, float* %a12, align 4
  %10 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  store float %12, float* %a21, align 4
  %13 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
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

define void @_ZNK15b2RevoluteJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2RevoluteJoint* %this) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 1
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

define void @_ZNK15b2RevoluteJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2RevoluteJoint* %this) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 2
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK15b2RevoluteJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2RevoluteJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2RevoluteJoint** %1
  %4 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.b2Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.b2Vec3* %7, i32 0, i32 1
  %9 = load float* %8, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %P, float %6, float %9)
  %10 = load float* %2, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %10, %struct.b2Vec2* %P)
  ret void
}

define float @_ZNK15b2RevoluteJoint17GetReactionTorqueEf(%class.b2RevoluteJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2RevoluteJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 2
  %7 = load float* %6, align 4
  %8 = fmul float %4, %7
  ret float %8
}

define float @_ZNK15b2RevoluteJoint13GetJointAngleEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %bA = alloca %class.b2Body*, align 4
  %bB = alloca %class.b2Body*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  store %class.b2Body* %5, %class.b2Body** %bA, align 4
  %6 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %7 = getelementptr inbounds %class.b2Joint* %6, i32 0, i32 7
  %8 = load %class.b2Body** %7, align 4
  store %class.b2Body* %8, %class.b2Body** %bB, align 4
  %9 = load %class.b2Body** %bB, align 4
  %10 = getelementptr inbounds %class.b2Body* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.b2Sweep* %10, i32 0, i32 4
  %12 = load float* %11, align 4
  %13 = load %class.b2Body** %bA, align 4
  %14 = getelementptr inbounds %class.b2Body* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.b2Sweep* %14, i32 0, i32 4
  %16 = load float* %15, align 4
  %17 = fsub float %12, %16
  %18 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 9
  %19 = load float* %18, align 4
  %20 = fsub float %17, %19
  ret float %20
}

define float @_ZNK15b2RevoluteJoint13GetJointSpeedEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %bA = alloca %class.b2Body*, align 4
  %bB = alloca %class.b2Body*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  store %class.b2Body* %5, %class.b2Body** %bA, align 4
  %6 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %7 = getelementptr inbounds %class.b2Joint* %6, i32 0, i32 7
  %8 = load %class.b2Body** %7, align 4
  store %class.b2Body* %8, %class.b2Body** %bB, align 4
  %9 = load %class.b2Body** %bB, align 4
  %10 = getelementptr inbounds %class.b2Body* %9, i32 0, i32 6
  %11 = load float* %10, align 4
  %12 = load %class.b2Body** %bA, align 4
  %13 = getelementptr inbounds %class.b2Body* %12, i32 0, i32 6
  %14 = load float* %13, align 4
  %15 = fsub float %11, %14
  ret float %15
}

define zeroext i1 @_ZNK15b2RevoluteJoint14IsMotorEnabledEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 5
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define void @_ZN15b2RevoluteJoint11EnableMotorEb(%class.b2RevoluteJoint* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca i8, align 1
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2RevoluteJoint** %1
  %5 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %6 = getelementptr inbounds %class.b2Joint* %5, i32 0, i32 6
  %7 = load %class.b2Body** %6, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %7, i1 zeroext true)
  %8 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %10, i1 zeroext true)
  %11 = load i8* %2, align 1
  %12 = trunc i8 %11 to i1
  %13 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 5
  %14 = zext i1 %12 to i8
  store i8 %14, i8* %13, align 1
  ret void
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

define float @_ZNK15b2RevoluteJoint14GetMotorTorqueEf(%class.b2RevoluteJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2RevoluteJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 4
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  ret float %7
}

define void @_ZN15b2RevoluteJoint13SetMotorSpeedEf(%class.b2RevoluteJoint* %this, float %speed) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %speed, float* %2, align 4
  %3 = load %class.b2RevoluteJoint** %1
  %4 = bitcast %class.b2RevoluteJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2RevoluteJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 7
  store float %10, float* %11, align 4
  ret void
}

define void @_ZN15b2RevoluteJoint17SetMaxMotorTorqueEf(%class.b2RevoluteJoint* %this, float %torque) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %torque, float* %2, align 4
  %3 = load %class.b2RevoluteJoint** %1
  %4 = bitcast %class.b2RevoluteJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2RevoluteJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2RevoluteJoint* %3, i32 0, i32 6
  store float %10, float* %11, align 4
  ret void
}

define zeroext i1 @_ZNK15b2RevoluteJoint14IsLimitEnabledEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 8
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define void @_ZN15b2RevoluteJoint11EnableLimitEb(%class.b2RevoluteJoint* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca i8, align 1
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2RevoluteJoint** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 8
  %9 = load i8* %8, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %26

; <label>:13                                      ; preds = %0
  %14 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 6
  %16 = load %class.b2Body** %15, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %16, i1 zeroext true)
  %17 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %18 = getelementptr inbounds %class.b2Joint* %17, i32 0, i32 7
  %19 = load %class.b2Body** %18, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %19, i1 zeroext true)
  %20 = load i8* %2, align 1
  %21 = trunc i8 %20 to i1
  %22 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 8
  %23 = zext i1 %21 to i8
  store i8 %23, i8* %22, align 1
  %24 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 3
  %25 = getelementptr inbounds %struct.b2Vec3* %24, i32 0, i32 2
  store float 0.000000e+00, float* %25, align 4
  br label %26

; <label>:26                                      ; preds = %13, %0
  ret void
}

define float @_ZNK15b2RevoluteJoint13GetLowerLimitEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 10
  %4 = load float* %3, align 4
  ret float %4
}

define float @_ZNK15b2RevoluteJoint13GetUpperLimitEv(%class.b2RevoluteJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 11
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN15b2RevoluteJoint9SetLimitsEff(%class.b2RevoluteJoint* %this, float %lower, float %upper) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  store float %lower, float* %2, align 4
  store float %upper, float* %3, align 4
  %4 = load %class.b2RevoluteJoint** %1
  %5 = load float* %2, align 4
  %6 = load float* %3, align 4
  %7 = fcmp ole float %5, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 473, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__._ZN15b2RevoluteJoint9SetLimitsEff, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = load float* %2, align 4
  %13 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 10
  %14 = load float* %13, align 4
  %15 = fcmp une float %12, %14
  br i1 %15, label %21, label %16

; <label>:16                                      ; preds = %11
  %17 = load float* %3, align 4
  %18 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 11
  %19 = load float* %18, align 4
  %20 = fcmp une float %17, %19
  br i1 %20, label %21, label %34

; <label>:21                                      ; preds = %16, %11
  %22 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %23 = getelementptr inbounds %class.b2Joint* %22, i32 0, i32 6
  %24 = load %class.b2Body** %23, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %24, i1 zeroext true)
  %25 = bitcast %class.b2RevoluteJoint* %4 to %class.b2Joint*
  %26 = getelementptr inbounds %class.b2Joint* %25, i32 0, i32 7
  %27 = load %class.b2Body** %26, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %27, i1 zeroext true)
  %28 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.b2Vec3* %28, i32 0, i32 2
  store float 0.000000e+00, float* %29, align 4
  %30 = load float* %2, align 4
  %31 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 10
  store float %30, float* %31, align 4
  %32 = load float* %3, align 4
  %33 = getelementptr inbounds %class.b2RevoluteJoint* %4, i32 0, i32 11
  store float %32, float* %33, align 4
  br label %34

; <label>:34                                      ; preds = %21, %16
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define void @_ZN15b2RevoluteJoint4DumpEv(%class.b2RevoluteJoint* %this) align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str6, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str7, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 9
  %37 = load float* %36, align 4
  %38 = fpext float %37 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str8, i32 0, i32 0), double %38)
  %39 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 8
  %40 = load i8* %39, align 1
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i32 %42)
  %43 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 10
  %44 = load float* %43, align 4
  %45 = fpext float %44 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str10, i32 0, i32 0), double %45)
  %46 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 11
  %47 = load float* %46, align 4
  %48 = fpext float %47 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str11, i32 0, i32 0), double %48)
  %49 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 5
  %50 = load i8* %49, align 1
  %51 = trunc i8 %50 to i1
  %52 = zext i1 %51 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str12, i32 0, i32 0), i32 %52)
  %53 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 7
  %54 = load float* %53, align 4
  %55 = fpext float %54 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str13, i32 0, i32 0), double %55)
  %56 = getelementptr inbounds %class.b2RevoluteJoint* %2, i32 0, i32 6
  %57 = load float* %56, align 4
  %58 = fpext float %57 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str14, i32 0, i32 0), double %58)
  %59 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  %60 = getelementptr inbounds %class.b2Joint* %59, i32 0, i32 8
  %61 = load i32* %60, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str15, i32 0, i32 0), i32 %61)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN15b2RevoluteJointD1Ev(%class.b2RevoluteJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  call void @_ZN15b2RevoluteJointD2Ev(%class.b2RevoluteJoint* %2)
  ret void
}

define linkonce_odr void @_ZN15b2RevoluteJointD0Ev(%class.b2RevoluteJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %4 = load %class.b2RevoluteJoint** %1
  invoke void @_ZN15b2RevoluteJointD1Ev(%class.b2RevoluteJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2RevoluteJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2RevoluteJoint* %4 to i8*
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

define linkonce_odr void @_ZN15b2RevoluteJointD2Ev(%class.b2RevoluteJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RevoluteJoint*, align 4
  store %class.b2RevoluteJoint* %this, %class.b2RevoluteJoint** %1, align 4
  %2 = load %class.b2RevoluteJoint** %1
  %3 = bitcast %class.b2RevoluteJoint* %2 to %class.b2Joint*
  call void @_ZN7b2JointD2Ev(%class.b2Joint* %3)
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

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

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
