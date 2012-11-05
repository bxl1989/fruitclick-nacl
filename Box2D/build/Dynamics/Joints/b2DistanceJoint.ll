; ModuleID = 'Dynamics/Joints/b2DistanceJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2DistanceJoint = type { %class.b2Joint, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
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
%struct.b2DistanceJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV15b2DistanceJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI15b2DistanceJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2DistanceJoint*)* @_ZNK15b2DistanceJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2DistanceJoint*)* @_ZNK15b2DistanceJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2DistanceJoint*, float)* @_ZNK15b2DistanceJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2DistanceJoint*, float)* @_ZNK15b2DistanceJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2DistanceJoint*)* @_ZN15b2DistanceJoint4DumpEv to i8*), i8* bitcast (void (%class.b2DistanceJoint*)* @_ZN15b2DistanceJointD1Ev to i8*), i8* bitcast (void (%class.b2DistanceJoint*)* @_ZN15b2DistanceJointD0Ev to i8*), i8* bitcast (void (%class.b2DistanceJoint*, %struct.b2SolverData*)* @_ZN15b2DistanceJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2DistanceJoint*, %struct.b2SolverData*)* @_ZN15b2DistanceJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2DistanceJoint*, %struct.b2SolverData*)* @_ZN15b2DistanceJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [26 x i8] c"  b2DistanceJointDef jd;\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"  jd.length = %.15lef;\0A\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"  jd.frequencyHz = %.15lef;\0A\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"  jd.dampingRatio = %.15lef;\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS15b2DistanceJoint = constant [18 x i8] c"15b2DistanceJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI15b2DistanceJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([18 x i8]* @_ZTS15b2DistanceJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN15b2DistanceJointC1EPK18b2DistanceJointDef = alias void (%class.b2DistanceJoint*, %struct.b2DistanceJointDef*)* @_ZN15b2DistanceJointC2EPK18b2DistanceJointDef

define void @_ZN18b2DistanceJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_(%struct.b2DistanceJointDef* %this, %class.b2Body* %b1, %class.b2Body* %b2, %struct.b2Vec2* %anchor1, %struct.b2Vec2* %anchor2) align 2 {
  %1 = alloca %struct.b2DistanceJointDef*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca %struct.b2Vec2*, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  store %struct.b2DistanceJointDef* %this, %struct.b2DistanceJointDef** %1, align 4
  store %class.b2Body* %b1, %class.b2Body** %2, align 4
  store %class.b2Body* %b2, %class.b2Body** %3, align 4
  store %struct.b2Vec2* %anchor1, %struct.b2Vec2** %4, align 4
  store %struct.b2Vec2* %anchor2, %struct.b2Vec2** %5, align 4
  %8 = load %struct.b2DistanceJointDef** %1
  %9 = load %class.b2Body** %2, align 4
  %10 = bitcast %struct.b2DistanceJointDef* %8 to %struct.b2JointDef*
  %11 = getelementptr inbounds %struct.b2JointDef* %10, i32 0, i32 2
  store %class.b2Body* %9, %class.b2Body** %11, align 4
  %12 = load %class.b2Body** %3, align 4
  %13 = bitcast %struct.b2DistanceJointDef* %8 to %struct.b2JointDef*
  %14 = getelementptr inbounds %struct.b2JointDef* %13, i32 0, i32 3
  store %class.b2Body* %12, %class.b2Body** %14, align 4
  %15 = getelementptr inbounds %struct.b2DistanceJointDef* %8, i32 0, i32 1
  %16 = bitcast %struct.b2DistanceJointDef* %8 to %struct.b2JointDef*
  %17 = getelementptr inbounds %struct.b2JointDef* %16, i32 0, i32 2
  %18 = load %class.b2Body** %17, align 4
  %19 = load %struct.b2Vec2** %4
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %6, %class.b2Body* %18, %struct.b2Vec2* %19)
  %20 = bitcast %struct.b2Vec2* %15 to i8*
  %21 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = getelementptr inbounds %struct.b2DistanceJointDef* %8, i32 0, i32 2
  %23 = bitcast %struct.b2DistanceJointDef* %8 to %struct.b2JointDef*
  %24 = getelementptr inbounds %struct.b2JointDef* %23, i32 0, i32 3
  %25 = load %class.b2Body** %24, align 4
  %26 = load %struct.b2Vec2** %5
  call void @_ZNK6b2Body13GetLocalPointERK6b2Vec2(%struct.b2Vec2* sret %7, %class.b2Body* %25, %struct.b2Vec2* %26)
  %27 = bitcast %struct.b2Vec2* %22 to i8*
  %28 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = load %struct.b2Vec2** %5
  %30 = load %struct.b2Vec2** %4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %29, %struct.b2Vec2* %30)
  %31 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %d)
  %32 = getelementptr inbounds %struct.b2DistanceJointDef* %8, i32 0, i32 3
  store float %31, float* %32, align 4
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

