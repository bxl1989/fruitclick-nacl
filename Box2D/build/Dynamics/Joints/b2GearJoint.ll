; ModuleID = 'Dynamics/Joints/b2GearJoint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2GearJoint = type { %class.b2Joint, %class.b2Joint*, %class.b2Joint*, i32, i32, %class.b2Body*, %class.b2Body*, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i32, i32, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
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
%struct.b2GearJointDef = type { %struct.b2JointDef, %class.b2Joint*, %class.b2Joint*, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%class.b2RevoluteJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec3, float, i8, float, float, i8, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float, i32 }
%struct.b2Vec3 = type { float, float, float }
%struct.b2Mat33 = type { %struct.b2Vec3, %struct.b2Vec3, %struct.b2Vec3 }
%class.b2PrismaticJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, %struct.b2Vec3, float, float, float, float, float, i8, i8, i32, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }

@_ZTV11b2GearJoint = unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11b2GearJoint to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2GearJoint*)* @_ZNK11b2GearJoint10GetAnchorAEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2GearJoint*)* @_ZNK11b2GearJoint10GetAnchorBEv to i8*), i8* bitcast (void (%struct.b2Vec2*, %class.b2GearJoint*, float)* @_ZNK11b2GearJoint16GetReactionForceEf to i8*), i8* bitcast (float (%class.b2GearJoint*, float)* @_ZNK11b2GearJoint17GetReactionTorqueEf to i8*), i8* bitcast (void (%class.b2GearJoint*)* @_ZN11b2GearJoint4DumpEv to i8*), i8* bitcast (void (%class.b2GearJoint*)* @_ZN11b2GearJointD1Ev to i8*), i8* bitcast (void (%class.b2GearJoint*)* @_ZN11b2GearJointD0Ev to i8*), i8* bitcast (void (%class.b2GearJoint*, %struct.b2SolverData*)* @_ZN11b2GearJoint23InitVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (void (%class.b2GearJoint*, %struct.b2SolverData*)* @_ZN11b2GearJoint24SolveVelocityConstraintsERK12b2SolverData to i8*), i8* bitcast (i1 (%class.b2GearJoint*, %struct.b2SolverData*)* @_ZN11b2GearJoint24SolvePositionConstraintsERK12b2SolverData to i8*)]
@.str = private unnamed_addr constant [58 x i8] c"m_typeA == e_revoluteJoint || m_typeA == e_prismaticJoint\00", align 1
@.str1 = private unnamed_addr constant [32 x i8] c"Dynamics/Joints/b2GearJoint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN11b2GearJointC2EPK14b2GearJointDef = private unnamed_addr constant [49 x i8] c"b2GearJoint::b2GearJoint(const b2GearJointDef *)\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"m_typeB == e_revoluteJoint || m_typeB == e_prismaticJoint\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"b2IsValid(ratio)\00", align 1
@__PRETTY_FUNCTION__._ZN11b2GearJoint8SetRatioEf = private unnamed_addr constant [36 x i8] c"void b2GearJoint::SetRatio(float32)\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"  b2GearJointDef jd;\0A\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"  jd.bodyA = bodies[%d];\0A\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"  jd.bodyB = bodies[%d];\0A\00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"  jd.collideConnected = bool(%d);\0A\00", align 1
@.str8 = private unnamed_addr constant [27 x i8] c"  jd.joint1 = joints[%d];\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"  jd.joint2 = joints[%d];\0A\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"  jd.ratio = %.15lef;\0A\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"  joints[%d] = m_world->CreateJoint(&jd);\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11b2GearJoint = constant [14 x i8] c"11b2GearJoint\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@_ZTI11b2GearJoint = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11b2GearJoint, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*) }

@_ZN11b2GearJointC1EPK14b2GearJointDef = alias void (%class.b2GearJoint*, %struct.b2GearJointDef*)* @_ZN11b2GearJointC2EPK14b2GearJointDef

define void @_ZN11b2GearJointC2EPK14b2GearJointDef(%class.b2GearJoint* %this, %struct.b2GearJointDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca %struct.b2GearJointDef*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %coordinateA = alloca float, align 4
  %coordinateB = alloca float, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %aA = alloca float, align 4
  %xfC = alloca %struct.b2Transform, align 4
  %aC = alloca float, align 4
  %revolute = alloca %class.b2RevoluteJoint*, align 4
  %prismatic = alloca %class.b2PrismaticJoint*, align 4
  %pC = alloca %struct.b2Vec2, align 4
  %pA = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %aB = alloca float, align 4
  %xfD = alloca %struct.b2Transform, align 4
  %aD = alloca float, align 4
  %revolute1 = alloca %class.b2RevoluteJoint*, align 4
  %prismatic2 = alloca %class.b2PrismaticJoint*, align 4
  %pD = alloca %struct.b2Vec2, align 4
  %pB = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store %struct.b2GearJointDef* %def, %struct.b2GearJointDef** %2, align 4
  %13 = load %class.b2GearJoint** %1
  %14 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %15 = load %struct.b2GearJointDef** %2, align 4
  %16 = bitcast %struct.b2GearJointDef* %15 to %struct.b2JointDef*
  call void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %14, %struct.b2JointDef* %16)
  %17 = bitcast %class.b2GearJoint* %13 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV11b2GearJoint, i64 0, i64 2), i8*** %17
  %18 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 7
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %18)
          to label %19 unwind label %69

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 8
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %20)
          to label %21 unwind label %69

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 9
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %22)
          to label %23 unwind label %69

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 10
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %24)
          to label %25 unwind label %69

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 11
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %26)
          to label %27 unwind label %69

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 12
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %28)
          to label %29 unwind label %69

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 22
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %30)
          to label %31 unwind label %69

; <label>:31                                      ; preds = %29
  %32 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 23
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %32)
          to label %33 unwind label %69

; <label>:33                                      ; preds = %31
  %34 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 24
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %34)
          to label %35 unwind label %69

; <label>:35                                      ; preds = %33
  %36 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 25
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %36)
          to label %37 unwind label %69

; <label>:37                                      ; preds = %35
  %38 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 34
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %38)
          to label %39 unwind label %69

; <label>:39                                      ; preds = %37
  %40 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 35
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %40)
          to label %41 unwind label %69

; <label>:41                                      ; preds = %39
  %42 = load %struct.b2GearJointDef** %2, align 4
  %43 = getelementptr inbounds %struct.b2GearJointDef* %42, i32 0, i32 1
  %44 = load %class.b2Joint** %43, align 4
  %45 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 1
  store %class.b2Joint* %44, %class.b2Joint** %45, align 4
  %46 = load %struct.b2GearJointDef** %2, align 4
  %47 = getelementptr inbounds %struct.b2GearJointDef* %46, i32 0, i32 2
  %48 = load %class.b2Joint** %47, align 4
  %49 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 2
  store %class.b2Joint* %48, %class.b2Joint** %49, align 4
  %50 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 1
  %51 = load %class.b2Joint** %50, align 4
  %52 = invoke i32 @_ZNK7b2Joint7GetTypeEv(%class.b2Joint* %51)
          to label %53 unwind label %69

; <label>:53                                      ; preds = %41
  %54 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 2
  %56 = load %class.b2Joint** %55, align 4
  %57 = invoke i32 @_ZNK7b2Joint7GetTypeEv(%class.b2Joint* %56)
          to label %58 unwind label %69

; <label>:58                                      ; preds = %53
  %59 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 3
  %61 = load i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %67, label %63

; <label>:63                                      ; preds = %58
  %64 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 3
  %65 = load i32* %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %63, %58
  br label %75

; <label>:68                                      ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 53, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZN11b2GearJointC2EPK14b2GearJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:69                                      ; preds = %290, %289, %288, %287, %284, %254, %227, %194, %190, %186, %185, %184, %183, %180, %150, %123, %90, %86, %53, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %0
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %3
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %4
  %73 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  invoke void @_ZN7b2JointD2Ev(%class.b2Joint* %73)
          to label %307 unwind label %314
                                                  ; No predecessors!
  br label %75

; <label>:75                                      ; preds = %74, %67
  %76 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 4
  %77 = load i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %83, label %79

; <label>:79                                      ; preds = %75
  %80 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 4
  %81 = load i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %79, %75
  br label %86

; <label>:84                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZN11b2GearJointC2EPK14b2GearJointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  %87 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 1
  %88 = load %class.b2Joint** %87, align 4
  %89 = invoke %class.b2Body* @_ZN7b2Joint8GetBodyAEv(%class.b2Joint* %88)
          to label %90 unwind label %69

; <label>:90                                      ; preds = %86
  %91 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 5
  store %class.b2Body* %89, %class.b2Body** %91, align 4
  %92 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 1
  %93 = load %class.b2Joint** %92, align 4
  %94 = invoke %class.b2Body* @_ZN7b2Joint8GetBodyBEv(%class.b2Joint* %93)
          to label %95 unwind label %69

; <label>:95                                      ; preds = %90
  %96 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %97 = getelementptr inbounds %class.b2Joint* %96, i32 0, i32 6
  store %class.b2Body* %94, %class.b2Body** %97, align 4
  %98 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %99 = getelementptr inbounds %class.b2Joint* %98, i32 0, i32 6
  %100 = load %class.b2Body** %99, align 4
  %101 = getelementptr inbounds %class.b2Body* %100, i32 0, i32 3
  %102 = bitcast %struct.b2Transform* %xfA to i8*
  %103 = bitcast %struct.b2Transform* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 16, i32 4, i1 false)
  %104 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %105 = getelementptr inbounds %class.b2Joint* %104, i32 0, i32 6
  %106 = load %class.b2Body** %105, align 4
  %107 = getelementptr inbounds %class.b2Body* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.b2Sweep* %107, i32 0, i32 4
  %109 = load float* %108, align 4
  store float %109, float* %aA, align 4
  %110 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 5
  %111 = load %class.b2Body** %110, align 4
  %112 = getelementptr inbounds %class.b2Body* %111, i32 0, i32 3
  %113 = bitcast %struct.b2Transform* %xfC to i8*
  %114 = bitcast %struct.b2Transform* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %113, i8* %114, i32 16, i32 4, i1 false)
  %115 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 5
  %116 = load %class.b2Body** %115, align 4
  %117 = getelementptr inbounds %class.b2Body* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.b2Sweep* %117, i32 0, i32 4
  %119 = load float* %118, align 4
  store float %119, float* %aC, align 4
  %120 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 3
  %121 = load i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %150

; <label>:123                                     ; preds = %95
  %124 = load %struct.b2GearJointDef** %2, align 4
  %125 = getelementptr inbounds %struct.b2GearJointDef* %124, i32 0, i32 1
  %126 = load %class.b2Joint** %125, align 4
  %127 = bitcast %class.b2Joint* %126 to %class.b2RevoluteJoint*
  store %class.b2RevoluteJoint* %127, %class.b2RevoluteJoint** %revolute, align 4
  %128 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 9
  %129 = load %class.b2RevoluteJoint** %revolute, align 4
  %130 = getelementptr inbounds %class.b2RevoluteJoint* %129, i32 0, i32 1
  %131 = bitcast %struct.b2Vec2* %128 to i8*
  %132 = bitcast %struct.b2Vec2* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %131, i8* %132, i32 8, i32 4, i1 false)
  %133 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 7
  %134 = load %class.b2RevoluteJoint** %revolute, align 4
  %135 = getelementptr inbounds %class.b2RevoluteJoint* %134, i32 0, i32 2
  %136 = bitcast %struct.b2Vec2* %133 to i8*
  %137 = bitcast %struct.b2Vec2* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %136, i8* %137, i32 8, i32 4, i1 false)
  %138 = load %class.b2RevoluteJoint** %revolute, align 4
  %139 = getelementptr inbounds %class.b2RevoluteJoint* %138, i32 0, i32 9
  %140 = load float* %139, align 4
  %141 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 13
  store float %140, float* %141, align 4
  %142 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 11
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %142)
          to label %143 unwind label %69

