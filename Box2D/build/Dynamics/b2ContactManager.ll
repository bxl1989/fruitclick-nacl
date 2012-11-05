; ModuleID = 'Dynamics/b2ContactManager.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
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
%class.b2World = type opaque
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2JointEdge = type opaque
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
%class.b2GrowableStack = type { i32*, [256 x i32], i32, i32 }
%struct.b2ContactImpulse = type { [2 x float], [2 x float], i32 }

@b2_defaultFilter = global %class.b2ContactFilter zeroinitializer, align 4
@__dso_handle = external unnamed_addr global i8*
@b2_defaultListener = global %class.b2ContactListener zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"0 <= proxyId && proxyId < m_nodeCapacity\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"/usr/local/include/Box2D/Collision/b2DynamicTree.h\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree11GetUserDataEi = private unnamed_addr constant [46 x i8] c"void *b2DynamicTree::GetUserData(int32) const\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"m_count > 0\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"/usr/local/include/Box2D/Common/b2GrowableStack.h\00", align 1
@__PRETTY_FUNCTION__._ZN15b2GrowableStackIiLi256EE3PopEv = private unnamed_addr constant [37 x i8] c"int b2GrowableStack<int, 256>::Pop()\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree10GetFatAABBEi = private unnamed_addr constant [53 x i8] c"const b2AABB &b2DynamicTree::GetFatAABB(int32) const\00", align 1
@_ZTV17b2ContactListener = linkonce_odr unnamed_addr constant [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI17b2ContactListener to i8*), i8* bitcast (void (%class.b2ContactListener*)* @_ZN17b2ContactListenerD1Ev to i8*), i8* bitcast (void (%class.b2ContactListener*)* @_ZN17b2ContactListenerD0Ev to i8*), i8* bitcast (void (%class.b2ContactListener*, %class.b2Contact*)* @_ZN17b2ContactListener12BeginContactEP9b2Contact to i8*), i8* bitcast (void (%class.b2ContactListener*, %class.b2Contact*)* @_ZN17b2ContactListener10EndContactEP9b2Contact to i8*), i8* bitcast (void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2Manifold*)* @_ZN17b2ContactListener8PreSolveEP9b2ContactPK10b2Manifold to i8*), i8* bitcast (void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2ContactImpulse*)* @_ZN17b2ContactListener9PostSolveEP9b2ContactPK16b2ContactImpulse to i8*)]
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS17b2ContactListener = linkonce_odr constant [20 x i8] c"17b2ContactListener\00"
@_ZTI17b2ContactListener = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([20 x i8]* @_ZTS17b2ContactListener, i32 0, i32 0) }
@_ZTV15b2ContactFilter = external unnamed_addr constant [5 x i8*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

@_ZN16b2ContactManagerC1Ev = alias void (%class.b2ContactManager*)* @_ZN16b2ContactManagerC2Ev

define internal void @__cxx_global_var_init() {
  call void @_ZN15b2ContactFilterC1Ev(%class.b2ContactFilter* @b2_defaultFilter) nounwind
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.b2ContactFilter*)* @_ZN15b2ContactFilterD1Ev to void (i8*)*), i8* bitcast (%class.b2ContactFilter* @b2_defaultFilter to i8*), i8* bitcast (i8** @__dso_handle to i8*))
  ret void
}

define linkonce_odr void @_ZN15b2ContactFilterC1Ev(%class.b2ContactFilter* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  call void @_ZN15b2ContactFilterC2Ev(%class.b2ContactFilter* %2) nounwind
  ret void
}

define linkonce_odr void @_ZN15b2ContactFilterD1Ev(%class.b2ContactFilter* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  call void @_ZN15b2ContactFilterD2Ev(%class.b2ContactFilter* %2)
  ret void
}

declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) nounwind

define internal void @__cxx_global_var_init1() {
  call void @_ZN17b2ContactListenerC1Ev(%class.b2ContactListener* @b2_defaultListener) nounwind
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.b2ContactListener*)* @_ZN17b2ContactListenerD1Ev to void (i8*)*), i8* bitcast (%class.b2ContactListener* @b2_defaultListener to i8*), i8* bitcast (i8** @__dso_handle to i8*))
  ret void
}

define linkonce_odr void @_ZN17b2ContactListenerC1Ev(%class.b2ContactListener* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  %2 = load %class.b2ContactListener** %1
  call void @_ZN17b2ContactListenerC2Ev(%class.b2ContactListener* %2) nounwind
  ret void
}

define linkonce_odr void @_ZN17b2ContactListenerD1Ev(%class.b2ContactListener* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  %2 = load %class.b2ContactListener** %1
  call void @_ZN17b2ContactListenerD2Ev(%class.b2ContactListener* %2)
  ret void
}

define void @_ZN16b2ContactManagerC2Ev(%class.b2ContactManager* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  %2 = load %class.b2ContactManager** %1
  %3 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 0
  call void @_ZN12b2BroadPhaseC1Ev(%class.b2BroadPhase* %3)
  %4 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 1
  store %class.b2Contact* null, %class.b2Contact** %4, align 4
  %5 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 3
  store %class.b2ContactFilter* @b2_defaultFilter, %class.b2ContactFilter** %6, align 4
  %7 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 4
  store %class.b2ContactListener* @b2_defaultListener, %class.b2ContactListener** %7, align 4
  %8 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 5
  store %class.b2BlockAllocator* null, %class.b2BlockAllocator** %8, align 4
  ret void
}

declare void @_ZN12b2BroadPhaseC1Ev(%class.b2BroadPhase*)

define void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %this, %class.b2Contact* %c) align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  %2 = alloca %class.b2Contact*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  store %class.b2Contact* %c, %class.b2Contact** %2, align 4
  %3 = load %class.b2ContactManager** %1
  %4 = load %class.b2Contact** %2, align 4
  %5 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %4)
  store %class.b2Fixture* %5, %class.b2Fixture** %fixtureA, align 4
  %6 = load %class.b2Contact** %2, align 4
  %7 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %6)
  store %class.b2Fixture* %7, %class.b2Fixture** %fixtureB, align 4
  %8 = load %class.b2Fixture** %fixtureA, align 4
  %9 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %8)
  store %class.b2Body* %9, %class.b2Body** %bodyA, align 4
  %10 = load %class.b2Fixture** %fixtureB, align 4
  %11 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %10)
  store %class.b2Body* %11, %class.b2Body** %bodyB, align 4
  %12 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 4
  %13 = load %class.b2ContactListener** %12, align 4
  %14 = icmp ne %class.b2ContactListener* %13, null
  br i1 %14, label %15, label %26

; <label>:15                                      ; preds = %0
  %16 = load %class.b2Contact** %2, align 4
  %17 = call zeroext i1 @_ZNK9b2Contact10IsTouchingEv(%class.b2Contact* %16)
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 4
  %20 = load %class.b2ContactListener** %19, align 4
  %21 = bitcast %class.b2ContactListener* %20 to void (%class.b2ContactListener*, %class.b2Contact*)***
  %22 = load void (%class.b2ContactListener*, %class.b2Contact*)*** %21
  %23 = getelementptr inbounds void (%class.b2ContactListener*, %class.b2Contact*)** %22, i64 3
  %24 = load void (%class.b2ContactListener*, %class.b2Contact*)** %23
  %25 = load %class.b2Contact** %2, align 4
  call void %24(%class.b2ContactListener* %20, %class.b2Contact* %25)
  br label %26

; <label>:26                                      ; preds = %18, %15, %0
  %27 = load %class.b2Contact** %2, align 4
  %28 = getelementptr inbounds %class.b2Contact* %27, i32 0, i32 2
  %29 = load %class.b2Contact** %28, align 4
  %30 = icmp ne %class.b2Contact* %29, null
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %26
  %32 = load %class.b2Contact** %2, align 4
  %33 = getelementptr inbounds %class.b2Contact* %32, i32 0, i32 3
  %34 = load %class.b2Contact** %33, align 4
  %35 = load %class.b2Contact** %2, align 4
  %36 = getelementptr inbounds %class.b2Contact* %35, i32 0, i32 2
  %37 = load %class.b2Contact** %36, align 4
  %38 = getelementptr inbounds %class.b2Contact* %37, i32 0, i32 3
  store %class.b2Contact* %34, %class.b2Contact** %38, align 4
  br label %39

; <label>:39                                      ; preds = %31, %26
  %40 = load %class.b2Contact** %2, align 4
  %41 = getelementptr inbounds %class.b2Contact* %40, i32 0, i32 3
  %42 = load %class.b2Contact** %41, align 4
  %43 = icmp ne %class.b2Contact* %42, null
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %39
  %45 = load %class.b2Contact** %2, align 4
  %46 = getelementptr inbounds %class.b2Contact* %45, i32 0, i32 2
  %47 = load %class.b2Contact** %46, align 4
  %48 = load %class.b2Contact** %2, align 4
  %49 = getelementptr inbounds %class.b2Contact* %48, i32 0, i32 3
  %50 = load %class.b2Contact** %49, align 4
  %51 = getelementptr inbounds %class.b2Contact* %50, i32 0, i32 2
  store %class.b2Contact* %47, %class.b2Contact** %51, align 4
  br label %52

; <label>:52                                      ; preds = %44, %39
  %53 = load %class.b2Contact** %2, align 4
  %54 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 1
  %55 = load %class.b2Contact** %54, align 4
  %56 = icmp eq %class.b2Contact* %53, %55
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %52
  %58 = load %class.b2Contact** %2, align 4
  %59 = getelementptr inbounds %class.b2Contact* %58, i32 0, i32 3
  %60 = load %class.b2Contact** %59, align 4
  %61 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 1
  store %class.b2Contact* %60, %class.b2Contact** %61, align 4
  br label %62

; <label>:62                                      ; preds = %57, %52
  %63 = load %class.b2Contact** %2, align 4
  %64 = getelementptr inbounds %class.b2Contact* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.b2ContactEdge* %64, i32 0, i32 2
  %66 = load %struct.b2ContactEdge** %65, align 4
  %67 = icmp ne %struct.b2ContactEdge* %66, null
  br i1 %67, label %68, label %78

; <label>:68                                      ; preds = %62
  %69 = load %class.b2Contact** %2, align 4
  %70 = getelementptr inbounds %class.b2Contact* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.b2ContactEdge* %70, i32 0, i32 3
  %72 = load %struct.b2ContactEdge** %71, align 4
  %73 = load %class.b2Contact** %2, align 4
  %74 = getelementptr inbounds %class.b2Contact* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.b2ContactEdge* %74, i32 0, i32 2
  %76 = load %struct.b2ContactEdge** %75, align 4
  %77 = getelementptr inbounds %struct.b2ContactEdge* %76, i32 0, i32 3
  store %struct.b2ContactEdge* %72, %struct.b2ContactEdge** %77, align 4
  br label %78

; <label>:78                                      ; preds = %68, %62
  %79 = load %class.b2Contact** %2, align 4
  %80 = getelementptr inbounds %class.b2Contact* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.b2ContactEdge* %80, i32 0, i32 3
  %82 = load %struct.b2ContactEdge** %81, align 4
  %83 = icmp ne %struct.b2ContactEdge* %82, null
  br i1 %83, label %84, label %94

; <label>:84                                      ; preds = %78
  %85 = load %class.b2Contact** %2, align 4
  %86 = getelementptr inbounds %class.b2Contact* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.b2ContactEdge* %86, i32 0, i32 2
  %88 = load %struct.b2ContactEdge** %87, align 4
  %89 = load %class.b2Contact** %2, align 4
  %90 = getelementptr inbounds %class.b2Contact* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.b2ContactEdge* %90, i32 0, i32 3
  %92 = load %struct.b2ContactEdge** %91, align 4
  %93 = getelementptr inbounds %struct.b2ContactEdge* %92, i32 0, i32 2
  store %struct.b2ContactEdge* %88, %struct.b2ContactEdge** %93, align 4
  br label %94

