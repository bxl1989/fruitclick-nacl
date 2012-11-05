; ModuleID = 'Dynamics/b2Fixture.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
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
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
%class.b2Joint = type opaque
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type opaque
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%struct.b2JointEdge = type opaque
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2FixtureDef = type { %class.b2Shape*, i8*, float, float, float, i8, %struct.b2Filter }
%class.b2CircleShape = type { %class.b2Shape, %struct.b2Vec2 }
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2PolygonShape = type { %class.b2Shape, %struct.b2Vec2, [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], i32 }
%class.b2ChainShape = type { %class.b2Shape, %struct.b2Vec2*, i32, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }

@.str = private unnamed_addr constant [18 x i8] c"m_proxyCount == 0\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Dynamics/b2Fixture.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Fixture7DestroyEP16b2BlockAllocator = private unnamed_addr constant [44 x i8] c"void b2Fixture::Destroy(b2BlockAllocator *)\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform = private unnamed_addr constant [67 x i8] c"void b2Fixture::CreateProxies(b2BroadPhase *, const b2Transform &)\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"    b2FixtureDef fd;\0A\00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"    fd.friction = %.15lef;\0A\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"    fd.restitution = %.15lef;\0A\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"    fd.density = %.15lef;\0A\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"    fd.isSensor = bool(%d);\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"    fd.filter.categoryBits = uint16(%d);\0A\00", align 1
@.str9 = private unnamed_addr constant [38 x i8] c"    fd.filter.maskBits = uint16(%d);\0A\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"    fd.filter.groupIndex = int16(%d);\0A\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"    b2CircleShape shape;\0A\00", align 1
@.str12 = private unnamed_addr constant [31 x i8] c"    shape.m_radius = %.15lef;\0A\00", align 1
@.str13 = private unnamed_addr constant [38 x i8] c"    shape.m_p.Set(%.15lef, %.15lef);\0A\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"    b2EdgeShape shape;\0A\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"    shape.m_vertex0.Set(%.15lef, %.15lef);\0A\00", align 1
@.str16 = private unnamed_addr constant [44 x i8] c"    shape.m_vertex1.Set(%.15lef, %.15lef);\0A\00", align 1
@.str17 = private unnamed_addr constant [44 x i8] c"    shape.m_vertex2.Set(%.15lef, %.15lef);\0A\00", align 1
@.str18 = private unnamed_addr constant [44 x i8] c"    shape.m_vertex3.Set(%.15lef, %.15lef);\0A\00", align 1
@.str19 = private unnamed_addr constant [36 x i8] c"    shape.m_hasVertex0 = bool(%d);\0A\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"    shape.m_hasVertex3 = bool(%d);\0A\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"    b2PolygonShape shape;\0A\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"    b2Vec2 vs[%d];\0A\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"    vs[%d].Set(%.15lef, %.15lef);\0A\00", align 1
@.str24 = private unnamed_addr constant [24 x i8] c"    shape.Set(vs, %d);\0A\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"    b2ChainShape shape;\0A\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"    shape.CreateChain(vs, %d);\0A\00", align 1
@.str27 = private unnamed_addr constant [47 x i8] c"    shape.m_prevVertex.Set(%.15lef, %.15lef);\0A\00", align 1
@.str28 = private unnamed_addr constant [47 x i8] c"    shape.m_nextVertex.Set(%.15lef, %.15lef);\0A\00", align 1
@.str29 = private unnamed_addr constant [39 x i8] c"    shape.m_hasPrevVertex = bool(%d);\0A\00", align 1
@.str30 = private unnamed_addr constant [39 x i8] c"    shape.m_hasNextVertex = bool(%d);\0A\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"    fd.shape = &shape;\0A\00", align 1
@.str33 = private unnamed_addr constant [37 x i8] c"    bodies[%d]->CreateFixture(&fd);\0A\00", align 1

@_ZN9b2FixtureC1Ev = alias void (%class.b2Fixture*)* @_ZN9b2FixtureC2Ev

define void @_ZN9b2FixtureC2Ev(%class.b2Fixture* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 8
  call void @_ZN8b2FilterC1Ev(%struct.b2Filter* %3)
  %4 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 10
  store i8* null, i8** %4, align 4
  %5 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  store %class.b2Body* null, %class.b2Body** %5, align 4
  %6 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 1
  store %class.b2Fixture* null, %class.b2Fixture** %6, align 4
  %7 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 6
  store %struct.b2FixtureProxy* null, %struct.b2FixtureProxy** %7, align 4
  %8 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 7
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  store %class.b2Shape* null, %class.b2Shape** %9, align 4
  %10 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 0
  store float 0.000000e+00, float* %10, align 4
  ret void
}

define linkonce_odr void @_ZN8b2FilterC1Ev(%struct.b2Filter* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Filter*, align 4
  store %struct.b2Filter* %this, %struct.b2Filter** %1, align 4
  %2 = load %struct.b2Filter** %1
  call void @_ZN8b2FilterC2Ev(%struct.b2Filter* %2)
  ret void
}