define void @_ZN15b2DistanceJointC2EPK18b2DistanceJointDef(%class.b2DistanceJoint* %this, %struct.b2DistanceJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  %2 = alloca %struct.b2DistanceJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  store %struct.b2DistanceJointDef* %def, %struct.b2DistanceJointDef** %2, align 4
  %5 = load %class.b2DistanceJoint** %1
  %6 = bitcast %class.b2DistanceJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2DistanceJointDef** %2, align 4
  %8 = bitcast %struct.b2DistanceJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2DistanceJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV15b2DistanceJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %49

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 5
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %49

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %14)
          to label %15 unwind label %49

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %49

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 13
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %49

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 14
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %49

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 15
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %49

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 4
  %25 = load %struct.b2DistanceJointDef** %2, align 4
  %26 = getelementptr inbounds %struct.b2DistanceJointDef* %25, i32 0, i32 1
  %27 = bitcast %struct.b2Vec2* %24 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 5
  %30 = load %struct.b2DistanceJointDef** %2, align 4
  %31 = getelementptr inbounds %struct.b2DistanceJointDef* %30, i32 0, i32 2
  %32 = bitcast %struct.b2Vec2* %29 to i8*
  %33 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  %34 = load %struct.b2DistanceJointDef** %2, align 4
  %35 = getelementptr inbounds %struct.b2DistanceJointDef* %34, i32 0, i32 3
  %36 = load float* %35, align 4
  %37 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 8
  store float %36, float* %37, align 4
  %38 = load %struct.b2DistanceJointDef** %2, align 4
  %39 = getelementptr inbounds %struct.b2DistanceJointDef* %38, i32 0, i32 4
  %40 = load float* %39, align 4
  %41 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 1
  store float %40, float* %41, align 4
  %42 = load %struct.b2DistanceJointDef** %2, align 4
  %43 = getelementptr inbounds %struct.b2DistanceJointDef* %42, i32 0, i32 5
  %44 = load float* %43, align 4
  %45 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 2
  store float %44, float* %45, align 4
  %46 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 7
  store float 0.000000e+00, float* %46, align 4
  %47 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 6
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %class.b2DistanceJoint* %5, i32 0, i32 3
  store float 0.000000e+00, float* %48, align 4
  ret void

; <label>:49                                      ; preds = %21, %19, %17, %15, %13, %11, %0
  %50 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %3
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %4
  %53 = bitcast %class.b2DistanceJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %53)
          to label %54 unwind label %61

; <label>:54                                      ; preds = %49
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i8** %3
  %57 = load i8** %3
  %58 = load i32* %4
  %59 = insertvalue { i8*, i32 } undef, i8* %57, 0
  %60 = insertvalue { i8*, i32 } %59, i32 %58, 1
  resume { i8*, i32 } %60

