; ModuleID = 'Dynamics/Joints/b2PulleyJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2PulleyJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
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
%struct.b2PulleyJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@.str = private unnamed_addr constant [23 x i8] c"ratio > 1.19209290e-7F\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"Dynamics/Joints/b2PulleyJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN16b2PulleyJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_S4_S4_f = private unnamed_addr constant [127 x i8] c"void b2PulleyJointDef::Initialize(b2Body *, b2Body *, const b2Vec2 &, const b2Vec2 &, const b2Vec2 &, const b2Vec2 &, float32)\00", align 1
@_ZTV13b2PulleyJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI13b2PulleyJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PulleyJoint*)* @_ZNK13b2PulleyJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PulleyJoint*)* @_ZNK13b2PulleyJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2PulleyJoint*, float)* @_ZNK13b2PulleyJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2PulleyJoint*, float)* @_ZNK13b2PulleyJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2PulleyJoint*)* @_ZN13b2PulleyJoint4DumpEv to i8*), i8* bitcast (void (%class.b2PulleyJoint*)* @_ZN13b2PulleyJointD1Ev to i8*), i8* bitcast (void (%class.b2PulleyJoint*)* @_ZN13b2PulleyJointD0Ev to i8*), i8* bitcast (void (%class.b2PulleyJoint*, %struct.b2SolverData*)* @_ZN13b2PulleyJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2PulleyJoint*, %struct.b2SolverData*)* @_ZN13b2PulleyJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2PulleyJoint*, %struct.b2SolverData*)* @_ZN13b2PulleyJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str2 = private unnamed_addr constant [19 x i8] c"def->ratio != 0.0f\00", align 1
@__PRETTY_FUNCTION__._ZN13b2PulleyJointC2EPK16b2PulleyJointDef = private unnamed_addr constant [55 x i8] c"b2PulleyJoint::b2PulleyJoint(const b2PulleyJointDef *)\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"  b2PulleyJointDef jd;\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"  jd.groundAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"  jd.groundAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str9 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str10 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"  jd.lengthA = %.15lef;\0A\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"  jd.lengthB = %.15lef;\0A\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"  jd.ratio = %.15lef;\0A\00", align 1
@.str14 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS13b2PulleyJoint = constant [16 x i8] c"13b2PulleyJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI13b2PulleyJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([16 x i8]* @_ZTS13b2PulleyJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN13b2PulleyJointC1EPK16b2PulleyJointDef = alias void (%class.b2PulleyJoint*, %struct.b2PulleyJointDef*)* @_ZN13b2PulleyJointC2EPK16b2PulleyJointDef

define void @_ZN16b2PulleyJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_S4_S4_f(%struct.b2PulleyJointDef* %this, %class.b2Body* %bA, %class.b2Body* %bB, %struct.b2Vec2* %groundA, %struct.b2Vec2* %groundB, %struct.b2Vec2* %anchorA, %struct.b2Vec2* %anchorB, float %r) align 2 {
  %1 = alloca %struct.b2PulleyJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2*, align 4
  %6 = alloca %struct.b2Vec2*, align 4
  %7 = alloca %struct.b2Vec2*, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %dA = alloca %struct.b2Vec2, align 4
  %dB = alloca %struct.b2Vec2, align 4
  store %struct.b2PulleyJointDef* %this, %struct.b2PulleyJointDef** %1, align 4
  store %class.b2Body* %bA, %class.b2Body** %2, align 4
  store %class.b2Body* %bB, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %groundA, %struct.b2Vec2** %4, align 4
  store %struct.b2Vec2* %groundB, %struct.b2Vec2** %5, align 4
  store %struct.b2Vec2* %anchorA, %struct.b2Vec2** %6, align 4
  store %struct.b2Vec2* %anchorB, %struct.b2Vec2** %7, align 4
  store float %r, float* %8, align 4
  %11 = load %struct.b2PulleyJointDef** %1
  %12 = load %class.b2Body** %2, align 4
  %13 = bitcast %struct.b2PulleyJointDef* %11 to %struct.b2JointDef*
  %14 = getelementptr inbounds %struct.b2JointDef* %13, i32 0, i32 2
  store %class.b2Body* %12, %class.b2Body** %14, align 4
  %15 = load %class.b2Body** %3, align 4
  %16 = bitcast %struct.b2PulleyJointDef* %11 to %struct.b2JointDef*
  %17 = getelementptr inbounds %struct.b2JointDef* %16, i32 0, i32 3
  store %class.b2Body* %15, %class.b2Body** %17, align 4
  %18 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 1
  %19 = load %struct.b2Vec2** %4
  %20 = bitcast %struct.b2Vec2* %18 to i8*
  %21 = bitcast %struct.b2Vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 2
  %23 = load %struct.b2Vec2** %5
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  %25 = bitcast %struct.b2Vec2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 8, i32 4, i1 false)
  %26 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 3
  %27 = bitcast %struct.b2PulleyJointDef* %11 to %struct.b2JointDef*
  %28 = getelementptr inbounds %struct.b2JointDef* %27, i32 0, i32 2
  %29 = load %class.b2Body** %28, align 4
  %30 = load %struct.b2Vec2** %6
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %9, %class.b2Body* %29, %struct.b2Vec2* %30)
  %31 = bitcast %struct.b2Vec2* %26 to i8*
  %32 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 4
  %34 = bitcast %struct.b2PulleyJointDef* %11 to %struct.b2JointDef*
  %35 = getelementptr inbounds %struct.b2JointDef* %34, i32 0, i32 3
  %36 = load %class.b2Body** %35, align 4
  %37 = load %struct.b2Vec2** %7
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %10, %class.b2Body* %36, %struct.b2Vec2* %37)
  %38 = bitcast %struct.b2Vec2* %33 to i8*
  %39 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %39, i32 8, i32 4, i1 false)
  %40 = load %struct.b2Vec2** %6
  %41 = load %struct.b2Vec2** %4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dA, %struct.b2Vec2* %40, %struct.b2Vec2* %41)
  %42 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %dA)
  %43 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 5
  store float %42, float* %43, align 4
  %44 = load %struct.b2Vec2** %7
  %45 = load %struct.b2Vec2** %5
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dB, %struct.b2Vec2* %44, %struct.b2Vec2* %45)
  %46 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %dB)
  %47 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 6
  store float %46, float* %47, align 4
  %48 = load float* %8, align 4
  %49 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 7
  store float %48, float* %49, align 4
  %50 = getelementptr inbounds %struct.b2PulleyJointDef* %11, i32 0, i32 7
  %51 = load float* %50, align 4
  %52 = fcmp ogt float %51, 0x3E80000000000000
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %0
  br label %56

