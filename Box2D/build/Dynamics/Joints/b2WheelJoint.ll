; ModuleID = 'Dynamics/Joints/b2WheelJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2WheelJoint = type { %class.b2Joint, float, float, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i8, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, float, float, float, float }
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
%struct.b2WheelJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, float, float, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV12b2WheelJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12b2WheelJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WheelJoint*)* @_ZNK12b2WheelJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WheelJoint*)* @_ZNK12b2WheelJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2WheelJoint*, float)* @_ZNK12b2WheelJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2WheelJoint*, float)* @_ZNK12b2WheelJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2WheelJoint*)* @_ZN12b2WheelJoint4DumpEv to i8*), i8* bitcast (void (%class.b2WheelJoint*)* @_ZN12b2WheelJointD1Ev to i8*), i8* bitcast (void (%class.b2WheelJoint*)* @_ZN12b2WheelJointD0Ev to i8*), i8* bitcast (void (%class.b2WheelJoint*, %struct.b2SolverData*)* @_ZN12b2WheelJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2WheelJoint*, %struct.b2SolverData*)* @_ZN12b2WheelJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2WheelJoint*, %struct.b2SolverData*)* @_ZN12b2WheelJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [23 x i8] c"  b2WheelJointDef jd;\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str6 = private unnamed_addr constant [40 x i8] c"  jd.localAxisA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str7 = private unnamed_addr constant [30 x i8] c"  jd.enableMotor = bool(%d);\0A\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"  jd.motorSpeed = %.15lef;\0A\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"  jd.maxMotorTorque = %.15lef;\0A\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"  jd.frequencyHz = %.15lef;\0A\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"  jd.dampingRatio = %.15lef;\0A\00", align 1
@.str12 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS12b2WheelJoint = constant [15 x i8] c"12b2WheelJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI12b2WheelJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8]* @_ZTS12b2WheelJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN12b2WheelJointC1EPK15b2WheelJointDef = alias void (%class.b2WheelJoint*, %struct.b2WheelJointDef*)* @_ZN12b2WheelJointC2EPK15b2WheelJointDef

define void @_ZN15b2WheelJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_(%struct.b2WheelJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %anchor, %struct.b2Vec2* %axis) align 2 {
  %1 = alloca %struct.b2WheelJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2*, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %struct.b2WheelJointDef* %this, %struct.b2WheelJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor, %struct.b2Vec2** %4, align 4
  store %struct.b2Vec2* %axis, %struct.b2Vec2** %5, align 4
  %9 = load %struct.b2WheelJointDef** %1
  %10 = load %class.b2Body** %2, align 4
  %11 = bitcast %struct.b2WheelJointDef* %9 to %struct.b2JointDef*
  %12 = getelementptr inbounds %struct.b2JointDef* %11, i32 0, i32 2
  store %class.b2Body* %10, %class.b2Body** %12, align 4
  %13 = load %class.b2Body** %3, align 4
  %14 = bitcast %struct.b2WheelJointDef* %9 to %struct.b2JointDef*
  %15 = getelementptr inbounds %struct.b2JointDef* %14, i32 0, i32 3
  store %class.b2Body* %13, %class.b2Body** %15, align 4
  %16 = getelementptr inbounds %struct.b2WheelJointDef* %9, i32 0, i32 1
  %17 = bitcast %struct.b2WheelJointDef* %9 to %struct.b2JointDef*
  %18 = getelementptr inbounds %struct.b2JointDef* %17, i32 0, i32 2
  %19 = load %class.b2Body** %18, align 4
  %20 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %19, %struct.b2Vec2* %20)
  %21 = bitcast %struct.b2Vec2* %16 to i8*
  %22 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  %23 = getelementptr inbounds %struct.b2WheelJointDef* %9, i32 0, i32 2
  %24 = bitcast %struct.b2WheelJointDef* %9 to %struct.b2JointDef*
  %25 = getelementptr inbounds %struct.b2JointDef* %24, i32 0, i32 3
  %26 = load %class.b2Body** %25, align 4
  %27 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %7, %class.b2Body* %26, %struct.b2Vec2* %27)
  %28 = bitcast %struct.b2Vec2* %23 to i8*
  %29 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %struct.b2WheelJointDef* %9, i32 0, i32 3
  %31 = bitcast %struct.b2WheelJointDef* %9 to %struct.b2JointDef*
  %32 = getelementptr inbounds %struct.b2JointDef* %31, i32 0, i32 2
  %33 = load %class.b2Body** %32, align 4
  %34 = load %struct.b2Vec2** %5
  call void @_ZNK6b2Body14GetLocalVectorERK6b2Vec2(%struct.b2Vec2* sret %8, %class.b2Body* %33, %struct.b2Vec2* %34)
  %35 = bitcast %struct.b2Vec2* %30 to i8*
  %36 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
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

define linkonce_odr void @_ZNK6b2Body14GetLocalVectorERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %class.b2Body* %this, %struct.b2Vec2* %worldVector) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2Vec2* %worldVector, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.b2Transform* %4, i32 0, i32 1
  %6 = load %struct.b2Vec2** %2
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %agg.result, %struct.b2Rot* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZN12b2WheelJointC2EPK15b2WheelJointDef(%class.b2WheelJoint* %this, %struct.b2WheelJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca %struct.b2WheelJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store %struct.b2WheelJointDef* %def, %struct.b2WheelJointDef** %2, align 4
  %6 = load %class.b2WheelJoint** %1
  %7 = bitcast %class.b2WheelJoint* %6 to %class.b2Joint*
  %8 = load %struct.b2WheelJointDef** %2, align 4
  %9 = bitcast %struct.b2WheelJointDef* %8 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %7, %struct.b2JointDef* %9)
  %10 = bitcast %class.b2WheelJoint* %6 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV12b2WheelJoint, i64 0, i64 2), i8*** %10
  %11 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %81

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %81

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 5
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %15)
          to label %16 unwind label %81

; <label>:16                                      ; preds = %14
  %17 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 6
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %17)
          to label %18 unwind label %81

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 15
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %19)
          to label %20 unwind label %81

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 16
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %21)
          to label %22 unwind label %81

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 21
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %23)
          to label %24 unwind label %81

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 22
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %25)
          to label %26 unwind label %81

; <label>:26                                      ; preds = %24
  %27 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 3
  %28 = load %struct.b2WheelJointDef** %2, align 4
  %29 = getelementptr inbounds %struct.b2WheelJointDef* %28, i32 0, i32 1
  %30 = bitcast %struct.b2Vec2* %27 to i8*
  %31 = bitcast %struct.b2Vec2* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 8, i32 4, i1 false)
  %32 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 4
  %33 = load %struct.b2WheelJointDef** %2, align 4
  %34 = getelementptr inbounds %struct.b2WheelJointDef* %33, i32 0, i32 2
  %35 = bitcast %struct.b2Vec2* %32 to i8*
  %36 = bitcast %struct.b2Vec2* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
  %37 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 5
  %38 = load %struct.b2WheelJointDef** %2, align 4
  %39 = getelementptr inbounds %struct.b2WheelJointDef* %38, i32 0, i32 3
  %40 = bitcast %struct.b2Vec2* %37 to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 6
  %43 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 5
  invoke void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float 1.000000e+00, %struct.b2Vec2* %43)
          to label %44 unwind label %81

