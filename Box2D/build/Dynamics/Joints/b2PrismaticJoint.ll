; ModuleID = 'Dynamics/Joints/b2PrismaticJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2PrismaticJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, %struct.b2Vec3, float, float, float, float, float, i8, i8, i32, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float }
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
%struct.b2PrismaticJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i8, float, float, i8, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }

@_ZTV16b2PrismaticJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16b2PrismaticJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PrismaticJoint*)* @_ZNK16b2PrismaticJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PrismaticJoint*)* @_ZNK16b2PrismaticJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PrismaticJoint*, float)* @_ZNK16b2PrismaticJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2PrismaticJoint*, float)* @_ZNK16b2PrismaticJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2PrismaticJoint*)* @_ZN16b2PrismaticJoint4DumpEv to i8*), i8* bitcast (void (%class.b2PrismaticJoint*)* @_ZN16b2PrismaticJointD1Ev to i8*), i8* bitcast (void (%class.b2PrismaticJoint*)* @_ZN16b2PrismaticJointD0Ev to i8*), i8* bitcast (void (%class.b2PrismaticJoint*, %struct.b2SolverData*)* @_ZN16b2PrismaticJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2PrismaticJoint*, %struct.b2SolverData*)* @_ZN16b2PrismaticJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2PrismaticJoint*, %struct.b2SolverData*)* @_ZN16b2PrismaticJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [15 x i8] c"lower <= upper\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Dynamics/Joints/b2PrismaticJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN16b2PrismaticJoint9SetLimitsEff = private unnamed_addr constant [51 x i8] c"void b2PrismaticJoint::SetLimits(float32, float32)\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"  b2PrismaticJointDef jd;\0A\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str5 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str8 = private unnamed_addr constant [40 x i8] c"  jd.localAxisA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"  jd.referenceAngle = %.15lef;\0A\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"  jd.enableLimit = bool(%d);\0A\00", align 1
@.str11 = private unnamed_addr constant [34 x i8] c"  jd.lowerTranslation = %.15lef;\0A\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"  jd.upperTranslation = %.15lef;\0A\00", align 1
@.str13 = private unnamed_addr constant [30 x i8] c"  jd.enableMotor = bool(%d);\0A\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"  jd.motorSpeed = %.15lef;\0A\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"  jd.maxMotorForce = %.15lef;\0A\00", align 1
@.str16 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS16b2PrismaticJoint = constant [19 x i8] c"16b2PrismaticJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI16b2PrismaticJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTS16b2PrismaticJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN16b2PrismaticJointC1EPK19b2PrismaticJointDef = alias void (%class.b2PrismaticJoint*, %struct.b2PrismaticJointDef*)* @_ZN16b2PrismaticJointC2EPK19b2PrismaticJointDef

define void @_ZN19b2PrismaticJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_(%struct.b2PrismaticJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %anchor, %struct.b2Vec2* %axis) align 2 {
  %1 = alloca %struct.b2PrismaticJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2*, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %struct.b2PrismaticJointDef* %this, %struct.b2PrismaticJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor, %struct.b2Vec2** %4, align 4
  store %struct.b2Vec2* %axis, %struct.b2Vec2** %5, align 4
  %9 = load %struct.b2PrismaticJointDef** %1
  %10 = load %class.b2Body** %2, align 4
  %11 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %12 = getelementptr inbounds %struct.b2JointDef* %11, i32 0, i32 2
  store %class.b2Body* %10, %class.b2Body** %12, align 4
  %13 = load %class.b2Body** %3, align 4
  %14 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %15 = getelementptr inbounds %struct.b2JointDef* %14, i32 0, i32 3
  store %class.b2Body* %13, %class.b2Body** %15, align 4
  %16 = getelementptr inbounds %struct.b2PrismaticJointDef* %9, i32 0, i32 1
  %17 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %18 = getelementptr inbounds %struct.b2JointDef* %17, i32 0, i32 2
  %19 = load %class.b2Body** %18, align 4
  %20 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %19, %struct.b2Vec2* %20)
  %21 = bitcast %struct.b2Vec2* %16 to i8*
  %22 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  %23 = getelementptr inbounds %struct.b2PrismaticJointDef* %9, i32 0, i32 2
  %24 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %25 = getelementptr inbounds %struct.b2JointDef* %24, i32 0, i32 3
  %26 = load %class.b2Body** %25, align 4
  %27 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %7, %class.b2Body* %26, %struct.b2Vec2* %27)
  %28 = bitcast %struct.b2Vec2* %23 to i8*
  %29 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %struct.b2PrismaticJointDef* %9, i32 0, i32 3
  %31 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %32 = getelementptr inbounds %struct.b2JointDef* %31, i32 0, i32 2
  %33 = load %class.b2Body** %32, align 4
  %34 = load %struct.b2Vec2** %5
  call void @_ZNK6b2Body14GetLocalVectorERK6b2Vec2(%struct.b2Vec2* sret %8, %class.b2Body* %33, %struct.b2Vec2* %34)
  %35 = bitcast %struct.b2Vec2* %30 to i8*
  %36 = bitcast %struct.b2Vec2* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
  %37 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %38 = getelementptr inbounds %struct.b2JointDef* %37, i32 0, i32 3
  %39 = load %class.b2Body** %38, align 4
  %40 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %39)
  %41 = bitcast %struct.b2PrismaticJointDef* %9 to %struct.b2JointDef*
  %42 = getelementptr inbounds %struct.b2JointDef* %41, i32 0, i32 2
  %43 = load %class.b2Body** %42, align 4
  %44 = call float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %43)
  %45 = fsub float %40, %44
  %46 = getelementptr inbounds %struct.b2PrismaticJointDef* %9, i32 0, i32 4
  store float %45, float* %46, align 4
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

define linkonce_odr float @_ZNK6b2Body8GetAngleEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.b2Sweep* %3, i32 0, i32 4
  %5 = load float* %4, align 4
  ret float %5
}

define void @_ZN16b2PrismaticJointC2EPK19b2PrismaticJointDef(%class.b2PrismaticJoint* %this, %struct.b2PrismaticJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca %struct.b2PrismaticJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store %struct.b2PrismaticJointDef* %def, %struct.b2PrismaticJointDef** %2, align 4
  %6 = load %class.b2PrismaticJoint** %1
  %7 = bitcast %class.b2PrismaticJoint* %6 to %class.b2Joint*
  %8 = load %struct.b2PrismaticJointDef** %2, align 4
  %9 = bitcast %struct.b2PrismaticJointDef* %8 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %7, %struct.b2JointDef* %9)
  %10 = bitcast %class.b2PrismaticJoint* %6 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV16b2PrismaticJoint, i64 0, i64 2), i8*** %10
  %11 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %95

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %95

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %15)
          to label %16 unwind label %95

; <label>:16                                      ; preds = %14
  %17 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %17)
          to label %18 unwind label %95

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 6
  invoke void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %19)
          to label %20 unwind label %95

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 17
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %21)
          to label %22 unwind label %95

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 18
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %23)
          to label %24 unwind label %95

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 23
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %25)
          to label %26 unwind label %95

; <label>:26                                      ; preds = %24
  %27 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 24
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %27)
          to label %28 unwind label %95

; <label>:28                                      ; preds = %26
  %29 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 29
  invoke void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %29)
          to label %30 unwind label %95

; <label>:30                                      ; preds = %28
  %31 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 1
  %32 = load %struct.b2PrismaticJointDef** %2, align 4
  %33 = getelementptr inbounds %struct.b2PrismaticJointDef* %32, i32 0, i32 1
  %34 = bitcast %struct.b2Vec2* %31 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 2
  %37 = load %struct.b2PrismaticJointDef** %2, align 4
  %38 = getelementptr inbounds %struct.b2PrismaticJointDef* %37, i32 0, i32 2
  %39 = bitcast %struct.b2Vec2* %36 to i8*
  %40 = bitcast %struct.b2Vec2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 8, i32 4, i1 false)
  %41 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 3
  %42 = load %struct.b2PrismaticJointDef** %2, align 4
  %43 = getelementptr inbounds %struct.b2PrismaticJointDef* %42, i32 0, i32 3
  %44 = bitcast %struct.b2Vec2* %41 to i8*
  %45 = bitcast %struct.b2Vec2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  %46 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 3
  %47 = invoke float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %46)
          to label %48 unwind label %95

; <label>:48                                      ; preds = %30
  %49 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 4
  %50 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 3
  invoke void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float 1.000000e+00, %struct.b2Vec2* %50)
          to label %51 unwind label %95

; <label>:51                                      ; preds = %48
  %52 = bitcast %struct.b2Vec2* %49 to i8*
  %53 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %52, i8* %53, i32 8, i32 4, i1 false)
  %54 = load %struct.b2PrismaticJointDef** %2, align 4
  %55 = getelementptr inbounds %struct.b2PrismaticJointDef* %54, i32 0, i32 4
  %56 = load float* %55, align 4
  %57 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 5
  store float %56, float* %57, align 4
  %58 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 6
  invoke void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %58)
          to label %59 unwind label %95

; <label>:59                                      ; preds = %51
  %60 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 30
  store float 0.000000e+00, float* %60, align 4
  %61 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 7
  store float 0.000000e+00, float* %61, align 4
  %62 = load %struct.b2PrismaticJointDef** %2, align 4
  %63 = getelementptr inbounds %struct.b2PrismaticJointDef* %62, i32 0, i32 6
  %64 = load float* %63, align 4
  %65 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 8
  store float %64, float* %65, align 4
  %66 = load %struct.b2PrismaticJointDef** %2, align 4
  %67 = getelementptr inbounds %struct.b2PrismaticJointDef* %66, i32 0, i32 7
  %68 = load float* %67, align 4
  %69 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 9
  store float %68, float* %69, align 4
  %70 = load %struct.b2PrismaticJointDef** %2, align 4
  %71 = getelementptr inbounds %struct.b2PrismaticJointDef* %70, i32 0, i32 9
  %72 = load float* %71, align 4
  %73 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 10
  store float %72, float* %73, align 4
  %74 = load %struct.b2PrismaticJointDef** %2, align 4
  %75 = getelementptr inbounds %struct.b2PrismaticJointDef* %74, i32 0, i32 10
  %76 = load float* %75, align 4
  %77 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 11
  store float %76, float* %77, align 4
  %78 = load %struct.b2PrismaticJointDef** %2, align 4
  %79 = getelementptr inbounds %struct.b2PrismaticJointDef* %78, i32 0, i32 5
  %80 = load i8* %79, align 1
  %81 = trunc i8 %80 to i1
  %82 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 12
  %83 = zext i1 %81 to i8
  store i8 %83, i8* %82, align 1
  %84 = load %struct.b2PrismaticJointDef** %2, align 4
  %85 = getelementptr inbounds %struct.b2PrismaticJointDef* %84, i32 0, i32 8
  %86 = load i8* %85, align 1
  %87 = trunc i8 %86 to i1
  %88 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 13
  %89 = zext i1 %87 to i8
  store i8 %89, i8* %88, align 1
  %90 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 14
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 23
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %91)
          to label %92 unwind label %95

; <label>:92                                      ; preds = %59
  %93 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 24
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %93)
          to label %94 unwind label %95

; <label>:94                                      ; preds = %92
  ret void

