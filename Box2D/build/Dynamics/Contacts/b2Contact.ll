; ModuleID = 'Dynamics/Contacts/b2Contact.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.b2ContactRegister = type { %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)*, void (%class.b2Contact*, %class.b2BlockAllocator*)*, i8 }
%class.b2Contact = type { i32 (...)**, i32, %class.b2Contact*, %class.b2Contact*, %struct.b2ContactEdge, %struct.b2ContactEdge, %class.b2Fixture*, %class.b2Fixture*, i32, i32, %struct.b2Manifold, i32, float, float, float }
%struct.b2ContactEdge = type { %class.b2Body*, %class.b2Contact*, %struct.b2ContactEdge*, %struct.b2ContactEdge* }
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
%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
%class.b2Joint = type opaque
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type opaque
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2Filter = type { i16, i16, i16 }
%struct.b2JointEdge = type opaque
%struct.b2Manifold = type { [2 x %struct.b2ManifoldPoint], %struct.b2Vec2, %struct.b2Vec2, i32, i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, float, float, %union.b2ContactID }
%union.b2ContactID = type { i32 }

@_ZN9b2Contact11s_registersE = global [4 x [4 x %struct.b2ContactRegister]] zeroinitializer, align 4
@_ZN9b2Contact13s_initializedE = global i8 0, align 1
@.str = private unnamed_addr constant [43 x i8] c"0 <= type1 && type1 < b2Shape::e_typeCount\00", align 1
@.str1 = private unnamed_addr constant [32 x i8] c"Dynamics/Contacts/b2Contact.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_ = private unnamed_addr constant [106 x i8] c"static void b2Contact::AddType(b2ContactCreateFcn *, b2ContactDestroyFcn *, b2Shape::Type, b2Shape::Type)\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"0 <= type2 && type2 < b2Shape::e_typeCount\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator = private unnamed_addr constant [96 x i8] c"static b2Contact *b2Contact::Create(b2Fixture *, int32, b2Fixture *, int32, b2BlockAllocator *)\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"s_initialized == true\00", align 1
@__PRETTY_FUNCTION__._ZN9b2Contact7DestroyEPS_P16b2BlockAllocator = private unnamed_addr constant [64 x i8] c"static void b2Contact::Destroy(b2Contact *, b2BlockAllocator *)\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"0 <= typeA && typeB < b2Shape::e_typeCount\00", align 1
@_ZTV9b2Contact = linkonce_odr unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI9b2Contact to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%class.b2Contact*)* @_ZN9b2ContactD1Ev to i8*), i8* bitcast (void (%class.b2Contact*)* @_ZN9b2ContactD0Ev to i8*)]
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9b2Contact = linkonce_odr constant [11 x i8] c"9b2Contact\00"
@_ZTI9b2Contact = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTS9b2Contact, i32 0, i32 0) }

define void @_ZN9b2Contact19InitializeRegistersEv() align 2 {
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN15b2CircleContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 0, i32 0)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN25b2PolygonAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN25b2PolygonAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 2, i32 0)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN16b2PolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN16b2PolygonContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 2, i32 2)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN22b2EdgeAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN22b2EdgeAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 1, i32 0)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN23b2EdgeAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN23b2EdgeAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 1, i32 2)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN23b2ChainAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN23b2ChainAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 3, i32 0)
  call void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* @_ZN24b2ChainAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, void (%class.b2Contact*, %class.b2BlockAllocator*)* @_ZN24b2ChainAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator, i32 3, i32 2)
  ret void
}