; <label>:94                                      ; preds = %84, %78
  %95 = load %class.b2Contact** %2, align 4
  %96 = getelementptr inbounds %class.b2Contact* %95, i32 0, i32 4
  %97 = load %class.b2Body** %bodyA, align 4
  %98 = getelementptr inbounds %class.b2Body* %97, i32 0, i32 15
  %99 = load %struct.b2ContactEdge** %98, align 4
  %100 = icmp eq %struct.b2ContactEdge* %96, %99
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %94
  %102 = load %class.b2Contact** %2, align 4
  %103 = getelementptr inbounds %class.b2Contact* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.b2ContactEdge* %103, i32 0, i32 3
  %105 = load %struct.b2ContactEdge** %104, align 4
  %106 = load %class.b2Body** %bodyA, align 4
  %107 = getelementptr inbounds %class.b2Body* %106, i32 0, i32 15
  store %struct.b2ContactEdge* %105, %struct.b2ContactEdge** %107, align 4
  br label %108

; <label>:108                                     ; preds = %101, %94
  %109 = load %class.b2Contact** %2, align 4
  %110 = getelementptr inbounds %class.b2Contact* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.b2ContactEdge* %110, i32 0, i32 2
  %112 = load %struct.b2ContactEdge** %111, align 4
  %113 = icmp ne %struct.b2ContactEdge* %112, null
  br i1 %113, label %114, label %124

; <label>:114                                     ; preds = %108
  %115 = load %class.b2Contact** %2, align 4
  %116 = getelementptr inbounds %class.b2Contact* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.b2ContactEdge* %116, i32 0, i32 3
  %118 = load %struct.b2ContactEdge** %117, align 4
  %119 = load %class.b2Contact** %2, align 4
  %120 = getelementptr inbounds %class.b2Contact* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.b2ContactEdge* %120, i32 0, i32 2
  %122 = load %struct.b2ContactEdge** %121, align 4
  %123 = getelementptr inbounds %struct.b2ContactEdge* %122, i32 0, i32 3
  store %struct.b2ContactEdge* %118, %struct.b2ContactEdge** %123, align 4
  br label %124

; <label>:124                                     ; preds = %114, %108
  %125 = load %class.b2Contact** %2, align 4
  %126 = getelementptr inbounds %class.b2Contact* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.b2ContactEdge* %126, i32 0, i32 3
  %128 = load %struct.b2ContactEdge** %127, align 4
  %129 = icmp ne %struct.b2ContactEdge* %128, null
  br i1 %129, label %130, label %140

; <label>:130                                     ; preds = %124
  %131 = load %class.b2Contact** %2, align 4
  %132 = getelementptr inbounds %class.b2Contact* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.b2ContactEdge* %132, i32 0, i32 2
  %134 = load %struct.b2ContactEdge** %133, align 4
  %135 = load %class.b2Contact** %2, align 4
  %136 = getelementptr inbounds %class.b2Contact* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.b2ContactEdge* %136, i32 0, i32 3
  %138 = load %struct.b2ContactEdge** %137, align 4
  %139 = getelementptr inbounds %struct.b2ContactEdge* %138, i32 0, i32 2
  store %struct.b2ContactEdge* %134, %struct.b2ContactEdge** %139, align 4
  br label %140

; <label>:140                                     ; preds = %130, %124
  %141 = load %class.b2Contact** %2, align 4
  %142 = getelementptr inbounds %class.b2Contact* %141, i32 0, i32 5
  %143 = load %class.b2Body** %bodyB, align 4
  %144 = getelementptr inbounds %class.b2Body* %143, i32 0, i32 15
  %145 = load %struct.b2ContactEdge** %144, align 4
  %146 = icmp eq %struct.b2ContactEdge* %142, %145
  br i1 %146, label %147, label %154

; <label>:147                                     ; preds = %140
  %148 = load %class.b2Contact** %2, align 4
  %149 = getelementptr inbounds %class.b2Contact* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.b2ContactEdge* %149, i32 0, i32 3
  %151 = load %struct.b2ContactEdge** %150, align 4
  %152 = load %class.b2Body** %bodyB, align 4
  %153 = getelementptr inbounds %class.b2Body* %152, i32 0, i32 15
  store %struct.b2ContactEdge* %151, %struct.b2ContactEdge** %153, align 4
  br label %154

; <label>:154                                     ; preds = %147, %140
  %155 = load %class.b2Contact** %2, align 4
  %156 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 5
  %157 = load %class.b2BlockAllocator** %156, align 4
  call void @_ZN9b2Contact7DestroyEPS_P16b2BlockAllocator(%class.b2Contact* %155, %class.b2BlockAllocator* %157)
  %158 = getelementptr inbounds %class.b2ContactManager* %3, i32 0, i32 2
  %159 = load i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
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

define linkonce_odr %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
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

declare void @_ZN9b2Contact7DestroyEPS_P16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

define void @_ZN16b2ContactManager7CollideEv(%class.b2ContactManager* %this) align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  %c = alloca %class.b2Contact*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %cNuke = alloca %class.b2Contact*, align 4
  %cNuke1 = alloca %class.b2Contact*, align 4
  %activeA = alloca i8, align 1
  %activeB = alloca i8, align 1
  %proxyIdA = alloca i32, align 4
  %proxyIdB = alloca i32, align 4
  %overlap = alloca i8, align 1
  %cNuke2 = alloca %class.b2Contact*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  %2 = load %class.b2ContactManager** %1
  %3 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 1
  %4 = load %class.b2Contact** %3, align 4
  store %class.b2Contact* %4, %class.b2Contact** %c, align 4
  br label %5

; <label>:5                                       ; preds = %125, %120, %93, %53, %32, %0
  %6 = load %class.b2Contact** %c, align 4
  %7 = icmp ne %class.b2Contact* %6, null
  br i1 %7, label %8, label %131

; <label>:8                                       ; preds = %5
  %9 = load %class.b2Contact** %c, align 4
  %10 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %9)
  store %class.b2Fixture* %10, %class.b2Fixture** %fixtureA, align 4
  %11 = load %class.b2Contact** %c, align 4
  %12 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %11)
  store %class.b2Fixture* %12, %class.b2Fixture** %fixtureB, align 4
  %13 = load %class.b2Contact** %c, align 4
  %14 = call i32 @_ZNK9b2Contact14GetChildIndexAEv(%class.b2Contact* %13)
  store i32 %14, i32* %indexA, align 4
  %15 = load %class.b2Contact** %c, align 4
  %16 = call i32 @_ZNK9b2Contact14GetChildIndexBEv(%class.b2Contact* %15)
  store i32 %16, i32* %indexB, align 4
  %17 = load %class.b2Fixture** %fixtureA, align 4
  %18 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %17)
  store %class.b2Body* %18, %class.b2Body** %bodyA, align 4
  %19 = load %class.b2Fixture** %fixtureB, align 4
  %20 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %19)
  store %class.b2Body* %20, %class.b2Body** %bodyB, align 4
  %21 = load %class.b2Contact** %c, align 4
  %22 = getelementptr inbounds %class.b2Contact* %21, i32 0, i32 1
  %23 = load i32* %22, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

; <label>:26                                      ; preds = %8
  %27 = load %class.b2Body** %bodyB, align 4
  %28 = load %class.b2Body** %bodyA, align 4
  %29 = call zeroext i1 @_ZNK6b2Body13ShouldCollideEPKS_(%class.b2Body* %27, %class.b2Body* %28)
  %30 = zext i1 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %26
  %33 = load %class.b2Contact** %c, align 4
  store %class.b2Contact* %33, %class.b2Contact** %cNuke, align 4
  %34 = load %class.b2Contact** %cNuke, align 4
  %35 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %34)
  store %class.b2Contact* %35, %class.b2Contact** %c, align 4
  %36 = load %class.b2Contact** %cNuke, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %2, %class.b2Contact* %36)
  br label %5

; <label>:37                                      ; preds = %26
  %38 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 3
  %39 = load %class.b2ContactFilter** %38, align 4
  %40 = icmp ne %class.b2ContactFilter* %39, null
  br i1 %40, label %41, label %58

; <label>:41                                      ; preds = %37
  %42 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 3
  %43 = load %class.b2ContactFilter** %42, align 4
  %44 = bitcast %class.b2ContactFilter* %43 to i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)***
  %45 = load i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)*** %44
  %46 = getelementptr inbounds i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)** %45, i64 2
  %47 = load i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)** %46
  %48 = load %class.b2Fixture** %fixtureA, align 4
  %49 = load %class.b2Fixture** %fixtureB, align 4
  %50 = call zeroext i1 %47(%class.b2ContactFilter* %43, %class.b2Fixture* %48, %class.b2Fixture* %49)
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %41
  %54 = load %class.b2Contact** %c, align 4
  store %class.b2Contact* %54, %class.b2Contact** %cNuke1, align 4
  %55 = load %class.b2Contact** %cNuke1, align 4
  %56 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %55)
  store %class.b2Contact* %56, %class.b2Contact** %c, align 4
  %57 = load %class.b2Contact** %cNuke1, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %2, %class.b2Contact* %57)
  br label %5

; <label>:58                                      ; preds = %41, %37
  %59 = load %class.b2Contact** %c, align 4
  %60 = getelementptr inbounds %class.b2Contact* %59, i32 0, i32 1
  %61 = load i32* %60, align 4
  %62 = and i32 %61, -9
  store i32 %62, i32* %60, align 4
  br label %63

; <label>:63                                      ; preds = %58, %8
  %64 = load %class.b2Body** %bodyA, align 4
  %65 = call zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %64)
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %63
  %67 = load %class.b2Body** %bodyA, align 4
  %68 = getelementptr inbounds %class.b2Body* %67, i32 0, i32 0
  %69 = load i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

; <label>:71                                      ; preds = %66, %63
  %72 = phi i1 [ false, %63 ], [ %70, %66 ]
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %activeA, align 1
  %74 = load %class.b2Body** %bodyB, align 4
  %75 = call zeroext i1 @_ZNK6b2Body7IsAwakeEv(%class.b2Body* %74)
  br i1 %75, label %76, label %81

; <label>:76                                      ; preds = %71
  %77 = load %class.b2Body** %bodyB, align 4
  %78 = getelementptr inbounds %class.b2Body* %77, i32 0, i32 0
  %79 = load i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

; <label>:81                                      ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %activeB, align 1
  %84 = load i8* %activeA, align 1
  %85 = trunc i8 %84 to i1
  %86 = zext i1 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

; <label>:88                                      ; preds = %81
  %89 = load i8* %activeB, align 1
  %90 = trunc i8 %89 to i1
  %91 = zext i1 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

; <label>:93                                      ; preds = %88
  %94 = load %class.b2Contact** %c, align 4
  %95 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %94)
  store %class.b2Contact* %95, %class.b2Contact** %c, align 4
  br label %5

; <label>:96                                      ; preds = %88, %81
  %97 = load i32* %indexA, align 4
  %98 = load %class.b2Fixture** %fixtureA, align 4
  %99 = getelementptr inbounds %class.b2Fixture* %98, i32 0, i32 6
  %100 = load %struct.b2FixtureProxy** %99, align 4
  %101 = getelementptr inbounds %struct.b2FixtureProxy* %100, i32 %97
  %102 = getelementptr inbounds %struct.b2FixtureProxy* %101, i32 0, i32 3
  %103 = load i32* %102, align 4
  store i32 %103, i32* %proxyIdA, align 4
  %104 = load i32* %indexB, align 4
  %105 = load %class.b2Fixture** %fixtureB, align 4
  %106 = getelementptr inbounds %class.b2Fixture* %105, i32 0, i32 6
  %107 = load %struct.b2FixtureProxy** %106, align 4
  %108 = getelementptr inbounds %struct.b2FixtureProxy* %107, i32 %104
  %109 = getelementptr inbounds %struct.b2FixtureProxy* %108, i32 0, i32 3
  %110 = load i32* %109, align 4
  store i32 %110, i32* %proxyIdB, align 4
  %111 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 0
  %112 = load i32* %proxyIdA, align 4
  %113 = load i32* %proxyIdB, align 4
  %114 = call zeroext i1 @_ZNK12b2BroadPhase11TestOverlapEii(%class.b2BroadPhase* %111, i32 %112, i32 %113)
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %overlap, align 1
  %116 = load i8* %overlap, align 1
  %117 = trunc i8 %116 to i1
  %118 = zext i1 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