; <label>:44                                      ; preds = %26
  %45 = bitcast %struct.b2Vec2* %42 to i8*
  %46 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 8, i32 4, i1 false)
  %47 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 27
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 7
  store float 0.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 28
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 8
  store float 0.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 29
  store float 0.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 9
  store float 0.000000e+00, float* %52, align 4
  %53 = load %struct.b2WheelJointDef** %2, align 4
  %54 = getelementptr inbounds %struct.b2WheelJointDef* %53, i32 0, i32 5
  %55 = load float* %54, align 4
  %56 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 10
  store float %55, float* %56, align 4
  %57 = load %struct.b2WheelJointDef** %2, align 4
  %58 = getelementptr inbounds %struct.b2WheelJointDef* %57, i32 0, i32 6
  %59 = load float* %58, align 4
  %60 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 11
  store float %59, float* %60, align 4
  %61 = load %struct.b2WheelJointDef** %2, align 4
  %62 = getelementptr inbounds %struct.b2WheelJointDef* %61, i32 0, i32 4
  %63 = load i8* %62, align 1
  %64 = trunc i8 %63 to i1
  %65 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 12
  %66 = zext i1 %64 to i8
  store i8 %66, i8* %65, align 1
  %67 = load %struct.b2WheelJointDef** %2, align 4
  %68 = getelementptr inbounds %struct.b2WheelJointDef* %67, i32 0, i32 7
  %69 = load float* %68, align 4
  %70 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 1
  store float %69, float* %70, align 4
  %71 = load %struct.b2WheelJointDef** %2, align 4
  %72 = getelementptr inbounds %struct.b2WheelJointDef* %71, i32 0, i32 8
  %73 = load float* %72, align 4
  %74 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 2
  store float %73, float* %74, align 4
  %75 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 30
  store float 0.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 31
  store float 0.000000e+00, float* %76, align 4
  %77 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 21
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %77)
          to label %78 unwind label %81

; <label>:78                                      ; preds = %44
  %79 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 22
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %79)
          to label %80 unwind label %81

; <label>:80                                      ; preds = %78
  ret void

; <label>:81                                      ; preds = %78, %44, %26, %24, %22, %20, %18, %16, %14, %12, %0
  %82 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %3
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %4
  %85 = bitcast %class.b2WheelJoint* %6 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %85)
          to label %86 unwind label %93

; <label>:86                                      ; preds = %81
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i8** %3
  %89 = load i8** %3
  %90 = load i32* %4
  %91 = insertvalue { i8*, i32 } undef, i8* %89, 0
  %92 = insertvalue { i8*, i32 } %91, i32 %90, 1
  resume { i8*, i32 } %92