define void @_ZN9b2Fixture6CreateEP16b2BlockAllocatorP6b2BodyPK12b2FixtureDef(%class.b2Fixture* %this, %class.b2BlockAllocator* %allocator, %class.b2Body* %body, %struct.b2FixtureDef* %def) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %3 = alloca %class.b2Body*, align 4
  %4 = alloca %struct.b2FixtureDef*, align 4
  %childCount = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  store %class.b2Body* %body, %class.b2Body** %3, align 4
  store %struct.b2FixtureDef* %def, %struct.b2FixtureDef** %4, align 4
  %5 = load %class.b2Fixture** %1
  %6 = load %struct.b2FixtureDef** %4, align 4
  %7 = getelementptr inbounds %struct.b2FixtureDef* %6, i32 0, i32 1
  %8 = load i8** %7, align 4
  %9 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 10
  store i8* %8, i8** %9, align 4
  %10 = load %struct.b2FixtureDef** %4, align 4
  %11 = getelementptr inbounds %struct.b2FixtureDef* %10, i32 0, i32 2
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 4
  store float %12, float* %13, align 4
  %14 = load %struct.b2FixtureDef** %4, align 4
  %15 = getelementptr inbounds %struct.b2FixtureDef* %14, i32 0, i32 3
  %16 = load float* %15, align 4
  %17 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 5
  store float %16, float* %17, align 4
  %18 = load %class.b2Body** %3, align 4
  %19 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 2
  store %class.b2Body* %18, %class.b2Body** %19, align 4
  %20 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 1
  store %class.b2Fixture* null, %class.b2Fixture** %20, align 4
  %21 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 8
  %22 = load %struct.b2FixtureDef** %4, align 4
  %23 = getelementptr inbounds %struct.b2FixtureDef* %22, i32 0, i32 6
  %24 = bitcast %struct.b2Filter* %21 to i8*
  %25 = bitcast %struct.b2Filter* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 6, i32 2, i1 false)
  %26 = load %struct.b2FixtureDef** %4, align 4
  %27 = getelementptr inbounds %struct.b2FixtureDef* %26, i32 0, i32 5
  %28 = load i8* %27, align 1
  %29 = trunc i8 %28 to i1
  %30 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 9
  %31 = zext i1 %29 to i8
  store i8 %31, i8* %30, align 1
  %32 = load %struct.b2FixtureDef** %4, align 4
  %33 = getelementptr inbounds %struct.b2FixtureDef* %32, i32 0, i32 0
  %34 = load %class.b2Shape** %33, align 4
  %35 = bitcast %class.b2Shape* %34 to %class.b2Shape* (%class.b2Shape*, %class.b2BlockAllocator*)***
  %36 = load %class.b2Shape* (%class.b2Shape*, %class.b2BlockAllocator*)*** %35
  %37 = getelementptr inbounds %class.b2Shape* (%class.b2Shape*, %class.b2BlockAllocator*)** %36, i64 2
  %38 = load %class.b2Shape* (%class.b2Shape*, %class.b2BlockAllocator*)** %37
  %39 = load %class.b2BlockAllocator** %2, align 4
  %40 = call %class.b2Shape* %38(%class.b2Shape* %34, %class.b2BlockAllocator* %39)
  %41 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 3
  store %class.b2Shape* %40, %class.b2Shape** %41, align 4
  %42 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 3
  %43 = load %class.b2Shape** %42, align 4
  %44 = bitcast %class.b2Shape* %43 to i32 (%class.b2Shape*)***
  %45 = load i32 (%class.b2Shape*)*** %44
  %46 = getelementptr inbounds i32 (%class.b2Shape*)** %45, i64 3
  %47 = load i32 (%class.b2Shape*)** %46
  %48 = call i32 %47(%class.b2Shape* %43)
  store i32 %48, i32* %childCount, align 4
  %49 = load %class.b2BlockAllocator** %2, align 4
  %50 = load i32* %childCount, align 4
  %51 = mul i32 %50, 28
  %52 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %49, i32 %51)
  %53 = bitcast i8* %52 to %struct.b2FixtureProxy*
  %54 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 6
  store %struct.b2FixtureProxy* %53, %struct.b2FixtureProxy** %54, align 4
  store i32 0, i32* %i, align 4
  br label %55

; <label>:55                                      ; preds = %70, %0
  %56 = load i32* %i, align 4
  %57 = load i32* %childCount, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %55
  %60 = load i32* %i, align 4
  %61 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 6
  %62 = load %struct.b2FixtureProxy** %61, align 4
  %63 = getelementptr inbounds %struct.b2FixtureProxy* %62, i32 %60
  %64 = getelementptr inbounds %struct.b2FixtureProxy* %63, i32 0, i32 1
  store %class.b2Fixture* null, %class.b2Fixture** %64, align 4
  %65 = load i32* %i, align 4
  %66 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 6
  %67 = load %struct.b2FixtureProxy** %66, align 4
  %68 = getelementptr inbounds %struct.b2FixtureProxy* %67, i32 %65
  %69 = getelementptr inbounds %struct.b2FixtureProxy* %68, i32 0, i32 3
  store i32 -1, i32* %69, align 4
  br label %70

; <label>:70                                      ; preds = %59
  %71 = load i32* %i, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %i, align 4
  br label %55

; <label>:73                                      ; preds = %55
  %74 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 7
  store i32 0, i32* %74, align 4
  %75 = load %struct.b2FixtureDef** %4, align 4
  %76 = getelementptr inbounds %struct.b2FixtureDef* %75, i32 0, i32 4
  %77 = load float* %76, align 4
  %78 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 0
  store float %77, float* %78, align 4
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define void @_ZN9b2Fixture7DestroyEP16b2BlockAllocator(%class.b2Fixture* %this, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %childCount = alloca i32, align 4
  %s = alloca %class.b2CircleShape*, align 4
  %s1 = alloca %class.b2EdgeShape*, align 4
  %s2 = alloca %class.b2PolygonShape*, align 4
  %s3 = alloca %class.b2ChainShape*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2Fixture** %1
  %4 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 7
  %5 = load i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 72, i8* getelementptr inbounds ([44 x i8]* @__PRETTY_FUNCTION__._ZN9b2Fixture7DestroyEP16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %12 = load %class.b2Shape** %11, align 4
  %13 = bitcast %class.b2Shape* %12 to i32 (%class.b2Shape*)***
  %14 = load i32 (%class.b2Shape*)*** %13
  %15 = getelementptr inbounds i32 (%class.b2Shape*)** %14, i64 3
  %16 = load i32 (%class.b2Shape*)** %15
  %17 = call i32 %16(%class.b2Shape* %12)
  store i32 %17, i32* %childCount, align 4
  %18 = load %class.b2BlockAllocator** %2, align 4
  %19 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 6
  %20 = load %struct.b2FixtureProxy** %19, align 4
  %21 = bitcast %struct.b2FixtureProxy* %20 to i8*
  %22 = load i32* %childCount, align 4
  %23 = mul i32 %22, 28
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %18, i8* %21, i32 %23)
  %24 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 6
  store %struct.b2FixtureProxy* null, %struct.b2FixtureProxy** %24, align 4
  %25 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %26 = load %class.b2Shape** %25, align 4
  %27 = getelementptr inbounds %class.b2Shape* %26, i32 0, i32 1
  %28 = load i32* %27, align 4
  switch i32 %28, label %77 [
    i32 0, label %29
    i32 1, label %41
    i32 2, label %53
    i32 3, label %65
  ]

; <label>:29                                      ; preds = %10
  %30 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %31 = load %class.b2Shape** %30, align 4
  %32 = bitcast %class.b2Shape* %31 to %class.b2CircleShape*
  store %class.b2CircleShape* %32, %class.b2CircleShape** %s, align 4
  %33 = load %class.b2CircleShape** %s, align 4
  %34 = bitcast %class.b2CircleShape* %33 to void (%class.b2CircleShape*)***
  %35 = load void (%class.b2CircleShape*)*** %34
  %36 = getelementptr inbounds void (%class.b2CircleShape*)** %35, i64 0
  %37 = load void (%class.b2CircleShape*)** %36
  call void %37(%class.b2CircleShape* %33)
  %38 = load %class.b2BlockAllocator** %2, align 4
  %39 = load %class.b2CircleShape** %s, align 4
  %40 = bitcast %class.b2CircleShape* %39 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %38, i8* %40, i32 20)
  br label %78