define void @_ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_(%class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %createFcn, void (%class.b2Contact*, %class.b2BlockAllocator*)* %destoryFcn, i32 %type1, i32 %type2) nounwind align 2 {
  %1 = alloca %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)*, align 4
  %2 = alloca void (%class.b2Contact*, %class.b2BlockAllocator*)*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %createFcn, %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %1, align 4
  store void (%class.b2Contact*, %class.b2BlockAllocator*)* %destoryFcn, void (%class.b2Contact*, %class.b2BlockAllocator*)** %2, align 4
  store i32 %type1, i32* %3, align 4
  store i32 %type2, i32* %4, align 4
  %5 = load i32* %3, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([106 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i32* %4, align 4
  %15 = icmp sle i32 0, %14
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %13
  %17 = load i32* %4, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  br label %22

; <label>:20                                      ; preds = %16, %13
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([106 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact7AddTypeEPFPS_P9b2FixtureiS2_iP16b2BlockAllocatorEPFvS0_S4_EN7b2Shape4TypeESA_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %1, align 4
  %24 = load i32* %4, align 4
  %25 = load i32* %3, align 4
  %26 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %25
  %27 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %26, i32 0, i32 %24
  %28 = getelementptr inbounds %struct.b2ContactRegister* %27, i32 0, i32 0
  store %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %23, %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %28, align 4
  %29 = load void (%class.b2Contact*, %class.b2BlockAllocator*)** %2, align 4
  %30 = load i32* %4, align 4
  %31 = load i32* %3, align 4
  %32 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %31
  %33 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %32, i32 0, i32 %30
  %34 = getelementptr inbounds %struct.b2ContactRegister* %33, i32 0, i32 1
  store void (%class.b2Contact*, %class.b2BlockAllocator*)* %29, void (%class.b2Contact*, %class.b2BlockAllocator*)** %34, align 4
  %35 = load i32* %4, align 4
  %36 = load i32* %3, align 4
  %37 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %36
  %38 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %37, i32 0, i32 %35
  %39 = getelementptr inbounds %struct.b2ContactRegister* %38, i32 0, i32 2
  store i8 1, i8* %39, align 1
  %40 = load i32* %3, align 4
  %41 = load i32* %4, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %61

; <label>:43                                      ; preds = %22
  %44 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %1, align 4
  %45 = load i32* %3, align 4
  %46 = load i32* %4, align 4
  %47 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %46
  %48 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %47, i32 0, i32 %45
  %49 = getelementptr inbounds %struct.b2ContactRegister* %48, i32 0, i32 0
  store %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %44, %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %49, align 4
  %50 = load void (%class.b2Contact*, %class.b2BlockAllocator*)** %2, align 4
  %51 = load i32* %3, align 4
  %52 = load i32* %4, align 4
  %53 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %52
  %54 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %53, i32 0, i32 %51
  %55 = getelementptr inbounds %struct.b2ContactRegister* %54, i32 0, i32 1
  store void (%class.b2Contact*, %class.b2BlockAllocator*)* %50, void (%class.b2Contact*, %class.b2BlockAllocator*)** %55, align 4
  %56 = load i32* %3, align 4
  %57 = load i32* %4, align 4
  %58 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %57
  %59 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %58, i32 0, i32 %56
  %60 = getelementptr inbounds %struct.b2ContactRegister* %59, i32 0, i32 2
  store i8 0, i8* %60, align 1
  br label %61

; <label>:61                                      ; preds = %43, %22
  ret void
}

declare %class.b2Contact* @_ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN15b2CircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN25b2PolygonAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN25b2PolygonAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN16b2PolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN16b2PolygonContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN22b2EdgeAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN22b2EdgeAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN23b2EdgeAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN23b2EdgeAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN23b2ChainAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN23b2ChainAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare %class.b2Contact* @_ZN24b2ChainAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)

declare void @_ZN24b2ChainAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator(%class.b2Contact*, %class.b2BlockAllocator*)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define %class.b2Contact* @_ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator(%class.b2Fixture* %fixtureA, i32 %indexA, %class.b2Fixture* %fixtureB, i32 %indexB, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.b2Fixture*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %class.b2BlockAllocator*, align 4
  %type1 = alloca i32, align 4
  %type2 = alloca i32, align 4
  %createFcn = alloca %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)*, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %2, align 4
  store i32 %indexA, i32* %3, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %4, align 4
  store i32 %indexB, i32* %5, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %6, align 4
  %7 = load i8* @_ZN9b2Contact13s_initializedE, align 1
  %8 = trunc i8 %7 to i1
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  call void @_ZN9b2Contact19InitializeRegistersEv()
  store i8 1, i8* @_ZN9b2Contact13s_initializedE, align 1
  br label %12

; <label>:12                                      ; preds = %11, %0
  %13 = load %class.b2Fixture** %2, align 4
  %14 = call i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %13)
  store i32 %14, i32* %type1, align 4
  %15 = load %class.b2Fixture** %4, align 4
  %16 = call i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %15)
  store i32 %16, i32* %type2, align 4
  %17 = load i32* %type1, align 4
  %18 = icmp sle i32 0, %17
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %12
  %20 = load i32* %type1, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  br label %25

