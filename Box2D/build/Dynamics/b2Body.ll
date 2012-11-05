; ModuleID = 'Dynamics/b2Body.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2Vec2 = type { float, float }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2World = type { %class.b2BlockAllocator, %class.b2StackAllocator, i32, %class.b2ContactManager, %class.b2Body*, %class.b2Joint*, i32, i32, %struct.b2Vec2, i8, %class.b2DestructionListener*, %class.b2Draw*, float, i8, i8, i8, i8, %struct.b2Profile }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
%class.b2StackAllocator = type { [102400 x i8], i32, i32, i32, [32 x %struct.b2StackEntry], i32 }
%struct.b2StackEntry = type { i8*, i32, i8 }
%class.b2ContactManager = type { %class.b2BroadPhase, %class.b2Contact*, i32, %class.b2ContactFilter*, %class.b2ContactListener*, %class.b2BlockAllocator* }
%class.b2BroadPhase = type { %class.b2DynamicTree, i32, i32*, i32, i32, %struct.b2Pair*, i32, i32, i32 }
%class.b2DynamicTree = type { i32, %struct.b2TreeNode*, i32, i32, i32, i32, i32 }
%struct.b2TreeNode = type { %struct.b2AABB, i8*, %union.anon, i32, i32, i32 }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%union.anon = type { i32 }
%struct.b2Pair = type { i32, i32, i32 }
%class.b2Contact = type { i32 (...)**, i32, %class.b2Contact*, %class.b2Contact*, %struct.b2ContactEdge, %struct.b2ContactEdge, %class.b2Fixture*, %class.b2Fixture*, i32, i32, %struct.b2Manifold, i32, float, float, float }
%struct.b2ContactEdge = type { %class.b2Body*, %class.b2Contact*, %struct.b2ContactEdge*, %struct.b2ContactEdge* }
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
%class.b2Joint = type { i32 (...)**, i32, %class.b2Joint*, %class.b2Joint*, %struct.b2JointEdge, %struct.b2JointEdge, %class.b2Body*, %class.b2Body*, i32, i8, i8, i8* }
%struct.b2JointEdge = type { %class.b2Body*, %class.b2Joint*, %struct.b2JointEdge*, %struct.b2JointEdge* }
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type opaque
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%struct.b2BodyDef = type { i32, %struct.b2Vec2, float, %struct.b2Vec2, float, float, float, i8, i8, i8, i8, i8, i8*, float }
%struct.b2MassData = type { float, %struct.b2Vec2, float }
%struct.b2FixtureDef = type { %class.b2Shape*, i8*, float, float, float, i8, %struct.b2Filter }

@.str = private unnamed_addr constant [23 x i8] c"bd->position.IsValid()\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"Dynamics/b2Body.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World = private unnamed_addr constant [45 x i8] c"b2Body::b2Body(const b2BodyDef *, b2World *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"bd->linearVelocity.IsValid()\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"b2IsValid(bd->angle)\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"b2IsValid(bd->angularVelocity)\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"b2IsValid(bd->angularDamping) && bd->angularDamping >= 0.0f\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c"b2IsValid(bd->linearDamping) && bd->linearDamping >= 0.0f\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"m_world->IsLocked() == false\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body7SetTypeE10b2BodyType = private unnamed_addr constant [33 x i8] c"void b2Body::SetType(b2BodyType)\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body13CreateFixtureEPK12b2FixtureDef = private unnamed_addr constant [55 x i8] c"b2Fixture *b2Body::CreateFixture(const b2FixtureDef *)\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body14DestroyFixtureEP9b2Fixture = private unnamed_addr constant [41 x i8] c"void b2Body::DestroyFixture(b2Fixture *)\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"fixture->m_body == this\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"m_fixtureCount > 0\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"m_type == b2_dynamicBody\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body13ResetMassDataEv = private unnamed_addr constant [29 x i8] c"void b2Body::ResetMassData()\00", align 1
@b2Vec2_zero = external global %struct.b2Vec2
@.str12 = private unnamed_addr constant [11 x i8] c"m_I > 0.0f\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body11SetMassDataEPK10b2MassData = private unnamed_addr constant [45 x i8] c"void b2Body::SetMassData(const b2MassData *)\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body12SetTransformERK6b2Vec2f = private unnamed_addr constant [51 x i8] c"void b2Body::SetTransform(const b2Vec2 &, float32)\00", align 1
@__PRETTY_FUNCTION__._ZN6b2Body9SetActiveEb = private unnamed_addr constant [29 x i8] c"void b2Body::SetActive(bool)\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"  b2BodyDef bd;\0A\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"  bd.type = b2BodyType(%d);\0A\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"  bd.position.Set(%.15lef, %.15lef);\0A\00", align 1
@.str17 = private unnamed_addr constant [23 x i8] c"  bd.angle = %.15lef;\0A\00", align 1
@.str18 = private unnamed_addr constant [44 x i8] c"  bd.linearVelocity.Set(%.15lef, %.15lef);\0A\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"  bd.angularVelocity = %.15lef;\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"  bd.linearDamping = %.15lef;\0A\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"  bd.angularDamping = %.15lef;\0A\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"  bd.allowSleep = bool(%d);\0A\00", align 1
@.str23 = private unnamed_addr constant [24 x i8] c"  bd.awake = bool(%d);\0A\00", align 1
@.str24 = private unnamed_addr constant [32 x i8] c"  bd.fixedRotation = bool(%d);\0A\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"  bd.bullet = bool(%d);\0A\00", align 1
@.str26 = private unnamed_addr constant [25 x i8] c"  bd.active = bool(%d);\0A\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"  bd.gravityScale = %.15lef;\0A\00", align 1
@.str28 = private unnamed_addr constant [42 x i8] c"  bodies[%d] = m_world->CreateBody(&bd);\0A\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"  {\0A\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

@_ZN6b2BodyC1EPK9b2BodyDefP7b2World = alias void (%class.b2Body*, %struct.b2BodyDef*, %class.b2World*)* @_ZN6b2BodyC2EPK9b2BodyDefP7b2World
@_ZN6b2BodyD1Ev = alias void (%class.b2Body*)* @_ZN6b2BodyD2Ev

define void @_ZN6b2BodyC2EPK9b2BodyDefP7b2World(%class.b2Body* %this, %struct.b2BodyDef* %bd, %class.b2World* %world) unnamed_addr align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2BodyDef*, align 4
  %3 = alloca %class.b2World*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2BodyDef* %bd, %struct.b2BodyDef** %2, align 4
  store %class.b2World* %world, %class.b2World** %3, align 4
  %4 = load %class.b2Body** %1
  %5 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %5)
  %6 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  call void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %6)
  %7 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 5
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  %8 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 7
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %8)
  %9 = load %struct.b2BodyDef** %2, align 4
  %10 = getelementptr inbounds %struct.b2BodyDef* %9, i32 0, i32 1
  %11 = call zeroext i1 @_ZNK6b2Vec27IsValidEv(%struct.b2Vec2* %10)
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 27, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load %struct.b2BodyDef** %2, align 4
  %17 = getelementptr inbounds %struct.b2BodyDef* %16, i32 0, i32 3
  %18 = call zeroext i1 @_ZNK6b2Vec27IsValidEv(%struct.b2Vec2* %17)
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %struct.b2BodyDef** %2, align 4
  %24 = getelementptr inbounds %struct.b2BodyDef* %23, i32 0, i32 2
  %25 = load float* %24, align 4
  %26 = call zeroext i1 @_Z9b2IsValidf(float %25)
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  br label %30

; <label>:28                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.b2BodyDef** %2, align 4
  %32 = getelementptr inbounds %struct.b2BodyDef* %31, i32 0, i32 4
  %33 = load float* %32, align 4
  %34 = call zeroext i1 @_Z9b2IsValidf(float %33)
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %30
  br label %38

; <label>:36                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.b2BodyDef** %2, align 4
  %40 = getelementptr inbounds %struct.b2BodyDef* %39, i32 0, i32 6
  %41 = load float* %40, align 4
  %42 = call zeroext i1 @_Z9b2IsValidf(float %41)
  br i1 %42, label %43, label %49

; <label>:43                                      ; preds = %38
  %44 = load %struct.b2BodyDef** %2, align 4
  %45 = getelementptr inbounds %struct.b2BodyDef* %44, i32 0, i32 6
  %46 = load float* %45, align 4
  %47 = fcmp oge float %46, 0.000000e+00
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %43
  br label %51