; <label>:93                                      ; preds = %81
  %94 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN12b2WheelJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2WheelJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
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
  %rA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %invMass = alloca float, align 4
  %C = alloca float, align 4
  %omega = alloca float, align 4
  %d1 = alloca float, align 4
  %k = alloca float, align 4
  %h = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %15 = load %class.b2WheelJoint** %1
  %16 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %17 = getelementptr inbounds %class.b2Joint* %16, i32 0, i32 6
  %18 = load %class.b2Body** %17, align 4
  %19 = getelementptr inbounds %class.b2Body* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  store i32 %20, i32* %21, align 4
  %22 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %23 = getelementptr inbounds %class.b2Joint* %22, i32 0, i32 7
  %24 = load %class.b2Body** %23, align 4
  %25 = getelementptr inbounds %class.b2Body* %24, i32 0, i32 2
  %26 = load i32* %25, align 4
  %27 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 15
  %29 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %30 = getelementptr inbounds %class.b2Joint* %29, i32 0, i32 6
  %31 = load %class.b2Body** %30, align 4
  %32 = getelementptr inbounds %class.b2Body* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.b2Sweep* %32, i32 0, i32 0
  %34 = bitcast %struct.b2Vec2* %28 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 16
  %37 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %38 = getelementptr inbounds %class.b2Joint* %37, i32 0, i32 7
  %39 = load %class.b2Body** %38, align 4
  %40 = getelementptr inbounds %class.b2Body* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.b2Sweep* %40, i32 0, i32 0
  %42 = bitcast %struct.b2Vec2* %36 to i8*
  %43 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %45 = getelementptr inbounds %class.b2Joint* %44, i32 0, i32 6
  %46 = load %class.b2Body** %45, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 17
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 17
  store float %48, float* %49, align 4
  %50 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 7
  %52 = load %class.b2Body** %51, align 4
  %53 = getelementptr inbounds %class.b2Body* %52, i32 0, i32 17
  %54 = load float* %53, align 4
  %55 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 18
  store float %54, float* %55, align 4
  %56 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %57 = getelementptr inbounds %class.b2Joint* %56, i32 0, i32 6
  %58 = load %class.b2Body** %57, align 4
  %59 = getelementptr inbounds %class.b2Body* %58, i32 0, i32 19
  %60 = load float* %59, align 4
  %61 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 19
  store float %60, float* %61, align 4
  %62 = bitcast %class.b2WheelJoint* %15 to %class.b2Joint*
  %63 = getelementptr inbounds %class.b2Joint* %62, i32 0, i32 7
  %64 = load %class.b2Body** %63, align 4
  %65 = getelementptr inbounds %class.b2Body* %64, i32 0, i32 19
  %66 = load float* %65, align 4
  %67 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 20
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 17
  %69 = load float* %68, align 4
  store float %69, float* %mA, align 4
  %70 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 18
  %71 = load float* %70, align 4
  store float %71, float* %mB, align 4
  %72 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 19
  %73 = load float* %72, align 4
  store float %73, float* %iA, align 4
  %74 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 20
  %75 = load float* %74, align 4
  store float %75, float* %iB, align 4
  %76 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %77 = load i32* %76, align 4
  %78 = load %struct.b2SolverData** %2
  %79 = getelementptr inbounds %struct.b2SolverData* %78, i32 0, i32 1
  %80 = load %struct.b2Position** %79, align 4
  %81 = getelementptr inbounds %struct.b2Position* %80, i32 %77
  %82 = getelementptr inbounds %struct.b2Position* %81, i32 0, i32 0
  %83 = bitcast %struct.b2Vec2* %cA to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  %85 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %86 = load i32* %85, align 4
  %87 = load %struct.b2SolverData** %2
  %88 = getelementptr inbounds %struct.b2SolverData* %87, i32 0, i32 1
  %89 = load %struct.b2Position** %88, align 4
  %90 = getelementptr inbounds %struct.b2Position* %89, i32 %86
  %91 = getelementptr inbounds %struct.b2Position* %90, i32 0, i32 1
  %92 = load float* %91, align 4
  store float %92, float* %aA, align 4
  %93 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %94 = load i32* %93, align 4
  %95 = load %struct.b2SolverData** %2
  %96 = getelementptr inbounds %struct.b2SolverData* %95, i32 0, i32 2
  %97 = load %struct.b2Velocity** %96, align 4
  %98 = getelementptr inbounds %struct.b2Velocity* %97, i32 %94
  %99 = getelementptr inbounds %struct.b2Velocity* %98, i32 0, i32 0
  %100 = bitcast %struct.b2Vec2* %vA to i8*
  %101 = bitcast %struct.b2Vec2* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %100, i8* %101, i32 8, i32 4, i1 false)
  %102 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %103 = load i32* %102, align 4
  %104 = load %struct.b2SolverData** %2
  %105 = getelementptr inbounds %struct.b2SolverData* %104, i32 0, i32 2
  %106 = load %struct.b2Velocity** %105, align 4
  %107 = getelementptr inbounds %struct.b2Velocity* %106, i32 %103
  %108 = getelementptr inbounds %struct.b2Velocity* %107, i32 0, i32 1
  %109 = load float* %108, align 4
  store float %109, float* %wA, align 4
  %110 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %111 = load i32* %110, align 4
  %112 = load %struct.b2SolverData** %2
  %113 = getelementptr inbounds %struct.b2SolverData* %112, i32 0, i32 1
  %114 = load %struct.b2Position** %113, align 4
  %115 = getelementptr inbounds %struct.b2Position* %114, i32 %111
  %116 = getelementptr inbounds %struct.b2Position* %115, i32 0, i32 0
  %117 = bitcast %struct.b2Vec2* %cB to i8*
  %118 = bitcast %struct.b2Vec2* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %117, i8* %118, i32 8, i32 4, i1 false)
  %119 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %120 = load i32* %119, align 4
  %121 = load %struct.b2SolverData** %2
  %122 = getelementptr inbounds %struct.b2SolverData* %121, i32 0, i32 1
  %123 = load %struct.b2Position** %122, align 4
  %124 = getelementptr inbounds %struct.b2Position* %123, i32 %120
  %125 = getelementptr inbounds %struct.b2Position* %124, i32 0, i32 1
  %126 = load float* %125, align 4
  store float %126, float* %aB, align 4
  %127 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %128 = load i32* %127, align 4
  %129 = load %struct.b2SolverData** %2
  %130 = getelementptr inbounds %struct.b2SolverData* %129, i32 0, i32 2
  %131 = load %struct.b2Velocity** %130, align 4
  %132 = getelementptr inbounds %struct.b2Velocity* %131, i32 %128
  %133 = getelementptr inbounds %struct.b2Velocity* %132, i32 0, i32 0
  %134 = bitcast %struct.b2Vec2* %vB to i8*
  %135 = bitcast %struct.b2Vec2* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %134, i8* %135, i32 8, i32 4, i1 false)
  %136 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %137 = load i32* %136, align 4
  %138 = load %struct.b2SolverData** %2
  %139 = getelementptr inbounds %struct.b2SolverData* %138, i32 0, i32 2
  %140 = load %struct.b2Velocity** %139, align 4
  %141 = getelementptr inbounds %struct.b2Velocity* %140, i32 %137
  %142 = getelementptr inbounds %struct.b2Velocity* %141, i32 0, i32 1
  %143 = load float* %142, align 4
  store float %143, float* %wB, align 4
  %144 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %144)
  %145 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %145)
  %146 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 3
  %147 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 15
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %146, %struct.b2Vec2* %147)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %148 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 4
  %149 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %148, %struct.b2Vec2* %149)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %150 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 22
  %151 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %qA, %struct.b2Vec2* %151)
  %152 = bitcast %struct.b2Vec2* %150 to i8*
  %153 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %152, i8* %153, i32 8, i32 4, i1 false)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %154 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 22
  %155 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %8, %struct.b2Vec2* %154)
  %156 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 25
  store float %155, float* %156, align 4
  %157 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 22
  %158 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %157)
  %159 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 26
  store float %158, float* %159, align 4
  %160 = load float* %mA, align 4
  %161 = load float* %mB, align 4
  %162 = fadd float %160, %161
  %163 = load float* %iA, align 4
  %164 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 25
  %165 = load float* %164, align 4
  %166 = fmul float %163, %165
  %167 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 25
  %168 = load float* %167, align 4
  %169 = fmul float %166, %168
  %170 = fadd float %162, %169
  %171 = load float* %iB, align 4
  %172 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 26
  %173 = load float* %172, align 4
  %174 = fmul float %171, %173
  %175 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 26
  %176 = load float* %175, align 4
  %177 = fmul float %174, %176
  %178 = fadd float %170, %177
  %179 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 27
  store float %178, float* %179, align 4
  %180 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 27
  %181 = load float* %180, align 4
  %182 = fcmp ogt float %181, 0.000000e+00
  br i1 %182, label %183, label %188

; <label>:183                                     ; preds = %0
  %184 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 27
  %185 = load float* %184, align 4
  %186 = fdiv float 1.000000e+00, %185
  %187 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 27
  store float %186, float* %187, align 4
  br label %188

; <label>:188                                     ; preds = %183, %0
  %189 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  store float 0.000000e+00, float* %189, align 4
  %190 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 30
  store float 0.000000e+00, float* %190, align 4
  %191 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  store float 0.000000e+00, float* %191, align 4
  %192 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 1
  %193 = load float* %192, align 4
  %194 = fcmp ogt float %193, 0.000000e+00
  br i1 %194, label %195, label %295

; <label>:195                                     ; preds = %188
  %196 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 21
  %197 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 5
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %9, %struct.b2Rot* %qA, %struct.b2Vec2* %197)
  %198 = bitcast %struct.b2Vec2* %196 to i8*
  %199 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %198, i8* %199, i32 8, i32 4, i1 false)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %200 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 21
  %201 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %10, %struct.b2Vec2* %200)
  %202 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 23
  store float %201, float* %202, align 4
  %203 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 21
  %204 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %203)
  %205 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 24
  store float %204, float* %205, align 4
  %206 = load float* %mA, align 4
  %207 = load float* %mB, align 4
  %208 = fadd float %206, %207
  %209 = load float* %iA, align 4
  %210 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 23
  %211 = load float* %210, align 4
  %212 = fmul float %209, %211
  %213 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 23
  %214 = load float* %213, align 4
  %215 = fmul float %212, %214
  %216 = fadd float %208, %215
  %217 = load float* %iB, align 4
  %218 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 24
  %219 = load float* %218, align 4
  %220 = fmul float %217, %219
  %221 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 24
  %222 = load float* %221, align 4
  %223 = fmul float %220, %222
  %224 = fadd float %216, %223
  store float %224, float* %invMass, align 4
  %225 = load float* %invMass, align 4
  %226 = fcmp ogt float %225, 0.000000e+00
  br i1 %226, label %227, label %294