; <label>:54                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([127 x i8]* @__PRETTY_FUNCTION__._ZN16b2PulleyJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_S4_S4_f, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %56

; <label>:56                                      ; preds = %55, %53
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define void @_ZN13b2PulleyJointC2EPK16b2PulleyJointDef(%class.b2PulleyJoint* %this, %struct.b2PulleyJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %2 = alloca %struct.b2PulleyJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store %struct.b2PulleyJointDef* %def, %struct.b2PulleyJointDef** %2, align 4
  %5 = load %class.b2PulleyJoint** %1
  %6 = bitcast %class.b2PulleyJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2PulleyJointDef** %2, align 4
  %8 = bitcast %struct.b2PulleyJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2PulleyJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV13b2PulleyJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %64

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %64

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 5
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %14)
          to label %15 unwind label %64

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 6
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %64

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %64

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 13
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %64

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 14
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %64

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 15
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %24)
          to label %25 unwind label %64

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 16
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %26)
          to label %27 unwind label %64

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 17
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %28)
          to label %29 unwind label %64

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 1
  %31 = load %struct.b2PulleyJointDef** %2, align 4
  %32 = getelementptr inbounds %struct.b2PulleyJointDef* %31, i32 0, i32 1
  %33 = bitcast %struct.b2Vec2* %30 to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 2
  %36 = load %struct.b2PulleyJointDef** %2, align 4
  %37 = getelementptr inbounds %struct.b2PulleyJointDef* %36, i32 0, i32 2
  %38 = bitcast %struct.b2Vec2* %35 to i8*
  %39 = bitcast %struct.b2Vec2* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %39, i32 8, i32 4, i1 false)
  %40 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 5
  %41 = load %struct.b2PulleyJointDef** %2, align 4
  %42 = getelementptr inbounds %struct.b2PulleyJointDef* %41, i32 0, i32 3
  %43 = bitcast %struct.b2Vec2* %40 to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  %45 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 6
  %46 = load %struct.b2PulleyJointDef** %2, align 4
  %47 = getelementptr inbounds %struct.b2PulleyJointDef* %46, i32 0, i32 4
  %48 = bitcast %struct.b2Vec2* %45 to i8*
  %49 = bitcast %struct.b2Vec2* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  %50 = load %struct.b2PulleyJointDef** %2, align 4
  %51 = getelementptr inbounds %struct.b2PulleyJointDef* %50, i32 0, i32 5
  %52 = load float* %51, align 4
  %53 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 3
  store float %52, float* %53, align 4
  %54 = load %struct.b2PulleyJointDef** %2, align 4
  %55 = getelementptr inbounds %struct.b2PulleyJointDef* %54, i32 0, i32 6
  %56 = load float* %55, align 4
  %57 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 4
  store float %56, float* %57, align 4
  %58 = load %struct.b2PulleyJointDef** %2, align 4
  %59 = getelementptr inbounds %struct.b2PulleyJointDef* %58, i32 0, i32 7
  %60 = load float* %59, align 4
  %61 = fcmp une float %60, 0.000000e+00
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %29
  br label %70

; <label>:63                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 65, i8* getelementptr inbounds ([55 x i8]* @__PRETTY_FUNCTION__._ZN13b2PulleyJointC2EPK16b2PulleyJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:64                                      ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11, %0
  %65 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  store i8* %66, i8** %3
  %67 = extractvalue { i8*, i32 } %65, 1
  store i32 %67, i32* %4
  %68 = bitcast %class.b2PulleyJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %68)
          to label %87 unwind label %94
                                                  ; No predecessors!
  br label %70

; <label>:70                                      ; preds = %69, %62
  %71 = load %struct.b2PulleyJointDef** %2, align 4
  %72 = getelementptr inbounds %struct.b2PulleyJointDef* %71, i32 0, i32 7
  %73 = load float* %72, align 4
  %74 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 8
  store float %73, float* %74, align 4
  %75 = load %struct.b2PulleyJointDef** %2, align 4
  %76 = getelementptr inbounds %struct.b2PulleyJointDef* %75, i32 0, i32 5
  %77 = load float* %76, align 4
  %78 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 8
  %79 = load float* %78, align 4
  %80 = load %struct.b2PulleyJointDef** %2, align 4
  %81 = getelementptr inbounds %struct.b2PulleyJointDef* %80, i32 0, i32 6
  %82 = load float* %81, align 4
  %83 = fmul float %79, %82
  %84 = fadd float %77, %83
  %85 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 7
  store float %84, float* %85, align 4
  %86 = getelementptr inbounds %class.b2PulleyJoint* %5, i32 0, i32 9
  store float 0.000000e+00, float* %86, align 4
  ret void

; <label>:87                                      ; preds = %64
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8** %3
  %90 = load i8** %3
  %91 = load i32* %4
  %92 = insertvalue { i8*, i32 } undef, i8* %90, 0
  %93 = insertvalue { i8*, i32 } %92, i32 %91, 1
  resume { i8*, i32 } %93

