; ModuleID = 'Dynamics/Joints/b2RopeJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2RopeJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i32 }
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
%struct.b2RopeJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV11b2RopeJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11b2RopeJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RopeJoint*)* @_ZNK11b2RopeJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RopeJoint*)* @_ZNK11b2RopeJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2RopeJoint*, float)* @_ZNK11b2RopeJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2RopeJoint*, float)* @_ZNK11b2RopeJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2RopeJoint*)* @_ZN11b2RopeJoint4DumpEv to i8*), i8* bitcast (void (%class.b2RopeJoint*)* @_ZN11b2RopeJointD1Ev to i8*), i8* bitcast (void (%class.b2RopeJoint*)* @_ZN11b2RopeJointD0Ev to i8*), i8* bitcast (void (%class.b2RopeJoint*, %struct.b2SolverData*)* @_ZN11b2RopeJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2RopeJoint*, %struct.b2SolverData*)* @_ZN11b2RopeJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2RopeJoint*, %struct.b2SolverData*)* @_ZN11b2RopeJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [22 x i8] c"  b2RopeJointDef jd;\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorA.Set(%.15lef, %.15lef);\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"  jd.localAnchorB.Set(%.15lef, %.15lef);\0A\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"  jd.maxLength = %.15lef;\0A\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11b2RopeJoint = constant [14 x i8] c"11b2RopeJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI11b2RopeJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11b2RopeJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN11b2RopeJointC1EPK14b2RopeJointDef = alias void (%class.b2RopeJoint*, %struct.b2RopeJointDef*)* @_ZN11b2RopeJointC2EPK14b2RopeJointDef

define void @_ZN11b2RopeJointC2EPK14b2RopeJointDef(%class.b2RopeJoint* %this, %struct.b2RopeJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %2 = alloca %struct.b2RopeJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store %struct.b2RopeJointDef* %def, %struct.b2RopeJointDef** %2, align 4
  %5 = load %class.b2RopeJoint** %1
  %6 = bitcast %class.b2RopeJoint* %5 to %class.b2Joint*
  %7 = load %struct.b2RopeJointDef** %2, align 4
  %8 = bitcast %struct.b2RopeJointDef* %7 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %6, %struct.b2JointDef* %8)
  %9 = bitcast %class.b2RopeJoint* %5 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV11b2RopeJoint, i64 0, i64 2), i8*** %9
  %10 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %10)
          to label %11 unwind label %42

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
          to label %13 unwind label %42

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 8
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %14)
          to label %15 unwind label %42

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 9
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %16)
          to label %17 unwind label %42

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 10
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %42

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %42

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %42

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 1
  %25 = load %struct.b2RopeJointDef** %2, align 4
  %26 = getelementptr inbounds %struct.b2RopeJointDef* %25, i32 0, i32 1
  %27 = bitcast %struct.b2Vec2* %24 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 2
  %30 = load %struct.b2RopeJointDef** %2, align 4
  %31 = getelementptr inbounds %struct.b2RopeJointDef* %30, i32 0, i32 2
  %32 = bitcast %struct.b2Vec2* %29 to i8*
  %33 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  %34 = load %struct.b2RopeJointDef** %2, align 4
  %35 = getelementptr inbounds %struct.b2RopeJointDef* %34, i32 0, i32 3
  %36 = load float* %35, align 4
  %37 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 3
  store float %36, float* %37, align 4
  %38 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 17
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 5
  store float 0.000000e+00, float* %39, align 4
  %40 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 18
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %class.b2RopeJoint* %5, i32 0, i32 4
  store float 0.000000e+00, float* %41, align 4
  ret void

; <label>:42                                      ; preds = %21, %19, %17, %15, %13, %11, %0
  %43 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %3
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %4
  %46 = bitcast %class.b2RopeJoint* %5 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %46)
          to label %47 unwind label %54

; <label>:47                                      ; preds = %42
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i8** %3
  %50 = load i8** %3
  %51 = load i32* %4
  %52 = insertvalue { i8*, i32 } undef, i8* %50, 0
  %53 = insertvalue { i8*, i32 } %52, i32 %51, 1
  resume { i8*, i32 } %53