; <label>:23                                      ; preds = %19, %12
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([96 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load i32* %type2, align 4
  %27 = icmp sle i32 0, %26
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %25
  %29 = load i32* %type2, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  br label %34

; <label>:32                                      ; preds = %28, %25
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 81, i8* getelementptr inbounds ([96 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load i32* %type2, align 4
  %36 = load i32* %type1, align 4
  %37 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %36
  %38 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %37, i32 0, i32 %35
  %39 = getelementptr inbounds %struct.b2ContactRegister* %38, i32 0, i32 0
  %40 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %39, align 4
  store %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %40, %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %createFcn, align 4
  %41 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %createFcn, align 4
  %42 = icmp ne %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)* %41, null
  br i1 %42, label %43, label %67

; <label>:43                                      ; preds = %34
  %44 = load i32* %type2, align 4
  %45 = load i32* %type1, align 4
  %46 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %45
  %47 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %46, i32 0, i32 %44
  %48 = getelementptr inbounds %struct.b2ContactRegister* %47, i32 0, i32 2
  %49 = load i8* %48, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %59

; <label>:51                                      ; preds = %43
  %52 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %createFcn, align 4
  %53 = load %class.b2Fixture** %2, align 4
  %54 = load i32* %3, align 4
  %55 = load %class.b2Fixture** %4, align 4
  %56 = load i32* %5, align 4
  %57 = load %class.b2BlockAllocator** %6, align 4
  %58 = call %class.b2Contact* %52(%class.b2Fixture* %53, i32 %54, %class.b2Fixture* %55, i32 %56, %class.b2BlockAllocator* %57)
  store %class.b2Contact* %58, %class.b2Contact** %1
  br label %68

; <label>:59                                      ; preds = %43
  %60 = load %class.b2Contact* (%class.b2Fixture*, i32, %class.b2Fixture*, i32, %class.b2BlockAllocator*)** %createFcn, align 4
  %61 = load %class.b2Fixture** %4, align 4
  %62 = load i32* %5, align 4
  %63 = load %class.b2Fixture** %2, align 4
  %64 = load i32* %3, align 4
  %65 = load %class.b2BlockAllocator** %6, align 4
  %66 = call %class.b2Contact* %60(%class.b2Fixture* %61, i32 %62, %class.b2Fixture* %63, i32 %64, %class.b2BlockAllocator* %65)
  store %class.b2Contact* %66, %class.b2Contact** %1
  br label %68

; <label>:67                                      ; preds = %34
  store %class.b2Contact* null, %class.b2Contact** %1
  br label %68

; <label>:68                                      ; preds = %67, %59, %51
  %69 = load %class.b2Contact** %1
  ret %class.b2Contact* %69
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

define void @_ZN9b2Contact7DestroyEPS_P16b2BlockAllocator(%class.b2Contact* %contact, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %typeA = alloca i32, align 4
  %typeB = alloca i32, align 4
  %destroyFcn = alloca void (%class.b2Contact*, %class.b2BlockAllocator*)*, align 4
  store %class.b2Contact* %contact, %class.b2Contact** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load i8* @_ZN9b2Contact13s_initializedE, align 1
  %4 = trunc i8 %3 to i1
  %5 = zext i1 %4 to i32
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 103, i8* getelementptr inbounds ([64 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact7DestroyEPS_P16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = load %class.b2Contact** %1, align 4
  %12 = getelementptr inbounds %class.b2Contact* %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.b2Manifold* %12, i32 0, i32 4
  %14 = load i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16                                      ; preds = %10
  %17 = load %class.b2Contact** %1, align 4
  %18 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %17)
  %19 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %18)
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %19, i1 zeroext true)
  %20 = load %class.b2Contact** %1, align 4
  %21 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %20)
  %22 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %21)
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %22, i1 zeroext true)
  br label %23