; <label>:143                                     ; preds = %123
  %144 = load float* %aA, align 4
  %145 = load float* %aC, align 4
  %146 = fsub float %144, %145
  %147 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 13
  %148 = load float* %147, align 4
  %149 = fsub float %146, %148
  store float %149, float* %coordinateA, align 4
  br label %190

; <label>:150                                     ; preds = %95
  %151 = load %struct.b2GearJointDef** %2, align 4
  %152 = getelementptr inbounds %struct.b2GearJointDef* %151, i32 0, i32 1
  %153 = load %class.b2Joint** %152, align 4
  %154 = bitcast %class.b2Joint* %153 to %class.b2PrismaticJoint*
  store %class.b2PrismaticJoint* %154, %class.b2PrismaticJoint** %prismatic, align 4
  %155 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 9
  %156 = load %class.b2PrismaticJoint** %prismatic, align 4
  %157 = getelementptr inbounds %class.b2PrismaticJoint* %156, i32 0, i32 1
  %158 = bitcast %struct.b2Vec2* %155 to i8*
  %159 = bitcast %struct.b2Vec2* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 8, i32 4, i1 false)
  %160 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 7
  %161 = load %class.b2PrismaticJoint** %prismatic, align 4
  %162 = getelementptr inbounds %class.b2PrismaticJoint* %161, i32 0, i32 2
  %163 = bitcast %struct.b2Vec2* %160 to i8*
  %164 = bitcast %struct.b2Vec2* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %163, i8* %164, i32 8, i32 4, i1 false)
  %165 = load %class.b2PrismaticJoint** %prismatic, align 4
  %166 = getelementptr inbounds %class.b2PrismaticJoint* %165, i32 0, i32 5
  %167 = load float* %166, align 4
  %168 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 13
  store float %167, float* %168, align 4
  %169 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 11
  %170 = load %class.b2PrismaticJoint** %prismatic, align 4
  %171 = getelementptr inbounds %class.b2PrismaticJoint* %170, i32 0, i32 3
  %172 = bitcast %struct.b2Vec2* %169 to i8*
  %173 = bitcast %struct.b2Vec2* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %172, i8* %173, i32 8, i32 4, i1 false)
  %174 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 9
  %175 = bitcast %struct.b2Vec2* %pC to i8*
  %176 = bitcast %struct.b2Vec2* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %175, i8* %176, i32 8, i32 4, i1 false)
  %177 = getelementptr inbounds %struct.b2Transform* %xfC, i32 0, i32 1
  %178 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %179 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 7
  invoke void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %6, %struct.b2Rot* %178, %struct.b2Vec2* %179)
          to label %180 unwind label %69

; <label>:180                                     ; preds = %150
  %181 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 0
  %182 = getelementptr inbounds %struct.b2Transform* %xfC, i32 0, i32 0
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %181, %struct.b2Vec2* %182)
          to label %183 unwind label %69

; <label>:183                                     ; preds = %180
  invoke void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %6, %struct.b2Vec2* %7)
          to label %184 unwind label %69

; <label>:184                                     ; preds = %183
  invoke void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %pA, %struct.b2Rot* %177, %struct.b2Vec2* %5)
          to label %185 unwind label %69

; <label>:185                                     ; preds = %184
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %pA, %struct.b2Vec2* %pC)
          to label %186 unwind label %69

; <label>:186                                     ; preds = %185
  %187 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 11
  %188 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %8, %struct.b2Vec2* %187)
          to label %189 unwind label %69

; <label>:189                                     ; preds = %186
  store float %188, float* %coordinateA, align 4
  br label %190

; <label>:190                                     ; preds = %189, %143
  %191 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 2
  %192 = load %class.b2Joint** %191, align 4
  %193 = invoke %class.b2Body* @_ZN7b2Joint8GetBodyAEv(%class.b2Joint* %192)
          to label %194 unwind label %69

; <label>:194                                     ; preds = %190
  %195 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 6
  store %class.b2Body* %193, %class.b2Body** %195, align 4
  %196 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 2
  %197 = load %class.b2Joint** %196, align 4
  %198 = invoke %class.b2Body* @_ZN7b2Joint8GetBodyBEv(%class.b2Joint* %197)
          to label %199 unwind label %69

; <label>:199                                     ; preds = %194
  %200 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %201 = getelementptr inbounds %class.b2Joint* %200, i32 0, i32 7
  store %class.b2Body* %198, %class.b2Body** %201, align 4
  %202 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %203 = getelementptr inbounds %class.b2Joint* %202, i32 0, i32 7
  %204 = load %class.b2Body** %203, align 4
  %205 = getelementptr inbounds %class.b2Body* %204, i32 0, i32 3
  %206 = bitcast %struct.b2Transform* %xfB to i8*
  %207 = bitcast %struct.b2Transform* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %206, i8* %207, i32 16, i32 4, i1 false)
  %208 = bitcast %class.b2GearJoint* %13 to %class.b2Joint*
  %209 = getelementptr inbounds %class.b2Joint* %208, i32 0, i32 7
  %210 = load %class.b2Body** %209, align 4
  %211 = getelementptr inbounds %class.b2Body* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.b2Sweep* %211, i32 0, i32 4
  %213 = load float* %212, align 4
  store float %213, float* %aB, align 4
  %214 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 6
  %215 = load %class.b2Body** %214, align 4
  %216 = getelementptr inbounds %class.b2Body* %215, i32 0, i32 3
  %217 = bitcast %struct.b2Transform* %xfD to i8*
  %218 = bitcast %struct.b2Transform* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %217, i8* %218, i32 16, i32 4, i1 false)
  %219 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 6
  %220 = load %class.b2Body** %219, align 4
  %221 = getelementptr inbounds %class.b2Body* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.b2Sweep* %221, i32 0, i32 4
  %223 = load float* %222, align 4
  store float %223, float* %aD, align 4
  %224 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 4
  %225 = load i32* %224, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %254

; <label>:227                                     ; preds = %199
  %228 = load %struct.b2GearJointDef** %2, align 4
  %229 = getelementptr inbounds %struct.b2GearJointDef* %228, i32 0, i32 2
  %230 = load %class.b2Joint** %229, align 4
  %231 = bitcast %class.b2Joint* %230 to %class.b2RevoluteJoint*
  store %class.b2RevoluteJoint* %231, %class.b2RevoluteJoint** %revolute1, align 4
  %232 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 10
  %233 = load %class.b2RevoluteJoint** %revolute1, align 4
  %234 = getelementptr inbounds %class.b2RevoluteJoint* %233, i32 0, i32 1
  %235 = bitcast %struct.b2Vec2* %232 to i8*
  %236 = bitcast %struct.b2Vec2* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %235, i8* %236, i32 8, i32 4, i1 false)
  %237 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 8
  %238 = load %class.b2RevoluteJoint** %revolute1, align 4
  %239 = getelementptr inbounds %class.b2RevoluteJoint* %238, i32 0, i32 2
  %240 = bitcast %struct.b2Vec2* %237 to i8*
  %241 = bitcast %struct.b2Vec2* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %240, i8* %241, i32 8, i32 4, i1 false)
  %242 = load %class.b2RevoluteJoint** %revolute1, align 4
  %243 = getelementptr inbounds %class.b2RevoluteJoint* %242, i32 0, i32 9
  %244 = load float* %243, align 4
  %245 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 14
  store float %244, float* %245, align 4
  %246 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 12
  invoke void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %246)
          to label %247 unwind label %69

; <label>:247                                     ; preds = %227
  %248 = load float* %aB, align 4
  %249 = load float* %aD, align 4
  %250 = fsub float %248, %249
  %251 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 14
  %252 = load float* %251, align 4
  %253 = fsub float %250, %252
  store float %253, float* %coordinateB, align 4
  br label %294

; <label>:254                                     ; preds = %199
  %255 = load %struct.b2GearJointDef** %2, align 4
  %256 = getelementptr inbounds %struct.b2GearJointDef* %255, i32 0, i32 2
  %257 = load %class.b2Joint** %256, align 4
  %258 = bitcast %class.b2Joint* %257 to %class.b2PrismaticJoint*
  store %class.b2PrismaticJoint* %258, %class.b2PrismaticJoint** %prismatic2, align 4
  %259 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 10
  %260 = load %class.b2PrismaticJoint** %prismatic2, align 4
  %261 = getelementptr inbounds %class.b2PrismaticJoint* %260, i32 0, i32 1
  %262 = bitcast %struct.b2Vec2* %259 to i8*
  %263 = bitcast %struct.b2Vec2* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %262, i8* %263, i32 8, i32 4, i1 false)
  %264 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 8
  %265 = load %class.b2PrismaticJoint** %prismatic2, align 4
  %266 = getelementptr inbounds %class.b2PrismaticJoint* %265, i32 0, i32 2
  %267 = bitcast %struct.b2Vec2* %264 to i8*
  %268 = bitcast %struct.b2Vec2* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %267, i8* %268, i32 8, i32 4, i1 false)
  %269 = load %class.b2PrismaticJoint** %prismatic2, align 4
  %270 = getelementptr inbounds %class.b2PrismaticJoint* %269, i32 0, i32 5
  %271 = load float* %270, align 4
  %272 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 14
  store float %271, float* %272, align 4
  %273 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 12
  %274 = load %class.b2PrismaticJoint** %prismatic2, align 4
  %275 = getelementptr inbounds %class.b2PrismaticJoint* %274, i32 0, i32 3
  %276 = bitcast %struct.b2Vec2* %273 to i8*
  %277 = bitcast %struct.b2Vec2* %275 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %276, i8* %277, i32 8, i32 4, i1 false)
  %278 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 10
  %279 = bitcast %struct.b2Vec2* %pD to i8*
  %280 = bitcast %struct.b2Vec2* %278 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %279, i8* %280, i32 8, i32 4, i1 false)
  %281 = getelementptr inbounds %struct.b2Transform* %xfD, i32 0, i32 1
  %282 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %283 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 8
  invoke void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %10, %struct.b2Rot* %282, %struct.b2Vec2* %283)
          to label %284 unwind label %69

; <label>:284                                     ; preds = %254
  %285 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 0
  %286 = getelementptr inbounds %struct.b2Transform* %xfD, i32 0, i32 0
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %285, %struct.b2Vec2* %286)
          to label %287 unwind label %69

; <label>:287                                     ; preds = %284
  invoke void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %10, %struct.b2Vec2* %11)
          to label %288 unwind label %69

; <label>:288                                     ; preds = %287
  invoke void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %pB, %struct.b2Rot* %281, %struct.b2Vec2* %9)
          to label %289 unwind label %69

; <label>:289                                     ; preds = %288
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %12, %struct.b2Vec2* %pB, %struct.b2Vec2* %pD)
          to label %290 unwind label %69