; <label>:54                                      ; preds = %42
  %55 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN11b2RopeJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2RopeJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
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
  %C = alloca float, align 4
  %crA = alloca float, align 4
  %crB = alloca float, align 4
  %invMass = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %12 = load %class.b2RopeJoint** %1
  %13 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %14 = getelementptr inbounds %class.b2Joint* %13, i32 0, i32 6
  %15 = load %class.b2Body** %14, align 4
  %16 = getelementptr inbounds %class.b2Body* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  %18 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %20 = getelementptr inbounds %class.b2Joint* %19, i32 0, i32 7
  %21 = load %class.b2Body** %20, align 4
  %22 = getelementptr inbounds %class.b2Body* %21, i32 0, i32 2
  %23 = load i32* %22, align 4
  %24 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 11
  %26 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %27 = getelementptr inbounds %class.b2Joint* %26, i32 0, i32 6
  %28 = load %class.b2Body** %27, align 4
  %29 = getelementptr inbounds %class.b2Body* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.b2Sweep* %29, i32 0, i32 0
  %31 = bitcast %struct.b2Vec2* %25 to i8*
  %32 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 12
  %34 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %35 = getelementptr inbounds %class.b2Joint* %34, i32 0, i32 7
  %36 = load %class.b2Body** %35, align 4
  %37 = getelementptr inbounds %class.b2Body* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.b2Sweep* %37, i32 0, i32 0
  %39 = bitcast %struct.b2Vec2* %33 to i8*
  %40 = bitcast %struct.b2Vec2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 8, i32 4, i1 false)
  %41 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %42 = getelementptr inbounds %class.b2Joint* %41, i32 0, i32 6
  %43 = load %class.b2Body** %42, align 4
  %44 = getelementptr inbounds %class.b2Body* %43, i32 0, i32 17
  %45 = load float* %44, align 4
  %46 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 13
  store float %45, float* %46, align 4
  %47 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %48 = getelementptr inbounds %class.b2Joint* %47, i32 0, i32 7
  %49 = load %class.b2Body** %48, align 4
  %50 = getelementptr inbounds %class.b2Body* %49, i32 0, i32 17
  %51 = load float* %50, align 4
  %52 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 14
  store float %51, float* %52, align 4
  %53 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %54 = getelementptr inbounds %class.b2Joint* %53, i32 0, i32 6
  %55 = load %class.b2Body** %54, align 4
  %56 = getelementptr inbounds %class.b2Body* %55, i32 0, i32 19
  %57 = load float* %56, align 4
  %58 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 15
  store float %57, float* %58, align 4
  %59 = bitcast %class.b2RopeJoint* %12 to %class.b2Joint*
  %60 = getelementptr inbounds %class.b2Joint* %59, i32 0, i32 7
  %61 = load %class.b2Body** %60, align 4
  %62 = getelementptr inbounds %class.b2Body* %61, i32 0, i32 19
  %63 = load float* %62, align 4
  %64 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 16
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %66 = load i32* %65, align 4
  %67 = load %struct.b2SolverData** %2
  %68 = getelementptr inbounds %struct.b2SolverData* %67, i32 0, i32 1
  %69 = load %struct.b2Position** %68, align 4
  %70 = getelementptr inbounds %struct.b2Position* %69, i32 %66
  %71 = getelementptr inbounds %struct.b2Position* %70, i32 0, i32 0
  %72 = bitcast %struct.b2Vec2* %cA to i8*
  %73 = bitcast %struct.b2Vec2* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %73, i32 8, i32 4, i1 false)
  %74 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %75 = load i32* %74, align 4
  %76 = load %struct.b2SolverData** %2
  %77 = getelementptr inbounds %struct.b2SolverData* %76, i32 0, i32 1
  %78 = load %struct.b2Position** %77, align 4
  %79 = getelementptr inbounds %struct.b2Position* %78, i32 %75
  %80 = getelementptr inbounds %struct.b2Position* %79, i32 0, i32 1
  %81 = load float* %80, align 4
  store float %81, float* %aA, align 4
  %82 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %83 = load i32* %82, align 4
  %84 = load %struct.b2SolverData** %2
  %85 = getelementptr inbounds %struct.b2SolverData* %84, i32 0, i32 2
  %86 = load %struct.b2Velocity** %85, align 4
  %87 = getelementptr inbounds %struct.b2Velocity* %86, i32 %83
  %88 = getelementptr inbounds %struct.b2Velocity* %87, i32 0, i32 0
  %89 = bitcast %struct.b2Vec2* %vA to i8*
  %90 = bitcast %struct.b2Vec2* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 8, i32 4, i1 false)
  %91 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %92 = load i32* %91, align 4
  %93 = load %struct.b2SolverData** %2
  %94 = getelementptr inbounds %struct.b2SolverData* %93, i32 0, i32 2
  %95 = load %struct.b2Velocity** %94, align 4
  %96 = getelementptr inbounds %struct.b2Velocity* %95, i32 %92
  %97 = getelementptr inbounds %struct.b2Velocity* %96, i32 0, i32 1
  %98 = load float* %97, align 4
  store float %98, float* %wA, align 4
  %99 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  %100 = load i32* %99, align 4
  %101 = load %struct.b2SolverData** %2
  %102 = getelementptr inbounds %struct.b2SolverData* %101, i32 0, i32 1
  %103 = load %struct.b2Position** %102, align 4
  %104 = getelementptr inbounds %struct.b2Position* %103, i32 %100
  %105 = getelementptr inbounds %struct.b2Position* %104, i32 0, i32 0
  %106 = bitcast %struct.b2Vec2* %cB to i8*
  %107 = bitcast %struct.b2Vec2* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %106, i8* %107, i32 8, i32 4, i1 false)
  %108 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  %109 = load i32* %108, align 4
  %110 = load %struct.b2SolverData** %2
  %111 = getelementptr inbounds %struct.b2SolverData* %110, i32 0, i32 1
  %112 = load %struct.b2Position** %111, align 4
  %113 = getelementptr inbounds %struct.b2Position* %112, i32 %109
  %114 = getelementptr inbounds %struct.b2Position* %113, i32 0, i32 1
  %115 = load float* %114, align 4
  store float %115, float* %aB, align 4
  %116 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  %117 = load i32* %116, align 4
  %118 = load %struct.b2SolverData** %2
  %119 = getelementptr inbounds %struct.b2SolverData* %118, i32 0, i32 2
  %120 = load %struct.b2Velocity** %119, align 4
  %121 = getelementptr inbounds %struct.b2Velocity* %120, i32 %117
  %122 = getelementptr inbounds %struct.b2Velocity* %121, i32 0, i32 0
  %123 = bitcast %struct.b2Vec2* %vB to i8*
  %124 = bitcast %struct.b2Vec2* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %123, i8* %124, i32 8, i32 4, i1 false)
  %125 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
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
  %135 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 9
  %136 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 1
  %137 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 11
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %136, %struct.b2Vec2* %137)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %138 = bitcast %struct.b2Vec2* %135 to i8*
  %139 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %138, i8* %139, i32 8, i32 4, i1 false)
  %140 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 10
  %141 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 2
  %142 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 12
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %141, %struct.b2Vec2* %142)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %143 = bitcast %struct.b2Vec2* %140 to i8*
  %144 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %143, i8* %144, i32 8, i32 4, i1 false)
  %145 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  %146 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 10
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %cB, %struct.b2Vec2* %146)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %9, %struct.b2Vec2* %cA)
  %147 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 9
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %8, %struct.b2Vec2* %147)
  %148 = bitcast %struct.b2Vec2* %145 to i8*
  %149 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %148, i8* %149, i32 8, i32 4, i1 false)
  %150 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  %151 = call float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %150)
  %152 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 4
  store float %151, float* %152, align 4
  %153 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 4
  %154 = load float* %153, align 4
  %155 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 3
  %156 = load float* %155, align 4
  %157 = fsub float %154, %156
  store float %157, float* %C, align 4
  %158 = load float* %C, align 4
  %159 = fcmp ogt float %158, 0.000000e+00
  br i1 %159, label %160, label %162