; <label>:49                                      ; preds = %43, %38
  call void @__assert_fail(i8* getelementptr inbounds ([60 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = load %struct.b2BodyDef** %2, align 4
  %53 = getelementptr inbounds %struct.b2BodyDef* %52, i32 0, i32 5
  %54 = load float* %53, align 4
  %55 = call zeroext i1 @_Z9b2IsValidf(float %54)
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %51
  %57 = load %struct.b2BodyDef** %2, align 4
  %58 = getelementptr inbounds %struct.b2BodyDef* %57, i32 0, i32 5
  %59 = load float* %58, align 4
  %60 = fcmp oge float %59, 0.000000e+00
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %56
  br label %64

; <label>:62                                      ; preds = %56, %51
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2BodyC2EPK9b2BodyDefP7b2World, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:64                                      ; preds = %63, %61
  %65 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  store i16 0, i16* %65, align 2
  %66 = load %struct.b2BodyDef** %2, align 4
  %67 = getelementptr inbounds %struct.b2BodyDef* %66, i32 0, i32 10
  %68 = load i8* %67, align 1
  %69 = trunc i8 %68 to i1
  br i1 %69, label %70, label %76

; <label>:70                                      ; preds = %64
  %71 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %72 = load i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = or i32 %73, 8
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %71, align 2
  br label %76

; <label>:76                                      ; preds = %70, %64
  %77 = load %struct.b2BodyDef** %2, align 4
  %78 = getelementptr inbounds %struct.b2BodyDef* %77, i32 0, i32 9
  %79 = load i8* %78, align 1
  %80 = trunc i8 %79 to i1
  br i1 %80, label %81, label %87

; <label>:81                                      ; preds = %76
  %82 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %83 = load i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, 16
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %82, align 2
  br label %87

; <label>:87                                      ; preds = %81, %76
  %88 = load %struct.b2BodyDef** %2, align 4
  %89 = getelementptr inbounds %struct.b2BodyDef* %88, i32 0, i32 7
  %90 = load i8* %89, align 1
  %91 = trunc i8 %90 to i1
  br i1 %91, label %92, label %98

; <label>:92                                      ; preds = %87
  %93 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %94 = load i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = or i32 %95, 4
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %93, align 2
  br label %98

; <label>:98                                      ; preds = %92, %87
  %99 = load %struct.b2BodyDef** %2, align 4
  %100 = getelementptr inbounds %struct.b2BodyDef* %99, i32 0, i32 8
  %101 = load i8* %100, align 1
  %102 = trunc i8 %101 to i1
  br i1 %102, label %103, label %109

; <label>:103                                     ; preds = %98
  %104 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %105 = load i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = or i32 %106, 2
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %104, align 2
  br label %109

; <label>:109                                     ; preds = %103, %98
  %110 = load %struct.b2BodyDef** %2, align 4
  %111 = getelementptr inbounds %struct.b2BodyDef* %110, i32 0, i32 11
  %112 = load i8* %111, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %120

; <label>:114                                     ; preds = %109
  %115 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %116 = load i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = or i32 %117, 32
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %115, align 2
  br label %120

; <label>:120                                     ; preds = %114, %109
  %121 = load %class.b2World** %3, align 4
  %122 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  store %class.b2World* %121, %class.b2World** %122, align 4
  %123 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %124 = getelementptr inbounds %struct.b2Transform* %123, i32 0, i32 0
  %125 = load %struct.b2BodyDef** %2, align 4
  %126 = getelementptr inbounds %struct.b2BodyDef* %125, i32 0, i32 1
  %127 = bitcast %struct.b2Vec2* %124 to i8*
  %128 = bitcast %struct.b2Vec2* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %127, i8* %128, i32 8, i32 4, i1 false)
  %129 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %130 = getelementptr inbounds %struct.b2Transform* %129, i32 0, i32 1
  %131 = load %struct.b2BodyDef** %2, align 4
  %132 = getelementptr inbounds %struct.b2BodyDef* %131, i32 0, i32 2
  %133 = load float* %132, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %130, float %133)
  %134 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %135 = getelementptr inbounds %struct.b2Sweep* %134, i32 0, i32 0
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %135)
  %136 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %137 = getelementptr inbounds %struct.b2Sweep* %136, i32 0, i32 1
  %138 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %139 = getelementptr inbounds %struct.b2Transform* %138, i32 0, i32 0
  %140 = bitcast %struct.b2Vec2* %137 to i8*
  %141 = bitcast %struct.b2Vec2* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %141, i32 8, i32 4, i1 false)
  %142 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %143 = getelementptr inbounds %struct.b2Sweep* %142, i32 0, i32 2
  %144 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %145 = getelementptr inbounds %struct.b2Transform* %144, i32 0, i32 0
  %146 = bitcast %struct.b2Vec2* %143 to i8*
  %147 = bitcast %struct.b2Vec2* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %146, i8* %147, i32 8, i32 4, i1 false)
  %148 = load %struct.b2BodyDef** %2, align 4
  %149 = getelementptr inbounds %struct.b2BodyDef* %148, i32 0, i32 2
  %150 = load float* %149, align 4
  %151 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %152 = getelementptr inbounds %struct.b2Sweep* %151, i32 0, i32 3
  store float %150, float* %152, align 4
  %153 = load %struct.b2BodyDef** %2, align 4
  %154 = getelementptr inbounds %struct.b2BodyDef* %153, i32 0, i32 2
  %155 = load float* %154, align 4
  %156 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %157 = getelementptr inbounds %struct.b2Sweep* %156, i32 0, i32 4
  store float %155, float* %157, align 4
  %158 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %159 = getelementptr inbounds %struct.b2Sweep* %158, i32 0, i32 5
  store float 0.000000e+00, float* %159, align 4
  %160 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 14
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %160, align 4
  %161 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 15
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %161, align 4
  %162 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 10
  store %class.b2Body* null, %class.b2Body** %162, align 4
  %163 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 11
  store %class.b2Body* null, %class.b2Body** %163, align 4
  %164 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 5
  %165 = load %struct.b2BodyDef** %2, align 4
  %166 = getelementptr inbounds %struct.b2BodyDef* %165, i32 0, i32 3
  %167 = bitcast %struct.b2Vec2* %164 to i8*
  %168 = bitcast %struct.b2Vec2* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %167, i8* %168, i32 8, i32 4, i1 false)
  %169 = load %struct.b2BodyDef** %2, align 4
  %170 = getelementptr inbounds %struct.b2BodyDef* %169, i32 0, i32 4
  %171 = load float* %170, align 4
  %172 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 6
  store float %171, float* %172, align 4
  %173 = load %struct.b2BodyDef** %2, align 4
  %174 = getelementptr inbounds %struct.b2BodyDef* %173, i32 0, i32 5
  %175 = load float* %174, align 4
  %176 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 20
  store float %175, float* %176, align 4
  %177 = load %struct.b2BodyDef** %2, align 4
  %178 = getelementptr inbounds %struct.b2BodyDef* %177, i32 0, i32 6
  %179 = load float* %178, align 4
  %180 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 21
  store float %179, float* %180, align 4
  %181 = load %struct.b2BodyDef** %2, align 4
  %182 = getelementptr inbounds %struct.b2BodyDef* %181, i32 0, i32 13
  %183 = load float* %182, align 4
  %184 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 22
  store float %183, float* %184, align 4
  %185 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 7
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %185)
  %186 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 8
  store float 0.000000e+00, float* %186, align 4
  %187 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 23
  store float 0.000000e+00, float* %187, align 4
  %188 = load %struct.b2BodyDef** %2, align 4
  %189 = getelementptr inbounds %struct.b2BodyDef* %188, i32 0, i32 0
  %190 = load i32* %189, align 4
  %191 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 0
  store i32 %190, i32* %191, align 4
  %192 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 0
  %193 = load i32* %192, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %198

; <label>:195                                     ; preds = %120
  %196 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 16
  store float 1.000000e+00, float* %196, align 4
  %197 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 17
  store float 1.000000e+00, float* %197, align 4
  br label %201

; <label>:198                                     ; preds = %120
  %199 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 16
  store float 0.000000e+00, float* %199, align 4
  %200 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 17
  store float 0.000000e+00, float* %200, align 4
  br label %201

; <label>:201                                     ; preds = %198, %195
  %202 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 18
  store float 0.000000e+00, float* %202, align 4
  %203 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 19
  store float 0.000000e+00, float* %203, align 4
  %204 = load %struct.b2BodyDef** %2, align 4
  %205 = getelementptr inbounds %struct.b2BodyDef* %204, i32 0, i32 12
  %206 = load i8** %205, align 4
  %207 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 24
  store i8* %206, i8** %207, align 4
  %208 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  store %class.b2Fixture* null, %class.b2Fixture** %208, align 4
  %209 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 13
  store i32 0, i32* %209, align 4
  ret void
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
  ret void
}

