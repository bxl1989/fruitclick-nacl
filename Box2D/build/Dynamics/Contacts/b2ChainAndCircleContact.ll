; ModuleID = 'Dynamics/Contacts/b2ChainAndCircleContact.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2ChainAndCircleContact = type { %class.b2Contact }
%class.b2Contact = type { i32 (...)**, i32, %class.b2Contact*, %class.b2Contact*, %struct.b2ContactEdge, %struct.b2ContactEdge, %class.b2Fixture*, %class.b2Fixture*, i32, i32, %struct.b2Manifold, i32, float, float, float }
%struct.b2ContactEdge = type { %class.b2Body*, %class.b2Contact*, %struct.b2ContactEdge*, %struct.b2ContactEdge* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2World = type opaque
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2JointEdge = type opaque
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
%class.b2ChainShape = type { %class.b2Shape, %struct.b2Vec2*, i32, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2EdgeShape = type { %class.b2Shape, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, i8 }
%class.b2CircleShape = type opaque

@_ZTV23b2ChainAndCircleContact = unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI23b2ChainAndCircleContact to i8*), i8* bitcast (void (%class.b2ChainAndCircleContact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)* @_ZN23b2ChainAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ to i8*), i8* bitcast (void (%class.b2ChainAndCircleContact*)* @_ZN23b2ChainAndCircleContactD1Ev to i8*), i8* bitcast (void (%class.b2ChainAndCircleContact*)* @_ZN23b2ChainAndCircleContactD0Ev to i8*)]
@.str = private unnamed_addr constant [42 x i8] c"m_fixtureA->GetType() == b2Shape::e_chain\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"Dynamics/Contacts/b2ChainAndCircleContact.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN23b2ChainAndCircleContactC2EP9b2FixtureiS1_i = private unnamed_addr constant [89 x i8] c"b2ChainAndCircleContact::b2ChainAndCircleContact(b2Fixture *, int32, b2Fixture *, int32)\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"m_fixtureB->GetType() == b2Shape::e_circle\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS23b2ChainAndCircleContact = constant [26 x i8] c"23b2ChainAndCircleContact\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9b2Contact = linkonce_odr constant [11 x i8] c"9b2Contact\00"
@_ZTI9b2Contact = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTS9b2Contact, i32 0, i32 0) }
@_ZTI23b2ChainAndCircleContact = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([26 x i8]* @_ZTS23b2ChainAndCircleContact, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9b2Contact to i8*) }
@_ZTV11b2EdgeShape = external unnamed_addr constant [10 x i8*]
@_ZTV7b2Shape = linkonce_odr unnamed_addr constant [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Shape to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD1Ev to i8*), i8* bitcast (void (%class.b2Shape*)* @_ZN7b2ShapeD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]
@_ZTS7b2Shape = linkonce_odr constant [9 x i8] c"7b2Shape\00"
@_ZTI7b2Shape = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Shape, i32 0, i32 0) }

@_ZN23b2ChainAndCircleContactC1EP9b2FixtureiS1_i = alias void (%class.b2ChainAndCircleContact*, %class.b2Fixture*, i32, %class.b2Fixture*, i32)* @_ZN23b2ChainAndCircleContactC2EP9b2FixtureiS1_i

define %class.b2Contact* @_ZN23b2ChainAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture* %fixtureA, i32 %indexA, %class.b2Fixture* %fixtureB, i32 %indexB, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %class.b2Fixture*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %1, align 4
  store i32 %indexA, i32* %2, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %3, align 4
  store i32 %indexB, i32* %4, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %5, align 4
  %6 = load %class.b2BlockAllocator** %5, align 4
  %7 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %6, i32 144)
  store i8* %7, i8** %mem, align 4
  %8 = load i8** %mem, align 4
  %9 = icmp eq i8* %8, null
  br i1 %9, label %16, label %10

; <label>:10                                      ; preds = %0
  %11 = bitcast i8* %8 to %class.b2ChainAndCircleContact*
  %12 = load %class.b2Fixture** %1, align 4
  %13 = load i32* %2, align 4
  %14 = load %class.b2Fixture** %3, align 4
  %15 = load i32* %4, align 4
  call void @_ZN23b2ChainAndCircleContactC1EP9b2FixtureiS1_i(%class.b2ChainAndCircleContact* %11, %class.b2Fixture* %12, i32 %13, %class.b2Fixture* %14, i32 %15)
  br label %16