; <label>:95                                      ; preds = %92, %59, %51, %48, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %0
  %96 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %97 = extractvalue { i8*, i32 } %96, 0
  store i8* %97, i8** %3
  %98 = extractvalue { i8*, i32 } %96, 1
  store i32 %98, i32* %4
  %99 = bitcast %class.b2PrismaticJoint* %6 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %99)
          to label %100 unwind label %107

; <label>:100                                     ; preds = %95
  br label %101

; <label>:101                                     ; preds = %100
  %102 = load i8** %3
  %103 = load i8** %3
  %104 = load i32* %4
  %105 = insertvalue { i8*, i32 } undef, i8* %103, 0
  %106 = insertvalue { i8*, i32 } %105, i32 %104, 1
  resume { i8*, i32 } %106

; <label>:107                                     ; preds = %95
  %108 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN16b2PrismaticJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2PrismaticJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
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
  %rA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %k11 = alloca float, align 4
  %k12 = alloca float, align 4
  %k13 = alloca float, align 4
  %k22 = alloca float, align 4
  %k23 = alloca float, align 4
  %k33 = alloca float, align 4
  %jointTranslation = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %15 = load %class.b2PrismaticJoint** %1
  %16 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %17 = getelementptr inbounds %class.b2Joint* %16, i32 0, i32 6
  %18 = load %class.b2Body** %17, align 4
  %19 = getelementptr inbounds %class.b2Body* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  store i32 %20, i32* %21, align 4
  %22 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %23 = getelementptr inbounds %class.b2Joint* %22, i32 0, i32 7
  %24 = load %class.b2Body** %23, align 4
  %25 = getelementptr inbounds %class.b2Body* %24, i32 0, i32 2
  %26 = load i32* %25, align 4
  %27 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 17
  %29 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %30 = getelementptr inbounds %class.b2Joint* %29, i32 0, i32 6
  %31 = load %class.b2Body** %30, align 4
  %32 = getelementptr inbounds %class.b2Body* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.b2Sweep* %32, i32 0, i32 0
  %34 = bitcast %struct.b2Vec2* %28 to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 18
  %37 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %38 = getelementptr inbounds %class.b2Joint* %37, i32 0, i32 7
  %39 = load %class.b2Body** %38, align 4
  %40 = getelementptr inbounds %class.b2Body* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.b2Sweep* %40, i32 0, i32 0
  %42 = bitcast %struct.b2Vec2* %36 to i8*
  %43 = bitcast %struct.b2Vec2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 8, i32 4, i1 false)
  %44 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %45 = getelementptr inbounds %class.b2Joint* %44, i32 0, i32 6
  %46 = load %class.b2Body** %45, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 17
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 19
  store float %48, float* %49, align 4
  %50 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 7
  %52 = load %class.b2Body** %51, align 4
  %53 = getelementptr inbounds %class.b2Body* %52, i32 0, i32 17
  %54 = load float* %53, align 4
  %55 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 20
  store float %54, float* %55, align 4
  %56 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %57 = getelementptr inbounds %class.b2Joint* %56, i32 0, i32 6
  %58 = load %class.b2Body** %57, align 4
  %59 = getelementptr inbounds %class.b2Body* %58, i32 0, i32 19
  %60 = load float* %59, align 4
  %61 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 21
  store float %60, float* %61, align 4
  %62 = bitcast %class.b2PrismaticJoint* %15 to %class.b2Joint*
  %63 = getelementptr inbounds %class.b2Joint* %62, i32 0, i32 7
  %64 = load %class.b2Body** %63, align 4
  %65 = getelementptr inbounds %class.b2Body* %64, i32 0, i32 19
  %66 = load float* %65, align 4
  %67 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 22
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %69 = load i32* %68, align 4
  %70 = load %struct.b2SolverData** %2
  %71 = getelementptr inbounds %struct.b2SolverData* %70, i32 0, i32 1
  %72 = load %struct.b2Position** %71, align 4
  %73 = getelementptr inbounds %struct.b2Position* %72, i32 %69
  %74 = getelementptr inbounds %struct.b2Position* %73, i32 0, i32 0
  %75 = bitcast %struct.b2Vec2* %cA to i8*
  %76 = bitcast %struct.b2Vec2* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %75, i8* %76, i32 8, i32 4, i1 false)
  %77 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %78 = load i32* %77, align 4
  %79 = load %struct.b2SolverData** %2
  %80 = getelementptr inbounds %struct.b2SolverData* %79, i32 0, i32 1
  %81 = load %struct.b2Position** %80, align 4
  %82 = getelementptr inbounds %struct.b2Position* %81, i32 %78
  %83 = getelementptr inbounds %struct.b2Position* %82, i32 0, i32 1
  %84 = load float* %83, align 4
  store float %84, float* %aA, align 4
  %85 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %86 = load i32* %85, align 4
  %87 = load %struct.b2SolverData** %2
  %88 = getelementptr inbounds %struct.b2SolverData* %87, i32 0, i32 2
  %89 = load %struct.b2Velocity** %88, align 4
  %90 = getelementptr inbounds %struct.b2Velocity* %89, i32 %86
  %91 = getelementptr inbounds %struct.b2Velocity* %90, i32 0, i32 0
  %92 = bitcast %struct.b2Vec2* %vA to i8*
  %93 = bitcast %struct.b2Vec2* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %93, i32 8, i32 4, i1 false)
  %94 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %95 = load i32* %94, align 4
  %96 = load %struct.b2SolverData** %2
  %97 = getelementptr inbounds %struct.b2SolverData* %96, i32 0, i32 2
  %98 = load %struct.b2Velocity** %97, align 4
  %99 = getelementptr inbounds %struct.b2Velocity* %98, i32 %95
  %100 = getelementptr inbounds %struct.b2Velocity* %99, i32 0, i32 1
  %101 = load float* %100, align 4
  store float %101, float* %wA, align 4
  %102 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %103 = load i32* %102, align 4
  %104 = load %struct.b2SolverData** %2
  %105 = getelementptr inbounds %struct.b2SolverData* %104, i32 0, i32 1
  %106 = load %struct.b2Position** %105, align 4
  %107 = getelementptr inbounds %struct.b2Position* %106, i32 %103
  %108 = getelementptr inbounds %struct.b2Position* %107, i32 0, i32 0
  %109 = bitcast %struct.b2Vec2* %cB to i8*
  %110 = bitcast %struct.b2Vec2* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %109, i8* %110, i32 8, i32 4, i1 false)
  %111 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %112 = load i32* %111, align 4
  %113 = load %struct.b2SolverData** %2
  %114 = getelementptr inbounds %struct.b2SolverData* %113, i32 0, i32 1
  %115 = load %struct.b2Position** %114, align 4
  %116 = getelementptr inbounds %struct.b2Position* %115, i32 %112
  %117 = getelementptr inbounds %struct.b2Position* %116, i32 0, i32 1
  %118 = load float* %117, align 4
  store float %118, float* %aB, align 4
  %119 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %120 = load i32* %119, align 4
  %121 = load %struct.b2SolverData** %2
  %122 = getelementptr inbounds %struct.b2SolverData* %121, i32 0, i32 2
  %123 = load %struct.b2Velocity** %122, align 4
  %124 = getelementptr inbounds %struct.b2Velocity* %123, i32 %120
  %125 = getelementptr inbounds %struct.b2Velocity* %124, i32 0, i32 0
  %126 = bitcast %struct.b2Vec2* %vB to i8*
  %127 = bitcast %struct.b2Vec2* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %126, i8* %127, i32 8, i32 4, i1 false)
  %128 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %129 = load i32* %128, align 4
  %130 = load %struct.b2SolverData** %2
  %131 = getelementptr inbounds %struct.b2SolverData* %130, i32 0, i32 2
  %132 = load %struct.b2Velocity** %131, align 4
  %133 = getelementptr inbounds %struct.b2Velocity* %132, i32 %129
  %134 = getelementptr inbounds %struct.b2Velocity* %133, i32 0, i32 1
  %135 = load float* %134, align 4
  store float %135, float* %wB, align 4
  %136 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %136)
  %137 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %137)
  %138 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 1
  %139 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %138, %struct.b2Vec2* %139)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %140 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 2
  %141 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 18
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %140, %struct.b2Vec2* %141)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %cA)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %142 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 19
  %143 = load float* %142, align 4
  store float %143, float* %mA, align 4
  %144 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 20
  %145 = load float* %144, align 4
  store float %145, float* %mB, align 4
  %146 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 21
  %147 = load float* %146, align 4
  store float %147, float* %iA, align 4
  %148 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 22
  %149 = load float* %148, align 4
  store float %149, float* %iB, align 4
  %150 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 23
  %151 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 3
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %qA, %struct.b2Vec2* %151)
  %152 = bitcast %struct.b2Vec2* %150 to i8*
  %153 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %152, i8* %153, i32 8, i32 4, i1 false)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %154 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 23
  %155 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %8, %struct.b2Vec2* %154)
  %156 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  store float %155, float* %156, align 4
  %157 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 23
  %158 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %157)
  %159 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  store float %158, float* %159, align 4
  %160 = load float* %mA, align 4
  %161 = load float* %mB, align 4
  %162 = fadd float %160, %161
  %163 = load float* %iA, align 4
  %164 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %165 = load float* %164, align 4
  %166 = fmul float %163, %165
  %167 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %168 = load float* %167, align 4
  %169 = fmul float %166, %168
  %170 = fadd float %162, %169
  %171 = load float* %iB, align 4
  %172 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %173 = load float* %172, align 4
  %174 = fmul float %171, %173
  %175 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %176 = load float* %175, align 4
  %177 = fmul float %174, %176
  %178 = fadd float %170, %177
  %179 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 30
  store float %178, float* %179, align 4
  %180 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 30
  %181 = load float* %180, align 4
  %182 = fcmp ogt float %181, 0.000000e+00
  br i1 %182, label %183, label %188

; <label>:183                                     ; preds = %0
  %184 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 30
  %185 = load float* %184, align 4
  %186 = fdiv float 1.000000e+00, %185
  %187 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 30
  store float %186, float* %187, align 4
  br label %188

; <label>:188                                     ; preds = %183, %0
  %189 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 24
  %190 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 4
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %9, %struct.b2Rot* %qA, %struct.b2Vec2* %190)
  %191 = bitcast %struct.b2Vec2* %189 to i8*
  %192 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %191, i8* %192, i32 8, i32 4, i1 false)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %193 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 24
  %194 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %10, %struct.b2Vec2* %193)
  %195 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  store float %194, float* %195, align 4
  %196 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 24
  %197 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %196)
  %198 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  store float %197, float* %198, align 4
  %199 = load float* %mA, align 4
  %200 = load float* %mB, align 4
  %201 = fadd float %199, %200
  %202 = load float* %iA, align 4
  %203 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  %204 = load float* %203, align 4
  %205 = fmul float %202, %204
  %206 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  %207 = load float* %206, align 4
  %208 = fmul float %205, %207
  %209 = fadd float %201, %208
  %210 = load float* %iB, align 4
  %211 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  %212 = load float* %211, align 4
  %213 = fmul float %210, %212
  %214 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  %215 = load float* %214, align 4
  %216 = fmul float %213, %215
  %217 = fadd float %209, %216
  store float %217, float* %k11, align 4
  %218 = load float* %iA, align 4
  %219 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  %220 = load float* %219, align 4
  %221 = fmul float %218, %220
  %222 = load float* %iB, align 4
  %223 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  %224 = load float* %223, align 4
  %225 = fmul float %222, %224
  %226 = fadd float %221, %225
  store float %226, float* %k12, align 4
  %227 = load float* %iA, align 4
  %228 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  %229 = load float* %228, align 4
  %230 = fmul float %227, %229
  %231 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %232 = load float* %231, align 4
  %233 = fmul float %230, %232
  %234 = load float* %iB, align 4
  %235 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  %236 = load float* %235, align 4
  %237 = fmul float %234, %236
  %238 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %239 = load float* %238, align 4
  %240 = fmul float %237, %239
  %241 = fadd float %233, %240
  store float %241, float* %k13, align 4
  %242 = load float* %iA, align 4
  %243 = load float* %iB, align 4
  %244 = fadd float %242, %243
  store float %244, float* %k22, align 4
  %245 = load float* %k22, align 4
  %246 = fcmp oeq float %245, 0.000000e+00
  br i1 %246, label %247, label %248