define linkonce_odr void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  call void @_ZN7b2SweepC2Ev(%struct.b2Sweep* %2)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
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

define void @_ZN6b2BodyD2Ev(%class.b2Body* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  ret void
}

define void @_ZN6b2Body7SetTypeE10b2BodyType(%class.b2Body* %this, i32 %type) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca i32, align 4
  %f = alloca %class.b2Fixture*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store i32 %type, i32* %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %5 = load %class.b2World** %4, align 4
  %6 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %5)
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body7SetTypeE10b2BodyType, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %14 = load %class.b2World** %13, align 4
  %15 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %14)
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %12
  br label %59

; <label>:19                                      ; preds = %12
  %20 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 0
  %21 = load i32* %20, align 4
  %22 = load i32* %2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %19
  br label %59

; <label>:25                                      ; preds = %19
  %26 = load i32* %2, align 4
  %27 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  call void @_ZN6b2Body13ResetMassDataEv(%class.b2Body* %3)
  %28 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 0
  %29 = load i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

; <label>:31                                      ; preds = %25
  %32 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 5
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %32)
  %33 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 6
  store float 0.000000e+00, float* %33, align 4
  %34 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 4
  %35 = getelementptr inbounds %struct.b2Sweep* %34, i32 0, i32 4
  %36 = load float* %35, align 4
  %37 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 4
  %38 = getelementptr inbounds %struct.b2Sweep* %37, i32 0, i32 3
  store float %36, float* %38, align 4
  %39 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 4
  %40 = getelementptr inbounds %struct.b2Sweep* %39, i32 0, i32 1
  %41 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 4
  %42 = getelementptr inbounds %struct.b2Sweep* %41, i32 0, i32 2
  %43 = bitcast %struct.b2Vec2* %40 to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  call void @_ZN6b2Body19SynchronizeFixturesEv(%class.b2Body* %3)
  br label %45

; <label>:45                                      ; preds = %31, %25
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %3, i1 zeroext true)
  %46 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 7
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %46)
  %47 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 8
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 12
  %49 = load %class.b2Fixture** %48, align 4
  store %class.b2Fixture* %49, %class.b2Fixture** %f, align 4
  br label %50

; <label>:50                                      ; preds = %55, %45
  %51 = load %class.b2Fixture** %f, align 4
  %52 = icmp ne %class.b2Fixture* %51, null
  br i1 %52, label %53, label %59

; <label>:53                                      ; preds = %50
  %54 = load %class.b2Fixture** %f, align 4
  call void @_ZN9b2Fixture8RefilterEv(%class.b2Fixture* %54)
  br label %55

; <label>:55                                      ; preds = %53
  %56 = load %class.b2Fixture** %f, align 4
  %57 = getelementptr inbounds %class.b2Fixture* %56, i32 0, i32 1
  %58 = load %class.b2Fixture** %57, align 4
  store %class.b2Fixture* %58, %class.b2Fixture** %f, align 4
  br label %50

; <label>:59                                      ; preds = %18, %24, %50
  ret void
}

define linkonce_odr zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2World*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 2
  ret i1 %6
}

define void @_ZN6b2Body13ResetMassDataEv(%class.b2Body* %this) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %localCenter = alloca %struct.b2Vec2, align 4
  %f = alloca %class.b2Fixture*, align 4
  %massData = alloca %struct.b2MassData, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %oldCenter = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %6 = load %class.b2Body** %1
  %7 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 19
  store float 0.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %12 = getelementptr inbounds %struct.b2Sweep* %11, i32 0, i32 0
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %12)
  %13 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 0
  %18 = load i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %38

; <label>:20                                      ; preds = %16, %0
  %21 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %22 = getelementptr inbounds %struct.b2Sweep* %21, i32 0, i32 1
  %23 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 3
  %24 = getelementptr inbounds %struct.b2Transform* %23, i32 0, i32 0
  %25 = bitcast %struct.b2Vec2* %22 to i8*
  %26 = bitcast %struct.b2Vec2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 4, i1 false)
  %27 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %28 = getelementptr inbounds %struct.b2Sweep* %27, i32 0, i32 2
  %29 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 3
  %30 = getelementptr inbounds %struct.b2Transform* %29, i32 0, i32 0
  %31 = bitcast %struct.b2Vec2* %28 to i8*
  %32 = bitcast %struct.b2Vec2* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %33 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %34 = getelementptr inbounds %struct.b2Sweep* %33, i32 0, i32 4
  %35 = load float* %34, align 4
  %36 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %37 = getelementptr inbounds %struct.b2Sweep* %36, i32 0, i32 3
  store float %35, float* %37, align 4
  br label %148

; <label>:38                                      ; preds = %16
  %39 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 0
  %40 = load i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  br label %45

; <label>:43                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body13ResetMassDataEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = bitcast %struct.b2Vec2* %localCenter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* bitcast (%struct.b2Vec2* @b2Vec2_zero to i8*), i32 8, i32 4, i1 false)
  %47 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 12
  %48 = load %class.b2Fixture** %47, align 4
  store %class.b2Fixture* %48, %class.b2Fixture** %f, align 4
  br label %49

; <label>:49                                      ; preds = %73, %45
  %50 = load %class.b2Fixture** %f, align 4
  %51 = icmp ne %class.b2Fixture* %50, null
  br i1 %51, label %52, label %77

; <label>:52                                      ; preds = %49
  %53 = load %class.b2Fixture** %f, align 4
  %54 = getelementptr inbounds %class.b2Fixture* %53, i32 0, i32 0
  %55 = load float* %54, align 4
  %56 = fcmp oeq float %55, 0.000000e+00
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %52
  br label %73

; <label>:58                                      ; preds = %52
  call void @_ZN10b2MassDataC1Ev(%struct.b2MassData* %massData)
  %59 = load %class.b2Fixture** %f, align 4
  call void @_ZNK9b2Fixture11GetMassDataEP10b2MassData(%class.b2Fixture* %59, %struct.b2MassData* %massData)
  %60 = getelementptr inbounds %struct.b2MassData* %massData, i32 0, i32 0
  %61 = load float* %60, align 4
  %62 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %63 = load float* %62, align 4
  %64 = fadd float %63, %61
  store float %64, float* %62, align 4
  %65 = getelementptr inbounds %struct.b2MassData* %massData, i32 0, i32 0
  %66 = load float* %65, align 4
  %67 = getelementptr inbounds %struct.b2MassData* %massData, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %2, float %66, %struct.b2Vec2* %67)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %localCenter, %struct.b2Vec2* %2)
  %68 = getelementptr inbounds %struct.b2MassData* %massData, i32 0, i32 2
  %69 = load float* %68, align 4
  %70 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %71 = load float* %70, align 4
  %72 = fadd float %71, %69
  store float %72, float* %70, align 4
  br label %73

; <label>:73                                      ; preds = %58, %57
  %74 = load %class.b2Fixture** %f, align 4
  %75 = getelementptr inbounds %class.b2Fixture* %74, i32 0, i32 1
  %76 = load %class.b2Fixture** %75, align 4
  store %class.b2Fixture* %76, %class.b2Fixture** %f, align 4
  br label %49

; <label>:77                                      ; preds = %49
  %78 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %79 = load float* %78, align 4
  %80 = fcmp ogt float %79, 0.000000e+00
  br i1 %80, label %81, label %88

; <label>:81                                      ; preds = %77
  %82 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %83 = load float* %82, align 4
  %84 = fdiv float 1.000000e+00, %83
  %85 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  store float %84, float* %85, align 4
  %86 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  %87 = load float* %86, align 4
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %localCenter, float %87)
  br label %91

; <label>:88                                      ; preds = %77
  %89 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  store float 1.000000e+00, float* %89, align 4
  %90 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  store float 1.000000e+00, float* %90, align 4
  br label %91

; <label>:91                                      ; preds = %88, %81
  %92 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %93 = load float* %92, align 4
  %94 = fcmp ogt float %93, 0.000000e+00
  br i1 %94, label %95, label %120

; <label>:95                                      ; preds = %91
  %96 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 1
  %97 = load i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %120

; <label>:101                                     ; preds = %95
  %102 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %103 = load float* %102, align 4
  %104 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %localCenter, %struct.b2Vec2* %localCenter)
  %105 = fmul float %103, %104
  %106 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %107 = load float* %106, align 4
  %108 = fsub float %107, %105
  store float %108, float* %106, align 4
  %109 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %110 = load float* %109, align 4
  %111 = fcmp ogt float %110, 0.000000e+00
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %101
  br label %115

; <label>:113                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 319, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body13ResetMassDataEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %117 = load float* %116, align 4
  %118 = fdiv float 1.000000e+00, %117
  %119 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 19
  store float %118, float* %119, align 4
  br label %123