; <label>:23                                      ; preds = %16, %10
  %24 = load %class.b2Contact** %1, align 4
  %25 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureAEv(%class.b2Contact* %24)
  %26 = call i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %25)
  store i32 %26, i32* %typeA, align 4
  %27 = load %class.b2Contact** %1, align 4
  %28 = call %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %27)
  %29 = call i32 @_ZNK9b2Fixture7GetTypeEv(%class.b2Fixture* %28)
  store i32 %29, i32* %typeB, align 4
  %30 = load i32* %typeA, align 4
  %31 = icmp sle i32 0, %30
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %23
  %33 = load i32* %typeB, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32, %23
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 114, i8* getelementptr inbounds ([64 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact7DestroyEPS_P16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load i32* %typeA, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %41, label %45

; <label>:41                                      ; preds = %38
  %42 = load i32* %typeB, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %41
  br label %47

; <label>:45                                      ; preds = %41, %38
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([64 x i8]* @__PRETTY_FUNCTION__._ZN9b2Contact7DestroyEPS_P16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i32* %typeB, align 4
  %49 = load i32* %typeA, align 4
  %50 = getelementptr inbounds [4 x [4 x %struct.b2ContactRegister]]* @_ZN9b2Contact11s_registersE, i32 0, i32 %49
  %51 = getelementptr inbounds [4 x %struct.b2ContactRegister]* %50, i32 0, i32 %48
  %52 = getelementptr inbounds %struct.b2ContactRegister* %51, i32 0, i32 1
  %53 = load void (%class.b2Contact*, %class.b2BlockAllocator*)** %52, align 4
  store void (%class.b2Contact*, %class.b2BlockAllocator*)* %53, void (%class.b2Contact*, %class.b2BlockAllocator*)** %destroyFcn, align 4
  %54 = load void (%class.b2Contact*, %class.b2BlockAllocator*)** %destroyFcn, align 4
  %55 = load %class.b2Contact** %1, align 4
  %56 = load %class.b2BlockAllocator** %2, align 4
  call void %54(%class.b2Contact* %55, %class.b2BlockAllocator* %56)
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

define linkonce_odr %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
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

define linkonce_odr %class.b2Fixture* @_ZN9b2Contact11GetFixtureBEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 7
  %4 = load %class.b2Fixture** %3, align 4
  ret %class.b2Fixture* %4
}

define void @_ZN9b2ContactC2EP9b2FixtureiS1_i(%class.b2Contact* %this, %class.b2Fixture* %fA, i32 %indexA, %class.b2Fixture* %fB, i32 %indexB) unnamed_addr align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2Fixture*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.b2Fixture*, align 4
  %5 = alloca i32, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  store %class.b2Fixture* %fA, %class.b2Fixture** %2, align 4
  store i32 %indexA, i32* %3, align 4
  store %class.b2Fixture* %fB, %class.b2Fixture** %4, align 4
  store i32 %indexB, i32* %5, align 4
  %6 = load %class.b2Contact** %1
  %7 = bitcast %class.b2Contact* %6 to i8***
  store i8** getelementptr inbounds ([5 x i8*]* @_ZTV9b2Contact, i64 0, i64 2), i8*** %7
  %8 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 4
  %9 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 5
  %10 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 10
  call void @_ZN10b2ManifoldC1Ev(%struct.b2Manifold* %10)
  %11 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = load %class.b2Fixture** %2, align 4
  %13 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 6
  store %class.b2Fixture* %12, %class.b2Fixture** %13, align 4
  %14 = load %class.b2Fixture** %4, align 4
  %15 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 7
  store %class.b2Fixture* %14, %class.b2Fixture** %15, align 4
  %16 = load i32* %3, align 4
  %17 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load i32* %5, align 4
  %19 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 9
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 10
  %21 = getelementptr inbounds %struct.b2Manifold* %20, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 2
  store %class.b2Contact* null, %class.b2Contact** %22, align 4
  %23 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 3
  store %class.b2Contact* null, %class.b2Contact** %23, align 4
  %24 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 4
  %25 = getelementptr inbounds %struct.b2ContactEdge* %24, i32 0, i32 1
  store %class.b2Contact* null, %class.b2Contact** %25, align 4
  %26 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 4
  %27 = getelementptr inbounds %struct.b2ContactEdge* %26, i32 0, i32 2
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %27, align 4
  %28 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.b2ContactEdge* %28, i32 0, i32 3
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %29, align 4
  %30 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 4
  %31 = getelementptr inbounds %struct.b2ContactEdge* %30, i32 0, i32 0
  store %class.b2Body* null, %class.b2Body** %31, align 4
  %32 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 5
  %33 = getelementptr inbounds %struct.b2ContactEdge* %32, i32 0, i32 1
  store %class.b2Contact* null, %class.b2Contact** %33, align 4
  %34 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 5
  %35 = getelementptr inbounds %struct.b2ContactEdge* %34, i32 0, i32 2
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %35, align 4
  %36 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 5
  %37 = getelementptr inbounds %struct.b2ContactEdge* %36, i32 0, i32 3
  store %struct.b2ContactEdge* null, %struct.b2ContactEdge** %37, align 4
  %38 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 5
  %39 = getelementptr inbounds %struct.b2ContactEdge* %38, i32 0, i32 0
  store %class.b2Body* null, %class.b2Body** %39, align 4
  %40 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 11
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 6
  %42 = load %class.b2Fixture** %41, align 4
  %43 = getelementptr inbounds %class.b2Fixture* %42, i32 0, i32 4
  %44 = load float* %43, align 4
  %45 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 7
  %46 = load %class.b2Fixture** %45, align 4
  %47 = getelementptr inbounds %class.b2Fixture* %46, i32 0, i32 4
  %48 = load float* %47, align 4
  %49 = call float @_Z13b2MixFrictionff(float %44, float %48)
  %50 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 13
  store float %49, float* %50, align 4
  %51 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 6
  %52 = load %class.b2Fixture** %51, align 4
  %53 = getelementptr inbounds %class.b2Fixture* %52, i32 0, i32 5
  %54 = load float* %53, align 4
  %55 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 7
  %56 = load %class.b2Fixture** %55, align 4
  %57 = getelementptr inbounds %class.b2Fixture* %56, i32 0, i32 5
  %58 = load float* %57, align 4
  %59 = call float @_Z16b2MixRestitutionff(float %54, float %58)
  %60 = getelementptr inbounds %class.b2Contact* %6, i32 0, i32 14
  store float %59, float* %60, align 4
  ret void
}

define linkonce_odr void @_ZN10b2ManifoldC1Ev(%struct.b2Manifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Manifold*, align 4
  store %struct.b2Manifold* %this, %struct.b2Manifold** %1, align 4
  %2 = load %struct.b2Manifold** %1
  call void @_ZN10b2ManifoldC2Ev(%struct.b2Manifold* %2)
  ret void
}

define linkonce_odr float @_Z13b2MixFrictionff(float %friction1, float %friction2) inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %friction1, float* %1, align 4
  store float %friction2, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = load float* %2, align 4
  %5 = fmul float %3, %4
  %6 = call float @_ZSt4sqrtf(float %5)
  ret float %6
}