; <label>:247                                     ; preds = %188
  store float 1.000000e+00, float* %k22, align 4
  br label %248

; <label>:248                                     ; preds = %247, %188
  %249 = load float* %iA, align 4
  %250 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %251 = load float* %250, align 4
  %252 = fmul float %249, %251
  %253 = load float* %iB, align 4
  %254 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %255 = load float* %254, align 4
  %256 = fmul float %253, %255
  %257 = fadd float %252, %256
  store float %257, float* %k23, align 4
  %258 = load float* %mA, align 4
  %259 = load float* %mB, align 4
  %260 = fadd float %258, %259
  %261 = load float* %iA, align 4
  %262 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %263 = load float* %262, align 4
  %264 = fmul float %261, %263
  %265 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %266 = load float* %265, align 4
  %267 = fmul float %264, %266
  %268 = fadd float %260, %267
  %269 = load float* %iB, align 4
  %270 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %271 = load float* %270, align 4
  %272 = fmul float %269, %271
  %273 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %274 = load float* %273, align 4
  %275 = fmul float %272, %274
  %276 = fadd float %268, %275
  store float %276, float* %k33, align 4
  %277 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 29
  %278 = getelementptr inbounds %struct.b2Mat33* %277, i32 0, i32 0
  %279 = load float* %k11, align 4
  %280 = load float* %k12, align 4
  %281 = load float* %k13, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %278, float %279, float %280, float %281)
  %282 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 29
  %283 = getelementptr inbounds %struct.b2Mat33* %282, i32 0, i32 1
  %284 = load float* %k12, align 4
  %285 = load float* %k22, align 4
  %286 = load float* %k23, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %283, float %284, float %285, float %286)
  %287 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 29
  %288 = getelementptr inbounds %struct.b2Mat33* %287, i32 0, i32 2
  %289 = load float* %k13, align 4
  %290 = load float* %k23, align 4
  %291 = load float* %k33, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %288, float %289, float %290, float %291)
  %292 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 12
  %293 = load i8* %292, align 1
  %294 = trunc i8 %293 to i1
  br i1 %294, label %295, label %342

; <label>:295                                     ; preds = %248
  %296 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 23
  %297 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %296, %struct.b2Vec2* %d)
  store float %297, float* %jointTranslation, align 4
  %298 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 9
  %299 = load float* %298, align 4
  %300 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 8
  %301 = load float* %300, align 4
  %302 = fsub float %299, %301
  %303 = call float @_Z5b2AbsIfET_S0_(float %302)
  %304 = fcmp olt float %303, 0x3F847AE140000000
  br i1 %304, label %305, label %307

; <label>:305                                     ; preds = %295
  %306 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  store i32 3, i32* %306, align 4
  br label %341

; <label>:307                                     ; preds = %295
  %308 = load float* %jointTranslation, align 4
  %309 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 8
  %310 = load float* %309, align 4
  %311 = fcmp ole float %308, %310
  br i1 %311, label %312, label %321

; <label>:312                                     ; preds = %307
  %313 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  %314 = load i32* %313, align 4
  %315 = icmp ne i32 %314, 1
  br i1 %315, label %316, label %320

; <label>:316                                     ; preds = %312
  %317 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  store i32 1, i32* %317, align 4
  %318 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %319 = getelementptr inbounds %struct.b2Vec3* %318, i32 0, i32 2
  store float 0.000000e+00, float* %319, align 4
  br label %320

; <label>:320                                     ; preds = %316, %312
  br label %340

; <label>:321                                     ; preds = %307
  %322 = load float* %jointTranslation, align 4
  %323 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 9
  %324 = load float* %323, align 4
  %325 = fcmp oge float %322, %324
  br i1 %325, label %326, label %335

; <label>:326                                     ; preds = %321
  %327 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  %328 = load i32* %327, align 4
  %329 = icmp ne i32 %328, 2
  br i1 %329, label %330, label %334

; <label>:330                                     ; preds = %326
  %331 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  store i32 2, i32* %331, align 4
  %332 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %333 = getelementptr inbounds %struct.b2Vec3* %332, i32 0, i32 2
  store float 0.000000e+00, float* %333, align 4
  br label %334

; <label>:334                                     ; preds = %330, %326
  br label %339

; <label>:335                                     ; preds = %321
  %336 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  store i32 0, i32* %336, align 4
  %337 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %338 = getelementptr inbounds %struct.b2Vec3* %337, i32 0, i32 2
  store float 0.000000e+00, float* %338, align 4
  br label %339

; <label>:339                                     ; preds = %335, %334
  br label %340

; <label>:340                                     ; preds = %339, %320
  br label %341

; <label>:341                                     ; preds = %340, %305
  br label %346

; <label>:342                                     ; preds = %248
  %343 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 14
  store i32 0, i32* %343, align 4
  %344 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %345 = getelementptr inbounds %struct.b2Vec3* %344, i32 0, i32 2
  store float 0.000000e+00, float* %345, align 4
  br label %346

; <label>:346                                     ; preds = %342, %341
  %347 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 13
  %348 = load i8* %347, align 1
  %349 = trunc i8 %348 to i1
  %350 = zext i1 %349 to i32
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %354

; <label>:352                                     ; preds = %346
  %353 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  store float 0.000000e+00, float* %353, align 4
  br label %354

; <label>:354                                     ; preds = %352, %346
  %355 = load %struct.b2SolverData** %2
  %356 = getelementptr inbounds %struct.b2SolverData* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.b2TimeStep* %356, i32 0, i32 5
  %358 = load i8* %357, align 1
  %359 = trunc i8 %358 to i1
  br i1 %359, label %360, label %436

; <label>:360                                     ; preds = %354
  %361 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %362 = load %struct.b2SolverData** %2
  %363 = getelementptr inbounds %struct.b2SolverData* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.b2TimeStep* %363, i32 0, i32 2
  %365 = load float* %364, align 4
  call void @_ZN6b2Vec3mLEf(%struct.b2Vec3* %361, float %365)
  %366 = load %struct.b2SolverData** %2
  %367 = getelementptr inbounds %struct.b2SolverData* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.b2TimeStep* %367, i32 0, i32 2
  %369 = load float* %368, align 4
  %370 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  %371 = load float* %370, align 4
  %372 = fmul float %371, %369
  store float %372, float* %370, align 4
  %373 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %374 = getelementptr inbounds %struct.b2Vec3* %373, i32 0, i32 0
  %375 = load float* %374, align 4
  %376 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 24
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %375, %struct.b2Vec2* %376)
  %377 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  %378 = load float* %377, align 4
  %379 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %380 = getelementptr inbounds %struct.b2Vec3* %379, i32 0, i32 2
  %381 = load float* %380, align 4
  %382 = fadd float %378, %381
  %383 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 23
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %382, %struct.b2Vec2* %383)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %P, %struct.b2Vec2* %11, %struct.b2Vec2* %12)
  %384 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %385 = getelementptr inbounds %struct.b2Vec3* %384, i32 0, i32 0
  %386 = load float* %385, align 4
  %387 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 25
  %388 = load float* %387, align 4
  %389 = fmul float %386, %388
  %390 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %391 = getelementptr inbounds %struct.b2Vec3* %390, i32 0, i32 1
  %392 = load float* %391, align 4
  %393 = fadd float %389, %392
  %394 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  %395 = load float* %394, align 4
  %396 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %397 = getelementptr inbounds %struct.b2Vec3* %396, i32 0, i32 2
  %398 = load float* %397, align 4
  %399 = fadd float %395, %398
  %400 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 27
  %401 = load float* %400, align 4
  %402 = fmul float %399, %401
  %403 = fadd float %393, %402
  store float %403, float* %LA, align 4
  %404 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %405 = getelementptr inbounds %struct.b2Vec3* %404, i32 0, i32 0
  %406 = load float* %405, align 4
  %407 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 26
  %408 = load float* %407, align 4
  %409 = fmul float %406, %408
  %410 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %411 = getelementptr inbounds %struct.b2Vec3* %410, i32 0, i32 1
  %412 = load float* %411, align 4
  %413 = fadd float %409, %412
  %414 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  %415 = load float* %414, align 4
  %416 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  %417 = getelementptr inbounds %struct.b2Vec3* %416, i32 0, i32 2
  %418 = load float* %417, align 4
  %419 = fadd float %415, %418
  %420 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 28
  %421 = load float* %420, align 4
  %422 = fmul float %419, %421
  %423 = fadd float %413, %422
  store float %423, float* %LB, align 4
  %424 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %424, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %13)
  %425 = load float* %iA, align 4
  %426 = load float* %LA, align 4
  %427 = fmul float %425, %426
  %428 = load float* %wA, align 4
  %429 = fsub float %428, %427
  store float %429, float* %wA, align 4
  %430 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %430, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %14)
  %431 = load float* %iB, align 4
  %432 = load float* %LB, align 4
  %433 = fmul float %431, %432
  %434 = load float* %wB, align 4
  %435 = fadd float %434, %433
  store float %435, float* %wB, align 4
  br label %439

; <label>:436                                     ; preds = %354
  %437 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 6
  call void @_ZN6b2Vec37SetZeroEv(%struct.b2Vec3* %437)
  %438 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 7
  store float 0.000000e+00, float* %438, align 4
  br label %439

; <label>:439                                     ; preds = %436, %360
  %440 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %441 = load i32* %440, align 4
  %442 = load %struct.b2SolverData** %2
  %443 = getelementptr inbounds %struct.b2SolverData* %442, i32 0, i32 2
  %444 = load %struct.b2Velocity** %443, align 4
  %445 = getelementptr inbounds %struct.b2Velocity* %444, i32 %441
  %446 = getelementptr inbounds %struct.b2Velocity* %445, i32 0, i32 0
  %447 = bitcast %struct.b2Vec2* %446 to i8*
  %448 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %447, i8* %448, i32 8, i32 4, i1 false)
  %449 = load float* %wA, align 4
  %450 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 15
  %451 = load i32* %450, align 4
  %452 = load %struct.b2SolverData** %2
  %453 = getelementptr inbounds %struct.b2SolverData* %452, i32 0, i32 2
  %454 = load %struct.b2Velocity** %453, align 4
  %455 = getelementptr inbounds %struct.b2Velocity* %454, i32 %451
  %456 = getelementptr inbounds %struct.b2Velocity* %455, i32 0, i32 1
  store float %449, float* %456, align 4
  %457 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %458 = load i32* %457, align 4
  %459 = load %struct.b2SolverData** %2
  %460 = getelementptr inbounds %struct.b2SolverData* %459, i32 0, i32 2
  %461 = load %struct.b2Velocity** %460, align 4
  %462 = getelementptr inbounds %struct.b2Velocity* %461, i32 %458
  %463 = getelementptr inbounds %struct.b2Velocity* %462, i32 0, i32 0
  %464 = bitcast %struct.b2Vec2* %463 to i8*
  %465 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %464, i8* %465, i32 8, i32 4, i1 false)
  %466 = load float* %wB, align 4
  %467 = getelementptr inbounds %class.b2PrismaticJoint* %15, i32 0, i32 16
  %468 = load i32* %467, align 4
  %469 = load %struct.b2SolverData** %2
  %470 = getelementptr inbounds %struct.b2SolverData* %469, i32 0, i32 2
  %471 = load %struct.b2Velocity** %470, align 4
  %472 = getelementptr inbounds %struct.b2Velocity* %471, i32 %468
  %473 = getelementptr inbounds %struct.b2Velocity* %472, i32 0, i32 1
  store float %466, float* %473, align 4
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