; <label>:120                                     ; preds = %95, %91
  %121 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  store float 0.000000e+00, float* %121, align 4
  %122 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 19
  store float 0.000000e+00, float* %122, align 4
  br label %123

; <label>:123                                     ; preds = %120, %115
  %124 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %125 = getelementptr inbounds %struct.b2Sweep* %124, i32 0, i32 2
  %126 = bitcast %struct.b2Vec2* %oldCenter to i8*
  %127 = bitcast %struct.b2Vec2* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %126, i8* %127, i32 8, i32 4, i1 false)
  %128 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %129 = getelementptr inbounds %struct.b2Sweep* %128, i32 0, i32 0
  %130 = bitcast %struct.b2Vec2* %129 to i8*
  %131 = bitcast %struct.b2Vec2* %localCenter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %130, i8* %131, i32 8, i32 4, i1 false)
  %132 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %133 = getelementptr inbounds %struct.b2Sweep* %132, i32 0, i32 1
  %134 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %135 = getelementptr inbounds %struct.b2Sweep* %134, i32 0, i32 2
  %136 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 3
  %137 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %138 = getelementptr inbounds %struct.b2Sweep* %137, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Transform* %136, %struct.b2Vec2* %138)
  %139 = bitcast %struct.b2Vec2* %135 to i8*
  %140 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %139, i8* %140, i32 8, i32 4, i1 false)
  %141 = bitcast %struct.b2Vec2* %133 to i8*
  %142 = bitcast %struct.b2Vec2* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %141, i8* %142, i32 8, i32 4, i1 false)
  %143 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 5
  %144 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 6
  %145 = load float* %144, align 4
  %146 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %147 = getelementptr inbounds %struct.b2Sweep* %146, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %147, %struct.b2Vec2* %oldCenter)
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %145, %struct.b2Vec2* %5)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %143, %struct.b2Vec2* %4)
  br label %148

; <label>:148                                     ; preds = %123, %20
  ret void
}

define void @_ZN6b2Body19SynchronizeFixturesEv(%class.b2Body* %this) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %xf1 = alloca %struct.b2Transform, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  %f = alloca %class.b2Fixture*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %4 = load %class.b2Body** %1
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xf1)
  %5 = getelementptr inbounds %struct.b2Transform* %xf1, i32 0, i32 1
  %6 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %7 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 3
  %8 = load float* %7, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %5, float %8)
  %9 = getelementptr inbounds %struct.b2Transform* %xf1, i32 0, i32 0
  %10 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.b2Sweep* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.b2Transform* %xf1, i32 0, i32 1
  %13 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.b2Sweep* %13, i32 0, i32 0
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %12, %struct.b2Vec2* %14)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %11, %struct.b2Vec2* %3)
  %15 = bitcast %struct.b2Vec2* %9 to i8*
  %16 = bitcast %struct.b2Vec2* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 8, i32 4, i1 false)
  %17 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %18 = load %class.b2World** %17, align 4
  %19 = getelementptr inbounds %class.b2World* %18, i32 0, i32 3
  %20 = getelementptr inbounds %class.b2ContactManager* %19, i32 0, i32 0
  store %class.b2BroadPhase* %20, %class.b2BroadPhase** %broadPhase, align 4
  %21 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  %22 = load %class.b2Fixture** %21, align 4
  store %class.b2Fixture* %22, %class.b2Fixture** %f, align 4
  br label %23

; <label>:23                                      ; preds = %30, %0
  %24 = load %class.b2Fixture** %f, align 4
  %25 = icmp ne %class.b2Fixture* %24, null
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %23
  %27 = load %class.b2Fixture** %f, align 4
  %28 = load %class.b2BroadPhase** %broadPhase, align 4
  %29 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  call void @_ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_(%class.b2Fixture* %27, %class.b2BroadPhase* %28, %struct.b2Transform* %xf1, %struct.b2Transform* %29)
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load %class.b2Fixture** %f, align 4
  %32 = getelementptr inbounds %class.b2Fixture* %31, i32 0, i32 1
  %33 = load %class.b2Fixture** %32, align 4
  store %class.b2Fixture* %33, %class.b2Fixture** %f, align 4
  br label %23

; <label>:34                                      ; preds = %23
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

declare void @_ZN9b2Fixture8RefilterEv(%class.b2Fixture*)

define %class.b2Fixture* @_ZN6b2Body13CreateFixtureEPK12b2FixtureDef(%class.b2Body* %this, %struct.b2FixtureDef* %def) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %struct.b2FixtureDef*, align 4
  %allocator = alloca %class.b2BlockAllocator*, align 4
  %memory = alloca i8*, align 4
  %fixture = alloca %class.b2Fixture*, align 4
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  store %class.b2Body* %this, %class.b2Body** %2, align 4
  store %struct.b2FixtureDef* %def, %struct.b2FixtureDef** %3, align 4
  %4 = load %class.b2Body** %2
  %5 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %6 = load %class.b2World** %5, align 4
  %7 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %6)
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([55 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body13CreateFixtureEPK12b2FixtureDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %15 = load %class.b2World** %14, align 4
  %16 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %15)
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %13
  store %class.b2Fixture* null, %class.b2Fixture** %1
  br label %72

; <label>:20                                      ; preds = %13
  %21 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %22 = load %class.b2World** %21, align 4
  %23 = getelementptr inbounds %class.b2World* %22, i32 0, i32 0
  store %class.b2BlockAllocator* %23, %class.b2BlockAllocator** %allocator, align 4
  %24 = load %class.b2BlockAllocator** %allocator, align 4
  %25 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %24, i32 44)
  store i8* %25, i8** %memory, align 4
  %26 = load i8** %memory, align 4
  %27 = icmp eq i8* %26, null
  br i1 %27, label %30, label %28

; <label>:28                                      ; preds = %20
  %29 = bitcast i8* %26 to %class.b2Fixture*
  call void @_ZN9b2FixtureC1Ev(%class.b2Fixture* %29)
  br label %30

; <label>:30                                      ; preds = %28, %20
  %31 = phi %class.b2Fixture* [ %29, %28 ], [ null, %20 ]
  store %class.b2Fixture* %31, %class.b2Fixture** %fixture, align 4
  %32 = load %class.b2Fixture** %fixture, align 4
  %33 = load %class.b2BlockAllocator** %allocator, align 4
  %34 = load %struct.b2FixtureDef** %3, align 4
  call void @_ZN9b2Fixture6CreateEP16b2BlockAllocatorP6b2BodyPK12b2FixtureDef(%class.b2Fixture* %32, %class.b2BlockAllocator* %33, %class.b2Body* %4, %struct.b2FixtureDef* %34)
  %35 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %36 = load i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %30
  %41 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %42 = load %class.b2World** %41, align 4
  %43 = getelementptr inbounds %class.b2World* %42, i32 0, i32 3
  %44 = getelementptr inbounds %class.b2ContactManager* %43, i32 0, i32 0
  store %class.b2BroadPhase* %44, %class.b2BroadPhase** %broadPhase, align 4
  %45 = load %class.b2Fixture** %fixture, align 4
  %46 = load %class.b2BroadPhase** %broadPhase, align 4
  %47 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  call void @_ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform(%class.b2Fixture* %45, %class.b2BroadPhase* %46, %struct.b2Transform* %47)
  br label %48

; <label>:48                                      ; preds = %40, %30
  %49 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  %50 = load %class.b2Fixture** %49, align 4
  %51 = load %class.b2Fixture** %fixture, align 4
  %52 = getelementptr inbounds %class.b2Fixture* %51, i32 0, i32 1
  store %class.b2Fixture* %50, %class.b2Fixture** %52, align 4
  %53 = load %class.b2Fixture** %fixture, align 4
  %54 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  store %class.b2Fixture* %53, %class.b2Fixture** %54, align 4
  %55 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 13
  %56 = load i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %class.b2Fixture** %fixture, align 4
  %59 = getelementptr inbounds %class.b2Fixture* %58, i32 0, i32 2
  store %class.b2Body* %4, %class.b2Body** %59, align 4
  %60 = load %class.b2Fixture** %fixture, align 4
  %61 = getelementptr inbounds %class.b2Fixture* %60, i32 0, i32 0
  %62 = load float* %61, align 4
  %63 = fcmp ogt float %62, 0.000000e+00
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %48
  call void @_ZN6b2Body13ResetMassDataEv(%class.b2Body* %4)
  br label %65

; <label>:65                                      ; preds = %64, %48
  %66 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %67 = load %class.b2World** %66, align 4
  %68 = getelementptr inbounds %class.b2World* %67, i32 0, i32 2
  %69 = load i32* %68, align 4
  %70 = or i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %class.b2Fixture** %fixture, align 4
  store %class.b2Fixture* %71, %class.b2Fixture** %1
  br label %72