; <label>:94                                      ; preds = %64
  %95 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN13b2PulleyJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2PulleyJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
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
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %lengthA = alloca float, align 4
  %lengthB = alloca float, align 4
  %ruA = alloca float, align 4
  %ruB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %PA = alloca %struct.b2Vec2, align 4
  %PB = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %13 = load %class.b2PulleyJoint** %1
  %14 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 6
  %16 = load %class.b2Body** %15, align 4
  %17 = getelementptr inbounds %class.b2Body* %16, i32 0, i32 2
  %18 = load i32* %17, align 4
  %19 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  store i32 %18, i32* %19, align 4
  %20 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %21 = getelementptr inbounds %class.b2Joint* %20, i32 0, i32 7
  %22 = load %class.b2Body** %21, align 4
  %23 = getelementptr inbounds %class.b2Body* %22, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 16
  %27 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %28 = getelementptr inbounds %class.b2Joint* %27, i32 0, i32 6
  %29 = load %class.b2Body** %28, align 4
  %30 = getelementptr inbounds %class.b2Body* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.b2Sweep* %30, i32 0, i32 0
  %32 = bitcast %struct.b2Vec2* %26 to i8*
  %33 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  %34 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 17
  %35 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %36 = getelementptr inbounds %class.b2Joint* %35, i32 0, i32 7
  %37 = load %class.b2Body** %36, align 4
  %38 = getelementptr inbounds %class.b2Body* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.b2Sweep* %38, i32 0, i32 0
  %40 = bitcast %struct.b2Vec2* %34 to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %43 = getelementptr inbounds %class.b2Joint* %42, i32 0, i32 6
  %44 = load %class.b2Body** %43, align 4
  %45 = getelementptr inbounds %class.b2Body* %44, i32 0, i32 17
  %46 = load float* %45, align 4
  %47 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 18
  store float %46, float* %47, align 4
  %48 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %49 = getelementptr inbounds %class.b2Joint* %48, i32 0, i32 7
  %50 = load %class.b2Body** %49, align 4
  %51 = getelementptr inbounds %class.b2Body* %50, i32 0, i32 17
  %52 = load float* %51, align 4
  %53 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 19
  store float %52, float* %53, align 4
  %54 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %55 = getelementptr inbounds %class.b2Joint* %54, i32 0, i32 6
  %56 = load %class.b2Body** %55, align 4
  %57 = getelementptr inbounds %class.b2Body* %56, i32 0, i32 19
  %58 = load float* %57, align 4
  %59 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 20
  store float %58, float* %59, align 4
  %60 = bitcast %class.b2PulleyJoint* %13 to %class.b2Joint*
  %61 = getelementptr inbounds %class.b2Joint* %60, i32 0, i32 7
  %62 = load %class.b2Body** %61, align 4
  %63 = getelementptr inbounds %class.b2Body* %62, i32 0, i32 19
  %64 = load float* %63, align 4
  %65 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 21
  store float %64, float* %65, align 4
  %66 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %67 = load i32* %66, align 4
  %68 = load %struct.b2SolverData** %2
  %69 = getelementptr inbounds %struct.b2SolverData* %68, i32 0, i32 1
  %70 = load %struct.b2Position** %69, align 4
  %71 = getelementptr inbounds %struct.b2Position* %70, i32 %67
  %72 = getelementptr inbounds %struct.b2Position* %71, i32 0, i32 0
  %73 = bitcast %struct.b2Vec2* %cA to i8*
  %74 = bitcast %struct.b2Vec2* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %73, i8* %74, i32 8, i32 4, i1 false)
  %75 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %76 = load i32* %75, align 4
  %77 = load %struct.b2SolverData** %2
  %78 = getelementptr inbounds %struct.b2SolverData* %77, i32 0, i32 1
  %79 = load %struct.b2Position** %78, align 4
  %80 = getelementptr inbounds %struct.b2Position* %79, i32 %76
  %81 = getelementptr inbounds %struct.b2Position* %80, i32 0, i32 1
  %82 = load float* %81, align 4
  store float %82, float* %aA, align 4
  %83 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %84 = load i32* %83, align 4
  %85 = load %struct.b2SolverData** %2
  %86 = getelementptr inbounds %struct.b2SolverData* %85, i32 0, i32 2
  %87 = load %struct.b2Velocity** %86, align 4
  %88 = getelementptr inbounds %struct.b2Velocity* %87, i32 %84
  %89 = getelementptr inbounds %struct.b2Velocity* %88, i32 0, i32 0
  %90 = bitcast %struct.b2Vec2* %vA to i8*
  %91 = bitcast %struct.b2Vec2* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %90, i8* %91, i32 8, i32 4, i1 false)
  %92 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %93 = load i32* %92, align 4
  %94 = load %struct.b2SolverData** %2
  %95 = getelementptr inbounds %struct.b2SolverData* %94, i32 0, i32 2
  %96 = load %struct.b2Velocity** %95, align 4
  %97 = getelementptr inbounds %struct.b2Velocity* %96, i32 %93
  %98 = getelementptr inbounds %struct.b2Velocity* %97, i32 0, i32 1
  %99 = load float* %98, align 4
  store float %99, float* %wA, align 4
  %100 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %101 = load i32* %100, align 4
  %102 = load %struct.b2SolverData** %2
  %103 = getelementptr inbounds %struct.b2SolverData* %102, i32 0, i32 1
  %104 = load %struct.b2Position** %103, align 4
  %105 = getelementptr inbounds %struct.b2Position* %104, i32 %101
  %106 = getelementptr inbounds %struct.b2Position* %105, i32 0, i32 0
  %107 = bitcast %struct.b2Vec2* %cB to i8*
  %108 = bitcast %struct.b2Vec2* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %107, i8* %108, i32 8, i32 4, i1 false)
  %109 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %110 = load i32* %109, align 4
  %111 = load %struct.b2SolverData** %2
  %112 = getelementptr inbounds %struct.b2SolverData* %111, i32 0, i32 1
  %113 = load %struct.b2Position** %112, align 4
  %114 = getelementptr inbounds %struct.b2Position* %113, i32 %110
  %115 = getelementptr inbounds %struct.b2Position* %114, i32 0, i32 1
  %116 = load float* %115, align 4
  store float %116, float* %aB, align 4
  %117 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %118 = load i32* %117, align 4
  %119 = load %struct.b2SolverData** %2
  %120 = getelementptr inbounds %struct.b2SolverData* %119, i32 0, i32 2
  %121 = load %struct.b2Velocity** %120, align 4
  %122 = getelementptr inbounds %struct.b2Velocity* %121, i32 %118
  %123 = getelementptr inbounds %struct.b2Velocity* %122, i32 0, i32 0
  %124 = bitcast %struct.b2Vec2* %vB to i8*
  %125 = bitcast %struct.b2Vec2* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %124, i8* %125, i32 8, i32 4, i1 false)
  %126 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %127 = load i32* %126, align 4
  %128 = load %struct.b2SolverData** %2
  %129 = getelementptr inbounds %struct.b2SolverData* %128, i32 0, i32 2
  %130 = load %struct.b2Velocity** %129, align 4
  %131 = getelementptr inbounds %struct.b2Velocity* %130, i32 %127
  %132 = getelementptr inbounds %struct.b2Velocity* %131, i32 0, i32 1
  %133 = load float* %132, align 4
  store float %133, float* %wB, align 4
  %134 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %134)
  %135 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %135)
  %136 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 14
  %137 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 5
  %138 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %137, %struct.b2Vec2* %138)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %139 = bitcast %struct.b2Vec2* %136 to i8*
  %140 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %139, i8* %140, i32 8, i32 4, i1 false)
  %141 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 15
  %142 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 6
  %143 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %142, %struct.b2Vec2* %143)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %144 = bitcast %struct.b2Vec2* %141 to i8*
  %145 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %144, i8* %145, i32 8, i32 4, i1 false)
  %146 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  %147 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 14
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %cA, %struct.b2Vec2* %147)
  %148 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %8, %struct.b2Vec2* %148)
  %149 = bitcast %struct.b2Vec2* %146 to i8*
  %150 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %149, i8* %150, i32 8, i32 4, i1 false)
  %151 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  %152 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 15
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %cB, %struct.b2Vec2* %152)
  %153 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %10, %struct.b2Vec2* %153)
  %154 = bitcast %struct.b2Vec2* %151 to i8*
  %155 = bitcast %struct.b2Vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %154, i8* %155, i32 8, i32 4, i1 false)
  %156 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  %157 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %156)
  store float %157, float* %lengthA, align 4
  %158 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  %159 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %158)
  store float %159, float* %lengthB, align 4
  %160 = load float* %lengthA, align 4
  %161 = fcmp ogt float %160, 0x3FA9999980000000
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %0
  %163 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  %164 = load float* %lengthA, align 4
  %165 = fdiv float 1.000000e+00, %164
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %163, float %165)
  br label %168