; <label>:16                                      ; preds = %10, %0
  %17 = phi %class.b2ChainAndCircleContact* [ %11, %10 ], [ null, %0 ]
  %18 = bitcast %class.b2ChainAndCircleContact* %17 to %class.b2Contact*
  ret %class.b2Contact* %18
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define void @_ZN23b2ChainAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact* %contact, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2Contact** %1, align 4
  %4 = bitcast %class.b2Contact* %3 to %class.b2ChainAndCircleContact*
  %5 = bitcast %class.b2ChainAndCircleContact* %4 to void (%class.b2ChainAndCircleContact*)***
  %6 = load void (%class.b2ChainAndCircleContact*)*** %5
  %7 = getelementptr inbounds void (%class.b2ChainAndCircleContact*)** %6, i64 1
  %8 = load void (%class.b2ChainAndCircleContact*)** %7
  call void %8(%class.b2ChainAndCircleContact* %4)
  %9 = load %class.b2BlockAllocator** %2, align 4
  %10 = load %class.b2Contact** %1, align 4
  %11 = bitcast %class.b2Contact* %10 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %9, i8* %11, i32 144)
  ret void
}

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

define void @_ZN23b2ChainAndCircleContactC2EP9b2FixtureiS1_i(%class.b2ChainAndCircleContact* %this, %class.b2Fixture* %fixtureA, i32 %indexA, %class.b2Fixture* %fixtureB, i32 %indexB) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainAndCircleContact*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.b2Fixture*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*
  %7 = alloca i32
  store %class.b2ChainAndCircleContact* %this, %class.b2ChainAndCircleContact** %1, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %2, align 4
  store i32 %indexA, i32* %3, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %4, align 4
  store i32 %indexB, i32* %5, align 4
  %8 = load %class.b2ChainAndCircleContact** %1
  %9 = bitcast %class.b2ChainAndCircleContact* %8 to %class.b2Contact*
  %10 = load %class.b2Fixture** %2, align 4
  %11 = load i32* %3, align 4
  %12 = load %class.b2Fixture** %4, align 4
  %13 = load i32* %5, align 4
  call void @_ZN9b2ContactC2EP9b2FixtureiS1_i(%class.b2Contact* %9, %class.b2Fixture* %10, i32 %11, %class.b2Fixture* %12, i32 %13)
  %14 = bitcast %class.b2ChainAndCircleContact* %8 to i8***
  store i8** getelementptr inbounds ([5 x i8*]* @_ZTV23b2ChainAndCircleContact, i64 0, i64 2), i8*** %14
  %15 = bitcast %class.b2ChainAndCircleContact* %8 to %class.b2Contact*
  %16 = getelementptr inbounds %class.b2Contact* %15, i32 0, i32 6
  %17 = load %class.b2Fixture** %16, align 4
  %18 = invoke i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %17)
          to label %19 unwind label %23

; <label>:19                                      ; preds = %0
  %20 = icmp eq i32 %18, 3
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %19
  br label %29

; <label>:22                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8]* @.str1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([89 x i8]* @__PRETTY_FUNCTION__._ZN23b2ChainAndCircleContactC2EP9b2FixtureiS1_i, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:23                                      ; preds = %29, %0
  %24 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %6
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %7
  %27 = bitcast %class.b2ChainAndCircleContact* %8 to %class.b2Contact*
  invoke void @_ZN9b2ContactD2Ev(%class.b2Contact* %27)
          to label %40 unwind label %47
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %21
  %30 = bitcast %class.b2ChainAndCircleContact* %8 to %class.b2Contact*
  %31 = getelementptr inbounds %class.b2Contact* %30, i32 0, i32 7
  %32 = load %class.b2Fixture** %31, align 4
  %33 = invoke i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %32)
          to label %34 unwind label %23

; <label>:34                                      ; preds = %29
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %34
  br label %39