; <label>:61                                      ; preds = %49
  %62 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN15b2DistanceJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2DistanceJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
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
  %length = alloca float, align 4
  %crAu = alloca float, align 4
  %crBu = alloca float, align 4
  %invMass = alloca float, align 4
  %C = alloca float, align 4
  %omega = alloca float, align 4
  %d = alloca float, align 4
  %k = alloca float, align 4
  %h = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %12 = load %class.b2DistanceJoint** %1
  %13 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %14 = getelementptr inbounds %class.b2Joint* %13, i32 0, i32 6
  %15 = load %class.b2Body** %14, align 4
  %16 = getelementptr inbounds %class.b2Body* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  %18 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  store i32 %17, i32* %18, align 4
  %19 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %20 = getelementptr inbounds %class.b2Joint* %19, i32 0, i32 7
  %21 = load %class.b2Body** %20, align 4
  %22 = getelementptr inbounds %class.b2Body* %21, i32 0, i32 2
  %23 = load i32* %22, align 4
  %24 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 14
  %26 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %27 = getelementptr inbounds %class.b2Joint* %26, i32 0, i32 6
  %28 = load %class.b2Body** %27, align 4
  %29 = getelementptr inbounds %class.b2Body* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.b2Sweep* %29, i32 0, i32 0
  %31 = bitcast %struct.b2Vec2* %25 to i8*
  %32 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 15
  %34 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %35 = getelementptr inbounds %class.b2Joint* %34, i32 0, i32 7
  %36 = load %class.b2Body** %35, align 4
  %37 = getelementptr inbounds %class.b2Body* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.b2Sweep* %37, i32 0, i32 0
  %39 = bitcast %struct.b2Vec2* %33 to i8*
  %40 = bitcast %struct.b2Vec2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 8, i32 4, i1 false)
  %41 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %42 = getelementptr inbounds %class.b2Joint* %41, i32 0, i32 6
  %43 = load %class.b2Body** %42, align 4
  %44 = getelementptr inbounds %class.b2Body* %43, i32 0, i32 17
  %45 = load float* %44, align 4
  %46 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 16
  store float %45, float* %46, align 4
  %47 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %48 = getelementptr inbounds %class.b2Joint* %47, i32 0, i32 7
  %49 = load %class.b2Body** %48, align 4
  %50 = getelementptr inbounds %class.b2Body* %49, i32 0, i32 17
  %51 = load float* %50, align 4
  %52 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 17
  store float %51, float* %52, align 4
  %53 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %54 = getelementptr inbounds %class.b2Joint* %53, i32 0, i32 6
  %55 = load %class.b2Body** %54, align 4
  %56 = getelementptr inbounds %class.b2Body* %55, i32 0, i32 19
  %57 = load float* %56, align 4
  %58 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 18
  store float %57, float* %58, align 4
  %59 = bitcast %class.b2DistanceJoint* %12 to %class.b2Joint*
  %60 = getelementptr inbounds %class.b2Joint* %59, i32 0, i32 7
  %61 = load %class.b2Body** %60, align 4
  %62 = getelementptr inbounds %class.b2Body* %61, i32 0, i32 19
  %63 = load float* %62, align 4
  %64 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 19
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %66 = load i32* %65, align 4
  %67 = load %struct.b2SolverData** %2
  %68 = getelementptr inbounds %struct.b2SolverData* %67, i32 0, i32 1
  %69 = load %struct.b2Position** %68, align 4
  %70 = getelementptr inbounds %struct.b2Position* %69, i32 %66
  %71 = getelementptr inbounds %struct.b2Position* %70, i32 0, i32 0
  %72 = bitcast %struct.b2Vec2* %cA to i8*
  %73 = bitcast %struct.b2Vec2* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %73, i32 8, i32 4, i1 false)
  %74 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %75 = load i32* %74, align 4
  %76 = load %struct.b2SolverData** %2
  %77 = getelementptr inbounds %struct.b2SolverData* %76, i32 0, i32 1
  %78 = load %struct.b2Position** %77, align 4
  %79 = getelementptr inbounds %struct.b2Position* %78, i32 %75
  %80 = getelementptr inbounds %struct.b2Position* %79, i32 0, i32 1
  %81 = load float* %80, align 4
  store float %81, float* %aA, align 4
  %82 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %83 = load i32* %82, align 4
  %84 = load %struct.b2SolverData** %2
  %85 = getelementptr inbounds %struct.b2SolverData* %84, i32 0, i32 2
  %86 = load %struct.b2Velocity** %85, align 4
  %87 = getelementptr inbounds %struct.b2Velocity* %86, i32 %83
  %88 = getelementptr inbounds %struct.b2Velocity* %87, i32 0, i32 0
  %89 = bitcast %struct.b2Vec2* %vA to i8*
  %90 = bitcast %struct.b2Vec2* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 8, i32 4, i1 false)
  %91 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %92 = load i32* %91, align 4
  %93 = load %struct.b2SolverData** %2
  %94 = getelementptr inbounds %struct.b2SolverData* %93, i32 0, i32 2
  %95 = load %struct.b2Velocity** %94, align 4
  %96 = getelementptr inbounds %struct.b2Velocity* %95, i32 %92
  %97 = getelementptr inbounds %struct.b2Velocity* %96, i32 0, i32 1
  %98 = load float* %97, align 4
  store float %98, float* %wA, align 4
  %99 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %100 = load i32* %99, align 4
  %101 = load %struct.b2SolverData** %2
  %102 = getelementptr inbounds %struct.b2SolverData* %101, i32 0, i32 1
  %103 = load %struct.b2Position** %102, align 4
  %104 = getelementptr inbounds %struct.b2Position* %103, i32 %100
  %105 = getelementptr inbounds %struct.b2Position* %104, i32 0, i32 0
  %106 = bitcast %struct.b2Vec2* %cB to i8*
  %107 = bitcast %struct.b2Vec2* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %106, i8* %107, i32 8, i32 4, i1 false)
  %108 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %109 = load i32* %108, align 4
  %110 = load %struct.b2SolverData** %2
  %111 = getelementptr inbounds %struct.b2SolverData* %110, i32 0, i32 1
  %112 = load %struct.b2Position** %111, align 4
  %113 = getelementptr inbounds %struct.b2Position* %112, i32 %109
  %114 = getelementptr inbounds %struct.b2Position* %113, i32 0, i32 1
  %115 = load float* %114, align 4
  store float %115, float* %aB, align 4
  %116 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %117 = load i32* %116, align 4
  %118 = load %struct.b2SolverData** %2
  %119 = getelementptr inbounds %struct.b2SolverData* %118, i32 0, i32 2
  %120 = load %struct.b2Velocity** %119, align 4
  %121 = getelementptr inbounds %struct.b2Velocity* %120, i32 %117
  %122 = getelementptr inbounds %struct.b2Velocity* %121, i32 0, i32 0
  %123 = bitcast %struct.b2Vec2* %vB to i8*
  %124 = bitcast %struct.b2Vec2* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %123, i8* %124, i32 8, i32 4, i1 false)
  %125 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %126 = load i32* %125, align 4
  %127 = load %struct.b2SolverData** %2
  %128 = getelementptr inbounds %struct.b2SolverData* %127, i32 0, i32 2
  %129 = load %struct.b2Velocity** %128, align 4
  %130 = getelementptr inbounds %struct.b2Velocity* %129, i32 %126
  %131 = getelementptr inbounds %struct.b2Velocity* %130, i32 0, i32 1
  %132 = load float* %131, align 4
  store float %132, float* %wB, align 4
  %133 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %133)
  %134 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %134)
  %135 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 12
  %136 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 4
  %137 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 14
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %136, %struct.b2Vec2* %137)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %138 = bitcast %struct.b2Vec2* %135 to i8*
  %139 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %138, i8* %139, i32 8, i32 4, i1 false)
  %140 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 13
  %141 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 5
  %142 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 15
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %141, %struct.b2Vec2* %142)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %143 = bitcast %struct.b2Vec2* %140 to i8*
  %144 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %143, i8* %144, i32 8, i32 4, i1 false)
  %145 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  %146 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 13
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %cB, %struct.b2Vec2* %146)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %9, %struct.b2Vec2* %cA)
  %147 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 12
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %8, %struct.b2Vec2* %147)
  %148 = bitcast %struct.b2Vec2* %145 to i8*
  %149 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %148, i8* %149, i32 8, i32 4, i1 false)
  %150 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  %151 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %150)
  store float %151, float* %length, align 4
  %152 = load float* %length, align 4
  %153 = fcmp ogt float %152, 0x3F747AE140000000
  br i1 %153, label %154, label %158