; <label>:160                                     ; preds = %0
  %161 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 18
  store i32 2, i32* %161, align 4
  br label %164

; <label>:162                                     ; preds = %0
  %163 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 18
  store i32 0, i32* %163, align 4
  br label %164

; <label>:164                                     ; preds = %162, %160
  %165 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 4
  %166 = load float* %165, align 4
  %167 = fcmp ogt float %166, 0x3F747AE140000000
  br i1 %167, label %168, label %173

; <label>:168                                     ; preds = %164
  %169 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  %170 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 4
  %171 = load float* %170, align 4
  %172 = fdiv float 1.000000e+00, %171
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %169, float %172)
  br label %177

; <label>:173                                     ; preds = %164
  %174 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %174)
  %175 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 17
  store float 0.000000e+00, float* %175, align 4
  %176 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 5
  store float 0.000000e+00, float* %176, align 4
  br label %283

; <label>:177                                     ; preds = %168
  %178 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 9
  %179 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  %180 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %178, %struct.b2Vec2* %179)
  store float %180, float* %crA, align 4
  %181 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 10
  %182 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  %183 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %181, %struct.b2Vec2* %182)
  store float %183, float* %crB, align 4
  %184 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 13
  %185 = load float* %184, align 4
  %186 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 15
  %187 = load float* %186, align 4
  %188 = load float* %crA, align 4
  %189 = fmul float %187, %188
  %190 = load float* %crA, align 4
  %191 = fmul float %189, %190
  %192 = fadd float %185, %191
  %193 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 14
  %194 = load float* %193, align 4
  %195 = fadd float %192, %194
  %196 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 16
  %197 = load float* %196, align 4
  %198 = load float* %crB, align 4
  %199 = fmul float %197, %198
  %200 = load float* %crB, align 4
  %201 = fmul float %199, %200
  %202 = fadd float %195, %201
  store float %202, float* %invMass, align 4
  %203 = load float* %invMass, align 4
  %204 = fcmp une float %203, 0.000000e+00
  br i1 %204, label %205, label %208