; <label>:227                                     ; preds = %195
  %228 = load float* %invMass, align 4
  %229 = fdiv float 1.000000e+00, %228
  %230 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  store float %229, float* %230, align 4
  %231 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 21
  %232 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %231)
  store float %232, float* %C, align 4
  %233 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 1
  %234 = load float* %233, align 4
  %235 = fmul float 0x401921FB60000000, %234
  store float %235, float* %omega, align 4
  %236 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  %237 = load float* %236, align 4
  %238 = fmul float 2.000000e+00, %237
  %239 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 2
  %240 = load float* %239, align 4
  %241 = fmul float %238, %240
  %242 = load float* %omega, align 4
  %243 = fmul float %241, %242
  store float %243, float* %d1, align 4
  %244 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  %245 = load float* %244, align 4
  %246 = load float* %omega, align 4
  %247 = fmul float %245, %246
  %248 = load float* %omega, align 4
  %249 = fmul float %247, %248
  store float %249, float* %k, align 4
  %250 = load %struct.b2SolverData** %2
  %251 = getelementptr inbounds %struct.b2SolverData* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.b2TimeStep* %251, i32 0, i32 0
  %253 = load float* %252, align 4
  store float %253, float* %h, align 4
  %254 = load float* %h, align 4
  %255 = load float* %d1, align 4
  %256 = load float* %h, align 4
  %257 = load float* %k, align 4
  %258 = fmul float %256, %257
  %259 = fadd float %255, %258
  %260 = fmul float %254, %259
  %261 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  store float %260, float* %261, align 4
  %262 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  %263 = load float* %262, align 4
  %264 = fcmp ogt float %263, 0.000000e+00
  br i1 %264, label %265, label %270

; <label>:265                                     ; preds = %227
  %266 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  %267 = load float* %266, align 4
  %268 = fdiv float 1.000000e+00, %267
  %269 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  store float %268, float* %269, align 4
  br label %270

; <label>:270                                     ; preds = %265, %227
  %271 = load float* %C, align 4
  %272 = load float* %h, align 4
  %273 = fmul float %271, %272
  %274 = load float* %k, align 4
  %275 = fmul float %273, %274
  %276 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  %277 = load float* %276, align 4
  %278 = fmul float %275, %277
  %279 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 30
  store float %278, float* %279, align 4
  %280 = load float* %invMass, align 4
  %281 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 31
  %282 = load float* %281, align 4
  %283 = fadd float %280, %282
  %284 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  store float %283, float* %284, align 4
  %285 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  %286 = load float* %285, align 4
  %287 = fcmp ogt float %286, 0.000000e+00
  br i1 %287, label %288, label %293

; <label>:288                                     ; preds = %270
  %289 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  %290 = load float* %289, align 4
  %291 = fdiv float 1.000000e+00, %290
  %292 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 29
  store float %291, float* %292, align 4
  br label %293

; <label>:293                                     ; preds = %288, %270
  br label %294

; <label>:294                                     ; preds = %293, %195
  br label %297

; <label>:295                                     ; preds = %188
  %296 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  store float 0.000000e+00, float* %296, align 4
  br label %297

; <label>:297                                     ; preds = %295, %294
  %298 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 12
  %299 = load i8* %298, align 1
  %300 = trunc i8 %299 to i1
  br i1 %300, label %301, label %315

; <label>:301                                     ; preds = %297
  %302 = load float* %iA, align 4
  %303 = load float* %iB, align 4
  %304 = fadd float %302, %303
  %305 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 28
  store float %304, float* %305, align 4
  %306 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 28
  %307 = load float* %306, align 4
  %308 = fcmp ogt float %307, 0.000000e+00
  br i1 %308, label %309, label %314

; <label>:309                                     ; preds = %301
  %310 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 28
  %311 = load float* %310, align 4
  %312 = fdiv float 1.000000e+00, %311
  %313 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 28
  store float %312, float* %313, align 4
  br label %314

; <label>:314                                     ; preds = %309, %301
  br label %318

; <label>:315                                     ; preds = %297
  %316 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 28
  store float 0.000000e+00, float* %316, align 4
  %317 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 8
  store float 0.000000e+00, float* %317, align 4
  br label %318

; <label>:318                                     ; preds = %315, %314
  %319 = load %struct.b2SolverData** %2
  %320 = getelementptr inbounds %struct.b2SolverData* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.b2TimeStep* %320, i32 0, i32 5
  %322 = load i8* %321, align 1
  %323 = trunc i8 %322 to i1
  br i1 %323, label %324, label %396

; <label>:324                                     ; preds = %318
  %325 = load %struct.b2SolverData** %2
  %326 = getelementptr inbounds %struct.b2SolverData* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.b2TimeStep* %326, i32 0, i32 2
  %328 = load float* %327, align 4
  %329 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 7
  %330 = load float* %329, align 4
  %331 = fmul float %330, %328
  store float %331, float* %329, align 4
  %332 = load %struct.b2SolverData** %2
  %333 = getelementptr inbounds %struct.b2SolverData* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.b2TimeStep* %333, i32 0, i32 2
  %335 = load float* %334, align 4
  %336 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  %337 = load float* %336, align 4
  %338 = fmul float %337, %335
  store float %338, float* %336, align 4
  %339 = load %struct.b2SolverData** %2
  %340 = getelementptr inbounds %struct.b2SolverData* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.b2TimeStep* %340, i32 0, i32 2
  %342 = load float* %341, align 4
  %343 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 8
  %344 = load float* %343, align 4
  %345 = fmul float %344, %342
  store float %345, float* %343, align 4
  %346 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 7
  %347 = load float* %346, align 4
  %348 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 22
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %347, %struct.b2Vec2* %348)
  %349 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  %350 = load float* %349, align 4
  %351 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 21
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %350, %struct.b2Vec2* %351)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %P, %struct.b2Vec2* %11, %struct.b2Vec2* %12)
  %352 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 7
  %353 = load float* %352, align 4
  %354 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 25
  %355 = load float* %354, align 4
  %356 = fmul float %353, %355
  %357 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  %358 = load float* %357, align 4
  %359 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 23
  %360 = load float* %359, align 4
  %361 = fmul float %358, %360
  %362 = fadd float %356, %361
  %363 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 8
  %364 = load float* %363, align 4
  %365 = fadd float %362, %364
  store float %365, float* %LA, align 4
  %366 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 7
  %367 = load float* %366, align 4
  %368 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 26
  %369 = load float* %368, align 4
  %370 = fmul float %367, %369
  %371 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  %372 = load float* %371, align 4
  %373 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 24
  %374 = load float* %373, align 4
  %375 = fmul float %372, %374
  %376 = fadd float %370, %375
  %377 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 8
  %378 = load float* %377, align 4
  %379 = fadd float %376, %378
  store float %379, float* %LB, align 4
  %380 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 17
  %381 = load float* %380, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %381, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %13)
  %382 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 19
  %383 = load float* %382, align 4
  %384 = load float* %LA, align 4
  %385 = fmul float %383, %384
  %386 = load float* %wA, align 4
  %387 = fsub float %386, %385
  store float %387, float* %wA, align 4
  %388 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 18
  %389 = load float* %388, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %389, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %14)
  %390 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 20
  %391 = load float* %390, align 4
  %392 = load float* %LB, align 4
  %393 = fmul float %391, %392
  %394 = load float* %wB, align 4
  %395 = fadd float %394, %393
  store float %395, float* %wB, align 4
  br label %400