define void @_ZN16b2PrismaticJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2PrismaticJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %Cdot = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %impulse = alloca float, align 4
  %oldImpulse = alloca float, align 4
  %maxImpulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %Cdot1 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %Cdot2 = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %Cdot3 = alloca %struct.b2Vec3, align 4
  %f1 = alloca %struct.b2Vec3, align 4
  %df = alloca %struct.b2Vec3, align 4
  %8 = alloca %struct.b2Vec3, align 4
  %b = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %f2r = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec3, align 4
  %P4 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %LA5 = alloca float, align 4
  %LB6 = alloca float, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %df7 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %P8 = alloca %struct.b2Vec2, align 4
  %LA9 = alloca float, align 4
  %LB10 = alloca float, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  %Cdot10 = alloca %struct.b2Vec2, align 4
  %22 = alloca %struct.b2Vec2, align 4
  %test = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %23 = load %class.b2PrismaticJoint** %1
  %24 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 15
  %25 = load i32* %24, align 4
  %26 = load %struct.b2SolverData** %2
  %27 = getelementptr inbounds %struct.b2SolverData* %26, i32 0, i32 2
  %28 = load %struct.b2Velocity** %27, align 4
  %29 = getelementptr inbounds %struct.b2Velocity* %28, i32 %25
  %30 = getelementptr inbounds %struct.b2Velocity* %29, i32 0, i32 0
  %31 = bitcast %struct.b2Vec2* %vA to i8*
  %32 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 15
  %34 = load i32* %33, align 4
  %35 = load %struct.b2SolverData** %2
  %36 = getelementptr inbounds %struct.b2SolverData* %35, i32 0, i32 2
  %37 = load %struct.b2Velocity** %36, align 4
  %38 = getelementptr inbounds %struct.b2Velocity* %37, i32 %34
  %39 = getelementptr inbounds %struct.b2Velocity* %38, i32 0, i32 1
  %40 = load float* %39, align 4
  store float %40, float* %wA, align 4
  %41 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 16
  %42 = load i32* %41, align 4
  %43 = load %struct.b2SolverData** %2
  %44 = getelementptr inbounds %struct.b2SolverData* %43, i32 0, i32 2
  %45 = load %struct.b2Velocity** %44, align 4
  %46 = getelementptr inbounds %struct.b2Velocity* %45, i32 %42
  %47 = getelementptr inbounds %struct.b2Velocity* %46, i32 0, i32 0
  %48 = bitcast %struct.b2Vec2* %vB to i8*
  %49 = bitcast %struct.b2Vec2* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  %50 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 16
  %51 = load i32* %50, align 4
  %52 = load %struct.b2SolverData** %2
  %53 = getelementptr inbounds %struct.b2SolverData* %52, i32 0, i32 2
  %54 = load %struct.b2Velocity** %53, align 4
  %55 = getelementptr inbounds %struct.b2Velocity* %54, i32 %51
  %56 = getelementptr inbounds %struct.b2Velocity* %55, i32 0, i32 1
  %57 = load float* %56, align 4
  store float %57, float* %wB, align 4
  %58 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 19
  %59 = load float* %58, align 4
  store float %59, float* %mA, align 4
  %60 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 20
  %61 = load float* %60, align 4
  store float %61, float* %mB, align 4
  %62 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 21
  %63 = load float* %62, align 4
  store float %63, float* %iA, align 4
  %64 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 22
  %65 = load float* %64, align 4
  store float %65, float* %iB, align 4
  %66 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 13
  %67 = load i8* %66, align 1
  %68 = trunc i8 %67 to i1
  br i1 %68, label %69, label %137

; <label>:69                                      ; preds = %0
  %70 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 14
  %71 = load i32* %70, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %137

; <label>:73                                      ; preds = %69
  %74 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 23
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %75 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %74, %struct.b2Vec2* %3)
  %76 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 28
  %77 = load float* %76, align 4
  %78 = load float* %wB, align 4
  %79 = fmul float %77, %78
  %80 = fadd float %75, %79
  %81 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 27
  %82 = load float* %81, align 4
  %83 = load float* %wA, align 4
  %84 = fmul float %82, %83
  %85 = fsub float %80, %84
  store float %85, float* %Cdot, align 4
  %86 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 30
  %87 = load float* %86, align 4
  %88 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 11
  %89 = load float* %88, align 4
  %90 = load float* %Cdot, align 4
  %91 = fsub float %89, %90
  %92 = fmul float %87, %91
  store float %92, float* %impulse, align 4
  %93 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 7
  %94 = load float* %93, align 4
  store float %94, float* %oldImpulse, align 4
  %95 = load %struct.b2SolverData** %2
  %96 = getelementptr inbounds %struct.b2SolverData* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.b2TimeStep* %96, i32 0, i32 0
  %98 = load float* %97, align 4
  %99 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 10
  %100 = load float* %99, align 4
  %101 = fmul float %98, %100
  store float %101, float* %maxImpulse, align 4
  %102 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 7
  %103 = load float* %102, align 4
  %104 = load float* %impulse, align 4
  %105 = fadd float %103, %104
  %106 = load float* %maxImpulse, align 4
  %107 = fsub float -0.000000e+00, %106
  %108 = load float* %maxImpulse, align 4
  %109 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %105, float %107, float %108)
  %110 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 7
  store float %109, float* %110, align 4
  %111 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 7
  %112 = load float* %111, align 4
  %113 = load float* %oldImpulse, align 4
  %114 = fsub float %112, %113
  store float %114, float* %impulse, align 4
  %115 = load float* %impulse, align 4
  %116 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 23
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %115, %struct.b2Vec2* %116)
  %117 = load float* %impulse, align 4
  %118 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 27
  %119 = load float* %118, align 4
  %120 = fmul float %117, %119
  store float %120, float* %LA, align 4
  %121 = load float* %impulse, align 4
  %122 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 28
  %123 = load float* %122, align 4
  %124 = fmul float %121, %123
  store float %124, float* %LB, align 4
  %125 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %125, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %4)
  %126 = load float* %iA, align 4
  %127 = load float* %LA, align 4
  %128 = fmul float %126, %127
  %129 = load float* %wA, align 4
  %130 = fsub float %129, %128
  store float %130, float* %wA, align 4
  %131 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %131, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  %132 = load float* %iB, align 4
  %133 = load float* %LB, align 4
  %134 = fmul float %132, %133
  %135 = load float* %wB, align 4
  %136 = fadd float %135, %134
  store float %136, float* %wB, align 4
  br label %137

; <label>:137                                     ; preds = %73, %69, %0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %Cdot1)
  %138 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 24
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %139 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %138, %struct.b2Vec2* %6)
  %140 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 26
  %141 = load float* %140, align 4
  %142 = load float* %wB, align 4
  %143 = fmul float %141, %142
  %144 = fadd float %139, %143
  %145 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 25
  %146 = load float* %145, align 4
  %147 = load float* %wA, align 4
  %148 = fmul float %146, %147
  %149 = fsub float %144, %148
  %150 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  store float %149, float* %150, align 4
  %151 = load float* %wB, align 4
  %152 = load float* %wA, align 4
  %153 = fsub float %151, %152
  %154 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 1
  store float %153, float* %154, align 4
  %155 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 12
  %156 = load i8* %155, align 1
  %157 = trunc i8 %156 to i1
  br i1 %157, label %158, label %284

; <label>:158                                     ; preds = %137
  %159 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 14
  %160 = load i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %284

; <label>:162                                     ; preds = %158
  %163 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 23
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %164 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %163, %struct.b2Vec2* %7)
  %165 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 28
  %166 = load float* %165, align 4
  %167 = load float* %wB, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %164, %168
  %170 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 27
  %171 = load float* %170, align 4
  %172 = load float* %wA, align 4
  %173 = fmul float %171, %172
  %174 = fsub float %169, %173
  store float %174, float* %Cdot2, align 4
  %175 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  %176 = load float* %175, align 4
  %177 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 1
  %178 = load float* %177, align 4
  %179 = load float* %Cdot2, align 4
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %Cdot3, float %176, float %178, float %179)
  %180 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %181 = bitcast %struct.b2Vec3* %f1 to i8*
  %182 = bitcast %struct.b2Vec3* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %181, i8* %182, i32 12, i32 4, i1 false)
  %183 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  call void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* sret %8, %struct.b2Vec3* %Cdot3)
  call void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret %df, %struct.b2Mat33* %183, %struct.b2Vec3* %8)
  %184 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  call void @_ZN6b2Vec3pLERKS_(%struct.b2Vec3* %184, %struct.b2Vec3* %df)
  %185 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 14
  %186 = load i32* %185, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %195

; <label>:188                                     ; preds = %162
  %189 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %190 = getelementptr inbounds %struct.b2Vec3* %189, i32 0, i32 2
  %191 = load float* %190, align 4
  %192 = call float @_Z5b2MaxIfET_S0_S0_(float %191, float 0.000000e+00)
  %193 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %194 = getelementptr inbounds %struct.b2Vec3* %193, i32 0, i32 2
  store float %192, float* %194, align 4
  br label %207

; <label>:195                                     ; preds = %162
  %196 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 14
  %197 = load i32* %196, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %206

; <label>:199                                     ; preds = %195
  %200 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %201 = getelementptr inbounds %struct.b2Vec3* %200, i32 0, i32 2
  %202 = load float* %201, align 4
  %203 = call float @_Z5b2MinIfET_S0_S0_(float %202, float 0.000000e+00)
  %204 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %205 = getelementptr inbounds %struct.b2Vec3* %204, i32 0, i32 2
  store float %203, float* %205, align 4
  br label %206

; <label>:206                                     ; preds = %199, %195
  br label %207