; <label>:205                                     ; preds = %177
  %206 = load float* %invMass, align 4
  %207 = fdiv float 1.000000e+00, %206
  br label %209

; <label>:208                                     ; preds = %177
  br label %209

; <label>:209                                     ; preds = %208, %205
  %210 = phi float [ %207, %205 ], [ 0.000000e+00, %208 ]
  %211 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 17
  store float %210, float* %211, align 4
  %212 = load %struct.b2SolverData** %2
  %213 = getelementptr inbounds %struct.b2SolverData* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.b2TimeStep* %213, i32 0, i32 5
  %215 = load i8* %214, align 1
  %216 = trunc i8 %215 to i1
  br i1 %216, label %217, label %246

; <label>:217                                     ; preds = %209
  %218 = load %struct.b2SolverData** %2
  %219 = getelementptr inbounds %struct.b2SolverData* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.b2TimeStep* %219, i32 0, i32 2
  %221 = load float* %220, align 4
  %222 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 5
  %223 = load float* %222, align 4
  %224 = fmul float %223, %221
  store float %224, float* %222, align 4
  %225 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 5
  %226 = load float* %225, align 4
  %227 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 8
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %226, %struct.b2Vec2* %227)
  %228 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 13
  %229 = load float* %228, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %229, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %10)
  %230 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 15
  %231 = load float* %230, align 4
  %232 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 9
  %233 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %232, %struct.b2Vec2* %P)
  %234 = fmul float %231, %233
  %235 = load float* %wA, align 4
  %236 = fsub float %235, %234
  store float %236, float* %wA, align 4
  %237 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 14
  %238 = load float* %237, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %238, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %11)
  %239 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 16
  %240 = load float* %239, align 4
  %241 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 10
  %242 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %241, %struct.b2Vec2* %P)
  %243 = fmul float %240, %242
  %244 = load float* %wB, align 4
  %245 = fadd float %244, %243
  store float %245, float* %wB, align 4
  br label %248

; <label>:246                                     ; preds = %209
  %247 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 5
  store float 0.000000e+00, float* %247, align 4
  br label %248