; <label>:166                                     ; preds = %0
  %167 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %167)
  br label %168

; <label>:168                                     ; preds = %166, %162
  %169 = load float* %lengthB, align 4
  %170 = fcmp ogt float %169, 0x3FA9999980000000
  br i1 %170, label %171, label %175

; <label>:171                                     ; preds = %168
  %172 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  %173 = load float* %lengthB, align 4
  %174 = fdiv float 1.000000e+00, %173
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %172, float %174)
  br label %177

; <label>:175                                     ; preds = %168
  %176 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %176)
  br label %177

; <label>:177                                     ; preds = %175, %171
  %178 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 14
  %179 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  %180 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %178, %struct.b2Vec2* %179)
  store float %180, float* %ruA, align 4
  %181 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 15
  %182 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  %183 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %181, %struct.b2Vec2* %182)
  store float %183, float* %ruB, align 4
  %184 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 18
  %185 = load float* %184, align 4
  %186 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 20
  %187 = load float* %186, align 4
  %188 = load float* %ruA, align 4
  %189 = fmul float %187, %188
  %190 = load float* %ruA, align 4
  %191 = fmul float %189, %190
  %192 = fadd float %185, %191
  store float %192, float* %mA, align 4
  %193 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 19
  %194 = load float* %193, align 4
  %195 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 21
  %196 = load float* %195, align 4
  %197 = load float* %ruB, align 4
  %198 = fmul float %196, %197
  %199 = load float* %ruB, align 4
  %200 = fmul float %198, %199
  %201 = fadd float %194, %200
  store float %201, float* %mB, align 4
  %202 = load float* %mA, align 4
  %203 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 8
  %204 = load float* %203, align 4
  %205 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 8
  %206 = load float* %205, align 4
  %207 = fmul float %204, %206
  %208 = load float* %mB, align 4
  %209 = fmul float %207, %208
  %210 = fadd float %202, %209
  %211 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 22
  store float %210, float* %211, align 4
  %212 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 22
  %213 = load float* %212, align 4
  %214 = fcmp ogt float %213, 0.000000e+00
  br i1 %214, label %215, label %220

; <label>:215                                     ; preds = %177
  %216 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 22
  %217 = load float* %216, align 4
  %218 = fdiv float 1.000000e+00, %217
  %219 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 22
  store float %218, float* %219, align 4
  br label %220

; <label>:220                                     ; preds = %215, %177
  %221 = load %struct.b2SolverData** %2
  %222 = getelementptr inbounds %struct.b2SolverData* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.b2TimeStep* %222, i32 0, i32 5
  %224 = load i8* %223, align 1
  %225 = trunc i8 %224 to i1
  br i1 %225, label %226, label %263

; <label>:226                                     ; preds = %220
  %227 = load %struct.b2SolverData** %2
  %228 = getelementptr inbounds %struct.b2SolverData* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.b2TimeStep* %228, i32 0, i32 2
  %230 = load float* %229, align 4
  %231 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 9
  %232 = load float* %231, align 4
  %233 = fmul float %232, %230
  store float %233, float* %231, align 4
  %234 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 9
  %235 = load float* %234, align 4
  %236 = fsub float -0.000000e+00, %235
  %237 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 12
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PA, float %236, %struct.b2Vec2* %237)
  %238 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 8
  %239 = load float* %238, align 4
  %240 = fsub float -0.000000e+00, %239
  %241 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 9
  %242 = load float* %241, align 4
  %243 = fmul float %240, %242
  %244 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 13
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PB, float %243, %struct.b2Vec2* %244)
  %245 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 18
  %246 = load float* %245, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %246, %struct.b2Vec2* %PA)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %11)
  %247 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 20
  %248 = load float* %247, align 4
  %249 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 14
  %250 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %249, %struct.b2Vec2* %PA)
  %251 = fmul float %248, %250
  %252 = load float* %wA, align 4
  %253 = fadd float %252, %251
  store float %253, float* %wA, align 4
  %254 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 19
  %255 = load float* %254, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %255, %struct.b2Vec2* %PB)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %12)
  %256 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 21
  %257 = load float* %256, align 4
  %258 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 15
  %259 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %258, %struct.b2Vec2* %PB)
  %260 = fmul float %257, %259
  %261 = load float* %wB, align 4
  %262 = fadd float %261, %260
  store float %262, float* %wB, align 4
  br label %265

