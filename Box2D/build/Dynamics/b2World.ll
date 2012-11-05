; ModuleID = 'Dynamics/b2World.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

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
%struct.b2Vec2 = type { float, float }
%union.anon = type { i32 }
%struct.b2Pair = type { i32, i32, i32 }
%class.b2Contact = type { i32 (...)**, i32, %class.b2Contact*, %class.b2Contact*, %struct.b2ContactEdge, %struct.b2ContactEdge, %class.b2Fixture*, %class.b2Fixture*, i32, i32, %struct.b2Manifold, i32, float, float, float }
%struct.b2ContactEdge = type { %class.b2Body*, %class.b2Contact*, %struct.b2ContactEdge*, %struct.b2ContactEdge* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2JointEdge = type { %class.b2Body*, %class.b2Joint*, %struct.b2JointEdge*, %struct.b2JointEdge* }
%class.b2Joint = type { i32 (...)**, i32, %class.b2Joint*, %class.b2Joint*, %struct.b2JointEdge, %struct.b2JointEdge, %class.b2Body*, %class.b2Body*, i32, i8, i8, i8* }
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type { i32 (...)**, i32 }
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%struct.b2BodyDef = type { i32, %struct.b2Vec2, float, %struct.b2Vec2, float, float, float, i8, i8, i8, i8, i8, i8*, float }
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%class.b2Island = type { %class.b2StackAllocator*, %class.b2ContactListener*, %class.b2Body**, %class.b2Contact**, %class.b2Joint**, %struct.b2Position*, %struct.b2Velocity*, i32, i32, i32, i32, i32, i32 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }
%class.b2Timer = type { i32, i32 }
%struct.b2TOIInput = type { %struct.b2DistanceProxy, %struct.b2DistanceProxy, %struct.b2Sweep, %struct.b2Sweep, float }
%struct.b2DistanceProxy = type { [2 x %struct.b2Vec2], %struct.b2Vec2*, i32, float }
%struct.b2TOIOutput = type { i32, float }
%class.b2QueryCallback = type { i32 (...)** }
%struct.b2WorldQueryWrapper = type { %class.b2BroadPhase*, %class.b2QueryCallback* }
%class.b2RayCastCallback = type { i32 (...)** }
%struct.b2WorldRayCastWrapper = type { %class.b2BroadPhase*, %class.b2RayCastCallback* }
%struct.b2RayCastInput = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2Color = type { float, float, float }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2ChainShape = type { %class.b2Shape, %struct.b2Vec2*, i32, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%class.b2PulleyJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%class.b2GrowableStack = type { i32*, [256 x i32], i32, i32 }
%struct.b2RayCastOutput = type { %struct.b2Vec2, float }

@.str = private unnamed_addr constant [20 x i8] c"IsLocked() == false\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"Dynamics/b2World.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World10CreateBodyEPK9b2BodyDef = private unnamed_addr constant [47 x i8] c"b2Body *b2World::CreateBody(const b2BodyDef *)\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"m_bodyCount > 0\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World11DestroyBodyEP6b2Body = private unnamed_addr constant [36 x i8] c"void b2World::DestroyBody(b2Body *)\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World11CreateJointEPK10b2JointDef = private unnamed_addr constant [50 x i8] c"b2Joint *b2World::CreateJoint(const b2JointDef *)\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World12DestroyJointEP7b2Joint = private unnamed_addr constant [38 x i8] c"void b2World::DestroyJoint(b2Joint *)\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"m_jointCount > 0\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"b->IsActive() == true\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World5SolveERK10b2TimeStep = private unnamed_addr constant [40 x i8] c"void b2World::Solve(const b2TimeStep &)\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"stackCount < stackSize\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"typeA == b2_dynamicBody || typeB == b2_dynamicBody\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World8SolveTOIERK10b2TimeStep = private unnamed_addr constant [43 x i8] c"void b2World::SolveTOI(const b2TimeStep &)\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"alpha0 < 1.0f\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"vertexCount <= 8\00", align 1
@__PRETTY_FUNCTION__._ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color = private unnamed_addr constant [75 x i8] c"void b2World::DrawShape(b2Fixture *, const b2Transform &, const b2Color &)\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"b2Vec2 g(%.15lef, %.15lef);\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"m_world->SetGravity(g);\0A\00", align 1
@.str11 = private unnamed_addr constant [60 x i8] c"b2Body** bodies = (b2Body**)b2Alloc(%d * sizeof(b2Body*));\0A\00", align 1
@.str12 = private unnamed_addr constant [63 x i8] c"b2Joint** joints = (b2Joint**)b2Alloc(%d * sizeof(b2Joint*));\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"b2Free(joints);\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"b2Free(bodies);\0A\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"joints = NULL;\0A\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"bodies = NULL;\0A\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"r.LengthSquared() > 0.0f\00", align 1
@.str20 = private unnamed_addr constant [51 x i8] c"/usr/local/include/Box2D/Collision/b2DynamicTree.h\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput = private unnamed_addr constant [83 x i8] c"void b2DynamicTree::RayCast(b2WorldRayCastWrapper *, const b2RayCastInput &) const\00", align 1
@.str21 = private unnamed_addr constant [41 x i8] c"0 <= proxyId && proxyId < m_nodeCapacity\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree11GetUserDataEi = private unnamed_addr constant [46 x i8] c"void *b2DynamicTree::GetUserData(int32) const\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"m_count > 0\00", align 1
@.str23 = private unnamed_addr constant [50 x i8] c"/usr/local/include/Box2D/Common/b2GrowableStack.h\00", align 1
@__PRETTY_FUNCTION__._ZN15b2GrowableStackIiLi256EE3PopEv = private unnamed_addr constant [37 x i8] c"int b2GrowableStack<int, 256>::Pop()\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree10GetFatAABBEi = private unnamed_addr constant [53 x i8] c"const b2AABB &b2DynamicTree::GetFatAABB(int32) const\00", align 1
@.str24 = private unnamed_addr constant [41 x i8] c"/usr/local/include/Box2D/Common/b2Math.h\00", align 1
@__PRETTY_FUNCTION__._ZN7b2Sweep7AdvanceEf = private unnamed_addr constant [31 x i8] c"void b2Sweep::Advance(float32)\00", align 1
@.str25 = private unnamed_addr constant [31 x i8] c"m_jointCount < m_jointCapacity\00", align 1
@.str26 = private unnamed_addr constant [45 x i8] c"/usr/local/include/Box2D/Dynamics/b2Island.h\00", align 1
@__PRETTY_FUNCTION__._ZN8b2Island3AddEP7b2Joint = private unnamed_addr constant [30 x i8] c"void b2Island::Add(b2Joint *)\00", align 1
@.str27 = private unnamed_addr constant [35 x i8] c"m_contactCount < m_contactCapacity\00", align 1
@__PRETTY_FUNCTION__._ZN8b2Island3AddEP9b2Contact = private unnamed_addr constant [32 x i8] c"void b2Island::Add(b2Contact *)\00", align 1
@.str28 = private unnamed_addr constant [29 x i8] c"m_bodyCount < m_bodyCapacity\00", align 1
@__PRETTY_FUNCTION__._ZN8b2Island3AddEP6b2Body = private unnamed_addr constant [29 x i8] c"void b2Island::Add(b2Body *)\00", align 1

@_ZN7b2WorldC1ERK6b2Vec2 = alias void (%class.b2World*, %struct.b2Vec2*)* @_ZN7b2WorldC2ERK6b2Vec2
@_ZN7b2WorldD1Ev = alias void (%class.b2World*)* @_ZN7b2WorldD2Ev

define void @_ZN7b2WorldC2ERK6b2Vec2(%class.b2World* %this, %struct.b2Vec2* %gravity) unnamed_addr align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %struct.b2Vec2* %gravity, %struct.b2Vec2** %2, align 4
  %5 = load %class.b2World** %1
  %6 = getelementptr inbounds %class.b2World* %5, i32 0, i32 0
  call void @_ZN16b2BlockAllocatorC1Ev(%class.b2BlockAllocator* %6)
  %7 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  invoke void @_ZN16b2StackAllocatorC1Ev(%class.b2StackAllocator* %7)
          to label %8 unwind label %36

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  invoke void @_ZN16b2ContactManagerC1Ev(%class.b2ContactManager* %9)
          to label %10 unwind label %40

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.b2World* %5, i32 0, i32 8
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %44

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %14 = getelementptr inbounds %class.b2World* %5, i32 0, i32 10
  store %class.b2DestructionListener* null, %class.b2DestructionListener** %14, align 4
  %15 = getelementptr inbounds %class.b2World* %5, i32 0, i32 11
  store %class.b2Draw* null, %class.b2Draw** %15, align 4
  %16 = getelementptr inbounds %class.b2World* %5, i32 0, i32 4
  store %class.b2Body* null, %class.b2Body** %16, align 4
  %17 = getelementptr inbounds %class.b2World* %5, i32 0, i32 5
  store %class.b2Joint* null, %class.b2Joint** %17, align 4
  %18 = getelementptr inbounds %class.b2World* %5, i32 0, i32 6
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %class.b2World* %5, i32 0, i32 7
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %class.b2World* %5, i32 0, i32 13
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %class.b2World* %5, i32 0, i32 14
  store i8 1, i8* %21, align 1
  %22 = getelementptr inbounds %class.b2World* %5, i32 0, i32 15
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %class.b2World* %5, i32 0, i32 16
  store i8 1, i8* %23, align 1
  %24 = getelementptr inbounds %class.b2World* %5, i32 0, i32 9
  store i8 1, i8* %24, align 1
  %25 = getelementptr inbounds %class.b2World* %5, i32 0, i32 8
  %26 = load %struct.b2Vec2** %2
  %27 = bitcast %struct.b2Vec2* %25 to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds %class.b2World* %5, i32 0, i32 12
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds %class.b2World* %5, i32 0, i32 0
  %32 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %33 = getelementptr inbounds %class.b2ContactManager* %32, i32 0, i32 5
  store %class.b2BlockAllocator* %31, %class.b2BlockAllocator** %33, align 4
  %34 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %35 = bitcast %struct.b2Profile* %34 to i8*
  call void @llvm.memset.p0i8.i32(i8* %35, i8 0, i32 32, i32 1, i1 false)
  ret void

; <label>:36                                      ; preds = %0
  %37 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %3
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %4
  br label %53

; <label>:40                                      ; preds = %8
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %3
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %4
  br label %50

; <label>:44                                      ; preds = %10
  %45 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %3
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %4
  %48 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  invoke void @_ZN16b2ContactManagerD1Ev(%class.b2ContactManager* %48)
          to label %49 unwind label %62

; <label>:49                                      ; preds = %44
  br label %50

; <label>:50                                      ; preds = %49, %40
  %51 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  invoke void @_ZN16b2StackAllocatorD1Ev(%class.b2StackAllocator* %51)
          to label %52 unwind label %62

; <label>:52                                      ; preds = %50
  br label %53

; <label>:53                                      ; preds = %52, %36
  %54 = getelementptr inbounds %class.b2World* %5, i32 0, i32 0
  invoke void @_ZN16b2BlockAllocatorD1Ev(%class.b2BlockAllocator* %54)
          to label %55 unwind label %62

; <label>:55                                      ; preds = %53
  br label %56

; <label>:56                                      ; preds = %55
  %57 = load i8** %3
  %58 = load i8** %3
  %59 = load i32* %4
  %60 = insertvalue { i8*, i32 } undef, i8* %58, 0
  %61 = insertvalue { i8*, i32 } %60, i32 %59, 1
  resume { i8*, i32 } %61

; <label>:62                                      ; preds = %53, %50, %44
  %63 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN16b2BlockAllocatorC1Ev(%class.b2BlockAllocator*)

declare void @_ZN16b2StackAllocatorC1Ev(%class.b2StackAllocator*)

declare i32 @__gxx_personality_v0(...)

declare void @_ZN16b2ContactManagerC1Ev(%class.b2ContactManager*)

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define linkonce_odr void @_ZN16b2ContactManagerD1Ev(%class.b2ContactManager* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  %2 = load %class.b2ContactManager** %1
  call void @_ZN16b2ContactManagerD2Ev(%class.b2ContactManager* %2)
  ret void
}

declare void @_ZSt9terminatev()

declare void @_ZN16b2StackAllocatorD1Ev(%class.b2StackAllocator*)

declare void @_ZN16b2BlockAllocatorD1Ev(%class.b2BlockAllocator*)

define void @_ZN7b2WorldD2Ev(%class.b2World* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2World*, align 4
  %b = alloca %class.b2Body*, align 4
  %bNext = alloca %class.b2Body*, align 4
  %f = alloca %class.b2Fixture*, align 4
  %fNext = alloca %class.b2Fixture*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2World* %this, %class.b2World** %1, align 4
  %4 = load %class.b2World** %1
  %5 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  %6 = load %class.b2Body** %5, align 4
  store %class.b2Body* %6, %class.b2Body** %b, align 4
  br label %7

; <label>:7                                       ; preds = %35, %0
  %8 = load %class.b2Body** %b, align 4
  %9 = icmp ne %class.b2Body* %8, null
  br i1 %9, label %10, label %37

; <label>:10                                      ; preds = %7
  %11 = load %class.b2Body** %b, align 4
  %12 = getelementptr inbounds %class.b2Body* %11, i32 0, i32 11
  %13 = load %class.b2Body** %12, align 4
  store %class.b2Body* %13, %class.b2Body** %bNext, align 4
  %14 = load %class.b2Body** %b, align 4
  %15 = getelementptr inbounds %class.b2Body* %14, i32 0, i32 12
  %16 = load %class.b2Fixture** %15, align 4
  store %class.b2Fixture* %16, %class.b2Fixture** %f, align 4
  br label %17

; <label>:17                                      ; preds = %28, %10
  %18 = load %class.b2Fixture** %f, align 4
  %19 = icmp ne %class.b2Fixture* %18, null
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %17
  %21 = load %class.b2Fixture** %f, align 4
  %22 = getelementptr inbounds %class.b2Fixture* %21, i32 0, i32 1
  %23 = load %class.b2Fixture** %22, align 4
  store %class.b2Fixture* %23, %class.b2Fixture** %fNext, align 4
  %24 = load %class.b2Fixture** %f, align 4
  %25 = getelementptr inbounds %class.b2Fixture* %24, i32 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = load %class.b2Fixture** %f, align 4
  %27 = getelementptr inbounds %class.b2World* %4, i32 0, i32 0
  invoke void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture* %26, %class.b2BlockAllocator* %27)
          to label %28 unwind label %30

; <label>:28                                      ; preds = %20
  %29 = load %class.b2Fixture** %fNext, align 4
  store %class.b2Fixture* %29, %class.b2Fixture** %f, align 4
  br label %17

; <label>:30                                      ; preds = %20
  %31 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %2
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %3
  %34 = getelementptr inbounds %class.b2World* %4, i32 0, i32 3
  invoke void @_ZN16b2ContactManagerD1Ev(%class.b2ContactManager* %34)
          to label %47 unwind label %64

; <label>:35                                      ; preds = %17
  %36 = load %class.b2Body** %bNext, align 4
  store %class.b2Body* %36, %class.b2Body** %b, align 4
  br label %7

; <label>:37                                      ; preds = %7
  %38 = getelementptr inbounds %class.b2World* %4, i32 0, i32 3
  invoke void @_ZN16b2ContactManagerD1Ev(%class.b2ContactManager* %38)
          to label %39 unwind label %43

; <label>:39                                      ; preds = %37
  %40 = getelementptr inbounds %class.b2World* %4, i32 0, i32 1
  invoke void @_ZN16b2StackAllocatorD1Ev(%class.b2StackAllocator* %40)
          to label %41 unwind label %48

; <label>:41                                      ; preds = %39
  %42 = getelementptr inbounds %class.b2World* %4, i32 0, i32 0
  call void @_ZN16b2BlockAllocatorD1Ev(%class.b2BlockAllocator* %42)
  ret void

; <label>:43                                      ; preds = %37
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  store i8* %45, i8** %2
  %46 = extractvalue { i8*, i32 } %44, 1
  store i32 %46, i32* %3
  br label %52

; <label>:47                                      ; preds = %30
  br label %52

; <label>:48                                      ; preds = %39
  %49 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %2
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %3
  br label %55

; <label>:52                                      ; preds = %47, %43
  %53 = getelementptr inbounds %class.b2World* %4, i32 0, i32 1
  invoke void @_ZN16b2StackAllocatorD1Ev(%class.b2StackAllocator* %53)
          to label %54 unwind label %64

; <label>:54                                      ; preds = %52
  br label %55

; <label>:55                                      ; preds = %54, %48
  %56 = getelementptr inbounds %class.b2World* %4, i32 0, i32 0
  invoke void @_ZN16b2BlockAllocatorD1Ev(%class.b2BlockAllocator* %56)
          to label %57 unwind label %64

; <label>:57                                      ; preds = %55
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load i8** %2
  %60 = load i8** %2
  %61 = load i32* %3
  %62 = insertvalue { i8*, i32 } undef, i8* %60, 0
  %63 = insertvalue { i8*, i32 } %62, i32 %61, 1
  resume { i8*, i32 } %63

; <label>:64                                      ; preds = %55, %52, %30
  %65 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture*, %class.b2BlockAllocator*)

define void @_ZN7b2World22SetDestructionListenerEP21b2DestructionListener(%class.b2World* %this, %class.b2DestructionListener* %listener) nounwind align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2DestructionListener*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2DestructionListener* %listener, %class.b2DestructionListener** %2, align 4
  %3 = load %class.b2World** %1
  %4 = load %class.b2DestructionListener** %2, align 4
  %5 = getelementptr inbounds %class.b2World* %3, i32 0, i32 10
  store %class.b2DestructionListener* %4, %class.b2DestructionListener** %5, align 4
  ret void
}

define void @_ZN7b2World16SetContactFilterEP15b2ContactFilter(%class.b2World* %this, %class.b2ContactFilter* %filter) nounwind align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2ContactFilter*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2ContactFilter* %filter, %class.b2ContactFilter** %2, align 4
  %3 = load %class.b2World** %1
  %4 = load %class.b2ContactFilter** %2, align 4
  %5 = getelementptr inbounds %class.b2World* %3, i32 0, i32 3
  %6 = getelementptr inbounds %class.b2ContactManager* %5, i32 0, i32 3
  store %class.b2ContactFilter* %4, %class.b2ContactFilter** %6, align 4
  ret void
}

define void @_ZN7b2World18SetContactListenerEP17b2ContactListener(%class.b2World* %this, %class.b2ContactListener* %listener) nounwind align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2ContactListener*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2ContactListener* %listener, %class.b2ContactListener** %2, align 4
  %3 = load %class.b2World** %1
  %4 = load %class.b2ContactListener** %2, align 4
  %5 = getelementptr inbounds %class.b2World* %3, i32 0, i32 3
  %6 = getelementptr inbounds %class.b2ContactManager* %5, i32 0, i32 4
  store %class.b2ContactListener* %4, %class.b2ContactListener** %6, align 4
  ret void
}

define void @_ZN7b2World12SetDebugDrawEP6b2Draw(%class.b2World* %this, %class.b2Draw* %debugDraw) nounwind align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2Draw*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2Draw* %debugDraw, %class.b2Draw** %2, align 4
  %3 = load %class.b2World** %1
  %4 = load %class.b2Draw** %2, align 4
  %5 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  store %class.b2Draw* %4, %class.b2Draw** %5, align 4
  ret void
}

define %class.b2Body* @_ZN7b2World10CreateBodyEPK9b2BodyDef(%class.b2World* %this, %struct.b2BodyDef* %def) align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %class.b2World*, align 4
  %3 = alloca %struct.b2BodyDef*, align 4
  %mem = alloca i8*, align 4
  %b = alloca %class.b2Body*, align 4
  store %class.b2World* %this, %class.b2World** %2, align 4
  store %struct.b2BodyDef* %def, %struct.b2BodyDef** %3, align 4
  %4 = load %class.b2World** %2
  %5 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %4)
  %6 = zext i1 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__._ZN7b2World10CreateBodyEPK9b2BodyDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %4)
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %11
  store %class.b2Body* null, %class.b2Body** %1
  br label %45

; <label>:14                                      ; preds = %11
  %15 = getelementptr inbounds %class.b2World* %4, i32 0, i32 0
  %16 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %15, i32 152)
  store i8* %16, i8** %mem, align 4
  %17 = load i8** %mem, align 4
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %14
  %20 = bitcast i8* %17 to %class.b2Body*
  %21 = load %struct.b2BodyDef** %3, align 4
  call void @_ZN6b2BodyC1EPK9b2BodyDefP7b2World(%class.b2Body* %20, %struct.b2BodyDef* %21, %class.b2World* %4)
  br label %22

; <label>:22                                      ; preds = %19, %14
  %23 = phi %class.b2Body* [ %20, %19 ], [ null, %14 ]
  store %class.b2Body* %23, %class.b2Body** %b, align 4
  %24 = load %class.b2Body** %b, align 4
  %25 = getelementptr inbounds %class.b2Body* %24, i32 0, i32 10
  store %class.b2Body* null, %class.b2Body** %25, align 4
  %26 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  %27 = load %class.b2Body** %26, align 4
  %28 = load %class.b2Body** %b, align 4
  %29 = getelementptr inbounds %class.b2Body* %28, i32 0, i32 11
  store %class.b2Body* %27, %class.b2Body** %29, align 4
  %30 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  %31 = load %class.b2Body** %30, align 4
  %32 = icmp ne %class.b2Body* %31, null
  br i1 %32, label %33, label %38

; <label>:33                                      ; preds = %22
  %34 = load %class.b2Body** %b, align 4
  %35 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  %36 = load %class.b2Body** %35, align 4
  %37 = getelementptr inbounds %class.b2Body* %36, i32 0, i32 10
  store %class.b2Body* %34, %class.b2Body** %37, align 4
  br label %38

; <label>:38                                      ; preds = %33, %22
  %39 = load %class.b2Body** %b, align 4
  %40 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  store %class.b2Body* %39, %class.b2Body** %40, align 4
  %41 = getelementptr inbounds %class.b2World* %4, i32 0, i32 6
  %42 = load i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %class.b2Body** %b, align 4
  store %class.b2Body* %44, %class.b2Body** %1
  br label %45

; <label>:45                                      ; preds = %38, %13
  %46 = load %class.b2Body** %1
  ret %class.b2Body* %46
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

declare void @_ZN6b2BodyC1EPK9b2BodyDefP7b2World(%class.b2Body*, %struct.b2BodyDef*, %class.b2World*)

define void @_ZN7b2World11DestroyBodyEP6b2Body(%class.b2World* %this, %class.b2Body* %b) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2Body*, align 4
  %je = alloca %struct.b2JointEdge*, align 4
  %je0 = alloca %struct.b2JointEdge*, align 4
  %ce = alloca %struct.b2ContactEdge*, align 4
  %ce0 = alloca %struct.b2ContactEdge*, align 4
  %f = alloca %class.b2Fixture*, align 4
  %f0 = alloca %class.b2Fixture*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2Body* %b, %class.b2Body** %2, align 4
  %3 = load %class.b2World** %1
  %4 = getelementptr inbounds %class.b2World* %3, i32 0, i32 6
  %5 = load i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN7b2World11DestroyBodyEP6b2Body, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %3)
  %12 = zext i1 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  br label %17

; <label>:15                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN7b2World11DestroyBodyEP6b2Body, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %3)
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %17
  br label %160

; <label>:20                                      ; preds = %17
  %21 = load %class.b2Body** %2, align 4
  %22 = getelementptr inbounds %class.b2Body* %21, i32 0, i32 14
  %23 = load %struct.b2JointEdge** %22, align 4
  store %struct.b2JointEdge* %23, %struct.b2JointEdge** %je, align 4
  br label %24

; <label>:24                                      ; preds = %45, %20
  %25 = load %struct.b2JointEdge** %je, align 4
  %26 = icmp ne %struct.b2JointEdge* %25, null
  br i1 %26, label %27, label %52

; <label>:27                                      ; preds = %24
  %28 = load %struct.b2JointEdge** %je, align 4
  store %struct.b2JointEdge* %28, %struct.b2JointEdge** %je0, align 4
  %29 = load %struct.b2JointEdge** %je, align 4
  %30 = getelementptr inbounds %struct.b2JointEdge* %29, i32 0, i32 3
  %31 = load %struct.b2JointEdge** %30, align 4
  store %struct.b2JointEdge* %31, %struct.b2JointEdge** %je, align 4
  %32 = getelementptr inbounds %class.b2World* %3, i32 0, i32 10
  %33 = load %class.b2DestructionListener** %32, align 4
  %34 = icmp ne %class.b2DestructionListener* %33, null
  br i1 %34, label %35, label %45

; <label>:35                                      ; preds = %27
  %36 = getelementptr inbounds %class.b2World* %3, i32 0, i32 10
  %37 = load %class.b2DestructionListener** %36, align 4
  %38 = bitcast %class.b2DestructionListener* %37 to void (%class.b2DestructionListener*, %class.b2Joint*)***
  %39 = load void (%class.b2DestructionListener*, %class.b2Joint*)*** %38
  %40 = getelementptr inbounds void (%class.b2DestructionListener*, %class.b2Joint*)** %39, i64 2
  %41 = load void (%class.b2DestructionListener*, %class.b2Joint*)** %40
  %42 = load %struct.b2JointEdge** %je0, align 4
  %43 = getelementptr inbounds %struct.b2JointEdge* %42, i32 0, i32 1
  %44 = load %class.b2Joint** %43, align 4
  call void %41(%class.b2DestructionListener* %37, %class.b2Joint* %44)
  br label %45

; <label>:45                                      ; preds = %35, %27
  %46 = load %struct.b2JointEdge** %je0, align 4
  %47 = getelementptr inbounds %struct.b2JointEdge* %46, i32 0, i32 1
  %48 = load %class.b2Joint** %47, align 4
  call void @_ZN7b2World12DestroyJointEP7b2Joint(%class.b2World* %3, %class.b2Joint* %48)
  %49 = load %struct.b2JointEdge** %je, align 4
  %50 = load %class.b2Body** %2, align 4
  %51 = getelementptr inbounds %class.b2Body* %50, i32 0, i32 14
  store %struct.b2JointEdge* %49, %struct.b2JointEdge** %51, align 4
  br label %24

; <label>:52                                      ; preds = %24
  %53 = load %class.b2Body** %2, align 4
  %54 = getelementptr inbounds %class.b2Body* %53, i32 0, i32 14
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %54, align 4
  %55 = load %class.b2Body** %2, align 4
  %56 = getelementptr inbounds %class.b2Body* %55, i32 0, i32 15
  %57 = load %struct.b2ContactEdge** %56, align 4
  store %struct.b2ContactEdge* %57, %struct.b2ContactEdge** %ce, align 4
  br label %58

; <label>:58                                      ; preds = %61, %52
  %59 = load %struct.b2ContactEdge** %ce, align 4
  %60 = icmp ne %struct.b2ContactEdge* %59, null
  br i1 %60, label %61, label %70

; <label>:61                                      ; preds = %58
  %62 = load %struct.b2ContactEdge** %ce, align 4
  store %struct.b2ContactEdge* %62, %struct.b2ContactEdge** %ce0, align 4
  %63 = load %struct.b2ContactEdge** %ce, align 4
  %64 = getelementptr inbounds %struct.b2ContactEdge* %63, i32 0, i32 3
  %65 = load %struct.b2ContactEdge** %64, align 4
  store %struct.b2ContactEdge* %65, %struct.b2ContactEdge** %ce, align 4
  %66 = getelementptr inbounds %class.b2World* %3, i32 0, i32 3
  %67 = load %struct.b2ContactEdge** %ce0, align 4
  %68 = getelementptr inbounds %struct.b2ContactEdge* %67, i32 0, i32 1
  %69 = load %class.b2Contact** %68, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %66, %class.b2Contact* %69)
  br label %58

; <label>:70                                      ; preds = %58
  %71 = load %class.b2Body** %2, align 4
  %72 = getelementptr inbounds %class.b2Body* %71, i32 0, i32 15
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %72, align 4
  %73 = load %class.b2Body** %2, align 4
  %74 = getelementptr inbounds %class.b2Body* %73, i32 0, i32 12
  %75 = load %class.b2Fixture** %74, align 4
  store %class.b2Fixture* %75, %class.b2Fixture** %f, align 4
  br label %76

; <label>:76                                      ; preds = %95, %70
  %77 = load %class.b2Fixture** %f, align 4
  %78 = icmp ne %class.b2Fixture* %77, null
  br i1 %78, label %79, label %112

; <label>:79                                      ; preds = %76
  %80 = load %class.b2Fixture** %f, align 4
  store %class.b2Fixture* %80, %class.b2Fixture** %f0, align 4
  %81 = load %class.b2Fixture** %f, align 4
  %82 = getelementptr inbounds %class.b2Fixture* %81, i32 0, i32 1
  %83 = load %class.b2Fixture** %82, align 4
  store %class.b2Fixture* %83, %class.b2Fixture** %f, align 4
  %84 = getelementptr inbounds %class.b2World* %3, i32 0, i32 10
  %85 = load %class.b2DestructionListener** %84, align 4
  %86 = icmp ne %class.b2DestructionListener* %85, null
  br i1 %86, label %87, label %95

; <label>:87                                      ; preds = %79
  %88 = getelementptr inbounds %class.b2World* %3, i32 0, i32 10
  %89 = load %class.b2DestructionListener** %88, align 4
  %90 = bitcast %class.b2DestructionListener* %89 to void (%class.b2DestructionListener*, %class.b2Fixture*)***
  %91 = load void (%class.b2DestructionListener*, %class.b2Fixture*)*** %90
  %92 = getelementptr inbounds void (%class.b2DestructionListener*, %class.b2Fixture*)** %91, i64 3
  %93 = load void (%class.b2DestructionListener*, %class.b2Fixture*)** %92
  %94 = load %class.b2Fixture** %f0, align 4
  call void %93(%class.b2DestructionListener* %89, %class.b2Fixture* %94)
  br label %95