; <label>:207                                     ; preds = %206, %188
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %9, %struct.b2Vec2* %Cdot1)
  %208 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %209 = getelementptr inbounds %struct.b2Vec3* %208, i32 0, i32 2
  %210 = load float* %209, align 4
  %211 = getelementptr inbounds %struct.b2Vec3* %f1, i32 0, i32 2
  %212 = load float* %211, align 4
  %213 = fsub float %210, %212
  %214 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  %215 = getelementptr inbounds %struct.b2Mat33* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.b2Vec3* %215, i32 0, i32 0
  %217 = load float* %216, align 4
  %218 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  %219 = getelementptr inbounds %struct.b2Mat33* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.b2Vec3* %219, i32 0, i32 1
  %221 = load float* %220, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %11, float %217, float %221)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %213, %struct.b2Vec2* %11)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %b, %struct.b2Vec2* %9, %struct.b2Vec2* %10)
  %222 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %12, %struct.b2Mat33* %222, %struct.b2Vec2* %b)
  %223 = getelementptr inbounds %struct.b2Vec3* %f1, i32 0, i32 0
  %224 = load float* %223, align 4
  %225 = getelementptr inbounds %struct.b2Vec3* %f1, i32 0, i32 1
  %226 = load float* %225, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %13, float %224, float %226)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %f2r, %struct.b2Vec2* %12, %struct.b2Vec2* %13)
  %227 = getelementptr inbounds %struct.b2Vec2* %f2r, i32 0, i32 0
  %228 = load float* %227, align 4
  %229 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %230 = getelementptr inbounds %struct.b2Vec3* %229, i32 0, i32 0
  store float %228, float* %230, align 4
  %231 = getelementptr inbounds %struct.b2Vec2* %f2r, i32 0, i32 1
  %232 = load float* %231, align 4
  %233 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %234 = getelementptr inbounds %struct.b2Vec3* %233, i32 0, i32 1
  store float %232, float* %234, align 4
  %235 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  call void @_ZmiRK6b2Vec3S1_(%struct.b2Vec3* sret %14, %struct.b2Vec3* %235, %struct.b2Vec3* %f1)
  %236 = bitcast %struct.b2Vec3* %df to i8*
  %237 = bitcast %struct.b2Vec3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %236, i8* %237, i32 12, i32 4, i1 false)
  %238 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 0
  %239 = load float* %238, align 4
  %240 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 24
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %239, %struct.b2Vec2* %240)
  %241 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 2
  %242 = load float* %241, align 4
  %243 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 23
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %16, float %242, %struct.b2Vec2* %243)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %P4, %struct.b2Vec2* %15, %struct.b2Vec2* %16)
  %244 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 0
  %245 = load float* %244, align 4
  %246 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 25
  %247 = load float* %246, align 4
  %248 = fmul float %245, %247
  %249 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 1
  %250 = load float* %249, align 4
  %251 = fadd float %248, %250
  %252 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 2
  %253 = load float* %252, align 4
  %254 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 27
  %255 = load float* %254, align 4
  %256 = fmul float %253, %255
  %257 = fadd float %251, %256
  store float %257, float* %LA5, align 4
  %258 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 0
  %259 = load float* %258, align 4
  %260 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 26
  %261 = load float* %260, align 4
  %262 = fmul float %259, %261
  %263 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 1
  %264 = load float* %263, align 4
  %265 = fadd float %262, %264
  %266 = getelementptr inbounds %struct.b2Vec3* %df, i32 0, i32 2
  %267 = load float* %266, align 4
  %268 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 28
  %269 = load float* %268, align 4
  %270 = fmul float %267, %269
  %271 = fadd float %265, %270
  store float %271, float* %LB6, align 4
  %272 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %17, float %272, %struct.b2Vec2* %P4)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %17)
  %273 = load float* %iA, align 4
  %274 = load float* %LA5, align 4
  %275 = fmul float %273, %274
  %276 = load float* %wA, align 4
  %277 = fsub float %276, %275
  store float %277, float* %wA, align 4
  %278 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %18, float %278, %struct.b2Vec2* %P4)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %18)
  %279 = load float* %iB, align 4
  %280 = load float* %LB6, align 4
  %281 = fmul float %279, %280
  %282 = load float* %wB, align 4
  %283 = fadd float %282, %281
  store float %283, float* %wB, align 4
  br label %363

; <label>:284                                     ; preds = %158, %137
  %285 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %19, %struct.b2Vec2* %Cdot1)
  call void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret %df7, %struct.b2Mat33* %285, %struct.b2Vec2* %19)
  %286 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 0
  %287 = load float* %286, align 4
  %288 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %289 = getelementptr inbounds %struct.b2Vec3* %288, i32 0, i32 0
  %290 = load float* %289, align 4
  %291 = fadd float %290, %287
  store float %291, float* %289, align 4
  %292 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 1
  %293 = load float* %292, align 4
  %294 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 6
  %295 = getelementptr inbounds %struct.b2Vec3* %294, i32 0, i32 1
  %296 = load float* %295, align 4
  %297 = fadd float %296, %293
  store float %297, float* %295, align 4
  %298 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 0
  %299 = load float* %298, align 4
  %300 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 24
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P8, float %299, %struct.b2Vec2* %300)
  %301 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 0
  %302 = load float* %301, align 4
  %303 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 25
  %304 = load float* %303, align 4
  %305 = fmul float %302, %304
  %306 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 1
  %307 = load float* %306, align 4
  %308 = fadd float %305, %307
  store float %308, float* %LA9, align 4
  %309 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 0
  %310 = load float* %309, align 4
  %311 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 26
  %312 = load float* %311, align 4
  %313 = fmul float %310, %312
  %314 = getelementptr inbounds %struct.b2Vec2* %df7, i32 0, i32 1
  %315 = load float* %314, align 4
  %316 = fadd float %313, %315
  store float %316, float* %LB10, align 4
  %317 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %20, float %317, %struct.b2Vec2* %P8)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %20)
  %318 = load float* %iA, align 4
  %319 = load float* %LA9, align 4
  %320 = fmul float %318, %319
  %321 = load float* %wA, align 4
  %322 = fsub float %321, %320
  store float %322, float* %wA, align 4
  %323 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %21, float %323, %struct.b2Vec2* %P8)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %21)
  %324 = load float* %iB, align 4
  %325 = load float* %LB10, align 4
  %326 = fmul float %324, %325
  %327 = load float* %wB, align 4
  %328 = fadd float %327, %326
  store float %328, float* %wB, align 4
  %329 = bitcast %struct.b2Vec2* %Cdot10 to i8*
  %330 = bitcast %struct.b2Vec2* %Cdot1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %329, i8* %330, i32 8, i32 4, i1 false)
  %331 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 24
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %22, %struct.b2Vec2* %vB, %struct.b2Vec2* %vA)
  %332 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %331, %struct.b2Vec2* %22)
  %333 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 26
  %334 = load float* %333, align 4
  %335 = load float* %wB, align 4
  %336 = fmul float %334, %335
  %337 = fadd float %332, %336
  %338 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 25
  %339 = load float* %338, align 4
  %340 = load float* %wA, align 4
  %341 = fmul float %339, %340
  %342 = fsub float %337, %341
  %343 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  store float %342, float* %343, align 4
  %344 = load float* %wB, align 4
  %345 = load float* %wA, align 4
  %346 = fsub float %344, %345
  %347 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 1
  store float %346, float* %347, align 4
  %348 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  %349 = load float* %348, align 4
  %350 = call float @_Z5b2AbsIfET_S0_(float %349)
  %351 = fcmp ogt float %350, 0x3F847AE140000000
  br i1 %351, label %357, label %352

; <label>:352                                     ; preds = %284
  %353 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 1
  %354 = load float* %353, align 4
  %355 = call float @_Z5b2AbsIfET_S0_(float %354)
  %356 = fcmp ogt float %355, 0x3F847AE140000000
  br i1 %356, label %357, label %362

; <label>:357                                     ; preds = %352, %284
  %358 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 29
  call void @_Z7b2Mul22RK7b2Mat33RK6b2Vec2(%struct.b2Vec2* sret %test, %struct.b2Mat33* %358, %struct.b2Vec2* %df7)
  %359 = getelementptr inbounds %struct.b2Vec2* %Cdot1, i32 0, i32 0
  %360 = load float* %359, align 4
  %361 = fadd float %360, 0.000000e+00
  store float %361, float* %359, align 4
  br label %362

; <label>:362                                     ; preds = %357, %352
  br label %363

; <label>:363                                     ; preds = %362, %207
  %364 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 15
  %365 = load i32* %364, align 4
  %366 = load %struct.b2SolverData** %2
  %367 = getelementptr inbounds %struct.b2SolverData* %366, i32 0, i32 2
  %368 = load %struct.b2Velocity** %367, align 4
  %369 = getelementptr inbounds %struct.b2Velocity* %368, i32 %365
  %370 = getelementptr inbounds %struct.b2Velocity* %369, i32 0, i32 0
  %371 = bitcast %struct.b2Vec2* %370 to i8*
  %372 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %371, i8* %372, i32 8, i32 4, i1 false)
  %373 = load float* %wA, align 4
  %374 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 15
  %375 = load i32* %374, align 4
  %376 = load %struct.b2SolverData** %2
  %377 = getelementptr inbounds %struct.b2SolverData* %376, i32 0, i32 2
  %378 = load %struct.b2Velocity** %377, align 4
  %379 = getelementptr inbounds %struct.b2Velocity* %378, i32 %375
  %380 = getelementptr inbounds %struct.b2Velocity* %379, i32 0, i32 1
  store float %373, float* %380, align 4
  %381 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 16
  %382 = load i32* %381, align 4
  %383 = load %struct.b2SolverData** %2
  %384 = getelementptr inbounds %struct.b2SolverData* %383, i32 0, i32 2
  %385 = load %struct.b2Velocity** %384, align 4
  %386 = getelementptr inbounds %struct.b2Velocity* %385, i32 %382
  %387 = getelementptr inbounds %struct.b2Velocity* %386, i32 0, i32 0
  %388 = bitcast %struct.b2Vec2* %387 to i8*
  %389 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %388, i8* %389, i32 8, i32 4, i1 false)
  %390 = load float* %wB, align 4
  %391 = getelementptr inbounds %class.b2PrismaticJoint* %23, i32 0, i32 16
  %392 = load i32* %391, align 4
  %393 = load %struct.b2SolverData** %2
  %394 = getelementptr inbounds %struct.b2SolverData* %393, i32 0, i32 2
  %395 = load %struct.b2Velocity** %394, align 4
  %396 = getelementptr inbounds %struct.b2Velocity* %395, i32 %392
  %397 = getelementptr inbounds %struct.b2Velocity* %396, i32 0, i32 1
  store float %390, float* %397, align 4
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

declare void @_ZNK7b2Mat337Solve22ERK6b2Vec2(%struct.b2Vec2* sret, %struct.b2Mat33*, %struct.b2Vec2*)

