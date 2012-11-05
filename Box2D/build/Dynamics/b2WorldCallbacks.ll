; ModuleID = 'Dynamics/b2WorldCallbacks.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2ContactFilter = type { i32 (...)** }
%class.b2Fixture = type { float, %class.b2Fixture*, %class.b2Body*, %class.b2Shape*, float, float, %struct.b2FixtureProxy*, i32, %struct.b2Filter, i8, i8* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2World = type opaque
%struct.b2JointEdge = type opaque
%struct.b2ContactEdge = type opaque
%class.b2Shape = type { i32 (...)**, i32, float }
%struct.b2FixtureProxy = type { %struct.b2AABB, %class.b2Fixture*, i32, i32 }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2Filter = type { i16, i16, i16 }

@_ZTV15b2ContactFilter = unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI15b2ContactFilter to i8*), i8* bitcast (void (%class.b2ContactFilter*)* @_ZN15b2ContactFilterD1Ev to i8*), i8* bitcast (void (%class.b2ContactFilter*)* @_ZN15b2ContactFilterD0Ev to i8*), i8* bitcast (i1 (%class.b2ContactFilter*, %class.b2Fixture*, %class.b2Fixture*)* @_ZN15b2ContactFilter13ShouldCollideEP9b2FixtureS1_ to i8*)]
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS15b2ContactFilter = constant [18 x i8] c"15b2ContactFilter\00"
@_ZTI15b2ContactFilter = unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([18 x i8]* @_ZTS15b2ContactFilter, i32 0, i32 0) }

define zeroext i1 @_ZN15b2ContactFilter13ShouldCollideEP9b2FixtureS1_(%class.b2ContactFilter* %this, %class.b2Fixture* %fixtureA, %class.b2Fixture* %fixtureB) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2ContactFilter*, align 4
  %3 = alloca %class.b2Fixture*, align 4
  %4 = alloca %class.b2Fixture*, align 4
  %filterA = alloca %struct.b2Filter*, align 4
  %filterB = alloca %struct.b2Filter*, align 4
  %collide = alloca i8, align 1
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %2, align 4
  store %class.b2Fixture* %fixtureA, %class.b2Fixture** %3, align 4
  store %class.b2Fixture* %fixtureB, %class.b2Fixture** %4, align 4
  %5 = load %class.b2ContactFilter** %2
  %6 = load %class.b2Fixture** %3, align 4
  %7 = call %struct.b2Filter* @_ZNK9b2Fixture13GetFilterDataEv(%class.b2Fixture* %6)
  store %struct.b2Filter* %7, %struct.b2Filter** %filterA, align 4
  %8 = load %class.b2Fixture** %4, align 4
  %9 = call %struct.b2Filter* @_ZNK9b2Fixture13GetFilterDataEv(%class.b2Fixture* %8)
  store %struct.b2Filter* %9, %struct.b2Filter** %filterB, align 4
  %10 = load %struct.b2Filter** %filterA
  %11 = getelementptr inbounds %struct.b2Filter* %10, i32 0, i32 2
  %12 = load i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = load %struct.b2Filter** %filterB
  %15 = getelementptr inbounds %struct.b2Filter* %14, i32 0, i32 2
  %16 = load i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %31

; <label>:19                                      ; preds = %0
  %20 = load %struct.b2Filter** %filterA
  %21 = getelementptr inbounds %struct.b2Filter* %20, i32 0, i32 2
  %22 = load i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

; <label>:25                                      ; preds = %19
  %26 = load %struct.b2Filter** %filterA
  %27 = getelementptr inbounds %struct.b2Filter* %26, i32 0, i32 2
  %28 = load i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i32 %29, 0
  store i1 %30, i1* %1
  br label %58

; <label>:31                                      ; preds = %19, %0
  %32 = load %struct.b2Filter** %filterA
  %33 = getelementptr inbounds %struct.b2Filter* %32, i32 0, i32 1
  %34 = load i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = load %struct.b2Filter** %filterB
  %37 = getelementptr inbounds %struct.b2Filter* %36, i32 0, i32 0
  %38 = load i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

; <label>:42                                      ; preds = %31
  %43 = load %struct.b2Filter** %filterA
  %44 = getelementptr inbounds %struct.b2Filter* %43, i32 0, i32 0
  %45 = load i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = load %struct.b2Filter** %filterB
  %48 = getelementptr inbounds %struct.b2Filter* %47, i32 0, i32 1
  %49 = load i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  br label %53

; <label>:53                                      ; preds = %42, %31
  %54 = phi i1 [ false, %31 ], [ %52, %42 ]
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %collide, align 1
  %56 = load i8* %collide, align 1
  %57 = trunc i8 %56 to i1
  store i1 %57, i1* %1
  br label %58

; <label>:58                                      ; preds = %53, %25
  %59 = load i1* %1
  ret i1 %59
}

define linkonce_odr %struct.b2Filter* @_ZNK9b2Fixture13GetFilterDataEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 8
  ret %struct.b2Filter* %3
}

define linkonce_odr void @_ZN15b2ContactFilterD1Ev(%class.b2ContactFilter* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  call void @_ZN15b2ContactFilterD2Ev(%class.b2ContactFilter* %2)
  ret void
}

define linkonce_odr void @_ZN15b2ContactFilterD0Ev(%class.b2ContactFilter* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %4 = load %class.b2ContactFilter** %1
  invoke void @_ZN15b2ContactFilterD1Ev(%class.b2ContactFilter* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2ContactFilter* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2ContactFilter* %4 to i8*
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

define linkonce_odr void @_ZN15b2ContactFilterD2Ev(%class.b2ContactFilter* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2ContactFilter*, align 4
  store %class.b2ContactFilter* %this, %class.b2ContactFilter** %1, align 4
  %2 = load %class.b2ContactFilter** %1
  ret void
}