; <label>:263                                     ; preds = %220
  %264 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 9
  store float 0.000000e+00, float* %264, align 4
  br label %265

; <label>:265                                     ; preds = %263, %226
  %266 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %267 = load i32* %266, align 4
  %268 = load %struct.b2SolverData** %2
  %269 = getelementptr inbounds %struct.b2SolverData* %268, i32 0, i32 2
  %270 = load %struct.b2Velocity** %269, align 4
  %271 = getelementptr inbounds %struct.b2Velocity* %270, i32 %267
  %272 = getelementptr inbounds %struct.b2Velocity* %271, i32 0, i32 0
  %273 = bitcast %struct.b2Vec2* %272 to i8*
  %274 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %273, i8* %274, i32 8, i32 4, i1 false)
  %275 = load float* %wA, align 4
  %276 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 10
  %277 = load i32* %276, align 4
  %278 = load %struct.b2SolverData** %2
  %279 = getelementptr inbounds %struct.b2SolverData* %278, i32 0, i32 2
  %280 = load %struct.b2Velocity** %279, align 4
  %281 = getelementptr inbounds %struct.b2Velocity* %280, i32 %277
  %282 = getelementptr inbounds %struct.b2Velocity* %281, i32 0, i32 1
  store float %275, float* %282, align 4
  %283 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %284 = load i32* %283, align 4
  %285 = load %struct.b2SolverData** %2
  %286 = getelementptr inbounds %struct.b2SolverData* %285, i32 0, i32 2
  %287 = load %struct.b2Velocity** %286, align 4
  %288 = getelementptr inbounds %struct.b2Velocity* %287, i32 %284
  %289 = getelementptr inbounds %struct.b2Velocity* %288, i32 0, i32 0
  %290 = bitcast %struct.b2Vec2* %289 to i8*
  %291 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %290, i8* %291, i32 8, i32 4, i1 false)
  %292 = load float* %wB, align 4
  %293 = getelementptr inbounds %class.b2PulleyJoint* %13, i32 0, i32 11
  %294 = load i32* %293, align 4
  %295 = load %struct.b2SolverData** %2
  %296 = getelementptr inbounds %struct.b2SolverData* %295, i32 0, i32 2
  %297 = load %struct.b2Velocity** %296, align 4
  %298 = getelementptr inbounds %struct.b2Velocity* %297, i32 %294
  %299 = getelementptr inbounds %struct.b2Velocity* %298, i32 0, i32 1
  store float %292, float* %299, align 4
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