; <label>:290                                     ; preds = %289
  %291 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 12
  %292 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %12, %struct.b2Vec2* %291)
          to label %293 unwind label %69

; <label>:293                                     ; preds = %290
  store float %292, float* %coordinateB, align 4
  br label %294

; <label>:294                                     ; preds = %293, %247
  %295 = load %struct.b2GearJointDef** %2, align 4
  %296 = getelementptr inbounds %struct.b2GearJointDef* %295, i32 0, i32 3
  %297 = load float* %296, align 4
  %298 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 16
  store float %297, float* %298, align 4
  %299 = load float* %coordinateA, align 4
  %300 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 16
  %301 = load float* %300, align 4
  %302 = load float* %coordinateB, align 4
  %303 = fmul float %301, %302
  %304 = fadd float %299, %303
  %305 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 15
  store float %304, float* %305, align 4
  %306 = getelementptr inbounds %class.b2GearJoint* %13, i32 0, i32 17
  store float 0.000000e+00, float* %306, align 4
  ret void

; <label>:307                                     ; preds = %69
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i8** %3
  %310 = load i8** %3
  %311 = load i32* %4
  %312 = insertvalue { i8*, i32 } undef, i8* %310, 0
  %313 = insertvalue { i8*, i32 } %312, i32 %311, 1
  resume { i8*, i32 } %313

; <label>:314                                     ; preds = %69
  %315 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define linkonce_odr i32 @_ZNK7b2Joint7GetTypeEv(%class.b2Joint* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr %class.b2Body* @_ZN7b2Joint8GetBodyAEv(%class.b2Joint* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 6
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
}

define linkonce_odr %class.b2Body* @_ZN7b2Joint8GetBodyBEv(%class.b2Joint* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 7
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN11b2GearJoint23InitVelocityConstraintsERK12b2SolverData(%class.b2GearJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %cC = alloca %struct.b2Vec2, align 4
  %aC = alloca float, align 4
  %vC = alloca %struct.b2Vec2, align 4
  %wC = alloca float, align 4
  %cD = alloca %struct.b2Vec2, align 4
  %aD = alloca float, align 4
  %vD = alloca %struct.b2Vec2, align 4
  %wD = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %qC = alloca %struct.b2Rot, align 4
  %qD = alloca %struct.b2Rot, align 4
  %u = alloca %struct.b2Vec2, align 4
  %rC = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %u1 = alloca %struct.b2Vec2, align 4
  %rD = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %12 = load %class.b2GearJoint** %1
  %13 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %14 = getelementptr inbounds %class.b2Joint* %13, i32 0, i32 6
  %15 = load %class.b2Body** %14, align 4
  %16 = getelementptr inbounds %class.b2Body* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  %18 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  store i32 %17, i32* %18, align 4
  %19 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %20 = getelementptr inbounds %class.b2Joint* %19, i32 0, i32 7
  %21 = load %class.b2Body** %20, align 4
  %22 = getelementptr inbounds %class.b2Body* %21, i32 0, i32 2
  %23 = load i32* %22, align 4
  %24 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 5
  %26 = load %class.b2Body** %25, align 4
  %27 = getelementptr inbounds %class.b2Body* %26, i32 0, i32 2
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 6
  %31 = load %class.b2Body** %30, align 4
  %32 = getelementptr inbounds %class.b2Body* %31, i32 0, i32 2
  %33 = load i32* %32, align 4
  %34 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 22
  %36 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %37 = getelementptr inbounds %class.b2Joint* %36, i32 0, i32 6
  %38 = load %class.b2Body** %37, align 4
  %39 = getelementptr inbounds %class.b2Body* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.b2Sweep* %39, i32 0, i32 0
  %41 = bitcast %struct.b2Vec2* %35 to i8*
  %42 = bitcast %struct.b2Vec2* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 8, i32 4, i1 false)
  %43 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 23
  %44 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %45 = getelementptr inbounds %class.b2Joint* %44, i32 0, i32 7
  %46 = load %class.b2Body** %45, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.b2Sweep* %47, i32 0, i32 0
  %49 = bitcast %struct.b2Vec2* %43 to i8*
  %50 = bitcast %struct.b2Vec2* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 8, i32 4, i1 false)
  %51 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 24
  %52 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 5
  %53 = load %class.b2Body** %52, align 4
  %54 = getelementptr inbounds %class.b2Body* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.b2Sweep* %54, i32 0, i32 0
  %56 = bitcast %struct.b2Vec2* %51 to i8*
  %57 = bitcast %struct.b2Vec2* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %57, i32 8, i32 4, i1 false)
  %58 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 25
  %59 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 6
  %60 = load %class.b2Body** %59, align 4
  %61 = getelementptr inbounds %class.b2Body* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.b2Sweep* %61, i32 0, i32 0
  %63 = bitcast %struct.b2Vec2* %58 to i8*
  %64 = bitcast %struct.b2Vec2* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 8, i32 4, i1 false)
  %65 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %66 = getelementptr inbounds %class.b2Joint* %65, i32 0, i32 6
  %67 = load %class.b2Body** %66, align 4
  %68 = getelementptr inbounds %class.b2Body* %67, i32 0, i32 17
  %69 = load float* %68, align 4
  %70 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 26
  store float %69, float* %70, align 4
  %71 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %72 = getelementptr inbounds %class.b2Joint* %71, i32 0, i32 7
  %73 = load %class.b2Body** %72, align 4
  %74 = getelementptr inbounds %class.b2Body* %73, i32 0, i32 17
  %75 = load float* %74, align 4
  %76 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 27
  store float %75, float* %76, align 4
  %77 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 5
  %78 = load %class.b2Body** %77, align 4
  %79 = getelementptr inbounds %class.b2Body* %78, i32 0, i32 17
  %80 = load float* %79, align 4
  %81 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 28
  store float %80, float* %81, align 4
  %82 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 6
  %83 = load %class.b2Body** %82, align 4
  %84 = getelementptr inbounds %class.b2Body* %83, i32 0, i32 17
  %85 = load float* %84, align 4
  %86 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 29
  store float %85, float* %86, align 4
  %87 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %88 = getelementptr inbounds %class.b2Joint* %87, i32 0, i32 6
  %89 = load %class.b2Body** %88, align 4
  %90 = getelementptr inbounds %class.b2Body* %89, i32 0, i32 19
  %91 = load float* %90, align 4
  %92 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 30
  store float %91, float* %92, align 4
  %93 = bitcast %class.b2GearJoint* %12 to %class.b2Joint*
  %94 = getelementptr inbounds %class.b2Joint* %93, i32 0, i32 7
  %95 = load %class.b2Body** %94, align 4
  %96 = getelementptr inbounds %class.b2Body* %95, i32 0, i32 19
  %97 = load float* %96, align 4
  %98 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 31
  store float %97, float* %98, align 4
  %99 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 5
  %100 = load %class.b2Body** %99, align 4
  %101 = getelementptr inbounds %class.b2Body* %100, i32 0, i32 19
  %102 = load float* %101, align 4
  %103 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 32
  store float %102, float* %103, align 4
  %104 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 6
  %105 = load %class.b2Body** %104, align 4
  %106 = getelementptr inbounds %class.b2Body* %105, i32 0, i32 19
  %107 = load float* %106, align 4
  %108 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 33
  store float %107, float* %108, align 4
  %109 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %110 = load i32* %109, align 4
  %111 = load %struct.b2SolverData** %2
  %112 = getelementptr inbounds %struct.b2SolverData* %111, i32 0, i32 1
  %113 = load %struct.b2Position** %112, align 4
  %114 = getelementptr inbounds %struct.b2Position* %113, i32 %110
  %115 = getelementptr inbounds %struct.b2Position* %114, i32 0, i32 0
  %116 = bitcast %struct.b2Vec2* %cA to i8*
  %117 = bitcast %struct.b2Vec2* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %116, i8* %117, i32 8, i32 4, i1 false)
  %118 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %119 = load i32* %118, align 4
  %120 = load %struct.b2SolverData** %2
  %121 = getelementptr inbounds %struct.b2SolverData* %120, i32 0, i32 1
  %122 = load %struct.b2Position** %121, align 4
  %123 = getelementptr inbounds %struct.b2Position* %122, i32 %119
  %124 = getelementptr inbounds %struct.b2Position* %123, i32 0, i32 1
  %125 = load float* %124, align 4
  store float %125, float* %aA, align 4
  %126 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %127 = load i32* %126, align 4
  %128 = load %struct.b2SolverData** %2
  %129 = getelementptr inbounds %struct.b2SolverData* %128, i32 0, i32 2
  %130 = load %struct.b2Velocity** %129, align 4
  %131 = getelementptr inbounds %struct.b2Velocity* %130, i32 %127
  %132 = getelementptr inbounds %struct.b2Velocity* %131, i32 0, i32 0
  %133 = bitcast %struct.b2Vec2* %vA to i8*
  %134 = bitcast %struct.b2Vec2* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %133, i8* %134, i32 8, i32 4, i1 false)
  %135 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %136 = load i32* %135, align 4
  %137 = load %struct.b2SolverData** %2
  %138 = getelementptr inbounds %struct.b2SolverData* %137, i32 0, i32 2
  %139 = load %struct.b2Velocity** %138, align 4
  %140 = getelementptr inbounds %struct.b2Velocity* %139, i32 %136
  %141 = getelementptr inbounds %struct.b2Velocity* %140, i32 0, i32 1
  %142 = load float* %141, align 4
  store float %142, float* %wA, align 4
  %143 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %144 = load i32* %143, align 4
  %145 = load %struct.b2SolverData** %2
  %146 = getelementptr inbounds %struct.b2SolverData* %145, i32 0, i32 1
  %147 = load %struct.b2Position** %146, align 4
  %148 = getelementptr inbounds %struct.b2Position* %147, i32 %144
  %149 = getelementptr inbounds %struct.b2Position* %148, i32 0, i32 0
  %150 = bitcast %struct.b2Vec2* %cB to i8*
  %151 = bitcast %struct.b2Vec2* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %150, i8* %151, i32 8, i32 4, i1 false)
  %152 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %153 = load i32* %152, align 4
  %154 = load %struct.b2SolverData** %2
  %155 = getelementptr inbounds %struct.b2SolverData* %154, i32 0, i32 1
  %156 = load %struct.b2Position** %155, align 4
  %157 = getelementptr inbounds %struct.b2Position* %156, i32 %153
  %158 = getelementptr inbounds %struct.b2Position* %157, i32 0, i32 1
  %159 = load float* %158, align 4
  store float %159, float* %aB, align 4
  %160 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %161 = load i32* %160, align 4
  %162 = load %struct.b2SolverData** %2
  %163 = getelementptr inbounds %struct.b2SolverData* %162, i32 0, i32 2
  %164 = load %struct.b2Velocity** %163, align 4
  %165 = getelementptr inbounds %struct.b2Velocity* %164, i32 %161
  %166 = getelementptr inbounds %struct.b2Velocity* %165, i32 0, i32 0
  %167 = bitcast %struct.b2Vec2* %vB to i8*
  %168 = bitcast %struct.b2Vec2* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %167, i8* %168, i32 8, i32 4, i1 false)
  %169 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %170 = load i32* %169, align 4
  %171 = load %struct.b2SolverData** %2
  %172 = getelementptr inbounds %struct.b2SolverData* %171, i32 0, i32 2
  %173 = load %struct.b2Velocity** %172, align 4
  %174 = getelementptr inbounds %struct.b2Velocity* %173, i32 %170
  %175 = getelementptr inbounds %struct.b2Velocity* %174, i32 0, i32 1
  %176 = load float* %175, align 4
  store float %176, float* %wB, align 4
  %177 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %178 = load i32* %177, align 4
  %179 = load %struct.b2SolverData** %2
  %180 = getelementptr inbounds %struct.b2SolverData* %179, i32 0, i32 1
  %181 = load %struct.b2Position** %180, align 4
  %182 = getelementptr inbounds %struct.b2Position* %181, i32 %178
  %183 = getelementptr inbounds %struct.b2Position* %182, i32 0, i32 0
  %184 = bitcast %struct.b2Vec2* %cC to i8*
  %185 = bitcast %struct.b2Vec2* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %184, i8* %185, i32 8, i32 4, i1 false)
  %186 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %187 = load i32* %186, align 4
  %188 = load %struct.b2SolverData** %2
  %189 = getelementptr inbounds %struct.b2SolverData* %188, i32 0, i32 1
  %190 = load %struct.b2Position** %189, align 4
  %191 = getelementptr inbounds %struct.b2Position* %190, i32 %187
  %192 = getelementptr inbounds %struct.b2Position* %191, i32 0, i32 1
  %193 = load float* %192, align 4
  store float %193, float* %aC, align 4
  %194 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %195 = load i32* %194, align 4
  %196 = load %struct.b2SolverData** %2
  %197 = getelementptr inbounds %struct.b2SolverData* %196, i32 0, i32 2
  %198 = load %struct.b2Velocity** %197, align 4
  %199 = getelementptr inbounds %struct.b2Velocity* %198, i32 %195
  %200 = getelementptr inbounds %struct.b2Velocity* %199, i32 0, i32 0
  %201 = bitcast %struct.b2Vec2* %vC to i8*
  %202 = bitcast %struct.b2Vec2* %200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %201, i8* %202, i32 8, i32 4, i1 false)
  %203 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %204 = load i32* %203, align 4
  %205 = load %struct.b2SolverData** %2
  %206 = getelementptr inbounds %struct.b2SolverData* %205, i32 0, i32 2
  %207 = load %struct.b2Velocity** %206, align 4
  %208 = getelementptr inbounds %struct.b2Velocity* %207, i32 %204
  %209 = getelementptr inbounds %struct.b2Velocity* %208, i32 0, i32 1
  %210 = load float* %209, align 4
  store float %210, float* %wC, align 4
  %211 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %212 = load i32* %211, align 4
  %213 = load %struct.b2SolverData** %2
  %214 = getelementptr inbounds %struct.b2SolverData* %213, i32 0, i32 1
  %215 = load %struct.b2Position** %214, align 4
  %216 = getelementptr inbounds %struct.b2Position* %215, i32 %212
  %217 = getelementptr inbounds %struct.b2Position* %216, i32 0, i32 0
  %218 = bitcast %struct.b2Vec2* %cD to i8*
  %219 = bitcast %struct.b2Vec2* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %218, i8* %219, i32 8, i32 4, i1 false)
  %220 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %221 = load i32* %220, align 4
  %222 = load %struct.b2SolverData** %2
  %223 = getelementptr inbounds %struct.b2SolverData* %222, i32 0, i32 1
  %224 = load %struct.b2Position** %223, align 4
  %225 = getelementptr inbounds %struct.b2Position* %224, i32 %221
  %226 = getelementptr inbounds %struct.b2Position* %225, i32 0, i32 1
  %227 = load float* %226, align 4
  store float %227, float* %aD, align 4
  %228 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %229 = load i32* %228, align 4
  %230 = load %struct.b2SolverData** %2
  %231 = getelementptr inbounds %struct.b2SolverData* %230, i32 0, i32 2
  %232 = load %struct.b2Velocity** %231, align 4
  %233 = getelementptr inbounds %struct.b2Velocity* %232, i32 %229
  %234 = getelementptr inbounds %struct.b2Velocity* %233, i32 0, i32 0
  %235 = bitcast %struct.b2Vec2* %vD to i8*
  %236 = bitcast %struct.b2Vec2* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %235, i8* %236, i32 8, i32 4, i1 false)
  %237 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %238 = load i32* %237, align 4
  %239 = load %struct.b2SolverData** %2
  %240 = getelementptr inbounds %struct.b2SolverData* %239, i32 0, i32 2
  %241 = load %struct.b2Velocity** %240, align 4
  %242 = getelementptr inbounds %struct.b2Velocity* %241, i32 %238
  %243 = getelementptr inbounds %struct.b2Velocity* %242, i32 0, i32 1
  %244 = load float* %243, align 4
  store float %244, float* %wD, align 4
  %245 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %245)
  %246 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %246)
  %247 = load float* %aC, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qC, float %247)
  %248 = load float* %aD, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qD, float %248)
  %249 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  store float 0.000000e+00, float* %249, align 4
  %250 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 3
  %251 = load i32* %250, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %265