define linkonce_odr float @_Z16b2MixRestitutionff(float %restitution1, float %restitution2) nounwind inlinehint {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %restitution1, float* %1, align 4
  store float %restitution2, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = load float* %2, align 4
  %5 = fcmp ogt float %3, %4
  %6 = load float* %1, align 4
  %7 = load float* %2, align 4
  %8 = select i1 %5, float %6, float %7
  ret float %8
}

define void @_ZN9b2Contact6UpdateEP17b2ContactListener(%class.b2Contact* %this, %class.b2ContactListener* %listener) align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca %class.b2ContactListener*, align 4
  %oldManifold = alloca %struct.b2Manifold, align 4
  %touching = alloca i8, align 1
  %wasTouching = alloca i8, align 1
  %sensorA = alloca i8, align 1
  %sensorB = alloca i8, align 1
  %sensor = alloca i8, align 1
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %xfA = alloca %struct.b2Transform*, align 4
  %xfB = alloca %struct.b2Transform*, align 4
  %shapeA = alloca %class.b2Shape*, align 4
  %shapeB = alloca %class.b2Shape*, align 4
  %i = alloca i32, align 4
  %mp2 = alloca %struct.b2ManifoldPoint*, align 4
  %id2 = alloca %union.b2ContactID, align 4
  %j = alloca i32, align 4
  %mp1 = alloca %struct.b2ManifoldPoint*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  store %class.b2ContactListener* %listener, %class.b2ContactListener** %2, align 4
  %3 = load %class.b2Contact** %1
  %4 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %5 = bitcast %struct.b2Manifold* %oldManifold to i8*
  %6 = bitcast %struct.b2Manifold* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 64, i32 4, i1 false)
  %7 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = or i32 %8, 4
  store i32 %9, i32* %7, align 4
  store i8 0, i8* %touching, align 1
  %10 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %wasTouching, align 1
  %15 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 6
  %16 = load %class.b2Fixture** %15, align 4
  %17 = call zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %16)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %sensorA, align 1
  %19 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 7
  %20 = load %class.b2Fixture** %19, align 4
  %21 = call zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %20)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %sensorB, align 1
  %23 = load i8* %sensorA, align 1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %0
  %26 = load i8* %sensorB, align 1
  %27 = trunc i8 %26 to i1
  br label %28

; <label>:28                                      ; preds = %25, %0
  %29 = phi i1 [ true, %0 ], [ %27, %25 ]
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %sensor, align 1
  %31 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 6
  %32 = load %class.b2Fixture** %31, align 4
  %33 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %32)
  store %class.b2Body* %33, %class.b2Body** %bodyA, align 4
  %34 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 7
  %35 = load %class.b2Fixture** %34, align 4
  %36 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %35)
  store %class.b2Body* %36, %class.b2Body** %bodyB, align 4
  %37 = load %class.b2Body** %bodyA, align 4
  %38 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %37)
  store %struct.b2Transform* %38, %struct.b2Transform** %xfA, align 4
  %39 = load %class.b2Body** %bodyB, align 4
  %40 = call %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %39)
  store %struct.b2Transform* %40, %struct.b2Transform** %xfB, align 4
  %41 = load i8* %sensor, align 1
  %42 = trunc i8 %41 to i1
  br i1 %42, label %43, label %62