; <label>:41                                      ; preds = %10
  %42 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %43 = load %class.b2Shape** %42, align 4
  %44 = bitcast %class.b2Shape* %43 to %class.b2EdgeShape*
  store %class.b2EdgeShape* %44, %class.b2EdgeShape** %s1, align 4
  %45 = load %class.b2EdgeShape** %s1, align 4
  %46 = bitcast %class.b2EdgeShape* %45 to void (%class.b2EdgeShape*)***
  %47 = load void (%class.b2EdgeShape*)*** %46
  %48 = getelementptr inbounds void (%class.b2EdgeShape*)** %47, i64 0
  %49 = load void (%class.b2EdgeShape*)** %48
  call void %49(%class.b2EdgeShape* %45)
  %50 = load %class.b2BlockAllocator** %2, align 4
  %51 = load %class.b2EdgeShape** %s1, align 4
  %52 = bitcast %class.b2EdgeShape* %51 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %50, i8* %52, i32 48)
  br label %78

; <label>:53                                      ; preds = %10
  %54 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %55 = load %class.b2Shape** %54, align 4
  %56 = bitcast %class.b2Shape* %55 to %class.b2PolygonShape*
  store %class.b2PolygonShape* %56, %class.b2PolygonShape** %s2, align 4
  %57 = load %class.b2PolygonShape** %s2, align 4
  %58 = bitcast %class.b2PolygonShape* %57 to void (%class.b2PolygonShape*)***
  %59 = load void (%class.b2PolygonShape*)*** %58
  %60 = getelementptr inbounds void (%class.b2PolygonShape*)** %59, i64 0
  %61 = load void (%class.b2PolygonShape*)** %60
  call void %61(%class.b2PolygonShape* %57)
  %62 = load %class.b2BlockAllocator** %2, align 4
  %63 = load %class.b2PolygonShape** %s2, align 4
  %64 = bitcast %class.b2PolygonShape* %63 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %62, i8* %64, i32 152)
  br label %78

; <label>:65                                      ; preds = %10
  %66 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %67 = load %class.b2Shape** %66, align 4
  %68 = bitcast %class.b2Shape* %67 to %class.b2ChainShape*
  store %class.b2ChainShape* %68, %class.b2ChainShape** %s3, align 4
  %69 = load %class.b2ChainShape** %s3, align 4
  %70 = bitcast %class.b2ChainShape* %69 to void (%class.b2ChainShape*)***
  %71 = load void (%class.b2ChainShape*)*** %70
  %72 = getelementptr inbounds void (%class.b2ChainShape*)** %71, i64 0
  %73 = load void (%class.b2ChainShape*)** %72
  call void %73(%class.b2ChainShape* %69)
  %74 = load %class.b2BlockAllocator** %2, align 4
  %75 = load %class.b2ChainShape** %s3, align 4
  %76 = bitcast %class.b2ChainShape* %75 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %74, i8* %76, i32 40)
  br label %78