; <label>:120                                     ; preds = %96
  %121 = load %class.b2Contact** %c, align 4
  store %class.b2Contact* %121, %class.b2Contact** %cNuke2, align 4
  %122 = load %class.b2Contact** %cNuke2, align 4
  %123 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %122)
  store %class.b2Contact* %123, %class.b2Contact** %c, align 4
  %124 = load %class.b2Contact** %cNuke2, align 4
  call void @_ZN16b2ContactManager7DestroyEP9b2Contact(%class.b2ContactManager* %2, %class.b2Contact* %124)
  br label %5

; <label>:125                                     ; preds = %96
  %126 = load %class.b2Contact** %c, align 4
  %127 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 4
  %128 = load %class.b2ContactListener** %127, align 4
  call void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact* %126, %class.b2ContactListener* %128)
  %129 = load %class.b2Contact** %c, align 4
  %130 = call %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %129)
  store %class.b2Contact* %130, %class.b2Contact** %c, align 4
  br label %5

; <label>:131                                     ; preds = %5
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

declare zeroext i1 @_ZNK6b2Body13ShouldCollideEPKS_(%class.b2Body*, %class.b2Body*)

define linkonce_odr %class.b2Contact* @_ZN9b2Contact7GetNextEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 3
  %4 = load %class.b2Contact** %3, align 4
  ret %class.b2Contact* %4
}

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

define linkonce_odr zeroext i1 @_ZNK12b2BroadPhase11TestOverlapEii(%class.b2BroadPhase* %this, i32 %proxyIdA, i32 %proxyIdB) inlinehint align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %aabbA = alloca %struct.b2AABB*, align 4
  %aabbB = alloca %struct.b2AABB*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store i32 %proxyIdA, i32* %2, align 4
  store i32 %proxyIdB, i32* %3, align 4
  %4 = load %class.b2BroadPhase** %1
  %5 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  %6 = load i32* %2, align 4
  %7 = call %struct.b2AABB* @_ZNK13b2DynamicTree10GetFatAABBEi(%class.b2DynamicTree* %5, i32 %6)
  store %struct.b2AABB* %7, %struct.b2AABB** %aabbA, align 4
  %8 = getelementptr inbounds %class.b2BroadPhase* %4, i32 0, i32 0
  %9 = load i32* %3, align 4
  %10 = call %struct.b2AABB* @_ZNK13b2DynamicTree10GetFatAABBEi(%class.b2DynamicTree* %8, i32 %9)
  store %struct.b2AABB* %10, %struct.b2AABB** %aabbB, align 4
  %11 = load %struct.b2AABB** %aabbA
  %12 = load %struct.b2AABB** %aabbB
  %13 = call zeroext i1 @_Z13b2TestOverlapRK6b2AABBS1_(%struct.b2AABB* %11, %struct.b2AABB* %12)
  ret i1 %13
}

declare void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact*, %class.b2ContactListener*)

define void @_ZN16b2ContactManager15FindNewContactsEv(%class.b2ContactManager* %this) align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  %2 = load %class.b2ContactManager** %1
  %3 = getelementptr inbounds %class.b2ContactManager* %2, i32 0, i32 0
  call void @_ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_(%class.b2BroadPhase* %3, %class.b2ContactManager* %2)
  ret void
}

define linkonce_odr void @_ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_(%class.b2BroadPhase* %this, %class.b2ContactManager* %callback) align 2 {
  %1 = alloca %class.b2BroadPhase*, align 4
  %2 = alloca %class.b2ContactManager*, align 4
  %i = alloca i32, align 4
  %fatAABB = alloca %struct.b2AABB*, align 4
  %i1 = alloca i32, align 4
  %primaryPair = alloca %struct.b2Pair*, align 4
  %userDataA = alloca i8*, align 4
  %userDataB = alloca i8*, align 4
  %pair = alloca %struct.b2Pair*, align 4
  store %class.b2BroadPhase* %this, %class.b2BroadPhase** %1, align 4
  store %class.b2ContactManager* %callback, %class.b2ContactManager** %2, align 4
  %3 = load %class.b2BroadPhase** %1
  %4 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 7
  store i32 0, i32* %4, align 4
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %28, %0
  %6 = load i32* %i, align 4
  %7 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %31

; <label>:10                                      ; preds = %5
  %11 = load i32* %i, align 4
  %12 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 2
  %13 = load i32** %12, align 4
  %14 = getelementptr inbounds i32* %13, i32 %11
  %15 = load i32* %14
  %16 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 8
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 8
  %18 = load i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %10
  br label %28

; <label>:21                                      ; preds = %10
  %22 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %23 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 8
  %24 = load i32* %23, align 4
  %25 = call %struct.b2AABB* @_ZNK13b2DynamicTree10GetFatAABBEi(%class.b2DynamicTree* %22, i32 %24)
  store %struct.b2AABB* %25, %struct.b2AABB** %fatAABB, align 4
  %26 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %27 = load %struct.b2AABB** %fatAABB
  call void @_ZNK13b2DynamicTree5QueryI12b2BroadPhaseEEvPT_RK6b2AABB(%class.b2DynamicTree* %26, %class.b2BroadPhase* %3, %struct.b2AABB* %27)
  br label %28

; <label>:28                                      ; preds = %21, %20
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %5

; <label>:31                                      ; preds = %5
  %32 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 5
  %34 = load %struct.b2Pair** %33, align 4
  %35 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 5
  %36 = load %struct.b2Pair** %35, align 4
  %37 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 7
  %38 = load i32* %37, align 4
  %39 = getelementptr inbounds %struct.b2Pair* %36, i32 %38
  call void @_ZSt4sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %34, %struct.b2Pair* %39, i1 (%struct.b2Pair*, %struct.b2Pair*)* @_Z14b2PairLessThanRK6b2PairS1_)
  store i32 0, i32* %i1, align 4
  br label %40

; <label>:40                                      ; preds = %94, %31
  %41 = load i32* %i1, align 4
  %42 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 7
  %43 = load i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %95

; <label>:45                                      ; preds = %40
  %46 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 5
  %47 = load %struct.b2Pair** %46, align 4
  %48 = load i32* %i1, align 4
  %49 = getelementptr inbounds %struct.b2Pair* %47, i32 %48
  store %struct.b2Pair* %49, %struct.b2Pair** %primaryPair, align 4
  %50 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %51 = load %struct.b2Pair** %primaryPair, align 4
  %52 = getelementptr inbounds %struct.b2Pair* %51, i32 0, i32 0
  %53 = load i32* %52, align 4
  %54 = call i8* @_ZNK13b2DynamicTree11GetUserDataEi(%class.b2DynamicTree* %50, i32 %53)
  store i8* %54, i8** %userDataA, align 4
  %55 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 0
  %56 = load %struct.b2Pair** %primaryPair, align 4
  %57 = getelementptr inbounds %struct.b2Pair* %56, i32 0, i32 1
  %58 = load i32* %57, align 4
  %59 = call i8* @_ZNK13b2DynamicTree11GetUserDataEi(%class.b2DynamicTree* %55, i32 %58)
  store i8* %59, i8** %userDataB, align 4
  %60 = load %class.b2ContactManager** %2, align 4
  %61 = load i8** %userDataA, align 4
  %62 = load i8** %userDataB, align 4
  call void @_ZN16b2ContactManager7AddPairEPvS0_(%class.b2ContactManager* %60, i8* %61, i8* %62)
  %63 = load i32* %i1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i1, align 4
  br label %65

; <label>:65                                      ; preds = %91, %45
  %66 = load i32* %i1, align 4
  %67 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 7
  %68 = load i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %94

; <label>:70                                      ; preds = %65
  %71 = getelementptr inbounds %class.b2BroadPhase* %3, i32 0, i32 5
  %72 = load %struct.b2Pair** %71, align 4
  %73 = load i32* %i1, align 4
  %74 = getelementptr inbounds %struct.b2Pair* %72, i32 %73
  store %struct.b2Pair* %74, %struct.b2Pair** %pair, align 4
  %75 = load %struct.b2Pair** %pair, align 4
  %76 = getelementptr inbounds %struct.b2Pair* %75, i32 0, i32 0
  %77 = load i32* %76, align 4
  %78 = load %struct.b2Pair** %primaryPair, align 4
  %79 = getelementptr inbounds %struct.b2Pair* %78, i32 0, i32 0
  %80 = load i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %90, label %82

; <label>:82                                      ; preds = %70
  %83 = load %struct.b2Pair** %pair, align 4
  %84 = getelementptr inbounds %struct.b2Pair* %83, i32 0, i32 1
  %85 = load i32* %84, align 4
  %86 = load %struct.b2Pair** %primaryPair, align 4
  %87 = getelementptr inbounds %struct.b2Pair* %86, i32 0, i32 1
  %88 = load i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %82, %70
  br label %94

; <label>:91                                      ; preds = %82
  %92 = load i32* %i1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i1, align 4
  br label %65

; <label>:94                                      ; preds = %90, %65
  br label %40

; <label>:95                                      ; preds = %40
  ret void
}

define void @_ZN16b2ContactManager7AddPairEPvS0_(%class.b2ContactManager* %this, i8* %proxyUserDataA, i8* %proxyUserDataB) align 2 {
  %1 = alloca %class.b2ContactManager*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %proxyA = alloca %struct.b2FixtureProxy*, align 4
  %proxyB = alloca %struct.b2FixtureProxy*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %edge = alloca %struct.b2ContactEdge*, align 4
  %fA = alloca %class.b2Fixture*, align 4
  %fB = alloca %class.b2Fixture*, align 4
  %iA = alloca i32, align 4
  %iB = alloca i32, align 4
  %c = alloca %class.b2Contact*, align 4
  store %class.b2ContactManager* %this, %class.b2ContactManager** %1, align 4
  store i8* %proxyUserDataA, i8** %2, align 4
  store i8* %proxyUserDataB, i8** %3, align 4
  %4 = load %class.b2ContactManager** %1
  %5 = load i8** %2, align 4
  %6 = bitcast i8* %5 to %struct.b2FixtureProxy*
  store %struct.b2FixtureProxy* %6, %struct.b2FixtureProxy** %proxyA, align 4
  %7 = load i8** %3, align 4
  %8 = bitcast i8* %7 to %struct.b2FixtureProxy*
  store %struct.b2FixtureProxy* %8, %struct.b2FixtureProxy** %proxyB, align 4
  %9 = load %struct.b2FixtureProxy** %proxyA, align 4
  %10 = getelementptr inbounds %struct.b2FixtureProxy* %9, i32 0, i32 1
  %11 = load %class.b2Fixture** %10, align 4
  store %class.b2Fixture* %11, %class.b2Fixture** %fixtureA, align 4
  %12 = load %struct.b2FixtureProxy** %proxyB, align 4
  %13 = getelementptr inbounds %struct.b2FixtureProxy* %12, i32 0, i32 1
  %14 = load %class.b2Fixture** %13, align 4
  store %class.b2Fixture* %14, %class.b2Fixture** %fixtureB, align 4
  %15 = load %struct.b2FixtureProxy** %proxyA, align 4
  %16 = getelementptr inbounds %struct.b2FixtureProxy* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  store i32 %17, i32* %indexA, align 4
  %18 = load %struct.b2FixtureProxy** %proxyB, align 4
  %19 = getelementptr inbounds %struct.b2FixtureProxy* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  store i32 %20, i32* %indexB, align 4
  %21 = load %class.b2Fixture** %fixtureA, align 4
  %22 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %21)
  store %class.b2Body* %22, %class.b2Body** %bodyA, align 4
  %23 = load %class.b2Fixture** %fixtureB, align 4
  %24 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %23)
  store %class.b2Body* %24, %class.b2Body** %bodyB, align 4
  %25 = load %class.b2Body** %bodyA, align 4
  %26 = load %class.b2Body** %bodyB, align 4
  %27 = icmp eq %class.b2Body* %25, %26
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  br label %232