; <label>:154                                     ; preds = %0
  %155 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  %156 = load float* %length, align 4
  %157 = fdiv float 1.000000e+00, %156
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %155, float %157)
  br label %160

; <label>:158                                     ; preds = %0
  %159 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %159, float 0.000000e+00, float 0.000000e+00)
  br label %160

; <label>:160                                     ; preds = %158, %154
  %161 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 12
  %162 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  %163 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %161, %struct.b2Vec2* %162)
  store float %163, float* %crAu, align 4
  %164 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 13
  %165 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  %166 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %164, %struct.b2Vec2* %165)
  store float %166, float* %crBu, align 4
  %167 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 16
  %168 = load float* %167, align 4
  %169 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 18
  %170 = load float* %169, align 4
  %171 = load float* %crAu, align 4
  %172 = fmul float %170, %171
  %173 = load float* %crAu, align 4
  %174 = fmul float %172, %173
  %175 = fadd float %168, %174
  %176 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 17
  %177 = load float* %176, align 4
  %178 = fadd float %175, %177
  %179 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 19
  %180 = load float* %179, align 4
  %181 = load float* %crBu, align 4
  %182 = fmul float %180, %181
  %183 = load float* %crBu, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %178, %184
  store float %185, float* %invMass, align 4
  %186 = load float* %invMass, align 4
  %187 = fcmp une float %186, 0.000000e+00
  br i1 %187, label %188, label %191

; <label>:188                                     ; preds = %160
  %189 = load float* %invMass, align 4
  %190 = fdiv float 1.000000e+00, %189
  br label %192

; <label>:191                                     ; preds = %160
  br label %192

; <label>:192                                     ; preds = %191, %188
  %193 = phi float [ %190, %188 ], [ 0.000000e+00, %191 ]
  %194 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 20
  store float %193, float* %194, align 4
  %195 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 1
  %196 = load float* %195, align 4
  %197 = fcmp ogt float %196, 0.000000e+00
  br i1 %197, label %198, label %265

; <label>:198                                     ; preds = %192
  %199 = load float* %length, align 4
  %200 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 8
  %201 = load float* %200, align 4
  %202 = fsub float %199, %201
  store float %202, float* %C, align 4
  %203 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 1
  %204 = load float* %203, align 4
  %205 = fmul float 0x401921FB60000000, %204
  store float %205, float* %omega, align 4
  %206 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 20
  %207 = load float* %206, align 4
  %208 = fmul float 2.000000e+00, %207
  %209 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 2
  %210 = load float* %209, align 4
  %211 = fmul float %208, %210
  %212 = load float* %omega, align 4
  %213 = fmul float %211, %212
  store float %213, float* %d, align 4
  %214 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 20
  %215 = load float* %214, align 4
  %216 = load float* %omega, align 4
  %217 = fmul float %215, %216
  %218 = load float* %omega, align 4
  %219 = fmul float %217, %218
  store float %219, float* %k, align 4
  %220 = load %struct.b2SolverData** %2
  %221 = getelementptr inbounds %struct.b2SolverData* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.b2TimeStep* %221, i32 0, i32 0
  %223 = load float* %222, align 4
  store float %223, float* %h, align 4
  %224 = load float* %h, align 4
  %225 = load float* %d, align 4
  %226 = load float* %h, align 4
  %227 = load float* %k, align 4
  %228 = fmul float %226, %227
  %229 = fadd float %225, %228
  %230 = fmul float %224, %229
  %231 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  store float %230, float* %231, align 4
  %232 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  %233 = load float* %232, align 4
  %234 = fcmp une float %233, 0.000000e+00
  br i1 %234, label %235, label %239

; <label>:235                                     ; preds = %198
  %236 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  %237 = load float* %236, align 4
  %238 = fdiv float 1.000000e+00, %237
  br label %240

; <label>:239                                     ; preds = %198
  br label %240