; <label>:77                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([44 x i8]* @__PRETTY_FUNCTION__._ZN9b2Fixture7DestroyEP16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:78                                      ; preds = %65, %53, %41, %29
  %79 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  store %class.b2Shape* null, %class.b2Shape** %79, align 4
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

define void @_ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform(%class.b2Fixture* %this, %class.b2BroadPhase* %broadPhase, %struct.b2Transform* %xf) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2BroadPhase*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %i = alloca i32, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %class.b2BroadPhase* %broadPhase, %class.b2BroadPhase** %2, align 4
  store %struct.b2Transform* %xf, %struct.b2Transform** %3, align 4
  %4 = load %class.b2Fixture** %1
  %5 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 7
  %6 = load i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__._ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 3
  %13 = load %class.b2Shape** %12, align 4
  %14 = bitcast %class.b2Shape* %13 to i32 (%class.b2Shape*)***
  %15 = load i32 (%class.b2Shape*)*** %14
  %16 = getelementptr inbounds i32 (%class.b2Shape*)** %15, i64 3
  %17 = load i32 (%class.b2Shape*)** %16
  %18 = call i32 %17(%class.b2Shape* %13)
  %19 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 7
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %i, align 4
  br label %20

; <label>:20                                      ; preds = %53, %11
  %21 = load i32* %i, align 4
  %22 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 7
  %23 = load i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %56

; <label>:25                                      ; preds = %20
  %26 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 6
  %27 = load %struct.b2FixtureProxy** %26, align 4
  %28 = load i32* %i, align 4
  %29 = getelementptr inbounds %struct.b2FixtureProxy* %27, i32 %28
  store %struct.b2FixtureProxy* %29, %struct.b2FixtureProxy** %proxy, align 4
  %30 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 3
  %31 = load %class.b2Shape** %30, align 4
  %32 = bitcast %class.b2Shape* %31 to void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)***
  %33 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)*** %32
  %34 = getelementptr inbounds void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %33, i64 6
  %35 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %34
  %36 = load %struct.b2FixtureProxy** %proxy, align 4
  %37 = getelementptr inbounds %struct.b2FixtureProxy* %36, i32 0, i32 0
  %38 = load %struct.b2Transform** %3
  %39 = load i32* %i, align 4
  call void %35(%class.b2Shape* %31, %struct.b2AABB* %37, %struct.b2Transform* %38, i32 %39)
  %40 = load %class.b2BroadPhase** %2, align 4
  %41 = load %struct.b2FixtureProxy** %proxy, align 4
  %42 = getelementptr inbounds %struct.b2FixtureProxy* %41, i32 0, i32 0
  %43 = load %struct.b2FixtureProxy** %proxy, align 4
  %44 = bitcast %struct.b2FixtureProxy* %43 to i8*
  %45 = call i32 @_ZN12b2BroadPhase11CreateProxyERK6b2AABBPv(%class.b2BroadPhase* %40, %struct.b2AABB* %42, i8* %44)
  %46 = load %struct.b2FixtureProxy** %proxy, align 4
  %47 = getelementptr inbounds %struct.b2FixtureProxy* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.b2FixtureProxy** %proxy, align 4
  %49 = getelementptr inbounds %struct.b2FixtureProxy* %48, i32 0, i32 1
  store %class.b2Fixture* %4, %class.b2Fixture** %49, align 4
  %50 = load i32* %i, align 4
  %51 = load %struct.b2FixtureProxy** %proxy, align 4
  %52 = getelementptr inbounds %struct.b2FixtureProxy* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

; <label>:53                                      ; preds = %25
  %54 = load i32* %i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %i, align 4
  br label %20

; <label>:56                                      ; preds = %20
  ret void
}

declare i32 @_ZN12b2BroadPhase11CreateProxyERK6b2AABBPv(%class.b2BroadPhase*, %struct.b2AABB*, i8*)

define void @_ZN9b2Fixture14DestroyProxiesEP12b2BroadPhase(%class.b2Fixture* %this, %class.b2BroadPhase* %broadPhase) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2BroadPhase*, align 4
  %i = alloca i32, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %class.b2BroadPhase* %broadPhase, %class.b2BroadPhase** %2, align 4
  %3 = load %class.b2Fixture** %1
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %20, %0
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 7
  %7 = load i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 6
  %11 = load %struct.b2FixtureProxy** %10, align 4
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds %struct.b2FixtureProxy* %11, i32 %12
  store %struct.b2FixtureProxy* %13, %struct.b2FixtureProxy** %proxy, align 4
  %14 = load %class.b2BroadPhase** %2, align 4
  %15 = load %struct.b2FixtureProxy** %proxy, align 4
  %16 = getelementptr inbounds %struct.b2FixtureProxy* %15, i32 0, i32 3
  %17 = load i32* %16, align 4
  call void @_ZN12b2BroadPhase12DestroyProxyEi(%class.b2BroadPhase* %14, i32 %17)
  %18 = load %struct.b2FixtureProxy** %proxy, align 4
  %19 = getelementptr inbounds %struct.b2FixtureProxy* %18, i32 0, i32 3
  store i32 -1, i32* %19, align 4
  br label %20

; <label>:20                                      ; preds = %9
  %21 = load i32* %i, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %4

; <label>:23                                      ; preds = %4
  %24 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 7
  store i32 0, i32* %24, align 4
  ret void
}

declare void @_ZN12b2BroadPhase12DestroyProxyEi(%class.b2BroadPhase*, i32)

define void @_ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_(%class.b2Fixture* %this, %class.b2BroadPhase* %broadPhase, %struct.b2Transform* %transform1, %struct.b2Transform* %transform2) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %class.b2BroadPhase*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %i = alloca i32, align 4
  %proxy = alloca %struct.b2FixtureProxy*, align 4
  %aabb1 = alloca %struct.b2AABB, align 4
  %aabb2 = alloca %struct.b2AABB, align 4
  %displacement = alloca %struct.b2Vec2, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %class.b2BroadPhase* %broadPhase, %class.b2BroadPhase** %2, align 4
  store %struct.b2Transform* %transform1, %struct.b2Transform** %3, align 4
  store %struct.b2Transform* %transform2, %struct.b2Transform** %4, align 4
  %5 = load %class.b2Fixture** %1
  %6 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 7
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %56