; <label>:37                                      ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8]* @.str1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([89 x i8]* @__PRETTY_FUNCTION__._ZN23b2ChainAndCircleContactC2EP9b2FixtureiS1_i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:39                                      ; preds = %38, %36
  ret void

; <label>:40                                      ; preds = %23
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i8** %6
  %43 = load i8** %6
  %44 = load i32* %7
  %45 = insertvalue { i8*, i32 } undef, i8* %43, 0
  %46 = insertvalue { i8*, i32 } %45, i32 %44, 1
  resume { i8*, i32 } %46

; <label>:47                                      ; preds = %23
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN9b2ContactC2EP9b2FixtureiS1_i(%class.b2Contact*, %class.b2Fixture*, i32, %class.b2Fixture*, i32)

define linkonce_odr i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %this) inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  %5 = call i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %4)
  ret i32 %5
}

declare i32 @__gxx_personality_v0(...)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZN9b2ContactD2Ev(%class.b2Contact* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  ret void
}

declare void @_ZSt9terminatev()

define void @_ZN23b2ChainAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_(%class.b2ChainAndCircleContact* %this, %struct.b2Manifold* %manifold, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB) align 2 {
  %1 = alloca %class.b2ChainAndCircleContact*, align 4
  %2 = alloca %struct.b2Manifold*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %chain = alloca %class.b2ChainShape*, align 4
  %edge = alloca %class.b2EdgeShape, align 4
  %5 = alloca i8*
  %6 = alloca i32
  store %class.b2ChainAndCircleContact* %this, %class.b2ChainAndCircleContact** %1, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %4, align 4
  %7 = load %class.b2ChainAndCircleContact** %1
  %8 = bitcast %class.b2ChainAndCircleContact* %7 to %class.b2Contact*
  %9 = getelementptr inbounds %class.b2Contact* %8, i32 0, i32 6
  %10 = load %class.b2Fixture** %9, align 4
  %11 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %10)
  %12 = bitcast %class.b2Shape* %11 to %class.b2ChainShape*
  store %class.b2ChainShape* %12, %class.b2ChainShape** %chain, align 4
  call void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %edge)
  %13 = load %class.b2ChainShape** %chain, align 4
  %14 = bitcast %class.b2ChainAndCircleContact* %7 to %class.b2Contact*
  %15 = getelementptr inbounds %class.b2Contact* %14, i32 0, i32 8
  %16 = load i32* %15, align 4
  invoke void @_ZNK12b2ChainShape12GetChildEdgeEP11b2EdgeShapei(%class.b2ChainShape* %13, %class.b2EdgeShape* %edge, i32 %16)
          to label %17 unwind label %28

; <label>:17                                      ; preds = %0
  %18 = load %struct.b2Manifold** %2, align 4
  %19 = load %struct.b2Transform** %3
  %20 = bitcast %class.b2ChainAndCircleContact* %7 to %class.b2Contact*
  %21 = getelementptr inbounds %class.b2Contact* %20, i32 0, i32 7
  %22 = load %class.b2Fixture** %21, align 4
  %23 = invoke %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %22)
          to label %24 unwind label %28

; <label>:24                                      ; preds = %17
  %25 = bitcast %class.b2Shape* %23 to %class.b2CircleShape*
  %26 = load %struct.b2Transform** %4
  invoke void @_Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold* %18, %class.b2EdgeShape* %edge, %struct.b2Transform* %19, %class.b2CircleShape* %25, %struct.b2Transform* %26)
          to label %27 unwind label %28

; <label>:27                                      ; preds = %24
  call void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %edge)
  ret void

; <label>:28                                      ; preds = %24, %17, %0
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6
  invoke void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %edge)
          to label %32 unwind label %39

; <label>:32                                      ; preds = %28
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i8** %5
  %35 = load i8** %5
  %36 = load i32* %6
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

; <label>:39                                      ; preds = %28
  %40 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

define linkonce_odr %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  ret %class.b2Shape* %4
}

define linkonce_odr void @_ZN11b2EdgeShapeC1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeC2Ev(%class.b2EdgeShape* %2)
  ret void
}

declare void @_ZNK12b2ChainShape12GetChildEdgeEP11b2EdgeShapei(%class.b2ChainShape*, %class.b2EdgeShape*, i32)

declare void @_Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold*, %class.b2EdgeShape*, %struct.b2Transform*, %class.b2CircleShape*, %struct.b2Transform*)

define linkonce_odr void @_ZN11b2EdgeShapeD1Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  call void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %2)
  ret void
}

define linkonce_odr void @_ZN23b2ChainAndCircleContactD1Ev(%class.b2ChainAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainAndCircleContact*, align 4
  store %class.b2ChainAndCircleContact* %this, %class.b2ChainAndCircleContact** %1, align 4
  %2 = load %class.b2ChainAndCircleContact** %1
  call void @_ZN23b2ChainAndCircleContactD2Ev(%class.b2ChainAndCircleContact* %2)
  ret void
}