; <label>:248                                     ; preds = %246, %217
  %249 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %250 = load i32* %249, align 4
  %251 = load %struct.b2SolverData** %2
  %252 = getelementptr inbounds %struct.b2SolverData* %251, i32 0, i32 2
  %253 = load %struct.b2Velocity** %252, align 4
  %254 = getelementptr inbounds %struct.b2Velocity* %253, i32 %250
  %255 = getelementptr inbounds %struct.b2Velocity* %254, i32 0, i32 0
  %256 = bitcast %struct.b2Vec2* %255 to i8*
  %257 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %256, i8* %257, i32 8, i32 4, i1 false)
  %258 = load float* %wA, align 4
  %259 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 6
  %260 = load i32* %259, align 4
  %261 = load %struct.b2SolverData** %2
  %262 = getelementptr inbounds %struct.b2SolverData* %261, i32 0, i32 2
  %263 = load %struct.b2Velocity** %262, align 4
  %264 = getelementptr inbounds %struct.b2Velocity* %263, i32 %260
  %265 = getelementptr inbounds %struct.b2Velocity* %264, i32 0, i32 1
  store float %258, float* %265, align 4
  %266 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  %267 = load i32* %266, align 4
  %268 = load %struct.b2SolverData** %2
  %269 = getelementptr inbounds %struct.b2SolverData* %268, i32 0, i32 2
  %270 = load %struct.b2Velocity** %269, align 4
  %271 = getelementptr inbounds %struct.b2Velocity* %270, i32 %267
  %272 = getelementptr inbounds %struct.b2Velocity* %271, i32 0, i32 0
  %273 = bitcast %struct.b2Vec2* %272 to i8*
  %274 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %273, i8* %274, i32 8, i32 4, i1 false)
  %275 = load float* %wB, align 4
  %276 = getelementptr inbounds %class.b2RopeJoint* %12, i32 0, i32 7
  %277 = load i32* %276, align 4
  %278 = load %struct.b2SolverData** %2
  %279 = getelementptr inbounds %struct.b2SolverData* %278, i32 0, i32 2
  %280 = load %struct.b2Velocity** %279, align 4
  %281 = getelementptr inbounds %struct.b2Velocity* %280, i32 %277
  %282 = getelementptr inbounds %struct.b2Velocity* %281, i32 0, i32 1
  store float %275, float* %282, align 4
  br label %283

; <label>:283                                     ; preds = %248, %173
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

define void @_ZN11b2RopeJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2RopeJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %vpA = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %vpB = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %C = alloca float, align 4
  %Cdot = alloca float, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %impulse = alloca float, align 4
  %oldImpulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %8 = load %class.b2RopeJoint** %1
  %9 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 6
  %10 = load i32* %9, align 4
  %11 = load %struct.b2SolverData** %2
  %12 = getelementptr inbounds %struct.b2SolverData* %11, i32 0, i32 2
  %13 = load %struct.b2Velocity** %12, align 4
  %14 = getelementptr inbounds %struct.b2Velocity* %13, i32 %10
  %15 = getelementptr inbounds %struct.b2Velocity* %14, i32 0, i32 0
  %16 = bitcast %struct.b2Vec2* %vA to i8*
  %17 = bitcast %struct.b2Vec2* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %18 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 6
  %19 = load i32* %18, align 4
  %20 = load %struct.b2SolverData** %2
  %21 = getelementptr inbounds %struct.b2SolverData* %20, i32 0, i32 2
  %22 = load %struct.b2Velocity** %21, align 4
  %23 = getelementptr inbounds %struct.b2Velocity* %22, i32 %19
  %24 = getelementptr inbounds %struct.b2Velocity* %23, i32 0, i32 1
  %25 = load float* %24, align 4
  store float %25, float* %wA, align 4
  %26 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 7
  %27 = load i32* %26, align 4
  %28 = load %struct.b2SolverData** %2
  %29 = getelementptr inbounds %struct.b2SolverData* %28, i32 0, i32 2
  %30 = load %struct.b2Velocity** %29, align 4
  %31 = getelementptr inbounds %struct.b2Velocity* %30, i32 %27
  %32 = getelementptr inbounds %struct.b2Velocity* %31, i32 0, i32 0
  %33 = bitcast %struct.b2Vec2* %vB to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 7
  %36 = load i32* %35, align 4
  %37 = load %struct.b2SolverData** %2
  %38 = getelementptr inbounds %struct.b2SolverData* %37, i32 0, i32 2
  %39 = load %struct.b2Velocity** %38, align 4
  %40 = getelementptr inbounds %struct.b2Velocity* %39, i32 %36
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 0, i32 1
  %42 = load float* %41, align 4
  store float %42, float* %wB, align 4
  %43 = load float* %wA, align 4
  %44 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 9
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %3, float %43, %struct.b2Vec2* %44)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpA, %struct.b2Vec2* %vA, %struct.b2Vec2* %3)
  %45 = load float* %wB, align 4
  %46 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 10
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %45, %struct.b2Vec2* %46)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %vpB, %struct.b2Vec2* %vB, %struct.b2Vec2* %4)
  %47 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 4
  %48 = load float* %47, align 4
  %49 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 3
  %50 = load float* %49, align 4
  %51 = fsub float %48, %50
  store float %51, float* %C, align 4
  %52 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 8
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %vpB, %struct.b2Vec2* %vpA)
  %53 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %52, %struct.b2Vec2* %5)
  store float %53, float* %Cdot, align 4
  %54 = load float* %C, align 4
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %0
  %57 = load %struct.b2SolverData** %2
  %58 = getelementptr inbounds %struct.b2SolverData* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.b2TimeStep* %58, i32 0, i32 1
  %60 = load float* %59, align 4
  %61 = load float* %C, align 4
  %62 = fmul float %60, %61
  %63 = load float* %Cdot, align 4
  %64 = fadd float %63, %62
  store float %64, float* %Cdot, align 4
  br label %65

