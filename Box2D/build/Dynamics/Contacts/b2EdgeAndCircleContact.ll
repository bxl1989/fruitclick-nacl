; ModuleID = 'Dynamics/Contacts/b2EdgeAndCircleContact.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2EdgeAndCircleContact = type { %class.b2Contact }
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
%class.b2EdgeShape = type opaque
%class.b2CircleShape = type opaque

@_ZTV22b2EdgeAndCircleContact = unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI22b2EdgeAndCircleContact to i8*), i8* bitcast (void (%class.b2EdgeAndCircleContact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)* @_ZN22b2EdgeAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ to i8*), i8* bitcast (void (%class.b2EdgeAndCircleContact*)* @_ZN22b2EdgeAndCircleContactD1Ev to i8*), i8* bitcast (void (%class.b2EdgeAndCircleContact*)* @_ZN22b2EdgeAndCircleContactD0Ev to i8*)]
@.str = private unnamed_addr constant [41 x i8] c"m_fixtureA->GetType() == b2Shape::e_edge\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"Dynamics/Contacts/b2EdgeAndCircleContact.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN22b2EdgeAndCircleContactC2EP9b2FixtureS1_ = private unnamed_addr constant [73 x i8] c"b2EdgeAndCircleContact::b2EdgeAndCircleContact(b2Fixture *, b2Fixture *)\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"m_fixtureB->GetType() == b2Shape::e_circle\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS22b2EdgeAndCircleContact = constant [25 x i8] c"22b2EdgeAndCircleContact\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9b2Contact = linkonce_odr constant [11 x i8] c"9b2Contact\00"
@_ZTI9b2Contact = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTS9b2Contact, i32 0, i32 0) }
@_ZTI22b2EdgeAndCircleContact = unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([25 x i8]* @_ZTS22b2EdgeAndCircleContact, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9b2Contact to i8*) }

@_ZN22b2EdgeAndCircleContactC1EP9b2FixtureS1_ = alias void (%class.b2EdgeAndCircleContact*, %class.b2Fixture*, %class.b2Fixture*)* @_ZN22b2EdgeAndCircleContactC2EP9b2FixtureS1_

define %class.b2Contact* @_ZN22b2EdgeAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture* %fixtureA, i32, %class.b2Fixture* %fixtureB, i32, %class.b2BlockAllocator* %allocator) align 2 {
  %3 = alloca %class.b2Fixture*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.b2Fixture*, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.b2BlockAllocator*, align 4
  %mem = alloca i8*, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %3, align 4
  store i32 %0, i32* %4, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %5, align 4
  store i32 %1, i32* %6, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %7, align 4
  %8 = load %class.b2BlockAllocator** %7, align 4
  %9 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %8, i32 144)
  store i8* %9, i8** %mem, align 4
  %10 = load i8** %mem, align 4
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

; <label>:12                                      ; preds = %2
  %13 = bitcast i8* %10 to %class.b2EdgeAndCircleContact*
  %14 = load %class.b2Fixture** %3, align 4
  %15 = load %class.b2Fixture** %5, align 4
  call void @_ZN22b2EdgeAndCircleContactC1EP9b2FixtureS1_(%class.b2EdgeAndCircleContact* %13, %class.b2Fixture* %14, %class.b2Fixture* %15)
  br label %16

; <label>:16                                      ; preds = %12, %2
  %17 = phi %class.b2EdgeAndCircleContact* [ %13, %12 ], [ null, %2 ]
  %18 = bitcast %class.b2EdgeAndCircleContact* %17 to %class.b2Contact*
  ret %class.b2Contact* %18
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

define void @_ZN22b2EdgeAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact* %contact, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2Contact** %1, align 4
  %4 = bitcast %class.b2Contact* %3 to %class.b2EdgeAndCircleContact*
  %5 = bitcast %class.b2EdgeAndCircleContact* %4 to void (%class.b2EdgeAndCircleContact*)***
  %6 = load void (%class.b2EdgeAndCircleContact*)*** %5
  %7 = getelementptr inbounds void (%class.b2EdgeAndCircleContact*)** %6, i64 1
  %8 = load void (%class.b2EdgeAndCircleContact*)** %7
  call void %8(%class.b2EdgeAndCircleContact* %4)
  %9 = load %class.b2BlockAllocator** %2, align 4
  %10 = load %class.b2Contact** %1, align 4
  %11 = bitcast %class.b2Contact* %10 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %9, i8* %11, i32 144)
  ret void
}

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

define void @_ZN22b2EdgeAndCircleContactC2EP9b2FixtureS1_(%class.b2EdgeAndCircleContact* %this, %class.b2Fixture* %fixtureA, %class.b2Fixture* %fixtureB) unnamed_addr align 2 {
  %1 = alloca %class.b2EdgeAndCircleContact*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %3 = alloca %class.b2Fixture*, align 4
  %4 = alloca i8*
  %5 = alloca i32
  store %class.b2EdgeAndCircleContact* %this, %class.b2EdgeAndCircleContact** %1, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %2, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %3, align 4
  %6 = load %class.b2EdgeAndCircleContact** %1
  %7 = bitcast %class.b2EdgeAndCircleContact* %6 to %class.b2Contact*
  %8 = load %class.b2Fixture** %2, align 4
  %9 = load %class.b2Fixture** %3, align 4
  call void @_ZN9b2ContactC2EP9b2FixtureiS1_i(%class.b2Contact* %7, %class.b2Fixture* %8, i32 0, %class.b2Fixture* %9, i32 0)
  %10 = bitcast %class.b2EdgeAndCircleContact* %6 to i8***
  store i8** getelementptr inbounds ([5 x i8*]* @_ZTV22b2EdgeAndCircleContact, i64 0, i64 2), i8*** %10
  %11 = bitcast %class.b2EdgeAndCircleContact* %6 to %class.b2Contact*
  %12 = getelementptr inbounds %class.b2Contact* %11, i32 0, i32 6
  %13 = load %class.b2Fixture** %12, align 4
  %14 = invoke i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %13)
          to label %15 unwind label %19