; <label>:29                                      ; preds = %0
  %30 = load %class.b2Body** %bodyB, align 4
  %31 = call %struct.b2ContactEdge* @_ZN6b2Body14GetContactListEv(%class.b2Body* %30)
  store %struct.b2ContactEdge* %31, %struct.b2ContactEdge** %edge, align 4
  br label %32

; <label>:32                                      ; preds = %92, %29
  %33 = load %struct.b2ContactEdge** %edge, align 4
  %34 = icmp ne %struct.b2ContactEdge* %33, null
  br i1 %34, label %35, label %96

; <label>:35                                      ; preds = %32
  %36 = load %struct.b2ContactEdge** %edge, align 4
  %37 = getelementptr inbounds %struct.b2ContactEdge* %36, i32 0, i32 0
  %38 = load %class.b2Body** %37, align 4
  %39 = load %class.b2Body** %bodyA, align 4
  %40 = icmp eq %class.b2Body* %38, %39
  br i1 %40, label %41, label %92

; <label>:41                                      ; preds = %35
  %42 = load %struct.b2ContactEdge** %edge, align 4
  %43 = getelementptr inbounds %struct.b2ContactEdge* %42, i32 0, i32 1
  %44 = load %class.b2Contact** %43, align 4
  %45 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %44)
  store %class.b2Fixture* %45, %class.b2Fixture** %fA, align 4
  %46 = load %struct.b2ContactEdge** %edge, align 4
  %47 = getelementptr inbounds %struct.b2ContactEdge* %46, i32 0, i32 1
  %48 = load %class.b2Contact** %47, align 4
  %49 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %48)
  store %class.b2Fixture* %49, %class.b2Fixture** %fB, align 4
  %50 = load %struct.b2ContactEdge** %edge, align 4
  %51 = getelementptr inbounds %struct.b2ContactEdge* %50, i32 0, i32 1
  %52 = load %class.b2Contact** %51, align 4
  %53 = call i32 @_ZNK9b2Contact14GetChildIndexAEv(%class.b2Contact* %52)
  store i32 %53, i32* %iA, align 4
  %54 = load %struct.b2ContactEdge** %edge, align 4
  %55 = getelementptr inbounds %struct.b2ContactEdge* %54, i32 0, i32 1
  %56 = load %class.b2Contact** %55, align 4
  %57 = call i32 @_ZNK9b2Contact14GetChildIndexBEv(%class.b2Contact* %56)
  store i32 %57, i32* %iB, align 4
  %58 = load %class.b2Fixture** %fA, align 4
  %59 = load %class.b2Fixture** %fixtureA, align 4
  %60 = icmp eq %class.b2Fixture* %58, %59
  br i1 %60, label %61, label %74

; <label>:61                                      ; preds = %41
  %62 = load %class.b2Fixture** %fB, align 4
  %63 = load %class.b2Fixture** %fixtureB, align 4
  %64 = icmp eq %class.b2Fixture* %62, %63
  br i1 %64, label %65, label %74

; <label>:65                                      ; preds = %61
  %66 = load i32* %iA, align 4
  %67 = load i32* %indexA, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

; <label>:69                                      ; preds = %65
  %70 = load i32* %iB, align 4
  %71 = load i32* %indexB, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %69
  br label %232

; <label>:74                                      ; preds = %69, %65, %61, %41
  %75 = load %class.b2Fixture** %fA, align 4
  %76 = load %class.b2Fixture** %fixtureB, align 4
  %77 = icmp eq %class.b2Fixture* %75, %76
  br i1 %77, label %78, label %91

; <label>:78                                      ; preds = %74
  %79 = load %class.b2Fixture** %fB, align 4
  %80 = load %class.b2Fixture** %fixtureA, align 4
  %81 = icmp eq %class.b2Fixture* %79, %80
  br i1 %81, label %82, label %91

; <label>:82                                      ; preds = %78
  %83 = load i32* %iA, align 4
  %84 = load i32* %indexB, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

; <label>:86                                      ; preds = %82
  %87 = load i32* %iB, align 4
  %88 = load i32* %indexA, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %86
  br label %232

; <label>:91                                      ; preds = %86, %82, %78, %74
  br label %92

; <label>:92                                      ; preds = %91, %35
  %93 = load %struct.b2ContactEdge** %edge, align 4
  %94 = getelementptr inbounds %struct.b2ContactEdge* %93, i32 0, i32 3
  %95 = load %struct.b2ContactEdge** %94, align 4
  store %struct.b2ContactEdge* %95, %struct.b2ContactEdge** %edge, align 4
  br label %32

; <label>:96                                      ; preds = %32
  %97 = load %class.b2Body** %bodyB, align 4
  %98 = load %class.b2Body** %bodyA, align 4
  %99 = call zeroext i1 @_ZNK6b2Body13ShouldCollideEPKS_(%class.b2Body* %97, %class.b2Body* %98)
  %100 = zext i1 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %96
  br label %232

; <label>:103                                     ; preds = %96
  %104 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 3
  %105 = load %class.b2ContactFilter** %104, align 4
  %106 = icmp ne %class.b2ContactFilter* %105, null
  br i1 %106, label %107, label %120

; <label>:107                                     ; preds = %103
  %108 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 3
  %109 = load %class.b2ContactFilter** %108, align 4
  %110 = bitcast %class.b2ContactFilter* %109 to i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)***
  %111 = load i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)*** %110
  %112 = getelementptr inbounds i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)** %111, i64 2
  %113 = load i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)** %112
  %114 = load %class.b2Fixture** %fixtureA, align 4
  %115 = load %class.b2Fixture** %fixtureB, align 4
  %116 = call zeroext i1 %113(%class.b2ContactFilter* %109, %class.b2Fixture* %114, %class.b2Fixture* %115)
  %117 = zext i1 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %107
  br label %232

; <label>:120                                     ; preds = %107, %103
  %121 = load %class.b2Fixture** %fixtureA, align 4
  %122 = load i32* %indexA, align 4
  %123 = load %class.b2Fixture** %fixtureB, align 4
  %124 = load i32* %indexB, align 4
  %125 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 5
  %126 = load %class.b2BlockAllocator** %125, align 4
  %127 = call %class.b2Contact* @_ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture* %121, i32 %122, %class.b2Fixture* %123, i32 %124, %class.b2BlockAllocator* %126)
  store %class.b2Contact* %127, %class.b2Contact** %c, align 4
  %128 = load %class.b2Contact** %c, align 4
  %129 = icmp eq %class.b2Contact* %128, null
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %120
  br label %232

; <label>:131                                     ; preds = %120
  %132 = load %class.b2Contact** %c, align 4
  %133 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %132)
  store %class.b2Fixture* %133, %class.b2Fixture** %fixtureA, align 4
  %134 = load %class.b2Contact** %c, align 4
  %135 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %134)
  store %class.b2Fixture* %135, %class.b2Fixture** %fixtureB, align 4
  %136 = load %class.b2Contact** %c, align 4
  %137 = call i32 @_ZNK9b2Contact14GetChildIndexAEv(%class.b2Contact* %136)
  store i32 %137, i32* %indexA, align 4
  %138 = load %class.b2Contact** %c, align 4
  %139 = call i32 @_ZNK9b2Contact14GetChildIndexBEv(%class.b2Contact* %138)
  store i32 %139, i32* %indexB, align 4
  %140 = load %class.b2Fixture** %fixtureA, align 4
  %141 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %140)
  store %class.b2Body* %141, %class.b2Body** %bodyA, align 4
  %142 = load %class.b2Fixture** %fixtureB, align 4
  %143 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %142)
  store %class.b2Body* %143, %class.b2Body** %bodyB, align 4
  %144 = load %class.b2Contact** %c, align 4
  %145 = getelementptr inbounds %class.b2Contact* %144, i32 0, i32 2
  store %class.b2Contact* null, %class.b2Contact** %145, align 4
  %146 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 1
  %147 = load %class.b2Contact** %146, align 4
  %148 = load %class.b2Contact** %c, align 4
  %149 = getelementptr inbounds %class.b2Contact* %148, i32 0, i32 3
  store %class.b2Contact* %147, %class.b2Contact** %149, align 4
  %150 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 1
  %151 = load %class.b2Contact** %150, align 4
  %152 = icmp ne %class.b2Contact* %151, null
  br i1 %152, label %153, label %158

; <label>:153                                     ; preds = %131
  %154 = load %class.b2Contact** %c, align 4
  %155 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 1
  %156 = load %class.b2Contact** %155, align 4
  %157 = getelementptr inbounds %class.b2Contact* %156, i32 0, i32 2
  store %class.b2Contact* %154, %class.b2Contact** %157, align 4
  br label %158

; <label>:158                                     ; preds = %153, %131
  %159 = load %class.b2Contact** %c, align 4
  %160 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 1
  store %class.b2Contact* %159, %class.b2Contact** %160, align 4
  %161 = load %class.b2Contact** %c, align 4
  %162 = load %class.b2Contact** %c, align 4
  %163 = getelementptr inbounds %class.b2Contact* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.b2ContactEdge* %163, i32 0, i32 1
  store %class.b2Contact* %161, %class.b2Contact** %164, align 4
  %165 = load %class.b2Body** %bodyB, align 4
  %166 = load %class.b2Contact** %c, align 4
  %167 = getelementptr inbounds %class.b2Contact* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.b2ContactEdge* %167, i32 0, i32 0
  store %class.b2Body* %165, %class.b2Body** %168, align 4
  %169 = load %class.b2Contact** %c, align 4
  %170 = getelementptr inbounds %class.b2Contact* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.b2ContactEdge* %170, i32 0, i32 2
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %171, align 4
  %172 = load %class.b2Body** %bodyA, align 4
  %173 = getelementptr inbounds %class.b2Body* %172, i32 0, i32 15
  %174 = load %struct.b2ContactEdge** %173, align 4
  %175 = load %class.b2Contact** %c, align 4
  %176 = getelementptr inbounds %class.b2Contact* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.b2ContactEdge* %176, i32 0, i32 3
  store %struct.b2ContactEdge* %174, %struct.b2ContactEdge** %177, align 4
  %178 = load %class.b2Body** %bodyA, align 4
  %179 = getelementptr inbounds %class.b2Body* %178, i32 0, i32 15
  %180 = load %struct.b2ContactEdge** %179, align 4
  %181 = icmp ne %struct.b2ContactEdge* %180, null
  br i1 %181, label %182, label %189

; <label>:182                                     ; preds = %158
  %183 = load %class.b2Contact** %c, align 4
  %184 = getelementptr inbounds %class.b2Contact* %183, i32 0, i32 4
  %185 = load %class.b2Body** %bodyA, align 4
  %186 = getelementptr inbounds %class.b2Body* %185, i32 0, i32 15
  %187 = load %struct.b2ContactEdge** %186, align 4
  %188 = getelementptr inbounds %struct.b2ContactEdge* %187, i32 0, i32 2
  store %struct.b2ContactEdge* %184, %struct.b2ContactEdge** %188, align 4
  br label %189