define void @_ZN13b2PulleyJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2PulleyJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %vpA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %vpB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %Cdot = alloca float, align 4
  %impulse = alloca float, align 4
  %PA = alloca %struct.b2Vec2, align 4
  %PB = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %7 = load %class.b2PulleyJoint** %1
  %8 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 10
  %9 = load i32* %8, align 4
  %10 = load %struct.b2SolverData** %2
  %11 = getelementptr inbounds %struct.b2SolverData* %10, i32 0, i32 2
  %12 = load %struct.b2Velocity** %11, align 4
  %13 = getelementptr inbounds %struct.b2Velocity* %12, i32 %9
  %14 = getelementptr inbounds %struct.b2Velocity* %13, i32 0, i32 0
  %15 = bitcast %struct.b2Vec2* %vA to i8*
  %16 = bitcast %struct.b2Vec2* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 8, i32 4, i1 false)
  %17 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 10
  %18 = load i32* %17, align 4
  %19 = load %struct.b2SolverData** %2
  %20 = getelementptr inbounds %struct.b2SolverData* %19, i32 0, i32 2
  %21 = load %struct.b2Velocity** %20, align 4
  %22 = getelementptr inbounds %struct.b2Velocity* %21, i32 %18
  %23 = getelementptr inbounds %struct.b2Velocity* %22, i32 0, i32 1
  %24 = load float* %23, align 4
  store float %24, float* %wA, align 4
  %25 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 11
  %26 = load i32* %25, align 4
  %27 = load %struct.b2SolverData** %2
  %28 = getelementptr inbounds %struct.b2SolverData* %27, i32 0, i32 2
  %29 = load %struct.b2Velocity** %28, align 4
  %30 = getelementptr inbounds %struct.b2Velocity* %29, i32 %26
  %31 = getelementptr inbounds %struct.b2Velocity* %30, i32 0, i32 0
  %32 = bitcast %struct.b2Vec2* %vB to i8*
  %33 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  %34 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 11
  %35 = load i32* %34, align 4
  %36 = load %struct.b2SolverData** %2
  %37 = getelementptr inbounds %struct.b2SolverData* %36, i32 0, i32 2
  %38 = load %struct.b2Velocity** %37, align 4
  %39 = getelementptr inbounds %struct.b2Velocity* %38, i32 %35
  %40 = getelementptr inbounds %struct.b2Velocity* %39, i32 0, i32 1
  %41 = load float* %40, align 4
  store float %41, float* %wB, align 4
  %42 = load float* %wA, align 4
  %43 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 14
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %3, float %42, %struct.b2Vec2* %43)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpA, %struct.b2Vec2* %vA, %struct.b2Vec2* %3)
  %44 = load float* %wB, align 4
  %45 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 15
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %44, %struct.b2Vec2* %45)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpB, %struct.b2Vec2* %vB, %struct.b2Vec2* %4)
  %46 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 12
  %47 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %46, %struct.b2Vec2* %vpA)
  %48 = fsub float -0.000000e+00, %47
  %49 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 8
  %50 = load float* %49, align 4
  %51 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 13
  %52 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %51, %struct.b2Vec2* %vpB)
  %53 = fmul float %50, %52
  %54 = fsub float %48, %53
  store float %54, float* %Cdot, align 4
  %55 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 22
  %56 = load float* %55, align 4
  %57 = fsub float -0.000000e+00, %56
  %58 = load float* %Cdot, align 4
  %59 = fmul float %57, %58
  store float %59, float* %impulse, align 4
  %60 = load float* %impulse, align 4
  %61 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 9
  %62 = load float* %61, align 4
  %63 = fadd float %62, %60
  store float %63, float* %61, align 4
  %64 = load float* %impulse, align 4
  %65 = fsub float -0.000000e+00, %64
  %66 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 12
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PA, float %65, %struct.b2Vec2* %66)
  %67 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 8
  %68 = load float* %67, align 4
  %69 = fsub float -0.000000e+00, %68
  %70 = load float* %impulse, align 4
  %71 = fmul float %69, %70
  %72 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 13
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PB, float %71, %struct.b2Vec2* %72)
  %73 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 18
  %74 = load float* %73, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %74, %struct.b2Vec2* %PA)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %5)
  %75 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 20
  %76 = load float* %75, align 4
  %77 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 14
  %78 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %77, %struct.b2Vec2* %PA)
  %79 = fmul float %76, %78
  %80 = load float* %wA, align 4
  %81 = fadd float %80, %79
  store float %81, float* %wA, align 4
  %82 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 19
  %83 = load float* %82, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %83, %struct.b2Vec2* %PB)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %6)
  %84 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 21
  %85 = load float* %84, align 4
  %86 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 15
  %87 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %86, %struct.b2Vec2* %PB)
  %88 = fmul float %85, %87
  %89 = load float* %wB, align 4
  %90 = fadd float %89, %88
  store float %90, float* %wB, align 4
  %91 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 10
  %92 = load i32* %91, align 4
  %93 = load %struct.b2SolverData** %2
  %94 = getelementptr inbounds %struct.b2SolverData* %93, i32 0, i32 2
  %95 = load %struct.b2Velocity** %94, align 4
  %96 = getelementptr inbounds %struct.b2Velocity* %95, i32 %92
  %97 = getelementptr inbounds %struct.b2Velocity* %96, i32 0, i32 0
  %98 = bitcast %struct.b2Vec2* %97 to i8*
  %99 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %99, i32 8, i32 4, i1 false)
  %100 = load float* %wA, align 4
  %101 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 10
  %102 = load i32* %101, align 4
  %103 = load %struct.b2SolverData** %2
  %104 = getelementptr inbounds %struct.b2SolverData* %103, i32 0, i32 2
  %105 = load %struct.b2Velocity** %104, align 4
  %106 = getelementptr inbounds %struct.b2Velocity* %105, i32 %102
  %107 = getelementptr inbounds %struct.b2Velocity* %106, i32 0, i32 1
  store float %100, float* %107, align 4
  %108 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 11
  %109 = load i32* %108, align 4
  %110 = load %struct.b2SolverData** %2
  %111 = getelementptr inbounds %struct.b2SolverData* %110, i32 0, i32 2
  %112 = load %struct.b2Velocity** %111, align 4
  %113 = getelementptr inbounds %struct.b2Velocity* %112, i32 %109
  %114 = getelementptr inbounds %struct.b2Velocity* %113, i32 0, i32 0
  %115 = bitcast %struct.b2Vec2* %114 to i8*
  %116 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 8, i32 4, i1 false)
  %117 = load float* %wB, align 4
  %118 = getelementptr inbounds %class.b2PulleyJoint* %7, i32 0, i32 11
  %119 = load i32* %118, align 4
  %120 = load %struct.b2SolverData** %2
  %121 = getelementptr inbounds %struct.b2SolverData* %120, i32 0, i32 2
  %122 = load %struct.b2Velocity** %121, align 4
  %123 = getelementptr inbounds %struct.b2Velocity* %122, i32 %119
  %124 = getelementptr inbounds %struct.b2Velocity* %123, i32 0, i32 1
  store float %117, float* %124, align 4
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

define zeroext i1 @_ZN13b2PulleyJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2PulleyJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
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
  %uA = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %uB = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %lengthA = alloca float, align 4
  %lengthB = alloca float, align 4
  %ruA = alloca float, align 4
  %ruB = alloca float, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %mass = alloca float, align 4
  %C = alloca float, align 4
  %linearError = alloca float, align 4
  %impulse = alloca float, align 4
  %PA = alloca %struct.b2Vec2, align 4
  %PB = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2PulleyJoint** %1
  %10 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 10
  %11 = load i32* %10, align 4
  %12 = load %struct.b2SolverData** %2
  %13 = getelementptr inbounds %struct.b2SolverData* %12, i32 0, i32 1
  %14 = load %struct.b2Position** %13, align 4
  %15 = getelementptr inbounds %struct.b2Position* %14, i32 %11
  %16 = getelementptr inbounds %struct.b2Position* %15, i32 0, i32 0
  %17 = bitcast %struct.b2Vec2* %cA to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 10
  %20 = load i32* %19, align 4
  %21 = load %struct.b2SolverData** %2
  %22 = getelementptr inbounds %struct.b2SolverData* %21, i32 0, i32 1
  %23 = load %struct.b2Position** %22, align 4
  %24 = getelementptr inbounds %struct.b2Position* %23, i32 %20
  %25 = getelementptr inbounds %struct.b2Position* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  store float %26, float* %aA, align 4
  %27 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 11
  %28 = load i32* %27, align 4
  %29 = load %struct.b2SolverData** %2
  %30 = getelementptr inbounds %struct.b2SolverData* %29, i32 0, i32 1
  %31 = load %struct.b2Position** %30, align 4
  %32 = getelementptr inbounds %struct.b2Position* %31, i32 %28
  %33 = getelementptr inbounds %struct.b2Position* %32, i32 0, i32 0
  %34 = bitcast %struct.b2Vec2* %cB to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 11
  %37 = load i32* %36, align 4
  %38 = load %struct.b2SolverData** %2
  %39 = getelementptr inbounds %struct.b2SolverData* %38, i32 0, i32 1
  %40 = load %struct.b2Position** %39, align 4
  %41 = getelementptr inbounds %struct.b2Position* %40, i32 %37
  %42 = getelementptr inbounds %struct.b2Position* %41, i32 0, i32 1
  %43 = load float* %42, align 4
  store float %43, float* %aB, align 4
  %44 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %44)
  %45 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %45)
  %46 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 5
  %47 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 16
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %46, %struct.b2Vec2* %47)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %48 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 6
  %49 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 17
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %48, %struct.b2Vec2* %49)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %cA, %struct.b2Vec2* %rA)
  %50 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %uA, %struct.b2Vec2* %5, %struct.b2Vec2* %50)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  %51 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %uB, %struct.b2Vec2* %6, %struct.b2Vec2* %51)
  %52 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %uA)
  store float %52, float* %lengthA, align 4
  %53 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %uB)
  store float %53, float* %lengthB, align 4
  %54 = load float* %lengthA, align 4
  %55 = fcmp ogt float %54, 0x3FA9999980000000
  br i1 %55, label %56, label %59