; <label>:65                                      ; preds = %56, %0
  %66 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 17
  %67 = load float* %66, align 4
  %68 = fsub float -0.000000e+00, %67
  %69 = load float* %Cdot, align 4
  %70 = fmul float %68, %69
  store float %70, float* %impulse, align 4
  %71 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 5
  %72 = load float* %71, align 4
  store float %72, float* %oldImpulse, align 4
  %73 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 5
  %74 = load float* %73, align 4
  %75 = load float* %impulse, align 4
  %76 = fadd float %74, %75
  %77 = call float @_Z5b2MinIfET_S0_S0_(float 0.000000e+00, float %76)
  %78 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 5
  store float %77, float* %78, align 4
  %79 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 5
  %80 = load float* %79, align 4
  %81 = load float* %oldImpulse, align 4
  %82 = fsub float %80, %81
  store float %82, float* %impulse, align 4
  %83 = load float* %impulse, align 4
  %84 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 8
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %83, %struct.b2Vec2* %84)
  %85 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 13
  %86 = load float* %85, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %86, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %6)
  %87 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 15
  %88 = load float* %87, align 4
  %89 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 9
  %90 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %89, %struct.b2Vec2* %P)
  %91 = fmul float %88, %90
  %92 = load float* %wA, align 4
  %93 = fsub float %92, %91
  store float %93, float* %wA, align 4
  %94 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 14
  %95 = load float* %94, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %95, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %7)
  %96 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 16
  %97 = load float* %96, align 4
  %98 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 10
  %99 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %98, %struct.b2Vec2* %P)
  %100 = fmul float %97, %99
  %101 = load float* %wB, align 4
  %102 = fadd float %101, %100
  store float %102, float* %wB, align 4
  %103 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 6
  %104 = load i32* %103, align 4
  %105 = load %struct.b2SolverData** %2
  %106 = getelementptr inbounds %struct.b2SolverData* %105, i32 0, i32 2
  %107 = load %struct.b2Velocity** %106, align 4
  %108 = getelementptr inbounds %struct.b2Velocity* %107, i32 %104
  %109 = getelementptr inbounds %struct.b2Velocity* %108, i32 0, i32 0
  %110 = bitcast %struct.b2Vec2* %109 to i8*
  %111 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %110, i8* %111, i32 8, i32 4, i1 false)
  %112 = load float* %wA, align 4
  %113 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 6
  %114 = load i32* %113, align 4
  %115 = load %struct.b2SolverData** %2
  %116 = getelementptr inbounds %struct.b2SolverData* %115, i32 0, i32 2
  %117 = load %struct.b2Velocity** %116, align 4
  %118 = getelementptr inbounds %struct.b2Velocity* %117, i32 %114
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 0, i32 1
  store float %112, float* %119, align 4
  %120 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 7
  %121 = load i32* %120, align 4
  %122 = load %struct.b2SolverData** %2
  %123 = getelementptr inbounds %struct.b2SolverData* %122, i32 0, i32 2
  %124 = load %struct.b2Velocity** %123, align 4
  %125 = getelementptr inbounds %struct.b2Velocity* %124, i32 %121
  %126 = getelementptr inbounds %struct.b2Velocity* %125, i32 0, i32 0
  %127 = bitcast %struct.b2Vec2* %126 to i8*
  %128 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %127, i8* %128, i32 8, i32 4, i1 false)
  %129 = load float* %wB, align 4
  %130 = getelementptr inbounds %class.b2RopeJoint* %8, i32 0, i32 7
  %131 = load i32* %130, align 4
  %132 = load %struct.b2SolverData** %2
  %133 = getelementptr inbounds %struct.b2SolverData* %132, i32 0, i32 2
  %134 = load %struct.b2Velocity** %133, align 4
  %135 = getelementptr inbounds %struct.b2Velocity* %134, i32 %131
  %136 = getelementptr inbounds %struct.b2Velocity* %135, i32 0, i32 1
  store float %129, float* %136, align 4
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