; <label>:240                                     ; preds = %239, %235
  %241 = phi float [ %238, %235 ], [ 0.000000e+00, %239 ]
  %242 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  store float %241, float* %242, align 4
  %243 = load float* %C, align 4
  %244 = load float* %h, align 4
  %245 = fmul float %243, %244
  %246 = load float* %k, align 4
  %247 = fmul float %245, %246
  %248 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  %249 = load float* %248, align 4
  %250 = fmul float %247, %249
  %251 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 3
  store float %250, float* %251, align 4
  %252 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  %253 = load float* %252, align 4
  %254 = load float* %invMass, align 4
  %255 = fadd float %254, %253
  store float %255, float* %invMass, align 4
  %256 = load float* %invMass, align 4
  %257 = fcmp une float %256, 0.000000e+00
  br i1 %257, label %258, label %261

; <label>:258                                     ; preds = %240
  %259 = load float* %invMass, align 4
  %260 = fdiv float 1.000000e+00, %259
  br label %262

; <label>:261                                     ; preds = %240
  br label %262

; <label>:262                                     ; preds = %261, %258
  %263 = phi float [ %260, %258 ], [ 0.000000e+00, %261 ]
  %264 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 20
  store float %263, float* %264, align 4
  br label %268

; <label>:265                                     ; preds = %192
  %266 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 6
  store float 0.000000e+00, float* %266, align 4
  %267 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 3
  store float 0.000000e+00, float* %267, align 4
  br label %268

; <label>:268                                     ; preds = %265, %262
  %269 = load %struct.b2SolverData** %2
  %270 = getelementptr inbounds %struct.b2SolverData* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.b2TimeStep* %270, i32 0, i32 5
  %272 = load i8* %271, align 1
  %273 = trunc i8 %272 to i1
  br i1 %273, label %274, label %303

; <label>:274                                     ; preds = %268
  %275 = load %struct.b2SolverData** %2
  %276 = getelementptr inbounds %struct.b2SolverData* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.b2TimeStep* %276, i32 0, i32 2
  %278 = load float* %277, align 4
  %279 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 7
  %280 = load float* %279, align 4
  %281 = fmul float %280, %278
  store float %281, float* %279, align 4
  %282 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 7
  %283 = load float* %282, align 4
  %284 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 11
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %283, %struct.b2Vec2* %284)
  %285 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 16
  %286 = load float* %285, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %286, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %10)
  %287 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 18
  %288 = load float* %287, align 4
  %289 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 12
  %290 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %289, %struct.b2Vec2* %P)
  %291 = fmul float %288, %290
  %292 = load float* %wA, align 4
  %293 = fsub float %292, %291
  store float %293, float* %wA, align 4
  %294 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 17
  %295 = load float* %294, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %295, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %11)
  %296 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 19
  %297 = load float* %296, align 4
  %298 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 13
  %299 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %298, %struct.b2Vec2* %P)
  %300 = fmul float %297, %299
  %301 = load float* %wB, align 4
  %302 = fadd float %301, %300
  store float %302, float* %wB, align 4
  br label %305

; <label>:303                                     ; preds = %268
  %304 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 7
  store float 0.000000e+00, float* %304, align 4
  br label %305

; <label>:305                                     ; preds = %303, %274
  %306 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %307 = load i32* %306, align 4
  %308 = load %struct.b2SolverData** %2
  %309 = getelementptr inbounds %struct.b2SolverData* %308, i32 0, i32 2
  %310 = load %struct.b2Velocity** %309, align 4
  %311 = getelementptr inbounds %struct.b2Velocity* %310, i32 %307
  %312 = getelementptr inbounds %struct.b2Velocity* %311, i32 0, i32 0
  %313 = bitcast %struct.b2Vec2* %312 to i8*
  %314 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %313, i8* %314, i32 8, i32 4, i1 false)
  %315 = load float* %wA, align 4
  %316 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 9
  %317 = load i32* %316, align 4
  %318 = load %struct.b2SolverData** %2
  %319 = getelementptr inbounds %struct.b2SolverData* %318, i32 0, i32 2
  %320 = load %struct.b2Velocity** %319, align 4
  %321 = getelementptr inbounds %struct.b2Velocity* %320, i32 %317
  %322 = getelementptr inbounds %struct.b2Velocity* %321, i32 0, i32 1
  store float %315, float* %322, align 4
  %323 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %324 = load i32* %323, align 4
  %325 = load %struct.b2SolverData** %2
  %326 = getelementptr inbounds %struct.b2SolverData* %325, i32 0, i32 2
  %327 = load %struct.b2Velocity** %326, align 4
  %328 = getelementptr inbounds %struct.b2Velocity* %327, i32 %324
  %329 = getelementptr inbounds %struct.b2Velocity* %328, i32 0, i32 0
  %330 = bitcast %struct.b2Vec2* %329 to i8*
  %331 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %330, i8* %331, i32 8, i32 4, i1 false)
  %332 = load float* %wB, align 4
  %333 = getelementptr inbounds %class.b2DistanceJoint* %12, i32 0, i32 10
  %334 = load i32* %333, align 4
  %335 = load %struct.b2SolverData** %2
  %336 = getelementptr inbounds %struct.b2SolverData* %335, i32 0, i32 2
  %337 = load %struct.b2Velocity** %336, align 4
  %338 = getelementptr inbounds %struct.b2Velocity* %337, i32 %334
  %339 = getelementptr inbounds %struct.b2Velocity* %338, i32 0, i32 1
  store float %332, float* %339, align 4
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