; <label>:56                                      ; preds = %0
  %57 = load float* %lengthA, align 4
  %58 = fdiv float 1.000000e+00, %57
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %uA, float %58)
  br label %60

; <label>:59                                      ; preds = %0
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %uA)
  br label %60

; <label>:60                                      ; preds = %59, %56
  %61 = load float* %lengthB, align 4
  %62 = fcmp ogt float %61, 0x3FA9999980000000
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %60
  %64 = load float* %lengthB, align 4
  %65 = fdiv float 1.000000e+00, %64
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %uB, float %65)
  br label %67

; <label>:66                                      ; preds = %60
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %uB)
  br label %67

; <label>:67                                      ; preds = %66, %63
  %68 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %uA)
  store float %68, float* %ruA, align 4
  %69 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %uB)
  store float %69, float* %ruB, align 4
  %70 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 18
  %71 = load float* %70, align 4
  %72 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 20
  %73 = load float* %72, align 4
  %74 = load float* %ruA, align 4
  %75 = fmul float %73, %74
  %76 = load float* %ruA, align 4
  %77 = fmul float %75, %76
  %78 = fadd float %71, %77
  store float %78, float* %mA, align 4
  %79 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 19
  %80 = load float* %79, align 4
  %81 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 21
  %82 = load float* %81, align 4
  %83 = load float* %ruB, align 4
  %84 = fmul float %82, %83
  %85 = load float* %ruB, align 4
  %86 = fmul float %84, %85
  %87 = fadd float %80, %86
  store float %87, float* %mB, align 4
  %88 = load float* %mA, align 4
  %89 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 8
  %90 = load float* %89, align 4
  %91 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 8
  %92 = load float* %91, align 4
  %93 = fmul float %90, %92
  %94 = load float* %mB, align 4
  %95 = fmul float %93, %94
  %96 = fadd float %88, %95
  store float %96, float* %mass, align 4
  %97 = load float* %mass, align 4
  %98 = fcmp ogt float %97, 0.000000e+00
  br i1 %98, label %99, label %102

; <label>:99                                      ; preds = %67
  %100 = load float* %mass, align 4
  %101 = fdiv float 1.000000e+00, %100
  store float %101, float* %mass, align 4
  br label %102

; <label>:102                                     ; preds = %99, %67
  %103 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 7
  %104 = load float* %103, align 4
  %105 = load float* %lengthA, align 4
  %106 = fsub float %104, %105
  %107 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 8
  %108 = load float* %107, align 4
  %109 = load float* %lengthB, align 4
  %110 = fmul float %108, %109
  %111 = fsub float %106, %110
  store float %111, float* %C, align 4
  %112 = load float* %C, align 4
  %113 = call float @_Z5b2AbsIfET_S0_(float %112)
  store float %113, float* %linearError, align 4
  %114 = load float* %mass, align 4
  %115 = fsub float -0.000000e+00, %114
  %116 = load float* %C, align 4
  %117 = fmul float %115, %116
  store float %117, float* %impulse, align 4
  %118 = load float* %impulse, align 4
  %119 = fsub float -0.000000e+00, %118
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PA, float %119, %struct.b2Vec2* %uA)
  %120 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 8
  %121 = load float* %120, align 4
  %122 = fsub float -0.000000e+00, %121
  %123 = load float* %impulse, align 4
  %124 = fmul float %122, %123
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %PB, float %124, %struct.b2Vec2* %uB)
  %125 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 18
  %126 = load float* %125, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %126, %struct.b2Vec2* %PA)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %7)
  %127 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 20
  %128 = load float* %127, align 4
  %129 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %PA)
  %130 = fmul float %128, %129
  %131 = load float* %aA, align 4
  %132 = fadd float %131, %130
  store float %132, float* %aA, align 4
  %133 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 19
  %134 = load float* %133, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %134, %struct.b2Vec2* %PB)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %8)
  %135 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 21
  %136 = load float* %135, align 4
  %137 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %PB)
  %138 = fmul float %136, %137
  %139 = load float* %aB, align 4
  %140 = fadd float %139, %138
  store float %140, float* %aB, align 4
  %141 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 10
  %142 = load i32* %141, align 4
  %143 = load %struct.b2SolverData** %2
  %144 = getelementptr inbounds %struct.b2SolverData* %143, i32 0, i32 1
  %145 = load %struct.b2Position** %144, align 4
  %146 = getelementptr inbounds %struct.b2Position* %145, i32 %142
  %147 = getelementptr inbounds %struct.b2Position* %146, i32 0, i32 0
  %148 = bitcast %struct.b2Vec2* %147 to i8*
  %149 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %148, i8* %149, i32 8, i32 4, i1 false)
  %150 = load float* %aA, align 4
  %151 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 10
  %152 = load i32* %151, align 4
  %153 = load %struct.b2SolverData** %2
  %154 = getelementptr inbounds %struct.b2SolverData* %153, i32 0, i32 1
  %155 = load %struct.b2Position** %154, align 4
  %156 = getelementptr inbounds %struct.b2Position* %155, i32 %152
  %157 = getelementptr inbounds %struct.b2Position* %156, i32 0, i32 1
  store float %150, float* %157, align 4
  %158 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 11
  %159 = load i32* %158, align 4
  %160 = load %struct.b2SolverData** %2
  %161 = getelementptr inbounds %struct.b2SolverData* %160, i32 0, i32 1
  %162 = load %struct.b2Position** %161, align 4
  %163 = getelementptr inbounds %struct.b2Position* %162, i32 %159
  %164 = getelementptr inbounds %struct.b2Position* %163, i32 0, i32 0
  %165 = bitcast %struct.b2Vec2* %164 to i8*
  %166 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %165, i8* %166, i32 8, i32 4, i1 false)
  %167 = load float* %aB, align 4
  %168 = getelementptr inbounds %class.b2PulleyJoint* %9, i32 0, i32 11
  %169 = load i32* %168, align 4
  %170 = load %struct.b2SolverData** %2
  %171 = getelementptr inbounds %struct.b2SolverData* %170, i32 0, i32 1
  %172 = load %struct.b2Position** %171, align 4
  %173 = getelementptr inbounds %struct.b2Position* %172, i32 %169
  %174 = getelementptr inbounds %struct.b2Position* %173, i32 0, i32 1
  store float %167, float* %174, align 4
  %175 = load float* %linearError, align 4
  %176 = fcmp olt float %175, 0x3F747AE140000000
  ret i1 %176
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