; <label>:189                                     ; preds = %182, %158
  %190 = load %class.b2Contact** %c, align 4
  %191 = getelementptr inbounds %class.b2Contact* %190, i32 0, i32 4
  %192 = load %class.b2Body** %bodyA, align 4
  %193 = getelementptr inbounds %class.b2Body* %192, i32 0, i32 15
  store %struct.b2ContactEdge* %191, %struct.b2ContactEdge** %193, align 4
  %194 = load %class.b2Contact** %c, align 4
  %195 = load %class.b2Contact** %c, align 4
  %196 = getelementptr inbounds %class.b2Contact* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.b2ContactEdge* %196, i32 0, i32 1
  store %class.b2Contact* %194, %class.b2Contact** %197, align 4
  %198 = load %class.b2Body** %bodyA, align 4
  %199 = load %class.b2Contact** %c, align 4
  %200 = getelementptr inbounds %class.b2Contact* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.b2ContactEdge* %200, i32 0, i32 0
  store %class.b2Body* %198, %class.b2Body** %201, align 4
  %202 = load %class.b2Contact** %c, align 4
  %203 = getelementptr inbounds %class.b2Contact* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.b2ContactEdge* %203, i32 0, i32 2
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %204, align 4
  %205 = load %class.b2Body** %bodyB, align 4
  %206 = getelementptr inbounds %class.b2Body* %205, i32 0, i32 15
  %207 = load %struct.b2ContactEdge** %206, align 4
  %208 = load %class.b2Contact** %c, align 4
  %209 = getelementptr inbounds %class.b2Contact* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.b2ContactEdge* %209, i32 0, i32 3
  store %struct.b2ContactEdge* %207, %struct.b2ContactEdge** %210, align 4
  %211 = load %class.b2Body** %bodyB, align 4
  %212 = getelementptr inbounds %class.b2Body* %211, i32 0, i32 15
  %213 = load %struct.b2ContactEdge** %212, align 4
  %214 = icmp ne %struct.b2ContactEdge* %213, null
  br i1 %214, label %215, label %222

; <label>:215                                     ; preds = %189
  %216 = load %class.b2Contact** %c, align 4
  %217 = getelementptr inbounds %class.b2Contact* %216, i32 0, i32 5
  %218 = load %class.b2Body** %bodyB, align 4
  %219 = getelementptr inbounds %class.b2Body* %218, i32 0, i32 15
  %220 = load %struct.b2ContactEdge** %219, align 4
  %221 = getelementptr inbounds %struct.b2ContactEdge* %220, i32 0, i32 2
  store %struct.b2ContactEdge* %217, %struct.b2ContactEdge** %221, align 4
  br label %222

; <label>:222                                     ; preds = %215, %189
  %223 = load %class.b2Contact** %c, align 4
  %224 = getelementptr inbounds %class.b2Contact* %223, i32 0, i32 5
  %225 = load %class.b2Body** %bodyB, align 4
  %226 = getelementptr inbounds %class.b2Body* %225, i32 0, i32 15
  store %struct.b2ContactEdge* %224, %struct.b2ContactEdge** %226, align 4
  %227 = load %class.b2Body** %bodyA, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %227, i1 zeroext true)
  %228 = load %class.b2Body** %bodyB, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %228, i1 zeroext true)
  %229 = getelementptr inbounds %class.b2ContactManager* %4, i32 0, i32 2
  %230 = load i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  br label %232

; <label>:232                                     ; preds = %222, %130, %119, %102, %90, %73, %28
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

declare %class.b2Contact* @_ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

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
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i32 0, i32 0), i32 159, i8* getelementptr inbounds ([53 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree10GetFatAABBEi, i32 0, i32 0)) noreturn nounwind
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

define linkonce_odr void @_ZNK13b2DynamicTree5QueryI12b2BroadPhaseEEvPT_RK6b2AABB(%class.b2DynamicTree* %this, %class.b2BroadPhase* %callback, %struct.b2AABB* %aabb) inlinehint align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca %class.b2BroadPhase*, align 4
  %3 = alloca %struct.b2AABB*, align 4
  %stack = alloca %class.b2GrowableStack, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %nodeId = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %proceed = alloca i8, align 1
  %6 = alloca i32
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store %class.b2BroadPhase* %callback, %class.b2BroadPhase** %2, align 4
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
  %39 = load %class.b2BroadPhase** %2, align 4
  %40 = load i32* %nodeId, align 4
  %41 = invoke zeroext i1 @_ZN12b2BroadPhase13QueryCallbackEi(%class.b2BroadPhase* %39, i32 %40)
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

define linkonce_odr void @_ZSt4sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  %5 = load %struct.b2Pair** %2, align 4
  %6 = icmp ne %struct.b2Pair* %4, %5
  br i1 %6, label %7, label %22

; <label>:7                                       ; preds = %0
  %8 = load %struct.b2Pair** %1, align 4
  %9 = load %struct.b2Pair** %2, align 4
  %10 = load %struct.b2Pair** %2, align 4
  %11 = load %struct.b2Pair** %1, align 4
  %12 = ptrtoint %struct.b2Pair* %10 to i32
  %13 = ptrtoint %struct.b2Pair* %11 to i32
  %14 = sub i32 %12, %13
  %15 = sdiv exact i32 %14, 12
  %16 = call i32 @_ZSt4__lgi(i32 %15)
  %17 = mul nsw i32 %16, 2
  %18 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_(%struct.b2Pair* %8, %struct.b2Pair* %9, i32 %17, i1 (%struct.b2Pair*, %struct.b2Pair*)* %18)
  %19 = load %struct.b2Pair** %1, align 4
  %20 = load %struct.b2Pair** %2, align 4
  %21 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt22__final_insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %19, %struct.b2Pair* %20, i1 (%struct.b2Pair*, %struct.b2Pair*)* %21)
  br label %22

; <label>:22                                      ; preds = %7, %0
  ret void
}

define linkonce_odr zeroext i1 @_Z14b2PairLessThanRK6b2PairS1_(%struct.b2Pair* %pair1, %struct.b2Pair* %pair2) nounwind inlinehint {
  %1 = alloca i1, align 1
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %pair1, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %pair2, %struct.b2Pair** %3, align 4
  %4 = load %struct.b2Pair** %2
  %5 = getelementptr inbounds %struct.b2Pair* %4, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = load %struct.b2Pair** %3
  %8 = getelementptr inbounds %struct.b2Pair* %7, i32 0, i32 0
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i1 true, i1* %1
  br label %29

; <label>:12                                      ; preds = %0
  %13 = load %struct.b2Pair** %2
  %14 = getelementptr inbounds %struct.b2Pair* %13, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = load %struct.b2Pair** %3
  %17 = getelementptr inbounds %struct.b2Pair* %16, i32 0, i32 0
  %18 = load i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %28

; <label>:20                                      ; preds = %12
  %21 = load %struct.b2Pair** %2
  %22 = getelementptr inbounds %struct.b2Pair* %21, i32 0, i32 1
  %23 = load i32* %22, align 4
  %24 = load %struct.b2Pair** %3
  %25 = getelementptr inbounds %struct.b2Pair* %24, i32 0, i32 1
  %26 = load i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  store i1 %27, i1* %1
  br label %29

; <label>:28                                      ; preds = %12
  store i1 false, i1* %1
  br label %29

; <label>:29                                      ; preds = %28, %20, %11
  %30 = load i1* %1
  ret i1 %30
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
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree11GetUserDataEi, i32 0, i32 0)) noreturn nounwind
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i32 %__depth_limit, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__cut = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i32 %__depth_limit, i32* %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  br label %5

; <label>:5                                       ; preds = %21, %0
  %6 = load %struct.b2Pair** %2, align 4
  %7 = load %struct.b2Pair** %1, align 4
  %8 = ptrtoint %struct.b2Pair* %6 to i32
  %9 = ptrtoint %struct.b2Pair* %7 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 12
  %12 = icmp sgt i32 %11, 16
  br i1 %12, label %13, label %33

; <label>:13                                      ; preds = %5
  %14 = load i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %13
  %17 = load %struct.b2Pair** %1, align 4
  %18 = load %struct.b2Pair** %2, align 4
  %19 = load %struct.b2Pair** %2, align 4
  %20 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt12partial_sortIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %17, %struct.b2Pair* %18, %struct.b2Pair* %19, i1 (%struct.b2Pair*, %struct.b2Pair*)* %20)
  br label %33

; <label>:21                                      ; preds = %13
  %22 = load i32* %3, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %3, align 4
  %24 = load %struct.b2Pair** %1, align 4
  %25 = load %struct.b2Pair** %2, align 4
  %26 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %27 = call %struct.b2Pair* @_ZSt27__unguarded_partition_pivotIP6b2PairPFbRKS0_S3_EET_S6_S6_T0_(%struct.b2Pair* %24, %struct.b2Pair* %25, i1 (%struct.b2Pair*, %struct.b2Pair*)* %26)
  store %struct.b2Pair* %27, %struct.b2Pair** %__cut, align 4
  %28 = load %struct.b2Pair** %__cut, align 4
  %29 = load %struct.b2Pair** %2, align 4
  %30 = load i32* %3, align 4
  %31 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_(%struct.b2Pair* %28, %struct.b2Pair* %29, i32 %30, i1 (%struct.b2Pair*, %struct.b2Pair*)* %31)
  %32 = load %struct.b2Pair** %__cut, align 4
  store %struct.b2Pair* %32, %struct.b2Pair** %2, align 4
  br label %5

; <label>:33                                      ; preds = %16, %5
  ret void
}

define linkonce_odr i32 @_ZSt4__lgi(i32 %__n) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %__n, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 @llvm.ctlz.i32(i32 %2)
  %4 = sub i32 31, %3
  ret i32 %4
}

define linkonce_odr void @_ZSt22__final_insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %4 = load %struct.b2Pair** %2, align 4
  %5 = load %struct.b2Pair** %1, align 4
  %6 = ptrtoint %struct.b2Pair* %4 to i32
  %7 = ptrtoint %struct.b2Pair* %5 to i32
  %8 = sub i32 %6, %7
  %9 = sdiv exact i32 %8, 12
  %10 = icmp sgt i32 %9, 16
  br i1 %10, label %11, label %20

; <label>:11                                      ; preds = %0
  %12 = load %struct.b2Pair** %1, align 4
  %13 = load %struct.b2Pair** %1, align 4
  %14 = getelementptr inbounds %struct.b2Pair* %13, i32 16
  %15 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %12, %struct.b2Pair* %14, i1 (%struct.b2Pair*, %struct.b2Pair*)* %15)
  %16 = load %struct.b2Pair** %1, align 4
  %17 = getelementptr inbounds %struct.b2Pair* %16, i32 16
  %18 = load %struct.b2Pair** %2, align 4
  %19 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt26__unguarded_insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %17, %struct.b2Pair* %18, i1 (%struct.b2Pair*, %struct.b2Pair*)* %19)
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load %struct.b2Pair** %1, align 4
  %22 = load %struct.b2Pair** %2, align 4
  %23 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %21, %struct.b2Pair* %22, i1 (%struct.b2Pair*, %struct.b2Pair*)* %23)
  br label %24

; <label>:24                                      ; preds = %20, %11
  ret void
}

define linkonce_odr void @_ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__i = alloca %struct.b2Pair*, align 4
  %__val = alloca %struct.b2Pair, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  %5 = load %struct.b2Pair** %2, align 4
  %6 = icmp eq %struct.b2Pair* %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %39

; <label>:8                                       ; preds = %0
  %9 = load %struct.b2Pair** %1, align 4
  %10 = getelementptr inbounds %struct.b2Pair* %9, i32 1
  store %struct.b2Pair* %10, %struct.b2Pair** %__i, align 4
  br label %11

; <label>:11                                      ; preds = %36, %8
  %12 = load %struct.b2Pair** %__i, align 4
  %13 = load %struct.b2Pair** %2, align 4
  %14 = icmp ne %struct.b2Pair* %12, %13
  br i1 %14, label %15, label %39

; <label>:15                                      ; preds = %11
  %16 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %17 = load %struct.b2Pair** %__i, align 4
  %18 = load %struct.b2Pair** %1, align 4
  %19 = call zeroext i1 %16(%struct.b2Pair* %17, %struct.b2Pair* %18)
  br i1 %19, label %20, label %32

; <label>:20                                      ; preds = %15
  %21 = load %struct.b2Pair** %__i, align 4
  %22 = bitcast %struct.b2Pair* %__val to i8*
  %23 = bitcast %struct.b2Pair* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 12, i32 4, i1 false)
  %24 = load %struct.b2Pair** %1, align 4
  %25 = load %struct.b2Pair** %__i, align 4
  %26 = load %struct.b2Pair** %__i, align 4
  %27 = getelementptr inbounds %struct.b2Pair* %26, i32 1
  %28 = call %struct.b2Pair* @_ZSt13copy_backwardIP6b2PairS1_ET0_T_S3_S2_(%struct.b2Pair* %24, %struct.b2Pair* %25, %struct.b2Pair* %27)
  %29 = load %struct.b2Pair** %1, align 4
  %30 = bitcast %struct.b2Pair* %29 to i8*
  %31 = bitcast %struct.b2Pair* %__val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 12, i32 4, i1 false)
  br label %35