define linkonce_odr void @_ZmiRK6b2Vec3S1_(%struct.b2Vec3* noalias sret %agg.result, %struct.b2Vec3* %a, %struct.b2Vec3* %b) inlinehint {
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
  %9 = fsub float %5, %8
  %10 = load %struct.b2Vec3** %1
  %11 = getelementptr inbounds %struct.b2Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec3** %2
  %14 = getelementptr inbounds %struct.b2Vec3* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fsub float %12, %15
  %17 = load %struct.b2Vec3** %1
  %18 = getelementptr inbounds %struct.b2Vec3* %17, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %struct.b2Vec3** %2
  %21 = getelementptr inbounds %struct.b2Vec3* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fsub float %19, %22
  call void @_ZN6b2Vec3C1Efff(%struct.b2Vec3* %agg.result, float %9, float %16, float %23)
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

define zeroext i1 @_ZN16b2PrismaticJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2PrismaticJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
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
  %d = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %axis = alloca %struct.b2Vec2, align 4
  %a1 = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %a2 = alloca float, align 4
  %perp = alloca %struct.b2Vec2, align 4
  %s1 = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %s2 = alloca float, align 4
  %impulse = alloca %struct.b2Vec3, align 4
  %C1 = alloca %struct.b2Vec2, align 4
  %linearError = alloca float, align 4
  %angularError = alloca float, align 4
  %active = alloca i8, align 1
  %C2 = alloca float, align 4
  %translation = alloca float, align 4
  %k11 = alloca float, align 4
  %k12 = alloca float, align 4
  %k13 = alloca float, align 4
  %k22 = alloca float, align 4
  %k23 = alloca float, align 4
  %k33 = alloca float, align 4
  %K = alloca %struct.b2Mat33, align 4
  %C = alloca %struct.b2Vec3, align 4
  %9 = alloca %struct.b2Vec3, align 4
  %10 = alloca %struct.b2Vec3, align 4
  %k111 = alloca float, align 4
  %k122 = alloca float, align 4
  %k223 = alloca float, align 4
  %K4 = alloca %struct.b2Mat22, align 4
  %impulse1 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %P = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %LA = alloca float, align 4
  %LB = alloca float, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %16 = load %class.b2PrismaticJoint** %1
  %17 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 15
  %18 = load i32* %17, align 4
  %19 = load %struct.b2SolverData** %2
  %20 = getelementptr inbounds %struct.b2SolverData* %19, i32 0, i32 1
  %21 = load %struct.b2Position** %20, align 4
  %22 = getelementptr inbounds %struct.b2Position* %21, i32 %18
  %23 = getelementptr inbounds %struct.b2Position* %22, i32 0, i32 0
  %24 = bitcast %struct.b2Vec2* %cA to i8*
  %25 = bitcast %struct.b2Vec2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 8, i32 4, i1 false)
  %26 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 15
  %27 = load i32* %26, align 4
  %28 = load %struct.b2SolverData** %2
  %29 = getelementptr inbounds %struct.b2SolverData* %28, i32 0, i32 1
  %30 = load %struct.b2Position** %29, align 4
  %31 = getelementptr inbounds %struct.b2Position* %30, i32 %27
  %32 = getelementptr inbounds %struct.b2Position* %31, i32 0, i32 1
  %33 = load float* %32, align 4
  store float %33, float* %aA, align 4
  %34 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 16
  %35 = load i32* %34, align 4
  %36 = load %struct.b2SolverData** %2
  %37 = getelementptr inbounds %struct.b2SolverData* %36, i32 0, i32 1
  %38 = load %struct.b2Position** %37, align 4
  %39 = getelementptr inbounds %struct.b2Position* %38, i32 %35
  %40 = getelementptr inbounds %struct.b2Position* %39, i32 0, i32 0
  %41 = bitcast %struct.b2Vec2* %cB to i8*
  %42 = bitcast %struct.b2Vec2* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 8, i32 4, i1 false)
  %43 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 16
  %44 = load i32* %43, align 4
  %45 = load %struct.b2SolverData** %2
  %46 = getelementptr inbounds %struct.b2SolverData* %45, i32 0, i32 1
  %47 = load %struct.b2Position** %46, align 4
  %48 = getelementptr inbounds %struct.b2Position* %47, i32 %44
  %49 = getelementptr inbounds %struct.b2Position* %48, i32 0, i32 1
  %50 = load float* %49, align 4
  store float %50, float* %aB, align 4
  %51 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %51)
  %52 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %52)
  %53 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 19
  %54 = load float* %53, align 4
  store float %54, float* %mA, align 4
  %55 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 20
  %56 = load float* %55, align 4
  store float %56, float* %mB, align 4
  %57 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 21
  %58 = load float* %57, align 4
  store float %58, float* %iA, align 4
  %59 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 22
  %60 = load float* %59, align 4
  store float %60, float* %iB, align 4
  %61 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 1
  %62 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %61, %struct.b2Vec2* %62)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %63 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 2
  %64 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 18
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %63, %struct.b2Vec2* %64)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %65 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 3
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axis, %struct.b2Rot* %qA, %struct.b2Vec2* %65)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %66 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %7, %struct.b2Vec2* %axis)
  store float %66, float* %a1, align 4
  %67 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %axis)
  store float %67, float* %a2, align 4
  %68 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 4
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %perp, %struct.b2Rot* %qA, %struct.b2Vec2* %68)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %d, %struct.b2Vec2* %rA)
  %69 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %8, %struct.b2Vec2* %perp)
  store float %69, float* %s1, align 4
  %70 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %perp)
  store float %70, float* %s2, align 4
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %impulse)
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %C1)
  %71 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %perp, %struct.b2Vec2* %d)
  %72 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 0
  store float %71, float* %72, align 4
  %73 = load float* %aB, align 4
  %74 = load float* %aA, align 4
  %75 = fsub float %73, %74
  %76 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 5
  %77 = load float* %76, align 4
  %78 = fsub float %75, %77
  %79 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 1
  store float %78, float* %79, align 4
  %80 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 0
  %81 = load float* %80, align 4
  %82 = call float @_Z5b2AbsIfET_S0_(float %81)
  store float %82, float* %linearError, align 4
  %83 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 1
  %84 = load float* %83, align 4
  %85 = call float @_Z5b2AbsIfET_S0_(float %84)
  store float %85, float* %angularError, align 4
  store i8 0, i8* %active, align 1
  store float 0.000000e+00, float* %C2, align 4
  %86 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 12
  %87 = load i8* %86, align 1
  %88 = trunc i8 %87 to i1
  br i1 %88, label %89, label %144

; <label>:89                                      ; preds = %0
  %90 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %axis, %struct.b2Vec2* %d)
  store float %90, float* %translation, align 4
  %91 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 9
  %92 = load float* %91, align 4
  %93 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 8
  %94 = load float* %93, align 4
  %95 = fsub float %92, %94
  %96 = call float @_Z5b2AbsIfET_S0_(float %95)
  %97 = fcmp olt float %96, 0x3F847AE140000000
  br i1 %97, label %98, label %105

; <label>:98                                      ; preds = %89
  %99 = load float* %translation, align 4
  %100 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %99, float 0xBFC99999A0000000, float 0x3FC99999A0000000)
  store float %100, float* %C2, align 4
  %101 = load float* %linearError, align 4
  %102 = load float* %translation, align 4
  %103 = call float @_Z5b2AbsIfET_S0_(float %102)
  %104 = call float @_Z5b2MaxIfET_S0_S0_(float %101, float %103)
  store float %104, float* %linearError, align 4
  store i8 1, i8* %active, align 1
  br label %143

; <label>:105                                     ; preds = %89
  %106 = load float* %translation, align 4
  %107 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 8
  %108 = load float* %107, align 4
  %109 = fcmp ole float %106, %108
  br i1 %109, label %110, label %123

; <label>:110                                     ; preds = %105
  %111 = load float* %translation, align 4
  %112 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 8
  %113 = load float* %112, align 4
  %114 = fsub float %111, %113
  %115 = fadd float %114, 0x3F747AE140000000
  %116 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %115, float 0xBFC99999A0000000, float 0.000000e+00)
  store float %116, float* %C2, align 4
  %117 = load float* %linearError, align 4
  %118 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 8
  %119 = load float* %118, align 4
  %120 = load float* %translation, align 4
  %121 = fsub float %119, %120
  %122 = call float @_Z5b2MaxIfET_S0_S0_(float %117, float %121)
  store float %122, float* %linearError, align 4
  store i8 1, i8* %active, align 1
  br label %142

; <label>:123                                     ; preds = %105
  %124 = load float* %translation, align 4
  %125 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 9
  %126 = load float* %125, align 4
  %127 = fcmp oge float %124, %126
  br i1 %127, label %128, label %141

; <label>:128                                     ; preds = %123
  %129 = load float* %translation, align 4
  %130 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 9
  %131 = load float* %130, align 4
  %132 = fsub float %129, %131
  %133 = fsub float %132, 0x3F747AE140000000
  %134 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %133, float 0.000000e+00, float 0x3FC99999A0000000)
  store float %134, float* %C2, align 4
  %135 = load float* %linearError, align 4
  %136 = load float* %translation, align 4
  %137 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 9
  %138 = load float* %137, align 4
  %139 = fsub float %136, %138
  %140 = call float @_Z5b2MaxIfET_S0_S0_(float %135, float %139)
  store float %140, float* %linearError, align 4
  store i8 1, i8* %active, align 1
  br label %141

; <label>:141                                     ; preds = %128, %123
  br label %142

; <label>:142                                     ; preds = %141, %110
  br label %143

; <label>:143                                     ; preds = %142, %98
  br label %144

; <label>:144                                     ; preds = %143, %0
  %145 = load i8* %active, align 1
  %146 = trunc i8 %145 to i1
  br i1 %146, label %147, label %232

; <label>:147                                     ; preds = %144
  %148 = load float* %mA, align 4
  %149 = load float* %mB, align 4
  %150 = fadd float %148, %149
  %151 = load float* %iA, align 4
  %152 = load float* %s1, align 4
  %153 = fmul float %151, %152
  %154 = load float* %s1, align 4
  %155 = fmul float %153, %154
  %156 = fadd float %150, %155
  %157 = load float* %iB, align 4
  %158 = load float* %s2, align 4
  %159 = fmul float %157, %158
  %160 = load float* %s2, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %156, %161
  store float %162, float* %k11, align 4
  %163 = load float* %iA, align 4
  %164 = load float* %s1, align 4
  %165 = fmul float %163, %164
  %166 = load float* %iB, align 4
  %167 = load float* %s2, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %165, %168
  store float %169, float* %k12, align 4
  %170 = load float* %iA, align 4
  %171 = load float* %s1, align 4
  %172 = fmul float %170, %171
  %173 = load float* %a1, align 4
  %174 = fmul float %172, %173
  %175 = load float* %iB, align 4
  %176 = load float* %s2, align 4
  %177 = fmul float %175, %176
  %178 = load float* %a2, align 4
  %179 = fmul float %177, %178
  %180 = fadd float %174, %179
  store float %180, float* %k13, align 4
  %181 = load float* %iA, align 4
  %182 = load float* %iB, align 4
  %183 = fadd float %181, %182
  store float %183, float* %k22, align 4
  %184 = load float* %k22, align 4
  %185 = fcmp oeq float %184, 0.000000e+00
  br i1 %185, label %186, label %187

; <label>:186                                     ; preds = %147
  store float 1.000000e+00, float* %k22, align 4
  br label %187