; <label>:253                                     ; preds = %0
  %254 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 34
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %254)
  %255 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 36
  store float 1.000000e+00, float* %255, align 4
  %256 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 38
  store float 1.000000e+00, float* %256, align 4
  %257 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 30
  %258 = load float* %257, align 4
  %259 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 32
  %260 = load float* %259, align 4
  %261 = fadd float %258, %260
  %262 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %263 = load float* %262, align 4
  %264 = fadd float %263, %261
  store float %264, float* %262, align 4
  br label %304

; <label>:265                                     ; preds = %0
  %266 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 11
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %u, %struct.b2Rot* %qC, %struct.b2Vec2* %266)
  %267 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 9
  %268 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 24
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %267, %struct.b2Vec2* %268)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rC, %struct.b2Rot* %qC, %struct.b2Vec2* %3)
  %269 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 7
  %270 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 22
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %269, %struct.b2Vec2* %270)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %271 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 34
  %272 = bitcast %struct.b2Vec2* %271 to i8*
  %273 = bitcast %struct.b2Vec2* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %272, i8* %273, i32 8, i32 4, i1 false)
  %274 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rC, %struct.b2Vec2* %u)
  %275 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 38
  store float %274, float* %275, align 4
  %276 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %u)
  %277 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 36
  store float %276, float* %277, align 4
  %278 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 28
  %279 = load float* %278, align 4
  %280 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 26
  %281 = load float* %280, align 4
  %282 = fadd float %279, %281
  %283 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 32
  %284 = load float* %283, align 4
  %285 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 38
  %286 = load float* %285, align 4
  %287 = fmul float %284, %286
  %288 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 38
  %289 = load float* %288, align 4
  %290 = fmul float %287, %289
  %291 = fadd float %282, %290
  %292 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 30
  %293 = load float* %292, align 4
  %294 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 36
  %295 = load float* %294, align 4
  %296 = fmul float %293, %295
  %297 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 36
  %298 = load float* %297, align 4
  %299 = fmul float %296, %298
  %300 = fadd float %291, %299
  %301 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %302 = load float* %301, align 4
  %303 = fadd float %302, %300
  store float %303, float* %301, align 4
  br label %304

; <label>:304                                     ; preds = %265, %253
  %305 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 4
  %306 = load i32* %305, align 4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %330

; <label>:308                                     ; preds = %304
  %309 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 35
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %309)
  %310 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %311 = load float* %310, align 4
  %312 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 37
  store float %311, float* %312, align 4
  %313 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %314 = load float* %313, align 4
  %315 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 39
  store float %314, float* %315, align 4
  %316 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %317 = load float* %316, align 4
  %318 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %319 = load float* %318, align 4
  %320 = fmul float %317, %319
  %321 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 31
  %322 = load float* %321, align 4
  %323 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 33
  %324 = load float* %323, align 4
  %325 = fadd float %322, %324
  %326 = fmul float %320, %325
  %327 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %328 = load float* %327, align 4
  %329 = fadd float %328, %326
  store float %329, float* %327, align 4
  br label %383

; <label>:330                                     ; preds = %304
  %331 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 12
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %u1, %struct.b2Rot* %qD, %struct.b2Vec2* %331)
  %332 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 10
  %333 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 25
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %332, %struct.b2Vec2* %333)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rD, %struct.b2Rot* %qD, %struct.b2Vec2* %5)
  %334 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 8
  %335 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 23
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %334, %struct.b2Vec2* %335)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %6)
  %336 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 35
  %337 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %338 = load float* %337, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %338, %struct.b2Vec2* %u1)
  %339 = bitcast %struct.b2Vec2* %336 to i8*
  %340 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %339, i8* %340, i32 8, i32 4, i1 false)
  %341 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %342 = load float* %341, align 4
  %343 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rD, %struct.b2Vec2* %u1)
  %344 = fmul float %342, %343
  %345 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 39
  store float %344, float* %345, align 4
  %346 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %347 = load float* %346, align 4
  %348 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %u1)
  %349 = fmul float %347, %348
  %350 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 37
  store float %349, float* %350, align 4
  %351 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %352 = load float* %351, align 4
  %353 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 16
  %354 = load float* %353, align 4
  %355 = fmul float %352, %354
  %356 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 29
  %357 = load float* %356, align 4
  %358 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 27
  %359 = load float* %358, align 4
  %360 = fadd float %357, %359
  %361 = fmul float %355, %360
  %362 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 33
  %363 = load float* %362, align 4
  %364 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 39
  %365 = load float* %364, align 4
  %366 = fmul float %363, %365
  %367 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 39
  %368 = load float* %367, align 4
  %369 = fmul float %366, %368
  %370 = fadd float %361, %369
  %371 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 31
  %372 = load float* %371, align 4
  %373 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 37
  %374 = load float* %373, align 4
  %375 = fmul float %372, %374
  %376 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 37
  %377 = load float* %376, align 4
  %378 = fmul float %375, %377
  %379 = fadd float %370, %378
  %380 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %381 = load float* %380, align 4
  %382 = fadd float %381, %379
  store float %382, float* %380, align 4
  br label %383

; <label>:383                                     ; preds = %330, %308
  %384 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %385 = load float* %384, align 4
  %386 = fcmp ogt float %385, 0.000000e+00
  br i1 %386, label %387, label %391

; <label>:387                                     ; preds = %383
  %388 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  %389 = load float* %388, align 4
  %390 = fdiv float 1.000000e+00, %389
  br label %392

; <label>:391                                     ; preds = %383
  br label %392

; <label>:392                                     ; preds = %391, %387
  %393 = phi float [ %390, %387 ], [ 0.000000e+00, %391 ]
  %394 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 40
  store float %393, float* %394, align 4
  %395 = load %struct.b2SolverData** %2
  %396 = getelementptr inbounds %struct.b2SolverData* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.b2TimeStep* %396, i32 0, i32 5
  %398 = load i8* %397, align 1
  %399 = trunc i8 %398 to i1
  br i1 %399, label %400, label %465