; <label>:95                                      ; preds = %87, %79
  %96 = load %class.b2Fixture** %f0, align 4
  %97 = getelementptr inbounds %class.b2World* %3, i32 0, i32 3
  %98 = getelementptr inbounds %class.b2ContactManager* %97, i32 0, i32 0
  call void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture* %96, %class.b2BroadPhase* %98)
  %99 = load %class.b2Fixture** %f0, align 4
  %100 = getelementptr inbounds %class.b2World* %3, i32 0, i32 0
  call void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture* %99, %class.b2BlockAllocator* %100)
  %101 = load %class.b2Fixture** %f0, align 4
  %102 = getelementptr inbounds %class.b2World* %3, i32 0, i32 0
  %103 = load %class.b2Fixture** %f0, align 4
  %104 = bitcast %class.b2Fixture* %103 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %102, i8* %104, i32 44)
  %105 = load %class.b2Fixture** %f, align 4
  %106 = load %class.b2Body** %2, align 4
  %107 = getelementptr inbounds %class.b2Body* %106, i32 0, i32 12
  store %class.b2Fixture* %105, %class.b2Fixture** %107, align 4
  %108 = load %class.b2Body** %2, align 4
  %109 = getelementptr inbounds %class.b2Body* %108, i32 0, i32 13
  %110 = load i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %76

; <label>:112                                     ; preds = %76
  %113 = load %class.b2Body** %2, align 4
  %114 = getelementptr inbounds %class.b2Body* %113, i32 0, i32 12
  store %class.b2Fixture* null, %class.b2Fixture** %114, align 4
  %115 = load %class.b2Body** %2, align 4
  %116 = getelementptr inbounds %class.b2Body* %115, i32 0, i32 13
  store i32 0, i32* %116, align 4
  %117 = load %class.b2Body** %2, align 4
  %118 = getelementptr inbounds %class.b2Body* %117, i32 0, i32 10
  %119 = load %class.b2Body** %118, align 4
  %120 = icmp ne %class.b2Body* %119, null
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %112
  %122 = load %class.b2Body** %2, align 4
  %123 = getelementptr inbounds %class.b2Body* %122, i32 0, i32 11
  %124 = load %class.b2Body** %123, align 4
  %125 = load %class.b2Body** %2, align 4
  %126 = getelementptr inbounds %class.b2Body* %125, i32 0, i32 10
  %127 = load %class.b2Body** %126, align 4
  %128 = getelementptr inbounds %class.b2Body* %127, i32 0, i32 11
  store %class.b2Body* %124, %class.b2Body** %128, align 4
  br label %129

; <label>:129                                     ; preds = %121, %112
  %130 = load %class.b2Body** %2, align 4
  %131 = getelementptr inbounds %class.b2Body* %130, i32 0, i32 11
  %132 = load %class.b2Body** %131, align 4
  %133 = icmp ne %class.b2Body* %132, null
  br i1 %133, label %134, label %142

; <label>:134                                     ; preds = %129
  %135 = load %class.b2Body** %2, align 4
  %136 = getelementptr inbounds %class.b2Body* %135, i32 0, i32 10
  %137 = load %class.b2Body** %136, align 4
  %138 = load %class.b2Body** %2, align 4
  %139 = getelementptr inbounds %class.b2Body* %138, i32 0, i32 11
  %140 = load %class.b2Body** %139, align 4
  %141 = getelementptr inbounds %class.b2Body* %140, i32 0, i32 10
  store %class.b2Body* %137, %class.b2Body** %141, align 4
  br label %142

; <label>:142                                     ; preds = %134, %129
  %143 = load %class.b2Body** %2, align 4
  %144 = getelementptr inbounds %class.b2World* %3, i32 0, i32 4
  %145 = load %class.b2Body** %144, align 4
  %146 = icmp eq %class.b2Body* %143, %145
  br i1 %146, label %147, label %152

; <label>:147                                     ; preds = %142
  %148 = load %class.b2Body** %2, align 4
  %149 = getelementptr inbounds %class.b2Body* %148, i32 0, i32 11
  %150 = load %class.b2Body** %149, align 4
  %151 = getelementptr inbounds %class.b2World* %3, i32 0, i32 4
  store %class.b2Body* %150, %class.b2Body** %151, align 4
  br label %152

; <label>:152                                     ; preds = %147, %142
  %153 = getelementptr inbounds %class.b2World* %3, i32 0, i32 6
  %154 = load i32* %153, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 4
  %156 = load %class.b2Body** %2, align 4
  call void @_ZN6b2BodyD1Ev(%class.b2Body* %156)
  %157 = getelementptr inbounds %class.b2World* %3, i32 0, i32 0
  %158 = load %class.b2Body** %2, align 4
  %159 = bitcast %class.b2Body* %158 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %157, i8* %159, i32 152)
  br label %160

; <label>:160                                     ; preds = %152, %19
  ret void
}

define void @_ZN7b2World12DestroyJointEP7b2Joint(%class.b2World* %this, %class.b2Joint* %j) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2Joint*, align 4
  %collideConnected = alloca i8, align 1
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %edge = alloca %struct.b2ContactEdge*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2Joint* %j, %class.b2Joint** %2, align 4
  %3 = load %class.b2World** %1
  %4 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %3)
  %5 = zext i1 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN7b2World12DestroyJointEP7b2Joint, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %3)
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %10
  br label %204

; <label>:13                                      ; preds = %10
  %14 = load %class.b2Joint** %2, align 4
  %15 = getelementptr inbounds %class.b2Joint* %14, i32 0, i32 10
  %16 = load i8* %15, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %collideConnected, align 1
  %19 = load %class.b2Joint** %2, align 4
  %20 = getelementptr inbounds %class.b2Joint* %19, i32 0, i32 2
  %21 = load %class.b2Joint** %20, align 4
  %22 = icmp ne %class.b2Joint* %21, null
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %13
  %24 = load %class.b2Joint** %2, align 4
  %25 = getelementptr inbounds %class.b2Joint* %24, i32 0, i32 3
  %26 = load %class.b2Joint** %25, align 4
  %27 = load %class.b2Joint** %2, align 4
  %28 = getelementptr inbounds %class.b2Joint* %27, i32 0, i32 2
  %29 = load %class.b2Joint** %28, align 4
  %30 = getelementptr inbounds %class.b2Joint* %29, i32 0, i32 3
  store %class.b2Joint* %26, %class.b2Joint** %30, align 4
  br label %31

; <label>:31                                      ; preds = %23, %13
  %32 = load %class.b2Joint** %2, align 4
  %33 = getelementptr inbounds %class.b2Joint* %32, i32 0, i32 3
  %34 = load %class.b2Joint** %33, align 4
  %35 = icmp ne %class.b2Joint* %34, null
  br i1 %35, label %36, label %44

; <label>:36                                      ; preds = %31
  %37 = load %class.b2Joint** %2, align 4
  %38 = getelementptr inbounds %class.b2Joint* %37, i32 0, i32 2
  %39 = load %class.b2Joint** %38, align 4
  %40 = load %class.b2Joint** %2, align 4
  %41 = getelementptr inbounds %class.b2Joint* %40, i32 0, i32 3
  %42 = load %class.b2Joint** %41, align 4
  %43 = getelementptr inbounds %class.b2Joint* %42, i32 0, i32 2
  store %class.b2Joint* %39, %class.b2Joint** %43, align 4
  br label %44

; <label>:44                                      ; preds = %36, %31
  %45 = load %class.b2Joint** %2, align 4
  %46 = getelementptr inbounds %class.b2World* %3, i32 0, i32 5
  %47 = load %class.b2Joint** %46, align 4
  %48 = icmp eq %class.b2Joint* %45, %47
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %44
  %50 = load %class.b2Joint** %2, align 4
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 3
  %52 = load %class.b2Joint** %51, align 4
  %53 = getelementptr inbounds %class.b2World* %3, i32 0, i32 5
  store %class.b2Joint* %52, %class.b2Joint** %53, align 4
  br label %54

; <label>:54                                      ; preds = %49, %44
  %55 = load %class.b2Joint** %2, align 4
  %56 = getelementptr inbounds %class.b2Joint* %55, i32 0, i32 6
  %57 = load %class.b2Body** %56, align 4
  store %class.b2Body* %57, %class.b2Body** %bodyA, align 4
  %58 = load %class.b2Joint** %2, align 4
  %59 = getelementptr inbounds %class.b2Joint* %58, i32 0, i32 7
  %60 = load %class.b2Body** %59, align 4
  store %class.b2Body* %60, %class.b2Body** %bodyB, align 4
  %61 = load %class.b2Body** %bodyA, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %61, i1 zeroext true)
  %62 = load %class.b2Body** %bodyB, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %62, i1 zeroext true)
  %63 = load %class.b2Joint** %2, align 4
  %64 = getelementptr inbounds %class.b2Joint* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.b2JointEdge* %64, i32 0, i32 2
  %66 = load %struct.b2JointEdge** %65, align 4
  %67 = icmp ne %struct.b2JointEdge* %66, null
  br i1 %67, label %68, label %78

; <label>:68                                      ; preds = %54
  %69 = load %class.b2Joint** %2, align 4
  %70 = getelementptr inbounds %class.b2Joint* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.b2JointEdge* %70, i32 0, i32 3
  %72 = load %struct.b2JointEdge** %71, align 4
  %73 = load %class.b2Joint** %2, align 4
  %74 = getelementptr inbounds %class.b2Joint* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.b2JointEdge* %74, i32 0, i32 2
  %76 = load %struct.b2JointEdge** %75, align 4
  %77 = getelementptr inbounds %struct.b2JointEdge* %76, i32 0, i32 3
  store %struct.b2JointEdge* %72, %struct.b2JointEdge** %77, align 4
  br label %78

; <label>:78                                      ; preds = %68, %54
  %79 = load %class.b2Joint** %2, align 4
  %80 = getelementptr inbounds %class.b2Joint* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.b2JointEdge* %80, i32 0, i32 3
  %82 = load %struct.b2JointEdge** %81, align 4
  %83 = icmp ne %struct.b2JointEdge* %82, null
  br i1 %83, label %84, label %94

; <label>:84                                      ; preds = %78
  %85 = load %class.b2Joint** %2, align 4
  %86 = getelementptr inbounds %class.b2Joint* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.b2JointEdge* %86, i32 0, i32 2
  %88 = load %struct.b2JointEdge** %87, align 4
  %89 = load %class.b2Joint** %2, align 4
  %90 = getelementptr inbounds %class.b2Joint* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.b2JointEdge* %90, i32 0, i32 3
  %92 = load %struct.b2JointEdge** %91, align 4
  %93 = getelementptr inbounds %struct.b2JointEdge* %92, i32 0, i32 2
  store %struct.b2JointEdge* %88, %struct.b2JointEdge** %93, align 4
  br label %94

; <label>:94                                      ; preds = %84, %78
  %95 = load %class.b2Joint** %2, align 4
  %96 = getelementptr inbounds %class.b2Joint* %95, i32 0, i32 4
  %97 = load %class.b2Body** %bodyA, align 4
  %98 = getelementptr inbounds %class.b2Body* %97, i32 0, i32 14
  %99 = load %struct.b2JointEdge** %98, align 4
  %100 = icmp eq %struct.b2JointEdge* %96, %99
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %94
  %102 = load %class.b2Joint** %2, align 4
  %103 = getelementptr inbounds %class.b2Joint* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.b2JointEdge* %103, i32 0, i32 3
  %105 = load %struct.b2JointEdge** %104, align 4
  %106 = load %class.b2Body** %bodyA, align 4
  %107 = getelementptr inbounds %class.b2Body* %106, i32 0, i32 14
  store %struct.b2JointEdge* %105, %struct.b2JointEdge** %107, align 4
  br label %108

; <label>:108                                     ; preds = %101, %94
  %109 = load %class.b2Joint** %2, align 4
  %110 = getelementptr inbounds %class.b2Joint* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.b2JointEdge* %110, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %111, align 4
  %112 = load %class.b2Joint** %2, align 4
  %113 = getelementptr inbounds %class.b2Joint* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.b2JointEdge* %113, i32 0, i32 3
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %114, align 4
  %115 = load %class.b2Joint** %2, align 4
  %116 = getelementptr inbounds %class.b2Joint* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.b2JointEdge* %116, i32 0, i32 2
  %118 = load %struct.b2JointEdge** %117, align 4
  %119 = icmp ne %struct.b2JointEdge* %118, null
  br i1 %119, label %120, label %130

; <label>:120                                     ; preds = %108
  %121 = load %class.b2Joint** %2, align 4
  %122 = getelementptr inbounds %class.b2Joint* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.b2JointEdge* %122, i32 0, i32 3
  %124 = load %struct.b2JointEdge** %123, align 4
  %125 = load %class.b2Joint** %2, align 4
  %126 = getelementptr inbounds %class.b2Joint* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.b2JointEdge* %126, i32 0, i32 2
  %128 = load %struct.b2JointEdge** %127, align 4
  %129 = getelementptr inbounds %struct.b2JointEdge* %128, i32 0, i32 3
  store %struct.b2JointEdge* %124, %struct.b2JointEdge** %129, align 4
  br label %130

; <label>:130                                     ; preds = %120, %108
  %131 = load %class.b2Joint** %2, align 4
  %132 = getelementptr inbounds %class.b2Joint* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.b2JointEdge* %132, i32 0, i32 3
  %134 = load %struct.b2JointEdge** %133, align 4
  %135 = icmp ne %struct.b2JointEdge* %134, null
  br i1 %135, label %136, label %146

; <label>:136                                     ; preds = %130
  %137 = load %class.b2Joint** %2, align 4
  %138 = getelementptr inbounds %class.b2Joint* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.b2JointEdge* %138, i32 0, i32 2
  %140 = load %struct.b2JointEdge** %139, align 4
  %141 = load %class.b2Joint** %2, align 4
  %142 = getelementptr inbounds %class.b2Joint* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.b2JointEdge* %142, i32 0, i32 3
  %144 = load %struct.b2JointEdge** %143, align 4
  %145 = getelementptr inbounds %struct.b2JointEdge* %144, i32 0, i32 2
  store %struct.b2JointEdge* %140, %struct.b2JointEdge** %145, align 4
  br label %146

; <label>:146                                     ; preds = %136, %130
  %147 = load %class.b2Joint** %2, align 4
  %148 = getelementptr inbounds %class.b2Joint* %147, i32 0, i32 5
  %149 = load %class.b2Body** %bodyB, align 4
  %150 = getelementptr inbounds %class.b2Body* %149, i32 0, i32 14
  %151 = load %struct.b2JointEdge** %150, align 4
  %152 = icmp eq %struct.b2JointEdge* %148, %151
  br i1 %152, label %153, label %160

; <label>:153                                     ; preds = %146
  %154 = load %class.b2Joint** %2, align 4
  %155 = getelementptr inbounds %class.b2Joint* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.b2JointEdge* %155, i32 0, i32 3
  %157 = load %struct.b2JointEdge** %156, align 4
  %158 = load %class.b2Body** %bodyB, align 4
  %159 = getelementptr inbounds %class.b2Body* %158, i32 0, i32 14
  store %struct.b2JointEdge* %157, %struct.b2JointEdge** %159, align 4
  br label %160

; <label>:160                                     ; preds = %153, %146
  %161 = load %class.b2Joint** %2, align 4
  %162 = getelementptr inbounds %class.b2Joint* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.b2JointEdge* %162, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %163, align 4
  %164 = load %class.b2Joint** %2, align 4
  %165 = getelementptr inbounds %class.b2Joint* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.b2JointEdge* %165, i32 0, i32 3
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %166, align 4
  %167 = load %class.b2Joint** %2, align 4
  %168 = getelementptr inbounds %class.b2World* %3, i32 0, i32 0
  call void @_ZN7b2Joint7DestroyEPS_P16b2BlockAllocator(%class.b2Joint* %167, %class.b2BlockAllocator* %168)
  %169 = getelementptr inbounds %class.b2World* %3, i32 0, i32 7
  %170 = load i32* %169, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %160
  br label %175

; <label>:173                                     ; preds = %160
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN7b2World12DestroyJointEP7b2Joint, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %175

; <label>:175                                     ; preds = %174, %172
  %176 = getelementptr inbounds %class.b2World* %3, i32 0, i32 7
  %177 = load i32* %176, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 4
  %179 = load i8* %collideConnected, align 1
  %180 = trunc i8 %179 to i1
  %181 = zext i1 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %204

; <label>:183                                     ; preds = %175
  %184 = load %class.b2Body** %bodyB, align 4
  %185 = call %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %184)
  store %struct.b2ContactEdge* %185, %struct.b2ContactEdge** %edge, align 4
  br label %186

; <label>:186                                     ; preds = %199, %183
  %187 = load %struct.b2ContactEdge** %edge, align 4
  %188 = icmp ne %struct.b2ContactEdge* %187, null
  br i1 %188, label %189, label %203

; <label>:189                                     ; preds = %186
  %190 = load %struct.b2ContactEdge** %edge, align 4
  %191 = getelementptr inbounds %struct.b2ContactEdge* %190, i32 0, i32 0
  %192 = load %class.b2Body** %191, align 4
  %193 = load %class.b2Body** %bodyA, align 4
  %194 = icmp eq %class.b2Body* %192, %193
  br i1 %194, label %195, label %199

; <label>:195                                     ; preds = %189
  %196 = load %struct.b2ContactEdge** %edge, align 4
  %197 = getelementptr inbounds %struct.b2ContactEdge* %196, i32 0, i32 1
  %198 = load %class.b2Contact** %197, align 4
  call void @_ZN9b2Contact16FlagForFilteringEv(%class.b2Contact* %198)
  br label %199

; <label>:199                                     ; preds = %195, %189
  %200 = load %struct.b2ContactEdge** %edge, align 4
  %201 = getelementptr inbounds %struct.b2ContactEdge* %200, i32 0, i32 3
  %202 = load %struct.b2ContactEdge** %201, align 4
  store %struct.b2ContactEdge* %202, %struct.b2ContactEdge** %edge, align 4
  br label %186

; <label>:203                                     ; preds = %186
  br label %204

; <label>:204                                     ; preds = %12, %203, %175
  ret void
}

declare void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager*, %class.b2Contact*)

declare void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture*, %class.b2BroadPhase*)

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

declare void @_ZN6b2BodyD1Ev(%class.b2Body*)

define %class.b2Joint* @_ZN7b2World11CreateJointEPK10b2JointDef(%class.b2World* %this, %struct.b2JointDef* %def) align 2 {
  %1 = alloca %class.b2Joint*, align 4
  %2 = alloca %class.b2World*, align 4
  %3 = alloca %struct.b2JointDef*, align 4
  %j = alloca %class.b2Joint*, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %edge = alloca %struct.b2ContactEdge*, align 4
  store %class.b2World* %this, %class.b2World** %2, align 4
  store %struct.b2JointDef* %def, %struct.b2JointDef** %3, align 4
  %4 = load %class.b2World** %2
  %5 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %4)
  %6 = zext i1 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 214, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__._ZN7b2World11CreateJointEPK10b2JointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call zeroext i1 @_ZNK7b2World8IsLockedEv(%class.b2World* %4)
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %11
  store %class.b2Joint* null, %class.b2Joint** %1
  br label %159

; <label>:14                                      ; preds = %11
  %15 = load %struct.b2JointDef** %3, align 4
  %16 = getelementptr inbounds %class.b2World* %4, i32 0, i32 0
  %17 = call %class.b2Joint* @_ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator(%struct.b2JointDef* %15, %class.b2BlockAllocator* %16)
  store %class.b2Joint* %17, %class.b2Joint** %j, align 4
  %18 = load %class.b2Joint** %j, align 4
  %19 = getelementptr inbounds %class.b2Joint* %18, i32 0, i32 2
  store %class.b2Joint* null, %class.b2Joint** %19, align 4
  %20 = getelementptr inbounds %class.b2World* %4, i32 0, i32 5
  %21 = load %class.b2Joint** %20, align 4
  %22 = load %class.b2Joint** %j, align 4
  %23 = getelementptr inbounds %class.b2Joint* %22, i32 0, i32 3
  store %class.b2Joint* %21, %class.b2Joint** %23, align 4
  %24 = getelementptr inbounds %class.b2World* %4, i32 0, i32 5
  %25 = load %class.b2Joint** %24, align 4
  %26 = icmp ne %class.b2Joint* %25, null
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %14
  %28 = load %class.b2Joint** %j, align 4
  %29 = getelementptr inbounds %class.b2World* %4, i32 0, i32 5
  %30 = load %class.b2Joint** %29, align 4
  %31 = getelementptr inbounds %class.b2Joint* %30, i32 0, i32 2
  store %class.b2Joint* %28, %class.b2Joint** %31, align 4
  br label %32

; <label>:32                                      ; preds = %27, %14
  %33 = load %class.b2Joint** %j, align 4
  %34 = getelementptr inbounds %class.b2World* %4, i32 0, i32 5
  store %class.b2Joint* %33, %class.b2Joint** %34, align 4
  %35 = getelementptr inbounds %class.b2World* %4, i32 0, i32 7
  %36 = load i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %class.b2Joint** %j, align 4
  %39 = load %class.b2Joint** %j, align 4
  %40 = getelementptr inbounds %class.b2Joint* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.b2JointEdge* %40, i32 0, i32 1
  store %class.b2Joint* %38, %class.b2Joint** %41, align 4
  %42 = load %class.b2Joint** %j, align 4
  %43 = getelementptr inbounds %class.b2Joint* %42, i32 0, i32 7
  %44 = load %class.b2Body** %43, align 4
  %45 = load %class.b2Joint** %j, align 4
  %46 = getelementptr inbounds %class.b2Joint* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.b2JointEdge* %46, i32 0, i32 0
  store %class.b2Body* %44, %class.b2Body** %47, align 4
  %48 = load %class.b2Joint** %j, align 4
  %49 = getelementptr inbounds %class.b2Joint* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.b2JointEdge* %49, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %50, align 4
  %51 = load %class.b2Joint** %j, align 4
  %52 = getelementptr inbounds %class.b2Joint* %51, i32 0, i32 6
  %53 = load %class.b2Body** %52, align 4
  %54 = getelementptr inbounds %class.b2Body* %53, i32 0, i32 14
  %55 = load %struct.b2JointEdge** %54, align 4
  %56 = load %class.b2Joint** %j, align 4
  %57 = getelementptr inbounds %class.b2Joint* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.b2JointEdge* %57, i32 0, i32 3
  store %struct.b2JointEdge* %55, %struct.b2JointEdge** %58, align 4
  %59 = load %class.b2Joint** %j, align 4
  %60 = getelementptr inbounds %class.b2Joint* %59, i32 0, i32 6
  %61 = load %class.b2Body** %60, align 4
  %62 = getelementptr inbounds %class.b2Body* %61, i32 0, i32 14
  %63 = load %struct.b2JointEdge** %62, align 4
  %64 = icmp ne %struct.b2JointEdge* %63, null
  br i1 %64, label %65, label %74

; <label>:65                                      ; preds = %32
  %66 = load %class.b2Joint** %j, align 4
  %67 = getelementptr inbounds %class.b2Joint* %66, i32 0, i32 4
  %68 = load %class.b2Joint** %j, align 4
  %69 = getelementptr inbounds %class.b2Joint* %68, i32 0, i32 6
  %70 = load %class.b2Body** %69, align 4
  %71 = getelementptr inbounds %class.b2Body* %70, i32 0, i32 14
  %72 = load %struct.b2JointEdge** %71, align 4
  %73 = getelementptr inbounds %struct.b2JointEdge* %72, i32 0, i32 2
  store %struct.b2JointEdge* %67, %struct.b2JointEdge** %73, align 4
  br label %74

; <label>:74                                      ; preds = %65, %32
  %75 = load %class.b2Joint** %j, align 4
  %76 = getelementptr inbounds %class.b2Joint* %75, i32 0, i32 4
  %77 = load %class.b2Joint** %j, align 4
  %78 = getelementptr inbounds %class.b2Joint* %77, i32 0, i32 6
  %79 = load %class.b2Body** %78, align 4
  %80 = getelementptr inbounds %class.b2Body* %79, i32 0, i32 14
  store %struct.b2JointEdge* %76, %struct.b2JointEdge** %80, align 4
  %81 = load %class.b2Joint** %j, align 4
  %82 = load %class.b2Joint** %j, align 4
  %83 = getelementptr inbounds %class.b2Joint* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.b2JointEdge* %83, i32 0, i32 1
  store %class.b2Joint* %81, %class.b2Joint** %84, align 4
  %85 = load %class.b2Joint** %j, align 4
  %86 = getelementptr inbounds %class.b2Joint* %85, i32 0, i32 6
  %87 = load %class.b2Body** %86, align 4
  %88 = load %class.b2Joint** %j, align 4
  %89 = getelementptr inbounds %class.b2Joint* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.b2JointEdge* %89, i32 0, i32 0
  store %class.b2Body* %87, %class.b2Body** %90, align 4
  %91 = load %class.b2Joint** %j, align 4
  %92 = getelementptr inbounds %class.b2Joint* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.b2JointEdge* %92, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %93, align 4
  %94 = load %class.b2Joint** %j, align 4
  %95 = getelementptr inbounds %class.b2Joint* %94, i32 0, i32 7
  %96 = load %class.b2Body** %95, align 4
  %97 = getelementptr inbounds %class.b2Body* %96, i32 0, i32 14
  %98 = load %struct.b2JointEdge** %97, align 4
  %99 = load %class.b2Joint** %j, align 4
  %100 = getelementptr inbounds %class.b2Joint* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.b2JointEdge* %100, i32 0, i32 3
  store %struct.b2JointEdge* %98, %struct.b2JointEdge** %101, align 4
  %102 = load %class.b2Joint** %j, align 4
  %103 = getelementptr inbounds %class.b2Joint* %102, i32 0, i32 7
  %104 = load %class.b2Body** %103, align 4
  %105 = getelementptr inbounds %class.b2Body* %104, i32 0, i32 14
  %106 = load %struct.b2JointEdge** %105, align 4
  %107 = icmp ne %struct.b2JointEdge* %106, null
  br i1 %107, label %108, label %117

; <label>:108                                     ; preds = %74
  %109 = load %class.b2Joint** %j, align 4
  %110 = getelementptr inbounds %class.b2Joint* %109, i32 0, i32 5
  %111 = load %class.b2Joint** %j, align 4
  %112 = getelementptr inbounds %class.b2Joint* %111, i32 0, i32 7
  %113 = load %class.b2Body** %112, align 4
  %114 = getelementptr inbounds %class.b2Body* %113, i32 0, i32 14
  %115 = load %struct.b2JointEdge** %114, align 4
  %116 = getelementptr inbounds %struct.b2JointEdge* %115, i32 0, i32 2
  store %struct.b2JointEdge* %110, %struct.b2JointEdge** %116, align 4
  br label %117

; <label>:117                                     ; preds = %108, %74
  %118 = load %class.b2Joint** %j, align 4
  %119 = getelementptr inbounds %class.b2Joint* %118, i32 0, i32 5
  %120 = load %class.b2Joint** %j, align 4
  %121 = getelementptr inbounds %class.b2Joint* %120, i32 0, i32 7
  %122 = load %class.b2Body** %121, align 4
  %123 = getelementptr inbounds %class.b2Body* %122, i32 0, i32 14
  store %struct.b2JointEdge* %119, %struct.b2JointEdge** %123, align 4
  %124 = load %struct.b2JointDef** %3, align 4
  %125 = getelementptr inbounds %struct.b2JointDef* %124, i32 0, i32 2
  %126 = load %class.b2Body** %125, align 4
  store %class.b2Body* %126, %class.b2Body** %bodyA, align 4
  %127 = load %struct.b2JointDef** %3, align 4
  %128 = getelementptr inbounds %struct.b2JointDef* %127, i32 0, i32 3
  %129 = load %class.b2Body** %128, align 4
  store %class.b2Body* %129, %class.b2Body** %bodyB, align 4
  %130 = load %struct.b2JointDef** %3, align 4
  %131 = getelementptr inbounds %struct.b2JointDef* %130, i32 0, i32 4
  %132 = load i8* %131, align 1
  %133 = trunc i8 %132 to i1
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %157

; <label>:136                                     ; preds = %117
  %137 = load %class.b2Body** %bodyB, align 4
  %138 = call %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %137)
  store %struct.b2ContactEdge* %138, %struct.b2ContactEdge** %edge, align 4
  br label %139

; <label>:139                                     ; preds = %152, %136
  %140 = load %struct.b2ContactEdge** %edge, align 4
  %141 = icmp ne %struct.b2ContactEdge* %140, null
  br i1 %141, label %142, label %156

; <label>:142                                     ; preds = %139
  %143 = load %struct.b2ContactEdge** %edge, align 4
  %144 = getelementptr inbounds %struct.b2ContactEdge* %143, i32 0, i32 0
  %145 = load %class.b2Body** %144, align 4
  %146 = load %class.b2Body** %bodyA, align 4
  %147 = icmp eq %class.b2Body* %145, %146
  br i1 %147, label %148, label %152

; <label>:148                                     ; preds = %142
  %149 = load %struct.b2ContactEdge** %edge, align 4
  %150 = getelementptr inbounds %struct.b2ContactEdge* %149, i32 0, i32 1
  %151 = load %class.b2Contact** %150, align 4
  call void @_ZN9b2Contact16FlagForFilteringEv(%class.b2Contact* %151)
  br label %152

; <label>:152                                     ; preds = %148, %142
  %153 = load %struct.b2ContactEdge** %edge, align 4
  %154 = getelementptr inbounds %struct.b2ContactEdge* %153, i32 0, i32 3
  %155 = load %struct.b2ContactEdge** %154, align 4
  store %struct.b2ContactEdge* %155, %struct.b2ContactEdge** %edge, align 4
  br label %139

; <label>:156                                     ; preds = %139
  br label %157

; <label>:157                                     ; preds = %156, %117
  %158 = load %class.b2Joint** %j, align 4
  store %class.b2Joint* %158, %class.b2Joint** %1
  br label %159

; <label>:159                                     ; preds = %157, %13
  %160 = load %class.b2Joint** %1
  ret %class.b2Joint* %160
}

declare %class.b2Joint* @_ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator(%struct.b2JointDef*, %class.b2BlockAllocator*)

define linkonce_odr %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 15
  %4 = load %struct.b2ContactEdge** %3, align 4
  ret %struct.b2ContactEdge* %4
}

define linkonce_odr void @_ZN9b2Contact16FlagForFilteringEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = or i32 %4, 8
  store i32 %5, i32* %3, align 4
  ret void
}