define zeroext i1 @_ZN11b2RopeJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2RopeJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
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
  %u = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %length = alloca float, align 4
  %C = alloca float, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2RopeJoint** %1
  %10 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 6
  %11 = load i32* %10, align 4
  %12 = load %struct.b2SolverData** %2
  %13 = getelementptr inbounds %struct.b2SolverData* %12, i32 0, i32 1
  %14 = load %struct.b2Position** %13, align 4
  %15 = getelementptr inbounds %struct.b2Position* %14, i32 %11
  %16 = getelementptr inbounds %struct.b2Position* %15, i32 0, i32 0
  %17 = bitcast %struct.b2Vec2* %cA to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 6
  %20 = load i32* %19, align 4
  %21 = load %struct.b2SolverData** %2
  %22 = getelementptr inbounds %struct.b2SolverData* %21, i32 0, i32 1
  %23 = load %struct.b2Position** %22, align 4
  %24 = getelementptr inbounds %struct.b2Position* %23, i32 %20
  %25 = getelementptr inbounds %struct.b2Position* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  store float %26, float* %aA, align 4
  %27 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 7
  %28 = load i32* %27, align 4
  %29 = load %struct.b2SolverData** %2
  %30 = getelementptr inbounds %struct.b2SolverData* %29, i32 0, i32 1
  %31 = load %struct.b2Position** %30, align 4
  %32 = getelementptr inbounds %struct.b2Position* %31, i32 %28
  %33 = getelementptr inbounds %struct.b2Position* %32, i32 0, i32 0
  %34 = bitcast %struct.b2Vec2* %cB to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 7
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
  %46 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 1
  %47 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 11
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %46, %struct.b2Vec2* %47)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %3)
  %48 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 2
  %49 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 12
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %48, %struct.b2Vec2* %49)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %4)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %rB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %u, %struct.b2Vec2* %5, %struct.b2Vec2* %rA)
  %50 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %u)
  store float %50, float* %length, align 4
  %51 = load float* %length, align 4
  %52 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 3
  %53 = load float* %52, align 4
  %54 = fsub float %51, %53
  store float %54, float* %C, align 4
  %55 = load float* %C, align 4
  %56 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %55, float 0.000000e+00, float 0x3FC99999A0000000)
  store float %56, float* %C, align 4
  %57 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 17
  %58 = load float* %57, align 4
  %59 = fsub float -0.000000e+00, %58
  %60 = load float* %C, align 4
  %61 = fmul float %59, %60
  store float %61, float* %impulse, align 4
  %62 = load float* %impulse, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %62, %struct.b2Vec2* %u)
  %63 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 13
  %64 = load float* %63, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %64, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %7)
  %65 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 15
  %66 = load float* %65, align 4
  %67 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P)
  %68 = fmul float %66, %67
  %69 = load float* %aA, align 4
  %70 = fsub float %69, %68
  store float %70, float* %aA, align 4
  %71 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 14
  %72 = load float* %71, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %72, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %8)
  %73 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 16
  %74 = load float* %73, align 4
  %75 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P)
  %76 = fmul float %74, %75
  %77 = load float* %aB, align 4
  %78 = fadd float %77, %76
  store float %78, float* %aB, align 4
  %79 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 6
  %80 = load i32* %79, align 4
  %81 = load %struct.b2SolverData** %2
  %82 = getelementptr inbounds %struct.b2SolverData* %81, i32 0, i32 1
  %83 = load %struct.b2Position** %82, align 4
  %84 = getelementptr inbounds %struct.b2Position* %83, i32 %80
  %85 = getelementptr inbounds %struct.b2Position* %84, i32 0, i32 0
  %86 = bitcast %struct.b2Vec2* %85 to i8*
  %87 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %86, i8* %87, i32 8, i32 4, i1 false)
  %88 = load float* %aA, align 4
  %89 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 6
  %90 = load i32* %89, align 4
  %91 = load %struct.b2SolverData** %2
  %92 = getelementptr inbounds %struct.b2SolverData* %91, i32 0, i32 1
  %93 = load %struct.b2Position** %92, align 4
  %94 = getelementptr inbounds %struct.b2Position* %93, i32 %90
  %95 = getelementptr inbounds %struct.b2Position* %94, i32 0, i32 1
  store float %88, float* %95, align 4
  %96 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 7
  %97 = load i32* %96, align 4
  %98 = load %struct.b2SolverData** %2
  %99 = getelementptr inbounds %struct.b2SolverData* %98, i32 0, i32 1
  %100 = load %struct.b2Position** %99, align 4
  %101 = getelementptr inbounds %struct.b2Position* %100, i32 %97
  %102 = getelementptr inbounds %struct.b2Position* %101, i32 0, i32 0
  %103 = bitcast %struct.b2Vec2* %102 to i8*
  %104 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 8, i32 4, i1 false)
  %105 = load float* %aB, align 4
  %106 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 7
  %107 = load i32* %106, align 4
  %108 = load %struct.b2SolverData** %2
  %109 = getelementptr inbounds %struct.b2SolverData* %108, i32 0, i32 1
  %110 = load %struct.b2Position** %109, align 4
  %111 = getelementptr inbounds %struct.b2Position* %110, i32 %107
  %112 = getelementptr inbounds %struct.b2Position* %111, i32 0, i32 1
  store float %105, float* %112, align 4
  %113 = load float* %length, align 4
  %114 = getelementptr inbounds %class.b2RopeJoint* %9, i32 0, i32 3
  %115 = load float* %114, align 4
  %116 = fsub float %113, %115
  %117 = fcmp olt float %116, 0x3F747AE140000000
  ret i1 %117
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