; <label>:10                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %53, %10
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 7
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %56

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 6
  %18 = load %struct.b2FixtureProxy** %17, align 4
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %struct.b2FixtureProxy* %18, i32 %19
  store %struct.b2FixtureProxy* %20, %struct.b2FixtureProxy** %proxy, align 4
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb1)
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb2)
  %21 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 3
  %22 = load %class.b2Shape** %21, align 4
  %23 = bitcast %class.b2Shape* %22 to void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)***
  %24 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)*** %23
  %25 = getelementptr inbounds void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %24, i64 6
  %26 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %25
  %27 = load %struct.b2Transform** %3
  %28 = load %struct.b2FixtureProxy** %proxy, align 4
  %29 = getelementptr inbounds %struct.b2FixtureProxy* %28, i32 0, i32 2
  %30 = load i32* %29, align 4
  call void %26(%class.b2Shape* %22, %struct.b2AABB* %aabb1, %struct.b2Transform* %27, i32 %30)
  %31 = getelementptr inbounds %class.b2Fixture* %5, i32 0, i32 3
  %32 = load %class.b2Shape** %31, align 4
  %33 = bitcast %class.b2Shape* %32 to void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)***
  %34 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)*** %33
  %35 = getelementptr inbounds void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %34, i64 6
  %36 = load void (%class.b2Shape*, %struct.b2AABB*, %struct.b2Transform*, i32)** %35
  %37 = load %struct.b2Transform** %4
  %38 = load %struct.b2FixtureProxy** %proxy, align 4
  %39 = getelementptr inbounds %struct.b2FixtureProxy* %38, i32 0, i32 2
  %40 = load i32* %39, align 4
  call void %36(%class.b2Shape* %32, %struct.b2AABB* %aabb2, %struct.b2Transform* %37, i32 %40)
  %41 = load %struct.b2FixtureProxy** %proxy, align 4
  %42 = getelementptr inbounds %struct.b2FixtureProxy* %41, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %42, %struct.b2AABB* %aabb1, %struct.b2AABB* %aabb2)
  %43 = load %struct.b2Transform** %4
  %44 = getelementptr inbounds %struct.b2Transform* %43, i32 0, i32 0
  %45 = load %struct.b2Transform** %3
  %46 = getelementptr inbounds %struct.b2Transform* %45, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %displacement, %struct.b2Vec2* %44, %struct.b2Vec2* %46)
  %47 = load %class.b2BroadPhase** %2, align 4
  %48 = load %struct.b2FixtureProxy** %proxy, align 4
  %49 = getelementptr inbounds %struct.b2FixtureProxy* %48, i32 0, i32 3
  %50 = load i32* %49, align 4
  %51 = load %struct.b2FixtureProxy** %proxy, align 4
  %52 = getelementptr inbounds %struct.b2FixtureProxy* %51, i32 0, i32 0
  call void @_ZN12b2BroadPhase9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2BroadPhase* %47, i32 %50, %struct.b2AABB* %52, %struct.b2Vec2* %displacement)
  br label %53

; <label>:53                                      ; preds = %16
  %54 = load i32* %i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %i, align 4
  br label %11

; <label>:56                                      ; preds = %9, %11
  ret void
}

define linkonce_odr void @_ZN6b2AABBC1Ev(%struct.b2AABB* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %2 = load %struct.b2AABB** %1
  call void @_ZN6b2AABBC2Ev(%struct.b2AABB* %2)
  ret void
}

define linkonce_odr void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %this, %struct.b2AABB* %aabb1, %struct.b2AABB* %aabb2) align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  store %struct.b2AABB* %aabb1, %struct.b2AABB** %2, align 4
  store %struct.b2AABB* %aabb2, %struct.b2AABB** %3, align 4
  %6 = load %struct.b2AABB** %1
  %7 = getelementptr inbounds %struct.b2AABB* %6, i32 0, i32 0
  %8 = load %struct.b2AABB** %2
  %9 = getelementptr inbounds %struct.b2AABB* %8, i32 0, i32 0
  %10 = load %struct.b2AABB** %3
  %11 = getelementptr inbounds %struct.b2AABB* %10, i32 0, i32 0
  call void @_Z5b2MinRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %9, %struct.b2Vec2* %11)
  %12 = bitcast %struct.b2Vec2* %7 to i8*
  %13 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  %14 = getelementptr inbounds %struct.b2AABB* %6, i32 0, i32 1
  %15 = load %struct.b2AABB** %2
  %16 = getelementptr inbounds %struct.b2AABB* %15, i32 0, i32 1
  %17 = load %struct.b2AABB** %3
  %18 = getelementptr inbounds %struct.b2AABB* %17, i32 0, i32 1
  call void @_Z5b2MaxRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %16, %struct.b2Vec2* %18)
  %19 = bitcast %struct.b2Vec2* %14 to i8*
  %20 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
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

declare void @_ZN12b2BroadPhase9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2BroadPhase*, i32, %struct.b2AABB*, %struct.b2Vec2*)

define void @_ZN9b2Fixture13SetFilterDataERK8b2Filter(%class.b2Fixture* %this, %struct.b2Filter* %filter) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca %struct.b2Filter*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store %struct.b2Filter* %filter, %struct.b2Filter** %2, align 4
  %3 = load %class.b2Fixture** %1
  %4 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 8
  %5 = load %struct.b2Filter** %2
  %6 = bitcast %struct.b2Filter* %4 to i8*
  %7 = bitcast %struct.b2Filter* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 6, i32 2, i1 false)
  call void @_ZN9b2Fixture8RefilterEv(%class.b2Fixture* %3)
  ret void
}

define void @_ZN9b2Fixture8RefilterEv(%class.b2Fixture* %this) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %edge = alloca %struct.b2ContactEdge*, align 4
  %contact = alloca %class.b2Contact*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %world = alloca %class.b2World*, align 4
  %broadPhase = alloca %class.b2BroadPhase*, align 4
  %i = alloca i32, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %4 = load %class.b2Body** %3, align 4
  %5 = icmp eq %class.b2Body* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %60

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %9 = load %class.b2Body** %8, align 4
  %10 = call %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %9)
  store %struct.b2ContactEdge* %10, %struct.b2ContactEdge** %edge, align 4
  br label %11

; <label>:11                                      ; preds = %29, %7
  %12 = load %struct.b2ContactEdge** %edge, align 4
  %13 = icmp ne %struct.b2ContactEdge* %12, null
  br i1 %13, label %14, label %33

; <label>:14                                      ; preds = %11
  %15 = load %struct.b2ContactEdge** %edge, align 4
  %16 = getelementptr inbounds %struct.b2ContactEdge* %15, i32 0, i32 1
  %17 = load %class.b2Contact** %16, align 4
  store %class.b2Contact* %17, %class.b2Contact** %contact, align 4
  %18 = load %class.b2Contact** %contact, align 4
  %19 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %18)
  store %class.b2Fixture* %19, %class.b2Fixture** %fixtureA, align 4
  %20 = load %class.b2Contact** %contact, align 4
  %21 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %20)
  store %class.b2Fixture* %21, %class.b2Fixture** %fixtureB, align 4
  %22 = load %class.b2Fixture** %fixtureA, align 4
  %23 = icmp eq %class.b2Fixture* %22, %2
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %14
  %25 = load %class.b2Fixture** %fixtureB, align 4
  %26 = icmp eq %class.b2Fixture* %25, %2
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24, %14
  %28 = load %class.b2Contact** %contact, align 4
  call void @_ZN9b2Contact16FlagForFilteringEv(%class.b2Contact* %28)
  br label %29