define linkonce_odr void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %this, i1 zeroext %flag) nounwind inlinehint align 2 {
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

declare void @_ZN7b2Joint7DestroyEPS_P16b2BlockAllocator(%class.b2Joint*, %class.b2BlockAllocator*)

define void @_ZN7b2World16SetAllowSleepingEb(%class.b2World* %this, i1 zeroext %flag) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca i8, align 1
  %b = alloca %class.b2Body*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2World** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %class.b2World* %4, i32 0, i32 9
  %9 = load i8* %8, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i32
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %37

; <label>:14                                      ; preds = %0
  %15 = load i8* %2, align 1
  %16 = trunc i8 %15 to i1
  %17 = getelementptr inbounds %class.b2World* %4, i32 0, i32 9
  %18 = zext i1 %16 to i8
  store i8 %18, i8* %17, align 1
  %19 = getelementptr inbounds %class.b2World* %4, i32 0, i32 9
  %20 = load i8* %19, align 1
  %21 = trunc i8 %20 to i1
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

; <label>:24                                      ; preds = %14
  %25 = getelementptr inbounds %class.b2World* %4, i32 0, i32 4
  %26 = load %class.b2Body** %25, align 4
  store %class.b2Body* %26, %class.b2Body** %b, align 4
  br label %27

; <label>:27                                      ; preds = %32, %24
  %28 = load %class.b2Body** %b, align 4
  %29 = icmp ne %class.b2Body* %28, null
  br i1 %29, label %30, label %36

; <label>:30                                      ; preds = %27
  %31 = load %class.b2Body** %b, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %31, i1 zeroext true)
  br label %32

; <label>:32                                      ; preds = %30
  %33 = load %class.b2Body** %b, align 4
  %34 = getelementptr inbounds %class.b2Body* %33, i32 0, i32 11
  %35 = load %class.b2Body** %34, align 4
  store %class.b2Body* %35, %class.b2Body** %b, align 4
  br label %27

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %13, %36, %14
  ret void
}

define void @_ZN7b2World5SolveERK10b2TimeStep(%class.b2World* %this, %struct.b2TimeStep* %step) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %struct.b2TimeStep*, align 4
  %island = alloca %class.b2Island, align 4
  %b = alloca %class.b2Body*, align 4
  %c = alloca %class.b2Contact*, align 4
  %j = alloca %class.b2Joint*, align 4
  %stackSize = alloca i32, align 4
  %stack = alloca %class.b2Body**, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %seed = alloca %class.b2Body*, align 4
  %stackCount = alloca i32, align 4
  %b1 = alloca %class.b2Body*, align 4
  %ce = alloca %struct.b2ContactEdge*, align 4
  %contact = alloca %class.b2Contact*, align 4
  %sensorA = alloca i8, align 1
  %sensorB = alloca i8, align 1
  %other = alloca %class.b2Body*, align 4
  %je = alloca %struct.b2JointEdge*, align 4
  %other2 = alloca %class.b2Body*, align 4
  %profile = alloca %struct.b2Profile, align 4
  %i = alloca i32, align 4
  %b3 = alloca %class.b2Body*, align 4
  %timer = alloca %class.b2Timer, align 4
  %b4 = alloca %class.b2Body*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %struct.b2TimeStep* %step, %struct.b2TimeStep** %2, align 4
  %5 = load %class.b2World** %1
  %6 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %7 = getelementptr inbounds %struct.b2Profile* %6, i32 0, i32 3
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %9 = getelementptr inbounds %struct.b2Profile* %8, i32 0, i32 4
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %11 = getelementptr inbounds %struct.b2Profile* %10, i32 0, i32 5
  store float 0.000000e+00, float* %11, align 4
  %12 = getelementptr inbounds %class.b2World* %5, i32 0, i32 6
  %13 = load i32* %12, align 4
  %14 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %15 = getelementptr inbounds %class.b2ContactManager* %14, i32 0, i32 2
  %16 = load i32* %15, align 4
  %17 = getelementptr inbounds %class.b2World* %5, i32 0, i32 7
  %18 = load i32* %17, align 4
  %19 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  %20 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %21 = getelementptr inbounds %class.b2ContactManager* %20, i32 0, i32 4
  %22 = load %class.b2ContactListener** %21, align 4
  call void @_ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener(%class.b2Island* %island, i32 %13, i32 %16, i32 %18, %class.b2StackAllocator* %19, %class.b2ContactListener* %22)
  %23 = getelementptr inbounds %class.b2World* %5, i32 0, i32 4
  %24 = load %class.b2Body** %23, align 4
  store %class.b2Body* %24, %class.b2Body** %b, align 4
  br label %25

; <label>:25                                      ; preds = %35, %0
  %26 = load %class.b2Body** %b, align 4
  %27 = icmp ne %class.b2Body* %26, null
  br i1 %27, label %28, label %39

; <label>:28                                      ; preds = %25
  %29 = load %class.b2Body** %b, align 4
  %30 = getelementptr inbounds %class.b2Body* %29, i32 0, i32 1
  %31 = load i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, -2
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %30, align 2
  br label %35

; <label>:35                                      ; preds = %28
  %36 = load %class.b2Body** %b, align 4
  %37 = getelementptr inbounds %class.b2Body* %36, i32 0, i32 11
  %38 = load %class.b2Body** %37, align 4
  store %class.b2Body* %38, %class.b2Body** %b, align 4
  br label %25

; <label>:39                                      ; preds = %25
  %40 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %41 = getelementptr inbounds %class.b2ContactManager* %40, i32 0, i32 1
  %42 = load %class.b2Contact** %41, align 4
  store %class.b2Contact* %42, %class.b2Contact** %c, align 4
  br label %43

; <label>:43                                      ; preds = %51, %39
  %44 = load %class.b2Contact** %c, align 4
  %45 = icmp ne %class.b2Contact* %44, null
  br i1 %45, label %46, label %55

; <label>:46                                      ; preds = %43
  %47 = load %class.b2Contact** %c, align 4
  %48 = getelementptr inbounds %class.b2Contact* %47, i32 0, i32 1
  %49 = load i32* %48, align 4
  %50 = and i32 %49, -2
  store i32 %50, i32* %48, align 4
  br label %51

; <label>:51                                      ; preds = %46
  %52 = load %class.b2Contact** %c, align 4
  %53 = getelementptr inbounds %class.b2Contact* %52, i32 0, i32 3
  %54 = load %class.b2Contact** %53, align 4
  store %class.b2Contact* %54, %class.b2Contact** %c, align 4
  br label %43

; <label>:55                                      ; preds = %43
  %56 = getelementptr inbounds %class.b2World* %5, i32 0, i32 5
  %57 = load %class.b2Joint** %56, align 4
  store %class.b2Joint* %57, %class.b2Joint** %j, align 4
  br label %58

; <label>:58                                      ; preds = %64, %55
  %59 = load %class.b2Joint** %j, align 4
  %60 = icmp ne %class.b2Joint* %59, null
  br i1 %60, label %61, label %68

; <label>:61                                      ; preds = %58
  %62 = load %class.b2Joint** %j, align 4
  %63 = getelementptr inbounds %class.b2Joint* %62, i32 0, i32 9
  store i8 0, i8* %63, align 1
  br label %64

; <label>:64                                      ; preds = %61
  %65 = load %class.b2Joint** %j, align 4
  %66 = getelementptr inbounds %class.b2Joint* %65, i32 0, i32 3
  %67 = load %class.b2Joint** %66, align 4
  store %class.b2Joint* %67, %class.b2Joint** %j, align 4
  br label %58

; <label>:68                                      ; preds = %58
  %69 = getelementptr inbounds %class.b2World* %5, i32 0, i32 6
  %70 = load i32* %69, align 4
  store i32 %70, i32* %stackSize, align 4
  %71 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  %72 = load i32* %stackSize, align 4
  %73 = mul i32 %72, 4
  %74 = invoke i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %71, i32 %73)
          to label %75 unwind label %90

; <label>:75                                      ; preds = %68
  %76 = bitcast i8* %74 to %class.b2Body**
  store %class.b2Body** %76, %class.b2Body*** %stack, align 4
  %77 = getelementptr inbounds %class.b2World* %5, i32 0, i32 4
  %78 = load %class.b2Body** %77, align 4
  store %class.b2Body* %78, %class.b2Body** %seed, align 4
  br label %79

; <label>:79                                      ; preds = %363, %75
  %80 = load %class.b2Body** %seed, align 4
  %81 = icmp ne %class.b2Body* %80, null
  br i1 %81, label %82, label %367

; <label>:82                                      ; preds = %79
  %83 = load %class.b2Body** %seed, align 4
  %84 = getelementptr inbounds %class.b2Body* %83, i32 0, i32 1
  %85 = load i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

; <label>:89                                      ; preds = %82
  br label %363

; <label>:90                                      ; preds = %401, %399, %395, %392, %386, %371, %367, %341, %311, %271, %261, %204, %176, %170, %147, %145, %143, %129, %113, %107, %100, %94, %68
  %91 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %3
  %93 = extractvalue { i8*, i32 } %91, 1
  store i32 %93, i32* %4
  invoke void @_ZN8b2IslandD1Ev(%class.b2Island* %island)
          to label %406 unwind label %413

; <label>:94                                      ; preds = %82
  %95 = load %class.b2Body** %seed, align 4
  %96 = invoke zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %95)
          to label %97 unwind label %90

; <label>:97                                      ; preds = %94
  %98 = zext i1 %96 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

; <label>:100                                     ; preds = %97
  %101 = load %class.b2Body** %seed, align 4
  %102 = invoke zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %101)
          to label %103 unwind label %90

; <label>:103                                     ; preds = %100
  %104 = zext i1 %102 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %103, %97
  br label %363

; <label>:107                                     ; preds = %103
  %108 = load %class.b2Body** %seed, align 4
  %109 = invoke i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %108)
          to label %110 unwind label %90

; <label>:110                                     ; preds = %107
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %110
  br label %363

; <label>:113                                     ; preds = %110
  invoke void @_ZN8b2Island5ClearEv(%class.b2Island* %island)
          to label %114 unwind label %90

; <label>:114                                     ; preds = %113
  store i32 0, i32* %stackCount, align 4
  %115 = load %class.b2Body** %seed, align 4
  %116 = load i32* %stackCount, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %stackCount, align 4
  %118 = load %class.b2Body*** %stack, align 4
  %119 = getelementptr inbounds %class.b2Body** %118, i32 %116
  store %class.b2Body* %115, %class.b2Body** %119
  %120 = load %class.b2Body** %seed, align 4
  %121 = getelementptr inbounds %class.b2Body* %120, i32 0, i32 1
  %122 = load i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, 1
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %121, align 2
  br label %126

; <label>:126                                     ; preds = %310, %152, %114
  %127 = load i32* %stackCount, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %311

; <label>:129                                     ; preds = %126
  %130 = load i32* %stackCount, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %stackCount, align 4
  %132 = load %class.b2Body*** %stack, align 4
  %133 = getelementptr inbounds %class.b2Body** %132, i32 %131
  %134 = load %class.b2Body** %133
  store %class.b2Body* %134, %class.b2Body** %b1, align 4
  %135 = load %class.b2Body** %b1, align 4
  %136 = invoke zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %135)
          to label %137 unwind label %90

; <label>:137                                     ; preds = %129
  %138 = zext i1 %136 to i32
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %137
  br label %143

; <label>:141                                     ; preds = %137
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN7b2World5SolveERK10b2TimeStep, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %143

; <label>:143                                     ; preds = %142, %140
  %144 = load %class.b2Body** %b1, align 4
  invoke void @_ZN8b2Island3AddEP6b2Body(%class.b2Island* %island, %class.b2Body* %144)
          to label %145 unwind label %90

; <label>:145                                     ; preds = %143
  %146 = load %class.b2Body** %b1, align 4
  invoke void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %146, i1 zeroext true)
          to label %147 unwind label %90

; <label>:147                                     ; preds = %145
  %148 = load %class.b2Body** %b1, align 4
  %149 = invoke i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %148)
          to label %150 unwind label %90

; <label>:150                                     ; preds = %147
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %150
  br label %126

; <label>:153                                     ; preds = %150
  %154 = load %class.b2Body** %b1, align 4
  %155 = getelementptr inbounds %class.b2Body* %154, i32 0, i32 15
  %156 = load %struct.b2ContactEdge** %155, align 4
  store %struct.b2ContactEdge* %156, %struct.b2ContactEdge** %ce, align 4
  br label %157

; <label>:157                                     ; preds = %240, %153
  %158 = load %struct.b2ContactEdge** %ce, align 4
  %159 = icmp ne %struct.b2ContactEdge* %158, null
  br i1 %159, label %160, label %244

; <label>:160                                     ; preds = %157
  %161 = load %struct.b2ContactEdge** %ce, align 4
  %162 = getelementptr inbounds %struct.b2ContactEdge* %161, i32 0, i32 1
  %163 = load %class.b2Contact** %162, align 4
  store %class.b2Contact* %163, %class.b2Contact** %contact, align 4
  %164 = load %class.b2Contact** %contact, align 4
  %165 = getelementptr inbounds %class.b2Contact* %164, i32 0, i32 1
  %166 = load i32* %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %160
  br label %240

; <label>:170                                     ; preds = %160
  %171 = load %class.b2Contact** %contact, align 4
  %172 = invoke zeroext i1 @_ZNK9b2Contact9IsEnabledEv(%class.b2Contact* %171)
          to label %173 unwind label %90

; <label>:173                                     ; preds = %170
  %174 = zext i1 %172 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %182, label %176

; <label>:176                                     ; preds = %173
  %177 = load %class.b2Contact** %contact, align 4
  %178 = invoke zeroext i1 @_ZNK9b2Contact10IsTouchingEv(%class.b2Contact* %177)
          to label %179 unwind label %90

; <label>:179                                     ; preds = %176
  %180 = zext i1 %178 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %179, %173
  br label %240

; <label>:183                                     ; preds = %179
  %184 = load %class.b2Contact** %contact, align 4
  %185 = getelementptr inbounds %class.b2Contact* %184, i32 0, i32 6
  %186 = load %class.b2Fixture** %185, align 4
  %187 = getelementptr inbounds %class.b2Fixture* %186, i32 0, i32 9
  %188 = load i8* %187, align 1
  %189 = trunc i8 %188 to i1
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %sensorA, align 1
  %191 = load %class.b2Contact** %contact, align 4
  %192 = getelementptr inbounds %class.b2Contact* %191, i32 0, i32 7
  %193 = load %class.b2Fixture** %192, align 4
  %194 = getelementptr inbounds %class.b2Fixture* %193, i32 0, i32 9
  %195 = load i8* %194, align 1
  %196 = trunc i8 %195 to i1
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %sensorB, align 1
  %198 = load i8* %sensorA, align 1
  %199 = trunc i8 %198 to i1
  br i1 %199, label %203, label %200

; <label>:200                                     ; preds = %183
  %201 = load i8* %sensorB, align 1
  %202 = trunc i8 %201 to i1
  br i1 %202, label %203, label %204

; <label>:203                                     ; preds = %200, %183
  br label %240

; <label>:204                                     ; preds = %200
  %205 = load %class.b2Contact** %contact, align 4
  invoke void @_ZN8b2Island3AddEP9b2Contact(%class.b2Island* %island, %class.b2Contact* %205)
          to label %206 unwind label %90

; <label>:206                                     ; preds = %204
  %207 = load %class.b2Contact** %contact, align 4
  %208 = getelementptr inbounds %class.b2Contact* %207, i32 0, i32 1
  %209 = load i32* %208, align 4
  %210 = or i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load %struct.b2ContactEdge** %ce, align 4
  %212 = getelementptr inbounds %struct.b2ContactEdge* %211, i32 0, i32 0
  %213 = load %class.b2Body** %212, align 4
  store %class.b2Body* %213, %class.b2Body** %other, align 4
  %214 = load %class.b2Body** %other, align 4
  %215 = getelementptr inbounds %class.b2Body* %214, i32 0, i32 1
  %216 = load i16* %215, align 2
  %217 = zext i16 %216 to i32
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %206
  br label %240

; <label>:221                                     ; preds = %206
  %222 = load i32* %stackCount, align 4
  %223 = load i32* %stackSize, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %221
  br label %228

; <label>:226                                     ; preds = %221
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 495, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN7b2World5SolveERK10b2TimeStep, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %228

; <label>:228                                     ; preds = %227, %225
  %229 = load %class.b2Body** %other, align 4
  %230 = load i32* %stackCount, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %stackCount, align 4
  %232 = load %class.b2Body*** %stack, align 4
  %233 = getelementptr inbounds %class.b2Body** %232, i32 %230
  store %class.b2Body* %229, %class.b2Body** %233
  %234 = load %class.b2Body** %other, align 4
  %235 = getelementptr inbounds %class.b2Body* %234, i32 0, i32 1
  %236 = load i16* %235, align 2
  %237 = zext i16 %236 to i32
  %238 = or i32 %237, 1
  %239 = trunc i32 %238 to i16
  store i16 %239, i16* %235, align 2
  br label %240

; <label>:240                                     ; preds = %228, %220, %203, %182, %169
  %241 = load %struct.b2ContactEdge** %ce, align 4
  %242 = getelementptr inbounds %struct.b2ContactEdge* %241, i32 0, i32 3
  %243 = load %struct.b2ContactEdge** %242, align 4
  store %struct.b2ContactEdge* %243, %struct.b2ContactEdge** %ce, align 4
  br label %157

; <label>:244                                     ; preds = %157
  %245 = load %class.b2Body** %b1, align 4
  %246 = getelementptr inbounds %class.b2Body* %245, i32 0, i32 14
  %247 = load %struct.b2JointEdge** %246, align 4
  store %struct.b2JointEdge* %247, %struct.b2JointEdge** %je, align 4
  br label %248

; <label>:248                                     ; preds = %306, %244
  %249 = load %struct.b2JointEdge** %je, align 4
  %250 = icmp ne %struct.b2JointEdge* %249, null
  br i1 %250, label %251, label %310

; <label>:251                                     ; preds = %248
  %252 = load %struct.b2JointEdge** %je, align 4
  %253 = getelementptr inbounds %struct.b2JointEdge* %252, i32 0, i32 1
  %254 = load %class.b2Joint** %253, align 4
  %255 = getelementptr inbounds %class.b2Joint* %254, i32 0, i32 9
  %256 = load i8* %255, align 1
  %257 = trunc i8 %256 to i1
  %258 = zext i1 %257 to i32
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %251
  br label %306

; <label>:261                                     ; preds = %251
  %262 = load %struct.b2JointEdge** %je, align 4
  %263 = getelementptr inbounds %struct.b2JointEdge* %262, i32 0, i32 0
  %264 = load %class.b2Body** %263, align 4
  store %class.b2Body* %264, %class.b2Body** %other2, align 4
  %265 = load %class.b2Body** %other2, align 4
  %266 = invoke zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %265)
          to label %267 unwind label %90

; <label>:267                                     ; preds = %261
  %268 = zext i1 %266 to i32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

; <label>:270                                     ; preds = %267
  br label %306

; <label>:271                                     ; preds = %267
  %272 = load %struct.b2JointEdge** %je, align 4
  %273 = getelementptr inbounds %struct.b2JointEdge* %272, i32 0, i32 1
  %274 = load %class.b2Joint** %273, align 4
  invoke void @_ZN8b2Island3AddEP7b2Joint(%class.b2Island* %island, %class.b2Joint* %274)
          to label %275 unwind label %90

; <label>:275                                     ; preds = %271
  %276 = load %struct.b2JointEdge** %je, align 4
  %277 = getelementptr inbounds %struct.b2JointEdge* %276, i32 0, i32 1
  %278 = load %class.b2Joint** %277, align 4
  %279 = getelementptr inbounds %class.b2Joint* %278, i32 0, i32 9
  store i8 1, i8* %279, align 1
  %280 = load %class.b2Body** %other2, align 4
  %281 = getelementptr inbounds %class.b2Body* %280, i32 0, i32 1
  %282 = load i16* %281, align 2
  %283 = zext i16 %282 to i32
  %284 = and i32 %283, 1
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

; <label>:286                                     ; preds = %275
  br label %306

; <label>:287                                     ; preds = %275
  %288 = load i32* %stackCount, align 4
  %289 = load i32* %stackSize, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %292

; <label>:291                                     ; preds = %287
  br label %294

; <label>:292                                     ; preds = %287
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 524, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN7b2World5SolveERK10b2TimeStep, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %294

; <label>:294                                     ; preds = %293, %291
  %295 = load %class.b2Body** %other2, align 4
  %296 = load i32* %stackCount, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %stackCount, align 4
  %298 = load %class.b2Body*** %stack, align 4
  %299 = getelementptr inbounds %class.b2Body** %298, i32 %296
  store %class.b2Body* %295, %class.b2Body** %299
  %300 = load %class.b2Body** %other2, align 4
  %301 = getelementptr inbounds %class.b2Body* %300, i32 0, i32 1
  %302 = load i16* %301, align 2
  %303 = zext i16 %302 to i32
  %304 = or i32 %303, 1
  %305 = trunc i32 %304 to i16
  store i16 %305, i16* %301, align 2
  br label %306

; <label>:306                                     ; preds = %294, %286, %270, %260
  %307 = load %struct.b2JointEdge** %je, align 4
  %308 = getelementptr inbounds %struct.b2JointEdge* %307, i32 0, i32 3
  %309 = load %struct.b2JointEdge** %308, align 4
  store %struct.b2JointEdge* %309, %struct.b2JointEdge** %je, align 4
  br label %248

; <label>:310                                     ; preds = %248
  br label %126

; <label>:311                                     ; preds = %126
  %312 = load %struct.b2TimeStep** %2
  %313 = getelementptr inbounds %class.b2World* %5, i32 0, i32 8
  %314 = getelementptr inbounds %class.b2World* %5, i32 0, i32 9
  %315 = load i8* %314, align 1
  %316 = trunc i8 %315 to i1
  invoke void @_ZN8b2Island5SolveEP9b2ProfileRK10b2TimeStepRK6b2Vec2b(%class.b2Island* %island, %struct.b2Profile* %profile, %struct.b2TimeStep* %312, %struct.b2Vec2* %313, i1 zeroext %316)
          to label %317 unwind label %90

; <label>:317                                     ; preds = %311
  %318 = getelementptr inbounds %struct.b2Profile* %profile, i32 0, i32 3
  %319 = load float* %318, align 4
  %320 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %321 = getelementptr inbounds %struct.b2Profile* %320, i32 0, i32 3
  %322 = load float* %321, align 4
  %323 = fadd float %322, %319
  store float %323, float* %321, align 4
  %324 = getelementptr inbounds %struct.b2Profile* %profile, i32 0, i32 4
  %325 = load float* %324, align 4
  %326 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %327 = getelementptr inbounds %struct.b2Profile* %326, i32 0, i32 4
  %328 = load float* %327, align 4
  %329 = fadd float %328, %325
  store float %329, float* %327, align 4
  %330 = getelementptr inbounds %struct.b2Profile* %profile, i32 0, i32 5
  %331 = load float* %330, align 4
  %332 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %333 = getelementptr inbounds %struct.b2Profile* %332, i32 0, i32 5
  %334 = load float* %333, align 4
  %335 = fadd float %334, %331
  store float %335, float* %333, align 4
  store i32 0, i32* %i, align 4
  br label %336

; <label>:336                                     ; preds = %359, %317
  %337 = load i32* %i, align 4
  %338 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 7
  %339 = load i32* %338, align 4
  %340 = icmp slt i32 %337, %339
  br i1 %340, label %341, label %362

; <label>:341                                     ; preds = %336
  %342 = load i32* %i, align 4
  %343 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 2
  %344 = load %class.b2Body*** %343, align 4
  %345 = getelementptr inbounds %class.b2Body** %344, i32 %342
  %346 = load %class.b2Body** %345
  store %class.b2Body* %346, %class.b2Body** %b3, align 4
  %347 = load %class.b2Body** %b3, align 4
  %348 = invoke i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %347)
          to label %349 unwind label %90

; <label>:349                                     ; preds = %341
  %350 = icmp eq i32 %348, 0
  br i1 %350, label %351, label %358

; <label>:351                                     ; preds = %349
  %352 = load %class.b2Body** %b3, align 4
  %353 = getelementptr inbounds %class.b2Body* %352, i32 0, i32 1
  %354 = load i16* %353, align 2
  %355 = zext i16 %354 to i32
  %356 = and i32 %355, -2
  %357 = trunc i32 %356 to i16
  store i16 %357, i16* %353, align 2
  br label %358

; <label>:358                                     ; preds = %351, %349
  br label %359

; <label>:359                                     ; preds = %358
  %360 = load i32* %i, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %i, align 4
  br label %336

; <label>:362                                     ; preds = %336
  br label %363

; <label>:363                                     ; preds = %362, %112, %106, %89
  %364 = load %class.b2Body** %seed, align 4
  %365 = getelementptr inbounds %class.b2Body* %364, i32 0, i32 11
  %366 = load %class.b2Body** %365, align 4
  store %class.b2Body* %366, %class.b2Body** %seed, align 4
  br label %79

; <label>:367                                     ; preds = %79
  %368 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  %369 = load %class.b2Body*** %stack, align 4
  %370 = bitcast %class.b2Body** %369 to i8*
  invoke void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %368, i8* %370)
          to label %371 unwind label %90

; <label>:371                                     ; preds = %367
  invoke void @_ZN7b2TimerC1Ev(%class.b2Timer* %timer)
          to label %372 unwind label %90

; <label>:372                                     ; preds = %371
  %373 = getelementptr inbounds %class.b2World* %5, i32 0, i32 4
  %374 = load %class.b2Body** %373, align 4
  store %class.b2Body* %374, %class.b2Body** %b4, align 4
  br label %375

; <label>:375                                     ; preds = %398, %372
  %376 = load %class.b2Body** %b4, align 4
  %377 = icmp ne %class.b2Body* %376, null
  br i1 %377, label %378, label %399

; <label>:378                                     ; preds = %375
  %379 = load %class.b2Body** %b4, align 4
  %380 = getelementptr inbounds %class.b2Body* %379, i32 0, i32 1
  %381 = load i16* %380, align 2
  %382 = zext i16 %381 to i32
  %383 = and i32 %382, 1
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %386

; <label>:385                                     ; preds = %378
  br label %395

; <label>:386                                     ; preds = %378
  %387 = load %class.b2Body** %b4, align 4
  %388 = invoke i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %387)
          to label %389 unwind label %90

; <label>:389                                     ; preds = %386
  %390 = icmp eq i32 %388, 0
  br i1 %390, label %391, label %392

; <label>:391                                     ; preds = %389
  br label %395

; <label>:392                                     ; preds = %389
  %393 = load %class.b2Body** %b4, align 4
  invoke void @_ZN6b2Body19SynchronizeFixturesEv(%class.b2Body* %393)
          to label %394 unwind label %90

; <label>:394                                     ; preds = %392
  br label %395

; <label>:395                                     ; preds = %394, %391, %385
  %396 = load %class.b2Body** %b4, align 4
  %397 = invoke %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %396)
          to label %398 unwind label %90

; <label>:398                                     ; preds = %395
  store %class.b2Body* %397, %class.b2Body** %b4, align 4
  br label %375

; <label>:399                                     ; preds = %375
  %400 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  invoke void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager* %400)
          to label %401 unwind label %90

; <label>:401                                     ; preds = %399
  %402 = invoke float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer)
          to label %403 unwind label %90

; <label>:403                                     ; preds = %401
  %404 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %405 = getelementptr inbounds %struct.b2Profile* %404, i32 0, i32 6
  store float %402, float* %405, align 4
  call void @_ZN8b2IslandD1Ev(%class.b2Island* %island)
  ret void

; <label>:406                                     ; preds = %90
  br label %407

; <label>:407                                     ; preds = %406
  %408 = load i8** %3
  %409 = load i8** %3
  %410 = load i32* %4
  %411 = insertvalue { i8*, i32 } undef, i8* %409, 0
  %412 = insertvalue { i8*, i32 } %411, i32 %410, 1
  resume { i8*, i32 } %412

; <label>:413                                     ; preds = %90
  %414 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener(%class.b2Island*, i32, i32, i32, %class.b2StackAllocator*, %class.b2ContactListener*)

declare i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator*, i32)

define linkonce_odr zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 2
  ret i1 %7
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

define linkonce_odr i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  ret i32 %4
}

define linkonce_odr void @_ZN8b2Island5ClearEv(%class.b2Island* %this) nounwind align 2 {
  %1 = alloca %class.b2Island*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  %2 = load %class.b2Island** %1
  %3 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 7
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 9
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 8
  store i32 0, i32* %5, align 4
  ret void
}

define linkonce_odr void @_ZN8b2Island3AddEP6b2Body(%class.b2Island* %this, %class.b2Body* %body) nounwind align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %class.b2Body*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %class.b2Body* %body, %class.b2Body** %2, align 4
  %3 = load %class.b2Island** %1
  %4 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 7
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 10
  %7 = load i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str26, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__._ZN8b2Island3AddEP6b2Body, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 7
  %14 = load i32* %13, align 4
  %15 = load %class.b2Body** %2, align 4
  %16 = getelementptr inbounds %class.b2Body* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %class.b2Body** %2, align 4
  %18 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 7
  %19 = load i32* %18, align 4
  %20 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 2
  %21 = load %class.b2Body*** %20, align 4
  %22 = getelementptr inbounds %class.b2Body** %21, i32 %19
  store %class.b2Body* %17, %class.b2Body** %22
  %23 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 7
  %24 = load i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  ret void
}

define linkonce_odr zeroext i1 @_ZNK9b2Contact9IsEnabledEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 4
  ret i1 %6
}

define linkonce_odr zeroext i1 @_ZNK9b2Contact10IsTouchingEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 2
  ret i1 %6
}

define linkonce_odr void @_ZN8b2Island3AddEP9b2Contact(%class.b2Island* %this, %class.b2Contact* %contact) nounwind align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %class.b2Contact*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %2, align 4
  %3 = load %class.b2Island** %1
  %4 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 9
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 11
  %7 = load i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str26, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([32 x i8]* @__PRETTY_FUNCTION__._ZN8b2Island3AddEP9b2Contact, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load %class.b2Contact** %2, align 4
  %14 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 9
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 3
  %18 = load %class.b2Contact*** %17, align 4
  %19 = getelementptr inbounds %class.b2Contact** %18, i32 %15
  store %class.b2Contact* %13, %class.b2Contact** %19
  ret void
}