; <label>:15                                      ; preds = %0
  %16 = icmp eq i32 %14, 1
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %15
  br label %25

; <label>:18                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([73 x i8]* @__PRETTY_FUNCTION__._ZN22b2EdgeAndCircleContactC2EP9b2FixtureS1_, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:19                                      ; preds = %25, %0
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %4
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %5
  %23 = bitcast %class.b2EdgeAndCircleContact* %6 to %class.b2Contact*
  invoke void @_ZN9b2ContactD2Ev(%class.b2Contact* %23)
          to label %36 unwind label %43
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %17
  %26 = bitcast %class.b2EdgeAndCircleContact* %6 to %class.b2Contact*
  %27 = getelementptr inbounds %class.b2Contact* %26, i32 0, i32 7
  %28 = load %class.b2Fixture** %27, align 4
  %29 = invoke i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %28)
          to label %30 unwind label %19

; <label>:30                                      ; preds = %25
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %30
  br label %35

; <label>:33                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str1, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([73 x i8]* @__PRETTY_FUNCTION__._ZN22b2EdgeAndCircleContactC2EP9b2FixtureS1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:35                                      ; preds = %34, %32
  ret void

; <label>:36                                      ; preds = %19
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i8** %4
  %39 = load i8** %4
  %40 = load i32* %5
  %41 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %42 = insertvalue { i8*, i32 } %41, i32 %40, 1
  resume { i8*, i32 } %42

; <label>:43                                      ; preds = %19
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
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

define void @_ZN22b2EdgeAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_(%class.b2EdgeAndCircleContact* %this, %struct.b2Manifold* %manifold, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB) align 2 {
  %1 = alloca %class.b2EdgeAndCircleContact*, align 4
  %2 = alloca %struct.b2Manifold*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  store %class.b2EdgeAndCircleContact* %this, %class.b2EdgeAndCircleContact** %1, align 4
  store %struct.b2Manifold* %manifold, %struct.b2Manifold** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %4, align 4
  %5 = load %class.b2EdgeAndCircleContact** %1
  %6 = load %struct.b2Manifold** %2, align 4
  %7 = bitcast %class.b2EdgeAndCircleContact* %5 to %class.b2Contact*
  %8 = getelementptr inbounds %class.b2Contact* %7, i32 0, i32 6
  %9 = load %class.b2Fixture** %8, align 4
  %10 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %9)
  %11 = bitcast %class.b2Shape* %10 to %class.b2EdgeShape*
  %12 = load %struct.b2Transform** %3
  %13 = bitcast %class.b2EdgeAndCircleContact* %5 to %class.b2Contact*
  %14 = getelementptr inbounds %class.b2Contact* %13, i32 0, i32 7
  %15 = load %class.b2Fixture** %14, align 4
  %16 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %15)
  %17 = bitcast %class.b2Shape* %16 to %class.b2CircleShape*
  %18 = load %struct.b2Transform** %4
  call void @_Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold* %6, %class.b2EdgeShape* %11, %struct.b2Transform* %12, %class.b2CircleShape* %17, %struct.b2Transform* %18)
  ret void
}

declare void @_Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_(%struct.b2Manifold*, %class.b2EdgeShape*, %struct.b2Transform*, %class.b2CircleShape*, %struct.b2Transform*)

define linkonce_odr %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  ret %class.b2Shape* %4
}

define linkonce_odr void @_ZN22b2EdgeAndCircleContactD1Ev(%class.b2EdgeAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2EdgeAndCircleContact*, align 4
  store %class.b2EdgeAndCircleContact* %this, %class.b2EdgeAndCircleContact** %1, align 4
  %2 = load %class.b2EdgeAndCircleContact** %1
  call void @_ZN22b2EdgeAndCircleContactD2Ev(%class.b2EdgeAndCircleContact* %2)
  ret void
}

define linkonce_odr void @_ZN22b2EdgeAndCircleContactD0Ev(%class.b2EdgeAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2EdgeAndCircleContact*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2EdgeAndCircleContact* %this, %class.b2EdgeAndCircleContact** %1, align 4
  %4 = load %class.b2EdgeAndCircleContact** %1
  invoke void @_ZN22b2EdgeAndCircleContactD1Ev(%class.b2EdgeAndCircleContact* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2EdgeAndCircleContact* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2EdgeAndCircleContact* %4 to i8*
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

define linkonce_odr void @_ZN22b2EdgeAndCircleContactD2Ev(%class.b2EdgeAndCircleContact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2EdgeAndCircleContact*, align 4
  store %class.b2EdgeAndCircleContact* %this, %class.b2EdgeAndCircleContact** %1, align 4
  %2 = load %class.b2EdgeAndCircleContact** %1
  %3 = bitcast %class.b2EdgeAndCircleContact* %2 to %class.b2Contact*
  call void @_ZN9b2ContactD2Ev(%class.b2Contact* %3)
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