define void @_ZNK13b2PulleyJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PulleyJoint* %this) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 5
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

define void @_ZNK13b2PulleyJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PulleyJoint* %this) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 6
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK13b2PulleyJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2PulleyJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %2 = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2PulleyJoint** %1
  %4 = getelementptr inbounds %class.b2PulleyJoint* %3, i32 0, i32 9
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %class.b2PulleyJoint* %3, i32 0, i32 13
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %5, %struct.b2Vec2* %6)
  %7 = load float* %2, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %P)
  ret void
}

define float @_ZNK13b2PulleyJoint17GetReactionTorqueEf(%class.b2PulleyJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2PulleyJoint** %1
  ret float 0.000000e+00
}

define void @_ZNK13b2PulleyJoint16GetGroundAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PulleyJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 1
  %4 = bitcast %struct.b2Vec2* %agg.result to i8*
  %5 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 8, i32 4, i1 false)
  ret void
}

define void @_ZNK13b2PulleyJoint16GetGroundAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2PulleyJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 2
  %4 = bitcast %struct.b2Vec2* %agg.result to i8*
  %5 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 8, i32 4, i1 false)
  ret void
}

define float @_ZNK13b2PulleyJoint10GetLengthAEv(%class.b2PulleyJoint* %this) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %p = alloca %struct.b2Vec2, align 4
  %s = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 5
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %p, %class.b2Body* %5, %struct.b2Vec2* %6)
  %7 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 1
  %8 = bitcast %struct.b2Vec2* %s to i8*
  %9 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p, %struct.b2Vec2* %s)
  %10 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %d)
  ret float %10
}

define float @_ZNK13b2PulleyJoint10GetLengthBEv(%class.b2PulleyJoint* %this) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %p = alloca %struct.b2Vec2, align 4
  %s = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 6
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %p, %class.b2Body* %5, %struct.b2Vec2* %6)
  %7 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 2
  %8 = bitcast %struct.b2Vec2* %s to i8*
  %9 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %p, %struct.b2Vec2* %s)
  %10 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %d)
  ret float %10
}

define float @_ZNK13b2PulleyJoint8GetRatioEv(%class.b2PulleyJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 8
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN13b2PulleyJoint4DumpEv(%class.b2PulleyJoint* %this) align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str6, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str7, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str8, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 5
  %37 = getelementptr inbounds %struct.b2Vec2* %36, i32 0, i32 0
  %38 = load float* %37, align 4
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 5
  %41 = getelementptr inbounds %struct.b2Vec2* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  %43 = fpext float %42 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str9, i32 0, i32 0), double %39, double %43)
  %44 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 6
  %45 = getelementptr inbounds %struct.b2Vec2* %44, i32 0, i32 0
  %46 = load float* %45, align 4
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 6
  %49 = getelementptr inbounds %struct.b2Vec2* %48, i32 0, i32 1
  %50 = load float* %49, align 4
  %51 = fpext float %50 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str10, i32 0, i32 0), double %47, double %51)
  %52 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 3
  %53 = load float* %52, align 4
  %54 = fpext float %53 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), double %54)
  %55 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 4
  %56 = load float* %55, align 4
  %57 = fpext float %56 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), double %57)
  %58 = getelementptr inbounds %class.b2PulleyJoint* %2, i32 0, i32 8
  %59 = load float* %58, align 4
  %60 = fpext float %59 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([23 x i8]* @.str13, i32 0, i32 0), double %60)
  %61 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
  %62 = getelementptr inbounds %class.b2Joint* %61, i32 0, i32 8
  %63 = load i32* %62, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str14, i32 0, i32 0), i32 %63)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN13b2PulleyJointD1Ev(%class.b2PulleyJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  call void @_ZN13b2PulleyJointD2Ev(%class.b2PulleyJoint* %2)
  ret void
}

define linkonce_odr void @_ZN13b2PulleyJointD0Ev(%class.b2PulleyJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %4 = load %class.b2PulleyJoint** %1
  invoke void @_ZN13b2PulleyJointD1Ev(%class.b2PulleyJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2PulleyJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2PulleyJoint* %4 to i8*
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

define linkonce_odr void @_ZN13b2PulleyJointD2Ev(%class.b2PulleyJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2PulleyJoint*, align 4
  store %class.b2PulleyJoint* %this, %class.b2PulleyJoint** %1, align 4
  %2 = load %class.b2PulleyJoint** %1
  %3 = bitcast %class.b2PulleyJoint* %2 to %class.b2Joint*
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

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

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