define linkonce_odr void @_ZN8b2Island3AddEP7b2Joint(%class.b2Island* %this, %class.b2Joint* %joint) nounwind align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %class.b2Joint*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %class.b2Joint* %joint, %class.b2Joint** %2, align 4
  %3 = load %class.b2Island** %1
  %4 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 8
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 12
  %7 = load i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str26, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__._ZN8b2Island3AddEP7b2Joint, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load %class.b2Joint** %2, align 4
  %14 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 8
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 4
  %18 = load %class.b2Joint*** %17, align 4
  %19 = getelementptr inbounds %class.b2Joint** %18, i32 %15
  store %class.b2Joint* %13, %class.b2Joint** %19
  ret void
}

declare void @_ZN8b2Island5SolveEP9b2ProfileRK10b2TimeStepRK6b2Vec2b(%class.b2Island*, %struct.b2Profile*, %struct.b2TimeStep*, %struct.b2Vec2*, i1 zeroext)

declare void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator*, i8*)

declare void @_ZN7b2TimerC1Ev(%class.b2Timer*)

declare void @_ZN6b2Body19SynchronizeFixturesEv(%class.b2Body*)

define linkonce_odr %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 11
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
}

declare void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager*)

declare float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer*)

declare void @_ZN8b2IslandD1Ev(%class.b2Island*)

define void @_ZN7b2World8SolveTOIERK10b2TimeStep(%class.b2World* %this, %struct.b2TimeStep* %step) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %struct.b2TimeStep*, align 4
  %island = alloca %class.b2Island, align 4
  %b = alloca %class.b2Body*, align 4
  %c = alloca %class.b2Contact*, align 4
  %minContact = alloca %class.b2Contact*, align 4
  %minAlpha = alloca float, align 4
  %c1 = alloca %class.b2Contact*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %alpha = alloca float, align 4
  %fA = alloca %class.b2Fixture*, align 4
  %fB = alloca %class.b2Fixture*, align 4
  %bA = alloca %class.b2Body*, align 4
  %bB = alloca %class.b2Body*, align 4
  %typeA = alloca i32, align 4
  %typeB = alloca i32, align 4
  %activeA = alloca i8, align 1
  %activeB = alloca i8, align 1
  %collideA = alloca i8, align 1
  %collideB = alloca i8, align 1
  %alpha0 = alloca float, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %input = alloca %struct.b2TOIInput, align 4
  %output = alloca %struct.b2TOIOutput, align 4
  %beta = alloca float, align 4
  %fA2 = alloca %class.b2Fixture*, align 4
  %fB3 = alloca %class.b2Fixture*, align 4
  %bA4 = alloca %class.b2Body*, align 4
  %bB5 = alloca %class.b2Body*, align 4
  %backup1 = alloca %struct.b2Sweep, align 4
  %backup2 = alloca %struct.b2Sweep, align 4
  %bodies = alloca [2 x %class.b2Body*], align 4
  %i = alloca i32, align 4
  %body = alloca %class.b2Body*, align 4
  %ce = alloca %struct.b2ContactEdge*, align 4
  %contact = alloca %class.b2Contact*, align 4
  %other = alloca %class.b2Body*, align 4
  %sensorA = alloca i8, align 1
  %sensorB = alloca i8, align 1
  %backup = alloca %struct.b2Sweep, align 4
  %subStep = alloca %struct.b2TimeStep, align 4
  %i6 = alloca i32, align 4
  %body7 = alloca %class.b2Body*, align 4
  %ce8 = alloca %struct.b2ContactEdge*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %struct.b2TimeStep* %step, %struct.b2TimeStep** %2, align 4
  %5 = load %class.b2World** %1
  %6 = getelementptr inbounds %class.b2World* %5, i32 0, i32 1
  %7 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %8 = getelementptr inbounds %class.b2ContactManager* %7, i32 0, i32 4
  %9 = load %class.b2ContactListener** %8, align 4
  call void @_ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener(%class.b2Island* %island, i32 64, i32 32, i32 0, %class.b2StackAllocator* %6, %class.b2ContactListener* %9)
  %10 = getelementptr inbounds %class.b2World* %5, i32 0, i32 16
  %11 = load i8* %10, align 1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %13, label %54

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %class.b2World* %5, i32 0, i32 4
  %15 = load %class.b2Body** %14, align 4
  store %class.b2Body* %15, %class.b2Body** %b, align 4
  br label %16

; <label>:16                                      ; preds = %29, %13
  %17 = load %class.b2Body** %b, align 4
  %18 = icmp ne %class.b2Body* %17, null
  br i1 %18, label %19, label %33

; <label>:19                                      ; preds = %16
  %20 = load %class.b2Body** %b, align 4
  %21 = getelementptr inbounds %class.b2Body* %20, i32 0, i32 1
  %22 = load i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, -2
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %21, align 2
  %26 = load %class.b2Body** %b, align 4
  %27 = getelementptr inbounds %class.b2Body* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.b2Sweep* %27, i32 0, i32 5
  store float 0.000000e+00, float* %28, align 4
  br label %29

; <label>:29                                      ; preds = %19
  %30 = load %class.b2Body** %b, align 4
  %31 = getelementptr inbounds %class.b2Body* %30, i32 0, i32 11
  %32 = load %class.b2Body** %31, align 4
  store %class.b2Body* %32, %class.b2Body** %b, align 4
  br label %16

; <label>:33                                      ; preds = %16
  %34 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %35 = getelementptr inbounds %class.b2ContactManager* %34, i32 0, i32 1
  %36 = load %class.b2Contact** %35, align 4
  store %class.b2Contact* %36, %class.b2Contact** %c, align 4
  br label %37

; <label>:37                                      ; preds = %49, %33
  %38 = load %class.b2Contact** %c, align 4
  %39 = icmp ne %class.b2Contact* %38, null
  br i1 %39, label %40, label %53

; <label>:40                                      ; preds = %37
  %41 = load %class.b2Contact** %c, align 4
  %42 = getelementptr inbounds %class.b2Contact* %41, i32 0, i32 1
  %43 = load i32* %42, align 4
  %44 = and i32 %43, -34
  store i32 %44, i32* %42, align 4
  %45 = load %class.b2Contact** %c, align 4
  %46 = getelementptr inbounds %class.b2Contact* %45, i32 0, i32 11
  store i32 0, i32* %46, align 4
  %47 = load %class.b2Contact** %c, align 4
  %48 = getelementptr inbounds %class.b2Contact* %47, i32 0, i32 12
  store float 1.000000e+00, float* %48, align 4
  br label %49

; <label>:49                                      ; preds = %40
  %50 = load %class.b2Contact** %c, align 4
  %51 = getelementptr inbounds %class.b2Contact* %50, i32 0, i32 3
  %52 = load %class.b2Contact** %51, align 4
  store %class.b2Contact* %52, %class.b2Contact** %c, align 4
  br label %37

; <label>:53                                      ; preds = %37
  br label %54

; <label>:54                                      ; preds = %53, %0
  br label %55

; <label>:55                                      ; preds = %655, %372, %54
  store %class.b2Contact* null, %class.b2Contact** %minContact, align 4
  store float 1.000000e+00, float* %minAlpha, align 4
  %56 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %57 = getelementptr inbounds %class.b2ContactManager* %56, i32 0, i32 1
  %58 = load %class.b2Contact** %57, align 4
  store %class.b2Contact* %58, %class.b2Contact** %c1, align 4
  br label %59

; <label>:59                                      ; preds = %295, %55
  %60 = load %class.b2Contact** %c1, align 4
  %61 = icmp ne %class.b2Contact* %60, null
  br i1 %61, label %62, label %299

; <label>:62                                      ; preds = %59
  %63 = load %class.b2Contact** %c1, align 4
  %64 = invoke zeroext i1 @_ZNK9b2Contact9IsEnabledEv(%class.b2Contact* %63)
          to label %65 unwind label %69

; <label>:65                                      ; preds = %62
  %66 = zext i1 %64 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

; <label>:68                                      ; preds = %65
  br label %295

; <label>:69                                      ; preds = %647, %623, %575, %563, %560, %535, %528, %522, %515, %509, %504, %500, %461, %455, %382, %380, %378, %377, %375, %373, %370, %360, %358, %352, %338, %333, %330, %319, %316, %313, %310, %307, %269, %251, %249, %245, %243, %239, %238, %235, %232, %216, %197, %161, %154, %132, %125, %107, %104, %99, %95, %92, %89, %62
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %3
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %4
  invoke void @_ZN8b2IslandD1Ev(%class.b2Island* %island)
          to label %657 unwind label %664

; <label>:73                                      ; preds = %65
  %74 = load %class.b2Contact** %c1, align 4
  %75 = getelementptr inbounds %class.b2Contact* %74, i32 0, i32 11
  %76 = load i32* %75, align 4
  %77 = icmp sgt i32 %76, 8
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %73
  br label %295

; <label>:79                                      ; preds = %73
  store float 1.000000e+00, float* %alpha, align 4
  %80 = load %class.b2Contact** %c1, align 4
  %81 = getelementptr inbounds %class.b2Contact* %80, i32 0, i32 1
  %82 = load i32* %81, align 4
  %83 = and i32 %82, 32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

; <label>:85                                      ; preds = %79
  %86 = load %class.b2Contact** %c1, align 4
  %87 = getelementptr inbounds %class.b2Contact* %86, i32 0, i32 12
  %88 = load float* %87, align 4
  store float %88, float* %alpha, align 4
  br label %287

; <label>:89                                      ; preds = %79
  %90 = load %class.b2Contact** %c1, align 4
  %91 = invoke %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %90)
          to label %92 unwind label %69

; <label>:92                                      ; preds = %89
  store %class.b2Fixture* %91, %class.b2Fixture** %fA, align 4
  %93 = load %class.b2Contact** %c1, align 4
  %94 = invoke %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %93)
          to label %95 unwind label %69

; <label>:95                                      ; preds = %92
  store %class.b2Fixture* %94, %class.b2Fixture** %fB, align 4
  %96 = load %class.b2Fixture** %fA, align 4
  %97 = invoke zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %96)
          to label %98 unwind label %69

; <label>:98                                      ; preds = %95
  br i1 %97, label %103, label %99

; <label>:99                                      ; preds = %98
  %100 = load %class.b2Fixture** %fB, align 4
  %101 = invoke zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %100)
          to label %102 unwind label %69

; <label>:102                                     ; preds = %99
  br i1 %101, label %103, label %104

; <label>:103                                     ; preds = %102, %98
  br label %295

; <label>:104                                     ; preds = %102
  %105 = load %class.b2Fixture** %fA, align 4
  %106 = invoke %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %105)
          to label %107 unwind label %69

; <label>:107                                     ; preds = %104
  store %class.b2Body* %106, %class.b2Body** %bA, align 4
  %108 = load %class.b2Fixture** %fB, align 4
  %109 = invoke %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %108)
          to label %110 unwind label %69

; <label>:110                                     ; preds = %107
  store %class.b2Body* %109, %class.b2Body** %bB, align 4
  %111 = load %class.b2Body** %bA, align 4
  %112 = getelementptr inbounds %class.b2Body* %111, i32 0, i32 0
  %113 = load i32* %112, align 4
  store i32 %113, i32* %typeA, align 4
  %114 = load %class.b2Body** %bB, align 4
  %115 = getelementptr inbounds %class.b2Body* %114, i32 0, i32 0
  %116 = load i32* %115, align 4
  store i32 %116, i32* %typeB, align 4
  %117 = load i32* %typeA, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %122, label %119

; <label>:119                                     ; preds = %110
  %120 = load i32* %typeB, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %119, %110
  br label %125

; <label>:123                                     ; preds = %119
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 641, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN7b2World8SolveTOIERK10b2TimeStep, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %125

; <label>:125                                     ; preds = %124, %122
  %126 = load %class.b2Body** %bA, align 4
  %127 = invoke zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %126)
          to label %128 unwind label %69

; <label>:128                                     ; preds = %125
  br i1 %127, label %129, label %132

; <label>:129                                     ; preds = %128
  %130 = load i32* %typeA, align 4
  %131 = icmp ne i32 %130, 0
  br label %132

; <label>:132                                     ; preds = %129, %128
  %133 = phi i1 [ false, %128 ], [ %131, %129 ]
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %activeA, align 1
  %135 = load %class.b2Body** %bB, align 4
  %136 = invoke zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %135)
          to label %137 unwind label %69

; <label>:137                                     ; preds = %132
  br i1 %136, label %138, label %141

; <label>:138                                     ; preds = %137
  %139 = load i32* %typeB, align 4
  %140 = icmp ne i32 %139, 0
  br label %141

; <label>:141                                     ; preds = %138, %137
  %142 = phi i1 [ false, %137 ], [ %140, %138 ]
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %activeB, align 1
  %144 = load i8* %activeA, align 1
  %145 = trunc i8 %144 to i1
  %146 = zext i1 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

; <label>:148                                     ; preds = %141
  %149 = load i8* %activeB, align 1
  %150 = trunc i8 %149 to i1
  %151 = zext i1 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

; <label>:153                                     ; preds = %148
  br label %295

; <label>:154                                     ; preds = %148, %141
  %155 = load %class.b2Body** %bA, align 4
  %156 = invoke zeroext i1 @_ZNK6b2Body8IsBulletEv(%class.b2Body* %155)
          to label %157 unwind label %69

; <label>:157                                     ; preds = %154
  br i1 %156, label %161, label %158

; <label>:158                                     ; preds = %157
  %159 = load i32* %typeA, align 4
  %160 = icmp ne i32 %159, 2
  br label %161

; <label>:161                                     ; preds = %158, %157
  %162 = phi i1 [ true, %157 ], [ %160, %158 ]
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %collideA, align 1
  %164 = load %class.b2Body** %bB, align 4
  %165 = invoke zeroext i1 @_ZNK6b2Body8IsBulletEv(%class.b2Body* %164)
          to label %166 unwind label %69

; <label>:166                                     ; preds = %161
  br i1 %165, label %170, label %167

; <label>:167                                     ; preds = %166
  %168 = load i32* %typeB, align 4
  %169 = icmp ne i32 %168, 2
  br label %170

; <label>:170                                     ; preds = %167, %166
  %171 = phi i1 [ true, %166 ], [ %169, %167 ]
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %collideB, align 1
  %173 = load i8* %collideA, align 1
  %174 = trunc i8 %173 to i1
  %175 = zext i1 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

; <label>:177                                     ; preds = %170
  %178 = load i8* %collideB, align 1
  %179 = trunc i8 %178 to i1
  %180 = zext i1 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %177
  br label %295

; <label>:183                                     ; preds = %177, %170
  %184 = load %class.b2Body** %bA, align 4
  %185 = getelementptr inbounds %class.b2Body* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.b2Sweep* %185, i32 0, i32 5
  %187 = load float* %186, align 4
  store float %187, float* %alpha0, align 4
  %188 = load %class.b2Body** %bA, align 4
  %189 = getelementptr inbounds %class.b2Body* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.b2Sweep* %189, i32 0, i32 5
  %191 = load float* %190, align 4
  %192 = load %class.b2Body** %bB, align 4
  %193 = getelementptr inbounds %class.b2Body* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.b2Sweep* %193, i32 0, i32 5
  %195 = load float* %194, align 4
  %196 = fcmp olt float %191, %195
  br i1 %196, label %197, label %206

; <label>:197                                     ; preds = %183
  %198 = load %class.b2Body** %bB, align 4
  %199 = getelementptr inbounds %class.b2Body* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.b2Sweep* %199, i32 0, i32 5
  %201 = load float* %200, align 4
  store float %201, float* %alpha0, align 4
  %202 = load %class.b2Body** %bA, align 4
  %203 = getelementptr inbounds %class.b2Body* %202, i32 0, i32 4
  %204 = load float* %alpha0, align 4
  invoke void @_ZN7b2Sweep7AdvanceEf(%struct.b2Sweep* %203, float %204)
          to label %205 unwind label %69

; <label>:205                                     ; preds = %197
  br label %226

; <label>:206                                     ; preds = %183
  %207 = load %class.b2Body** %bB, align 4
  %208 = getelementptr inbounds %class.b2Body* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.b2Sweep* %208, i32 0, i32 5
  %210 = load float* %209, align 4
  %211 = load %class.b2Body** %bA, align 4
  %212 = getelementptr inbounds %class.b2Body* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.b2Sweep* %212, i32 0, i32 5
  %214 = load float* %213, align 4
  %215 = fcmp olt float %210, %214
  br i1 %215, label %216, label %225

; <label>:216                                     ; preds = %206
  %217 = load %class.b2Body** %bA, align 4
  %218 = getelementptr inbounds %class.b2Body* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.b2Sweep* %218, i32 0, i32 5
  %220 = load float* %219, align 4
  store float %220, float* %alpha0, align 4
  %221 = load %class.b2Body** %bB, align 4
  %222 = getelementptr inbounds %class.b2Body* %221, i32 0, i32 4
  %223 = load float* %alpha0, align 4
  invoke void @_ZN7b2Sweep7AdvanceEf(%struct.b2Sweep* %222, float %223)
          to label %224 unwind label %69

; <label>:224                                     ; preds = %216
  br label %225

; <label>:225                                     ; preds = %224, %206
  br label %226

; <label>:226                                     ; preds = %225, %205
  %227 = load float* %alpha0, align 4
  %228 = fcmp olt float %227, 1.000000e+00
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %226
  br label %232

; <label>:230                                     ; preds = %226
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 676, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZN7b2World8SolveTOIERK10b2TimeStep, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %232

; <label>:232                                     ; preds = %231, %229
  %233 = load %class.b2Contact** %c1, align 4
  %234 = invoke i32 @_ZNK9b2Contact14GetChildIndexAEv(%class.b2Contact* %233)
          to label %235 unwind label %69

; <label>:235                                     ; preds = %232
  store i32 %234, i32* %indexA, align 4
  %236 = load %class.b2Contact** %c1, align 4
  %237 = invoke i32 @_ZNK9b2Contact14GetChildIndexBEv(%class.b2Contact* %236)
          to label %238 unwind label %69

; <label>:238                                     ; preds = %235
  store i32 %237, i32* %indexB, align 4
  invoke void @_ZN10b2TOIInputC1Ev(%struct.b2TOIInput* %input)
          to label %239 unwind label %69

; <label>:239                                     ; preds = %238
  %240 = getelementptr inbounds %struct.b2TOIInput* %input, i32 0, i32 0
  %241 = load %class.b2Fixture** %fA, align 4
  %242 = invoke %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %241)
          to label %243 unwind label %69

; <label>:243                                     ; preds = %239
  %244 = load i32* %indexA, align 4
  invoke void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy* %240, %class.b2Shape* %242, i32 %244)
          to label %245 unwind label %69

; <label>:245                                     ; preds = %243
  %246 = getelementptr inbounds %struct.b2TOIInput* %input, i32 0, i32 1
  %247 = load %class.b2Fixture** %fB, align 4
  %248 = invoke %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %247)
          to label %249 unwind label %69

; <label>:249                                     ; preds = %245
  %250 = load i32* %indexB, align 4
  invoke void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy* %246, %class.b2Shape* %248, i32 %250)
          to label %251 unwind label %69

; <label>:251                                     ; preds = %249
  %252 = getelementptr inbounds %struct.b2TOIInput* %input, i32 0, i32 2
  %253 = load %class.b2Body** %bA, align 4
  %254 = getelementptr inbounds %class.b2Body* %253, i32 0, i32 4
  %255 = bitcast %struct.b2Sweep* %252 to i8*
  %256 = bitcast %struct.b2Sweep* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %255, i8* %256, i32 36, i32 4, i1 false)
  %257 = getelementptr inbounds %struct.b2TOIInput* %input, i32 0, i32 3
  %258 = load %class.b2Body** %bB, align 4
  %259 = getelementptr inbounds %class.b2Body* %258, i32 0, i32 4
  %260 = bitcast %struct.b2Sweep* %257 to i8*
  %261 = bitcast %struct.b2Sweep* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %260, i8* %261, i32 36, i32 4, i1 false)
  %262 = getelementptr inbounds %struct.b2TOIInput* %input, i32 0, i32 4
  store float 1.000000e+00, float* %262, align 4
  invoke void @_Z14b2TimeOfImpactP11b2TOIOutputPK10b2TOIInput(%struct.b2TOIOutput* %output, %struct.b2TOIInput* %input)
          to label %263 unwind label %69

; <label>:263                                     ; preds = %251
  %264 = getelementptr inbounds %struct.b2TOIOutput* %output, i32 0, i32 1
  %265 = load float* %264, align 4
  store float %265, float* %beta, align 4
  %266 = getelementptr inbounds %struct.b2TOIOutput* %output, i32 0, i32 0
  %267 = load i32* %266, align 4
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %269, label %278

; <label>:269                                     ; preds = %263
  %270 = load float* %alpha0, align 4
  %271 = load float* %alpha0, align 4
  %272 = fsub float 1.000000e+00, %271
  %273 = load float* %beta, align 4
  %274 = fmul float %272, %273
  %275 = fadd float %270, %274
  %276 = invoke float @_Z5b2MinIfET_S0_S0_(float %275, float 1.000000e+00)
          to label %277 unwind label %69

; <label>:277                                     ; preds = %269
  store float %276, float* %alpha, align 4
  br label %279

; <label>:278                                     ; preds = %263
  store float 1.000000e+00, float* %alpha, align 4
  br label %279

; <label>:279                                     ; preds = %278, %277
  %280 = load float* %alpha, align 4
  %281 = load %class.b2Contact** %c1, align 4
  %282 = getelementptr inbounds %class.b2Contact* %281, i32 0, i32 12
  store float %280, float* %282, align 4
  %283 = load %class.b2Contact** %c1, align 4
  %284 = getelementptr inbounds %class.b2Contact* %283, i32 0, i32 1
  %285 = load i32* %284, align 4
  %286 = or i32 %285, 32
  store i32 %286, i32* %284, align 4
  br label %287

; <label>:287                                     ; preds = %279, %85
  %288 = load float* %alpha, align 4
  %289 = load float* %minAlpha, align 4
  %290 = fcmp olt float %288, %289
  br i1 %290, label %291, label %294

; <label>:291                                     ; preds = %287
  %292 = load %class.b2Contact** %c1, align 4
  store %class.b2Contact* %292, %class.b2Contact** %minContact, align 4
  %293 = load float* %alpha, align 4
  store float %293, float* %minAlpha, align 4
  br label %294

; <label>:294                                     ; preds = %291, %287
  br label %295

; <label>:295                                     ; preds = %294, %182, %153, %103, %78, %68
  %296 = load %class.b2Contact** %c1, align 4
  %297 = getelementptr inbounds %class.b2Contact* %296, i32 0, i32 3
  %298 = load %class.b2Contact** %297, align 4
  store %class.b2Contact* %298, %class.b2Contact** %c1, align 4
  br label %59

; <label>:299                                     ; preds = %59
  %300 = load %class.b2Contact** %minContact, align 4
  %301 = icmp eq %class.b2Contact* %300, null
  br i1 %301, label %305, label %302

; <label>:302                                     ; preds = %299
  %303 = load float* %minAlpha, align 4
  %304 = fcmp olt float 0x3FEFFFFD80000000, %303
  br i1 %304, label %305, label %307

; <label>:305                                     ; preds = %302, %299
  %306 = getelementptr inbounds %class.b2World* %5, i32 0, i32 16
  store i8 1, i8* %306, align 1
  br label %656

; <label>:307                                     ; preds = %302
  %308 = load %class.b2Contact** %minContact, align 4
  %309 = invoke %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %308)
          to label %310 unwind label %69

; <label>:310                                     ; preds = %307
  store %class.b2Fixture* %309, %class.b2Fixture** %fA2, align 4
  %311 = load %class.b2Contact** %minContact, align 4
  %312 = invoke %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %311)
          to label %313 unwind label %69

; <label>:313                                     ; preds = %310
  store %class.b2Fixture* %312, %class.b2Fixture** %fB3, align 4
  %314 = load %class.b2Fixture** %fA2, align 4
  %315 = invoke %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %314)
          to label %316 unwind label %69

; <label>:316                                     ; preds = %313
  store %class.b2Body* %315, %class.b2Body** %bA4, align 4
  %317 = load %class.b2Fixture** %fB3, align 4
  %318 = invoke %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %317)
          to label %319 unwind label %69

; <label>:319                                     ; preds = %316
  store %class.b2Body* %318, %class.b2Body** %bB5, align 4
  %320 = load %class.b2Body** %bA4, align 4
  %321 = getelementptr inbounds %class.b2Body* %320, i32 0, i32 4
  %322 = bitcast %struct.b2Sweep* %backup1 to i8*
  %323 = bitcast %struct.b2Sweep* %321 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %322, i8* %323, i32 36, i32 4, i1 false)
  %324 = load %class.b2Body** %bB5, align 4
  %325 = getelementptr inbounds %class.b2Body* %324, i32 0, i32 4
  %326 = bitcast %struct.b2Sweep* %backup2 to i8*
  %327 = bitcast %struct.b2Sweep* %325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %326, i8* %327, i32 36, i32 4, i1 false)
  %328 = load %class.b2Body** %bA4, align 4
  %329 = load float* %minAlpha, align 4
  invoke void @_ZN6b2Body7AdvanceEf(%class.b2Body* %328, float %329)
          to label %330 unwind label %69

; <label>:330                                     ; preds = %319
  %331 = load %class.b2Body** %bB5, align 4
  %332 = load float* %minAlpha, align 4
  invoke void @_ZN6b2Body7AdvanceEf(%class.b2Body* %331, float %332)
          to label %333 unwind label %69

; <label>:333                                     ; preds = %330
  %334 = load %class.b2Contact** %minContact, align 4
  %335 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %336 = getelementptr inbounds %class.b2ContactManager* %335, i32 0, i32 4
  %337 = load %class.b2ContactListener** %336, align 4
  invoke void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact* %334, %class.b2ContactListener* %337)
          to label %338 unwind label %69

; <label>:338                                     ; preds = %333
  %339 = load %class.b2Contact** %minContact, align 4
  %340 = getelementptr inbounds %class.b2Contact* %339, i32 0, i32 1
  %341 = load i32* %340, align 4
  %342 = and i32 %341, -33
  store i32 %342, i32* %340, align 4
  %343 = load %class.b2Contact** %minContact, align 4
  %344 = getelementptr inbounds %class.b2Contact* %343, i32 0, i32 11
  %345 = load i32* %344, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  %347 = load %class.b2Contact** %minContact, align 4
  %348 = invoke zeroext i1 @_ZNK9b2Contact9IsEnabledEv(%class.b2Contact* %347)
          to label %349 unwind label %69

; <label>:349                                     ; preds = %338
  %350 = zext i1 %348 to i32
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %358, label %352

; <label>:352                                     ; preds = %349
  %353 = load %class.b2Contact** %minContact, align 4
  %354 = invoke zeroext i1 @_ZNK9b2Contact10IsTouchingEv(%class.b2Contact* %353)
          to label %355 unwind label %69

; <label>:355                                     ; preds = %352
  %356 = zext i1 %354 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %373

; <label>:358                                     ; preds = %355, %349
  %359 = load %class.b2Contact** %minContact, align 4
  invoke void @_ZN9b2Contact10SetEnabledEb(%class.b2Contact* %359, i1 zeroext false)
          to label %360 unwind label %69

; <label>:360                                     ; preds = %358
  %361 = load %class.b2Body** %bA4, align 4
  %362 = getelementptr inbounds %class.b2Body* %361, i32 0, i32 4
  %363 = bitcast %struct.b2Sweep* %362 to i8*
  %364 = bitcast %struct.b2Sweep* %backup1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %363, i8* %364, i32 36, i32 4, i1 false)
  %365 = load %class.b2Body** %bB5, align 4
  %366 = getelementptr inbounds %class.b2Body* %365, i32 0, i32 4
  %367 = bitcast %struct.b2Sweep* %366 to i8*
  %368 = bitcast %struct.b2Sweep* %backup2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %367, i8* %368, i32 36, i32 4, i1 false)
  %369 = load %class.b2Body** %bA4, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %369)
          to label %370 unwind label %69

; <label>:370                                     ; preds = %360
  %371 = load %class.b2Body** %bB5, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %371)
          to label %372 unwind label %69

; <label>:372                                     ; preds = %370
  br label %55

; <label>:373                                     ; preds = %355
  %374 = load %class.b2Body** %bA4, align 4
  invoke void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %374, i1 zeroext true)
          to label %375 unwind label %69

; <label>:375                                     ; preds = %373
  %376 = load %class.b2Body** %bB5, align 4
  invoke void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %376, i1 zeroext true)
          to label %377 unwind label %69

; <label>:377                                     ; preds = %375
  invoke void @_ZN8b2Island5ClearEv(%class.b2Island* %island)
          to label %378 unwind label %69

; <label>:378                                     ; preds = %377
  %379 = load %class.b2Body** %bA4, align 4
  invoke void @_ZN8b2Island3AddEP6b2Body(%class.b2Island* %island, %class.b2Body* %379)
          to label %380 unwind label %69

; <label>:380                                     ; preds = %378
  %381 = load %class.b2Body** %bB5, align 4
  invoke void @_ZN8b2Island3AddEP6b2Body(%class.b2Island* %island, %class.b2Body* %381)
          to label %382 unwind label %69

; <label>:382                                     ; preds = %380
  %383 = load %class.b2Contact** %minContact, align 4
  invoke void @_ZN8b2Island3AddEP9b2Contact(%class.b2Island* %island, %class.b2Contact* %383)
          to label %384 unwind label %69

; <label>:384                                     ; preds = %382
  %385 = load %class.b2Body** %bA4, align 4
  %386 = getelementptr inbounds %class.b2Body* %385, i32 0, i32 1
  %387 = load i16* %386, align 2
  %388 = zext i16 %387 to i32
  %389 = or i32 %388, 1
  %390 = trunc i32 %389 to i16
  store i16 %390, i16* %386, align 2
  %391 = load %class.b2Body** %bB5, align 4
  %392 = getelementptr inbounds %class.b2Body* %391, i32 0, i32 1
  %393 = load i16* %392, align 2
  %394 = zext i16 %393 to i32
  %395 = or i32 %394, 1
  %396 = trunc i32 %395 to i16
  store i16 %396, i16* %392, align 2
  %397 = load %class.b2Contact** %minContact, align 4
  %398 = getelementptr inbounds %class.b2Contact* %397, i32 0, i32 1
  %399 = load i32* %398, align 4
  %400 = or i32 %399, 1
  store i32 %400, i32* %398, align 4
  %401 = getelementptr inbounds [2 x %class.b2Body*]* %bodies, i32 0, i32 0
  %402 = load %class.b2Body** %bA4, align 4
  store %class.b2Body* %402, %class.b2Body** %401
  %403 = getelementptr inbounds %class.b2Body** %401, i32 1
  %404 = load %class.b2Body** %bB5, align 4
  store %class.b2Body* %404, %class.b2Body** %403
  store i32 0, i32* %i, align 4
  br label %405