; <label>:72                                      ; preds = %65, %19
  %73 = load %class.b2Fixture** %1
  ret %class.b2Fixture* %73
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

declare void @_ZN9b2FixtureC1Ev(%class.b2Fixture*)

declare void @_ZN9b2Fixture6CreateEP16b2BlockAllocatorP6b2BodyPK12b2FixtureDef(%class.b2Fixture*, %class.b2BlockAllocator*, %class.b2Body*, %struct.b2FixtureDef*)

declare void @_ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform(%class.b2Fixture*, %class.b2BroadPhase*, %struct.b2Transform*)

define %class.b2Fixture* @_ZN6b2Body13CreateFixtureEPK7b2Shapef(%class.b2Body* %this, %class.b2Shape* %shape, float %density) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %class.b2Shape*, align 4
  %3 = alloca float, align 4
  %def = alloca %struct.b2FixtureDef, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %class.b2Shape* %shape, %class.b2Shape** %2, align 4
  store float %density, float* %3, align 4
  %4 = load %class.b2Body** %1
  call void @_ZN12b2FixtureDefC1Ev(%struct.b2FixtureDef* %def)
  %5 = load %class.b2Shape** %2, align 4
  %6 = getelementptr inbounds %struct.b2FixtureDef* %def, i32 0, i32 0
  store %class.b2Shape* %5, %class.b2Shape** %6, align 4
  %7 = load float* %3, align 4
  %8 = getelementptr inbounds %struct.b2FixtureDef* %def, i32 0, i32 4
  store float %7, float* %8, align 4
  %9 = call %class.b2Fixture* @_ZN6b2Body13CreateFixtureEPK12b2FixtureDef(%class.b2Body* %4, %struct.b2FixtureDef* %def)
  ret %class.b2Fixture* %9
}

define linkonce_odr void @_ZN12b2FixtureDefC1Ev(%struct.b2FixtureDef* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2FixtureDef*, align 4
  store %struct.b2FixtureDef* %this, %struct.b2FixtureDef** %1, align 4
  %2 = load %struct.b2FixtureDef** %1
  call void @_ZN12b2FixtureDefC2Ev(%struct.b2FixtureDef* %2)
  ret void
}

define void @_ZN6b2Body14DestroyFixtureEP9b2Fixture(%class.b2Body* %this, %class.b2Fixture* %fixture) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %node = alloca %class.b2Fixture**, align 4
  %found = alloca i8, align 1
  %edge = alloca %struct.b2ContactEdge*, align 4
  %c = alloca %class.b2Contact*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %allocator = alloca %class.b2BlockAllocator*, align 4
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %class.b2Fixture* %fixture, %class.b2Fixture** %2, align 4
  %3 = load %class.b2Body** %1
  %4 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %5 = load %class.b2World** %4, align 4
  %6 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %5)
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([41 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body14DestroyFixtureEP9b2Fixture, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %14 = load %class.b2World** %13, align 4
  %15 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %14)
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %12
  br label %120

; <label>:19                                      ; preds = %12
  %20 = load %class.b2Fixture** %2, align 4
  %21 = getelementptr inbounds %class.b2Fixture* %20, i32 0, i32 2
  %22 = load %class.b2Body** %21, align 4
  %23 = icmp eq %class.b2Body* %22, %3
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %19
  br label %27

; <label>:25                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([41 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body14DestroyFixtureEP9b2Fixture, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  %28 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 13
  %29 = load i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %27
  br label %34

; <label>:32                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([41 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body14DestroyFixtureEP9b2Fixture, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 12
  store %class.b2Fixture** %35, %class.b2Fixture*** %node, align 4
  store i8 0, i8* %found, align 1
  br label %36

; <label>:36                                      ; preds = %50, %34
  %37 = load %class.b2Fixture*** %node, align 4
  %38 = load %class.b2Fixture** %37
  %39 = icmp ne %class.b2Fixture* %38, null
  br i1 %39, label %40, label %54

; <label>:40                                      ; preds = %36
  %41 = load %class.b2Fixture*** %node, align 4
  %42 = load %class.b2Fixture** %41
  %43 = load %class.b2Fixture** %2, align 4
  %44 = icmp eq %class.b2Fixture* %42, %43
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %40
  %46 = load %class.b2Fixture** %2, align 4
  %47 = getelementptr inbounds %class.b2Fixture* %46, i32 0, i32 1
  %48 = load %class.b2Fixture** %47, align 4
  %49 = load %class.b2Fixture*** %node, align 4
  store %class.b2Fixture* %48, %class.b2Fixture** %49
  store i8 1, i8* %found, align 1
  br label %54

; <label>:50                                      ; preds = %40
  %51 = load %class.b2Fixture*** %node, align 4
  %52 = load %class.b2Fixture** %51
  %53 = getelementptr inbounds %class.b2Fixture* %52, i32 0, i32 1
  store %class.b2Fixture** %53, %class.b2Fixture*** %node, align 4
  br label %36

; <label>:54                                      ; preds = %45, %36
  %55 = load i8* %found, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 226, i8* getelementptr inbounds ([41 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body14DestroyFixtureEP9b2Fixture, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 15
  %62 = load %struct.b2ContactEdge** %61, align 4
  store %struct.b2ContactEdge* %62, %struct.b2ContactEdge** %edge, align 4
  br label %63

; <label>:63                                      ; preds = %89, %60
  %64 = load %struct.b2ContactEdge** %edge, align 4
  %65 = icmp ne %struct.b2ContactEdge* %64, null
  br i1 %65, label %66, label %90

; <label>:66                                      ; preds = %63
  %67 = load %struct.b2ContactEdge** %edge, align 4
  %68 = getelementptr inbounds %struct.b2ContactEdge* %67, i32 0, i32 1
  %69 = load %class.b2Contact** %68, align 4
  store %class.b2Contact* %69, %class.b2Contact** %c, align 4
  %70 = load %struct.b2ContactEdge** %edge, align 4
  %71 = getelementptr inbounds %struct.b2ContactEdge* %70, i32 0, i32 3
  %72 = load %struct.b2ContactEdge** %71, align 4
  store %struct.b2ContactEdge* %72, %struct.b2ContactEdge** %edge, align 4
  %73 = load %class.b2Contact** %c, align 4
  %74 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %73)
  store %class.b2Fixture* %74, %class.b2Fixture** %fixtureA, align 4
  %75 = load %class.b2Contact** %c, align 4
  %76 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %75)
  store %class.b2Fixture* %76, %class.b2Fixture** %fixtureB, align 4
  %77 = load %class.b2Fixture** %2, align 4
  %78 = load %class.b2Fixture** %fixtureA, align 4
  %79 = icmp eq %class.b2Fixture* %77, %78
  br i1 %79, label %84, label %80

; <label>:80                                      ; preds = %66
  %81 = load %class.b2Fixture** %2, align 4
  %82 = load %class.b2Fixture** %fixtureB, align 4
  %83 = icmp eq %class.b2Fixture* %81, %82
  br i1 %83, label %84, label %89

; <label>:84                                      ; preds = %80, %66
  %85 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %86 = load %class.b2World** %85, align 4
  %87 = getelementptr inbounds %class.b2World* %86, i32 0, i32 3
  %88 = load %class.b2Contact** %c, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %87, %class.b2Contact* %88)
  br label %89

; <label>:89                                      ; preds = %84, %80
  br label %63

; <label>:90                                      ; preds = %63
  %91 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %92 = load %class.b2World** %91, align 4
  %93 = getelementptr inbounds %class.b2World* %92, i32 0, i32 0
  store %class.b2BlockAllocator* %93, %class.b2BlockAllocator** %allocator, align 4
  %94 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 1
  %95 = load i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

; <label>:99                                      ; preds = %90
  %100 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 9
  %101 = load %class.b2World** %100, align 4
  %102 = getelementptr inbounds %class.b2World* %101, i32 0, i32 3
  %103 = getelementptr inbounds %class.b2ContactManager* %102, i32 0, i32 0
  store %class.b2BroadPhase* %103, %class.b2BroadPhase** %broadPhase, align 4
  %104 = load %class.b2Fixture** %2, align 4
  %105 = load %class.b2BroadPhase** %broadPhase, align 4
  call void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture* %104, %class.b2BroadPhase* %105)
  br label %106

; <label>:106                                     ; preds = %99, %90
  %107 = load %class.b2Fixture** %2, align 4
  %108 = load %class.b2BlockAllocator** %allocator, align 4
  call void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture* %107, %class.b2BlockAllocator* %108)
  %109 = load %class.b2Fixture** %2, align 4
  %110 = getelementptr inbounds %class.b2Fixture* %109, i32 0, i32 2
  store %class.b2Body* null, %class.b2Body** %110, align 4
  %111 = load %class.b2Fixture** %2, align 4
  %112 = getelementptr inbounds %class.b2Fixture* %111, i32 0, i32 1
  store %class.b2Fixture* null, %class.b2Fixture** %112, align 4
  %113 = load %class.b2Fixture** %2, align 4
  %114 = load %class.b2BlockAllocator** %allocator, align 4
  %115 = load %class.b2Fixture** %2, align 4
  %116 = bitcast %class.b2Fixture* %115 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %114, i8* %116, i32 44)
  %117 = getelementptr inbounds %class.b2Body* %3, i32 0, i32 13
  %118 = load i32* %117, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 4
  call void @_ZN6b2Body13ResetMassDataEv(%class.b2Body* %3)
  br label %120

; <label>:120                                     ; preds = %106, %18
  ret void
}