define void @_ZN15b2DistanceJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2DistanceJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
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
  %5 = alloca %struct.b2Vec2, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %8 = load %class.b2DistanceJoint** %1
  %9 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 9
  %10 = load i32* %9, align 4
  %11 = load %struct.b2SolverData** %2
  %12 = getelementptr inbounds %struct.b2SolverData* %11, i32 0, i32 2
  %13 = load %struct.b2Velocity** %12, align 4
  %14 = getelementptr inbounds %struct.b2Velocity* %13, i32 %10
  %15 = getelementptr inbounds %struct.b2Velocity* %14, i32 0, i32 0
  %16 = bitcast %struct.b2Vec2* %vA to i8*
  %17 = bitcast %struct.b2Vec2* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %18 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 9
  %19 = load i32* %18, align 4
  %20 = load %struct.b2SolverData** %2
  %21 = getelementptr inbounds %struct.b2SolverData* %20, i32 0, i32 2
  %22 = load %struct.b2Velocity** %21, align 4
  %23 = getelementptr inbounds %struct.b2Velocity* %22, i32 %19
  %24 = getelementptr inbounds %struct.b2Velocity* %23, i32 0, i32 1
  %25 = load float* %24, align 4
  store float %25, float* %wA, align 4
  %26 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 10
  %27 = load i32* %26, align 4
  %28 = load %struct.b2SolverData** %2
  %29 = getelementptr inbounds %struct.b2SolverData* %28, i32 0, i32 2
  %30 = load %struct.b2Velocity** %29, align 4
  %31 = getelementptr inbounds %struct.b2Velocity* %30, i32 %27
  %32 = getelementptr inbounds %struct.b2Velocity* %31, i32 0, i32 0
  %33 = bitcast %struct.b2Vec2* %vB to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 10
  %36 = load i32* %35, align 4
  %37 = load %struct.b2SolverData** %2
  %38 = getelementptr inbounds %struct.b2SolverData* %37, i32 0, i32 2
  %39 = load %struct.b2Velocity** %38, align 4
  %40 = getelementptr inbounds %struct.b2Velocity* %39, i32 %36
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  store float %42, float* %wB, align 4
  %43 = load float* %wA, align 4
  %44 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 12
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %3, float %43, %struct.b2Vec2* %44)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpA, %struct.b2Vec2* %vA, %struct.b2Vec2* %3)
  %45 = load float* %wB, align 4
  %46 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 13
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %45, %struct.b2Vec2* %46)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpB, %struct.b2Vec2* %vB, %struct.b2Vec2* %4)
  %47 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 11
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %vpB, %struct.b2Vec2* %vpA)
  %48 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %47, %struct.b2Vec2* %5)
  store float %48, float* %Cdot, align 4
  %49 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 20
  %50 = load float* %49, align 4
  %51 = fsub float -0.000000e+00, %50
  %52 = load float* %Cdot, align 4
  %53 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 3
  %54 = load float* %53, align 4
  %55 = fadd float %52, %54
  %56 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 6
  %57 = load float* %56, align 4
  %58 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 7
  %59 = load float* %58, align 4
  %60 = fmul float %57, %59
  %61 = fadd float %55, %60
  %62 = fmul float %51, %61
  store float %62, float* %impulse, align 4
  %63 = load float* %impulse, align 4
  %64 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 7
  %65 = load float* %64, align 4
  %66 = fadd float %65, %63
  store float %66, float* %64, align 4
  %67 = load float* %impulse, align 4
  %68 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 11
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %67, %struct.b2Vec2* %68)
  %69 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 16
  %70 = load float* %69, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %70, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %6)
  %71 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 18
  %72 = load float* %71, align 4
  %73 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 12
  %74 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %73, %struct.b2Vec2* %P)
  %75 = fmul float %72, %74
  %76 = load float* %wA, align 4
  %77 = fsub float %76, %75
  store float %77, float* %wA, align 4
  %78 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 17
  %79 = load float* %78, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %79, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %7)
  %80 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 19
  %81 = load float* %80, align 4
  %82 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 13
  %83 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %82, %struct.b2Vec2* %P)
  %84 = fmul float %81, %83
  %85 = load float* %wB, align 4
  %86 = fadd float %85, %84
  store float %86, float* %wB, align 4
  %87 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 9
  %88 = load i32* %87, align 4
  %89 = load %struct.b2SolverData** %2
  %90 = getelementptr inbounds %struct.b2SolverData* %89, i32 0, i32 2
  %91 = load %struct.b2Velocity** %90, align 4
  %92 = getelementptr inbounds %struct.b2Velocity* %91, i32 %88
  %93 = getelementptr inbounds %struct.b2Velocity* %92, i32 0, i32 0
  %94 = bitcast %struct.b2Vec2* %93 to i8*
  %95 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %95, i32 8, i32 4, i1 false)
  %96 = load float* %wA, align 4
  %97 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 9
  %98 = load i32* %97, align 4
  %99 = load %struct.b2SolverData** %2
  %100 = getelementptr inbounds %struct.b2SolverData* %99, i32 0, i32 2
  %101 = load %struct.b2Velocity** %100, align 4
  %102 = getelementptr inbounds %struct.b2Velocity* %101, i32 %98
  %103 = getelementptr inbounds %struct.b2Velocity* %102, i32 0, i32 1
  store float %96, float* %103, align 4
  %104 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 10
  %105 = load i32* %104, align 4
  %106 = load %struct.b2SolverData** %2
  %107 = getelementptr inbounds %struct.b2SolverData* %106, i32 0, i32 2
  %108 = load %struct.b2Velocity** %107, align 4
  %109 = getelementptr inbounds %struct.b2Velocity* %108, i32 %105
  %110 = getelementptr inbounds %struct.b2Velocity* %109, i32 0, i32 0
  %111 = bitcast %struct.b2Vec2* %110 to i8*
  %112 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %111, i8* %112, i32 8, i32 4, i1 false)
  %113 = load float* %wB, align 4
  %114 = getelementptr inbounds %class.b2DistanceJoint* %8, i32 0, i32 10
  %115 = load i32* %114, align 4
  %116 = load %struct.b2SolverData** %2
  %117 = getelementptr inbounds %struct.b2SolverData* %116, i32 0, i32 2
  %118 = load %struct.b2Velocity** %117, align 4
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 %115
  %120 = getelementptr inbounds %struct.b2Velocity* %119, i32 0, i32 1
  store float %113, float* %120, align 4
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