; <label>:405                                     ; preds = %572, %384
  %406 = load i32* %i, align 4
  %407 = icmp slt i32 %406, 2
  br i1 %407, label %408, label %575

; <label>:408                                     ; preds = %405
  %409 = load i32* %i, align 4
  %410 = getelementptr inbounds [2 x %class.b2Body*]* %bodies, i32 0, i32 %409
  %411 = load %class.b2Body** %410, align 4
  store %class.b2Body* %411, %class.b2Body** %body, align 4
  %412 = load %class.b2Body** %body, align 4
  %413 = getelementptr inbounds %class.b2Body* %412, i32 0, i32 0
  %414 = load i32* %413, align 4
  %415 = icmp eq i32 %414, 2
  br i1 %415, label %416, label %571

; <label>:416                                     ; preds = %408
  %417 = load %class.b2Body** %body, align 4
  %418 = getelementptr inbounds %class.b2Body* %417, i32 0, i32 15
  %419 = load %struct.b2ContactEdge** %418, align 4
  store %struct.b2ContactEdge* %419, %struct.b2ContactEdge** %ce, align 4
  br label %420

; <label>:420                                     ; preds = %566, %416
  %421 = load %struct.b2ContactEdge** %ce, align 4
  %422 = icmp ne %struct.b2ContactEdge* %421, null
  br i1 %422, label %423, label %570

; <label>:423                                     ; preds = %420
  %424 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 7
  %425 = load i32* %424, align 4
  %426 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 10
  %427 = load i32* %426, align 4
  %428 = icmp eq i32 %425, %427
  br i1 %428, label %429, label %430

; <label>:429                                     ; preds = %423
  br label %570

; <label>:430                                     ; preds = %423
  %431 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 9
  %432 = load i32* %431, align 4
  %433 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 11
  %434 = load i32* %433, align 4
  %435 = icmp eq i32 %432, %434
  br i1 %435, label %436, label %437

; <label>:436                                     ; preds = %430
  br label %570

; <label>:437                                     ; preds = %430
  %438 = load %struct.b2ContactEdge** %ce, align 4
  %439 = getelementptr inbounds %struct.b2ContactEdge* %438, i32 0, i32 1
  %440 = load %class.b2Contact** %439, align 4
  store %class.b2Contact* %440, %class.b2Contact** %contact, align 4
  %441 = load %class.b2Contact** %contact, align 4
  %442 = getelementptr inbounds %class.b2Contact* %441, i32 0, i32 1
  %443 = load i32* %442, align 4
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %447

; <label>:446                                     ; preds = %437
  br label %566

; <label>:447                                     ; preds = %437
  %448 = load %struct.b2ContactEdge** %ce, align 4
  %449 = getelementptr inbounds %struct.b2ContactEdge* %448, i32 0, i32 0
  %450 = load %class.b2Body** %449, align 4
  store %class.b2Body* %450, %class.b2Body** %other, align 4
  %451 = load %class.b2Body** %other, align 4
  %452 = getelementptr inbounds %class.b2Body* %451, i32 0, i32 0
  %453 = load i32* %452, align 4
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %455, label %468

; <label>:455                                     ; preds = %447
  %456 = load %class.b2Body** %body, align 4
  %457 = invoke zeroext i1 @_ZNK6b2Body8IsBulletEv(%class.b2Body* %456)
          to label %458 unwind label %69

; <label>:458                                     ; preds = %455
  %459 = zext i1 %457 to i32
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %468

; <label>:461                                     ; preds = %458
  %462 = load %class.b2Body** %other, align 4
  %463 = invoke zeroext i1 @_ZNK6b2Body8IsBulletEv(%class.b2Body* %462)
          to label %464 unwind label %69

; <label>:464                                     ; preds = %461
  %465 = zext i1 %463 to i32
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %468

; <label>:467                                     ; preds = %464
  br label %566

; <label>:468                                     ; preds = %464, %458, %447
  %469 = load %class.b2Contact** %contact, align 4
  %470 = getelementptr inbounds %class.b2Contact* %469, i32 0, i32 6
  %471 = load %class.b2Fixture** %470, align 4
  %472 = getelementptr inbounds %class.b2Fixture* %471, i32 0, i32 9
  %473 = load i8* %472, align 1
  %474 = trunc i8 %473 to i1
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %sensorA, align 1
  %476 = load %class.b2Contact** %contact, align 4
  %477 = getelementptr inbounds %class.b2Contact* %476, i32 0, i32 7
  %478 = load %class.b2Fixture** %477, align 4
  %479 = getelementptr inbounds %class.b2Fixture* %478, i32 0, i32 9
  %480 = load i8* %479, align 1
  %481 = trunc i8 %480 to i1
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %sensorB, align 1
  %483 = load i8* %sensorA, align 1
  %484 = trunc i8 %483 to i1
  br i1 %484, label %488, label %485

; <label>:485                                     ; preds = %468
  %486 = load i8* %sensorB, align 1
  %487 = trunc i8 %486 to i1
  br i1 %487, label %488, label %489

; <label>:488                                     ; preds = %485, %468
  br label %566

; <label>:489                                     ; preds = %485
  %490 = load %class.b2Body** %other, align 4
  %491 = getelementptr inbounds %class.b2Body* %490, i32 0, i32 4
  %492 = bitcast %struct.b2Sweep* %backup to i8*
  %493 = bitcast %struct.b2Sweep* %491 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %492, i8* %493, i32 36, i32 4, i1 false)
  %494 = load %class.b2Body** %other, align 4
  %495 = getelementptr inbounds %class.b2Body* %494, i32 0, i32 1
  %496 = load i16* %495, align 2
  %497 = zext i16 %496 to i32
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %504

; <label>:500                                     ; preds = %489
  %501 = load %class.b2Body** %other, align 4
  %502 = load float* %minAlpha, align 4
  invoke void @_ZN6b2Body7AdvanceEf(%class.b2Body* %501, float %502)
          to label %503 unwind label %69

; <label>:503                                     ; preds = %500
  br label %504

; <label>:504                                     ; preds = %503, %489
  %505 = load %class.b2Contact** %contact, align 4
  %506 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %507 = getelementptr inbounds %class.b2ContactManager* %506, i32 0, i32 4
  %508 = load %class.b2ContactListener** %507, align 4
  invoke void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact* %505, %class.b2ContactListener* %508)
          to label %509 unwind label %69

; <label>:509                                     ; preds = %504
  %510 = load %class.b2Contact** %contact, align 4
  %511 = invoke zeroext i1 @_ZNK9b2Contact9IsEnabledEv(%class.b2Contact* %510)
          to label %512 unwind label %69

; <label>:512                                     ; preds = %509
  %513 = zext i1 %511 to i32
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %522

; <label>:515                                     ; preds = %512
  %516 = load %class.b2Body** %other, align 4
  %517 = getelementptr inbounds %class.b2Body* %516, i32 0, i32 4
  %518 = bitcast %struct.b2Sweep* %517 to i8*
  %519 = bitcast %struct.b2Sweep* %backup to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %518, i8* %519, i32 36, i32 4, i1 false)
  %520 = load %class.b2Body** %other, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %520)
          to label %521 unwind label %69

; <label>:521                                     ; preds = %515
  br label %566

; <label>:522                                     ; preds = %512
  %523 = load %class.b2Contact** %contact, align 4
  %524 = invoke zeroext i1 @_ZNK9b2Contact10IsTouchingEv(%class.b2Contact* %523)
          to label %525 unwind label %69

; <label>:525                                     ; preds = %522
  %526 = zext i1 %524 to i32
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %535

; <label>:528                                     ; preds = %525
  %529 = load %class.b2Body** %other, align 4
  %530 = getelementptr inbounds %class.b2Body* %529, i32 0, i32 4
  %531 = bitcast %struct.b2Sweep* %530 to i8*
  %532 = bitcast %struct.b2Sweep* %backup to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %531, i8* %532, i32 36, i32 4, i1 false)
  %533 = load %class.b2Body** %other, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %533)
          to label %534 unwind label %69

; <label>:534                                     ; preds = %528
  br label %566

; <label>:535                                     ; preds = %525
  %536 = load %class.b2Contact** %contact, align 4
  %537 = getelementptr inbounds %class.b2Contact* %536, i32 0, i32 1
  %538 = load i32* %537, align 4
  %539 = or i32 %538, 1
  store i32 %539, i32* %537, align 4
  %540 = load %class.b2Contact** %contact, align 4
  invoke void @_ZN8b2Island3AddEP9b2Contact(%class.b2Island* %island, %class.b2Contact* %540)
          to label %541 unwind label %69

; <label>:541                                     ; preds = %535
  %542 = load %class.b2Body** %other, align 4
  %543 = getelementptr inbounds %class.b2Body* %542, i32 0, i32 1
  %544 = load i16* %543, align 2
  %545 = zext i16 %544 to i32
  %546 = and i32 %545, 1
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

; <label>:548                                     ; preds = %541
  br label %566

; <label>:549                                     ; preds = %541
  %550 = load %class.b2Body** %other, align 4
  %551 = getelementptr inbounds %class.b2Body* %550, i32 0, i32 1
  %552 = load i16* %551, align 2
  %553 = zext i16 %552 to i32
  %554 = or i32 %553, 1
  %555 = trunc i32 %554 to i16
  store i16 %555, i16* %551, align 2
  %556 = load %class.b2Body** %other, align 4
  %557 = getelementptr inbounds %class.b2Body* %556, i32 0, i32 0
  %558 = load i32* %557, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %563

; <label>:560                                     ; preds = %549
  %561 = load %class.b2Body** %other, align 4
  invoke void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %561, i1 zeroext true)
          to label %562 unwind label %69

; <label>:562                                     ; preds = %560
  br label %563

; <label>:563                                     ; preds = %562, %549
  %564 = load %class.b2Body** %other, align 4
  invoke void @_ZN8b2Island3AddEP6b2Body(%class.b2Island* %island, %class.b2Body* %564)
          to label %565 unwind label %69

; <label>:565                                     ; preds = %563
  br label %566

; <label>:566                                     ; preds = %565, %548, %534, %521, %488, %467, %446
  %567 = load %struct.b2ContactEdge** %ce, align 4
  %568 = getelementptr inbounds %struct.b2ContactEdge* %567, i32 0, i32 3
  %569 = load %struct.b2ContactEdge** %568, align 4
  store %struct.b2ContactEdge* %569, %struct.b2ContactEdge** %ce, align 4
  br label %420

; <label>:570                                     ; preds = %436, %429, %420
  br label %571

; <label>:571                                     ; preds = %570, %408
  br label %572

; <label>:572                                     ; preds = %571
  %573 = load i32* %i, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %i, align 4
  br label %405

; <label>:575                                     ; preds = %405
  %576 = load float* %minAlpha, align 4
  %577 = fsub float 1.000000e+00, %576
  %578 = load %struct.b2TimeStep** %2
  %579 = getelementptr inbounds %struct.b2TimeStep* %578, i32 0, i32 0
  %580 = load float* %579, align 4
  %581 = fmul float %577, %580
  %582 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 0
  store float %581, float* %582, align 4
  %583 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 0
  %584 = load float* %583, align 4
  %585 = fdiv float 1.000000e+00, %584
  %586 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 1
  store float %585, float* %586, align 4
  %587 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 2
  store float 1.000000e+00, float* %587, align 4
  %588 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 4
  store i32 20, i32* %588, align 4
  %589 = load %struct.b2TimeStep** %2
  %590 = getelementptr inbounds %struct.b2TimeStep* %589, i32 0, i32 3
  %591 = load i32* %590, align 4
  %592 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 3
  store i32 %591, i32* %592, align 4
  %593 = getelementptr inbounds %struct.b2TimeStep* %subStep, i32 0, i32 5
  store i8 0, i8* %593, align 1
  %594 = load %class.b2Body** %bA4, align 4
  %595 = getelementptr inbounds %class.b2Body* %594, i32 0, i32 2
  %596 = load i32* %595, align 4
  %597 = load %class.b2Body** %bB5, align 4
  %598 = getelementptr inbounds %class.b2Body* %597, i32 0, i32 2
  %599 = load i32* %598, align 4
  invoke void @_ZN8b2Island8SolveTOIERK10b2TimeStepii(%class.b2Island* %island, %struct.b2TimeStep* %subStep, i32 %596, i32 %599)
          to label %600 unwind label %69

; <label>:600                                     ; preds = %575
  store i32 0, i32* %i6, align 4
  br label %601

; <label>:601                                     ; preds = %644, %600
  %602 = load i32* %i6, align 4
  %603 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 7
  %604 = load i32* %603, align 4
  %605 = icmp slt i32 %602, %604
  br i1 %605, label %606, label %647

; <label>:606                                     ; preds = %601
  %607 = load i32* %i6, align 4
  %608 = getelementptr inbounds %class.b2Island* %island, i32 0, i32 2
  %609 = load %class.b2Body*** %608, align 4
  %610 = getelementptr inbounds %class.b2Body** %609, i32 %607
  %611 = load %class.b2Body** %610
  store %class.b2Body* %611, %class.b2Body** %body7, align 4
  %612 = load %class.b2Body** %body7, align 4
  %613 = getelementptr inbounds %class.b2Body* %612, i32 0, i32 1
  %614 = load i16* %613, align 2
  %615 = zext i16 %614 to i32
  %616 = and i32 %615, -2
  %617 = trunc i32 %616 to i16
  store i16 %617, i16* %613, align 2
  %618 = load %class.b2Body** %body7, align 4
  %619 = getelementptr inbounds %class.b2Body* %618, i32 0, i32 0
  %620 = load i32* %619, align 4
  %621 = icmp ne i32 %620, 2
  br i1 %621, label %622, label %623

; <label>:622                                     ; preds = %606
  br label %644

; <label>:623                                     ; preds = %606
  %624 = load %class.b2Body** %body7, align 4
  invoke void @_ZN6b2Body19SynchronizeFixturesEv(%class.b2Body* %624)
          to label %625 unwind label %69

; <label>:625                                     ; preds = %623
  %626 = load %class.b2Body** %body7, align 4
  %627 = getelementptr inbounds %class.b2Body* %626, i32 0, i32 15
  %628 = load %struct.b2ContactEdge** %627, align 4
  store %struct.b2ContactEdge* %628, %struct.b2ContactEdge** %ce8, align 4
  br label %629

; <label>:629                                     ; preds = %639, %625
  %630 = load %struct.b2ContactEdge** %ce8, align 4
  %631 = icmp ne %struct.b2ContactEdge* %630, null
  br i1 %631, label %632, label %643

; <label>:632                                     ; preds = %629
  %633 = load %struct.b2ContactEdge** %ce8, align 4
  %634 = getelementptr inbounds %struct.b2ContactEdge* %633, i32 0, i32 1
  %635 = load %class.b2Contact** %634, align 4
  %636 = getelementptr inbounds %class.b2Contact* %635, i32 0, i32 1
  %637 = load i32* %636, align 4
  %638 = and i32 %637, -34
  store i32 %638, i32* %636, align 4
  br label %639

; <label>:639                                     ; preds = %632
  %640 = load %struct.b2ContactEdge** %ce8, align 4
  %641 = getelementptr inbounds %struct.b2ContactEdge* %640, i32 0, i32 3
  %642 = load %struct.b2ContactEdge** %641, align 4
  store %struct.b2ContactEdge* %642, %struct.b2ContactEdge** %ce8, align 4
  br label %629

; <label>:643                                     ; preds = %629
  br label %644

; <label>:644                                     ; preds = %643, %622
  %645 = load i32* %i6, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %i6, align 4
  br label %601

; <label>:647                                     ; preds = %601
  %648 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  invoke void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager* %648)
          to label %649 unwind label %69

; <label>:649                                     ; preds = %647
  %650 = getelementptr inbounds %class.b2World* %5, i32 0, i32 15
  %651 = load i8* %650, align 1
  %652 = trunc i8 %651 to i1
  br i1 %652, label %653, label %655

; <label>:653                                     ; preds = %649
  %654 = getelementptr inbounds %class.b2World* %5, i32 0, i32 16
  store i8 0, i8* %654, align 1
  br label %656

; <label>:655                                     ; preds = %649
  br label %55

; <label>:656                                     ; preds = %653, %305
  call void @_ZN8b2IslandD1Ev(%class.b2Island* %island)
  ret void

; <label>:657                                     ; preds = %69
  br label %658

; <label>:658                                     ; preds = %657
  %659 = load i8** %3
  %660 = load i8** %3
  %661 = load i32* %4
  %662 = insertvalue { i8*, i32 } undef, i8* %660, 0
  %663 = insertvalue { i8*, i32 } %662, i32 %661, 1
  resume { i8*, i32 } %663

; <label>:664                                     ; preds = %69
  %665 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
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

define linkonce_odr zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 9
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define linkonce_odr %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
}

define linkonce_odr zeroext i1 @_ZNK6b2Body8IsBulletEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 1
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 8
  ret i1 %7
}

define linkonce_odr void @_ZN7b2Sweep7AdvanceEf(%struct.b2Sweep* %this, float %alpha) inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  %2 = alloca float, align 4
  %beta = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  store float %alpha, float* %2, align 4
  %6 = load %struct.b2Sweep** %1
  %7 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 5
  %8 = load float* %7, align 4
  %9 = fcmp olt float %8, 1.000000e+00
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8]* @.str24, i32 0, i32 0), i32 715, i8* getelementptr inbounds ([31 x i8]* @__PRETTY_FUNCTION__._ZN7b2Sweep7AdvanceEf, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load float* %2, align 4
  %15 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 5
  %16 = load float* %15, align 4
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 5
  %19 = load float* %18, align 4
  %20 = fsub float 1.000000e+00, %19
  %21 = fdiv float %17, %20
  store float %21, float* %beta, align 4
  %22 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 1
  %23 = load float* %beta, align 4
  %24 = fsub float 1.000000e+00, %23
  %25 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %24, %struct.b2Vec2* %25)
  %26 = load float* %beta, align 4
  %27 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 2
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %26, %struct.b2Vec2* %27)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %4, %struct.b2Vec2* %5)
  %28 = bitcast %struct.b2Vec2* %22 to i8*
  %29 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %30 = load float* %beta, align 4
  %31 = fsub float 1.000000e+00, %30
  %32 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 3
  %33 = load float* %32, align 4
  %34 = fmul float %31, %33
  %35 = load float* %beta, align 4
  %36 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 4
  %37 = load float* %36, align 4
  %38 = fmul float %35, %37
  %39 = fadd float %34, %38
  %40 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 3
  store float %39, float* %40, align 4
  %41 = load float* %2, align 4
  %42 = getelementptr inbounds %struct.b2Sweep* %6, i32 0, i32 5
  store float %41, float* %42, align 4
  ret void
}

define linkonce_odr i32 @_ZNK9b2Contact14GetChildIndexAEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 8
  %4 = load i32* %3, align 4
  ret i32 %4
}

define linkonce_odr i32 @_ZNK9b2Contact14GetChildIndexBEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 9
  %4 = load i32* %3, align 4
  ret i32 %4
}

define linkonce_odr void @_ZN10b2TOIInputC1Ev(%struct.b2TOIInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2TOIInput*, align 4
  store %struct.b2TOIInput* %this, %struct.b2TOIInput** %1, align 4
  %2 = load %struct.b2TOIInput** %1
  call void @_ZN10b2TOIInputC2Ev(%struct.b2TOIInput* %2)
  ret void
}

declare void @_ZN15b2DistanceProxy3SetEPK7b2Shapei(%struct.b2DistanceProxy*, %class.b2Shape*, i32)

define linkonce_odr %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  ret %class.b2Shape* %4
}

declare void @_Z14b2TimeOfImpactP11b2TOIOutputPK10b2TOIInput(%struct.b2TOIOutput*, %struct.b2TOIInput*)

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

define linkonce_odr void @_ZN6b2Body7AdvanceEf(%class.b2Body* %this, float %alpha) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca float, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  store float %alpha, float* %2, align 4
  %5 = load %class.b2Body** %1
  %6 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %7 = load float* %2, align 4
  call void @_ZN7b2Sweep7AdvanceEf(%struct.b2Sweep* %6, float %7)
  %8 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.b2Sweep* %8, i32 0, i32 2
  %10 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %11 = getelementptr inbounds %struct.b2Sweep* %10, i32 0, i32 1
  %12 = bitcast %struct.b2Vec2* %9 to i8*
  %13 = bitcast %struct.b2Vec2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  %14 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %15 = getelementptr inbounds %struct.b2Sweep* %14, i32 0, i32 3
  %16 = load float* %15, align 4
  %17 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %18 = getelementptr inbounds %struct.b2Sweep* %17, i32 0, i32 4
  store float %16, float* %18, align 4
  %19 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %20 = getelementptr inbounds %struct.b2Transform* %19, i32 0, i32 1
  %21 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %22 = getelementptr inbounds %struct.b2Sweep* %21, i32 0, i32 4
  %23 = load float* %22, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %20, float %23)
  %24 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.b2Transform* %24, i32 0, i32 0
  %26 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %27 = getelementptr inbounds %struct.b2Sweep* %26, i32 0, i32 2
  %28 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 3
  %29 = getelementptr inbounds %struct.b2Transform* %28, i32 0, i32 1
  %30 = getelementptr inbounds %class.b2Body* %5, i32 0, i32 4
  %31 = getelementptr inbounds %struct.b2Sweep* %30, i32 0, i32 0
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %4, %struct.b2Rot* %29, %struct.b2Vec2* %31)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %27, %struct.b2Vec2* %4)
  %32 = bitcast %struct.b2Vec2* %25 to i8*
  %33 = bitcast %struct.b2Vec2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  ret void
}

declare void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact*, %class.b2ContactListener*)

define linkonce_odr void @_ZN9b2Contact10SetEnabledEb(%class.b2Contact* %this, i1 zeroext %flag) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca i8, align 1
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %3 = zext i1 %flag to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2Contact** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.b2Contact* %4, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, i32* %8, align 4
  br label %15

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.b2Contact* %4, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = and i32 %13, -5
  store i32 %14, i32* %12, align 4
  br label %15

; <label>:15                                      ; preds = %11, %7
  ret void
}

define linkonce_odr void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %this) inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %4 = load %class.b2Body** %1
  %5 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.b2Transform* %5, i32 0, i32 1
  %7 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %8 = getelementptr inbounds %struct.b2Sweep* %7, i32 0, i32 4
  %9 = load float* %8, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %6, float %9)
  %10 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.b2Transform* %10, i32 0, i32 0
  %12 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %13 = getelementptr inbounds %struct.b2Sweep* %12, i32 0, i32 2
  %14 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.b2Transform* %14, i32 0, i32 1
  %16 = getelementptr inbounds %class.b2Body* %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.b2Sweep* %16, i32 0, i32 0
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %15, %struct.b2Vec2* %17)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %13, %struct.b2Vec2* %3)
  %18 = bitcast %struct.b2Vec2* %11 to i8*
  %19 = bitcast %struct.b2Vec2* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  ret void
}

declare void @_ZN8b2Island8SolveTOIERK10b2TimeStepii(%class.b2Island*, %struct.b2TimeStep*, i32, i32)

define void @_ZN7b2World4StepEfii(%class.b2World* %this, float %dt, i32 %velocityIterations, i32 %positionIterations) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %stepTimer = alloca %class.b2Timer, align 4
  %step = alloca %struct.b2TimeStep, align 4
  %timer = alloca %class.b2Timer, align 4
  %timer1 = alloca %class.b2Timer, align 4
  %timer2 = alloca %class.b2Timer, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store float %dt, float* %2, align 4
  store i32 %velocityIterations, i32* %3, align 4
  store i32 %positionIterations, i32* %4, align 4
  %5 = load %class.b2World** %1
  call void @_ZN7b2TimerC1Ev(%class.b2Timer* %stepTimer)
  %6 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  call void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager* %11)
  %12 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  %13 = load i32* %12, align 4
  %14 = and i32 %13, -2
  store i32 %14, i32* %12, align 4
  br label %15

; <label>:15                                      ; preds = %10, %0
  %16 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  %17 = load i32* %16, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %16, align 4
  %19 = load float* %2, align 4
  %20 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 0
  store float %19, float* %20, align 4
  %21 = load i32* %3, align 4
  %22 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32* %4, align 4
  %24 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load float* %2, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %15
  %28 = load float* %2, align 4
  %29 = fdiv float 1.000000e+00, %28
  %30 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 1
  store float %29, float* %30, align 4
  br label %33

; <label>:31                                      ; preds = %15
  %32 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 1
  store float 0.000000e+00, float* %32, align 4
  br label %33

; <label>:33                                      ; preds = %31, %27
  %34 = getelementptr inbounds %class.b2World* %5, i32 0, i32 12
  %35 = load float* %34, align 4
  %36 = load float* %2, align 4
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 2
  store float %37, float* %38, align 4
  %39 = getelementptr inbounds %class.b2World* %5, i32 0, i32 13
  %40 = load i8* %39, align 1
  %41 = trunc i8 %40 to i1
  %42 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 5
  %43 = zext i1 %41 to i8
  store i8 %43, i8* %42, align 1
  call void @_ZN7b2TimerC1Ev(%class.b2Timer* %timer)
  %44 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  call void @_ZN16b2ContactManager7CollideEv(%class.b2ContactManager* %44)
  %45 = call float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer)
  %46 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %47 = getelementptr inbounds %struct.b2Profile* %46, i32 0, i32 1
  store float %45, float* %47, align 4
  %48 = getelementptr inbounds %class.b2World* %5, i32 0, i32 16
  %49 = load i8* %48, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %59

; <label>:51                                      ; preds = %33
  %52 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 0
  %53 = load float* %52, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %59

; <label>:55                                      ; preds = %51
  call void @_ZN7b2TimerC1Ev(%class.b2Timer* %timer1)
  call void @_ZN7b2World5SolveERK10b2TimeStep(%class.b2World* %5, %struct.b2TimeStep* %step)
  %56 = call float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer1)
  %57 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %58 = getelementptr inbounds %struct.b2Profile* %57, i32 0, i32 2
  store float %56, float* %58, align 4
  br label %59

; <label>:59                                      ; preds = %55, %51, %33
  %60 = getelementptr inbounds %class.b2World* %5, i32 0, i32 14
  %61 = load i8* %60, align 1
  %62 = trunc i8 %61 to i1
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %59
  %64 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 0
  %65 = load float* %64, align 4
  %66 = fcmp ogt float %65, 0.000000e+00
  br i1 %66, label %67, label %71

; <label>:67                                      ; preds = %63
  call void @_ZN7b2TimerC1Ev(%class.b2Timer* %timer2)
  call void @_ZN7b2World8SolveTOIERK10b2TimeStep(%class.b2World* %5, %struct.b2TimeStep* %step)
  %68 = call float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer2)
  %69 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %70 = getelementptr inbounds %struct.b2Profile* %69, i32 0, i32 7
  store float %68, float* %70, align 4
  br label %71

; <label>:71                                      ; preds = %67, %63, %59
  %72 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 0
  %73 = load float* %72, align 4
  %74 = fcmp ogt float %73, 0.000000e+00
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds %struct.b2TimeStep* %step, i32 0, i32 1
  %77 = load float* %76, align 4
  %78 = getelementptr inbounds %class.b2World* %5, i32 0, i32 12
  store float %77, float* %78, align 4
  br label %79

; <label>:79                                      ; preds = %75, %71
  %80 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  %81 = load i32* %80, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %79
  call void @_ZN7b2World11ClearForcesEv(%class.b2World* %5)
  br label %85

; <label>:85                                      ; preds = %84, %79
  %86 = getelementptr inbounds %class.b2World* %5, i32 0, i32 2
  %87 = load i32* %86, align 4
  %88 = and i32 %87, -3
  store i32 %88, i32* %86, align 4
  %89 = call float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %stepTimer)
  %90 = getelementptr inbounds %class.b2World* %5, i32 0, i32 17
  %91 = getelementptr inbounds %struct.b2Profile* %90, i32 0, i32 0
  store float %89, float* %91, align 4
  ret void
}

declare void @_ZN16b2ContactManager7CollideEv(%class.b2ContactManager*)

define void @_ZN7b2World11ClearForcesEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  %body = alloca %class.b2Body*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 4
  %4 = load %class.b2Body** %3, align 4
  store %class.b2Body* %4, %class.b2Body** %body, align 4
  br label %5

; <label>:5                                       ; preds = %13, %0
  %6 = load %class.b2Body** %body, align 4
  %7 = icmp ne %class.b2Body* %6, null
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %5
  %9 = load %class.b2Body** %body, align 4
  %10 = getelementptr inbounds %class.b2Body* %9, i32 0, i32 7
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %10)
  %11 = load %class.b2Body** %body, align 4
  %12 = getelementptr inbounds %class.b2Body* %11, i32 0, i32 8
  store float 0.000000e+00, float* %12, align 4
  br label %13

; <label>:13                                      ; preds = %8
  %14 = load %class.b2Body** %body, align 4
  %15 = call %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %14)
  store %class.b2Body* %15, %class.b2Body** %body, align 4
  br label %5

; <label>:16                                      ; preds = %5
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