define linkonce_odr %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 6
  %4 = load %class.b2Fixture** %3, align 4
  ret %class.b2Fixture* %4
}

define linkonce_odr %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 7
  %4 = load %class.b2Fixture** %3, align 4
  ret %class.b2Fixture* %4
}

declare void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager*, %class.b2Contact*)

declare void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture*, %class.b2BroadPhase*)

declare void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture*, %class.b2BlockAllocator*)

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

define linkonce_odr void @_ZN10b2MassDataC1Ev(%struct.b2MassData* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2MassData*, align 4
  store %struct.b2MassData* %this, %struct.b2MassData** %1, align 4
  %2 = load %struct.b2MassData** %1
  call void @_ZN10b2MassDataC2Ev(%struct.b2MassData* %2)
  ret void
}

define linkonce_odr void @_ZNK9b2Fixture11GetMassDataEP10b2MassData(%class.b2Fixture* %this, %struct.b2MassData* %massData) inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  %3 = load %class.b2Fixture** %1
  %4 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %5 = load %class.b2Shape** %4, align 4
  %6 = bitcast %class.b2Shape* %5 to void (%class.b2Shape*, %struct.b2MassData*, float)***
  %7 = load void (%class.b2Shape*, %struct.b2MassData*, float)*** %6
  %8 = getelementptr inbounds void (%class.b2Shape*, %struct.b2MassData*, float)** %7, i64 7
  %9 = load void (%class.b2Shape*, %struct.b2MassData*, float)** %8
  %10 = load %struct.b2MassData** %2, align 4
  %11 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 0
  %12 = load float* %11, align 4
  call void %9(%class.b2Shape* %5, %struct.b2MassData* %10, float %12)
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

define void @_ZN6b2Body11SetMassDataEPK10b2MassData(%class.b2Body* %this, %struct.b2MassData* %massData) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2MassData*, align 4
  %oldCenter = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2MassData* %massData, %struct.b2MassData** %2, align 4
  %6 = load %class.b2Body** %1
  %7 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 9
  %8 = load %class.b2World** %7, align 4
  %9 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %8)
  %10 = zext i1 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 340, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body11SetMassDataEPK10b2MassData, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 9
  %17 = load %class.b2World** %16, align 4
  %18 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %17)
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %15
  br label %107

; <label>:22                                      ; preds = %15
  %23 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 0
  %24 = load i32* %23, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %22
  br label %107

; <label>:27                                      ; preds = %22
  %28 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  store float 0.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 19
  store float 0.000000e+00, float* %30, align 4
  %31 = load %struct.b2MassData** %2, align 4
  %32 = getelementptr inbounds %struct.b2MassData* %31, i32 0, i32 0
  %33 = load float* %32, align 4
  %34 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  store float %33, float* %34, align 4
  %35 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %36 = load float* %35, align 4
  %37 = fcmp ole float %36, 0.000000e+00
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %27
  %39 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  store float 1.000000e+00, float* %39, align 4
  br label %40

; <label>:40                                      ; preds = %38, %27
  %41 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %42 = load float* %41, align 4
  %43 = fdiv float 1.000000e+00, %42
  %44 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 17
  store float %43, float* %44, align 4
  %45 = load %struct.b2MassData** %2, align 4
  %46 = getelementptr inbounds %struct.b2MassData* %45, i32 0, i32 2
  %47 = load float* %46, align 4
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %80

; <label>:49                                      ; preds = %40
  %50 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 1
  %51 = load i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %80

; <label>:55                                      ; preds = %49
  %56 = load %struct.b2MassData** %2, align 4
  %57 = getelementptr inbounds %struct.b2MassData* %56, i32 0, i32 2
  %58 = load float* %57, align 4
  %59 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 16
  %60 = load float* %59, align 4
  %61 = load %struct.b2MassData** %2, align 4
  %62 = getelementptr inbounds %struct.b2MassData* %61, i32 0, i32 1
  %63 = load %struct.b2MassData** %2, align 4
  %64 = getelementptr inbounds %struct.b2MassData* %63, i32 0, i32 1
  %65 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %62, %struct.b2Vec2* %64)
  %66 = fmul float %60, %65
  %67 = fsub float %58, %66
  %68 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  store float %67, float* %68, align 4
  %69 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %70 = load float* %69, align 4
  %71 = fcmp ogt float %70, 0.000000e+00
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %55
  br label %75

; <label>:73                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body11SetMassDataEPK10b2MassData, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %75

; <label>:75                                      ; preds = %74, %72
  %76 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 18
  %77 = load float* %76, align 4
  %78 = fdiv float 1.000000e+00, %77
  %79 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 19
  store float %78, float* %79, align 4
  br label %80

; <label>:80                                      ; preds = %75, %49, %40
  %81 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %82 = getelementptr inbounds %struct.b2Sweep* %81, i32 0, i32 2
  %83 = bitcast %struct.b2Vec2* %oldCenter to i8*
  %84 = bitcast %struct.b2Vec2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 8, i32 4, i1 false)
  %85 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %86 = getelementptr inbounds %struct.b2Sweep* %85, i32 0, i32 0
  %87 = load %struct.b2MassData** %2, align 4
  %88 = getelementptr inbounds %struct.b2MassData* %87, i32 0, i32 1
  %89 = bitcast %struct.b2Vec2* %86 to i8*
  %90 = bitcast %struct.b2Vec2* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 8, i32 4, i1 false)
  %91 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %92 = getelementptr inbounds %struct.b2Sweep* %91, i32 0, i32 1
  %93 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %94 = getelementptr inbounds %struct.b2Sweep* %93, i32 0, i32 2
  %95 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 3
  %96 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %97 = getelementptr inbounds %struct.b2Sweep* %96, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Transform* %95, %struct.b2Vec2* %97)
  %98 = bitcast %struct.b2Vec2* %94 to i8*
  %99 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %99, i32 8, i32 4, i1 false)
  %100 = bitcast %struct.b2Vec2* %92 to i8*
  %101 = bitcast %struct.b2Vec2* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %100, i8* %101, i32 8, i32 4, i1 false)
  %102 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 5
  %103 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 6
  %104 = load float* %103, align 4
  %105 = getelementptr inbounds %class.b2Body* %6, i32 0, i32 4
  %106 = getelementptr inbounds %struct.b2Sweep* %105, i32 0, i32 2
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %106, %struct.b2Vec2* %oldCenter)
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %104, %struct.b2Vec2* %5)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %102, %struct.b2Vec2* %4)
  br label %107

; <label>:107                                     ; preds = %80, %26, %21
  ret void
}

define zeroext i1 @_ZNK6b2Body13ShouldCollideEPKS_(%class.b2Body* %this, %class.b2Body* %other) nounwind align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2Body*, align 4
  %3 = alloca %class.b2Body*, align 4
  %jn = alloca %struct.b2JointEdge*, align 4
  store %class.b2Body* %this, %class.b2Body** %2, align 4
  store %class.b2Body* %other, %class.b2Body** %3, align 4
  %4 = load %class.b2Body** %2
  %5 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load %class.b2Body** %3, align 4
  %10 = getelementptr inbounds %class.b2Body* %9, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  store i1 false, i1* %1
  br label %43

; <label>:14                                      ; preds = %8, %0
  %15 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 14
  %16 = load %struct.b2JointEdge** %15, align 4
  store %struct.b2JointEdge* %16, %struct.b2JointEdge** %jn, align 4
  br label %17

; <label>:17                                      ; preds = %38, %14
  %18 = load %struct.b2JointEdge** %jn, align 4
  %19 = icmp ne %struct.b2JointEdge* %18, null
  br i1 %19, label %20, label %42