; <label>:29                                      ; preds = %27, %24
  %30 = load %struct.b2ContactEdge** %edge, align 4
  %31 = getelementptr inbounds %struct.b2ContactEdge* %30, i32 0, i32 3
  %32 = load %struct.b2ContactEdge** %31, align 4
  store %struct.b2ContactEdge* %32, %struct.b2ContactEdge** %edge, align 4
  br label %11

; <label>:33                                      ; preds = %11
  %34 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %35 = load %class.b2Body** %34, align 4
  %36 = call %class.b2World* @_ZN6b2Body8GetWorldEv(%class.b2Body* %35)
  store %class.b2World* %36, %class.b2World** %world, align 4
  %37 = load %class.b2World** %world, align 4
  %38 = icmp eq %class.b2World* %37, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %33
  br label %60

; <label>:40                                      ; preds = %33
  %41 = load %class.b2World** %world, align 4
  %42 = getelementptr inbounds %class.b2World* %41, i32 0, i32 3
  %43 = getelementptr inbounds %class.b2ContactManager* %42, i32 0, i32 0
  store %class.b2BroadPhase* %43, %class.b2BroadPhase** %broadPhase, align 4
  store i32 0, i32* %i, align 4
  br label %44

; <label>:44                                      ; preds = %57, %40
  %45 = load i32* %i, align 4
  %46 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 7
  %47 = load i32* %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %60

; <label>:49                                      ; preds = %44
  %50 = load %class.b2BroadPhase** %broadPhase, align 4
  %51 = load i32* %i, align 4
  %52 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 6
  %53 = load %struct.b2FixtureProxy** %52, align 4
  %54 = getelementptr inbounds %struct.b2FixtureProxy* %53, i32 %51
  %55 = getelementptr inbounds %struct.b2FixtureProxy* %54, i32 0, i32 3
  %56 = load i32* %55, align 4
  call void @_ZN12b2BroadPhase10TouchProxyEi(%class.b2BroadPhase* %50, i32 %56)
  br label %57

; <label>:57                                      ; preds = %49
  %58 = load i32* %i, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i, align 4
  br label %44

; <label>:60                                      ; preds = %6, %39, %44
  ret void
}

define linkonce_odr %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 15
  %4 = load %struct.b2ContactEdge** %3, align 4
  ret %struct.b2ContactEdge* %4
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

define linkonce_odr %class.b2World* @_ZN6b2Body8GetWorldEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 9
  %4 = load %class.b2World** %3, align 4
  ret %class.b2World* %4
}

declare void @_ZN12b2BroadPhase10TouchProxyEi(%class.b2BroadPhase*, i32)

define void @_ZN9b2Fixture9SetSensorEb(%class.b2Fixture* %this, i1 zeroext %sensor) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca i8, align 1
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %3 = zext i1 %sensor to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.b2Fixture** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 9
  %9 = load i8* %8, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 2
  %15 = load %class.b2Body** %14, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %15, i1 zeroext true)
  %16 = load i8* %2, align 1
  %17 = trunc i8 %16 to i1
  %18 = getelementptr inbounds %class.b2Fixture* %4, i32 0, i32 9
  %19 = zext i1 %17 to i8
  store i8 %19, i8* %18, align 1
  br label %20

; <label>:20                                      ; preds = %13, %0
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

define void @_ZN9b2Fixture4DumpEi(%class.b2Fixture* %this, i32 %bodyIndex) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca i32, align 4
  %s = alloca %class.b2CircleShape*, align 4
  %s1 = alloca %class.b2EdgeShape*, align 4
  %s2 = alloca %class.b2PolygonShape*, align 4
  %i = alloca i32, align 4
  %s3 = alloca %class.b2ChainShape*, align 4
  %i4 = alloca i32, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  store i32 %bodyIndex, i32* %2, align 4
  %3 = load %class.b2Fixture** %1
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0))
  %4 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 4
  %5 = load float* %4, align 4
  %6 = fpext float %5 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0), double %6)
  %7 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 5
  %8 = load float* %7, align 4
  %9 = fpext float %8 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([31 x i8]* @.str5, i32 0, i32 0), double %9)
  %10 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 0
  %11 = load float* %10, align 4
  %12 = fpext float %11 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0), double %12)
  %13 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 9
  %14 = load i8* %13, align 1
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0), i32 %16)
  %17 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 8
  %18 = getelementptr inbounds %struct.b2Filter* %17, i32 0, i32 0
  %19 = load i16* %18, align 2
  %20 = zext i16 %19 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([42 x i8]* @.str8, i32 0, i32 0), i32 %20)
  %21 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 8
  %22 = getelementptr inbounds %struct.b2Filter* %21, i32 0, i32 1
  %23 = load i16* %22, align 2
  %24 = zext i16 %23 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([38 x i8]* @.str9, i32 0, i32 0), i32 %24)
  %25 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 8
  %26 = getelementptr inbounds %struct.b2Filter* %25, i32 0, i32 2
  %27 = load i16* %26, align 2
  %28 = sext i16 %27 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([39 x i8]* @.str10, i32 0, i32 0), i32 %28)
  %29 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %30 = load %class.b2Shape** %29, align 4
  %31 = getelementptr inbounds %class.b2Shape* %30, i32 0, i32 1
  %32 = load i32* %31, align 4
  switch i32 %32, label %212 [
    i32 0, label %33
    i32 1, label %52
    i32 2, label %111
    i32 3, label %144
  ]