define void @_ZNK7b2World9QueryAABBEP15b2QueryCallbackRK6b2AABB(%class.b2World* %this, %class.b2QueryCallback* %callback, %struct.b2AABB* %aabb) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2QueryCallback*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %wrapper = alloca %struct.b2WorldQueryWrapper, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2QueryCallback* %callback, %class.b2QueryCallback** %2, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %3, align 4
  %4 = load %class.b2World** %1
  %5 = getelementptr inbounds %class.b2World* %4, i32 0, i32 3
  %6 = getelementptr inbounds %class.b2ContactManager* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.b2WorldQueryWrapper* %wrapper, i32 0, i32 0
  store %class.b2BroadPhase* %6, %class.b2BroadPhase** %7, align 4
  %8 = load %class.b2QueryCallback** %2, align 4
  %9 = getelementptr inbounds %struct.b2WorldQueryWrapper* %wrapper, i32 0, i32 1
  store %class.b2QueryCallback* %8, %class.b2QueryCallback** %9, align 4
  %10 = getelementptr inbounds %class.b2World* %4, i32 0, i32 3
  %11 = getelementptr inbounds %class.b2ContactManager* %10, i32 0, i32 0
  %12 = load %struct.b2AABB** %3
  call void @_ZNK12b2BroadPhase5QueryI19b2WorldQueryWrapperEEvPT_RK6b2AABB(%class.b2BroadPhase* %11, %struct.b2WorldQueryWrapper* %wrapper, %struct.b2AABB* %12)
  ret void
}

define linkonce_odr void @_ZNK12b2BroadPhase5QueryI19b2WorldQueryWrapperEEvPT_RK6b2AABB(%class.b2BroadPhase* %this, %struct.b2WorldQueryWrapper* %callback, %struct.b2AABB* %aabb) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca %struct.b2WorldQueryWrapper*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store %struct.b2WorldQueryWrapper* %callback, %struct.b2WorldQueryWrapper** %2, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %3, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  %6 = load %struct.b2WorldQueryWrapper** %2, align 4
  %7 = load %struct.b2AABB** %3
  call void @_ZNK13b2DynamicTree5QueryI19b2WorldQueryWrapperEEvPT_RK6b2AABB(%class.b2DynamicTree* %5, %struct.b2WorldQueryWrapper* %6, %struct.b2AABB* %7)
  ret void
}

define void @_ZNK7b2World7RayCastEP17b2RayCastCallbackRK6b2Vec2S4_(%class.b2World* %this, %class.b2RayCastCallback* %callback, %struct.b2Vec2* %point1, %struct.b2Vec2* %point2) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2RayCastCallback*, align 4
  %3 = alloca %struct.b2Vec2*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %wrapper = alloca %struct.b2WorldRayCastWrapper, align 4
  %input = alloca %struct.b2RayCastInput, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2RayCastCallback* %callback, %class.b2RayCastCallback** %2, align 4
  store %struct.b2Vec2* %point1, %struct.b2Vec2** %3, align 4
  store %struct.b2Vec2* %point2, %struct.b2Vec2** %4, align 4
  %5 = load %class.b2World** %1
  %6 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %7 = getelementptr inbounds %class.b2ContactManager* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.b2WorldRayCastWrapper* %wrapper, i32 0, i32 0
  store %class.b2BroadPhase* %7, %class.b2BroadPhase** %8, align 4
  %9 = load %class.b2RayCastCallback** %2, align 4
  %10 = getelementptr inbounds %struct.b2WorldRayCastWrapper* %wrapper, i32 0, i32 1
  store %class.b2RayCastCallback* %9, %class.b2RayCastCallback** %10, align 4
  call void @_ZN14b2RayCastInputC1Ev(%struct.b2RayCastInput* %input)
  %11 = getelementptr inbounds %struct.b2RayCastInput* %input, i32 0, i32 2
  store float 1.000000e+00, float* %11, align 4
  %12 = getelementptr inbounds %struct.b2RayCastInput* %input, i32 0, i32 0
  %13 = load %struct.b2Vec2** %3
  %14 = bitcast %struct.b2Vec2* %12 to i8*
  %15 = bitcast %struct.b2Vec2* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 8, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.b2RayCastInput* %input, i32 0, i32 1
  %17 = load %struct.b2Vec2** %4
  %18 = bitcast %struct.b2Vec2* %16 to i8*
  %19 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  %20 = getelementptr inbounds %class.b2World* %5, i32 0, i32 3
  %21 = getelementptr inbounds %class.b2ContactManager* %20, i32 0, i32 0
  call void @_ZNK12b2BroadPhase7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput(%class.b2BroadPhase* %21, %struct.b2WorldRayCastWrapper* %wrapper, %struct.b2RayCastInput* %input)
  ret void
}

define linkonce_odr void @_ZN14b2RayCastInputC1Ev(%struct.b2RayCastInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2RayCastInput*, align 4
  store %struct.b2RayCastInput* %this, %struct.b2RayCastInput** %1, align 4
  %2 = load %struct.b2RayCastInput** %1
  call void @_ZN14b2RayCastInputC2Ev(%struct.b2RayCastInput* %2)
  ret void
}

define linkonce_odr void @_ZNK12b2BroadPhase7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput(%class.b2BroadPhase* %this, %struct.b2WorldRayCastWrapper* %callback, %struct.b2RayCastInput* %input) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca %struct.b2WorldRayCastWrapper*, align 4
  %3 = alloca %struct.b2RayCastInput*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store %struct.b2WorldRayCastWrapper* %callback, %struct.b2WorldRayCastWrapper** %2, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %3, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  %6 = load %struct.b2WorldRayCastWrapper** %2, align 4
  %7 = load %struct.b2RayCastInput** %3
  call void @_ZNK13b2DynamicTree7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput(%class.b2DynamicTree* %5, %struct.b2WorldRayCastWrapper* %6, %struct.b2RayCastInput* %7)
  ret void
}

define void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %this, %class.b2Fixture* %fixture, %struct.b2Transform* %xf, %struct.b2Color* %color) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Color*, align 4
  %circle = alloca %class.b2CircleShape*, align 4
  %center = alloca %struct.b2Vec2, align 4
  %radius = alloca float, align 4
  %axis = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %edge = alloca %class.b2EdgeShape*, align 4
  %v1 = alloca %struct.b2Vec2, align 4
  %v2 = alloca %struct.b2Vec2, align 4
  %chain = alloca %class.b2ChainShape*, align 4
  %count = alloca i32, align 4
  %vertices = alloca %struct.b2Vec2*, align 4
  %v11 = alloca %struct.b2Vec2, align 4
  %i = alloca i32, align 4
  %v22 = alloca %struct.b2Vec2, align 4
  %poly = alloca %class.b2PolygonShape*, align 4
  %vertexCount = alloca i32, align 4
  %vertices3 = alloca [8 x %struct.b2Vec2], align 4
  %i4 = alloca i32, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2Fixture* %fixture, %class.b2Fixture** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  store %struct.b2Color* %color, %struct.b2Color** %4, align 4
  %7 = load %class.b2World** %1
  %8 = load %class.b2Fixture** %2, align 4
  %9 = call i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %8)
  switch i32 %9, label %137 [
    i32 0, label %10
    i32 1, label %31
    i32 3, label %48
    i32 2, label %90
  ]

; <label>:10                                      ; preds = %0
  %11 = load %class.b2Fixture** %2, align 4
  %12 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %11)
  %13 = bitcast %class.b2Shape* %12 to %class.b2CircleShape*
  store %class.b2CircleShape* %13, %class.b2CircleShape** %circle, align 4
  %14 = load %struct.b2Transform** %3
  %15 = load %class.b2CircleShape** %circle, align 4
  %16 = getelementptr inbounds %class.b2CircleShape* %15, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %center, %struct.b2Transform* %14, %struct.b2Vec2* %16)
  %17 = load %class.b2CircleShape** %circle, align 4
  %18 = bitcast %class.b2CircleShape* %17 to %class.b2Shape*
  %19 = getelementptr inbounds %class.b2Shape* %18, i32 0, i32 2
  %20 = load float* %19, align 4
  store float %20, float* %radius, align 4
  %21 = load %struct.b2Transform** %3
  %22 = getelementptr inbounds %struct.b2Transform* %21, i32 0, i32 1
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %5, float 1.000000e+00, float 0.000000e+00)
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %axis, %struct.b2Rot* %22, %struct.b2Vec2* %5)
  %23 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %24 = load %class.b2Draw** %23, align 4
  %25 = bitcast %class.b2Draw* %24 to void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Vec2*, %struct.b2Color*)***
  %26 = load void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Vec2*, %struct.b2Color*)*** %25
  %27 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Vec2*, %struct.b2Color*)** %26, i64 5
  %28 = load void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Vec2*, %struct.b2Color*)** %27
  %29 = load float* %radius, align 4
  %30 = load %struct.b2Color** %4
  call void %28(%class.b2Draw* %24, %struct.b2Vec2* %center, float %29, %struct.b2Vec2* %axis, %struct.b2Color* %30)
  br label %138

; <label>:31                                      ; preds = %0
  %32 = load %class.b2Fixture** %2, align 4
  %33 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %32)
  %34 = bitcast %class.b2Shape* %33 to %class.b2EdgeShape*
  store %class.b2EdgeShape* %34, %class.b2EdgeShape** %edge, align 4
  %35 = load %struct.b2Transform** %3
  %36 = load %class.b2EdgeShape** %edge, align 4
  %37 = getelementptr inbounds %class.b2EdgeShape* %36, i32 0, i32 1
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v1, %struct.b2Transform* %35, %struct.b2Vec2* %37)
  %38 = load %struct.b2Transform** %3
  %39 = load %class.b2EdgeShape** %edge, align 4
  %40 = getelementptr inbounds %class.b2EdgeShape* %39, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v2, %struct.b2Transform* %38, %struct.b2Vec2* %40)
  %41 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %42 = load %class.b2Draw** %41, align 4
  %43 = bitcast %class.b2Draw* %42 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %44 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %43
  %45 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %44, i64 6
  %46 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %45
  %47 = load %struct.b2Color** %4
  call void %46(%class.b2Draw* %42, %struct.b2Vec2* %v1, %struct.b2Vec2* %v2, %struct.b2Color* %47)
  br label %138

; <label>:48                                      ; preds = %0
  %49 = load %class.b2Fixture** %2, align 4
  %50 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %49)
  %51 = bitcast %class.b2Shape* %50 to %class.b2ChainShape*
  store %class.b2ChainShape* %51, %class.b2ChainShape** %chain, align 4
  %52 = load %class.b2ChainShape** %chain, align 4
  %53 = getelementptr inbounds %class.b2ChainShape* %52, i32 0, i32 2
  %54 = load i32* %53, align 4
  store i32 %54, i32* %count, align 4
  %55 = load %class.b2ChainShape** %chain, align 4
  %56 = getelementptr inbounds %class.b2ChainShape* %55, i32 0, i32 1
  %57 = load %struct.b2Vec2** %56, align 4
  store %struct.b2Vec2* %57, %struct.b2Vec2** %vertices, align 4
  %58 = load %struct.b2Transform** %3
  %59 = load %struct.b2Vec2** %vertices, align 4
  %60 = getelementptr inbounds %struct.b2Vec2* %59, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v11, %struct.b2Transform* %58, %struct.b2Vec2* %60)
  store i32 1, i32* %i, align 4
  br label %61

; <label>:61                                      ; preds = %86, %48
  %62 = load i32* %i, align 4
  %63 = load i32* %count, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %89

; <label>:65                                      ; preds = %61
  %66 = load %struct.b2Transform** %3
  %67 = load i32* %i, align 4
  %68 = load %struct.b2Vec2** %vertices, align 4
  %69 = getelementptr inbounds %struct.b2Vec2* %68, i32 %67
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %v22, %struct.b2Transform* %66, %struct.b2Vec2* %69)
  %70 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %71 = load %class.b2Draw** %70, align 4
  %72 = bitcast %class.b2Draw* %71 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %73 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %72
  %74 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %73, i64 6
  %75 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %74
  %76 = load %struct.b2Color** %4
  call void %75(%class.b2Draw* %71, %struct.b2Vec2* %v11, %struct.b2Vec2* %v22, %struct.b2Color* %76)
  %77 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %78 = load %class.b2Draw** %77, align 4
  %79 = bitcast %class.b2Draw* %78 to void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Color*)***
  %80 = load void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Color*)*** %79
  %81 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Color*)** %80, i64 4
  %82 = load void (%class.b2Draw*, %struct.b2Vec2*, float, %struct.b2Color*)** %81
  %83 = load %struct.b2Color** %4
  call void %82(%class.b2Draw* %78, %struct.b2Vec2* %v11, float 0x3FA99999A0000000, %struct.b2Color* %83)
  %84 = bitcast %struct.b2Vec2* %v11 to i8*
  %85 = bitcast %struct.b2Vec2* %v22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %85, i32 8, i32 4, i1 false)
  br label %86

; <label>:86                                      ; preds = %65
  %87 = load i32* %i, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %i, align 4
  br label %61

; <label>:89                                      ; preds = %61
  br label %138

; <label>:90                                      ; preds = %0
  %91 = load %class.b2Fixture** %2, align 4
  %92 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %91)
  %93 = bitcast %class.b2Shape* %92 to %class.b2PolygonShape*
  store %class.b2PolygonShape* %93, %class.b2PolygonShape** %poly, align 4
  %94 = load %class.b2PolygonShape** %poly, align 4
  %95 = getelementptr inbounds %class.b2PolygonShape* %94, i32 0, i32 4
  %96 = load i32* %95, align 4
  store i32 %96, i32* %vertexCount, align 4
  %97 = load i32* %vertexCount, align 4
  %98 = icmp sle i32 %97, 8
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %90
  br label %102

; <label>:100                                     ; preds = %90
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 1077, i8* getelementptr inbounds ([75 x i8]* @__PRETTY_FUNCTION__._ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %102

; <label>:102                                     ; preds = %101, %99
  %103 = getelementptr inbounds [8 x %struct.b2Vec2]* %vertices3, i32 0, i32 0
  %104 = getelementptr inbounds %struct.b2Vec2* %103, i32 8
  br label %105

; <label>:105                                     ; preds = %105, %102
  %106 = phi %struct.b2Vec2* [ %103, %102 ], [ %107, %105 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %106)
  %107 = getelementptr inbounds %struct.b2Vec2* %106, i32 1
  %108 = icmp eq %struct.b2Vec2* %107, %104
  br i1 %108, label %109, label %105

; <label>:109                                     ; preds = %105
  store i32 0, i32* %i4, align 4
  br label %110

; <label>:110                                     ; preds = %124, %109
  %111 = load i32* %i4, align 4
  %112 = load i32* %vertexCount, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %127

; <label>:114                                     ; preds = %110
  %115 = load i32* %i4, align 4
  %116 = getelementptr inbounds [8 x %struct.b2Vec2]* %vertices3, i32 0, i32 %115
  %117 = load %struct.b2Transform** %3
  %118 = load i32* %i4, align 4
  %119 = load %class.b2PolygonShape** %poly, align 4
  %120 = getelementptr inbounds %class.b2PolygonShape* %119, i32 0, i32 2
  %121 = getelementptr inbounds [8 x %struct.b2Vec2]* %120, i32 0, i32 %118
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %6, %struct.b2Transform* %117, %struct.b2Vec2* %121)
  %122 = bitcast %struct.b2Vec2* %116 to i8*
  %123 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 8, i32 4, i1 false)
  br label %124

; <label>:124                                     ; preds = %114
  %125 = load i32* %i4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %i4, align 4
  br label %110

; <label>:127                                     ; preds = %110
  %128 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %129 = load %class.b2Draw** %128, align 4
  %130 = bitcast %class.b2Draw* %129 to void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)***
  %131 = load void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)*** %130
  %132 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)** %131, i64 3
  %133 = load void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)** %132
  %134 = getelementptr inbounds [8 x %struct.b2Vec2]* %vertices3, i32 0, i32 0
  %135 = load i32* %vertexCount, align 4
  %136 = load %struct.b2Color** %4
  call void %133(%class.b2Draw* %129, %struct.b2Vec2* %134, i32 %135, %struct.b2Color* %136)
  br label %138

; <label>:137                                     ; preds = %0
  br label %138

; <label>:138                                     ; preds = %137, %127, %89, %31, %10
  ret void
}

define linkonce_odr i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %this) inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  %5 = call i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %4)
  ret i32 %5
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

define void @_ZN7b2World9DrawJointEP7b2Joint(%class.b2World* %this, %class.b2Joint* %joint) align 2 {
  %1 = alloca %class.b2World*, align 4
  %2 = alloca %class.b2Joint*, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %xf1 = alloca %struct.b2Transform*, align 4
  %xf2 = alloca %struct.b2Transform*, align 4
  %x1 = alloca %struct.b2Vec2, align 4
  %x2 = alloca %struct.b2Vec2, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %color = alloca %struct.b2Color, align 4
  %pulley = alloca %class.b2PulleyJoint*, align 4
  %s1 = alloca %struct.b2Vec2, align 4
  %s2 = alloca %struct.b2Vec2, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  store %class.b2Joint* %joint, %class.b2Joint** %2, align 4
  %3 = load %class.b2World** %1
  %4 = load %class.b2Joint** %2, align 4
  %5 = call %class.b2Body* @_ZN7b2Joint8GetBodyAEv(%class.b2Joint* %4)
  store %class.b2Body* %5, %class.b2Body** %bodyA, align 4
  %6 = load %class.b2Joint** %2, align 4
  %7 = call %class.b2Body* @_ZN7b2Joint8GetBodyBEv(%class.b2Joint* %6)
  store %class.b2Body* %7, %class.b2Body** %bodyB, align 4
  %8 = load %class.b2Body** %bodyA, align 4
  %9 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %8)
  store %struct.b2Transform* %9, %struct.b2Transform** %xf1, align 4
  %10 = load %class.b2Body** %bodyB, align 4
  %11 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %10)
  store %struct.b2Transform* %11, %struct.b2Transform** %xf2, align 4
  %12 = load %struct.b2Transform** %xf1
  %13 = getelementptr inbounds %struct.b2Transform* %12, i32 0, i32 0
  %14 = bitcast %struct.b2Vec2* %x1 to i8*
  %15 = bitcast %struct.b2Vec2* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 8, i32 4, i1 false)
  %16 = load %struct.b2Transform** %xf2
  %17 = getelementptr inbounds %struct.b2Transform* %16, i32 0, i32 0
  %18 = bitcast %struct.b2Vec2* %x2 to i8*
  %19 = bitcast %struct.b2Vec2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 8, i32 4, i1 false)
  %20 = load %class.b2Joint** %2, align 4
  %21 = bitcast %class.b2Joint* %20 to void (%struct.b2Vec2*, %class.b2Joint*)***
  %22 = load void (%struct.b2Vec2*, %class.b2Joint*)*** %21
  %23 = getelementptr inbounds void (%struct.b2Vec2*, %class.b2Joint*)** %22, i64 0
  %24 = load void (%struct.b2Vec2*, %class.b2Joint*)** %23
  call void %24(%struct.b2Vec2* sret %p1, %class.b2Joint* %20)
  %25 = load %class.b2Joint** %2, align 4
  %26 = bitcast %class.b2Joint* %25 to void (%struct.b2Vec2*, %class.b2Joint*)***
  %27 = load void (%struct.b2Vec2*, %class.b2Joint*)*** %26
  %28 = getelementptr inbounds void (%struct.b2Vec2*, %class.b2Joint*)** %27, i64 1
  %29 = load void (%struct.b2Vec2*, %class.b2Joint*)** %28
  call void %29(%struct.b2Vec2* sret %p2, %class.b2Joint* %25)
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %color, float 5.000000e-01, float 0x3FE99999A0000000, float 0x3FE99999A0000000)
  %30 = load %class.b2Joint** %2, align 4
  %31 = call i32 @_ZNK7b2Joint7GetTypeEv(%class.b2Joint* %30)
  switch i32 %31, label %62 [
    i32 3, label %32
    i32 4, label %39
    i32 5, label %81
  ]

; <label>:32                                      ; preds = %0
  %33 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %34 = load %class.b2Draw** %33, align 4
  %35 = bitcast %class.b2Draw* %34 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %36 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %35
  %37 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %36, i64 6
  %38 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %37
  call void %38(%class.b2Draw* %34, %struct.b2Vec2* %p1, %struct.b2Vec2* %p2, %struct.b2Color* %color)
  br label %81

; <label>:39                                      ; preds = %0
  %40 = load %class.b2Joint** %2, align 4
  %41 = bitcast %class.b2Joint* %40 to %class.b2PulleyJoint*
  store %class.b2PulleyJoint* %41, %class.b2PulleyJoint** %pulley, align 4
  %42 = load %class.b2PulleyJoint** %pulley, align 4
  call void @_ZNK13b2PulleyJoint16GetGroundAnchorAEv(%struct.b2Vec2* sret %s1, %class.b2PulleyJoint* %42)
  %43 = load %class.b2PulleyJoint** %pulley, align 4
  call void @_ZNK13b2PulleyJoint16GetGroundAnchorBEv(%struct.b2Vec2* sret %s2, %class.b2PulleyJoint* %43)
  %44 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %45 = load %class.b2Draw** %44, align 4
  %46 = bitcast %class.b2Draw* %45 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %47 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %46
  %48 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %47, i64 6
  %49 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %48
  call void %49(%class.b2Draw* %45, %struct.b2Vec2* %s1, %struct.b2Vec2* %p1, %struct.b2Color* %color)
  %50 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %51 = load %class.b2Draw** %50, align 4
  %52 = bitcast %class.b2Draw* %51 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %53 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %52
  %54 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %53, i64 6
  %55 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %54
  call void %55(%class.b2Draw* %51, %struct.b2Vec2* %s2, %struct.b2Vec2* %p2, %struct.b2Color* %color)
  %56 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %57 = load %class.b2Draw** %56, align 4
  %58 = bitcast %class.b2Draw* %57 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %59 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %58
  %60 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %59, i64 6
  %61 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %60
  call void %61(%class.b2Draw* %57, %struct.b2Vec2* %s1, %struct.b2Vec2* %s2, %struct.b2Color* %color)
  br label %81

; <label>:62                                      ; preds = %0
  %63 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %64 = load %class.b2Draw** %63, align 4
  %65 = bitcast %class.b2Draw* %64 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %66 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %65
  %67 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %66, i64 6
  %68 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %67
  call void %68(%class.b2Draw* %64, %struct.b2Vec2* %x1, %struct.b2Vec2* %p1, %struct.b2Color* %color)
  %69 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %70 = load %class.b2Draw** %69, align 4
  %71 = bitcast %class.b2Draw* %70 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %72 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %71
  %73 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %72, i64 6
  %74 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %73
  call void %74(%class.b2Draw* %70, %struct.b2Vec2* %p1, %struct.b2Vec2* %p2, %struct.b2Color* %color)
  %75 = getelementptr inbounds %class.b2World* %3, i32 0, i32 11
  %76 = load %class.b2Draw** %75, align 4
  %77 = bitcast %class.b2Draw* %76 to void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)***
  %78 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)*** %77
  %79 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %78, i64 6
  %80 = load void (%class.b2Draw*, %struct.b2Vec2*, %struct.b2Vec2*, %struct.b2Color*)** %79
  call void %80(%class.b2Draw* %76, %struct.b2Vec2* %x2, %struct.b2Vec2* %p2, %struct.b2Color* %color)
  br label %81

; <label>:81                                      ; preds = %62, %0, %39, %32
  ret void
}

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

define linkonce_odr %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 3
  ret %struct.b2Transform* %3
}

define linkonce_odr void @_ZN7b2ColorC1Efff(%struct.b2Color* %this, float %r, float %g, float %b) unnamed_addr align 2 {
  %1 = alloca %struct.b2Color*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Color* %this, %struct.b2Color** %1, align 4
  store float %r, float* %2, align 4
  store float %g, float* %3, align 4
  store float %b, float* %4, align 4
  %5 = load %struct.b2Color** %1
  %6 = load float* %2, align 4
  %7 = load float* %3, align 4
  %8 = load float* %4, align 4
  call void @_ZN7b2ColorC2Efff(%struct.b2Color* %5, float %6, float %7, float %8)
  ret void
}

define linkonce_odr i32 @_ZNK7b2Joint7GetTypeEv(%class.b2Joint* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

declare void @_ZNK13b2PulleyJoint16GetGroundAnchorAEv(%struct.b2Vec2* sret, %class.b2PulleyJoint*)

declare void @_ZNK13b2PulleyJoint16GetGroundAnchorBEv(%struct.b2Vec2* sret, %class.b2PulleyJoint*)

define void @_ZN7b2World13DrawDebugDataEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  %flags = alloca i32, align 4
  %b = alloca %class.b2Body*, align 4
  %xf = alloca %struct.b2Transform*, align 4
  %f = alloca %class.b2Fixture*, align 4
  %2 = alloca %struct.b2Color, align 4
  %3 = alloca %struct.b2Color, align 4
  %4 = alloca %struct.b2Color, align 4
  %5 = alloca %struct.b2Color, align 4
  %6 = alloca %struct.b2Color, align 4
  %j = alloca %class.b2Joint*, align 4
  %color = alloca %struct.b2Color, align 4
  %c = alloca %class.b2Contact*, align 4
  %color1 = alloca %struct.b2Color, align 4
  %bp = alloca %class.b2BroadPhase*, align 4
  %b2 = alloca %class.b2Body*, align 4
  %f3 = alloca %class.b2Fixture*, align 4
  %i = alloca i32, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  %aabb = alloca %struct.b2AABB, align 4
  %vs = alloca [4 x %struct.b2Vec2], align 4
  %b4 = alloca %class.b2Body*, align 4
  %xf5 = alloca %struct.b2Transform, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %7 = load %class.b2World** %1
  %8 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %9 = load %class.b2Draw** %8, align 4
  %10 = icmp eq %class.b2Draw* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %238

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %14 = load %class.b2Draw** %13, align 4
  %15 = call i32 @_ZNK6b2Draw8GetFlagsEv(%class.b2Draw* %14)
  store i32 %15, i32* %flags, align 4
  %16 = load i32* %flags, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

; <label>:19                                      ; preds = %12
  %20 = getelementptr inbounds %class.b2World* %7, i32 0, i32 4
  %21 = load %class.b2Body** %20, align 4
  store %class.b2Body* %21, %class.b2Body** %b, align 4
  br label %22

; <label>:22                                      ; preds = %74, %19
  %23 = load %class.b2Body** %b, align 4
  %24 = icmp ne %class.b2Body* %23, null
  br i1 %24, label %25, label %77

; <label>:25                                      ; preds = %22
  %26 = load %class.b2Body** %b, align 4
  %27 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %26)
  store %struct.b2Transform* %27, %struct.b2Transform** %xf, align 4
  %28 = load %class.b2Body** %b, align 4
  %29 = call %class.b2Fixture* @_ZN6b2Body14GetFixtureListEv(%class.b2Body* %28)
  store %class.b2Fixture* %29, %class.b2Fixture** %f, align 4
  br label %30

; <label>:30                                      ; preds = %70, %25
  %31 = load %class.b2Fixture** %f, align 4
  %32 = icmp ne %class.b2Fixture* %31, null
  br i1 %32, label %33, label %73

; <label>:33                                      ; preds = %30
  %34 = load %class.b2Body** %b, align 4
  %35 = call zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %34)
  %36 = zext i1 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %33
  %39 = load %class.b2Fixture** %f, align 4
  %40 = load %struct.b2Transform** %xf
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %2, float 5.000000e-01, float 5.000000e-01, float 0x3FD3333340000000)
  call void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %7, %class.b2Fixture* %39, %struct.b2Transform* %40, %struct.b2Color* %2)
  br label %69

; <label>:41                                      ; preds = %33
  %42 = load %class.b2Body** %b, align 4
  %43 = call i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %41
  %46 = load %class.b2Fixture** %f, align 4
  %47 = load %struct.b2Transform** %xf
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %3, float 5.000000e-01, float 0x3FECCCCCC0000000, float 5.000000e-01)
  call void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %7, %class.b2Fixture* %46, %struct.b2Transform* %47, %struct.b2Color* %3)
  br label %68

; <label>:48                                      ; preds = %41
  %49 = load %class.b2Body** %b, align 4
  %50 = call i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %48
  %53 = load %class.b2Fixture** %f, align 4
  %54 = load %struct.b2Transform** %xf
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %4, float 5.000000e-01, float 5.000000e-01, float 0x3FECCCCCC0000000)
  call void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %7, %class.b2Fixture* %53, %struct.b2Transform* %54, %struct.b2Color* %4)
  br label %67

; <label>:55                                      ; preds = %48
  %56 = load %class.b2Body** %b, align 4
  %57 = call zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %56)
  %58 = zext i1 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

; <label>:60                                      ; preds = %55
  %61 = load %class.b2Fixture** %f, align 4
  %62 = load %struct.b2Transform** %xf
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %5, float 0x3FE3333340000000, float 0x3FE3333340000000, float 0x3FE3333340000000)
  call void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %7, %class.b2Fixture* %61, %struct.b2Transform* %62, %struct.b2Color* %5)
  br label %66

; <label>:63                                      ; preds = %55
  %64 = load %class.b2Fixture** %f, align 4
  %65 = load %struct.b2Transform** %xf
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %6, float 0x3FECCCCCC0000000, float 0x3FE6666660000000, float 0x3FE6666660000000)
  call void @_ZN7b2World9DrawShapeEP9b2FixtureRK11b2TransformRK7b2Color(%class.b2World* %7, %class.b2Fixture* %64, %struct.b2Transform* %65, %struct.b2Color* %6)
  br label %66

; <label>:66                                      ; preds = %63, %60
  br label %67

; <label>:67                                      ; preds = %66, %52
  br label %68

; <label>:68                                      ; preds = %67, %45
  br label %69

; <label>:69                                      ; preds = %68, %38
  br label %70

; <label>:70                                      ; preds = %69
  %71 = load %class.b2Fixture** %f, align 4
  %72 = call %class.b2Fixture* @_ZN9b2Fixture7GetNextEv(%class.b2Fixture* %71)
  store %class.b2Fixture* %72, %class.b2Fixture** %f, align 4
  br label %30

; <label>:73                                      ; preds = %30
  br label %74

; <label>:74                                      ; preds = %73
  %75 = load %class.b2Body** %b, align 4
  %76 = call %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %75)
  store %class.b2Body* %76, %class.b2Body** %b, align 4
  br label %22

; <label>:77                                      ; preds = %22
  br label %78

; <label>:78                                      ; preds = %77, %12
  %79 = load i32* %flags, align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

; <label>:82                                      ; preds = %78
  %83 = getelementptr inbounds %class.b2World* %7, i32 0, i32 5
  %84 = load %class.b2Joint** %83, align 4
  store %class.b2Joint* %84, %class.b2Joint** %j, align 4
  br label %85

; <label>:85                                      ; preds = %90, %82
  %86 = load %class.b2Joint** %j, align 4
  %87 = icmp ne %class.b2Joint* %86, null
  br i1 %87, label %88, label %93