; <label>:20                                      ; preds = %17
  %21 = load %struct.b2JointEdge** %jn, align 4
  %22 = getelementptr inbounds %struct.b2JointEdge* %21, i32 0, i32 0
  %23 = load %class.b2Body** %22, align 4
  %24 = load %class.b2Body** %3, align 4
  %25 = icmp eq %class.b2Body* %23, %24
  br i1 %25, label %26, label %37

; <label>:26                                      ; preds = %20
  %27 = load %struct.b2JointEdge** %jn, align 4
  %28 = getelementptr inbounds %struct.b2JointEdge* %27, i32 0, i32 1
  %29 = load %class.b2Joint** %28, align 4
  %30 = getelementptr inbounds %class.b2Joint* %29, i32 0, i32 10
  %31 = load i8* %30, align 1
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %26
  store i1 false, i1* %1
  br label %43

; <label>:36                                      ; preds = %26
  br label %37

; <label>:37                                      ; preds = %36, %20
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load %struct.b2JointEdge** %jn, align 4
  %40 = getelementptr inbounds %struct.b2JointEdge* %39, i32 0, i32 3
  %41 = load %struct.b2JointEdge** %40, align 4
  store %struct.b2JointEdge* %41, %struct.b2JointEdge** %jn, align 4
  br label %17

; <label>:42                                      ; preds = %17
  store i1 true, i1* %1
  br label %43

; <label>:43                                      ; preds = %42, %35, %13
  %44 = load i1* %1
  ret i1 %44
}

define void @_ZN6b2Body12SetTransformERK6b2Vec2f(%class.b2Body* %this, %struct.b2Vec2* %position, float %angle) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  %f = alloca %class.b2Fixture*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store %struct.b2Vec2* %position, %struct.b2Vec2** %2, align 4
  store float %angle, float* %3, align 4
  %5 = load %class.b2Body** %1
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 9
  %7 = load %class.b2World** %6, align 4
  %8 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %7)
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 404, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body12SetTransformERK6b2Vec2f, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 9
  %16 = load %class.b2World** %15, align 4
  %17 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %16)
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %14
  br label %71

; <label>:21                                      ; preds = %14
  %22 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %23 = getelementptr inbounds %struct.b2Transform* %22, i32 0, i32 1
  %24 = load float* %3, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %23, float %24)
  %25 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %26 = getelementptr inbounds %struct.b2Transform* %25, i32 0, i32 0
  %27 = load %struct.b2Vec2** %2
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  %29 = bitcast %struct.b2Vec2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %31 = getelementptr inbounds %struct.b2Sweep* %30, i32 0, i32 2
  %32 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %33 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %34 = getelementptr inbounds %struct.b2Sweep* %33, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %4, %struct.b2Transform* %32, %struct.b2Vec2* %34)
  %35 = bitcast %struct.b2Vec2* %31 to i8*
  %36 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 8, i32 4, i1 false)
  %37 = load float* %3, align 4
  %38 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %39 = getelementptr inbounds %struct.b2Sweep* %38, i32 0, i32 4
  store float %37, float* %39, align 4
  %40 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %41 = getelementptr inbounds %struct.b2Sweep* %40, i32 0, i32 1
  %42 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %43 = getelementptr inbounds %struct.b2Sweep* %42, i32 0, i32 2
  %44 = bitcast %struct.b2Vec2* %41 to i8*
  %45 = bitcast %struct.b2Vec2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  %46 = load float* %3, align 4
  %47 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %48 = getelementptr inbounds %struct.b2Sweep* %47, i32 0, i32 3
  store float %46, float* %48, align 4
  %49 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 9
  %50 = load %class.b2World** %49, align 4
  %51 = getelementptr inbounds %class.b2World* %50, i32 0, i32 3
  %52 = getelementptr inbounds %class.b2ContactManager* %51, i32 0, i32 0
  store %class.b2BroadPhase* %52, %class.b2BroadPhase** %broadPhase, align 4
  %53 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 12
  %54 = load %class.b2Fixture** %53, align 4
  store %class.b2Fixture* %54, %class.b2Fixture** %f, align 4
  br label %55

; <label>:55                                      ; preds = %63, %21
  %56 = load %class.b2Fixture** %f, align 4
  %57 = icmp ne %class.b2Fixture* %56, null
  br i1 %57, label %58, label %67

; <label>:58                                      ; preds = %55
  %59 = load %class.b2Fixture** %f, align 4
  %60 = load %class.b2BroadPhase** %broadPhase, align 4
  %61 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %62 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  call void @_ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_(%class.b2Fixture* %59, %class.b2BroadPhase* %60, %struct.b2Transform* %61, %struct.b2Transform* %62)
  br label %63

; <label>:63                                      ; preds = %58
  %64 = load %class.b2Fixture** %f, align 4
  %65 = getelementptr inbounds %class.b2Fixture* %64, i32 0, i32 1
  %66 = load %class.b2Fixture** %65, align 4
  store %class.b2Fixture* %66, %class.b2Fixture** %f, align 4
  br label %55

; <label>:67                                      ; preds = %55
  %68 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 9
  %69 = load %class.b2World** %68, align 4
  %70 = getelementptr inbounds %class.b2World* %69, i32 0, i32 3
  call void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager* %70)
  br label %71

; <label>:71                                      ; preds = %67, %20
  ret void
}

declare void @_ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_(%class.b2Fixture*, %class.b2BroadPhase*, %struct.b2Transform*, %struct.b2Transform*)

declare void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager*)

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

define void @_ZN6b2Body9SetActiveEb(%class.b2Body* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca i8, align 1
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  %f = alloca %class.b2Fixture*, align 4
  %broadPhase1 = alloca %class.b2BroadPhase*, align 4
  %f2 = alloca %class.b2Fixture*, align 4
  %ce = alloca %struct.b2ContactEdge*, align 4
  %ce0 = alloca %struct.b2ContactEdge*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2Body** %1
  %5 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %6 = load %class.b2World** %5, align 4
  %7 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %6)
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__._ZN6b2Body9SetActiveEb, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i8* %2, align 1
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i32
  %17 = call zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %4)
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %13
  br label %89

; <label>:21                                      ; preds = %13
  %22 = load i8* %2, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %48

; <label>:24                                      ; preds = %21
  %25 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %26 = load i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, 32
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %25, align 2
  %30 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %31 = load %class.b2World** %30, align 4
  %32 = getelementptr inbounds %class.b2World* %31, i32 0, i32 3
  %33 = getelementptr inbounds %class.b2ContactManager* %32, i32 0, i32 0
  store %class.b2BroadPhase* %33, %class.b2BroadPhase** %broadPhase, align 4
  %34 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  %35 = load %class.b2Fixture** %34, align 4
  store %class.b2Fixture* %35, %class.b2Fixture** %f, align 4
  br label %36

; <label>:36                                      ; preds = %43, %24
  %37 = load %class.b2Fixture** %f, align 4
  %38 = icmp ne %class.b2Fixture* %37, null
  br i1 %38, label %39, label %47

; <label>:39                                      ; preds = %36
  %40 = load %class.b2Fixture** %f, align 4
  %41 = load %class.b2BroadPhase** %broadPhase, align 4
  %42 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  call void @_ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform(%class.b2Fixture* %40, %class.b2BroadPhase* %41, %struct.b2Transform* %42)
  br label %43

; <label>:43                                      ; preds = %39
  %44 = load %class.b2Fixture** %f, align 4
  %45 = getelementptr inbounds %class.b2Fixture* %44, i32 0, i32 1
  %46 = load %class.b2Fixture** %45, align 4
  store %class.b2Fixture* %46, %class.b2Fixture** %f, align 4
  br label %36

; <label>:47                                      ; preds = %36
  br label %89

; <label>:48                                      ; preds = %21
  %49 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 1
  %50 = load i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, -33
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %49, align 2
  %54 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %55 = load %class.b2World** %54, align 4
  %56 = getelementptr inbounds %class.b2World* %55, i32 0, i32 3
  %57 = getelementptr inbounds %class.b2ContactManager* %56, i32 0, i32 0
  store %class.b2BroadPhase* %57, %class.b2BroadPhase** %broadPhase1, align 4
  %58 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 12
  %59 = load %class.b2Fixture** %58, align 4
  store %class.b2Fixture* %59, %class.b2Fixture** %f2, align 4
  br label %60

; <label>:60                                      ; preds = %66, %48
  %61 = load %class.b2Fixture** %f2, align 4
  %62 = icmp ne %class.b2Fixture* %61, null
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %60
  %64 = load %class.b2Fixture** %f2, align 4
  %65 = load %class.b2BroadPhase** %broadPhase1, align 4
  call void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture* %64, %class.b2BroadPhase* %65)
  br label %66