; <label>:32                                      ; preds = %15
  %33 = load %struct.b2Pair** %__i, align 4
  %34 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt25__unguarded_linear_insertIP6b2PairPFbRKS0_S3_EEvT_T0_(%struct.b2Pair* %33, i1 (%struct.b2Pair*, %struct.b2Pair*)* %34)
  br label %35

; <label>:35                                      ; preds = %32, %20
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load %struct.b2Pair** %__i, align 4
  %38 = getelementptr inbounds %struct.b2Pair* %37, i32 1
  store %struct.b2Pair* %38, %struct.b2Pair** %__i, align 4
  br label %11

; <label>:39                                      ; preds = %7, %11
  ret void
}

define linkonce_odr void @_ZSt26__unguarded_insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__i = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %4, %struct.b2Pair** %__i, align 4
  br label %5

; <label>:5                                       ; preds = %12, %0
  %6 = load %struct.b2Pair** %__i, align 4
  %7 = load %struct.b2Pair** %2, align 4
  %8 = icmp ne %struct.b2Pair* %6, %7
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %5
  %10 = load %struct.b2Pair** %__i, align 4
  %11 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt25__unguarded_linear_insertIP6b2PairPFbRKS0_S3_EEvT_T0_(%struct.b2Pair* %10, i1 (%struct.b2Pair*, %struct.b2Pair*)* %11)
  br label %12

; <label>:12                                      ; preds = %9
  %13 = load %struct.b2Pair** %__i, align 4
  %14 = getelementptr inbounds %struct.b2Pair* %13, i32 1
  store %struct.b2Pair* %14, %struct.b2Pair** %__i, align 4
  br label %5

; <label>:15                                      ; preds = %5
  ret void
}

define linkonce_odr void @_ZSt25__unguarded_linear_insertIP6b2PairPFbRKS0_S3_EEvT_T0_(%struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__val = alloca %struct.b2Pair, align 4
  %__next = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %1, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %2, align 4
  %3 = load %struct.b2Pair** %1, align 4
  %4 = bitcast %struct.b2Pair* %__val to i8*
  %5 = bitcast %struct.b2Pair* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 12, i32 4, i1 false)
  %6 = load %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %6, %struct.b2Pair** %__next, align 4
  %7 = load %struct.b2Pair** %__next, align 4
  %8 = getelementptr inbounds %struct.b2Pair* %7, i32 -1
  store %struct.b2Pair* %8, %struct.b2Pair** %__next, align 4
  br label %9

; <label>:9                                       ; preds = %13, %0
  %10 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %2, align 4
  %11 = load %struct.b2Pair** %__next, align 4
  %12 = call zeroext i1 %10(%struct.b2Pair* %__val, %struct.b2Pair* %11)
  br i1 %12, label %13, label %21

; <label>:13                                      ; preds = %9
  %14 = load %struct.b2Pair** %1, align 4
  %15 = load %struct.b2Pair** %__next, align 4
  %16 = bitcast %struct.b2Pair* %14 to i8*
  %17 = bitcast %struct.b2Pair* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 12, i32 4, i1 false)
  %18 = load %struct.b2Pair** %__next, align 4
  store %struct.b2Pair* %18, %struct.b2Pair** %1, align 4
  %19 = load %struct.b2Pair** %__next, align 4
  %20 = getelementptr inbounds %struct.b2Pair* %19, i32 -1
  store %struct.b2Pair* %20, %struct.b2Pair** %__next, align 4
  br label %9

; <label>:21                                      ; preds = %9
  %22 = load %struct.b2Pair** %1, align 4
  %23 = bitcast %struct.b2Pair* %22 to i8*
  %24 = bitcast %struct.b2Pair* %__val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 12, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr %struct.b2Pair* @_ZSt13copy_backwardIP6b2PairS1_ET0_T_S3_S2_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__result) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__result, %struct.b2Pair** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  %5 = call %struct.b2Pair* @_ZSt12__miter_baseIP6b2PairENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %4)
  %6 = load %struct.b2Pair** %2, align 4
  %7 = call %struct.b2Pair* @_ZSt12__miter_baseIP6b2PairENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %6)
  %8 = load %struct.b2Pair** %3, align 4
  %9 = call %struct.b2Pair* @_ZSt23__copy_move_backward_a2ILb0EP6b2PairS1_ET1_T0_S3_S2_(%struct.b2Pair* %5, %struct.b2Pair* %7, %struct.b2Pair* %8)
  ret %struct.b2Pair* %9
}

define linkonce_odr %struct.b2Pair* @_ZSt23__copy_move_backward_a2ILb0EP6b2PairS1_ET1_T0_S3_S2_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__result) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__result, %struct.b2Pair** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  %5 = call %struct.b2Pair* @_ZSt12__niter_baseIP6b2PairENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %4)
  %6 = load %struct.b2Pair** %2, align 4
  %7 = call %struct.b2Pair* @_ZSt12__niter_baseIP6b2PairENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %6)
  %8 = load %struct.b2Pair** %3, align 4
  %9 = call %struct.b2Pair* @_ZSt12__niter_baseIP6b2PairENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %8)
  %10 = call %struct.b2Pair* @_ZSt22__copy_move_backward_aILb0EP6b2PairS1_ET1_T0_S3_S2_(%struct.b2Pair* %5, %struct.b2Pair* %7, %struct.b2Pair* %9)
  ret %struct.b2Pair* %10
}

define linkonce_odr %struct.b2Pair* @_ZSt12__miter_baseIP6b2PairENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %__it) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__it, %struct.b2Pair** %1, align 4
  %2 = load %struct.b2Pair** %1, align 4
  %3 = call %struct.b2Pair* @_ZNSt10_Iter_baseIP6b2PairLb0EE7_S_baseES1_(%struct.b2Pair* %2)
  ret %struct.b2Pair* %3
}

define linkonce_odr %struct.b2Pair* @_ZNSt10_Iter_baseIP6b2PairLb0EE7_S_baseES1_(%struct.b2Pair* %__it) nounwind align 2 {
  %1 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__it, %struct.b2Pair** %1, align 4
  %2 = load %struct.b2Pair** %1, align 4
  ret %struct.b2Pair* %2
}

define linkonce_odr %struct.b2Pair* @_ZSt22__copy_move_backward_aILb0EP6b2PairS1_ET1_T0_S3_S2_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__result) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %__simple = alloca i8, align 1
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__result, %struct.b2Pair** %3, align 4
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.b2Pair** %1, align 4
  %5 = load %struct.b2Pair** %2, align 4
  %6 = load %struct.b2Pair** %3, align 4
  %7 = call %struct.b2Pair* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6b2PairEEPT_PKS4_S7_S5_(%struct.b2Pair* %4, %struct.b2Pair* %5, %struct.b2Pair* %6)
  ret %struct.b2Pair* %7
}

define linkonce_odr %struct.b2Pair* @_ZSt12__niter_baseIP6b2PairENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.b2Pair* %__it) nounwind inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__it, %struct.b2Pair** %1, align 4
  %2 = load %struct.b2Pair** %1, align 4
  %3 = call %struct.b2Pair* @_ZNSt10_Iter_baseIP6b2PairLb0EE7_S_baseES1_(%struct.b2Pair* %2)
  ret %struct.b2Pair* %3
}

define linkonce_odr %struct.b2Pair* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6b2PairEEPT_PKS4_S7_S5_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__result) nounwind align 2 {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %_Num = alloca i32, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__result, %struct.b2Pair** %3, align 4
  %4 = load %struct.b2Pair** %2, align 4
  %5 = load %struct.b2Pair** %1, align 4
  %6 = ptrtoint %struct.b2Pair* %4 to i32
  %7 = ptrtoint %struct.b2Pair* %5 to i32
  %8 = sub i32 %6, %7
  %9 = sdiv exact i32 %8, 12
  store i32 %9, i32* %_Num, align 4
  %10 = load i32* %_Num, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %struct.b2Pair** %3, align 4
  %14 = load i32* %_Num, align 4
  %15 = sub i32 0, %14
  %16 = getelementptr inbounds %struct.b2Pair* %13, i32 %15
  %17 = bitcast %struct.b2Pair* %16 to i8*
  %18 = load %struct.b2Pair** %1, align 4
  %19 = bitcast %struct.b2Pair* %18 to i8*
  %20 = load i32* %_Num, align 4
  %21 = mul i32 12, %20
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %17, i8* %19, i32 %21, i32 1, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %struct.b2Pair** %3, align 4
  %24 = load i32* %_Num, align 4
  %25 = sub i32 0, %24
  %26 = getelementptr inbounds %struct.b2Pair* %23, i32 %25
  ret %struct.b2Pair* %26
}

declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @llvm.ctlz.i32(i32) nounwind readnone

define linkonce_odr void @_ZSt12partial_sortIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__middle, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__middle, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %5 = load %struct.b2Pair** %1, align 4
  %6 = load %struct.b2Pair** %2, align 4
  %7 = load %struct.b2Pair** %3, align 4
  %8 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt13__heap_selectIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %5, %struct.b2Pair* %6, %struct.b2Pair* %7, i1 (%struct.b2Pair*, %struct.b2Pair*)* %8)
  %9 = load %struct.b2Pair** %1, align 4
  %10 = load %struct.b2Pair** %2, align 4
  %11 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt9sort_heapIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %9, %struct.b2Pair* %10, i1 (%struct.b2Pair*, %struct.b2Pair*)* %11)
  ret void
}

define linkonce_odr %struct.b2Pair* @_ZSt27__unguarded_partition_pivotIP6b2PairPFbRKS0_S3_EET_S6_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__mid = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %4 = load %struct.b2Pair** %1, align 4
  %5 = load %struct.b2Pair** %2, align 4
  %6 = load %struct.b2Pair** %1, align 4
  %7 = ptrtoint %struct.b2Pair* %5 to i32
  %8 = ptrtoint %struct.b2Pair* %6 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 12
  %11 = sdiv i32 %10, 2
  %12 = getelementptr inbounds %struct.b2Pair* %4, i32 %11
  store %struct.b2Pair* %12, %struct.b2Pair** %__mid, align 4
  %13 = load %struct.b2Pair** %1, align 4
  %14 = load %struct.b2Pair** %__mid, align 4
  %15 = load %struct.b2Pair** %2, align 4
  %16 = getelementptr inbounds %struct.b2Pair* %15, i32 -1
  %17 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt19__move_median_firstIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %13, %struct.b2Pair* %14, %struct.b2Pair* %16, i1 (%struct.b2Pair*, %struct.b2Pair*)* %17)
  %18 = load %struct.b2Pair** %1, align 4
  %19 = getelementptr inbounds %struct.b2Pair* %18, i32 1
  %20 = load %struct.b2Pair** %2, align 4
  %21 = load %struct.b2Pair** %1, align 4
  %22 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %23 = call %struct.b2Pair* @_ZSt21__unguarded_partitionIP6b2PairS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_(%struct.b2Pair* %19, %struct.b2Pair* %20, %struct.b2Pair* %21, i1 (%struct.b2Pair*, %struct.b2Pair*)* %22)
  ret %struct.b2Pair* %23
}

define linkonce_odr void @_ZSt19__move_median_firstIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %__a, %struct.b2Pair* %__b, %struct.b2Pair* %__c, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__a, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__b, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__c, %struct.b2Pair** %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %5 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %6 = load %struct.b2Pair** %1, align 4
  %7 = load %struct.b2Pair** %2, align 4
  %8 = call zeroext i1 %5(%struct.b2Pair* %6, %struct.b2Pair* %7)
  br i1 %8, label %9, label %27