; <label>:88                                      ; preds = %85
  %89 = load %class.b2Joint** %j, align 4
  call void @_ZN7b2World9DrawJointEP7b2Joint(%class.b2World* %7, %class.b2Joint* %89)
  br label %90

; <label>:90                                      ; preds = %88
  %91 = load %class.b2Joint** %j, align 4
  %92 = call %class.b2Joint* @_ZN7b2Joint7GetNextEv(%class.b2Joint* %91)
  store %class.b2Joint* %92, %class.b2Joint** %j, align 4
  br label %85

; <label>:93                                      ; preds = %85
  br label %94

; <label>:94                                      ; preds = %93, %78
  %95 = load i32* %flags, align 4
  %96 = and i32 %95, 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

; <label>:98                                      ; preds = %94
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %color, float 0x3FD3333340000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000)
  %99 = getelementptr inbounds %class.b2World* %7, i32 0, i32 3
  %100 = getelementptr inbounds %class.b2ContactManager* %99, i32 0, i32 1
  %101 = load %class.b2Contact** %100, align 4
  store %class.b2Contact* %101, %class.b2Contact** %c, align 4
  br label %102

; <label>:102                                     ; preds = %106, %98
  %103 = load %class.b2Contact** %c, align 4
  %104 = icmp ne %class.b2Contact* %103, null
  br i1 %104, label %105, label %109

; <label>:105                                     ; preds = %102
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load %class.b2Contact** %c, align 4
  %108 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %107)
  store %class.b2Contact* %108, %class.b2Contact** %c, align 4
  br label %102

; <label>:109                                     ; preds = %102
  br label %110

; <label>:110                                     ; preds = %109, %94
  %111 = load i32* %flags, align 4
  %112 = and i32 %111, 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %208

; <label>:114                                     ; preds = %110
  call void @_ZN7b2ColorC1Efff(%struct.b2Color* %color1, float 0x3FECCCCCC0000000, float 0x3FD3333340000000, float 0x3FECCCCCC0000000)
  %115 = getelementptr inbounds %class.b2World* %7, i32 0, i32 3
  %116 = getelementptr inbounds %class.b2ContactManager* %115, i32 0, i32 0
  store %class.b2BroadPhase* %116, %class.b2BroadPhase** %bp, align 4
  %117 = getelementptr inbounds %class.b2World* %7, i32 0, i32 4
  %118 = load %class.b2Body** %117, align 4
  store %class.b2Body* %118, %class.b2Body** %b2, align 4
  br label %119

; <label>:119                                     ; preds = %204, %114
  %120 = load %class.b2Body** %b2, align 4
  %121 = icmp ne %class.b2Body* %120, null
  br i1 %121, label %122, label %207

; <label>:122                                     ; preds = %119
  %123 = load %class.b2Body** %b2, align 4
  %124 = call zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %123)
  %125 = zext i1 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %122
  br label %204

; <label>:128                                     ; preds = %122
  %129 = load %class.b2Body** %b2, align 4
  %130 = call %class.b2Fixture* @_ZN6b2Body14GetFixtureListEv(%class.b2Body* %129)
  store %class.b2Fixture* %130, %class.b2Fixture** %f3, align 4
  br label %131

; <label>:131                                     ; preds = %200, %128
  %132 = load %class.b2Fixture** %f3, align 4
  %133 = icmp ne %class.b2Fixture* %132, null
  br i1 %133, label %134, label %203

; <label>:134                                     ; preds = %131
  store i32 0, i32* %i, align 4
  br label %135

; <label>:135                                     ; preds = %196, %134
  %136 = load i32* %i, align 4
  %137 = load %class.b2Fixture** %f3, align 4
  %138 = getelementptr inbounds %class.b2Fixture* %137, i32 0, i32 7
  %139 = load i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %199

; <label>:141                                     ; preds = %135
  %142 = load %class.b2Fixture** %f3, align 4
  %143 = getelementptr inbounds %class.b2Fixture* %142, i32 0, i32 6
  %144 = load %struct.b2FixtureProxy** %143, align 4
  %145 = load i32* %i, align 4
  %146 = getelementptr inbounds %struct.b2FixtureProxy* %144, i32 %145
  store %struct.b2FixtureProxy* %146, %struct.b2FixtureProxy** %proxy, align 4
  %147 = load %class.b2BroadPhase** %bp, align 4
  %148 = load %struct.b2FixtureProxy** %proxy, align 4
  %149 = getelementptr inbounds %struct.b2FixtureProxy* %148, i32 0, i32 3
  %150 = load i32* %149, align 4
  %151 = call %struct.b2AABB* @_ZNK12b2BroadPhase10GetFatAABBEi(%class.b2BroadPhase* %147, i32 %150)
  %152 = bitcast %struct.b2AABB* %aabb to i8*
  %153 = bitcast %struct.b2AABB* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %152, i8* %153, i32 16, i32 4, i1 false)
  %154 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 0
  %155 = getelementptr inbounds %struct.b2Vec2* %154, i32 4
  br label %156

; <label>:156                                     ; preds = %156, %141
  %157 = phi %struct.b2Vec2* [ %154, %141 ], [ %158, %156 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %157)
  %158 = getelementptr inbounds %struct.b2Vec2* %157, i32 1
  %159 = icmp eq %struct.b2Vec2* %158, %155
  br i1 %159, label %160, label %156

; <label>:160                                     ; preds = %156
  %161 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 0
  %162 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 0
  %163 = getelementptr inbounds %struct.b2Vec2* %162, i32 0, i32 0
  %164 = load float* %163, align 4
  %165 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 0
  %166 = getelementptr inbounds %struct.b2Vec2* %165, i32 0, i32 1
  %167 = load float* %166, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %161, float %164, float %167)
  %168 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 1
  %169 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 1
  %170 = getelementptr inbounds %struct.b2Vec2* %169, i32 0, i32 0
  %171 = load float* %170, align 4
  %172 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 0
  %173 = getelementptr inbounds %struct.b2Vec2* %172, i32 0, i32 1
  %174 = load float* %173, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %168, float %171, float %174)
  %175 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 2
  %176 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 1
  %177 = getelementptr inbounds %struct.b2Vec2* %176, i32 0, i32 0
  %178 = load float* %177, align 4
  %179 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 1
  %180 = getelementptr inbounds %struct.b2Vec2* %179, i32 0, i32 1
  %181 = load float* %180, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %175, float %178, float %181)
  %182 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 3
  %183 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 0
  %184 = getelementptr inbounds %struct.b2Vec2* %183, i32 0, i32 0
  %185 = load float* %184, align 4
  %186 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 1
  %187 = getelementptr inbounds %struct.b2Vec2* %186, i32 0, i32 1
  %188 = load float* %187, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %182, float %185, float %188)
  %189 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %190 = load %class.b2Draw** %189, align 4
  %191 = bitcast %class.b2Draw* %190 to void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)***
  %192 = load void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)*** %191
  %193 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)** %192, i64 2
  %194 = load void (%class.b2Draw*, %struct.b2Vec2*, i32, %struct.b2Color*)** %193
  %195 = getelementptr inbounds [4 x %struct.b2Vec2]* %vs, i32 0, i32 0
  call void %194(%class.b2Draw* %190, %struct.b2Vec2* %195, i32 4, %struct.b2Color* %color1)
  br label %196

; <label>:196                                     ; preds = %160
  %197 = load i32* %i, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4
  br label %135

; <label>:199                                     ; preds = %135
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load %class.b2Fixture** %f3, align 4
  %202 = call %class.b2Fixture* @_ZN9b2Fixture7GetNextEv(%class.b2Fixture* %201)
  store %class.b2Fixture* %202, %class.b2Fixture** %f3, align 4
  br label %131

; <label>:203                                     ; preds = %131
  br label %204

; <label>:204                                     ; preds = %203, %127
  %205 = load %class.b2Body** %b2, align 4
  %206 = call %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %205)
  store %class.b2Body* %206, %class.b2Body** %b2, align 4
  br label %119

; <label>:207                                     ; preds = %119
  br label %208

; <label>:208                                     ; preds = %207, %110
  %209 = load i32* %flags, align 4
  %210 = and i32 %209, 16
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %238

; <label>:212                                     ; preds = %208
  %213 = getelementptr inbounds %class.b2World* %7, i32 0, i32 4
  %214 = load %class.b2Body** %213, align 4
  store %class.b2Body* %214, %class.b2Body** %b4, align 4
  br label %215

; <label>:215                                     ; preds = %234, %212
  %216 = load %class.b2Body** %b4, align 4
  %217 = icmp ne %class.b2Body* %216, null
  br i1 %217, label %218, label %237

; <label>:218                                     ; preds = %215
  %219 = load %class.b2Body** %b4, align 4
  %220 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %219)
  %221 = bitcast %struct.b2Transform* %xf5 to i8*
  %222 = bitcast %struct.b2Transform* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %221, i8* %222, i32 16, i32 4, i1 false)
  %223 = getelementptr inbounds %struct.b2Transform* %xf5, i32 0, i32 0
  %224 = load %class.b2Body** %b4, align 4
  %225 = call %struct.b2Vec2* @_ZNK6b2Body14GetWorldCenterEv(%class.b2Body* %224)
  %226 = bitcast %struct.b2Vec2* %223 to i8*
  %227 = bitcast %struct.b2Vec2* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %226, i8* %227, i32 8, i32 4, i1 false)
  %228 = getelementptr inbounds %class.b2World* %7, i32 0, i32 11
  %229 = load %class.b2Draw** %228, align 4
  %230 = bitcast %class.b2Draw* %229 to void (%class.b2Draw*, %struct.b2Transform*)***
  %231 = load void (%class.b2Draw*, %struct.b2Transform*)*** %230
  %232 = getelementptr inbounds void (%class.b2Draw*, %struct.b2Transform*)** %231, i64 7
  %233 = load void (%class.b2Draw*, %struct.b2Transform*)** %232
  call void %233(%class.b2Draw* %229, %struct.b2Transform* %xf5)
  br label %234

; <label>:234                                     ; preds = %218
  %235 = load %class.b2Body** %b4, align 4
  %236 = call %class.b2Body* @_ZN6b2Body7GetNextEv(%class.b2Body* %235)
  store %class.b2Body* %236, %class.b2Body** %b4, align 4
  br label %215

; <label>:237                                     ; preds = %215
  br label %238

; <label>:238                                     ; preds = %11, %237, %208
  ret void
}

declare i32 @_ZNK6b2Draw8GetFlagsEv(%class.b2Draw*)

define linkonce_odr %class.b2Fixture* @_ZN6b2Body14GetFixtureListEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 12
  %4 = load %class.b2Fixture** %3, align 4
  ret %class.b2Fixture* %4
}

define linkonce_odr %class.b2Fixture* @_ZN9b2Fixture7GetNextEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 1
  %4 = load %class.b2Fixture** %3, align 4
  ret %class.b2Fixture* %4
}

define linkonce_odr %class.b2Joint* @_ZN7b2Joint7GetNextEv(%class.b2Joint* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 3
  %4 = load %class.b2Joint** %3, align 4
  ret %class.b2Joint* %4
}

define linkonce_odr %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 3
  %4 = load %class.b2Contact** %3, align 4
  ret %class.b2Contact* %4
}

define linkonce_odr %struct.b2AABB* @_ZNK12b2BroadPhase10GetFatAABBEi(%class.b2BroadPhase* %this, i32 %proxyId) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  %6 = call %struct.b2AABB* @_ZNK13b2DynamicTree10GetFatAABBEi(%class.b2DynamicTree* %4, i32 %5)
  ret %struct.b2AABB* %6
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

define linkonce_odr %struct.b2Vec2* @_ZNK6b2Body14GetWorldCenterEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.b2Sweep* %3, i32 0, i32 2
  ret %struct.b2Vec2* %4
}

define i32 @_ZNK7b2World13GetProxyCountEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 3
  %4 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 0
  %5 = call i32 @_ZNK12b2BroadPhase13GetProxyCountEv(%class.b2BroadPhase* %4)
  ret i32 %5
}

define linkonce_odr i32 @_ZNK12b2BroadPhase13GetProxyCountEv(%class.b2BroadPhase* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %2 = load %class.b2BroadPhase** %1
  %3 = getelementptr inbounds %class.b2BroadPhase* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

define i32 @_ZNK7b2World13GetTreeHeightEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 3
  %4 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 0
  %5 = call i32 @_ZNK12b2BroadPhase13GetTreeHeightEv(%class.b2BroadPhase* %4)
  ret i32 %5
}

define linkonce_odr i32 @_ZNK12b2BroadPhase13GetTreeHeightEv(%class.b2BroadPhase* %this) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %2 = load %class.b2BroadPhase** %1
  %3 = getelementptr inbounds %class.b2BroadPhase* %2, i32 0, i32 0
  %4 = call i32 @_ZNK13b2DynamicTree9GetHeightEv(%class.b2DynamicTree* %3)
  ret i32 %4
}

define i32 @_ZNK7b2World14GetTreeBalanceEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 3
  %4 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 0
  %5 = call i32 @_ZNK12b2BroadPhase14GetTreeBalanceEv(%class.b2BroadPhase* %4)
  ret i32 %5
}

define linkonce_odr i32 @_ZNK12b2BroadPhase14GetTreeBalanceEv(%class.b2BroadPhase* %this) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %2 = load %class.b2BroadPhase** %1
  %3 = getelementptr inbounds %class.b2BroadPhase* %2, i32 0, i32 0
  %4 = call i32 @_ZNK13b2DynamicTree13GetMaxBalanceEv(%class.b2DynamicTree* %3)
  ret i32 %4
}

define float @_ZNK7b2World14GetTreeQualityEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 3
  %4 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 0
  %5 = call float @_ZNK12b2BroadPhase14GetTreeQualityEv(%class.b2BroadPhase* %4)
  ret float %5
}

define linkonce_odr float @_ZNK12b2BroadPhase14GetTreeQualityEv(%class.b2BroadPhase* %this) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  %2 = load %class.b2BroadPhase** %1
  %3 = getelementptr inbounds %class.b2BroadPhase* %2, i32 0, i32 0
  %4 = call float @_ZNK13b2DynamicTree12GetAreaRatioEv(%class.b2DynamicTree* %3)
  ret float %4
}

define void @_ZN7b2World4DumpEv(%class.b2World* %this) align 2 {
  %1 = alloca %class.b2World*, align 4
  %i = alloca i32, align 4
  %b = alloca %class.b2Body*, align 4
  %j = alloca %class.b2Joint*, align 4
  %j1 = alloca %class.b2Joint*, align 4
  %j2 = alloca %class.b2Joint*, align 4
  store %class.b2World* %this, %class.b2World** %1, align 4
  %2 = load %class.b2World** %1
  %3 = getelementptr inbounds %class.b2World* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %98

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2World* %2, i32 0, i32 8
  %10 = getelementptr inbounds %struct.b2Vec2* %9, i32 0, i32 0
  %11 = load float* %10, align 4
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %class.b2World* %2, i32 0, i32 8
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fpext float %15 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str9, i32 0, i32 0), double %12, double %16)
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0))
  %17 = getelementptr inbounds %class.b2World* %2, i32 0, i32 6
  %18 = load i32* %17, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([60 x i8]* @.str11, i32 0, i32 0), i32 %18)
  %19 = getelementptr inbounds %class.b2World* %2, i32 0, i32 7
  %20 = load i32* %19, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([63 x i8]* @.str12, i32 0, i32 0), i32 %20)
  store i32 0, i32* %i, align 4
  %21 = getelementptr inbounds %class.b2World* %2, i32 0, i32 4
  %22 = load %class.b2Body** %21, align 4
  store %class.b2Body* %22, %class.b2Body** %b, align 4
  br label %23

; <label>:23                                      ; preds = %33, %8
  %24 = load %class.b2Body** %b, align 4
  %25 = icmp ne %class.b2Body* %24, null
  br i1 %25, label %26, label %37

; <label>:26                                      ; preds = %23
  %27 = load i32* %i, align 4
  %28 = load %class.b2Body** %b, align 4
  %29 = getelementptr inbounds %class.b2Body* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %class.b2Body** %b, align 4
  call void @_ZN6b2Body4DumpEv(%class.b2Body* %30)
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %33

; <label>:33                                      ; preds = %26
  %34 = load %class.b2Body** %b, align 4
  %35 = getelementptr inbounds %class.b2Body* %34, i32 0, i32 11
  %36 = load %class.b2Body** %35, align 4
  store %class.b2Body* %36, %class.b2Body** %b, align 4
  br label %23

; <label>:37                                      ; preds = %23
  store i32 0, i32* %i, align 4
  %38 = getelementptr inbounds %class.b2World* %2, i32 0, i32 5
  %39 = load %class.b2Joint** %38, align 4
  store %class.b2Joint* %39, %class.b2Joint** %j, align 4
  br label %40

; <label>:40                                      ; preds = %49, %37
  %41 = load %class.b2Joint** %j, align 4
  %42 = icmp ne %class.b2Joint* %41, null
  br i1 %42, label %43, label %53

; <label>:43                                      ; preds = %40
  %44 = load i32* %i, align 4
  %45 = load %class.b2Joint** %j, align 4
  %46 = getelementptr inbounds %class.b2Joint* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32* %i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4
  br label %49

; <label>:49                                      ; preds = %43
  %50 = load %class.b2Joint** %j, align 4
  %51 = getelementptr inbounds %class.b2Joint* %50, i32 0, i32 3
  %52 = load %class.b2Joint** %51, align 4
  store %class.b2Joint* %52, %class.b2Joint** %j, align 4
  br label %40

; <label>:53                                      ; preds = %40
  %54 = getelementptr inbounds %class.b2World* %2, i32 0, i32 5
  %55 = load %class.b2Joint** %54, align 4
  store %class.b2Joint* %55, %class.b2Joint** %j1, align 4
  br label %56

; <label>:56                                      ; preds = %71, %53
  %57 = load %class.b2Joint** %j1, align 4
  %58 = icmp ne %class.b2Joint* %57, null
  br i1 %58, label %59, label %75

; <label>:59                                      ; preds = %56
  %60 = load %class.b2Joint** %j1, align 4
  %61 = getelementptr inbounds %class.b2Joint* %60, i32 0, i32 1
  %62 = load i32* %61, align 4
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %59
  br label %71

; <label>:65                                      ; preds = %59
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0))
  %66 = load %class.b2Joint** %j1, align 4
  %67 = bitcast %class.b2Joint* %66 to void (%class.b2Joint*)***
  %68 = load void (%class.b2Joint*)*** %67
  %69 = getelementptr inbounds void (%class.b2Joint*)** %68, i64 4
  %70 = load void (%class.b2Joint*)** %69
  call void %70(%class.b2Joint* %66)
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0))
  br label %71

; <label>:71                                      ; preds = %65, %64
  %72 = load %class.b2Joint** %j1, align 4
  %73 = getelementptr inbounds %class.b2Joint* %72, i32 0, i32 3
  %74 = load %class.b2Joint** %73, align 4
  store %class.b2Joint* %74, %class.b2Joint** %j1, align 4
  br label %56

; <label>:75                                      ; preds = %56
  %76 = getelementptr inbounds %class.b2World* %2, i32 0, i32 5
  %77 = load %class.b2Joint** %76, align 4
  store %class.b2Joint* %77, %class.b2Joint** %j2, align 4
  br label %78

; <label>:78                                      ; preds = %93, %75
  %79 = load %class.b2Joint** %j2, align 4
  %80 = icmp ne %class.b2Joint* %79, null
  br i1 %80, label %81, label %97

; <label>:81                                      ; preds = %78
  %82 = load %class.b2Joint** %j2, align 4
  %83 = getelementptr inbounds %class.b2Joint* %82, i32 0, i32 1
  %84 = load i32* %83, align 4
  %85 = icmp ne i32 %84, 6
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %81
  br label %93

; <label>:87                                      ; preds = %81
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0))
  %88 = load %class.b2Joint** %j2, align 4
  %89 = bitcast %class.b2Joint* %88 to void (%class.b2Joint*)***
  %90 = load void (%class.b2Joint*)*** %89
  %91 = getelementptr inbounds void (%class.b2Joint*)** %90, i64 4
  %92 = load void (%class.b2Joint*)** %91
  call void %92(%class.b2Joint* %88)
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0))
  br label %93

; <label>:93                                      ; preds = %87, %86
  %94 = load %class.b2Joint** %j2, align 4
  %95 = getelementptr inbounds %class.b2Joint* %94, i32 0, i32 3
  %96 = load %class.b2Joint** %95, align 4
  store %class.b2Joint* %96, %class.b2Joint** %j2, align 4
  br label %78

; <label>:97                                      ; preds = %78
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([17 x i8]* @.str16, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([16 x i8]* @.str17, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0))
  br label %98

; <label>:98                                      ; preds = %97, %7
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

declare void @_ZN6b2Body4DumpEv(%class.b2Body*)

define linkonce_odr void @_ZNK13b2DynamicTree7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput(%class.b2DynamicTree* %this, %struct.b2WorldRayCastWrapper* %callback, %struct.b2RayCastInput* %input) inlinehint align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca %struct.b2WorldRayCastWrapper*, align 4
  %3 = alloca %struct.b2RayCastInput*, align 4
  %p1 = alloca %struct.b2Vec2, align 4
  %p2 = alloca %struct.b2Vec2, align 4
  %r = alloca %struct.b2Vec2, align 4
  %v = alloca %struct.b2Vec2, align 4
  %abs_v = alloca %struct.b2Vec2, align 4
  %maxFraction = alloca float, align 4
  %segmentAABB = alloca %struct.b2AABB, align 4
  %t = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %stack = alloca %class.b2GrowableStack, align 4
  %8 = alloca i8*
  %9 = alloca i32
  %nodeId = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %c = alloca %struct.b2Vec2, align 4
  %h = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %subInput = alloca %struct.b2RayCastInput, align 4
  %value = alloca float, align 4
  %11 = alloca i32
  %t1 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store %struct.b2WorldRayCastWrapper* %callback, %struct.b2WorldRayCastWrapper** %2, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %3, align 4
  %16 = load %class.b2DynamicTree** %1
  %17 = load %struct.b2RayCastInput** %3
  %18 = getelementptr inbounds %struct.b2RayCastInput* %17, i32 0, i32 0
  %19 = bitcast %struct.b2Vec2* %p1 to i8*
  %20 = bitcast %struct.b2Vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = load %struct.b2RayCastInput** %3
  %22 = getelementptr inbounds %struct.b2RayCastInput* %21, i32 0, i32 1
  %23 = bitcast %struct.b2Vec2* %p2 to i8*
  %24 = bitcast %struct.b2Vec2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %r, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  %25 = call float @_ZNK6b2Vec213LengthSquaredEv(%struct.b2Vec2* %r)
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  br label %30

; <label>:28                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str20, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([83 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree7RayCastI21b2WorldRayCastWrapperEEvPT_RK14b2RayCastInput, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %r)
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %v, float 1.000000e+00, %struct.b2Vec2* %r)
  call void @_Z5b2AbsRK6b2Vec2(%struct.b2Vec2* sret %abs_v, %struct.b2Vec2* %v)
  %32 = load %struct.b2RayCastInput** %3
  %33 = getelementptr inbounds %struct.b2RayCastInput* %32, i32 0, i32 2
  %34 = load float* %33, align 4
  store float %34, float* %maxFraction, align 4
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %segmentAABB)
  %35 = load float* %maxFraction, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %35, %struct.b2Vec2* %5)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %t, %struct.b2Vec2* %p1, %struct.b2Vec2* %4)
  %36 = getelementptr inbounds %struct.b2AABB* %segmentAABB, i32 0, i32 0
  call void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %p1, %struct.b2Vec2* %t)
  %37 = bitcast %struct.b2Vec2* %36 to i8*
  %38 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 8, i32 4, i1 false)
  %39 = getelementptr inbounds %struct.b2AABB* %segmentAABB, i32 0, i32 1
  call void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %p1, %struct.b2Vec2* %t)
  %40 = bitcast %struct.b2Vec2* %39 to i8*
  %41 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  call void @_ZN15b2GrowableStackIiLi256EEC1Ev(%class.b2GrowableStack* %stack)
  %42 = getelementptr inbounds %class.b2DynamicTree* %16, i32 0, i32 0
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %42)
          to label %43 unwind label %54

; <label>:43                                      ; preds = %30
  br label %44

; <label>:44                                      ; preds = %138, %87, %69, %53, %43
  %45 = invoke i32 @_ZN15b2GrowableStackIiLi256EE8GetCountEv(%class.b2GrowableStack* %stack)
          to label %46 unwind label %54

; <label>:46                                      ; preds = %44
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %139

; <label>:48                                      ; preds = %46
  %49 = invoke i32 @_ZN15b2GrowableStackIiLi256EE3PopEv(%class.b2GrowableStack* %stack)
          to label %50 unwind label %54

; <label>:50                                      ; preds = %48
  store i32 %49, i32* %nodeId, align 4
  %51 = load i32* %nodeId, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %50
  br label %44

; <label>:54                                      ; preds = %134, %131, %123, %121, %120, %119, %116, %93, %92, %88, %81, %79, %77, %76, %73, %70, %58, %48, %44, %30
  %55 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %9
  invoke void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %stack)
          to label %142 unwind label %149

; <label>:58                                      ; preds = %50
  %59 = getelementptr inbounds %class.b2DynamicTree* %16, i32 0, i32 1
  %60 = load %struct.b2TreeNode** %59, align 4
  %61 = load i32* %nodeId, align 4
  %62 = getelementptr inbounds %struct.b2TreeNode* %60, i32 %61
  store %struct.b2TreeNode* %62, %struct.b2TreeNode** %node, align 4
  %63 = load %struct.b2TreeNode** %node, align 4
  %64 = getelementptr inbounds %struct.b2TreeNode* %63, i32 0, i32 0
  %65 = invoke zeroext i1 @_Z13b2TestOverlapRK6b2AABBS1_(%struct.b2AABB* %64, %struct.b2AABB* %segmentAABB)
          to label %66 unwind label %54

; <label>:66                                      ; preds = %58
  %67 = zext i1 %65 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %66
  br label %44

; <label>:70                                      ; preds = %66
  %71 = load %struct.b2TreeNode** %node, align 4
  %72 = getelementptr inbounds %struct.b2TreeNode* %71, i32 0, i32 0
  invoke void @_ZNK6b2AABB9GetCenterEv(%struct.b2Vec2* sret %c, %struct.b2AABB* %72)
          to label %73 unwind label %54

; <label>:73                                      ; preds = %70
  %74 = load %struct.b2TreeNode** %node, align 4
  %75 = getelementptr inbounds %struct.b2TreeNode* %74, i32 0, i32 0
  invoke void @_ZNK6b2AABB10GetExtentsEv(%struct.b2Vec2* sret %h, %struct.b2AABB* %75)
          to label %76 unwind label %54

; <label>:76                                      ; preds = %73
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %p1, %struct.b2Vec2* %c)
          to label %77 unwind label %54

; <label>:77                                      ; preds = %76
  %78 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %v, %struct.b2Vec2* %10)
          to label %79 unwind label %54

; <label>:79                                      ; preds = %77
  %80 = invoke float @_Z5b2AbsIfET_S0_(float %78)
          to label %81 unwind label %54

; <label>:81                                      ; preds = %79
  %82 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %abs_v, %struct.b2Vec2* %h)
          to label %83 unwind label %54

; <label>:83                                      ; preds = %81
  %84 = fsub float %80, %82
  store float %84, float* %separation, align 4
  %85 = load float* %separation, align 4
  %86 = fcmp ogt float %85, 0.000000e+00
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %83
  br label %44

; <label>:88                                      ; preds = %83
  %89 = load %struct.b2TreeNode** %node, align 4
  %90 = invoke zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %89)
          to label %91 unwind label %54

; <label>:91                                      ; preds = %88
  br i1 %90, label %92, label %131

; <label>:92                                      ; preds = %91
  invoke void @_ZN14b2RayCastInputC1Ev(%struct.b2RayCastInput* %subInput)
          to label %93 unwind label %54

; <label>:93                                      ; preds = %92
  %94 = getelementptr inbounds %struct.b2RayCastInput* %subInput, i32 0, i32 0
  %95 = load %struct.b2RayCastInput** %3
  %96 = getelementptr inbounds %struct.b2RayCastInput* %95, i32 0, i32 0
  %97 = bitcast %struct.b2Vec2* %94 to i8*
  %98 = bitcast %struct.b2Vec2* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %97, i8* %98, i32 8, i32 4, i1 false)
  %99 = getelementptr inbounds %struct.b2RayCastInput* %subInput, i32 0, i32 1
  %100 = load %struct.b2RayCastInput** %3
  %101 = getelementptr inbounds %struct.b2RayCastInput* %100, i32 0, i32 1
  %102 = bitcast %struct.b2Vec2* %99 to i8*
  %103 = bitcast %struct.b2Vec2* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 8, i32 4, i1 false)
  %104 = load float* %maxFraction, align 4
  %105 = getelementptr inbounds %struct.b2RayCastInput* %subInput, i32 0, i32 2
  store float %104, float* %105, align 4
  %106 = load %struct.b2WorldRayCastWrapper** %2, align 4
  %107 = load i32* %nodeId, align 4
  %108 = invoke float @_ZN21b2WorldRayCastWrapper15RayCastCallbackERK14b2RayCastInputi(%struct.b2WorldRayCastWrapper* %106, %struct.b2RayCastInput* %subInput, i32 %107)
          to label %109 unwind label %54

; <label>:109                                     ; preds = %93
  store float %108, float* %value, align 4
  %110 = load float* %value, align 4
  %111 = fcmp oeq float %110, 0.000000e+00
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %109
  store i32 1, i32* %11
  br label %140

; <label>:113                                     ; preds = %109
  %114 = load float* %value, align 4
  %115 = fcmp ogt float %114, 0.000000e+00
  br i1 %115, label %116, label %130

; <label>:116                                     ; preds = %113
  %117 = load float* %value, align 4
  store float %117, float* %maxFraction, align 4
  %118 = load float* %maxFraction, align 4
  invoke void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %13, %struct.b2Vec2* %p2, %struct.b2Vec2* %p1)
          to label %119 unwind label %54

; <label>:119                                     ; preds = %116
  invoke void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %118, %struct.b2Vec2* %13)
          to label %120 unwind label %54