; <label>:400                                     ; preds = %392
  %401 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 26
  %402 = load float* %401, align 4
  %403 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %404 = load float* %403, align 4
  %405 = fmul float %402, %404
  %406 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 34
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %405, %struct.b2Vec2* %406)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %8)
  %407 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 30
  %408 = load float* %407, align 4
  %409 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %410 = load float* %409, align 4
  %411 = fmul float %408, %410
  %412 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 36
  %413 = load float* %412, align 4
  %414 = fmul float %411, %413
  %415 = load float* %wA, align 4
  %416 = fadd float %415, %414
  store float %416, float* %wA, align 4
  %417 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 27
  %418 = load float* %417, align 4
  %419 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %420 = load float* %419, align 4
  %421 = fmul float %418, %420
  %422 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 35
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %421, %struct.b2Vec2* %422)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %9)
  %423 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 31
  %424 = load float* %423, align 4
  %425 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %426 = load float* %425, align 4
  %427 = fmul float %424, %426
  %428 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 37
  %429 = load float* %428, align 4
  %430 = fmul float %427, %429
  %431 = load float* %wB, align 4
  %432 = fadd float %431, %430
  store float %432, float* %wB, align 4
  %433 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 28
  %434 = load float* %433, align 4
  %435 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %436 = load float* %435, align 4
  %437 = fmul float %434, %436
  %438 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 34
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %437, %struct.b2Vec2* %438)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vC, %struct.b2Vec2* %10)
  %439 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 32
  %440 = load float* %439, align 4
  %441 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %442 = load float* %441, align 4
  %443 = fmul float %440, %442
  %444 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 38
  %445 = load float* %444, align 4
  %446 = fmul float %443, %445
  %447 = load float* %wC, align 4
  %448 = fsub float %447, %446
  store float %448, float* %wC, align 4
  %449 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 29
  %450 = load float* %449, align 4
  %451 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %452 = load float* %451, align 4
  %453 = fmul float %450, %452
  %454 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 35
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %11, float %453, %struct.b2Vec2* %454)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vD, %struct.b2Vec2* %11)
  %455 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 33
  %456 = load float* %455, align 4
  %457 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  %458 = load float* %457, align 4
  %459 = fmul float %456, %458
  %460 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 39
  %461 = load float* %460, align 4
  %462 = fmul float %459, %461
  %463 = load float* %wD, align 4
  %464 = fsub float %463, %462
  store float %464, float* %wD, align 4
  br label %467

; <label>:465                                     ; preds = %392
  %466 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 17
  store float 0.000000e+00, float* %466, align 4
  br label %467

; <label>:467                                     ; preds = %465, %400
  %468 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %469 = load i32* %468, align 4
  %470 = load %struct.b2SolverData** %2
  %471 = getelementptr inbounds %struct.b2SolverData* %470, i32 0, i32 2
  %472 = load %struct.b2Velocity** %471, align 4
  %473 = getelementptr inbounds %struct.b2Velocity* %472, i32 %469
  %474 = getelementptr inbounds %struct.b2Velocity* %473, i32 0, i32 0
  %475 = bitcast %struct.b2Vec2* %474 to i8*
  %476 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %475, i8* %476, i32 8, i32 4, i1 false)
  %477 = load float* %wA, align 4
  %478 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 18
  %479 = load i32* %478, align 4
  %480 = load %struct.b2SolverData** %2
  %481 = getelementptr inbounds %struct.b2SolverData* %480, i32 0, i32 2
  %482 = load %struct.b2Velocity** %481, align 4
  %483 = getelementptr inbounds %struct.b2Velocity* %482, i32 %479
  %484 = getelementptr inbounds %struct.b2Velocity* %483, i32 0, i32 1
  store float %477, float* %484, align 4
  %485 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %486 = load i32* %485, align 4
  %487 = load %struct.b2SolverData** %2
  %488 = getelementptr inbounds %struct.b2SolverData* %487, i32 0, i32 2
  %489 = load %struct.b2Velocity** %488, align 4
  %490 = getelementptr inbounds %struct.b2Velocity* %489, i32 %486
  %491 = getelementptr inbounds %struct.b2Velocity* %490, i32 0, i32 0
  %492 = bitcast %struct.b2Vec2* %491 to i8*
  %493 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %492, i8* %493, i32 8, i32 4, i1 false)
  %494 = load float* %wB, align 4
  %495 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 19
  %496 = load i32* %495, align 4
  %497 = load %struct.b2SolverData** %2
  %498 = getelementptr inbounds %struct.b2SolverData* %497, i32 0, i32 2
  %499 = load %struct.b2Velocity** %498, align 4
  %500 = getelementptr inbounds %struct.b2Velocity* %499, i32 %496
  %501 = getelementptr inbounds %struct.b2Velocity* %500, i32 0, i32 1
  store float %494, float* %501, align 4
  %502 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %503 = load i32* %502, align 4
  %504 = load %struct.b2SolverData** %2
  %505 = getelementptr inbounds %struct.b2SolverData* %504, i32 0, i32 2
  %506 = load %struct.b2Velocity** %505, align 4
  %507 = getelementptr inbounds %struct.b2Velocity* %506, i32 %503
  %508 = getelementptr inbounds %struct.b2Velocity* %507, i32 0, i32 0
  %509 = bitcast %struct.b2Vec2* %508 to i8*
  %510 = bitcast %struct.b2Vec2* %vC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %509, i8* %510, i32 8, i32 4, i1 false)
  %511 = load float* %wC, align 4
  %512 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 20
  %513 = load i32* %512, align 4
  %514 = load %struct.b2SolverData** %2
  %515 = getelementptr inbounds %struct.b2SolverData* %514, i32 0, i32 2
  %516 = load %struct.b2Velocity** %515, align 4
  %517 = getelementptr inbounds %struct.b2Velocity* %516, i32 %513
  %518 = getelementptr inbounds %struct.b2Velocity* %517, i32 0, i32 1
  store float %511, float* %518, align 4
  %519 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %520 = load i32* %519, align 4
  %521 = load %struct.b2SolverData** %2
  %522 = getelementptr inbounds %struct.b2SolverData* %521, i32 0, i32 2
  %523 = load %struct.b2Velocity** %522, align 4
  %524 = getelementptr inbounds %struct.b2Velocity* %523, i32 %520
  %525 = getelementptr inbounds %struct.b2Velocity* %524, i32 0, i32 0
  %526 = bitcast %struct.b2Vec2* %525 to i8*
  %527 = bitcast %struct.b2Vec2* %vD to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %526, i8* %527, i32 8, i32 4, i1 false)
  %528 = load float* %wD, align 4
  %529 = getelementptr inbounds %class.b2GearJoint* %12, i32 0, i32 21
  %530 = load i32* %529, align 4
  %531 = load %struct.b2SolverData** %2
  %532 = getelementptr inbounds %struct.b2SolverData* %531, i32 0, i32 2
  %533 = load %struct.b2Velocity** %532, align 4
  %534 = getelementptr inbounds %struct.b2Velocity* %533, i32 %530
  %535 = getelementptr inbounds %struct.b2Velocity* %534, i32 0, i32 1
  store float %528, float* %535, align 4
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