; <label>:43                                      ; preds = %28
  %44 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 6
  %45 = load %class.b2Fixture** %44, align 4
  %46 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %45)
  store %class.b2Shape* %46, %class.b2Shape** %shapeA, align 4
  %47 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 7
  %48 = load %class.b2Fixture** %47, align 4
  %49 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %48)
  store %class.b2Shape* %49, %class.b2Shape** %shapeB, align 4
  %50 = load %class.b2Shape** %shapeA, align 4
  %51 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 8
  %52 = load i32* %51, align 4
  %53 = load %class.b2Shape** %shapeB, align 4
  %54 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 9
  %55 = load i32* %54, align 4
  %56 = load %struct.b2Transform** %xfA
  %57 = load %struct.b2Transform** %xfB
  %58 = call zeroext i1 @_Z13b2TestOverlapPK7b2ShapeiS1_iRK11b2TransformS4_(%class.b2Shape* %50, i32 %52, %class.b2Shape* %53, i32 %55, %struct.b2Transform* %56, %struct.b2Transform* %57)
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %touching, align 1
  %60 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %61 = getelementptr inbounds %struct.b2Manifold* %60, i32 0, i32 4
  store i32 0, i32* %61, align 4
  br label %143

; <label>:62                                      ; preds = %28
  %63 = bitcast %class.b2Contact* %3 to void (%class.b2Contact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)***
  %64 = load void (%class.b2Contact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)*** %63
  %65 = getelementptr inbounds void (%class.b2Contact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)** %64, i64 0
  %66 = load void (%class.b2Contact*, %struct.b2Manifold*, %struct.b2Transform*, %struct.b2Transform*)** %65
  %67 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %68 = load %struct.b2Transform** %xfA
  %69 = load %struct.b2Transform** %xfB
  call void %66(%class.b2Contact* %3, %struct.b2Manifold* %67, %struct.b2Transform* %68, %struct.b2Transform* %69)
  %70 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %71 = getelementptr inbounds %struct.b2Manifold* %70, i32 0, i32 4
  %72 = load i32* %71, align 4
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %touching, align 1
  store i32 0, i32* %i, align 4
  br label %75

; <label>:75                                      ; preds = %128, %62
  %76 = load i32* %i, align 4
  %77 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %78 = getelementptr inbounds %struct.b2Manifold* %77, i32 0, i32 4
  %79 = load i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %131

; <label>:81                                      ; preds = %75
  %82 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 10
  %83 = getelementptr inbounds %struct.b2Manifold* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %83, i32 0, i32 0
  %85 = load i32* %i, align 4
  %86 = getelementptr inbounds %struct.b2ManifoldPoint* %84, i32 %85
  store %struct.b2ManifoldPoint* %86, %struct.b2ManifoldPoint** %mp2, align 4
  %87 = load %struct.b2ManifoldPoint** %mp2, align 4
  %88 = getelementptr inbounds %struct.b2ManifoldPoint* %87, i32 0, i32 1
  store float 0.000000e+00, float* %88, align 4
  %89 = load %struct.b2ManifoldPoint** %mp2, align 4
  %90 = getelementptr inbounds %struct.b2ManifoldPoint* %89, i32 0, i32 2
  store float 0.000000e+00, float* %90, align 4
  %91 = load %struct.b2ManifoldPoint** %mp2, align 4
  %92 = getelementptr inbounds %struct.b2ManifoldPoint* %91, i32 0, i32 3
  %93 = bitcast %union.b2ContactID* %id2 to i8*
  %94 = bitcast %union.b2ContactID* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %93, i8* %94, i32 4, i32 4, i1 false)
  store i32 0, i32* %j, align 4
  br label %95

; <label>:95                                      ; preds = %124, %81
  %96 = load i32* %j, align 4
  %97 = getelementptr inbounds %struct.b2Manifold* %oldManifold, i32 0, i32 4
  %98 = load i32* %97, align 4
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %127

; <label>:100                                     ; preds = %95
  %101 = getelementptr inbounds %struct.b2Manifold* %oldManifold, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %101, i32 0, i32 0
  %103 = load i32* %j, align 4
  %104 = getelementptr inbounds %struct.b2ManifoldPoint* %102, i32 %103
  store %struct.b2ManifoldPoint* %104, %struct.b2ManifoldPoint** %mp1, align 4
  %105 = load %struct.b2ManifoldPoint** %mp1, align 4
  %106 = getelementptr inbounds %struct.b2ManifoldPoint* %105, i32 0, i32 3
  %107 = bitcast %union.b2ContactID* %106 to i32*
  %108 = load i32* %107, align 4
  %109 = bitcast %union.b2ContactID* %id2 to i32*
  %110 = load i32* %109, align 4
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %123