; <label>:396                                     ; preds = %318
  %397 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 7
  store float 0.000000e+00, float* %397, align 4
  %398 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 9
  store float 0.000000e+00, float* %398, align 4
  %399 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 8
  store float 0.000000e+00, float* %399, align 4
  br label %400

; <label>:400                                     ; preds = %396, %324
  %401 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %402 = load i32* %401, align 4
  %403 = load %struct.b2SolverData** %2
  %404 = getelementptr inbounds %struct.b2SolverData* %403, i32 0, i32 2
  %405 = load %struct.b2Velocity** %404, align 4
  %406 = getelementptr inbounds %struct.b2Velocity* %405, i32 %402
  %407 = getelementptr inbounds %struct.b2Velocity* %406, i32 0, i32 0
  %408 = bitcast %struct.b2Vec2* %407 to i8*
  %409 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %408, i8* %409, i32 8, i32 4, i1 false)
  %410 = load float* %wA, align 4
  %411 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 13
  %412 = load i32* %411, align 4
  %413 = load %struct.b2SolverData** %2
  %414 = getelementptr inbounds %struct.b2SolverData* %413, i32 0, i32 2
  %415 = load %struct.b2Velocity** %414, align 4
  %416 = getelementptr inbounds %struct.b2Velocity* %415, i32 %412
  %417 = getelementptr inbounds %struct.b2Velocity* %416, i32 0, i32 1
  store float %410, float* %417, align 4
  %418 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %419 = load i32* %418, align 4
  %420 = load %struct.b2SolverData** %2
  %421 = getelementptr inbounds %struct.b2SolverData* %420, i32 0, i32 2
  %422 = load %struct.b2Velocity** %421, align 4
  %423 = getelementptr inbounds %struct.b2Velocity* %422, i32 %419
  %424 = getelementptr inbounds %struct.b2Velocity* %423, i32 0, i32 0
  %425 = bitcast %struct.b2Vec2* %424 to i8*
  %426 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %425, i8* %426, i32 8, i32 4, i1 false)
  %427 = load float* %wB, align 4
  %428 = getelementptr inbounds %class.b2WheelJoint* %15, i32 0, i32 14
  %429 = load i32* %428, align 4
  %430 = load %struct.b2SolverData** %2
  %431 = getelementptr inbounds %struct.b2SolverData* %430, i32 0, i32 2
  %432 = load %struct.b2Velocity** %431, align 4
  %433 = getelementptr inbounds %struct.b2Velocity* %432, i32 %429
  %434 = getelementptr inbounds %struct.b2Velocity* %433, i32 0, i32 1
  store float %427, float* %434, align 4
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