define void @_ZNK11b2RopeJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2RopeJoint* %this) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 1
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

define void @_ZNK11b2RopeJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2RopeJoint* %this) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 2
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK11b2RopeJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2RopeJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2RopeJoint** %1
  %4 = load float* %2, align 4
  %5 = getelementptr inbounds %class.b2RopeJoint* %3, i32 0, i32 5
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %class.b2RopeJoint* %3, i32 0, i32 8
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %8)
  ret void
}

define float @_ZNK11b2RopeJoint17GetReactionTorqueEf(%class.b2RopeJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2RopeJoint** %1
  ret float 0.000000e+00
}

define float @_ZNK11b2RopeJoint12GetMaxLengthEv(%class.b2RopeJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 3
  %4 = load float* %3, align 4
  ret float %4
}

define i32 @_ZNK11b2RopeJoint13GetLimitStateEv(%class.b2RopeJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 18
  %4 = load i32* %3, align 4
  ret i32 %4
}

define void @_ZN11b2RopeJoint4DumpEv(%class.b2RopeJoint* %this) align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
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
  %15 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
  %16 = getelementptr inbounds %class.b2Joint* %15, i32 0, i32 10
  %17 = load i8* %16, align 1
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0), i32 %19)
  %20 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.b2Vec2* %20, i32 0, i32 0
  %22 = load float* %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  %27 = fpext float %26 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), double %23, double %27)
  %28 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.b2Vec2* %28, i32 0, i32 0
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fpext float %34 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0), double %31, double %35)
  %36 = getelementptr inbounds %class.b2RopeJoint* %2, i32 0, i32 3
  %37 = load float* %36, align 4
  %38 = fpext float %37 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0), double %38)
  %39 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
  %40 = getelementptr inbounds %class.b2Joint* %39, i32 0, i32 8
  %41 = load i32* %40, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str7, i32 0, i32 0), i32 %41)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN11b2RopeJointD1Ev(%class.b2RopeJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  call void @_ZN11b2RopeJointD2Ev(%class.b2RopeJoint* %2)
  ret void
}

define linkonce_odr void @_ZN11b2RopeJointD0Ev(%class.b2RopeJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %4 = load %class.b2RopeJoint** %1
  invoke void @_ZN11b2RopeJointD1Ev(%class.b2RopeJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2RopeJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2RopeJoint* %4 to i8*
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

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN11b2RopeJointD2Ev(%class.b2RopeJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2RopeJoint*, align 4
  store %class.b2RopeJoint* %this, %class.b2RopeJoint** %1, align 4
  %2 = load %class.b2RopeJoint** %1
  %3 = bitcast %class.b2RopeJoint* %2 to %class.b2Joint*
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

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone

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