; <label>:33                                      ; preds = %0
  %34 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %35 = load %class.b2Shape** %34, align 4
  %36 = bitcast %class.b2Shape* %35 to %class.b2CircleShape*
  store %class.b2CircleShape* %36, %class.b2CircleShape** %s, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([26 x i8]* @.str11, i32 0, i32 0))
  %37 = load %class.b2CircleShape** %s, align 4
  %38 = bitcast %class.b2CircleShape* %37 to %class.b2Shape*
  %39 = getelementptr inbounds %class.b2Shape* %38, i32 0, i32 2
  %40 = load float* %39, align 4
  %41 = fpext float %40 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([31 x i8]* @.str12, i32 0, i32 0), double %41)
  %42 = load %class.b2CircleShape** %s, align 4
  %43 = getelementptr inbounds %class.b2CircleShape* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.b2Vec2* %43, i32 0, i32 0
  %45 = load float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load %class.b2CircleShape** %s, align 4
  %48 = getelementptr inbounds %class.b2CircleShape* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.b2Vec2* %48, i32 0, i32 1
  %50 = load float* %49, align 4
  %51 = fpext float %50 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([38 x i8]* @.str13, i32 0, i32 0), double %46, double %51)
  br label %213

; <label>:52                                      ; preds = %0
  %53 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %54 = load %class.b2Shape** %53, align 4
  %55 = bitcast %class.b2Shape* %54 to %class.b2EdgeShape*
  store %class.b2EdgeShape* %55, %class.b2EdgeShape** %s1, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str14, i32 0, i32 0))
  %56 = load %class.b2EdgeShape** %s1, align 4
  %57 = bitcast %class.b2EdgeShape* %56 to %class.b2Shape*
  %58 = getelementptr inbounds %class.b2Shape* %57, i32 0, i32 2
  %59 = load float* %58, align 4
  %60 = fpext float %59 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([31 x i8]* @.str12, i32 0, i32 0), double %60)
  %61 = load %class.b2EdgeShape** %s1, align 4
  %62 = getelementptr inbounds %class.b2EdgeShape* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.b2Vec2* %62, i32 0, i32 0
  %64 = load float* %63, align 4
  %65 = fpext float %64 to double
  %66 = load %class.b2EdgeShape** %s1, align 4
  %67 = getelementptr inbounds %class.b2EdgeShape* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.b2Vec2* %67, i32 0, i32 1
  %69 = load float* %68, align 4
  %70 = fpext float %69 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([44 x i8]* @.str15, i32 0, i32 0), double %65, double %70)
  %71 = load %class.b2EdgeShape** %s1, align 4
  %72 = getelementptr inbounds %class.b2EdgeShape* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.b2Vec2* %72, i32 0, i32 0
  %74 = load float* %73, align 4
  %75 = fpext float %74 to double
  %76 = load %class.b2EdgeShape** %s1, align 4
  %77 = getelementptr inbounds %class.b2EdgeShape* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.b2Vec2* %77, i32 0, i32 1
  %79 = load float* %78, align 4
  %80 = fpext float %79 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([44 x i8]* @.str16, i32 0, i32 0), double %75, double %80)
  %81 = load %class.b2EdgeShape** %s1, align 4
  %82 = getelementptr inbounds %class.b2EdgeShape* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.b2Vec2* %82, i32 0, i32 0
  %84 = load float* %83, align 4
  %85 = fpext float %84 to double
  %86 = load %class.b2EdgeShape** %s1, align 4
  %87 = getelementptr inbounds %class.b2EdgeShape* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.b2Vec2* %87, i32 0, i32 1
  %89 = load float* %88, align 4
  %90 = fpext float %89 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([44 x i8]* @.str17, i32 0, i32 0), double %85, double %90)
  %91 = load %class.b2EdgeShape** %s1, align 4
  %92 = getelementptr inbounds %class.b2EdgeShape* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.b2Vec2* %92, i32 0, i32 0
  %94 = load float* %93, align 4
  %95 = fpext float %94 to double
  %96 = load %class.b2EdgeShape** %s1, align 4
  %97 = getelementptr inbounds %class.b2EdgeShape* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.b2Vec2* %97, i32 0, i32 1
  %99 = load float* %98, align 4
  %100 = fpext float %99 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([44 x i8]* @.str18, i32 0, i32 0), double %95, double %100)
  %101 = load %class.b2EdgeShape** %s1, align 4
  %102 = getelementptr inbounds %class.b2EdgeShape* %101, i32 0, i32 5
  %103 = load i8* %102, align 1
  %104 = trunc i8 %103 to i1
  %105 = zext i1 %104 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([36 x i8]* @.str19, i32 0, i32 0), i32 %105)
  %106 = load %class.b2EdgeShape** %s1, align 4
  %107 = getelementptr inbounds %class.b2EdgeShape* %106, i32 0, i32 6
  %108 = load i8* %107, align 1
  %109 = trunc i8 %108 to i1
  %110 = zext i1 %109 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([36 x i8]* @.str20, i32 0, i32 0), i32 %110)
  br label %213

; <label>:111                                     ; preds = %0
  %112 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %113 = load %class.b2Shape** %112, align 4
  %114 = bitcast %class.b2Shape* %113 to %class.b2PolygonShape*
  store %class.b2PolygonShape* %114, %class.b2PolygonShape** %s2, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([27 x i8]* @.str21, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([20 x i8]* @.str22, i32 0, i32 0), i32 8)
  store i32 0, i32* %i, align 4
  br label %115

; <label>:115                                     ; preds = %137, %111
  %116 = load i32* %i, align 4
  %117 = load %class.b2PolygonShape** %s2, align 4
  %118 = getelementptr inbounds %class.b2PolygonShape* %117, i32 0, i32 4
  %119 = load i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %140