; <label>:120                                     ; preds = %119
  invoke void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %t1, %struct.b2Vec2* %p1, %struct.b2Vec2* %12)
          to label %121 unwind label %54

; <label>:121                                     ; preds = %120
  %122 = getelementptr inbounds %struct.b2AABB* %segmentAABB, i32 0, i32 0
  invoke void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %p1, %struct.b2Vec2* %t1)
          to label %123 unwind label %54

; <label>:123                                     ; preds = %121
  %124 = bitcast %struct.b2Vec2* %122 to i8*
  %125 = bitcast %struct.b2Vec2* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %124, i8* %125, i32 8, i32 4, i1 false)
  %126 = getelementptr inbounds %struct.b2AABB* %segmentAABB, i32 0, i32 1
  invoke void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %15, %struct.b2Vec2* %p1, %struct.b2Vec2* %t1)
          to label %127 unwind label %54

; <label>:127                                     ; preds = %123
  %128 = bitcast %struct.b2Vec2* %126 to i8*
  %129 = bitcast %struct.b2Vec2* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %128, i8* %129, i32 8, i32 4, i1 false)
  br label %130

; <label>:130                                     ; preds = %127, %113
  br label %138

; <label>:131                                     ; preds = %91
  %132 = load %struct.b2TreeNode** %node, align 4
  %133 = getelementptr inbounds %struct.b2TreeNode* %132, i32 0, i32 3
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %133)
          to label %134 unwind label %54

; <label>:134                                     ; preds = %131
  %135 = load %struct.b2TreeNode** %node, align 4
  %136 = getelementptr inbounds %struct.b2TreeNode* %135, i32 0, i32 4
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %136)
          to label %137 unwind label %54

; <label>:137                                     ; preds = %134
  br label %138

; <label>:138                                     ; preds = %137, %130
  br label %44

; <label>:139                                     ; preds = %46
  store i32 0, i32* %11
  br label %140

; <label>:140                                     ; preds = %139, %112
  call void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %stack)
  %cleanup.dest = load i32* %11
  switch i32 %cleanup.dest, label %151 [
    i32 0, label %141
    i32 1, label %141
  ]

; <label>:141                                     ; preds = %140, %140
  ret void

; <label>:142                                     ; preds = %54
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i8** %8
  %145 = load i8** %8
  %146 = load i32* %9
  %147 = insertvalue { i8*, i32 } undef, i8* %145, 0
  %148 = insertvalue { i8*, i32 } %147, i32 %146, 1
  resume { i8*, i32 } %148

; <label>:149                                     ; preds = %54
  %150 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %140
  unreachable
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

define linkonce_odr void @_Z5b2AbsRK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = call float @_Z5b2AbsIfET_S0_(float %4)
  %6 = load %struct.b2Vec2** %1
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 1
  %8 = load float* %7, align 4
  %9 = call float @_Z5b2AbsIfET_S0_(float %8)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %5, float %9)
  ret void
}

define linkonce_odr void @_ZN6b2AABBC1Ev(%struct.b2AABB* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %2 = load %struct.b2AABB** %1
  call void @_ZN6b2AABBC2Ev(%struct.b2AABB* %2)
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

define linkonce_odr void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
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
  %9 = call float @_Z5b2MinIfET_S0_S0_(float %5, float %8)
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = call float @_Z5b2MinIfET_S0_S0_(float %12, float %15)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define linkonce_odr void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, %struct.b2Vec2* %b) inlinehint {
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
  %9 = call float @_Z5b2MaxIfET_S0_S0_(float %5, float %8)
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load %struct.b2Vec2** %2
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = call float @_Z5b2MaxIfET_S0_S0_(float %12, float %15)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %9, float %16)
  ret void
}

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EEC1Ev(%class.b2GrowableStack* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  call void @_ZN15b2GrowableStackIiLi256EEC2Ev(%class.b2GrowableStack* %2)
  ret void
}

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %this, i32* %element) align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  %2 = alloca i32*, align 4
  %old = alloca i32*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  store i32* %element, i32** %2, align 4
  %3 = load %class.b2GrowableStack** %1
  %4 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 2
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 3
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %37

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 0
  %11 = load i32** %10, align 4
  store i32* %11, i32** %old, align 4
  %12 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 3
  %13 = load i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = mul i32 %16, 4
  %18 = call i8* @_Z7b2Alloci(i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 0
  store i32* %19, i32** %20, align 4
  %21 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 0
  %22 = load i32** %21, align 4
  %23 = bitcast i32* %22 to i8*
  %24 = load i32** %old, align 4
  %25 = bitcast i32* %24 to i8*
  %26 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 2
  %27 = load i32* %26, align 4
  %28 = mul i32 %27, 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %25, i32 %28, i32 1, i1 false)
  %29 = load i32** %old, align 4
  %30 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 1
  %31 = getelementptr inbounds [256 x i32]* %30, i32 0, i32 0
  %32 = icmp ne i32* %29, %31
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %9
  %34 = load i32** %old, align 4
  %35 = bitcast i32* %34 to i8*
  call void @_Z6b2FreePv(i8* %35)
  br label %36

; <label>:36                                      ; preds = %33, %9
  br label %37

; <label>:37                                      ; preds = %36, %0
  %38 = load i32** %2
  %39 = load i32* %38, align 4
  %40 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 2
  %41 = load i32* %40, align 4
  %42 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 0
  %43 = load i32** %42, align 4
  %44 = getelementptr inbounds i32* %43, i32 %41
  store i32 %39, i32* %44
  %45 = getelementptr inbounds %class.b2GrowableStack* %3, i32 0, i32 2
  %46 = load i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  ret void
}

define linkonce_odr i32 @_ZN15b2GrowableStackIiLi256EE8GetCountEv(%class.b2GrowableStack* %this) nounwind align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  %3 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  ret i32 %4
}

define linkonce_odr i32 @_ZN15b2GrowableStackIiLi256EE3PopEv(%class.b2GrowableStack* %this) nounwind align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  %3 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str23, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZN15b2GrowableStackIiLi256EE3PopEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 2
  %11 = load i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 2
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 0
  %16 = load i32** %15, align 4
  %17 = getelementptr inbounds i32* %16, i32 %14
  %18 = load i32* %17
  ret i32 %18
}

define linkonce_odr zeroext i1 @_Z13b2TestOverlapRK6b2AABBS1_(%struct.b2AABB* %a, %struct.b2AABB* %b) inlinehint {
  %1 = alloca i1, align 1
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %d1 = alloca %struct.b2Vec2, align 4
  %d2 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2AABB* %a, %struct.b2AABB** %2, align 4
  store %struct.b2AABB* %b, %struct.b2AABB** %3, align 4
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %d1)
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %d2)
  %6 = load %struct.b2AABB** %3
  %7 = getelementptr inbounds %struct.b2AABB* %6, i32 0, i32 0
  %8 = load %struct.b2AABB** %2
  %9 = getelementptr inbounds %struct.b2AABB* %8, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %7, %struct.b2Vec2* %9)
  %10 = bitcast %struct.b2Vec2* %d1 to i8*
  %11 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %12 = load %struct.b2AABB** %2
  %13 = getelementptr inbounds %struct.b2AABB* %12, i32 0, i32 0
  %14 = load %struct.b2AABB** %3
  %15 = getelementptr inbounds %struct.b2AABB* %14, i32 0, i32 1
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %13, %struct.b2Vec2* %15)
  %16 = bitcast %struct.b2Vec2* %d2 to i8*
  %17 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %18 = getelementptr inbounds %struct.b2Vec2* %d1, i32 0, i32 0
  %19 = load float* %18, align 4
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %struct.b2Vec2* %d1, i32 0, i32 1
  %23 = load float* %22, align 4
  %24 = fcmp ogt float %23, 0.000000e+00
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %21, %0
  store i1 false, i1* %1
  br label %36

; <label>:26                                      ; preds = %21
  %27 = getelementptr inbounds %struct.b2Vec2* %d2, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = fcmp ogt float %28, 0.000000e+00
  br i1 %29, label %34, label %30

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.b2Vec2* %d2, i32 0, i32 1
  %32 = load float* %31, align 4
  %33 = fcmp ogt float %32, 0.000000e+00
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %30, %26
  store i1 false, i1* %1
  br label %36

; <label>:35                                      ; preds = %30
  store i1 true, i1* %1
  br label %36

; <label>:36                                      ; preds = %35, %34, %25
  %37 = load i1* %1
  ret i1 %37
}

define linkonce_odr void @_ZNK6b2AABB9GetCenterEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2AABB* %this) align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  %2 = alloca %struct.b2Vec2, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %3 = load %struct.b2AABB** %1
  %4 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %4, %struct.b2Vec2* %5)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float 5.000000e-01, %struct.b2Vec2* %2)
  ret void
}

define linkonce_odr void @_ZNK6b2AABB10GetExtentsEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2AABB* %this) align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  %2 = alloca %struct.b2Vec2, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %3 = load %struct.b2AABB** %1
  %4 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %4, %struct.b2Vec2* %5)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %agg.result, float 5.000000e-01, %struct.b2Vec2* %2)
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

define linkonce_odr zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %this) nounwind align 2 {
  %1 = alloca %struct.b2TreeNode*, align 4
  store %struct.b2TreeNode* %this, %struct.b2TreeNode** %1, align 4
  %2 = load %struct.b2TreeNode** %1
  %3 = getelementptr inbounds %struct.b2TreeNode* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, -1
  ret i1 %5
}

define linkonce_odr float @_ZN21b2WorldRayCastWrapper15RayCastCallbackERK14b2RayCastInputi(%struct.b2WorldRayCastWrapper* %this, %struct.b2RayCastInput* %input, i32 %proxyId) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %struct.b2WorldRayCastWrapper*, align 4
  %3 = alloca %struct.b2RayCastInput*, align 4
  %4 = alloca i32, align 4
  %userData = alloca i8*, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  %fixture = alloca %class.b2Fixture*, align 4
  %index = alloca i32, align 4
  %output = alloca %struct.b2RayCastOutput, align 4
  %hit = alloca i8, align 1
  %fraction = alloca float, align 4
  %point = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  store %struct.b2WorldRayCastWrapper* %this, %struct.b2WorldRayCastWrapper** %2, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %3, align 4
  store i32 %proxyId, i32* %4, align 4
  %7 = load %struct.b2WorldRayCastWrapper** %2
  %8 = getelementptr inbounds %struct.b2WorldRayCastWrapper* %7, i32 0, i32 0
  %9 = load %class.b2BroadPhase** %8, align 4
  %10 = load i32* %4, align 4
  %11 = call i8* @_ZNK12b2BroadPhase11GetUserDataEi(%class.b2BroadPhase* %9, i32 %10)
  store i8* %11, i8** %userData, align 4
  %12 = load i8** %userData, align 4
  %13 = bitcast i8* %12 to %struct.b2FixtureProxy*
  store %struct.b2FixtureProxy* %13, %struct.b2FixtureProxy** %proxy, align 4
  %14 = load %struct.b2FixtureProxy** %proxy, align 4
  %15 = getelementptr inbounds %struct.b2FixtureProxy* %14, i32 0, i32 1
  %16 = load %class.b2Fixture** %15, align 4
  store %class.b2Fixture* %16, %class.b2Fixture** %fixture, align 4
  %17 = load %struct.b2FixtureProxy** %proxy, align 4
  %18 = getelementptr inbounds %struct.b2FixtureProxy* %17, i32 0, i32 2
  %19 = load i32* %18, align 4
  store i32 %19, i32* %index, align 4
  call void @_ZN15b2RayCastOutputC1Ev(%struct.b2RayCastOutput* %output)
  %20 = load %class.b2Fixture** %fixture, align 4
  %21 = load %struct.b2RayCastInput** %3
  %22 = load i32* %index, align 4
  %23 = call zeroext i1 @_ZNK9b2Fixture7RayCastEP15b2RayCastOutputRK14b2RayCastInputi(%class.b2Fixture* %20, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %21, i32 %22)
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %hit, align 1
  %25 = load i8* %hit, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %47

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.b2RayCastOutput* %output, i32 0, i32 1
  %29 = load float* %28, align 4
  store float %29, float* %fraction, align 4
  %30 = load float* %fraction, align 4
  %31 = fsub float 1.000000e+00, %30
  %32 = load %struct.b2RayCastInput** %3
  %33 = getelementptr inbounds %struct.b2RayCastInput* %32, i32 0, i32 0
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %31, %struct.b2Vec2* %33)
  %34 = load float* %fraction, align 4
  %35 = load %struct.b2RayCastInput** %3
  %36 = getelementptr inbounds %struct.b2RayCastInput* %35, i32 0, i32 1
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %34, %struct.b2Vec2* %36)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %point, %struct.b2Vec2* %5, %struct.b2Vec2* %6)
  %37 = getelementptr inbounds %struct.b2WorldRayCastWrapper* %7, i32 0, i32 1
  %38 = load %class.b2RayCastCallback** %37, align 4
  %39 = bitcast %class.b2RayCastCallback* %38 to float (%class.b2RayCastCallback*, %class.b2Fixture*, %struct.b2Vec2*, %struct.b2Vec2*, float)***
  %40 = load float (%class.b2RayCastCallback*, %class.b2Fixture*, %struct.b2Vec2*, %struct.b2Vec2*, float)*** %39
  %41 = getelementptr inbounds float (%class.b2RayCastCallback*, %class.b2Fixture*, %struct.b2Vec2*, %struct.b2Vec2*, float)** %40, i64 2
  %42 = load float (%class.b2RayCastCallback*, %class.b2Fixture*, %struct.b2Vec2*, %struct.b2Vec2*, float)** %41
  %43 = load %class.b2Fixture** %fixture, align 4
  %44 = getelementptr inbounds %struct.b2RayCastOutput* %output, i32 0, i32 0
  %45 = load float* %fraction, align 4
  %46 = call float %42(%class.b2RayCastCallback* %38, %class.b2Fixture* %43, %struct.b2Vec2* %point, %struct.b2Vec2* %44, float %45)
  store float %46, float* %1
  br label %51

; <label>:47                                      ; preds = %0
  %48 = load %struct.b2RayCastInput** %3
  %49 = getelementptr inbounds %struct.b2RayCastInput* %48, i32 0, i32 2
  %50 = load float* %49, align 4
  store float %50, float* %1
  br label %51

; <label>:51                                      ; preds = %47, %27
  %52 = load float* %1
  ret float %52
}

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  call void @_ZN15b2GrowableStackIiLi256EED2Ev(%class.b2GrowableStack* %2)
  ret void
}

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EED2Ev(%class.b2GrowableStack* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  %3 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 0
  %4 = load i32** %3, align 4
  %5 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 1
  %6 = getelementptr inbounds [256 x i32]* %5, i32 0, i32 0
  %7 = icmp ne i32* %4, %6
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 0
  %10 = load i32** %9, align 4
  %11 = bitcast i32* %10 to i8*
  call void @_Z6b2FreePv(i8* %11)
  %12 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 0
  store i32* null, i32** %12, align 4
  br label %13

; <label>:13                                      ; preds = %8, %0
  ret void
}

declare void @_Z6b2FreePv(i8*)

define linkonce_odr i8* @_ZNK12b2BroadPhase11GetUserDataEi(%class.b2BroadPhase* %this, i32 %proxyId) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  %6 = call i8* @_ZNK13b2DynamicTree11GetUserDataEi(%class.b2DynamicTree* %4, i32 %5)
  ret i8* %6
}

define linkonce_odr void @_ZN15b2RayCastOutputC1Ev(%struct.b2RayCastOutput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2RayCastOutput*, align 4
  store %struct.b2RayCastOutput* %this, %struct.b2RayCastOutput** %1, align 4
  %2 = load %struct.b2RayCastOutput** %1
  call void @_ZN15b2RayCastOutputC2Ev(%struct.b2RayCastOutput* %2)
  ret void
}

define linkonce_odr zeroext i1 @_ZNK9b2Fixture7RayCastEP15b2RayCastOutputRK14b2RayCastInputi(%class.b2Fixture* %this, %struct.b2RayCastOutput* %output, %struct.b2RayCastInput* %input, i32 %childIndex) inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %struct.b2RayCastOutput*, align 4
  %3 = alloca %struct.b2RayCastInput*, align 4
  %4 = alloca i32, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %struct.b2RayCastOutput* %output, %struct.b2RayCastOutput** %2, align 4
  store %struct.b2RayCastInput* %input, %struct.b2RayCastInput** %3, align 4
  store i32 %childIndex, i32* %4, align 4
  %5 = load %class.b2Fixture** %1
  %6 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 3
  %7 = load %class.b2Shape** %6, align 4
  %8 = bitcast %class.b2Shape* %7 to i1 (%class.b2Shape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)***
  %9 = load i1 (%class.b2Shape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)*** %8
  %10 = getelementptr inbounds i1 (%class.b2Shape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)** %9, i64 5
  %11 = load i1 (%class.b2Shape*, %struct.b2RayCastOutput*, %struct.b2RayCastInput*, %struct.b2Transform*, i32)** %10
  %12 = load %struct.b2RayCastOutput** %2, align 4
  %13 = load %struct.b2RayCastInput** %3
  %14 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 2
  %15 = load %class.b2Body** %14, align 4
  %16 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %15)
  %17 = load i32* %4, align 4
  %18 = call zeroext i1 %11(%class.b2Shape* %7, %struct.b2RayCastOutput* %12, %struct.b2RayCastInput* %13, %struct.b2Transform* %16, i32 %17)
  ret i1 %18
}

define linkonce_odr void @_ZN15b2RayCastOutputC2Ev(%struct.b2RayCastOutput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2RayCastOutput*, align 4
  store %struct.b2RayCastOutput* %this, %struct.b2RayCastOutput** %1, align 4
  %2 = load %struct.b2RayCastOutput** %1
  %3 = getelementptr inbounds %struct.b2RayCastOutput* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  ret void
}

define linkonce_odr i8* @_ZNK13b2DynamicTree11GetUserDataEi(%class.b2DynamicTree* %this, i32 %proxyId) nounwind inlinehint align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = load i32* %2, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6, %0
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str20, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree11GetUserDataEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %2, align 4
  %16 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %17 = load %struct.b2TreeNode** %16, align 4
  %18 = getelementptr inbounds %struct.b2TreeNode* %17, i32 %15
  %19 = getelementptr inbounds %struct.b2TreeNode* %18, i32 0, i32 1
  %20 = load i8** %19, align 4
  ret i8* %20
}

declare i8* @_Z7b2Alloci(i32)

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EEC2Ev(%class.b2GrowableStack* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  %3 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 1
  %4 = getelementptr inbounds [256 x i32]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 0
  store i32* %4, i32** %5, align 4
  %6 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %class.b2GrowableStack* %2, i32 0, i32 3
  store i32 256, i32* %7, align 4
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

define linkonce_odr void @_ZN6b2AABBC2Ev(%struct.b2AABB* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %2 = load %struct.b2AABB** %1
  %3 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
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

define linkonce_odr void @_ZNK13b2DynamicTree5QueryI19b2WorldQueryWrapperEEvPT_RK6b2AABB(%class.b2DynamicTree* %this, %struct.b2WorldQueryWrapper* %callback, %struct.b2AABB* %aabb) inlinehint align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca %struct.b2WorldQueryWrapper*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %stack = alloca %class.b2GrowableStack, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %nodeId = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %proceed = alloca i8, align 1
  %6 = alloca i32
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store %struct.b2WorldQueryWrapper* %callback, %struct.b2WorldQueryWrapper** %2, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %3, align 4
  %7 = load %class.b2DynamicTree** %1
  call void @_ZN15b2GrowableStackIiLi256EEC1Ev(%class.b2GrowableStack* %stack)
  %8 = getelementptr inbounds %class.b2DynamicTree* %7, i32 0, i32 0
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %8)
          to label %9 unwind label %20

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %58, %19, %9
  %11 = invoke i32 @_ZN15b2GrowableStackIiLi256EE8GetCountEv(%class.b2GrowableStack* %stack)
          to label %12 unwind label %20

; <label>:12                                      ; preds = %10
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %59

; <label>:14                                      ; preds = %12
  %15 = invoke i32 @_ZN15b2GrowableStackIiLi256EE3PopEv(%class.b2GrowableStack* %stack)
          to label %16 unwind label %20

; <label>:16                                      ; preds = %14
  store i32 %15, i32* %nodeId, align 4
  %17 = load i32* %nodeId, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %16
  br label %10

; <label>:20                                      ; preds = %53, %50, %38, %34, %24, %14, %10, %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %4
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %5
  invoke void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %stack)
          to label %62 unwind label %69

; <label>:24                                      ; preds = %16
  %25 = getelementptr inbounds %class.b2DynamicTree* %7, i32 0, i32 1
  %26 = load %struct.b2TreeNode** %25, align 4
  %27 = load i32* %nodeId, align 4
  %28 = getelementptr inbounds %struct.b2TreeNode* %26, i32 %27
  store %struct.b2TreeNode* %28, %struct.b2TreeNode** %node, align 4
  %29 = load %struct.b2TreeNode** %node, align 4
  %30 = getelementptr inbounds %struct.b2TreeNode* %29, i32 0, i32 0
  %31 = load %struct.b2AABB** %3
  %32 = invoke zeroext i1 @_Z13b2TestOverlapRK6b2AABBS1_(%struct.b2AABB* %30, %struct.b2AABB* %31)
          to label %33 unwind label %20

; <label>:33                                      ; preds = %24
  br i1 %32, label %34, label %58

; <label>:34                                      ; preds = %33
  %35 = load %struct.b2TreeNode** %node, align 4
  %36 = invoke zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %35)
          to label %37 unwind label %20

; <label>:37                                      ; preds = %34
  br i1 %36, label %38, label %50

; <label>:38                                      ; preds = %37
  %39 = load %struct.b2WorldQueryWrapper** %2, align 4
  %40 = load i32* %nodeId, align 4
  %41 = invoke zeroext i1 @_ZN19b2WorldQueryWrapper13QueryCallbackEi(%struct.b2WorldQueryWrapper* %39, i32 %40)
          to label %42 unwind label %20

; <label>:42                                      ; preds = %38
  %43 = zext i1 %41 to i8
  store i8 %43, i8* %proceed, align 1
  %44 = load i8* %proceed, align 1
  %45 = trunc i8 %44 to i1
  %46 = zext i1 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %42
  store i32 1, i32* %6
  br label %60

; <label>:49                                      ; preds = %42
  br label %57

; <label>:50                                      ; preds = %37
  %51 = load %struct.b2TreeNode** %node, align 4
  %52 = getelementptr inbounds %struct.b2TreeNode* %51, i32 0, i32 3
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %52)
          to label %53 unwind label %20

; <label>:53                                      ; preds = %50
  %54 = load %struct.b2TreeNode** %node, align 4
  %55 = getelementptr inbounds %struct.b2TreeNode* %54, i32 0, i32 4
  invoke void @_ZN15b2GrowableStackIiLi256EE4PushERKi(%class.b2GrowableStack* %stack, i32* %55)
          to label %56 unwind label %20

; <label>:56                                      ; preds = %53
  br label %57

; <label>:57                                      ; preds = %56, %49
  br label %58

; <label>:58                                      ; preds = %57, %33
  br label %10

; <label>:59                                      ; preds = %12
  store i32 0, i32* %6
  br label %60

; <label>:60                                      ; preds = %59, %48
  call void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %stack)
  %cleanup.dest = load i32* %6
  switch i32 %cleanup.dest, label %71 [
    i32 0, label %61
    i32 1, label %61
  ]

; <label>:61                                      ; preds = %60, %60
  ret void

; <label>:62                                      ; preds = %20
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i8** %4
  %65 = load i8** %4
  %66 = load i32* %5
  %67 = insertvalue { i8*, i32 } undef, i8* %65, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %66, 1
  resume { i8*, i32 } %68

; <label>:69                                      ; preds = %20
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable

; <label>:71                                      ; preds = %60
  unreachable
}

define linkonce_odr zeroext i1 @_ZN19b2WorldQueryWrapper13QueryCallbackEi(%struct.b2WorldQueryWrapper* %this, i32 %proxyId) align 2 {
  %1 = alloca %struct.b2WorldQueryWrapper*, align 4
  %2 = alloca i32, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  store %struct.b2WorldQueryWrapper* %this, %struct.b2WorldQueryWrapper** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %struct.b2WorldQueryWrapper** %1
  %4 = getelementptr inbounds %struct.b2WorldQueryWrapper* %3, i32 0, i32 0
  %5 = load %class.b2BroadPhase** %4, align 4
  %6 = load i32* %2, align 4
  %7 = call i8* @_ZNK12b2BroadPhase11GetUserDataEi(%class.b2BroadPhase* %5, i32 %6)
  %8 = bitcast i8* %7 to %struct.b2FixtureProxy*
  store %struct.b2FixtureProxy* %8, %struct.b2FixtureProxy** %proxy, align 4
  %9 = getelementptr inbounds %struct.b2WorldQueryWrapper* %3, i32 0, i32 1
  %10 = load %class.b2QueryCallback** %9, align 4
  %11 = bitcast %class.b2QueryCallback* %10 to i1 (%class.b2QueryCallback*, %class.b2Fixture*)***
  %12 = load i1 (%class.b2QueryCallback*, %class.b2Fixture*)*** %11
  %13 = getelementptr inbounds i1 (%class.b2QueryCallback*, %class.b2Fixture*)** %12, i64 2
  %14 = load i1 (%class.b2QueryCallback*, %class.b2Fixture*)** %13
  %15 = load %struct.b2FixtureProxy** %proxy, align 4
  %16 = getelementptr inbounds %struct.b2FixtureProxy* %15, i32 0, i32 1
  %17 = load %class.b2Fixture** %16, align 4
  %18 = call zeroext i1 %14(%class.b2QueryCallback* %10, %class.b2Fixture* %17)
  ret i1 %18
}

declare float @_ZNK13b2DynamicTree12GetAreaRatioEv(%class.b2DynamicTree*)

declare i32 @_ZNK13b2DynamicTree13GetMaxBalanceEv(%class.b2DynamicTree*)

declare i32 @_ZNK13b2DynamicTree9GetHeightEv(%class.b2DynamicTree*)

define linkonce_odr %struct.b2AABB* @_ZNK13b2DynamicTree10GetFatAABBEi(%class.b2DynamicTree* %this, i32 %proxyId) nounwind inlinehint align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %proxyId, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = load i32* %2, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6, %0
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str20, i32 0, i32 0), i32 159, i8* getelementptr inbounds ([53 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree10GetFatAABBEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %2, align 4
  %16 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %17 = load %struct.b2TreeNode** %16, align 4
  %18 = getelementptr inbounds %struct.b2TreeNode* %17, i32 %15
  %19 = getelementptr inbounds %struct.b2TreeNode* %18, i32 0, i32 0
  ret %struct.b2AABB* %19
}

define linkonce_odr void @_ZN7b2ColorC2Efff(%struct.b2Color* %this, float %r, float %g, float %b) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Color*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.b2Color* %this, %struct.b2Color** %1, align 4
  store float %r, float* %2, align 4
  store float %g, float* %3, align 4
  store float %b, float* %4, align 4
  %5 = load %struct.b2Color** %1
  %6 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 0
  %7 = load float* %2, align 4
  store float %7, float* %6, align 4
  %8 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 1
  %9 = load float* %3, align 4
  store float %9, float* %8, align 4
  %10 = getelementptr inbounds %struct.b2Color* %5, i32 0, i32 2
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

define linkonce_odr i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = getelementptr inbounds %class.b2Shape* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

define linkonce_odr void @_ZN14b2RayCastInputC2Ev(%struct.b2RayCastInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2RayCastInput*, align 4
  store %struct.b2RayCastInput* %this, %struct.b2RayCastInput** %1, align 4
  %2 = load %struct.b2RayCastInput** %1
  %3 = getelementptr inbounds %struct.b2RayCastInput* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2RayCastInput* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  ret void
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

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

define linkonce_odr void @_ZN10b2TOIInputC2Ev(%struct.b2TOIInput* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2TOIInput*, align 4
  store %struct.b2TOIInput* %this, %struct.b2TOIInput** %1, align 4
  %2 = load %struct.b2TOIInput** %1
  %3 = getelementptr inbounds %struct.b2TOIInput* %2, i32 0, i32 0
  call void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %3)
  %4 = getelementptr inbounds %struct.b2TOIInput* %2, i32 0, i32 1
  call void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %4)
  %5 = getelementptr inbounds %struct.b2TOIInput* %2, i32 0, i32 2
  call void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %5)
  %6 = getelementptr inbounds %struct.b2TOIInput* %2, i32 0, i32 3
  call void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %6)
  ret void
}

define linkonce_odr void @_ZN15b2DistanceProxyC1Ev(%struct.b2DistanceProxy* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  %2 = load %struct.b2DistanceProxy** %1
  call void @_ZN15b2DistanceProxyC2Ev(%struct.b2DistanceProxy* %2)
  ret void
}

define linkonce_odr void @_ZN7b2SweepC1Ev(%struct.b2Sweep* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Sweep*, align 4
  store %struct.b2Sweep* %this, %struct.b2Sweep** %1, align 4
  %2 = load %struct.b2Sweep** %1
  call void @_ZN7b2SweepC2Ev(%struct.b2Sweep* %2)
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

define linkonce_odr void @_ZN15b2DistanceProxyC2Ev(%struct.b2DistanceProxy* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2DistanceProxy*, align 4
  store %struct.b2DistanceProxy* %this, %struct.b2DistanceProxy** %1, align 4
  %2 = load %struct.b2DistanceProxy** %1
  %3 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 0
  %4 = getelementptr inbounds [2 x %struct.b2Vec2]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 2
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %struct.b2Vec2* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 1
  %9 = icmp eq %struct.b2Vec2* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 1
  store %struct.b2Vec2* null, %struct.b2Vec2** %11, align 4
  %12 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.b2DistanceProxy* %2, i32 0, i32 3
  store float 0.000000e+00, float* %13, align 4
  ret void
}

define linkonce_odr void @_ZN16b2ContactManagerD2Ev(%class.b2ContactManager* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  %2 = load %class.b2ContactManager** %1
  %3 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 0
  call void @_ZN12b2BroadPhaseD1Ev(%class.b2BroadPhase* %3)
  ret void
}

declare void @_ZN12b2BroadPhaseD1Ev(%class.b2BroadPhase*)

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
}