define void @_ZN11b2GearJoint24SolveVelocityConstraintsERK12b2SolverData(%class.b2GearJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %vC = alloca %struct.b2Vec2, align 4
  %wC = alloca float, align 4
  %vD = alloca %struct.b2Vec2, align 4
  %wD = alloca float, align 4
  %Cdot = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %impulse = alloca float, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %9 = load %class.b2GearJoint** %1
  %10 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 18
  %11 = load i32* %10, align 4
  %12 = load %struct.b2SolverData** %2
  %13 = getelementptr inbounds %struct.b2SolverData* %12, i32 0, i32 2
  %14 = load %struct.b2Velocity** %13, align 4
  %15 = getelementptr inbounds %struct.b2Velocity* %14, i32 %11
  %16 = getelementptr inbounds %struct.b2Velocity* %15, i32 0, i32 0
  %17 = bitcast %struct.b2Vec2* %vA to i8*
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 8, i32 4, i1 false)
  %19 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 18
  %20 = load i32* %19, align 4
  %21 = load %struct.b2SolverData** %2
  %22 = getelementptr inbounds %struct.b2SolverData* %21, i32 0, i32 2
  %23 = load %struct.b2Velocity** %22, align 4
  %24 = getelementptr inbounds %struct.b2Velocity* %23, i32 %20
  %25 = getelementptr inbounds %struct.b2Velocity* %24, i32 0, i32 1
  %26 = load float* %25, align 4
  store float %26, float* %wA, align 4
  %27 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 19
  %28 = load i32* %27, align 4
  %29 = load %struct.b2SolverData** %2
  %30 = getelementptr inbounds %struct.b2SolverData* %29, i32 0, i32 2
  %31 = load %struct.b2Velocity** %30, align 4
  %32 = getelementptr inbounds %struct.b2Velocity* %31, i32 %28
  %33 = getelementptr inbounds %struct.b2Velocity* %32, i32 0, i32 0
  %34 = bitcast %struct.b2Vec2* %vB to i8*
  %35 = bitcast %struct.b2Vec2* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %36 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 19
  %37 = load i32* %36, align 4
  %38 = load %struct.b2SolverData** %2
  %39 = getelementptr inbounds %struct.b2SolverData* %38, i32 0, i32 2
  %40 = load %struct.b2Velocity** %39, align 4
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 %37
  %42 = getelementptr inbounds %struct.b2Velocity* %41, i32 0, i32 1
  %43 = load float* %42, align 4
  store float %43, float* %wB, align 4
  %44 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 20
  %45 = load i32* %44, align 4
  %46 = load %struct.b2SolverData** %2
  %47 = getelementptr inbounds %struct.b2SolverData* %46, i32 0, i32 2
  %48 = load %struct.b2Velocity** %47, align 4
  %49 = getelementptr inbounds %struct.b2Velocity* %48, i32 %45
  %50 = getelementptr inbounds %struct.b2Velocity* %49, i32 0, i32 0
  %51 = bitcast %struct.b2Vec2* %vC to i8*
  %52 = bitcast %struct.b2Vec2* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %51, i8* %52, i32 8, i32 4, i1 false)
  %53 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 20
  %54 = load i32* %53, align 4
  %55 = load %struct.b2SolverData** %2
  %56 = getelementptr inbounds %struct.b2SolverData* %55, i32 0, i32 2
  %57 = load %struct.b2Velocity** %56, align 4
  %58 = getelementptr inbounds %struct.b2Velocity* %57, i32 %54
  %59 = getelementptr inbounds %struct.b2Velocity* %58, i32 0, i32 1
  %60 = load float* %59, align 4
  store float %60, float* %wC, align 4
  %61 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 21
  %62 = load i32* %61, align 4
  %63 = load %struct.b2SolverData** %2
  %64 = getelementptr inbounds %struct.b2SolverData* %63, i32 0, i32 2
  %65 = load %struct.b2Velocity** %64, align 4
  %66 = getelementptr inbounds %struct.b2Velocity* %65, i32 %62
  %67 = getelementptr inbounds %struct.b2Velocity* %66, i32 0, i32 0
  %68 = bitcast %struct.b2Vec2* %vD to i8*
  %69 = bitcast %struct.b2Vec2* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %68, i8* %69, i32 8, i32 4, i1 false)
  %70 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 21
  %71 = load i32* %70, align 4
  %72 = load %struct.b2SolverData** %2
  %73 = getelementptr inbounds %struct.b2SolverData* %72, i32 0, i32 2
  %74 = load %struct.b2Velocity** %73, align 4
  %75 = getelementptr inbounds %struct.b2Velocity* %74, i32 %71
  %76 = getelementptr inbounds %struct.b2Velocity* %75, i32 0, i32 1
  %77 = load float* %76, align 4
  store float %77, float* %wD, align 4
  %78 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 34
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %vA, %struct.b2Vec2* %vC)
  %79 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %78, %struct.b2Vec2* %3)
  %80 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 35
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %vB, %struct.b2Vec2* %vD)
  %81 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %80, %struct.b2Vec2* %4)
  %82 = fadd float %79, %81
  store float %82, float* %Cdot, align 4
  %83 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 36
  %84 = load float* %83, align 4
  %85 = load float* %wA, align 4
  %86 = fmul float %84, %85
  %87 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 38
  %88 = load float* %87, align 4
  %89 = load float* %wC, align 4
  %90 = fmul float %88, %89
  %91 = fsub float %86, %90
  %92 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 37
  %93 = load float* %92, align 4
  %94 = load float* %wB, align 4
  %95 = fmul float %93, %94
  %96 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 39
  %97 = load float* %96, align 4
  %98 = load float* %wD, align 4
  %99 = fmul float %97, %98
  %100 = fsub float %95, %99
  %101 = fadd float %91, %100
  %102 = load float* %Cdot, align 4
  %103 = fadd float %102, %101
  store float %103, float* %Cdot, align 4
  %104 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 40
  %105 = load float* %104, align 4
  %106 = fsub float -0.000000e+00, %105
  %107 = load float* %Cdot, align 4
  %108 = fmul float %106, %107
  store float %108, float* %impulse, align 4
  %109 = load float* %impulse, align 4
  %110 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 17
  %111 = load float* %110, align 4
  %112 = fadd float %111, %109
  store float %112, float* %110, align 4
  %113 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 26
  %114 = load float* %113, align 4
  %115 = load float* %impulse, align 4
  %116 = fmul float %114, %115
  %117 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 34
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %116, %struct.b2Vec2* %117)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %5)
  %118 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 30
  %119 = load float* %118, align 4
  %120 = load float* %impulse, align 4
  %121 = fmul float %119, %120
  %122 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 36
  %123 = load float* %122, align 4
  %124 = fmul float %121, %123
  %125 = load float* %wA, align 4
  %126 = fadd float %125, %124
  store float %126, float* %wA, align 4
  %127 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 27
  %128 = load float* %127, align 4
  %129 = load float* %impulse, align 4
  %130 = fmul float %128, %129
  %131 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 35
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %130, %struct.b2Vec2* %131)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %6)
  %132 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 31
  %133 = load float* %132, align 4
  %134 = load float* %impulse, align 4
  %135 = fmul float %133, %134
  %136 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 37
  %137 = load float* %136, align 4
  %138 = fmul float %135, %137
  %139 = load float* %wB, align 4
  %140 = fadd float %139, %138
  store float %140, float* %wB, align 4
  %141 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 28
  %142 = load float* %141, align 4
  %143 = load float* %impulse, align 4
  %144 = fmul float %142, %143
  %145 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 34
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %144, %struct.b2Vec2* %145)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vC, %struct.b2Vec2* %7)
  %146 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 32
  %147 = load float* %146, align 4
  %148 = load float* %impulse, align 4
  %149 = fmul float %147, %148
  %150 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 38
  %151 = load float* %150, align 4
  %152 = fmul float %149, %151
  %153 = load float* %wC, align 4
  %154 = fsub float %153, %152
  store float %154, float* %wC, align 4
  %155 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 29
  %156 = load float* %155, align 4
  %157 = load float* %impulse, align 4
  %158 = fmul float %156, %157
  %159 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 35
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %158, %struct.b2Vec2* %159)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vD, %struct.b2Vec2* %8)
  %160 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 33
  %161 = load float* %160, align 4
  %162 = load float* %impulse, align 4
  %163 = fmul float %161, %162
  %164 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 39
  %165 = load float* %164, align 4
  %166 = fmul float %163, %165
  %167 = load float* %wD, align 4
  %168 = fsub float %167, %166
  store float %168, float* %wD, align 4
  %169 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 18
  %170 = load i32* %169, align 4
  %171 = load %struct.b2SolverData** %2
  %172 = getelementptr inbounds %struct.b2SolverData* %171, i32 0, i32 2
  %173 = load %struct.b2Velocity** %172, align 4
  %174 = getelementptr inbounds %struct.b2Velocity* %173, i32 %170
  %175 = getelementptr inbounds %struct.b2Velocity* %174, i32 0, i32 0
  %176 = bitcast %struct.b2Vec2* %175 to i8*
  %177 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %176, i8* %177, i32 8, i32 4, i1 false)
  %178 = load float* %wA, align 4
  %179 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 18
  %180 = load i32* %179, align 4
  %181 = load %struct.b2SolverData** %2
  %182 = getelementptr inbounds %struct.b2SolverData* %181, i32 0, i32 2
  %183 = load %struct.b2Velocity** %182, align 4
  %184 = getelementptr inbounds %struct.b2Velocity* %183, i32 %180
  %185 = getelementptr inbounds %struct.b2Velocity* %184, i32 0, i32 1
  store float %178, float* %185, align 4
  %186 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 19
  %187 = load i32* %186, align 4
  %188 = load %struct.b2SolverData** %2
  %189 = getelementptr inbounds %struct.b2SolverData* %188, i32 0, i32 2
  %190 = load %struct.b2Velocity** %189, align 4
  %191 = getelementptr inbounds %struct.b2Velocity* %190, i32 %187
  %192 = getelementptr inbounds %struct.b2Velocity* %191, i32 0, i32 0
  %193 = bitcast %struct.b2Vec2* %192 to i8*
  %194 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %193, i8* %194, i32 8, i32 4, i1 false)
  %195 = load float* %wB, align 4
  %196 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 19
  %197 = load i32* %196, align 4
  %198 = load %struct.b2SolverData** %2
  %199 = getelementptr inbounds %struct.b2SolverData* %198, i32 0, i32 2
  %200 = load %struct.b2Velocity** %199, align 4
  %201 = getelementptr inbounds %struct.b2Velocity* %200, i32 %197
  %202 = getelementptr inbounds %struct.b2Velocity* %201, i32 0, i32 1
  store float %195, float* %202, align 4
  %203 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 20
  %204 = load i32* %203, align 4
  %205 = load %struct.b2SolverData** %2
  %206 = getelementptr inbounds %struct.b2SolverData* %205, i32 0, i32 2
  %207 = load %struct.b2Velocity** %206, align 4
  %208 = getelementptr inbounds %struct.b2Velocity* %207, i32 %204
  %209 = getelementptr inbounds %struct.b2Velocity* %208, i32 0, i32 0
  %210 = bitcast %struct.b2Vec2* %209 to i8*
  %211 = bitcast %struct.b2Vec2* %vC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %210, i8* %211, i32 8, i32 4, i1 false)
  %212 = load float* %wC, align 4
  %213 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 20
  %214 = load i32* %213, align 4
  %215 = load %struct.b2SolverData** %2
  %216 = getelementptr inbounds %struct.b2SolverData* %215, i32 0, i32 2
  %217 = load %struct.b2Velocity** %216, align 4
  %218 = getelementptr inbounds %struct.b2Velocity* %217, i32 %214
  %219 = getelementptr inbounds %struct.b2Velocity* %218, i32 0, i32 1
  store float %212, float* %219, align 4
  %220 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 21
  %221 = load i32* %220, align 4
  %222 = load %struct.b2SolverData** %2
  %223 = getelementptr inbounds %struct.b2SolverData* %222, i32 0, i32 2
  %224 = load %struct.b2Velocity** %223, align 4
  %225 = getelementptr inbounds %struct.b2Velocity* %224, i32 %221
  %226 = getelementptr inbounds %struct.b2Velocity* %225, i32 0, i32 0
  %227 = bitcast %struct.b2Vec2* %226 to i8*
  %228 = bitcast %struct.b2Vec2* %vD to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %227, i8* %228, i32 8, i32 4, i1 false)
  %229 = load float* %wD, align 4
  %230 = getelementptr inbounds %class.b2GearJoint* %9, i32 0, i32 21
  %231 = load i32* %230, align 4
  %232 = load %struct.b2SolverData** %2
  %233 = getelementptr inbounds %struct.b2SolverData* %232, i32 0, i32 2
  %234 = load %struct.b2Velocity** %233, align 4
  %235 = getelementptr inbounds %struct.b2Velocity* %234, i32 %231
  %236 = getelementptr inbounds %struct.b2Velocity* %235, i32 0, i32 1
  store float %229, float* %236, align 4
  ret void
}