; <label>:187                                     ; preds = %186, %147
  %188 = load float* %iA, align 4
  %189 = load float* %a1, align 4
  %190 = fmul float %188, %189
  %191 = load float* %iB, align 4
  %192 = load float* %a2, align 4
  %193 = fmul float %191, %192
  %194 = fadd float %190, %193
  store float %194, float* %k23, align 4
  %195 = load float* %mA, align 4
  %196 = load float* %mB, align 4
  %197 = fadd float %195, %196
  %198 = load float* %iA, align 4
  %199 = load float* %a1, align 4
  %200 = fmul float %198, %199
  %201 = load float* %a1, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %197, %202
  %204 = load float* %iB, align 4
  %205 = load float* %a2, align 4
  %206 = fmul float %204, %205
  %207 = load float* %a2, align 4
  %208 = fmul float %206, %207
  %209 = fadd float %203, %208
  store float %209, float* %k33, align 4
  call void @_ZN7b2Mat33C1Ev(%struct.b2Mat33* %K)
  %210 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 0
  %211 = load float* %k11, align 4
  %212 = load float* %k12, align 4
  %213 = load float* %k13, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %210, float %211, float %212, float %213)
  %214 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 1
  %215 = load float* %k12, align 4
  %216 = load float* %k22, align 4
  %217 = load float* %k23, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %214, float %215, float %216, float %217)
  %218 = getelementptr inbounds %struct.b2Mat33* %K, i32 0, i32 2
  %219 = load float* %k13, align 4
  %220 = load float* %k23, align 4
  %221 = load float* %k33, align 4
  call void @_ZN6b2Vec33SetEfff(%struct.b2Vec3* %218, float %219, float %220, float %221)
  call void @_ZN6b2Vec3C1Ev(%struct.b2Vec3* %C)
  %222 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 0
  %223 = load float* %222, align 4
  %224 = getelementptr inbounds %struct.b2Vec3* %C, i32 0, i32 0
  store float %223, float* %224, align 4
  %225 = getelementptr inbounds %struct.b2Vec2* %C1, i32 0, i32 1
  %226 = load float* %225, align 4
  %227 = getelementptr inbounds %struct.b2Vec3* %C, i32 0, i32 1
  store float %226, float* %227, align 4
  %228 = load float* %C2, align 4
  %229 = getelementptr inbounds %struct.b2Vec3* %C, i32 0, i32 2
  store float %228, float* %229, align 4
  call void @_ZNK6b2Vec3ngEv(%struct.b2Vec3* sret %10, %struct.b2Vec3* %C)
  call void @_ZNK7b2Mat337Solve33ERK6b2Vec3(%struct.b2Vec3* sret %9, %struct.b2Mat33* %K, %struct.b2Vec3* %10)
  %230 = bitcast %struct.b2Vec3* %impulse to i8*
  %231 = bitcast %struct.b2Vec3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %230, i8* %231, i32 12, i32 4, i1 false)
  br label %275

; <label>:232                                     ; preds = %144
  %233 = load float* %mA, align 4
  %234 = load float* %mB, align 4
  %235 = fadd float %233, %234
  %236 = load float* %iA, align 4
  %237 = load float* %s1, align 4
  %238 = fmul float %236, %237
  %239 = load float* %s1, align 4
  %240 = fmul float %238, %239
  %241 = fadd float %235, %240
  %242 = load float* %iB, align 4
  %243 = load float* %s2, align 4
  %244 = fmul float %242, %243
  %245 = load float* %s2, align 4
  %246 = fmul float %244, %245
  %247 = fadd float %241, %246
  store float %247, float* %k111, align 4
  %248 = load float* %iA, align 4
  %249 = load float* %s1, align 4
  %250 = fmul float %248, %249
  %251 = load float* %iB, align 4
  %252 = load float* %s2, align 4
  %253 = fmul float %251, %252
  %254 = fadd float %250, %253
  store float %254, float* %k122, align 4
  %255 = load float* %iA, align 4
  %256 = load float* %iB, align 4
  %257 = fadd float %255, %256
  store float %257, float* %k223, align 4
  %258 = load float* %k223, align 4
  %259 = fcmp oeq float %258, 0.000000e+00
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %232
  store float 1.000000e+00, float* %k223, align 4
  br label %261

; <label>:261                                     ; preds = %260, %232
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %K4)
  %262 = getelementptr inbounds %struct.b2Mat22* %K4, i32 0, i32 0
  %263 = load float* %k111, align 4
  %264 = load float* %k122, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %262, float %263, float %264)
  %265 = getelementptr inbounds %struct.b2Mat22* %K4, i32 0, i32 1
  %266 = load float* %k122, align 4
  %267 = load float* %k223, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %265, float %266, float %267)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %11, %struct.b2Vec2* %C1)
  call void @_ZNK7b2Mat225SolveERK6b2Vec2(%struct.b2Vec2* sret %impulse1, %struct.b2Mat22* %K4, %struct.b2Vec2* %11)
  %268 = getelementptr inbounds %struct.b2Vec2* %impulse1, i32 0, i32 0
  %269 = load float* %268, align 4
  %270 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  store float %269, float* %270, align 4
  %271 = getelementptr inbounds %struct.b2Vec2* %impulse1, i32 0, i32 1
  %272 = load float* %271, align 4
  %273 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 1
  store float %272, float* %273, align 4
  %274 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  store float 0.000000e+00, float* %274, align 4
  br label %275

; <label>:275                                     ; preds = %261, %187
  %276 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  %277 = load float* %276, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %277, %struct.b2Vec2* %perp)
  %278 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %279 = load float* %278, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %279, %struct.b2Vec2* %axis)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %P, %struct.b2Vec2* %12, %struct.b2Vec2* %13)
  %280 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  %281 = load float* %280, align 4
  %282 = load float* %s1, align 4
  %283 = fmul float %281, %282
  %284 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 1
  %285 = load float* %284, align 4
  %286 = fadd float %283, %285
  %287 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %288 = load float* %287, align 4
  %289 = load float* %a1, align 4
  %290 = fmul float %288, %289
  %291 = fadd float %286, %290
  store float %291, float* %LA, align 4
  %292 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 0
  %293 = load float* %292, align 4
  %294 = load float* %s2, align 4
  %295 = fmul float %293, %294
  %296 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 1
  %297 = load float* %296, align 4
  %298 = fadd float %295, %297
  %299 = getelementptr inbounds %struct.b2Vec3* %impulse, i32 0, i32 2
  %300 = load float* %299, align 4
  %301 = load float* %a2, align 4
  %302 = fmul float %300, %301
  %303 = fadd float %298, %302
  store float %303, float* %LB, align 4
  %304 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %304, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %14)
  %305 = load float* %iA, align 4
  %306 = load float* %LA, align 4
  %307 = fmul float %305, %306
  %308 = load float* %aA, align 4
  %309 = fsub float %308, %307
  store float %309, float* %aA, align 4
  %310 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %310, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %15)
  %311 = load float* %iB, align 4
  %312 = load float* %LB, align 4
  %313 = fmul float %311, %312
  %314 = load float* %aB, align 4
  %315 = fadd float %314, %313
  store float %315, float* %aB, align 4
  %316 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 15
  %317 = load i32* %316, align 4
  %318 = load %struct.b2SolverData** %2
  %319 = getelementptr inbounds %struct.b2SolverData* %318, i32 0, i32 1
  %320 = load %struct.b2Position** %319, align 4
  %321 = getelementptr inbounds %struct.b2Position* %320, i32 %317
  %322 = getelementptr inbounds %struct.b2Position* %321, i32 0, i32 0
  %323 = bitcast %struct.b2Vec2* %322 to i8*
  %324 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %323, i8* %324, i32 8, i32 4, i1 false)
  %325 = load float* %aA, align 4
  %326 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 15
  %327 = load i32* %326, align 4
  %328 = load %struct.b2SolverData** %2
  %329 = getelementptr inbounds %struct.b2SolverData* %328, i32 0, i32 1
  %330 = load %struct.b2Position** %329, align 4
  %331 = getelementptr inbounds %struct.b2Position* %330, i32 %327
  %332 = getelementptr inbounds %struct.b2Position* %331, i32 0, i32 1
  store float %325, float* %332, align 4
  %333 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 16
  %334 = load i32* %333, align 4
  %335 = load %struct.b2SolverData** %2
  %336 = getelementptr inbounds %struct.b2SolverData* %335, i32 0, i32 1
  %337 = load %struct.b2Position** %336, align 4
  %338 = getelementptr inbounds %struct.b2Position* %337, i32 %334
  %339 = getelementptr inbounds %struct.b2Position* %338, i32 0, i32 0
  %340 = bitcast %struct.b2Vec2* %339 to i8*
  %341 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %340, i8* %341, i32 8, i32 4, i1 false)
  %342 = load float* %aB, align 4
  %343 = getelementptr inbounds %class.b2PrismaticJoint* %16, i32 0, i32 16
  %344 = load i32* %343, align 4
  %345 = load %struct.b2SolverData** %2
  %346 = getelementptr inbounds %struct.b2SolverData* %345, i32 0, i32 1
  %347 = load %struct.b2Position** %346, align 4
  %348 = getelementptr inbounds %struct.b2Position* %347, i32 %344
  %349 = getelementptr inbounds %struct.b2Position* %348, i32 0, i32 1
  store float %342, float* %349, align 4
  %350 = load float* %linearError, align 4
  %351 = fcmp ole float %350, 0x3F747AE140000000
  br i1 %351, label %352, label %355

; <label>:352                                     ; preds = %275
  %353 = load float* %angularError, align 4
  %354 = fcmp ole float %353, 0x3FA1DF46C0000000
  br label %355

; <label>:355                                     ; preds = %352, %275
  %356 = phi i1 [ false, %275 ], [ %354, %352 ]
  ret i1 %356
}

define linkonce_odr void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  call void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %2)
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

define void @_ZNK16b2PrismaticJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PrismaticJoint* %this) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 1
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

define void @_ZNK16b2PrismaticJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PrismaticJoint* %this) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 2
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK16b2PrismaticJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2PrismaticJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %6 = load %class.b2PrismaticJoint** %1
  %7 = load float* %2, align 4
  %8 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 6
  %9 = getelementptr inbounds %struct.b2Vec3* %8, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 24
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %10, %struct.b2Vec2* %11)
  %12 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 7
  %13 = load float* %12, align 4
  %14 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 6
  %15 = getelementptr inbounds %struct.b2Vec3* %14, i32 0, i32 2
  %16 = load float* %15, align 4
  %17 = fadd float %13, %16
  %18 = getelementptr inbounds %class.b2PrismaticJoint* %6, i32 0, i32 23
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %17, %struct.b2Vec2* %18)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %5)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %3)
  ret void
}

define float @_ZNK16b2PrismaticJoint17GetReactionTorqueEf(%class.b2PrismaticJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2PrismaticJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2PrismaticJoint* %3, i32 0, i32 6
  %6 = getelementptr inbounds %struct.b2Vec3* %5, i32 0, i32 1
  %7 = load float* %6, align 4
  %8 = fmul float %4, %7
  ret float %8
}

define float @_ZNK16b2PrismaticJoint19GetJointTranslationEv(%class.b2PrismaticJoint* %this) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %pA = alloca %struct.b2Vec2, align 4
  %pB = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %axis = alloca %struct.b2Vec2, align 4
  %translation = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 1
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %pA, %class.b2Body* %5, %struct.b2Vec2* %6)
  %7 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  %10 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 2
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %pB, %class.b2Body* %9, %struct.b2Vec2* %10)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %pB, %struct.b2Vec2* %pA)
  %11 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %12 = getelementptr inbounds %class.b2Joint* %11, i32 0, i32 6
  %13 = load %class.b2Body** %12, align 4
  %14 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 3
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