define linkonce_odr void @_ZN23b2ChainAndCircleContactD0Ev(%class.b2ChainAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainAndCircleContact*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ChainAndCircleContact* %this, %class.b2ChainAndCircleContact** %1, align 4
  %4 = load %class.b2ChainAndCircleContact** %1
  invoke void @_ZN23b2ChainAndCircleContactD1Ev(%class.b2ChainAndCircleContact* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2ChainAndCircleContact* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2ChainAndCircleContact* %4 to i8*
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

define linkonce_odr void @_ZN23b2ChainAndCircleContactD2Ev(%class.b2ChainAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ChainAndCircleContact*, align 4
  store %class.b2ChainAndCircleContact* %this, %class.b2ChainAndCircleContact** %1, align 4
  %2 = load %class.b2ChainAndCircleContact** %1
  %3 = bitcast %class.b2ChainAndCircleContact* %2 to %class.b2Contact*
  call void @_ZN9b2ContactD2Ev(%class.b2Contact* %3)
  ret void
}

define linkonce_odr void @_ZN11b2EdgeShapeD2Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %2 = load %class.b2EdgeShape** %1
  %3 = bitcast %class.b2EdgeShape* %2 to %class.b2Shape*
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %3)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD2Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  ret void
}

define linkonce_odr void @_ZN11b2EdgeShapeC2Ev(%class.b2EdgeShape* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %class.b2EdgeShape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2EdgeShape* %this, %class.b2EdgeShape** %1, align 4
  %4 = load %class.b2EdgeShape** %1
  %5 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  call void @_ZN7b2ShapeC2Ev(%class.b2Shape* %5) nounwind
  %6 = bitcast %class.b2EdgeShape* %4 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV11b2EdgeShape, i64 0, i64 2), i8*** %6
  %7 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 1
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %7)
          to label %8 unwind label %29

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 2
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %9)
          to label %10 unwind label %29

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
          to label %12 unwind label %29

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  invoke void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %13)
          to label %14 unwind label %29

; <label>:14                                      ; preds = %12
  %15 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  %16 = getelementptr inbounds %class.b2Shape* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  %18 = getelementptr inbounds %class.b2Shape* %17, i32 0, i32 2
  store float 0x3F847AE140000000, float* %18, align 4
  %19 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.b2Vec2* %19, i32 0, i32 0
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 1
  store float 0.000000e+00, float* %22, align 4
  %23 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  %24 = getelementptr inbounds %struct.b2Vec2* %23, i32 0, i32 0
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 4
  %26 = getelementptr inbounds %struct.b2Vec2* %25, i32 0, i32 1
  store float 0.000000e+00, float* %26, align 4
  %27 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %class.b2EdgeShape* %4, i32 0, i32 6
  store i8 0, i8* %28, align 1
  ret void

; <label>:29                                      ; preds = %12, %10, %8, %0
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %2
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %3
  %33 = bitcast %class.b2EdgeShape* %4 to %class.b2Shape*
  invoke void @_ZN7b2ShapeD2Ev(%class.b2Shape* %33)
          to label %34 unwind label %41

; <label>:34                                      ; preds = %29
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i8** %2
  %37 = load i8** %2
  %38 = load i32* %3
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41                                      ; preds = %29
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

define linkonce_odr void @_ZN7b2ShapeC2Ev(%class.b2Shape* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = bitcast %class.b2Shape* %2 to i8***
  store i8** getelementptr inbounds ([10 x i8*]* @_ZTV7b2Shape, i64 0, i64 2), i8*** %3
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

define linkonce_odr void @_ZN7b2ShapeD1Ev(%class.b2Shape* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  call void @_ZN7b2ShapeD2Ev(%class.b2Shape* %2)
  ret void
}

define linkonce_odr void @_ZN7b2ShapeD0Ev(%class.b2Shape* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Shape*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %4 = load %class.b2Shape** %1
  invoke void @_ZN7b2ShapeD1Ev(%class.b2Shape* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2Shape* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2Shape* %4 to i8*
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

declare void @__cxa_pure_virtual()

define linkonce_odr i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = getelementptr inbounds %class.b2Shape* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}