define zeroext i1 @_ZN11b2GearJoint24SolvePositionConstraintsERK12b2SolverData(%class.b2GearJoint* %this, %struct.b2SolverData* %data) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca %struct.b2SolverData*, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %cC = alloca %struct.b2Vec2, align 4
  %aC = alloca float, align 4
  %cD = alloca %struct.b2Vec2, align 4
  %aD = alloca float, align 4
  %qA = alloca %struct.b2Rot, align 4
  %qB = alloca %struct.b2Rot, align 4
  %qC = alloca %struct.b2Rot, align 4
  %qD = alloca %struct.b2Rot, align 4
  %linearError = alloca float, align 4
  %coordinateA = alloca float, align 4
  %coordinateB = alloca float, align 4
  %JvAC = alloca %struct.b2Vec2, align 4
  %JvBD = alloca %struct.b2Vec2, align 4
  %JwA = alloca float, align 4
  %JwB = alloca float, align 4
  %JwC = alloca float, align 4
  %JwD = alloca float, align 4
  %mass = alloca float, align 4
  %u = alloca %struct.b2Vec2, align 4
  %rC = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %pC = alloca %struct.b2Vec2, align 4
  %pA = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %u1 = alloca %struct.b2Vec2, align 4
  %rD = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %pD = alloca %struct.b2Vec2, align 4
  %pB = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %C = alloca float, align 4
  %impulse = alloca float, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store %struct.b2SolverData* %data, %struct.b2SolverData** %2, align 4
  %18 = load %class.b2GearJoint** %1
  %19 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 18
  %20 = load i32* %19, align 4
  %21 = load %struct.b2SolverData** %2
  %22 = getelementptr inbounds %struct.b2SolverData* %21, i32 0, i32 1
  %23 = load %struct.b2Position** %22, align 4
  %24 = getelementptr inbounds %struct.b2Position* %23, i32 %20
  %25 = getelementptr inbounds %struct.b2Position* %24, i32 0, i32 0
  %26 = bitcast %struct.b2Vec2* %cA to i8*
  %27 = bitcast %struct.b2Vec2* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %28 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 18
  %29 = load i32* %28, align 4
  %30 = load %struct.b2SolverData** %2
  %31 = getelementptr inbounds %struct.b2SolverData* %30, i32 0, i32 1
  %32 = load %struct.b2Position** %31, align 4
  %33 = getelementptr inbounds %struct.b2Position* %32, i32 %29
  %34 = getelementptr inbounds %struct.b2Position* %33, i32 0, i32 1
  %35 = load float* %34, align 4
  store float %35, float* %aA, align 4
  %36 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 19
  %37 = load i32* %36, align 4
  %38 = load %struct.b2SolverData** %2
  %39 = getelementptr inbounds %struct.b2SolverData* %38, i32 0, i32 1
  %40 = load %struct.b2Position** %39, align 4
  %41 = getelementptr inbounds %struct.b2Position* %40, i32 %37
  %42 = getelementptr inbounds %struct.b2Position* %41, i32 0, i32 0
  %43 = bitcast %struct.b2Vec2* %cB to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  %45 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 19
  %46 = load i32* %45, align 4
  %47 = load %struct.b2SolverData** %2
  %48 = getelementptr inbounds %struct.b2SolverData* %47, i32 0, i32 1
  %49 = load %struct.b2Position** %48, align 4
  %50 = getelementptr inbounds %struct.b2Position* %49, i32 %46
  %51 = getelementptr inbounds %struct.b2Position* %50, i32 0, i32 1
  %52 = load float* %51, align 4
  store float %52, float* %aB, align 4
  %53 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 20
  %54 = load i32* %53, align 4
  %55 = load %struct.b2SolverData** %2
  %56 = getelementptr inbounds %struct.b2SolverData* %55, i32 0, i32 1
  %57 = load %struct.b2Position** %56, align 4
  %58 = getelementptr inbounds %struct.b2Position* %57, i32 %54
  %59 = getelementptr inbounds %struct.b2Position* %58, i32 0, i32 0
  %60 = bitcast %struct.b2Vec2* %cC to i8*
  %61 = bitcast %struct.b2Vec2* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 20
  %63 = load i32* %62, align 4
  %64 = load %struct.b2SolverData** %2
  %65 = getelementptr inbounds %struct.b2SolverData* %64, i32 0, i32 1
  %66 = load %struct.b2Position** %65, align 4
  %67 = getelementptr inbounds %struct.b2Position* %66, i32 %63
  %68 = getelementptr inbounds %struct.b2Position* %67, i32 0, i32 1
  %69 = load float* %68, align 4
  store float %69, float* %aC, align 4
  %70 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 21
  %71 = load i32* %70, align 4
  %72 = load %struct.b2SolverData** %2
  %73 = getelementptr inbounds %struct.b2SolverData* %72, i32 0, i32 1
  %74 = load %struct.b2Position** %73, align 4
  %75 = getelementptr inbounds %struct.b2Position* %74, i32 %71
  %76 = getelementptr inbounds %struct.b2Position* %75, i32 0, i32 0
  %77 = bitcast %struct.b2Vec2* %cD to i8*
  %78 = bitcast %struct.b2Vec2* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %77, i8* %78, i32 8, i32 4, i1 false)
  %79 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 21
  %80 = load i32* %79, align 4
  %81 = load %struct.b2SolverData** %2
  %82 = getelementptr inbounds %struct.b2SolverData* %81, i32 0, i32 1
  %83 = load %struct.b2Position** %82, align 4
  %84 = getelementptr inbounds %struct.b2Position* %83, i32 %80
  %85 = getelementptr inbounds %struct.b2Position* %84, i32 0, i32 1
  %86 = load float* %85, align 4
  store float %86, float* %aD, align 4
  %87 = load float* %aA, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qA, float %87)
  %88 = load float* %aB, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qB, float %88)
  %89 = load float* %aC, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qC, float %89)
  %90 = load float* %aD, align 4
  call void @_ZN5b2RotC1Ef(%struct.b2Rot* %qD, float %90)
  store float 0.000000e+00, float* %linearError, align 4
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %JvAC)
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %JvBD)
  store float 0.000000e+00, float* %mass, align 4
  %91 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 3
  %92 = load i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %108

; <label>:94                                      ; preds = %0
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %JvAC)
  store float 1.000000e+00, float* %JwA, align 4
  store float 1.000000e+00, float* %JwC, align 4
  %95 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 30
  %96 = load float* %95, align 4
  %97 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 32
  %98 = load float* %97, align 4
  %99 = fadd float %96, %98
  %100 = load float* %mass, align 4
  %101 = fadd float %100, %99
  store float %101, float* %mass, align 4
  %102 = load float* %aA, align 4
  %103 = load float* %aC, align 4
  %104 = fsub float %102, %103
  %105 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 13
  %106 = load float* %105, align 4
  %107 = fsub float %104, %106
  store float %107, float* %coordinateA, align 4
  br label %143

; <label>:108                                     ; preds = %0
  %109 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 11
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %u, %struct.b2Rot* %qC, %struct.b2Vec2* %109)
  %110 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 9
  %111 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 24
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %110, %struct.b2Vec2* %111)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rC, %struct.b2Rot* %qC, %struct.b2Vec2* %3)
  %112 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 7
  %113 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 22
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %112, %struct.b2Vec2* %113)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rA, %struct.b2Rot* %qA, %struct.b2Vec2* %4)
  %114 = bitcast %struct.b2Vec2* %JvAC to i8*
  %115 = bitcast %struct.b2Vec2* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* %115, i32 8, i32 4, i1 false)
  %116 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rC, %struct.b2Vec2* %u)
  store float %116, float* %JwC, align 4
  %117 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %u)
  store float %117, float* %JwA, align 4
  %118 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 28
  %119 = load float* %118, align 4
  %120 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 26
  %121 = load float* %120, align 4
  %122 = fadd float %119, %121
  %123 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 32
  %124 = load float* %123, align 4
  %125 = load float* %JwC, align 4
  %126 = fmul float %124, %125
  %127 = load float* %JwC, align 4
  %128 = fmul float %126, %127
  %129 = fadd float %122, %128
  %130 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 30
  %131 = load float* %130, align 4
  %132 = load float* %JwA, align 4
  %133 = fmul float %131, %132
  %134 = load float* %JwA, align 4
  %135 = fmul float %133, %134
  %136 = fadd float %129, %135
  %137 = load float* %mass, align 4
  %138 = fadd float %137, %136
  store float %138, float* %mass, align 4
  %139 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 9
  %140 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 24
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %pC, %struct.b2Vec2* %139, %struct.b2Vec2* %140)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cA, %struct.b2Vec2* %cC)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %rA, %struct.b2Vec2* %6)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %pA, %struct.b2Rot* %qC, %struct.b2Vec2* %5)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %pA, %struct.b2Vec2* %pC)
  %141 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 11
  %142 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %7, %struct.b2Vec2* %141)
  store float %142, float* %coordinateA, align 4
  br label %143

; <label>:143                                     ; preds = %108, %94
  %144 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 4
  %145 = load i32* %144, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %171

; <label>:147                                     ; preds = %143
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %JvBD)
  %148 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %149 = load float* %148, align 4
  store float %149, float* %JwB, align 4
  %150 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %151 = load float* %150, align 4
  store float %151, float* %JwD, align 4
  %152 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %153 = load float* %152, align 4
  %154 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %155 = load float* %154, align 4
  %156 = fmul float %153, %155
  %157 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 31
  %158 = load float* %157, align 4
  %159 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 33
  %160 = load float* %159, align 4
  %161 = fadd float %158, %160
  %162 = fmul float %156, %161
  %163 = load float* %mass, align 4
  %164 = fadd float %163, %162
  store float %164, float* %mass, align 4
  %165 = load float* %aB, align 4
  %166 = load float* %aD, align 4
  %167 = fsub float %165, %166
  %168 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 14
  %169 = load float* %168, align 4
  %170 = fsub float %167, %169
  store float %170, float* %coordinateB, align 4
  br label %220

; <label>:171                                     ; preds = %143
  %172 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 12
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %u1, %struct.b2Rot* %qD, %struct.b2Vec2* %172)
  %173 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 10
  %174 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 25
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %173, %struct.b2Vec2* %174)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rD, %struct.b2Rot* %qD, %struct.b2Vec2* %8)
  %175 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 8
  %176 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 23
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %175, %struct.b2Vec2* %176)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %rB, %struct.b2Rot* %qB, %struct.b2Vec2* %9)
  %177 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %178 = load float* %177, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %10, float %178, %struct.b2Vec2* %u1)
  %179 = bitcast %struct.b2Vec2* %JvBD to i8*
  %180 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %180, i32 8, i32 4, i1 false)
  %181 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %182 = load float* %181, align 4
  %183 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rD, %struct.b2Vec2* %u1)
  %184 = fmul float %182, %183
  store float %184, float* %JwD, align 4
  %185 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %186 = load float* %185, align 4
  %187 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %u1)
  %188 = fmul float %186, %187
  store float %188, float* %JwB, align 4
  %189 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %190 = load float* %189, align 4
  %191 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %192 = load float* %191, align 4
  %193 = fmul float %190, %192
  %194 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 29
  %195 = load float* %194, align 4
  %196 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 27
  %197 = load float* %196, align 4
  %198 = fadd float %195, %197
  %199 = fmul float %193, %198
  %200 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 33
  %201 = load float* %200, align 4
  %202 = load float* %JwD, align 4
  %203 = fmul float %201, %202
  %204 = load float* %JwD, align 4
  %205 = fmul float %203, %204
  %206 = fadd float %199, %205
  %207 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 31
  %208 = load float* %207, align 4
  %209 = load float* %JwB, align 4
  %210 = fmul float %208, %209
  %211 = load float* %JwB, align 4
  %212 = fmul float %210, %211
  %213 = fadd float %206, %212
  %214 = load float* %mass, align 4
  %215 = fadd float %214, %213
  store float %215, float* %mass, align 4
  %216 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 10
  %217 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 25
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %pD, %struct.b2Vec2* %216, %struct.b2Vec2* %217)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %12, %struct.b2Vec2* %cB, %struct.b2Vec2* %cD)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %rB, %struct.b2Vec2* %12)
  call void @_Z6b2MulTRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %pB, %struct.b2Rot* %qD, %struct.b2Vec2* %11)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %13, %struct.b2Vec2* %pB, %struct.b2Vec2* %pD)
  %218 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 12
  %219 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %13, %struct.b2Vec2* %218)
  store float %219, float* %coordinateB, align 4
  br label %220

; <label>:220                                     ; preds = %171, %147
  %221 = load float* %coordinateA, align 4
  %222 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 16
  %223 = load float* %222, align 4
  %224 = load float* %coordinateB, align 4
  %225 = fmul float %223, %224
  %226 = fadd float %221, %225
  %227 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 15
  %228 = load float* %227, align 4
  %229 = fsub float %226, %228
  store float %229, float* %C, align 4
  store float 0.000000e+00, float* %impulse, align 4
  %230 = load float* %mass, align 4
  %231 = fcmp ogt float %230, 0.000000e+00
  br i1 %231, label %232, label %237

; <label>:232                                     ; preds = %220
  %233 = load float* %C, align 4
  %234 = fsub float -0.000000e+00, %233
  %235 = load float* %mass, align 4
  %236 = fdiv float %234, %235
  store float %236, float* %impulse, align 4
  br label %237