define void @_ZN12b2WheelJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2WheelJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %Cdot = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %Cdot1 = alloca float, align 4
  %impulse2 = alloca float, align 4
  %oldImpulse = alloca float, align 4
  %maxImpulse = alloca float, align 4
  %Cdot3 = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %impulse4 = alloca float, align 4
  %P5 = alloca %struct.b2Vec2, align 4
  %LA6 = alloca float, align 4
  %LB7 = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2WheelJoint** %1
  %10 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 17
  %11 = load float* %10, align 4
  store float %11, float* %mA, align 4
  %12 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 18
  %13 = load float* %12, align 4
  store float %13, float* %mB, align 4
  %14 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 19
  %15 = load float* %14, align 4
  store float %15, float* %iA, align 4
  %16 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 20
  %17 = load float* %16, align 4
  store float %17, float* %iB, align 4
  %18 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 13
  %19 = load i32* %18, align 4
  %20 = load %struct.b2SolverData** %2
  %21 = getelementptr inbounds %struct.b2SolverData* %20, i32 0, i32 2
  %22 = load %struct.b2Velocity** %21, align 4
  %23 = getelementptr inbounds %struct.b2Velocity* %22, i32 %19
  %24 = getelementptr inbounds %struct.b2Velocity* %23, i32 0, i32 0
  %25 = bitcast %struct.b2Vec2* %vA to i8*
  %26 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 4, i1 false)
  %27 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 13
  %28 = load i32* %27, align 4
  %29 = load %struct.b2SolverData** %2
  %30 = getelementptr inbounds %struct.b2SolverData* %29, i32 0, i32 2
  %31 = load %struct.b2Velocity** %30, align 4
  %32 = getelementptr inbounds %struct.b2Velocity* %31, i32 %28
  %33 = getelementptr inbounds %struct.b2Velocity* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  store float %34, float* %wA, align 4
  %35 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 14
  %36 = load i32* %35, align 4
  %37 = load %struct.b2SolverData** %2
  %38 = getelementptr inbounds %struct.b2SolverData* %37, i32 0, i32 2
  %39 = load %struct.b2Velocity** %38, align 4
  %40 = getelementptr inbounds %struct.b2Velocity* %39, i32 %36
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 0, i32 0
  %42 = bitcast %struct.b2Vec2* %vB to i8*
  %43 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 14
  %45 = load i32* %44, align 4
  %46 = load %struct.b2SolverData** %2
  %47 = getelementptr inbounds %struct.b2SolverData* %46, i32 0, i32 2
  %48 = load %struct.b2Velocity** %47, align 4
  %49 = getelementptr inbounds %struct.b2Velocity* %48, i32 %45
  %50 = getelementptr inbounds %struct.b2Velocity* %49, i32 0, i32 1
  %51 = load float* %50, align 4
  store float %51, float* %wB, align 4
  %52 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 21
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %53 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %52, %struct.b2Vec2* %3)
  %54 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 24
  %55 = load float* %54, align 4
  %56 = load float* %wB, align 4
  %57 = fmul float %55, %56
  %58 = fadd float %53, %57
  %59 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 23
  %60 = load float* %59, align 4
  %61 = load float* %wA, align 4
  %62 = fmul float %60, %61
  %63 = fsub float %58, %62
  store float %63, float* %Cdot, align 4
  %64 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 29
  %65 = load float* %64, align 4
  %66 = fsub float -0.000000e+00, %65
  %67 = load float* %Cdot, align 4
  %68 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 30
  %69 = load float* %68, align 4
  %70 = fadd float %67, %69
  %71 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 31
  %72 = load float* %71, align 4
  %73 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 9
  %74 = load float* %73, align 4
  %75 = fmul float %72, %74
  %76 = fadd float %70, %75
  %77 = fmul float %66, %76
  store float %77, float* %impulse, align 4
  %78 = load float* %impulse, align 4
  %79 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 9
  %80 = load float* %79, align 4
  %81 = fadd float %80, %78
  store float %81, float* %79, align 4
  %82 = load float* %impulse, align 4
  %83 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 21
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %82, %struct.b2Vec2* %83)
  %84 = load float* %impulse, align 4
  %85 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 23
  %86 = load float* %85, align 4
  %87 = fmul float %84, %86
  store float %87, float* %LA, align 4
  %88 = load float* %impulse, align 4
  %89 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 24
  %90 = load float* %89, align 4
  %91 = fmul float %88, %90
  store float %91, float* %LB, align 4
  %92 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %92, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %4)
  %93 = load float* %iA, align 4
  %94 = load float* %LA, align 4
  %95 = fmul float %93, %94
  %96 = load float* %wA, align 4
  %97 = fsub float %96, %95
  store float %97, float* %wA, align 4
  %98 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %98, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  %99 = load float* %iB, align 4
  %100 = load float* %LB, align 4
  %101 = fmul float %99, %100
  %102 = load float* %wB, align 4
  %103 = fadd float %102, %101
  store float %103, float* %wB, align 4
  %104 = load float* %wB, align 4
  %105 = load float* %wA, align 4
  %106 = fsub float %104, %105
  %107 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 11
  %108 = load float* %107, align 4
  %109 = fsub float %106, %108
  store float %109, float* %Cdot1, align 4
  %110 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 28
  %111 = load float* %110, align 4
  %112 = fsub float -0.000000e+00, %111
  %113 = load float* %Cdot1, align 4
  %114 = fmul float %112, %113
  store float %114, float* %impulse2, align 4
  %115 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 8
  %116 = load float* %115, align 4
  store float %116, float* %oldImpulse, align 4
  %117 = load %struct.b2SolverData** %2
  %118 = getelementptr inbounds %struct.b2SolverData* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.b2TimeStep* %118, i32 0, i32 0
  %120 = load float* %119, align 4
  %121 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 10
  %122 = load float* %121, align 4
  %123 = fmul float %120, %122
  store float %123, float* %maxImpulse, align 4
  %124 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 8
  %125 = load float* %124, align 4
  %126 = load float* %impulse2, align 4
  %127 = fadd float %125, %126
  %128 = load float* %maxImpulse, align 4
  %129 = fsub float -0.000000e+00, %128
  %130 = load float* %maxImpulse, align 4
  %131 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %127, float %129, float %130)
  %132 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 8
  store float %131, float* %132, align 4
  %133 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 8
  %134 = load float* %133, align 4
  %135 = load float* %oldImpulse, align 4
  %136 = fsub float %134, %135
  store float %136, float* %impulse2, align 4
  %137 = load float* %iA, align 4
  %138 = load float* %impulse2, align 4
  %139 = fmul float %137, %138
  %140 = load float* %wA, align 4
  %141 = fsub float %140, %139
  store float %141, float* %wA, align 4
  %142 = load float* %iB, align 4
  %143 = load float* %impulse2, align 4
  %144 = fmul float %142, %143
  %145 = load float* %wB, align 4
  %146 = fadd float %145, %144
  store float %146, float* %wB, align 4
  %147 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 22
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %148 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %147, %struct.b2Vec2* %6)
  %149 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 26
  %150 = load float* %149, align 4
  %151 = load float* %wB, align 4
  %152 = fmul float %150, %151
  %153 = fadd float %148, %152
  %154 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 25
  %155 = load float* %154, align 4
  %156 = load float* %wA, align 4
  %157 = fmul float %155, %156
  %158 = fsub float %153, %157
  store float %158, float* %Cdot3, align 4
  %159 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 27
  %160 = load float* %159, align 4
  %161 = fsub float -0.000000e+00, %160
  %162 = load float* %Cdot3, align 4
  %163 = fmul float %161, %162
  store float %163, float* %impulse4, align 4
  %164 = load float* %impulse4, align 4
  %165 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 7
  %166 = load float* %165, align 4
  %167 = fadd float %166, %164
  store float %167, float* %165, align 4
  %168 = load float* %impulse4, align 4
  %169 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 22
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P5, float %168, %struct.b2Vec2* %169)
  %170 = load float* %impulse4, align 4
  %171 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 25
  %172 = load float* %171, align 4
  %173 = fmul float %170, %172
  store float %173, float* %LA6, align 4
  %174 = load float* %impulse4, align 4
  %175 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 26
  %176 = load float* %175, align 4
  %177 = fmul float %174, %176
  store float %177, float* %LB7, align 4
  %178 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %178, %struct.b2Vec2* %P5)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %7)
  %179 = load float* %iA, align 4
  %180 = load float* %LA6, align 4
  %181 = fmul float %179, %180
  %182 = load float* %wA, align 4
  %183 = fsub float %182, %181
  store float %183, float* %wA, align 4
  %184 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %184, %struct.b2Vec2* %P5)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %8)
  %185 = load float* %iB, align 4
  %186 = load float* %LB7, align 4
  %187 = fmul float %185, %186
  %188 = load float* %wB, align 4
  %189 = fadd float %188, %187
  store float %189, float* %wB, align 4
  %190 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 13
  %191 = load i32* %190, align 4
  %192 = load %struct.b2SolverData** %2
  %193 = getelementptr inbounds %struct.b2SolverData* %192, i32 0, i32 2
  %194 = load %struct.b2Velocity** %193, align 4
  %195 = getelementptr inbounds %struct.b2Velocity* %194, i32 %191
  %196 = getelementptr inbounds %struct.b2Velocity* %195, i32 0, i32 0
  %197 = bitcast %struct.b2Vec2* %196 to i8*
  %198 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %197, i8* %198, i32 8, i32 4, i1 false)
  %199 = load float* %wA, align 4
  %200 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 13
  %201 = load i32* %200, align 4
  %202 = load %struct.b2SolverData** %2
  %203 = getelementptr inbounds %struct.b2SolverData* %202, i32 0, i32 2
  %204 = load %struct.b2Velocity** %203, align 4
  %205 = getelementptr inbounds %struct.b2Velocity* %204, i32 %201
  %206 = getelementptr inbounds %struct.b2Velocity* %205, i32 0, i32 1
  store float %199, float* %206, align 4
  %207 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 14
  %208 = load i32* %207, align 4
  %209 = load %struct.b2SolverData** %2
  %210 = getelementptr inbounds %struct.b2SolverData* %209, i32 0, i32 2
  %211 = load %struct.b2Velocity** %210, align 4
  %212 = getelementptr inbounds %struct.b2Velocity* %211, i32 %208
  %213 = getelementptr inbounds %struct.b2Velocity* %212, i32 0, i32 0
  %214 = bitcast %struct.b2Vec2* %213 to i8*
  %215 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %214, i8* %215, i32 8, i32 4, i1 false)
  %216 = load float* %wB, align 4
  %217 = getelementptr inbounds %class.b2WheelJoint* %9, i32 0, i32 14
  %218 = load i32* %217, align 4
  %219 = load %struct.b2SolverData** %2
  %220 = getelementptr inbounds %struct.b2SolverData* %219, i32 0, i32 2
  %221 = load %struct.b2Velocity** %220, align 4
  %222 = getelementptr inbounds %struct.b2Velocity* %221, i32 %218
  %223 = getelementptr inbounds %struct.b2Velocity* %222, i32 0, i32 1
  store float %216, float* %223, align 4
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