; <label>:112                                     ; preds = %100
  %113 = load %struct.b2ManifoldPoint** %mp1, align 4
  %114 = getelementptr inbounds %struct.b2ManifoldPoint* %113, i32 0, i32 1
  %115 = load float* %114, align 4
  %116 = load %struct.b2ManifoldPoint** %mp2, align 4
  %117 = getelementptr inbounds %struct.b2ManifoldPoint* %116, i32 0, i32 1
  store float %115, float* %117, align 4
  %118 = load %struct.b2ManifoldPoint** %mp1, align 4
  %119 = getelementptr inbounds %struct.b2ManifoldPoint* %118, i32 0, i32 2
  %120 = load float* %119, align 4
  %121 = load %struct.b2ManifoldPoint** %mp2, align 4
  %122 = getelementptr inbounds %struct.b2ManifoldPoint* %121, i32 0, i32 2
  store float %120, float* %122, align 4
  br label %127

; <label>:123                                     ; preds = %100
  br label %124

; <label>:124                                     ; preds = %123
  %125 = load i32* %j, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %j, align 4
  br label %95

; <label>:127                                     ; preds = %112, %95
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32* %i, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4
  br label %75

; <label>:131                                     ; preds = %75
  %132 = load i8* %touching, align 1
  %133 = trunc i8 %132 to i1
  %134 = zext i1 %133 to i32
  %135 = load i8* %wasTouching, align 1
  %136 = trunc i8 %135 to i1
  %137 = zext i1 %136 to i32
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %142

; <label>:139                                     ; preds = %131
  %140 = load %class.b2Body** %bodyA, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %140, i1 zeroext true)
  %141 = load %class.b2Body** %bodyB, align 4
  call void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %141, i1 zeroext true)
  br label %142

; <label>:142                                     ; preds = %139, %131
  br label %143

; <label>:143                                     ; preds = %142, %43
  %144 = load i8* %touching, align 1
  %145 = trunc i8 %144 to i1
  br i1 %145, label %146, label %150

; <label>:146                                     ; preds = %143
  %147 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 1
  %148 = load i32* %147, align 4
  %149 = or i32 %148, 2
  store i32 %149, i32* %147, align 4
  br label %154

; <label>:150                                     ; preds = %143
  %151 = getelementptr inbounds %class.b2Contact* %3, i32 0, i32 1
  %152 = load i32* %151, align 4
  %153 = and i32 %152, -3
  store i32 %153, i32* %151, align 4
  br label %154

; <label>:154                                     ; preds = %150, %146
  %155 = load i8* %wasTouching, align 1
  %156 = trunc i8 %155 to i1
  %157 = zext i1 %156 to i32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %173

; <label>:159                                     ; preds = %154
  %160 = load i8* %touching, align 1
  %161 = trunc i8 %160 to i1
  %162 = zext i1 %161 to i32
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %173

; <label>:164                                     ; preds = %159
  %165 = load %class.b2ContactListener** %2, align 4
  %166 = icmp ne %class.b2ContactListener* %165, null
  br i1 %166, label %167, label %173

; <label>:167                                     ; preds = %164
  %168 = load %class.b2ContactListener** %2, align 4
  %169 = bitcast %class.b2ContactListener* %168 to void (%class.b2ContactListener*, %class.b2Contact*)***
  %170 = load void (%class.b2ContactListener*, %class.b2Contact*)*** %169
  %171 = getelementptr inbounds void (%class.b2ContactListener*, %class.b2Contact*)** %170, i64 2
  %172 = load void (%class.b2ContactListener*, %class.b2Contact*)** %171
  call void %172(%class.b2ContactListener* %168, %class.b2Contact* %3)
  br label %173

; <label>:173                                     ; preds = %167, %164, %159, %154
  %174 = load i8* %wasTouching, align 1
  %175 = trunc i8 %174 to i1
  %176 = zext i1 %175 to i32
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %192

; <label>:178                                     ; preds = %173
  %179 = load i8* %touching, align 1
  %180 = trunc i8 %179 to i1
  %181 = zext i1 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %192

; <label>:183                                     ; preds = %178
  %184 = load %class.b2ContactListener** %2, align 4
  %185 = icmp ne %class.b2ContactListener* %184, null
  br i1 %185, label %186, label %192

; <label>:186                                     ; preds = %183
  %187 = load %class.b2ContactListener** %2, align 4
  %188 = bitcast %class.b2ContactListener* %187 to void (%class.b2ContactListener*, %class.b2Contact*)***
  %189 = load void (%class.b2ContactListener*, %class.b2Contact*)*** %188
  %190 = getelementptr inbounds void (%class.b2ContactListener*, %class.b2Contact*)** %189, i64 3
  %191 = load void (%class.b2ContactListener*, %class.b2Contact*)** %190
  call void %191(%class.b2ContactListener* %187, %class.b2Contact* %3)
  br label %192