; <label>:9                                       ; preds = %0
  %10 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %11 = load %struct.b2Pair** %2, align 4
  %12 = load %struct.b2Pair** %3, align 4
  %13 = call zeroext i1 %10(%struct.b2Pair* %11, %struct.b2Pair* %12)
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %9
  %15 = load %struct.b2Pair** %1, align 4
  %16 = load %struct.b2Pair** %2, align 4
  call void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %15, %struct.b2Pair* %16)
  br label %26

; <label>:17                                      ; preds = %9
  %18 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %19 = load %struct.b2Pair** %1, align 4
  %20 = load %struct.b2Pair** %3, align 4
  %21 = call zeroext i1 %18(%struct.b2Pair* %19, %struct.b2Pair* %20)
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %17
  %23 = load %struct.b2Pair** %1, align 4
  %24 = load %struct.b2Pair** %3, align 4
  call void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %23, %struct.b2Pair* %24)
  br label %25

; <label>:25                                      ; preds = %22, %17
  br label %26

; <label>:26                                      ; preds = %25, %14
  br label %46

; <label>:27                                      ; preds = %0
  %28 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %29 = load %struct.b2Pair** %1, align 4
  %30 = load %struct.b2Pair** %3, align 4
  %31 = call zeroext i1 %28(%struct.b2Pair* %29, %struct.b2Pair* %30)
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %27
  br label %46

; <label>:33                                      ; preds = %27
  %34 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %35 = load %struct.b2Pair** %2, align 4
  %36 = load %struct.b2Pair** %3, align 4
  %37 = call zeroext i1 %34(%struct.b2Pair* %35, %struct.b2Pair* %36)
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %33
  %39 = load %struct.b2Pair** %1, align 4
  %40 = load %struct.b2Pair** %3, align 4
  call void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %39, %struct.b2Pair* %40)
  br label %44

; <label>:41                                      ; preds = %33
  %42 = load %struct.b2Pair** %1, align 4
  %43 = load %struct.b2Pair** %2, align 4
  call void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %42, %struct.b2Pair* %43)
  br label %44

; <label>:44                                      ; preds = %41, %38
  br label %45

; <label>:45                                      ; preds = %44
  br label %46

; <label>:46                                      ; preds = %32, %45, %26
  ret void
}

define linkonce_odr %struct.b2Pair* @_ZSt21__unguarded_partitionIP6b2PairS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__pivot, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__pivot, %struct.b2Pair** %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  br label %5

; <label>:5                                       ; preds = %0, %31
  br label %6

; <label>:6                                       ; preds = %11, %5
  %7 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %8 = load %struct.b2Pair** %1, align 4
  %9 = load %struct.b2Pair** %3
  %10 = call zeroext i1 %7(%struct.b2Pair* %8, %struct.b2Pair* %9)
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %6
  %12 = load %struct.b2Pair** %1, align 4
  %13 = getelementptr inbounds %struct.b2Pair* %12, i32 1
  store %struct.b2Pair* %13, %struct.b2Pair** %1, align 4
  br label %6

; <label>:14                                      ; preds = %6
  %15 = load %struct.b2Pair** %2, align 4
  %16 = getelementptr inbounds %struct.b2Pair* %15, i32 -1
  store %struct.b2Pair* %16, %struct.b2Pair** %2, align 4
  br label %17

; <label>:17                                      ; preds = %22, %14
  %18 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %19 = load %struct.b2Pair** %3
  %20 = load %struct.b2Pair** %2, align 4
  %21 = call zeroext i1 %18(%struct.b2Pair* %19, %struct.b2Pair* %20)
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %17
  %23 = load %struct.b2Pair** %2, align 4
  %24 = getelementptr inbounds %struct.b2Pair* %23, i32 -1
  store %struct.b2Pair* %24, %struct.b2Pair** %2, align 4
  br label %17

; <label>:25                                      ; preds = %17
  %26 = load %struct.b2Pair** %1, align 4
  %27 = load %struct.b2Pair** %2, align 4
  %28 = icmp ult %struct.b2Pair* %26, %27
  br i1 %28, label %31, label %29

; <label>:29                                      ; preds = %25
  %30 = load %struct.b2Pair** %1, align 4
  ret %struct.b2Pair* %30

; <label>:31                                      ; preds = %25
  %32 = load %struct.b2Pair** %1, align 4
  %33 = load %struct.b2Pair** %2, align 4
  call void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %32, %struct.b2Pair* %33)
  %34 = load %struct.b2Pair** %1, align 4
  %35 = getelementptr inbounds %struct.b2Pair* %34, i32 1
  store %struct.b2Pair* %35, %struct.b2Pair** %1, align 4
  br label %5
}

define linkonce_odr void @_ZSt9iter_swapIP6b2PairS1_EvT_T0_(%struct.b2Pair* %__a, %struct.b2Pair* %__b) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__a, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__b, %struct.b2Pair** %2, align 4
  %3 = load %struct.b2Pair** %1, align 4
  %4 = load %struct.b2Pair** %2, align 4
  call void @_ZNSt11__iter_swapILb1EE9iter_swapIP6b2PairS3_EEvT_T0_(%struct.b2Pair* %3, %struct.b2Pair* %4)
  ret void
}

define linkonce_odr void @_ZNSt11__iter_swapILb1EE9iter_swapIP6b2PairS3_EEvT_T0_(%struct.b2Pair* %__a, %struct.b2Pair* %__b) align 2 {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__a, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__b, %struct.b2Pair** %2, align 4
  %3 = load %struct.b2Pair** %1, align 4
  %4 = load %struct.b2Pair** %2, align 4
  call void @_ZSt4swapI6b2PairEvRT_S2_(%struct.b2Pair* %3, %struct.b2Pair* %4)
  ret void
}

define linkonce_odr void @_ZSt4swapI6b2PairEvRT_S2_(%struct.b2Pair* %__a, %struct.b2Pair* %__b) nounwind inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %__tmp = alloca %struct.b2Pair, align 4
  store %struct.b2Pair* %__a, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__b, %struct.b2Pair** %2, align 4
  %3 = load %struct.b2Pair** %1
  %4 = bitcast %struct.b2Pair* %__tmp to i8*
  %5 = bitcast %struct.b2Pair* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 12, i32 4, i1 false)
  %6 = load %struct.b2Pair** %1
  %7 = load %struct.b2Pair** %2
  %8 = bitcast %struct.b2Pair* %6 to i8*
  %9 = bitcast %struct.b2Pair* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 12, i32 4, i1 false)
  %10 = load %struct.b2Pair** %2
  %11 = bitcast %struct.b2Pair* %10 to i8*
  %12 = bitcast %struct.b2Pair* %__tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 12, i32 4, i1 false)
  ret void
}

define linkonce_odr void @_ZSt13__heap_selectIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__middle, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__i = alloca %struct.b2Pair*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__middle, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %5 = load %struct.b2Pair** %1, align 4
  %6 = load %struct.b2Pair** %2, align 4
  %7 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt9make_heapIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %5, %struct.b2Pair* %6, i1 (%struct.b2Pair*, %struct.b2Pair*)* %7)
  %8 = load %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %8, %struct.b2Pair** %__i, align 4
  br label %9

; <label>:9                                       ; preds = %24, %0
  %10 = load %struct.b2Pair** %__i, align 4
  %11 = load %struct.b2Pair** %3, align 4
  %12 = icmp ult %struct.b2Pair* %10, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %9
  %14 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %15 = load %struct.b2Pair** %__i, align 4
  %16 = load %struct.b2Pair** %1, align 4
  %17 = call zeroext i1 %14(%struct.b2Pair* %15, %struct.b2Pair* %16)
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %13
  %19 = load %struct.b2Pair** %1, align 4
  %20 = load %struct.b2Pair** %2, align 4
  %21 = load %struct.b2Pair** %__i, align 4
  %22 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt10__pop_heapIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %19, %struct.b2Pair* %20, %struct.b2Pair* %21, i1 (%struct.b2Pair*, %struct.b2Pair*)* %22)
  br label %23

; <label>:23                                      ; preds = %18, %13
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load %struct.b2Pair** %__i, align 4
  %26 = getelementptr inbounds %struct.b2Pair* %25, i32 1
  store %struct.b2Pair* %26, %struct.b2Pair** %__i, align 4
  br label %9

; <label>:27                                      ; preds = %9
  ret void
}

define linkonce_odr void @_ZSt9sort_heapIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  br label %4

; <label>:4                                       ; preds = %12, %0
  %5 = load %struct.b2Pair** %2, align 4
  %6 = load %struct.b2Pair** %1, align 4
  %7 = ptrtoint %struct.b2Pair* %5 to i32
  %8 = ptrtoint %struct.b2Pair* %6 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 12
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %4
  %13 = load %struct.b2Pair** %2, align 4
  %14 = getelementptr inbounds %struct.b2Pair* %13, i32 -1
  store %struct.b2Pair* %14, %struct.b2Pair** %2, align 4
  %15 = load %struct.b2Pair** %1, align 4
  %16 = load %struct.b2Pair** %2, align 4
  %17 = load %struct.b2Pair** %2, align 4
  %18 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt10__pop_heapIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %15, %struct.b2Pair* %16, %struct.b2Pair* %17, i1 (%struct.b2Pair*, %struct.b2Pair*)* %18)
  br label %4

; <label>:19                                      ; preds = %4
  ret void
}

define linkonce_odr void @_ZSt10__pop_heapIP6b2PairPFbRKS0_S3_EEvT_S6_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, %struct.b2Pair* %__result, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) inlinehint {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca %struct.b2Pair*, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__value = alloca %struct.b2Pair, align 4
  %5 = alloca %struct.b2Pair, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store %struct.b2Pair* %__result, %struct.b2Pair** %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %6 = load %struct.b2Pair** %3, align 4
  %7 = bitcast %struct.b2Pair* %__value to i8*
  %8 = bitcast %struct.b2Pair* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 12, i32 4, i1 false)
  %9 = load %struct.b2Pair** %3, align 4
  %10 = load %struct.b2Pair** %1, align 4
  %11 = bitcast %struct.b2Pair* %9 to i8*
  %12 = bitcast %struct.b2Pair* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 12, i32 4, i1 false)
  %13 = load %struct.b2Pair** %1, align 4
  %14 = load %struct.b2Pair** %2, align 4
  %15 = load %struct.b2Pair** %1, align 4
  %16 = ptrtoint %struct.b2Pair* %14 to i32
  %17 = ptrtoint %struct.b2Pair* %15 to i32
  %18 = sub i32 %16, %17
  %19 = sdiv exact i32 %18, 12
  %20 = bitcast %struct.b2Pair* %5 to i8*
  %21 = bitcast %struct.b2Pair* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 12, i32 4, i1 false)
  %22 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_(%struct.b2Pair* %13, i32 0, i32 %19, %struct.b2Pair* byval align 4 %5, i1 (%struct.b2Pair*, %struct.b2Pair*)* %22)
  ret void
}

define linkonce_odr void @_ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_(%struct.b2Pair* %__first, i32 %__holeIndex, i32 %__len, %struct.b2Pair* byval align 4 %__value, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__topIndex = alloca i32, align 4
  %__secondChild = alloca i32, align 4
  %5 = alloca %struct.b2Pair, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store i32 %__holeIndex, i32* %2, align 4
  store i32 %__len, i32* %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %6 = load i32* %2, align 4
  store i32 %6, i32* %__topIndex, align 4
  %7 = load i32* %2, align 4
  store i32 %7, i32* %__secondChild, align 4
  br label %8

; <label>:8                                       ; preds = %30, %0
  %9 = load i32* %__secondChild, align 4
  %10 = load i32* %3, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sdiv i32 %11, 2
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

; <label>:14                                      ; preds = %8
  %15 = load i32* %__secondChild, align 4
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 2, %16
  store i32 %17, i32* %__secondChild, align 4
  %18 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %19 = load %struct.b2Pair** %1, align 4
  %20 = load i32* %__secondChild, align 4
  %21 = getelementptr inbounds %struct.b2Pair* %19, i32 %20
  %22 = load %struct.b2Pair** %1, align 4
  %23 = load i32* %__secondChild, align 4
  %24 = sub nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.b2Pair* %22, i32 %24
  %26 = call zeroext i1 %18(%struct.b2Pair* %21, %struct.b2Pair* %25)
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %14
  %28 = load i32* %__secondChild, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %__secondChild, align 4
  br label %30

; <label>:30                                      ; preds = %27, %14
  %31 = load %struct.b2Pair** %1, align 4
  %32 = load i32* %2, align 4
  %33 = getelementptr inbounds %struct.b2Pair* %31, i32 %32
  %34 = load %struct.b2Pair** %1, align 4
  %35 = load i32* %__secondChild, align 4
  %36 = getelementptr inbounds %struct.b2Pair* %34, i32 %35
  %37 = bitcast %struct.b2Pair* %33 to i8*
  %38 = bitcast %struct.b2Pair* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 12, i32 4, i1 false)
  %39 = load i32* %__secondChild, align 4
  store i32 %39, i32* %2, align 4
  br label %8