; <label>:66                                      ; preds = %63
  %67 = load %class.b2Fixture** %f2, align 4
  %68 = getelementptr inbounds %class.b2Fixture* %67, i32 0, i32 1
  %69 = load %class.b2Fixture** %68, align 4
  store %class.b2Fixture* %69, %class.b2Fixture** %f2, align 4
  br label %60

; <label>:70                                      ; preds = %60
  %71 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 15
  %72 = load %struct.b2ContactEdge** %71, align 4
  store %struct.b2ContactEdge* %72, %struct.b2ContactEdge** %ce, align 4
  br label %73

; <label>:73                                      ; preds = %76, %70
  %74 = load %struct.b2ContactEdge** %ce, align 4
  %75 = icmp ne %struct.b2ContactEdge* %74, null
  br i1 %75, label %76, label %87

; <label>:76                                      ; preds = %73
  %77 = load %struct.b2ContactEdge** %ce, align 4
  store %struct.b2ContactEdge* %77, %struct.b2ContactEdge** %ce0, align 4
  %78 = load %struct.b2ContactEdge** %ce, align 4
  %79 = getelementptr inbounds %struct.b2ContactEdge* %78, i32 0, i32 3
  %80 = load %struct.b2ContactEdge** %79, align 4
  store %struct.b2ContactEdge* %80, %struct.b2ContactEdge** %ce, align 4
  %81 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 9
  %82 = load %class.b2World** %81, align 4
  %83 = getelementptr inbounds %class.b2World* %82, i32 0, i32 3
  %84 = load %struct.b2ContactEdge** %ce0, align 4
  %85 = getelementptr inbounds %struct.b2ContactEdge* %84, i32 0, i32 1
  %86 = load %class.b2Contact** %85, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %83, %class.b2Contact* %86)
  br label %73

; <label>:87                                      ; preds = %73
  %88 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 15
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %88, align 4
  br label %89

; <label>:89                                      ; preds = %20, %87, %47
  ret void
}

define linkonce_odr zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 32
  ret i1 %7
}

define void @_ZN6b2Body4DumpEv(%class.b2Body* %this) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %bodyIndex = alloca i32, align 4
  %f = alloca %class.b2Fixture*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  store i32 %4, i32* %bodyIndex, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([17 x i8]* @.str14, i32 0, i32 0))
  %5 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 0
  %6 = load i32* %5, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str15, i32 0, i32 0), i32 %6)
  %7 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.b2Transform* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.b2Vec2* %8, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 3
  %13 = getelementptr inbounds %struct.b2Transform* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fpext float %15 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([38 x i8]* @.str16, i32 0, i32 0), double %11, double %16)
  %17 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 4
  %18 = getelementptr inbounds %struct.b2Sweep* %17, i32 0, i32 4
  %19 = load float* %18, align 4
  %20 = fpext float %19 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([23 x i8]* @.str17, i32 0, i32 0), double %20)
  %21 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 5
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 5
  %26 = getelementptr inbounds %struct.b2Vec2* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  %28 = fpext float %27 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([44 x i8]* @.str18, i32 0, i32 0), double %24, double %28)
  %29 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 6
  %30 = load float* %29, align 4
  %31 = fpext float %30 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([33 x i8]* @.str19, i32 0, i32 0), double %31)
  %32 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 20
  %33 = load float* %32, align 4
  %34 = fpext float %33 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([31 x i8]* @.str20, i32 0, i32 0), double %34)
  %35 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 21
  %36 = load float* %35, align 4
  %37 = fpext float %36 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str21, i32 0, i32 0), double %37)
  %38 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %39 = load i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str22, i32 0, i32 0), i32 %41)
  %42 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %43 = load i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 2
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str23, i32 0, i32 0), i32 %45)
  %46 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %47 = load i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 16
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str24, i32 0, i32 0), i32 %49)
  %50 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %51 = load i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 8
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str25, i32 0, i32 0), i32 %53)
  %54 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %55 = load i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str26, i32 0, i32 0), i32 %57)
  %58 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 22
  %59 = load float* %58, align 4
  %60 = fpext float %59 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([30 x i8]* @.str27, i32 0, i32 0), double %60)
  %61 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 2
  %62 = load i32* %61, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str28, i32 0, i32 0), i32 %62)
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([2 x i8]* @.str29, i32 0, i32 0))
  %63 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 12
  %64 = load %class.b2Fixture** %63, align 4
  store %class.b2Fixture* %64, %class.b2Fixture** %f, align 4
  br label %65

; <label>:65                                      ; preds = %71, %0
  %66 = load %class.b2Fixture** %f, align 4
  %67 = icmp ne %class.b2Fixture* %66, null
  br i1 %67, label %68, label %75

; <label>:68                                      ; preds = %65
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0))
  %69 = load %class.b2Fixture** %f, align 4
  %70 = load i32* %bodyIndex, align 4
  call void @_ZN9b2Fixture4DumpEi(%class.b2Fixture* %69, i32 %70)
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0))
  br label %71

; <label>:71                                      ; preds = %68
  %72 = load %class.b2Fixture** %f, align 4
  %73 = getelementptr inbounds %class.b2Fixture* %72, i32 0, i32 1
  %74 = load %class.b2Fixture** %73, align 4
  store %class.b2Fixture* %74, %class.b2Fixture** %f, align 4
  br label %65

; <label>:75                                      ; preds = %65
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0))
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

declare void @_ZN9b2Fixture4DumpEi(%class.b2Fixture*, i32)

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

define linkonce_odr void @_ZN10b2MassDataC2Ev(%struct.b2MassData* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2MassData*, align 4
  store %struct.b2MassData* %this, %struct.b2MassData** %1, align 4
  %2 = load %struct.b2MassData** %1
  %3 = getelementptr inbounds %struct.b2MassData* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  ret void
}

define linkonce_odr void @_ZN12b2FixtureDefC2Ev(%struct.b2FixtureDef* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2FixtureDef*, align 4
  store %struct.b2FixtureDef* %this, %struct.b2FixtureDef** %1, align 4
  %2 = load %struct.b2FixtureDef** %1
  %3 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 6
  call void @_ZN8b2FilterC1Ev(%struct.b2Filter* %3)
  %4 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 0
  store %class.b2Shape* null, %class.b2Shape** %4, align 4
  %5 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 1
  store i8* null, i8** %5, align 4
  %6 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 2
  store float 0x3FC99999A0000000, float* %6, align 4
  %7 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 3
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 4
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.b2FixtureDef* %2, i32 0, i32 5
  store i8 0, i8* %9, align 1
  ret void
}

define linkonce_odr void @_ZN8b2FilterC1Ev(%struct.b2Filter* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Filter*, align 4
  store %struct.b2Filter* %this, %struct.b2Filter** %1, align 4
  %2 = load %struct.b2Filter** %1
  call void @_ZN8b2FilterC2Ev(%struct.b2Filter* %2)
  ret void
}

define linkonce_odr void @_ZN8b2FilterC2Ev(%struct.b2Filter* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Filter*, align 4
  store %struct.b2Filter* %this, %struct.b2Filter** %1, align 4
  %2 = load %struct.b2Filter** %1
  %3 = getelementptr inbounds %struct.b2Filter* %2, i32 0, i32 0
  store i16 1, i16* %3, align 2
  %4 = getelementptr inbounds %struct.b2Filter* %2, i32 0, i32 1
  store i16 -1, i16* %4, align 2
  %5 = getelementptr inbounds %struct.b2Filter* %2, i32 0, i32 2
  store i16 0, i16* %5, align 2
  ret void
}

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

define linkonce_odr float @_ZNSt14numeric_limitsIfE8infinityEv() nounwind align 2 {
  ret float 0x7FF0000000000000
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}

define linkonce_odr void @_ZN7b2SweepC2Ev(%struct.b2Sweep* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  %3 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  %5 = getelementptr inbounds %struct.b2Sweep* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %5)
  ret void
}

define linkonce_odr void @_ZN11b2TransformC2Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  %3 = getelementptr inbounds %struct.b2Transform* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Transform* %2, i32 0, i32 1
  call void @_ZN5b2RotC1Ev(%struct.b2Rot* %4)
  ret void
}

define linkonce_odr void @_ZN5b2RotC1Ev(%struct.b2Rot* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  %2 = load %struct.b2Rot** %1
  call void @_ZN5b2RotC2Ev(%struct.b2Rot* %2)
  ret void
}

define linkonce_odr void @_ZN5b2RotC2Ev(%struct.b2Rot* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Rot*, align 4
  store %struct.b2Rot* %this, %struct.b2Rot** %1, align 4
  %2 = load %struct.b2Rot** %1
  ret void
}