; <label>:192                                     ; preds = %186, %183, %178, %173
  %193 = load i8* %sensor, align 1
  %194 = trunc i8 %193 to i1
  %195 = zext i1 %194 to i32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %209

; <label>:197                                     ; preds = %192
  %198 = load i8* %touching, align 1
  %199 = trunc i8 %198 to i1
  br i1 %199, label %200, label %209

; <label>:200                                     ; preds = %197
  %201 = load %class.b2ContactListener** %2, align 4
  %202 = icmp ne %class.b2ContactListener* %201, null
  br i1 %202, label %203, label %209

; <label>:203                                     ; preds = %200
  %204 = load %class.b2ContactListener** %2, align 4
  %205 = bitcast %class.b2ContactListener* %204 to void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2Manifold*)***
  %206 = load void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2Manifold*)*** %205
  %207 = getelementptr inbounds void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2Manifold*)** %206, i64 4
  %208 = load void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2Manifold*)** %207
  call void %208(%class.b2ContactListener* %204, %class.b2Contact* %3, %struct.b2Manifold* %oldManifold)
  br label %209

; <label>:209                                     ; preds = %203, %200, %197, %192
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define linkonce_odr zeroext i1 @_ZNK9b2Fixture8IsSensorEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 9
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

define linkonce_odr %struct.b2Transform* @_ZNK6b2Body12GetTransformEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 3
  ret %struct.b2Transform* %3
}

define linkonce_odr %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  ret %class.b2Shape* %4
}

declare zeroext i1 @_Z13b2TestOverlapPK7b2ShapeiS1_iRK11b2TransformS4_(%class.b2Shape*, i32, %class.b2Shape*, i32, %struct.b2Transform*, %struct.b2Transform*)

declare void @__cxa_pure_virtual()

define linkonce_odr void @_ZN9b2ContactD1Ev(%class.b2Contact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  call void @_ZN9b2ContactD2Ev(%class.b2Contact* %2)
  ret void
}

define linkonce_odr void @_ZN9b2ContactD0Ev(%class.b2Contact* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Contact*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %4 = load %class.b2Contact** %1
  invoke void @_ZN9b2ContactD1Ev(%class.b2Contact* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2Contact* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2Contact* %4 to i8*
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

declare i32 @__gxx_personality_v0(...)

declare void @_ZdlPv(i8*) nounwind

define linkonce_odr void @_ZN9b2ContactD2Ev(%class.b2Contact* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
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

define linkonce_odr void @_ZN10b2ManifoldC2Ev(%struct.b2Manifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2Manifold*, align 4
  store %struct.b2Manifold* %this, %struct.b2Manifold** %1, align 4
  %2 = load %struct.b2Manifold** %1
  %3 = getelementptr inbounds %struct.b2Manifold* %2, i32 0, i32 0
  %4 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2ManifoldPoint* %4, i32 2
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %struct.b2ManifoldPoint* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN15b2ManifoldPointC1Ev(%struct.b2ManifoldPoint* %7)
  %8 = getelementptr inbounds %struct.b2ManifoldPoint* %7, i32 1
  %9 = icmp eq %struct.b2ManifoldPoint* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.b2Manifold* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %11)
  %12 = getelementptr inbounds %struct.b2Manifold* %2, i32 0, i32 2
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %12)
  ret void
}

define linkonce_odr void @_ZN15b2ManifoldPointC1Ev(%struct.b2ManifoldPoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ManifoldPoint*, align 4
  store %struct.b2ManifoldPoint* %this, %struct.b2ManifoldPoint** %1, align 4
  %2 = load %struct.b2ManifoldPoint** %1
  call void @_ZN15b2ManifoldPointC2Ev(%struct.b2ManifoldPoint* %2)
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

define linkonce_odr void @_ZN15b2ManifoldPointC2Ev(%struct.b2ManifoldPoint* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2ManifoldPoint*, align 4
  store %struct.b2ManifoldPoint* %this, %struct.b2ManifoldPoint** %1, align 4
  %2 = load %struct.b2ManifoldPoint** %1
  %3 = getelementptr inbounds %struct.b2ManifoldPoint* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2ManifoldPoint* %2, i32 0, i32 3
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

define linkonce_odr i32 @_ZNK7b2Shape7GetTypeEv(%class.b2Shape* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Shape*, align 4
  store %class.b2Shape* %this, %class.b2Shape** %1, align 4
  %2 = load %class.b2Shape** %1
  %3 = getelementptr inbounds %class.b2Shape* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}