define zeroext i1 @_ZN12b2WheelJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2WheelJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %ay = alloca %struct.b2Vec2, align 4
  %sAy = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %sBy = alloca float, align 4
  %C = alloca float, align 4
  %k = alloca float, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %10 = load %class.b2WheelJoint** %1
  %11 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 13
  %12 = load i32* %11, align 4
  %13 = load %struct.b2SolverData** %2
  %14 = getelementptr inbounds %struct.b2SolverData* %13, i32 0, i32 1
  %15 = load %struct.b2Position** %14, align 4
  %16 = getelementptr inbounds %struct.b2Position* %15, i32 %12
  %17 = getelementptr inbounds %struct.b2Position* %16, i32 0, i32 0
  %18 = bitcast %struct.b2Vec2* %cA to i8*
  %19 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  %20 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 13
  %21 = load i32* %20, align 4
  %22 = load %struct.b2SolverData** %2
  %23 = getelementptr inbounds %struct.b2SolverData* %22, i32 0, i32 1
  %24 = load %struct.b2Position** %23, align 4
  %25 = getelementptr inbounds %struct.b2Position* %24, i32 %21
  %26 = getelementptr inbounds %struct.b2Position* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  store float %27, float* %aA, align 4
  %28 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 14
  %29 = load i32* %28, align 4
  %30 = load %struct.b2SolverData** %2
  %31 = getelementptr inbounds %struct.b2SolverData* %30, i32 0, i32 1
  %32 = load %struct.b2Position** %31, align 4
  %33 = getelementptr inbounds %struct.b2Position* %32, i32 %29
  %34 = getelementptr inbounds %struct.b2Position* %33, i32 0, i32 0
  %35 = bitcast %struct.b2Vec2* %cB to i8*
  %36 = bitcast %struct.b2Vec2* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
  %37 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 14
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
  %47 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 3
  %48 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 15
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %47, %struct.b2Vec2* %48)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %49 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 4
  %50 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %49, %struct.b2Vec2* %50)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %cA)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %51 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 6
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %ay, %struct.b2Rot* %qA, %struct.b2Vec2* %51)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %52 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %7, %struct.b2Vec2* %ay)
  store float %52, float* %sAy, align 4
  %53 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %ay)
  store float %53, float* %sBy, align 4
  %54 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %ay)
  store float %54, float* %C, align 4
  %55 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 17
  %56 = load float* %55, align 4
  %57 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 18
  %58 = load float* %57, align 4
  %59 = fadd float %56, %58
  %60 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 19
  %61 = load float* %60, align 4
  %62 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 25
  %63 = load float* %62, align 4
  %64 = fmul float %61, %63
  %65 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 25
  %66 = load float* %65, align 4
  %67 = fmul float %64, %66
  %68 = fadd float %59, %67
  %69 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 20
  %70 = load float* %69, align 4
  %71 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 26
  %72 = load float* %71, align 4
  %73 = fmul float %70, %72
  %74 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 26
  %75 = load float* %74, align 4
  %76 = fmul float %73, %75
  %77 = fadd float %68, %76
  store float %77, float* %k, align 4
  %78 = load float* %k, align 4
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %85

; <label>:80                                      ; preds = %0
  %81 = load float* %C, align 4
  %82 = fsub float -0.000000e+00, %81
  %83 = load float* %k, align 4
  %84 = fdiv float %82, %83
  store float %84, float* %impulse, align 4
  br label %86

; <label>:85                                      ; preds = %0
  store float 0.000000e+00, float* %impulse, align 4
  br label %86

; <label>:86                                      ; preds = %85, %80
  %87 = load float* %impulse, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %87, %struct.b2Vec2* %ay)
  %88 = load float* %impulse, align 4
  %89 = load float* %sAy, align 4
  %90 = fmul float %88, %89
  store float %90, float* %LA, align 4
  %91 = load float* %impulse, align 4
  %92 = load float* %sBy, align 4
  %93 = fmul float %91, %92
  store float %93, float* %LB, align 4
  %94 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 17
  %95 = load float* %94, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %95, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %8)
  %96 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 19
  %97 = load float* %96, align 4
  %98 = load float* %LA, align 4
  %99 = fmul float %97, %98
  %100 = load float* %aA, align 4
  %101 = fsub float %100, %99
  store float %101, float* %aA, align 4
  %102 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 18
  %103 = load float* %102, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %103, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %9)
  %104 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 20
  %105 = load float* %104, align 4
  %106 = load float* %LB, align 4
  %107 = fmul float %105, %106
  %108 = load float* %aB, align 4
  %109 = fadd float %108, %107
  store float %109, float* %aB, align 4
  %110 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 13
  %111 = load i32* %110, align 4
  %112 = load %struct.b2SolverData** %2
  %113 = getelementptr inbounds %struct.b2SolverData* %112, i32 0, i32 1
  %114 = load %struct.b2Position** %113, align 4
  %115 = getelementptr inbounds %struct.b2Position* %114, i32 %111
  %116 = getelementptr inbounds %struct.b2Position* %115, i32 0, i32 0
  %117 = bitcast %struct.b2Vec2* %116 to i8*
  %118 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %117, i8* %118, i32 8, i32 4, i1 false)
  %119 = load float* %aA, align 4
  %120 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 13
  %121 = load i32* %120, align 4
  %122 = load %struct.b2SolverData** %2
  %123 = getelementptr inbounds %struct.b2SolverData* %122, i32 0, i32 1
  %124 = load %struct.b2Position** %123, align 4
  %125 = getelementptr inbounds %struct.b2Position* %124, i32 %121
  %126 = getelementptr inbounds %struct.b2Position* %125, i32 0, i32 1
  store float %119, float* %126, align 4
  %127 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 14
  %128 = load i32* %127, align 4
  %129 = load %struct.b2SolverData** %2
  %130 = getelementptr inbounds %struct.b2SolverData* %129, i32 0, i32 1
  %131 = load %struct.b2Position** %130, align 4
  %132 = getelementptr inbounds %struct.b2Position* %131, i32 %128
  %133 = getelementptr inbounds %struct.b2Position* %132, i32 0, i32 0
  %134 = bitcast %struct.b2Vec2* %133 to i8*
  %135 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %134, i8* %135, i32 8, i32 4, i1 false)
  %136 = load float* %aB, align 4
  %137 = getelementptr inbounds %class.b2WheelJoint* %10, i32 0, i32 14
  %138 = load i32* %137, align 4
  %139 = load %struct.b2SolverData** %2
  %140 = getelementptr inbounds %struct.b2SolverData* %139, i32 0, i32 1
  %141 = load %struct.b2Position** %140, align 4
  %142 = getelementptr inbounds %struct.b2Position* %141, i32 %138
  %143 = getelementptr inbounds %struct.b2Position* %142, i32 0, i32 1
  store float %136, float* %143, align 4
  %144 = load float* %C, align 4
  %145 = call float @_Z5b2AbsIfET_S0_(float %144)
  %146 = fcmp ole float %145, 0x3F747AE140000000
  ret i1 %146
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