; <label>:40                                      ; preds = %8
  %41 = load i32* %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %65

; <label>:44                                      ; preds = %40
  %45 = load i32* %__secondChild, align 4
  %46 = load i32* %3, align 4
  %47 = sub nsw i32 %46, 2
  %48 = sdiv i32 %47, 2
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %65

; <label>:50                                      ; preds = %44
  %51 = load i32* %__secondChild, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 2, %52
  store i32 %53, i32* %__secondChild, align 4
  %54 = load %struct.b2Pair** %1, align 4
  %55 = load i32* %2, align 4
  %56 = getelementptr inbounds %struct.b2Pair* %54, i32 %55
  %57 = load %struct.b2Pair** %1, align 4
  %58 = load i32* %__secondChild, align 4
  %59 = sub nsw i32 %58, 1
  %60 = getelementptr inbounds %struct.b2Pair* %57, i32 %59
  %61 = bitcast %struct.b2Pair* %56 to i8*
  %62 = bitcast %struct.b2Pair* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %61, i8* %62, i32 12, i32 4, i1 false)
  %63 = load i32* %__secondChild, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %65

; <label>:65                                      ; preds = %50, %44, %40
  %66 = load %struct.b2Pair** %1, align 4
  %67 = load i32* %2, align 4
  %68 = load i32* %__topIndex, align 4
  %69 = bitcast %struct.b2Pair* %5 to i8*
  %70 = bitcast %struct.b2Pair* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 12, i32 4, i1 false)
  %71 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  call void @_ZSt11__push_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_(%struct.b2Pair* %66, i32 %67, i32 %68, %struct.b2Pair* byval align 4 %5, i1 (%struct.b2Pair*, %struct.b2Pair*)* %71)
  ret void
}

define linkonce_odr void @_ZSt11__push_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_(%struct.b2Pair* %__first, i32 %__holeIndex, i32 %__topIndex, %struct.b2Pair* byval align 4 %__value, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__parent = alloca i32, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store i32 %__holeIndex, i32* %2, align 4
  store i32 %__topIndex, i32* %3, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %5 = load i32* %2, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sdiv i32 %6, 2
  store i32 %7, i32* %__parent, align 4
  br label %8

; <label>:8                                       ; preds = %20, %0
  %9 = load i32* %2, align 4
  %10 = load i32* %3, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %8
  %13 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %4, align 4
  %14 = load %struct.b2Pair** %1, align 4
  %15 = load i32* %__parent, align 4
  %16 = getelementptr inbounds %struct.b2Pair* %14, i32 %15
  %17 = call zeroext i1 %13(%struct.b2Pair* %16, %struct.b2Pair* %__value)
  br label %18

; <label>:18                                      ; preds = %12, %8
  %19 = phi i1 [ false, %8 ], [ %17, %12 ]
  br i1 %19, label %20, label %33

; <label>:20                                      ; preds = %18
  %21 = load %struct.b2Pair** %1, align 4
  %22 = load i32* %2, align 4
  %23 = getelementptr inbounds %struct.b2Pair* %21, i32 %22
  %24 = load %struct.b2Pair** %1, align 4
  %25 = load i32* %__parent, align 4
  %26 = getelementptr inbounds %struct.b2Pair* %24, i32 %25
  %27 = bitcast %struct.b2Pair* %23 to i8*
  %28 = bitcast %struct.b2Pair* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 12, i32 4, i1 false)
  %29 = load i32* %__parent, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32* %2, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %__parent, align 4
  br label %8

; <label>:33                                      ; preds = %18
  %34 = load %struct.b2Pair** %1, align 4
  %35 = load i32* %2, align 4
  %36 = getelementptr inbounds %struct.b2Pair* %34, i32 %35
  %37 = bitcast %struct.b2Pair* %36 to i8*
  %38 = bitcast %struct.b2Pair* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 12, i32 4, i1 false)
  ret void
}

define linkonce_odr void @_ZSt9make_heapIP6b2PairPFbRKS0_S3_EEvT_S6_T0_(%struct.b2Pair* %__first, %struct.b2Pair* %__last, i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp) {
  %1 = alloca %struct.b2Pair*, align 4
  %2 = alloca %struct.b2Pair*, align 4
  %3 = alloca i1 (%struct.b2Pair*, %struct.b2Pair*)*, align 4
  %__len = alloca i32, align 4
  %__parent = alloca i32, align 4
  %__value = alloca %struct.b2Pair, align 4
  %4 = alloca %struct.b2Pair, align 4
  store %struct.b2Pair* %__first, %struct.b2Pair** %1, align 4
  store %struct.b2Pair* %__last, %struct.b2Pair** %2, align 4
  store i1 (%struct.b2Pair*, %struct.b2Pair*)* %__comp, i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  %5 = load %struct.b2Pair** %2, align 4
  %6 = load %struct.b2Pair** %1, align 4
  %7 = ptrtoint %struct.b2Pair* %5 to i32
  %8 = ptrtoint %struct.b2Pair* %6 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 12
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %41

; <label>:13                                      ; preds = %0
  %14 = load %struct.b2Pair** %2, align 4
  %15 = load %struct.b2Pair** %1, align 4
  %16 = ptrtoint %struct.b2Pair* %14 to i32
  %17 = ptrtoint %struct.b2Pair* %15 to i32
  %18 = sub i32 %16, %17
  %19 = sdiv exact i32 %18, 12
  store i32 %19, i32* %__len, align 4
  %20 = load i32* %__len, align 4
  %21 = sub nsw i32 %20, 2
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %__parent, align 4
  br label %23

; <label>:23                                      ; preds = %13, %38
  %24 = load %struct.b2Pair** %1, align 4
  %25 = load i32* %__parent, align 4
  %26 = getelementptr inbounds %struct.b2Pair* %24, i32 %25
  %27 = bitcast %struct.b2Pair* %__value to i8*
  %28 = bitcast %struct.b2Pair* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 12, i32 4, i1 false)
  %29 = load %struct.b2Pair** %1, align 4
  %30 = load i32* %__parent, align 4
  %31 = load i32* %__len, align 4
  %32 = bitcast %struct.b2Pair* %4 to i8*
  %33 = bitcast %struct.b2Pair* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 12, i32 4, i1 false)
  %34 = load i1 (%struct.b2Pair*, %struct.b2Pair*)** %3, align 4
  call void @_ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_(%struct.b2Pair* %29, i32 %30, i32 %31, %struct.b2Pair* byval align 4 %4, i1 (%struct.b2Pair*, %struct.b2Pair*)* %34)
  %35 = load i32* %__parent, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %23
  br label %41

; <label>:38                                      ; preds = %23
  %39 = load i32* %__parent, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %__parent, align 4
  br label %23

; <label>:41                                      ; preds = %37, %12
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

declare i32 @__gxx_personality_v0(...)

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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str4, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZN15b2GrowableStackIiLi256EE3PopEv, i32 0, i32 0)) noreturn nounwind
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

define linkonce_odr zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %this) nounwind align 2 {
  %1 = alloca %struct.b2TreeNode*, align 4
  store %struct.b2TreeNode* %this, %struct.b2TreeNode** %1, align 4
  %2 = load %struct.b2TreeNode** %1
  %3 = getelementptr inbounds %struct.b2TreeNode* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, -1
  ret i1 %5
}

declare zeroext i1 @_ZN12b2BroadPhase13QueryCallbackEi(%class.b2BroadPhase*, i32)

define linkonce_odr void @_ZN15b2GrowableStackIiLi256EED1Ev(%class.b2GrowableStack* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2GrowableStack*, align 4
  store %class.b2GrowableStack* %this, %class.b2GrowableStack** %1, align 4
  %2 = load %class.b2GrowableStack** %1
  call void @_ZN15b2GrowableStackIiLi256EED2Ev(%class.b2GrowableStack* %2)
  ret void
}

declare void @_ZSt9terminatev()

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

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
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

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  ret void
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

define linkonce_odr void @_ZN17b2ContactListenerD2Ev(%class.b2ContactListener* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  %2 = load %class.b2ContactListener** %1
  ret void
}

define linkonce_odr void @_ZN17b2ContactListenerC2Ev(%class.b2ContactListener* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  %2 = load %class.b2ContactListener** %1
  %3 = bitcast %class.b2ContactListener* %2 to i8***
  store i8** getelementptr inbounds ([8 x i8*]* @_ZTV17b2ContactListener, i64 0, i64 2), i8*** %3
  ret void
}

define linkonce_odr void @_ZN17b2ContactListenerD0Ev(%class.b2ContactListener* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  %4 = load %class.b2ContactListener** %1
  invoke void @_ZN17b2ContactListenerD1Ev(%class.b2ContactListener* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2ContactListener* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2ContactListener* %4 to i8*
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

define linkonce_odr void @_ZN17b2ContactListener12BeginContactEP9b2Contact(%class.b2ContactListener* %this, %class.b2Contact* %contact) nounwind align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  %2 = alloca %class.b2Contact*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %2, align 4
  %3 = load %class.b2ContactListener** %1
  ret void
}

define linkonce_odr void @_ZN17b2ContactListener10EndContactEP9b2Contact(%class.b2ContactListener* %this, %class.b2Contact* %contact) nounwind align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  %2 = alloca %class.b2Contact*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %2, align 4
  %3 = load %class.b2ContactListener** %1
  ret void
}

define linkonce_odr void @_ZN17b2ContactListener8PreSolveEP9b2ContactPK10b2Manifold(%class.b2ContactListener* %this, %class.b2Contact* %contact, %struct.b2Manifold* %oldManifold) nounwind align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  %2 = alloca %class.b2Contact*, align 4
  %3 = alloca %struct.b2Manifold*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %2, align 4
  store %struct.b2Manifold* %oldManifold, %struct.b2Manifold** %3, align 4
  %4 = load %class.b2ContactListener** %1
  ret void
}

define linkonce_odr void @_ZN17b2ContactListener9PostSolveEP9b2ContactPK16b2ContactImpulse(%class.b2ContactListener* %this, %class.b2Contact* %contact, %struct.b2ContactImpulse* %impulse) nounwind align 2 {
  %1 = alloca %class.b2ContactListener*, align 4
  %2 = alloca %class.b2Contact*, align 4
  %3 = alloca %struct.b2ContactImpulse*, align 4
  store %class.b2ContactListener* %this, %class.b2ContactListener** %1, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %2, align 4
  store %struct.b2ContactImpulse* %impulse, %struct.b2ContactImpulse** %3, align 4
  %4 = load %class.b2ContactListener** %1
  ret void
}

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN15b2ContactFilterD2Ev(%class.b2ContactFilter* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  ret void
}

define linkonce_odr void @_ZN15b2ContactFilterC2Ev(%class.b2ContactFilter* %this) unnamed_addr nounwind inlinehint align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  %3 = bitcast %class.b2ContactFilter* %2 to i8***
  store i8** getelementptr inbounds ([5 x i8*]* @_ZTV15b2ContactFilter, i64 0, i64 2), i8*** %3
  ret void
}

define internal void @_GLOBAL__I_a() {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  ret void
}