; <label>:237                                     ; preds = %232, %220
  %238 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 26
  %239 = load float* %238, align 4
  %240 = load float* %impulse, align 4
  %241 = fmul float %239, %240
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %14, float %241, %struct.b2Vec2* %JvAC)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %14)
  %242 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 30
  %243 = load float* %242, align 4
  %244 = load float* %impulse, align 4
  %245 = fmul float %243, %244
  %246 = load float* %JwA, align 4
  %247 = fmul float %245, %246
  %248 = load float* %aA, align 4
  %249 = fadd float %248, %247
  store float %249, float* %aA, align 4
  %250 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 27
  %251 = load float* %250, align 4
  %252 = load float* %impulse, align 4
  %253 = fmul float %251, %252
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %15, float %253, %struct.b2Vec2* %JvBD)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %15)
  %254 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 31
  %255 = load float* %254, align 4
  %256 = load float* %impulse, align 4
  %257 = fmul float %255, %256
  %258 = load float* %JwB, align 4
  %259 = fmul float %257, %258
  %260 = load float* %aB, align 4
  %261 = fadd float %260, %259
  store float %261, float* %aB, align 4
  %262 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 28
  %263 = load float* %262, align 4
  %264 = load float* %impulse, align 4
  %265 = fmul float %263, %264
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %16, float %265, %struct.b2Vec2* %JvAC)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cC, %struct.b2Vec2* %16)
  %266 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 32
  %267 = load float* %266, align 4
  %268 = load float* %impulse, align 4
  %269 = fmul float %267, %268
  %270 = load float* %JwC, align 4
  %271 = fmul float %269, %270
  %272 = load float* %aC, align 4
  %273 = fsub float %272, %271
  store float %273, float* %aC, align 4
  %274 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 29
  %275 = load float* %274, align 4
  %276 = load float* %impulse, align 4
  %277 = fmul float %275, %276
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %17, float %277, %struct.b2Vec2* %JvBD)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cD, %struct.b2Vec2* %17)
  %278 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 33
  %279 = load float* %278, align 4
  %280 = load float* %impulse, align 4
  %281 = fmul float %279, %280
  %282 = load float* %JwD, align 4
  %283 = fmul float %281, %282
  %284 = load float* %aD, align 4
  %285 = fsub float %284, %283
  store float %285, float* %aD, align 4
  %286 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 18
  %287 = load i32* %286, align 4
  %288 = load %struct.b2SolverData** %2
  %289 = getelementptr inbounds %struct.b2SolverData* %288, i32 0, i32 1
  %290 = load %struct.b2Position** %289, align 4
  %291 = getelementptr inbounds %struct.b2Position* %290, i32 %287
  %292 = getelementptr inbounds %struct.b2Position* %291, i32 0, i32 0
  %293 = bitcast %struct.b2Vec2* %292 to i8*
  %294 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %293, i8* %294, i32 8, i32 4, i1 false)
  %295 = load float* %aA, align 4
  %296 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 18
  %297 = load i32* %296, align 4
  %298 = load %struct.b2SolverData** %2
  %299 = getelementptr inbounds %struct.b2SolverData* %298, i32 0, i32 1
  %300 = load %struct.b2Position** %299, align 4
  %301 = getelementptr inbounds %struct.b2Position* %300, i32 %297
  %302 = getelementptr inbounds %struct.b2Position* %301, i32 0, i32 1
  store float %295, float* %302, align 4
  %303 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 19
  %304 = load i32* %303, align 4
  %305 = load %struct.b2SolverData** %2
  %306 = getelementptr inbounds %struct.b2SolverData* %305, i32 0, i32 1
  %307 = load %struct.b2Position** %306, align 4
  %308 = getelementptr inbounds %struct.b2Position* %307, i32 %304
  %309 = getelementptr inbounds %struct.b2Position* %308, i32 0, i32 0
  %310 = bitcast %struct.b2Vec2* %309 to i8*
  %311 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %310, i8* %311, i32 8, i32 4, i1 false)
  %312 = load float* %aB, align 4
  %313 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 19
  %314 = load i32* %313, align 4
  %315 = load %struct.b2SolverData** %2
  %316 = getelementptr inbounds %struct.b2SolverData* %315, i32 0, i32 1
  %317 = load %struct.b2Position** %316, align 4
  %318 = getelementptr inbounds %struct.b2Position* %317, i32 %314
  %319 = getelementptr inbounds %struct.b2Position* %318, i32 0, i32 1
  store float %312, float* %319, align 4
  %320 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 20
  %321 = load i32* %320, align 4
  %322 = load %struct.b2SolverData** %2
  %323 = getelementptr inbounds %struct.b2SolverData* %322, i32 0, i32 1
  %324 = load %struct.b2Position** %323, align 4
  %325 = getelementptr inbounds %struct.b2Position* %324, i32 %321
  %326 = getelementptr inbounds %struct.b2Position* %325, i32 0, i32 0
  %327 = bitcast %struct.b2Vec2* %326 to i8*
  %328 = bitcast %struct.b2Vec2* %cC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %327, i8* %328, i32 8, i32 4, i1 false)
  %329 = load float* %aC, align 4
  %330 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 20
  %331 = load i32* %330, align 4
  %332 = load %struct.b2SolverData** %2
  %333 = getelementptr inbounds %struct.b2SolverData* %332, i32 0, i32 1
  %334 = load %struct.b2Position** %333, align 4
  %335 = getelementptr inbounds %struct.b2Position* %334, i32 %331
  %336 = getelementptr inbounds %struct.b2Position* %335, i32 0, i32 1
  store float %329, float* %336, align 4
  %337 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 21
  %338 = load i32* %337, align 4
  %339 = load %struct.b2SolverData** %2
  %340 = getelementptr inbounds %struct.b2SolverData* %339, i32 0, i32 1
  %341 = load %struct.b2Position** %340, align 4
  %342 = getelementptr inbounds %struct.b2Position* %341, i32 %338
  %343 = getelementptr inbounds %struct.b2Position* %342, i32 0, i32 0
  %344 = bitcast %struct.b2Vec2* %343 to i8*
  %345 = bitcast %struct.b2Vec2* %cD to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %344, i8* %345, i32 8, i32 4, i1 false)
  %346 = load float* %aD, align 4
  %347 = getelementptr inbounds %class.b2GearJoint* %18, i32 0, i32 21
  %348 = load i32* %347, align 4
  %349 = load %struct.b2SolverData** %2
  %350 = getelementptr inbounds %struct.b2SolverData* %349, i32 0, i32 1
  %351 = load %struct.b2Position** %350, align 4
  %352 = getelementptr inbounds %struct.b2Position* %351, i32 %348
  %353 = getelementptr inbounds %struct.b2Position* %352, i32 0, i32 1
  store float %346, float* %353, align 4
  %354 = load float* %linearError, align 4
  %355 = fcmp olt float %354, 0x3F747AE140000000
  ret i1 %355
}

define void @_ZNK11b2GearJoint10GetAnchorAEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2GearJoint* %this) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  %3 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 7
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

define void @_ZNK11b2GearJoint10GetAnchorBEv(%struct.b2Vec2* noalias sret %agg.result, %class.b2GearJoint* %this) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  %3 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 8
  call void @_ZNK6b2Body13GetWorldPointERK6b2Vec2(%struct.b2Vec2* sret %agg.result, %class.b2Body* %5, %struct.b2Vec2* %6)
  ret void
}

define void @_ZNK11b2GearJoint16GetReactionForceEf(%struct.b2Vec2* noalias sret %agg.result, %class.b2GearJoint* %this, float %inv_dt) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2GearJoint** %1
  %4 = getelementptr inbounds %class.b2GearJoint* %3, i32 0, i32 17
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %class.b2GearJoint* %3, i32 0, i32 34
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %5, %struct.b2Vec2* %6)
  %7 = load float* %2, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float %7, %struct.b2Vec2* %P)
  ret void
}

define float @_ZNK11b2GearJoint17GetReactionTorqueEf(%class.b2GearJoint* %this, float %inv_dt) nounwind align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca float, align 4
  %L = alloca float, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store float %inv_dt, float* %2, align 4
  %3 = load %class.b2GearJoint** %1
  %4 = getelementptr inbounds %class.b2GearJoint* %3, i32 0, i32 17
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %class.b2GearJoint* %3, i32 0, i32 36
  %7 = load float* %6, align 4
  %8 = fmul float %5, %7
  store float %8, float* %L, align 4
  %9 = load float* %2, align 4
  %10 = load float* %L, align 4
  %11 = fmul float %9, %10
  ret float %11
}

define void @_ZN11b2GearJoint8SetRatioEf(%class.b2GearJoint* %this, float %ratio) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca float, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  store float %ratio, float* %2, align 4
  %3 = load %class.b2GearJoint** %1
  %4 = load float* %2, align 4
  %5 = call zeroext i1 @_Z9b2IsValidf(float %4)
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN11b2GearJoint8SetRatioEf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = load float* %2, align 4
  %11 = getelementptr inbounds %class.b2GearJoint* %3, i32 0, i32 16
  store float %10, float* %11, align 4
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

define float @_ZNK11b2GearJoint8GetRatioEv(%class.b2GearJoint* %this) nounwind align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  %3 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 16
  %4 = load float* %3, align 4
  ret float %4
}

define void @_ZN11b2GearJoint4DumpEv(%class.b2GearJoint* %this) align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  %3 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %4 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  %5 = load %class.b2Body** %4, align 4
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  store i32 %7, i32* %indexA, align 4
  %8 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 7
  %10 = load %class.b2Body** %9, align 4
  %11 = getelementptr inbounds %class.b2Body* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %indexB, align 4
  %13 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 1
  %14 = load %class.b2Joint** %13, align 4
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 8
  %16 = load i32* %15, align 4
  store i32 %16, i32* %index1, align 4
  %17 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 2
  %18 = load %class.b2Joint** %17, align 4
  %19 = getelementptr inbounds %class.b2Joint* %18, i32 0, i32 8
  %20 = load i32* %19, align 4
  store i32 %20, i32* %index2, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([22 x i8]* @.str4, i32 0, i32 0))
  %21 = load i32* %indexA, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i32 %21)
  %22 = load i32* %indexB, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i32 %22)
  %23 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %24 = getelementptr inbounds %class.b2Joint* %23, i32 0, i32 10
  %25 = load i8* %24, align 1
  %26 = trunc i8 %25 to i1
  %27 = zext i1 %26 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str7, i32 0, i32 0), i32 %27)
  %28 = load i32* %index1, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str8, i32 0, i32 0), i32 %28)
  %29 = load i32* %index2, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str9, i32 0, i32 0), i32 %29)
  %30 = getelementptr inbounds %class.b2GearJoint* %2, i32 0, i32 16
  %31 = load float* %30, align 4
  %32 = fpext float %31 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([23 x i8]* @.str10, i32 0, i32 0), double %32)
  %33 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
  %34 = getelementptr inbounds %class.b2Joint* %33, i32 0, i32 8
  %35 = load i32* %34, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([43 x i8]* @.str11, i32 0, i32 0), i32 %35)
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

define linkonce_odr void @_ZN11b2GearJointD1Ev(%class.b2GearJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  call void @_ZN11b2GearJointD2Ev(%class.b2GearJoint* %2)
  ret void
}

define linkonce_odr void @_ZN11b2GearJointD0Ev(%class.b2GearJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %4 = load %class.b2GearJoint** %1
  invoke void @_ZN11b2GearJointD1Ev(%class.b2GearJoint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2GearJoint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2GearJoint* %4 to i8*
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

define linkonce_odr void @_ZN11b2GearJointD2Ev(%class.b2GearJoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2GearJoint*, align 4
  store %class.b2GearJoint* %this, %class.b2GearJoint** %1, align 4
  %2 = load %class.b2GearJoint** %1
  %3 = bitcast %class.b2GearJoint* %2 to %class.b2Joint*
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