define void @_ZNK12b2WheelJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2WheelJoint* %this) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 3
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

define void @_ZNK12b2WheelJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2WheelJoint* %this) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 4
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK12b2WheelJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2WheelJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %6 = load %class.b2WheelJoint** %1
  %7 = load float* %2, align 4
  %8 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 7
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 22
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %9, %struct.b2Vec2* %10)
  %11 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 9
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %class.b2WheelJoint* %6, i32 0, i32 21
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %12, %struct.b2Vec2* %13)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %5)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %3)
  ret void
}

define float @_ZNK12b2WheelJoint17GetReactionTorqueEf(%class.b2WheelJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2WheelJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2WheelJoint* %3, i32 0, i32 8
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  ret float %7
}

define float @_ZNK12b2WheelJoint19GetJointTranslationEv(%class.b2WheelJoint* %this) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %bA = alloca %class.b2Body*, align 4
  %bB = alloca %class.b2Body*, align 4
  %pA = alloca %struct.b2Vec2, align 4
  %pB = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %axis = alloca %struct.b2Vec2, align 4
  %translation = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  store %class.b2Body* %5, %class.b2Body** %bA, align 4
  %6 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %7 = getelementptr inbounds %class.b2Joint* %6, i32 0, i32 7
  %8 = load %class.b2Body** %7, align 4
  store %class.b2Body* %8, %class.b2Body** %bB, align 4
  %9 = load %class.b2Body** %bA, align 4
  %10 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 3
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %pA, %class.b2Body* %9, %struct.b2Vec2* %10)
  %11 = load %class.b2Body** %bB, align 4
  %12 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 4
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %pB, %class.b2Body* %11, %struct.b2Vec2* %12)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %pB, %struct.b2Vec2* %pA)
  %13 = load %class.b2Body** %bA, align 4
  %14 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 5
  call void @_ZNK6b2Body14GetWorldVectorERK6b2Vec2(%struct.b2Vec2* sret %axis, %class.b2Body* %13, %struct.b2Vec2* %14)
  %15 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %axis)
  store float %15, float* %translation, align 4
  %16 = load float* %translation, align 4
  ret float %16
}

define linkonce_odr void @_ZNK6b2Body14GetWorldVectorERK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %class.b2Body* %this, %struct.b2Vec2* %localVector) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2Vec2* %localVector, %struct.b2Vec2** %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.b2Transform* %4, i32 0, i32 1
  %6 = load %struct.b2Vec2** %2
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %agg.result, %struct.b2Rot* %5, %struct.b2Vec2* %6)
  ret void
}

define float @_ZNK12b2WheelJoint13GetJointSpeedEv(%class.b2WheelJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %wA = alloca float, align 4
  %wB = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 6
  %7 = load float* %6, align 4
  store float %7, float* %wA, align 4
  %8 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 6
  %12 = load float* %11, align 4
  store float %12, float* %wB, align 4
  %13 = load float* %wB, align 4
  %14 = load float* %wA, align 4
  %15 = fsub float %13, %14
  ret float %15
}

define zeroext i1 @_ZNK12b2WheelJoint14IsMotorEnabledEv(%class.b2WheelJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 12
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define void @_ZN12b2WheelJoint11EnableMotorEb(%class.b2WheelJoint* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca i8, align 1
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2WheelJoint** %1
  %5 = bitcast %class.b2WheelJoint* %4 to %class.b2Joint*
  %6 = getelementptr inbounds %class.b2Joint* %5, i32 0, i32 6
  %7 = load %class.b2Body** %6, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %7, i1 zeroext true)
  %8 = bitcast %class.b2WheelJoint* %4 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %10, i1 zeroext true)
  %11 = load i8* %2, align 1
  %12 = trunc i8 %11 to i1
  %13 = getelementptr inbounds %class.b2WheelJoint* %4, i32 0, i32 12
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

define void @_ZN12b2WheelJoint13SetMotorSpeedEf(%class.b2WheelJoint* %this, float %speed) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store float %speed, float* %2, align 4
  %3 = load %class.b2WheelJoint** %1
  %4 = bitcast %class.b2WheelJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2WheelJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2WheelJoint* %3, i32 0, i32 11
  store float %10, float* %11, align 4
  ret void
}

define void @_ZN12b2WheelJoint17SetMaxMotorTorqueEf(%class.b2WheelJoint* %this, float %torque) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store float %torque, float* %2, align 4
  %3 = load %class.b2WheelJoint** %1
  %4 = bitcast %class.b2WheelJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2WheelJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2WheelJoint* %3, i32 0, i32 10
  store float %10, float* %11, align 4
  ret void
}

define float @_ZNK12b2WheelJoint14GetMotorTorqueEf(%class.b2WheelJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2WheelJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2WheelJoint* %3, i32 0, i32 8
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  ret float %7
}

define void @_ZN12b2WheelJoint4DumpEv(%class.b2WheelJoint* %this) align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 3
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 3
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 4
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 4
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 5
  %37 = getelementptr inbounds %struct.b2Vec2* %36, i32 0, i32 0
  %38 = load float* %37, align 4
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 5
  %41 = getelementptr inbounds %struct.b2Vec2* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  %43 = fpext float %42 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([40 x i8]* @.str6, i32 0, i32 0), double %39, double %43)
  %44 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 12
  %45 = load i8* %44, align 1
  %46 = trunc i8 %45 to i1
  %47 = zext i1 %46 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str7, i32 0, i32 0), i32 %47)
  %48 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 11
  %49 = load float* %48, align 4
  %50 = fpext float %49 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0), double %50)
  %51 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 10
  %52 = load float* %51, align 4
  %53 = fpext float %52 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str9, i32 0, i32 0), double %53)
  %54 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 1
  %55 = load float* %54, align 4
  %56 = fpext float %55 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str10, i32 0, i32 0), double %56)
  %57 = getelementptr inbounds %class.b2WheelJoint* %2, i32 0, i32 2
  %58 = load float* %57, align 4
  %59 = fpext float %58 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str11, i32 0, i32 0), double %59)
  %60 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
  %61 = getelementptr inbounds %class.b2Joint* %60, i32 0, i32 8
  %62 = load i32* %61, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str12, i32 0, i32 0), i32 %62)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN12b2WheelJointD1Ev(%class.b2WheelJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  call void @_ZN12b2WheelJointD2Ev(%class.b2WheelJoint* %2)
  ret void
}

define linkonce_odr void @_ZN12b2WheelJointD0Ev(%class.b2WheelJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %4 = load %class.b2WheelJoint** %1
  invoke void @_ZN12b2WheelJointD1Ev(%class.b2WheelJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2WheelJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2WheelJoint* %4 to i8*
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

define linkonce_odr void @_ZN12b2WheelJointD2Ev(%class.b2WheelJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2WheelJoint*, align 4
  store %class.b2WheelJoint* %this, %class.b2WheelJoint** %1, align 4
  %2 = load %class.b2WheelJoint** %1
  %3 = bitcast %class.b2WheelJoint* %2 to %class.b2Joint*
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

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
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