define zeroext i1 @_ZN15b2DistanceJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2DistanceJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2DistanceJoint*, align 4
  %3 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %u = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %length = alloca float, align 4
  %C = alloca float, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %2, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %3, align 4
  %10 = load %class.b2DistanceJoint** %2
  %11 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = fcmp ogt float %12, 0.000000e+00
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  store i1 true, i1* %1
  br label %122

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 9
  %17 = load i32* %16, align 4
  %18 = load %struct.b2SolverData** %3
  %19 = getelementptr inbounds %struct.b2SolverData* %18, i32 0, i32 1
  %20 = load %struct.b2Position** %19, align 4
  %21 = getelementptr inbounds %struct.b2Position* %20, i32 %17
  %22 = getelementptr inbounds %struct.b2Position* %21, i32 0, i32 0
  %23 = bitcast %struct.b2Vec2* %cA to i8*
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  %25 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 9
  %26 = load i32* %25, align 4
  %27 = load %struct.b2SolverData** %3
  %28 = getelementptr inbounds %struct.b2SolverData* %27, i32 0, i32 1
  %29 = load %struct.b2Position** %28, align 4
  %30 = getelementptr inbounds %struct.b2Position* %29, i32 %26
  %31 = getelementptr inbounds %struct.b2Position* %30, i32 0, i32 1
  %32 = load float* %31, align 4
  store float %32, float* %aA, align 4
  %33 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 10
  %34 = load i32* %33, align 4
  %35 = load %struct.b2SolverData** %3
  %36 = getelementptr inbounds %struct.b2SolverData* %35, i32 0, i32 1
  %37 = load %struct.b2Position** %36, align 4
  %38 = getelementptr inbounds %struct.b2Position* %37, i32 %34
  %39 = getelementptr inbounds %struct.b2Position* %38, i32 0, i32 0
  %40 = bitcast %struct.b2Vec2* %cB to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 10
  %43 = load i32* %42, align 4
  %44 = load %struct.b2SolverData** %3
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
  %52 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 4
  %53 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 14
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %52, %struct.b2Vec2* %53)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %54 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 5
  %55 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 15
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %54, %struct.b2Vec2* %55)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %5)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %7, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %u, %struct.b2Vec2* %6, %struct.b2Vec2* %rA)
  %56 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %u)
  store float %56, float* %length, align 4
  %57 = load float* %length, align 4
  %58 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 8
  %59 = load float* %58, align 4
  %60 = fsub float %57, %59
  store float %60, float* %C, align 4
  %61 = load float* %C, align 4
  %62 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %61, float 0xBFC99999A0000000, float 0x3FC99999A0000000)
  store float %62, float* %C, align 4
  %63 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 20
  %64 = load float* %63, align 4
  %65 = fsub float -0.000000e+00, %64
  %66 = load float* %C, align 4
  %67 = fmul float %65, %66
  store float %67, float* %impulse, align 4
  %68 = load float* %impulse, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %68, %struct.b2Vec2* %u)
  %69 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 16
  %70 = load float* %69, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %70, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %8)
  %71 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 18
  %72 = load float* %71, align 4
  %73 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P)
  %74 = fmul float %72, %73
  %75 = load float* %aA, align 4
  %76 = fsub float %75, %74
  store float %76, float* %aA, align 4
  %77 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 17
  %78 = load float* %77, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %78, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %9)
  %79 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 19
  %80 = load float* %79, align 4
  %81 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P)
  %82 = fmul float %80, %81
  %83 = load float* %aB, align 4
  %84 = fadd float %83, %82
  store float %84, float* %aB, align 4
  %85 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 9
  %86 = load i32* %85, align 4
  %87 = load %struct.b2SolverData** %3
  %88 = getelementptr inbounds %struct.b2SolverData* %87, i32 0, i32 1
  %89 = load %struct.b2Position** %88, align 4
  %90 = getelementptr inbounds %struct.b2Position* %89, i32 %86
  %91 = getelementptr inbounds %struct.b2Position* %90, i32 0, i32 0
  %92 = bitcast %struct.b2Vec2* %91 to i8*
  %93 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %93, i32 8, i32 4, i1 false)
  %94 = load float* %aA, align 4
  %95 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 9
  %96 = load i32* %95, align 4
  %97 = load %struct.b2SolverData** %3
  %98 = getelementptr inbounds %struct.b2SolverData* %97, i32 0, i32 1
  %99 = load %struct.b2Position** %98, align 4
  %100 = getelementptr inbounds %struct.b2Position* %99, i32 %96
  %101 = getelementptr inbounds %struct.b2Position* %100, i32 0, i32 1
  store float %94, float* %101, align 4
  %102 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 10
  %103 = load i32* %102, align 4
  %104 = load %struct.b2SolverData** %3
  %105 = getelementptr inbounds %struct.b2SolverData* %104, i32 0, i32 1
  %106 = load %struct.b2Position** %105, align 4
  %107 = getelementptr inbounds %struct.b2Position* %106, i32 %103
  %108 = getelementptr inbounds %struct.b2Position* %107, i32 0, i32 0
  %109 = bitcast %struct.b2Vec2* %108 to i8*
  %110 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %109, i8* %110, i32 8, i32 4, i1 false)
  %111 = load float* %aB, align 4
  %112 = getelementptr inbounds %class.b2DistanceJoint* %10, i32 0, i32 10
  %113 = load i32* %112, align 4
  %114 = load %struct.b2SolverData** %3
  %115 = getelementptr inbounds %struct.b2SolverData* %114, i32 0, i32 1
  %116 = load %struct.b2Position** %115, align 4
  %117 = getelementptr inbounds %struct.b2Position* %116, i32 %113
  %118 = getelementptr inbounds %struct.b2Position* %117, i32 0, i32 1
  store float %111, float* %118, align 4
  %119 = load float* %C, align 4
  %120 = call float @_Z5b2AbsIfET_S0_(float %119)
  %121 = fcmp olt float %120, 0x3F747AE140000000
  store i1 %121, i1* %1
  br label %122