; <label>:121                                     ; preds = %115
  %122 = load i32* %i, align 4
  %123 = load i32* %i, align 4
  %124 = load %class.b2PolygonShape** %s2, align 4
  %125 = getelementptr inbounds %class.b2PolygonShape* %124, i32 0, i32 2
  %126 = getelementptr inbounds [8 x %struct.b2Vec2]* %125, i32 0, i32 %123
  %127 = getelementptr inbounds %struct.b2Vec2* %126, i32 0, i32 0
  %128 = load float* %127, align 4
  %129 = fpext float %128 to double
  %130 = load i32* %i, align 4
  %131 = load %class.b2PolygonShape** %s2, align 4
  %132 = getelementptr inbounds %class.b2PolygonShape* %131, i32 0, i32 2
  %133 = getelementptr inbounds [8 x %struct.b2Vec2]* %132, i32 0, i32 %130
  %134 = getelementptr inbounds %struct.b2Vec2* %133, i32 0, i32 1
  %135 = load float* %134, align 4
  %136 = fpext float %135 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str23, i32 0, i32 0), i32 %122, double %129, double %136)
  br label %137

; <label>:137                                     ; preds = %121
  %138 = load i32* %i, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %i, align 4
  br label %115

; <label>:140                                     ; preds = %115
  %141 = load %class.b2PolygonShape** %s2, align 4
  %142 = getelementptr inbounds %class.b2PolygonShape* %141, i32 0, i32 4
  %143 = load i32* %142, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str24, i32 0, i32 0), i32 %143)
  br label %213

; <label>:144                                     ; preds = %0
  %145 = getelementptr inbounds %class.b2Fixture* %3, i32 0, i32 3
  %146 = load %class.b2Shape** %145, align 4
  %147 = bitcast %class.b2Shape* %146 to %class.b2ChainShape*
  store %class.b2ChainShape* %147, %class.b2ChainShape** %s3, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([25 x i8]* @.str25, i32 0, i32 0))
  %148 = load %class.b2ChainShape** %s3, align 4
  %149 = getelementptr inbounds %class.b2ChainShape* %148, i32 0, i32 2
  %150 = load i32* %149, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([20 x i8]* @.str22, i32 0, i32 0), i32 %150)
  store i32 0, i32* %i4, align 4
  br label %151

; <label>:151                                     ; preds = %175, %144
  %152 = load i32* %i4, align 4
  %153 = load %class.b2ChainShape** %s3, align 4
  %154 = getelementptr inbounds %class.b2ChainShape* %153, i32 0, i32 2
  %155 = load i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %178

; <label>:157                                     ; preds = %151
  %158 = load i32* %i4, align 4
  %159 = load i32* %i4, align 4
  %160 = load %class.b2ChainShape** %s3, align 4
  %161 = getelementptr inbounds %class.b2ChainShape* %160, i32 0, i32 1
  %162 = load %struct.b2Vec2** %161, align 4
  %163 = getelementptr inbounds %struct.b2Vec2* %162, i32 %159
  %164 = getelementptr inbounds %struct.b2Vec2* %163, i32 0, i32 0
  %165 = load float* %164, align 4
  %166 = fpext float %165 to double
  %167 = load i32* %i4, align 4
  %168 = load %class.b2ChainShape** %s3, align 4
  %169 = getelementptr inbounds %class.b2ChainShape* %168, i32 0, i32 1
  %170 = load %struct.b2Vec2** %169, align 4
  %171 = getelementptr inbounds %struct.b2Vec2* %170, i32 %167
  %172 = getelementptr inbounds %struct.b2Vec2* %171, i32 0, i32 1
  %173 = load float* %172, align 4
  %174 = fpext float %173 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([35 x i8]* @.str23, i32 0, i32 0), i32 %158, double %166, double %174)
  br label %175

; <label>:175                                     ; preds = %157
  %176 = load i32* %i4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %i4, align 4
  br label %151

; <label>:178                                     ; preds = %151
  %179 = load %class.b2ChainShape** %s3, align 4
  %180 = getelementptr inbounds %class.b2ChainShape* %179, i32 0, i32 2
  %181 = load i32* %180, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([32 x i8]* @.str26, i32 0, i32 0), i32 %181)
  %182 = load %class.b2ChainShape** %s3, align 4
  %183 = getelementptr inbounds %class.b2ChainShape* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.b2Vec2* %183, i32 0, i32 0
  %185 = load float* %184, align 4
  %186 = fpext float %185 to double
  %187 = load %class.b2ChainShape** %s3, align 4
  %188 = getelementptr inbounds %class.b2ChainShape* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.b2Vec2* %188, i32 0, i32 1
  %190 = load float* %189, align 4
  %191 = fpext float %190 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([47 x i8]* @.str27, i32 0, i32 0), double %186, double %191)
  %192 = load %class.b2ChainShape** %s3, align 4
  %193 = getelementptr inbounds %class.b2ChainShape* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.b2Vec2* %193, i32 0, i32 0
  %195 = load float* %194, align 4
  %196 = fpext float %195 to double
  %197 = load %class.b2ChainShape** %s3, align 4
  %198 = getelementptr inbounds %class.b2ChainShape* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.b2Vec2* %198, i32 0, i32 1
  %200 = load float* %199, align 4
  %201 = fpext float %200 to double
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([47 x i8]* @.str28, i32 0, i32 0), double %196, double %201)
  %202 = load %class.b2ChainShape** %s3, align 4
  %203 = getelementptr inbounds %class.b2ChainShape* %202, i32 0, i32 5
  %204 = load i8* %203, align 1
  %205 = trunc i8 %204 to i1
  %206 = zext i1 %205 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([39 x i8]* @.str29, i32 0, i32 0), i32 %206)
  %207 = load %class.b2ChainShape** %s3, align 4
  %208 = getelementptr inbounds %class.b2ChainShape* %207, i32 0, i32 6
  %209 = load i8* %208, align 1
  %210 = trunc i8 %209 to i1
  %211 = zext i1 %210 to i32
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([39 x i8]* @.str30, i32 0, i32 0), i32 %211)
  br label %213

; <label>:212                                     ; preds = %0
  br label %215

; <label>:213                                     ; preds = %178, %140, %52, %33
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([24 x i8]* @.str32, i32 0, i32 0))
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0))
  %214 = load i32* %2, align 4
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([37 x i8]* @.str33, i32 0, i32 0), i32 %214)
  br label %215

; <label>:215                                     ; preds = %213, %212
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)

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

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
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