define float @_ZNK16b2PrismaticJoint13GetJointSpeedEv(%class.b2PrismaticJoint* %this) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %bA = alloca %class.b2Body*, align 4
  %bB = alloca %class.b2Body*, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %axis = alloca %struct.b2Vec2, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %wB = alloca float, align 4
  %speed = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %10 = load %class.b2PrismaticJoint** %1
  %11 = bitcast %class.b2PrismaticJoint* %10 to %class.b2Joint*
  %12 = getelementptr inbounds %class.b2Joint* %11, i32 0, i32 6
  %13 = load %class.b2Body** %12, align 4
  store %class.b2Body* %13, %class.b2Body** %bA, align 4
  %14 = bitcast %class.b2PrismaticJoint* %10 to %class.b2Joint*
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 7
  %16 = load %class.b2Body** %15, align 4
  store %class.b2Body* %16, %class.b2Body** %bB, align 4
  %17 = load %class.b2Body** %bA, align 4
  %18 = getelementptr inbounds %class.b2Body* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.b2Transform* %18, i32 0, i32 1
  %20 = getelementptr inbounds %class.b2PrismaticJoint* %10, i32 0, i32 1
  %21 = load %class.b2Body** %bA, align 4
  %22 = getelementptr inbounds %class.b2Body* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.b2Sweep* %22, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %20, %struct.b2Vec2* %23)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %19, %struct.b2Vec2* %2)
  %24 = load %class.b2Body** %bB, align 4
  %25 = getelementptr inbounds %class.b2Body* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.b2Transform* %25, i32 0, i32 1
  %27 = getelementptr inbounds %class.b2PrismaticJoint* %10, i32 0, i32 2
  %28 = load %class.b2Body** %bB, align 4
  %29 = getelementptr inbounds %class.b2Body* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.b2Sweep* %29, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %27, %struct.b2Vec2* %30)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %26, %struct.b2Vec2* %3)
  %31 = load %class.b2Body** %bA, align 4
  %32 = getelementptr inbounds %class.b2Body* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.b2Sweep* %32, i32 0, i32 2
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %p1, %struct.b2Vec2* %33, %struct.b2Vec2* %rA)
  %34 = load %class.b2Body** %bB, align 4
  %35 = getelementptr inbounds %class.b2Body* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.b2Sweep* %35, i32 0, i32 2
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %p2, %struct.b2Vec2* %36, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  %37 = load %class.b2Body** %bA, align 4
  %38 = getelementptr inbounds %class.b2Body* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.b2Transform* %38, i32 0, i32 1
  %40 = getelementptr inbounds %class.b2PrismaticJoint* %10, i32 0, i32 3
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axis, %struct.b2Rot* %39, %struct.b2Vec2* %40)
  %41 = load %class.b2Body** %bA, align 4
  %42 = getelementptr inbounds %class.b2Body* %41, i32 0, i32 5
  %43 = bitcast %struct.b2Vec2* %vA to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  %45 = load %class.b2Body** %bB, align 4
  %46 = getelementptr inbounds %class.b2Body* %45, i32 0, i32 5
  %47 = bitcast %struct.b2Vec2* %vB to i8*
  %48 = bitcast %struct.b2Vec2* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %47, i8* %48, i32 8, i32 4, i1 false)
  %49 = load %class.b2Body** %bA, align 4
  %50 = getelementptr inbounds %class.b2Body* %49, i32 0, i32 6
  %51 = load float* %50, align 4
  store float %51, float* %wA, align 4
  %52 = load %class.b2Body** %bB, align 4
  %53 = getelementptr inbounds %class.b2Body* %52, i32 0, i32 6
  %54 = load float* %53, align 4
  store float %54, float* %wB, align 4
  %55 = load float* %wA, align 4
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %55, %struct.b2Vec2* %axis)
  %56 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %d, %struct.b2Vec2* %4)
  %57 = load float* %wB, align 4
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %8, float %57, %struct.b2Vec2* %rB)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %vB, %struct.b2Vec2* %8)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %7, %struct.b2Vec2* %vA)
  %58 = load float* %wA, align 4
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %9, float %58, %struct.b2Vec2* %rA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %9)
  %59 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %axis, %struct.b2Vec2* %5)
  %60 = fadd float %56, %59
  store float %60, float* %speed, align 4
  %61 = load float* %speed, align 4
  ret float %61
}

define zeroext i1 @_ZNK16b2PrismaticJoint14IsLimitEnabledEv(%class.b2PrismaticJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 12
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define void @_ZN16b2PrismaticJoint11EnableLimitEb(%class.b2PrismaticJoint* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca i8, align 1
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2PrismaticJoint** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 12
  %9 = load i8* %8, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %26

; <label>:13                                      ; preds = %0
  %14 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 6
  %16 = load %class.b2Body** %15, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %16, i1 zeroext true)
  %17 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %18 = getelementptr inbounds %class.b2Joint* %17, i32 0, i32 7
  %19 = load %class.b2Body** %18, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %19, i1 zeroext true)
  %20 = load i8* %2, align 1
  %21 = trunc i8 %20 to i1
  %22 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 12
  %23 = zext i1 %21 to i8
  store i8 %23, i8* %22, align 1
  %24 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 6
  %25 = getelementptr inbounds %struct.b2Vec3* %24, i32 0, i32 2
  store float 0.000000e+00, float* %25, align 4
  br label %26

; <label>:26                                      ; preds = %13, %0
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

define float @_ZNK16b2PrismaticJoint13GetLowerLimitEv(%class.b2PrismaticJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 8
  %4 = load float* %3, align 4
  ret float %4
}

define float @_ZNK16b2PrismaticJoint13GetUpperLimitEv(%class.b2PrismaticJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 9
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN16b2PrismaticJoint9SetLimitsEff(%class.b2PrismaticJoint* %this, float %lower, float %upper) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %lower, float* %2, align 4
  store float %upper, float* %3, align 4
  %4 = load %class.b2PrismaticJoint** %1
  %5 = load float* %2, align 4
  %6 = load float* %3, align 4
  %7 = fcmp ole float %5, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str1, i32 0, i32 0), i32 575, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZN16b2PrismaticJoint9SetLimitsEff, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = load float* %2, align 4
  %13 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 8
  %14 = load float* %13, align 4
  %15 = fcmp une float %12, %14
  br i1 %15, label %21, label %16

; <label>:16                                      ; preds = %11
  %17 = load float* %3, align 4
  %18 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 9
  %19 = load float* %18, align 4
  %20 = fcmp une float %17, %19
  br i1 %20, label %21, label %34

; <label>:21                                      ; preds = %16, %11
  %22 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %23 = getelementptr inbounds %class.b2Joint* %22, i32 0, i32 6
  %24 = load %class.b2Body** %23, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %24, i1 zeroext true)
  %25 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %26 = getelementptr inbounds %class.b2Joint* %25, i32 0, i32 7
  %27 = load %class.b2Body** %26, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %27, i1 zeroext true)
  %28 = load float* %2, align 4
  %29 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 8
  store float %28, float* %29, align 4
  %30 = load float* %3, align 4
  %31 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 9
  store float %30, float* %31, align 4
  %32 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 6
  %33 = getelementptr inbounds %struct.b2Vec3* %32, i32 0, i32 2
  store float 0.000000e+00, float* %33, align 4
  br label %34

; <label>:34                                      ; preds = %21, %16
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define zeroext i1 @_ZNK16b2PrismaticJoint14IsMotorEnabledEv(%class.b2PrismaticJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 13
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define void @_ZN16b2PrismaticJoint11EnableMotorEb(%class.b2PrismaticJoint* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca i8, align 1
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2PrismaticJoint** %1
  %5 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %6 = getelementptr inbounds %class.b2Joint* %5, i32 0, i32 6
  %7 = load %class.b2Body** %6, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %7, i1 zeroext true)
  %8 = bitcast %class.b2PrismaticJoint* %4 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %10, i1 zeroext true)
  %11 = load i8* %2, align 1
  %12 = trunc i8 %11 to i1
  %13 = getelementptr inbounds %class.b2PrismaticJoint* %4, i32 0, i32 13
  %14 = zext i1 %12 to i8
  store i8 %14, i8* %13, align 1
  ret void
}

define void @_ZN16b2PrismaticJoint13SetMotorSpeedEf(%class.b2PrismaticJoint* %this, float %speed) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %speed, float* %2, align 4
  %3 = load %class.b2PrismaticJoint** %1
  %4 = bitcast %class.b2PrismaticJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2PrismaticJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2PrismaticJoint* %3, i32 0, i32 11
  store float %10, float* %11, align 4
  ret void
}

define void @_ZN16b2PrismaticJoint16SetMaxMotorForceEf(%class.b2PrismaticJoint* %this, float %force) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %force, float* %2, align 4
  %3 = load %class.b2PrismaticJoint** %1
  %4 = bitcast %class.b2PrismaticJoint* %3 to %class.b2Joint*
  %5 = getelementptr inbounds %class.b2Joint* %4, i32 0, i32 6
  %6 = load %class.b2Body** %5, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %6, i1 zeroext true)
  %7 = bitcast %class.b2PrismaticJoint* %3 to %class.b2Joint*
  %8 = getelementptr inbounds %class.b2Joint* %7, i32 0, i32 7
  %9 = load %class.b2Body** %8, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %9, i1 zeroext true)
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2PrismaticJoint* %3, i32 0, i32 10
  store float %10, float* %11, align 4
  ret void
}

define float @_ZNK16b2PrismaticJoint13GetMotorForceEf(%class.b2PrismaticJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2PrismaticJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2PrismaticJoint* %3, i32 0, i32 7
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  ret float %7
}

define void @_ZN16b2PrismaticJoint4DumpEv(%class.b2PrismaticJoint* %this) align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str2, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str6, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str7, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 3
  %37 = getelementptr inbounds %struct.b2Vec2* %36, i32 0, i32 0
  %38 = load float* %37, align 4
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 3
  %41 = getelementptr inbounds %struct.b2Vec2* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  %43 = fpext float %42 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([40 x i8]* @.str8, i32 0, i32 0), double %39, double %43)
  %44 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 5
  %45 = load float* %44, align 4
  %46 = fpext float %45 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str9, i32 0, i32 0), double %46)
  %47 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 12
  %48 = load i8* %47, align 1
  %49 = trunc i8 %48 to i1
  %50 = zext i1 %49 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str10, i32 0, i32 0), i32 %50)
  %51 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 8
  %52 = load float* %51, align 4
  %53 = fpext float %52 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([34 x i8]* @.str11, i32 0, i32 0), double %53)
  %54 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 9
  %55 = load float* %54, align 4
  %56 = fpext float %55 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([34 x i8]* @.str12, i32 0, i32 0), double %56)
  %57 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 13
  %58 = load i8* %57, align 1
  %59 = trunc i8 %58 to i1
  %60 = zext i1 %59 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0), i32 %60)
  %61 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 11
  %62 = load float* %61, align 4
  %63 = fpext float %62 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str14, i32 0, i32 0), double %63)
  %64 = getelementptr inbounds %class.b2PrismaticJoint* %2, i32 0, i32 10
  %65 = load float* %64, align 4
  %66 = fpext float %65 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([31 x i8]* @.str15, i32 0, i32 0), double %66)
  %67 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
  %68 = getelementptr inbounds %class.b2Joint* %67, i32 0, i32 8
  %69 = load i32* %68, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str16, i32 0, i32 0), i32 %69)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN16b2PrismaticJointD1Ev(%class.b2PrismaticJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  call void @_ZN16b2PrismaticJointD2Ev(%class.b2PrismaticJoint* %2)
  ret void
}

define linkonce_odr void @_ZN16b2PrismaticJointD0Ev(%class.b2PrismaticJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %4 = load %class.b2PrismaticJoint** %1
  invoke void @_ZN16b2PrismaticJointD1Ev(%class.b2PrismaticJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2PrismaticJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2PrismaticJoint* %4 to i8*
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

define linkonce_odr void @_ZN16b2PrismaticJointD2Ev(%class.b2PrismaticJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PrismaticJoint*, align 4
  store %class.b2PrismaticJoint* %this, %class.b2PrismaticJoint** %1, align 4
  %2 = load %class.b2PrismaticJoint** %1
  %3 = bitcast %class.b2PrismaticJoint* %2 to %class.b2Joint*
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