; <label>:122                                     ; preds = %15, %14
  %123 = load i1* %1
  ret i1 %123
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

define void @_ZNK15b2DistanceJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2DistanceJoint* %this) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %2 = load %class.b2DistanceJoint** %1
  %3 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 4
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

define void @_ZNK15b2DistanceJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2DistanceJoint* %this) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %2 = load %class.b2DistanceJoint** %1
  %3 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 5
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK15b2DistanceJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2DistanceJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2DistanceJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2DistanceJoint* %3, i32 0, i32 7
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %class.b2DistanceJoint* %3, i32 0, i32 11
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %8)
  ret void
}

define float @_ZNK15b2DistanceJoint17GetReactionTorqueEf(%class.b2DistanceJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2DistanceJoint** %1
  ret float 0.000000e+00
}

define void @_ZN15b2DistanceJoint4DumpEv(%class.b2DistanceJoint* %this) align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %2 = load %class.b2DistanceJoint** %1
  %3 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  %13 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 %13)
  %14 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0), i32 %14)
  %15 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 4
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 4
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 5
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 5
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 8
  %37 = load float* %36, align 4
  %38 = fpext float %37 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0), double %38)
  %39 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 1
  %40 = load float* %39, align 4
  %41 = fpext float %40 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), double %41)
  %42 = getelementptr inbounds %class.b2DistanceJoint* %2, i32 0, i32 2
  %43 = load float* %42, align 4
  %44 = fpext float %43 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str8, i32 0, i32 0), double %44)
  %45 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
  %46 = getelementptr inbounds %class.b2Joint* %45, i32 0, i32 8
  %47 = load i32* %46, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str9, i32 0, i32 0), i32 %47)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN15b2DistanceJointD1Ev(%class.b2DistanceJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %2 = load %class.b2DistanceJoint** %1
  call void @_ZN15b2DistanceJointD2Ev(%class.b2DistanceJoint* %2)
  ret void
}

define linkonce_odr void @_ZN15b2DistanceJointD0Ev(%class.b2DistanceJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %4 = load %class.b2DistanceJoint** %1
  invoke void @_ZN15b2DistanceJointD1Ev(%class.b2DistanceJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2DistanceJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2DistanceJoint* %4 to i8*
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

define linkonce_odr void @_ZN15b2DistanceJointD2Ev(%class.b2DistanceJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2DistanceJoint*, align 4
  store %class.b2DistanceJoint* %this, %class.b2DistanceJoint** %1, align 4
  %2 = load %class.b2DistanceJoint** %1
  %3 = bitcast %class.b2DistanceJoint* %2 to %class.b2Joint*
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
