; ModuleID = 'Dynamics/b2Island.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Island = type { %class.b2StackAllocator*, %class.b2ContactListener*, %class.b2Body**, %class.b2Contact**, %class.b2Joint**, %struct.b2Position*, %struct.b2Velocity*, i32, i32, i32, i32, i32, i32 }
%class.b2StackAllocator = type { [102400 x i8], i32, i32, i32, [32 x %struct.b2StackEntry], i32 }
%struct.b2StackEntry = type { i8*, i32, i8 }
%class.b2ContactListener = type { i32 (...)** }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2Sweep = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2World = type { %class.b2BlockAllocator, %class.b2StackAllocator, i32, %class.b2ContactManager, %class.b2Body*, %class.b2Joint*, i32, i32, %struct.b2Vec2, i8, %class.b2DestructionListener*, %class.b2Draw*, float, i8, i8, i8, i8, %struct.b2Profile }
%class.b2BlockAllocator = type { %struct.b2Chunk*, i32, i32, [14 x %struct.b2Block*] }
%struct.b2Chunk = type opaque
%struct.b2Block = type opaque
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
%class.b2Joint = type { i32 (...)**, i32, %class.b2Joint*, %class.b2Joint*, %struct.b2JointEdge, %struct.b2JointEdge, %class.b2Body*, %class.b2Body*, i32, i8, i8, i8* }
%struct.b2JointEdge = type { %class.b2Body*, %class.b2Joint*, %struct.b2JointEdge*, %struct.b2JointEdge* }
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type opaque
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%class.b2Timer = type { i32, i32 }
%struct.b2SolverData = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity* }
%struct.b2ContactSolverDef = type { %struct.b2TimeStep, %class.b2Contact**, i32, %struct.b2Position*, %struct.b2Velocity*, %class.b2StackAllocator* }
%class.b2ContactSolver = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity*, %class.b2StackAllocator*, %struct.b2ContactPositionConstraint*, %struct.b2ContactVelocityConstraint*, %class.b2Contact**, i32 }
%struct.b2ContactPositionConstraint = type opaque
%struct.b2ContactVelocityConstraint = type { [2 x %struct.b2VelocityConstraintPoint], %struct.b2Vec2, %struct.b2Mat22, %struct.b2Mat22, i32, i32, float, float, float, float, float, float, i32, i32 }
%struct.b2VelocityConstraintPoint = type { %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2ContactImpulse = type { [2 x float], [2 x float], i32 }

@.str = private unnamed_addr constant [24 x i8] c"toiIndexA < m_bodyCount\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"Dynamics/b2Island.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN8b2Island8SolveTOIERK10b2TimeStepii = private unnamed_addr constant [58 x i8] c"void b2Island::SolveTOI(const b2TimeStep &, int32, int32)\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"toiIndexB < m_bodyCount\00", align 1

@_ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener = alias void (%class.b2Island*, i32, i32, i32, %class.b2StackAllocator*, %class.b2ContactListener*)* @_ZN8b2IslandC2EiiiP16b2StackAllocatorP17b2ContactListener
@_ZN8b2IslandD1Ev = alias void (%class.b2Island*)* @_ZN8b2IslandD2Ev

define void @_ZN8b2IslandC2EiiiP16b2StackAllocatorP17b2ContactListener(%class.b2Island* %this, i32 %bodyCapacity, i32 %contactCapacity, i32 %jointCapacity, %class.b2StackAllocator* %allocator, %class.b2ContactListener* %listener) unnamed_addr align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.b2StackAllocator*, align 4
  %6 = alloca %class.b2ContactListener*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store i32 %bodyCapacity, i32* %2, align 4
  store i32 %contactCapacity, i32* %3, align 4
  store i32 %jointCapacity, i32* %4, align 4
  store %class.b2StackAllocator* %allocator, %class.b2StackAllocator** %5, align 4
  store %class.b2ContactListener* %listener, %class.b2ContactListener** %6, align 4
  %7 = load %class.b2Island** %1
  %8 = load i32* %2, align 4
  %9 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 10
  store i32 %8, i32* %9, align 4
  %10 = load i32* %3, align 4
  %11 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 11
  store i32 %10, i32* %11, align 4
  %12 = load i32* %4, align 4
  %13 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 12
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 7
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 9
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 8
  store i32 0, i32* %16, align 4
  %17 = load %class.b2StackAllocator** %5, align 4
  %18 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  store %class.b2StackAllocator* %17, %class.b2StackAllocator** %18, align 4
  %19 = load %class.b2ContactListener** %6, align 4
  %20 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 1
  store %class.b2ContactListener* %19, %class.b2ContactListener** %20, align 4
  %21 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  %22 = load %class.b2StackAllocator** %21, align 4
  %23 = load i32* %2, align 4
  %24 = mul i32 %23, 4
  %25 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %22, i32 %24)
  %26 = bitcast i8* %25 to %class.b2Body**
  %27 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 2
  store %class.b2Body** %26, %class.b2Body*** %27, align 4
  %28 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  %29 = load %class.b2StackAllocator** %28, align 4
  %30 = load i32* %3, align 4
  %31 = mul i32 %30, 4
  %32 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %29, i32 %31)
  %33 = bitcast i8* %32 to %class.b2Contact**
  %34 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 3
  store %class.b2Contact** %33, %class.b2Contact*** %34, align 4
  %35 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  %36 = load %class.b2StackAllocator** %35, align 4
  %37 = load i32* %4, align 4
  %38 = mul i32 %37, 4
  %39 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %36, i32 %38)
  %40 = bitcast i8* %39 to %class.b2Joint**
  %41 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 4
  store %class.b2Joint** %40, %class.b2Joint*** %41, align 4
  %42 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  %43 = load %class.b2StackAllocator** %42, align 4
  %44 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 10
  %45 = load i32* %44, align 4
  %46 = mul i32 %45, 12
  %47 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.b2Velocity*
  %49 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 6
  store %struct.b2Velocity* %48, %struct.b2Velocity** %49, align 4
  %50 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 0
  %51 = load %class.b2StackAllocator** %50, align 4
  %52 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 10
  %53 = load i32* %52, align 4
  %54 = mul i32 %53, 12
  %55 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %51, i32 %54)
  %56 = bitcast i8* %55 to %struct.b2Position*
  %57 = getelementptr inbounds %class.b2Island* %7, i32 0, i32 5
  store %struct.b2Position* %56, %struct.b2Position** %57, align 4
  ret void
}

declare i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator*, i32)

define void @_ZN8b2IslandD2Ev(%class.b2Island* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Island*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  %2 = load %class.b2Island** %1
  %3 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 0
  %4 = load %class.b2StackAllocator** %3, align 4
  %5 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 5
  %6 = load %struct.b2Position** %5, align 4
  %7 = bitcast %struct.b2Position* %6 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %4, i8* %7)
  %8 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 0
  %9 = load %class.b2StackAllocator** %8, align 4
  %10 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 6
  %11 = load %struct.b2Velocity** %10, align 4
  %12 = bitcast %struct.b2Velocity* %11 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %9, i8* %12)
  %13 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 0
  %14 = load %class.b2StackAllocator** %13, align 4
  %15 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 4
  %16 = load %class.b2Joint*** %15, align 4
  %17 = bitcast %class.b2Joint** %16 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %14, i8* %17)
  %18 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 0
  %19 = load %class.b2StackAllocator** %18, align 4
  %20 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 3
  %21 = load %class.b2Contact*** %20, align 4
  %22 = bitcast %class.b2Contact** %21 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %19, i8* %22)
  %23 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 0
  %24 = load %class.b2StackAllocator** %23, align 4
  %25 = getelementptr inbounds %class.b2Island* %2, i32 0, i32 2
  %26 = load %class.b2Body*** %25, align 4
  %27 = bitcast %class.b2Body** %26 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %24, i8* %27)
  ret void
}

declare void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator*, i8*)

define void @_ZN8b2Island5SolveEP9b2ProfileRK10b2TimeStepRK6b2Vec2b(%class.b2Island* %this, %struct.b2Profile* %profile, %struct.b2TimeStep* %step, %struct.b2Vec2* %gravity, i1 zeroext %allowSleep) align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %struct.b2Profile*, align 4
  %3 = alloca %struct.b2TimeStep*, align 4
  %4 = alloca %struct.b2Vec2*, align 4
  %5 = alloca i8, align 1
  %timer = alloca %class.b2Timer, align 4
  %h = alloca float, align 4
  %i = alloca i32, align 4
  %b = alloca %class.b2Body*, align 4
  %c = alloca %struct.b2Vec2, align 4
  %a = alloca float, align 4
  %v = alloca %struct.b2Vec2, align 4
  %w = alloca float, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %solverData = alloca %struct.b2SolverData, align 4
  %contactSolverDef = alloca %struct.b2ContactSolverDef, align 4
  %contactSolver = alloca %class.b2ContactSolver, align 4
  %10 = alloca i8*
  %11 = alloca i32
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %i3 = alloca i32, align 4
  %c4 = alloca %struct.b2Vec2, align 4
  %a5 = alloca float, align 4
  %v6 = alloca %struct.b2Vec2, align 4
  %w7 = alloca float, align 4
  %translation = alloca %struct.b2Vec2, align 4
  %ratio = alloca float, align 4
  %rotation = alloca float, align 4
  %ratio8 = alloca float, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %positionSolved = alloca i8, align 1
  %i9 = alloca i32, align 4
  %contactsOkay = alloca i8, align 1
  %jointsOkay = alloca i8, align 1
  %i10 = alloca i32, align 4
  %jointOkay = alloca i8, align 1
  %i11 = alloca i32, align 4
  %body = alloca %class.b2Body*, align 4
  %minSleepTime = alloca float, align 4
  %linTolSqr = alloca float, align 4
  %angTolSqr = alloca float, align 4
  %i12 = alloca i32, align 4
  %b13 = alloca %class.b2Body*, align 4
  %i14 = alloca i32, align 4
  %b15 = alloca %class.b2Body*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %struct.b2Profile* %profile, %struct.b2Profile** %2, align 4
  store %struct.b2TimeStep* %step, %struct.b2TimeStep** %3, align 4
  store %struct.b2Vec2* %gravity, %struct.b2Vec2** %4, align 4
  %13 = zext i1 %allowSleep to i8
  store i8 %13, i8* %5, align 1
  %14 = load %class.b2Island** %1
  call void @_ZN7b2TimerC1Ev(%class.b2Timer* %timer)
  %15 = load %struct.b2TimeStep** %3
  %16 = getelementptr inbounds %struct.b2TimeStep* %15, i32 0, i32 0
  %17 = load float* %16, align 4
  store float %17, float* %h, align 4
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %129, %0
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 7
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %132

; <label>:23                                      ; preds = %18
  %24 = load i32* %i, align 4
  %25 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 2
  %26 = load %class.b2Body*** %25, align 4
  %27 = getelementptr inbounds %class.b2Body** %26, i32 %24
  %28 = load %class.b2Body** %27
  store %class.b2Body* %28, %class.b2Body** %b, align 4
  %29 = load %class.b2Body** %b, align 4
  %30 = getelementptr inbounds %class.b2Body* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.b2Sweep* %30, i32 0, i32 2
  %32 = bitcast %struct.b2Vec2* %c to i8*
  %33 = bitcast %struct.b2Vec2* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 8, i32 4, i1 false)
  %34 = load %class.b2Body** %b, align 4
  %35 = getelementptr inbounds %class.b2Body* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.b2Sweep* %35, i32 0, i32 4
  %37 = load float* %36, align 4
  store float %37, float* %a, align 4
  %38 = load %class.b2Body** %b, align 4
  %39 = getelementptr inbounds %class.b2Body* %38, i32 0, i32 5
  %40 = bitcast %struct.b2Vec2* %v to i8*
  %41 = bitcast %struct.b2Vec2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = load %class.b2Body** %b, align 4
  %43 = getelementptr inbounds %class.b2Body* %42, i32 0, i32 6
  %44 = load float* %43, align 4
  store float %44, float* %w, align 4
  %45 = load %class.b2Body** %b, align 4
  %46 = getelementptr inbounds %class.b2Body* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.b2Sweep* %46, i32 0, i32 1
  %48 = load %class.b2Body** %b, align 4
  %49 = getelementptr inbounds %class.b2Body* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.b2Sweep* %49, i32 0, i32 2
  %51 = bitcast %struct.b2Vec2* %47 to i8*
  %52 = bitcast %struct.b2Vec2* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %51, i8* %52, i32 8, i32 4, i1 false)
  %53 = load %class.b2Body** %b, align 4
  %54 = getelementptr inbounds %class.b2Body* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.b2Sweep* %54, i32 0, i32 4
  %56 = load float* %55, align 4
  %57 = load %class.b2Body** %b, align 4
  %58 = getelementptr inbounds %class.b2Body* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.b2Sweep* %58, i32 0, i32 3
  store float %56, float* %59, align 4
  %60 = load %class.b2Body** %b, align 4
  %61 = getelementptr inbounds %class.b2Body* %60, i32 0, i32 0
  %62 = load i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %102

; <label>:64                                      ; preds = %23
  %65 = load float* %h, align 4
  %66 = load %class.b2Body** %b, align 4
  %67 = getelementptr inbounds %class.b2Body* %66, i32 0, i32 22
  %68 = load float* %67, align 4
  %69 = load %struct.b2Vec2** %4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %68, %struct.b2Vec2* %69)
  %70 = load %class.b2Body** %b, align 4
  %71 = getelementptr inbounds %class.b2Body* %70, i32 0, i32 17
  %72 = load float* %71, align 4
  %73 = load %class.b2Body** %b, align 4
  %74 = getelementptr inbounds %class.b2Body* %73, i32 0, i32 7
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %72, %struct.b2Vec2* %74)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %8, %struct.b2Vec2* %9)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %65, %struct.b2Vec2* %7)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %v, %struct.b2Vec2* %6)
  %75 = load float* %h, align 4
  %76 = load %class.b2Body** %b, align 4
  %77 = getelementptr inbounds %class.b2Body* %76, i32 0, i32 19
  %78 = load float* %77, align 4
  %79 = fmul float %75, %78
  %80 = load %class.b2Body** %b, align 4
  %81 = getelementptr inbounds %class.b2Body* %80, i32 0, i32 8
  %82 = load float* %81, align 4
  %83 = fmul float %79, %82
  %84 = load float* %w, align 4
  %85 = fadd float %84, %83
  store float %85, float* %w, align 4
  %86 = load float* %h, align 4
  %87 = load %class.b2Body** %b, align 4
  %88 = getelementptr inbounds %class.b2Body* %87, i32 0, i32 20
  %89 = load float* %88, align 4
  %90 = fmul float %86, %89
  %91 = fsub float 1.000000e+00, %90
  %92 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %91, float 0.000000e+00, float 1.000000e+00)
  call void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %v, float %92)
  %93 = load float* %h, align 4
  %94 = load %class.b2Body** %b, align 4
  %95 = getelementptr inbounds %class.b2Body* %94, i32 0, i32 21
  %96 = load float* %95, align 4
  %97 = fmul float %93, %96
  %98 = fsub float 1.000000e+00, %97
  %99 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %98, float 0.000000e+00, float 1.000000e+00)
  %100 = load float* %w, align 4
  %101 = fmul float %100, %99
  store float %101, float* %w, align 4
  br label %102

; <label>:102                                     ; preds = %64, %23
  %103 = load i32* %i, align 4
  %104 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %105 = load %struct.b2Position** %104, align 4
  %106 = getelementptr inbounds %struct.b2Position* %105, i32 %103
  %107 = getelementptr inbounds %struct.b2Position* %106, i32 0, i32 0
  %108 = bitcast %struct.b2Vec2* %107 to i8*
  %109 = bitcast %struct.b2Vec2* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 8, i32 4, i1 false)
  %110 = load float* %a, align 4
  %111 = load i32* %i, align 4
  %112 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %113 = load %struct.b2Position** %112, align 4
  %114 = getelementptr inbounds %struct.b2Position* %113, i32 %111
  %115 = getelementptr inbounds %struct.b2Position* %114, i32 0, i32 1
  store float %110, float* %115, align 4
  %116 = load i32* %i, align 4
  %117 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %118 = load %struct.b2Velocity** %117, align 4
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 %116
  %120 = getelementptr inbounds %struct.b2Velocity* %119, i32 0, i32 0
  %121 = bitcast %struct.b2Vec2* %120 to i8*
  %122 = bitcast %struct.b2Vec2* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %121, i8* %122, i32 8, i32 4, i1 false)
  %123 = load float* %w, align 4
  %124 = load i32* %i, align 4
  %125 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %126 = load %struct.b2Velocity** %125, align 4
  %127 = getelementptr inbounds %struct.b2Velocity* %126, i32 %124
  %128 = getelementptr inbounds %struct.b2Velocity* %127, i32 0, i32 1
  store float %123, float* %128, align 4
  br label %129

; <label>:129                                     ; preds = %102
  %130 = load i32* %i, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %i, align 4
  br label %18

; <label>:132                                     ; preds = %18
  call void @_ZN7b2Timer5ResetEv(%class.b2Timer* %timer)
  %133 = getelementptr inbounds %struct.b2SolverData* %solverData, i32 0, i32 0
  %134 = load %struct.b2TimeStep** %3
  %135 = bitcast %struct.b2TimeStep* %133 to i8*
  %136 = bitcast %struct.b2TimeStep* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* %136, i32 24, i32 4, i1 false)
  %137 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %138 = load %struct.b2Position** %137, align 4
  %139 = getelementptr inbounds %struct.b2SolverData* %solverData, i32 0, i32 1
  store %struct.b2Position* %138, %struct.b2Position** %139, align 4
  %140 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %141 = load %struct.b2Velocity** %140, align 4
  %142 = getelementptr inbounds %struct.b2SolverData* %solverData, i32 0, i32 2
  store %struct.b2Velocity* %141, %struct.b2Velocity** %142, align 4
  %143 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 0
  %144 = load %struct.b2TimeStep** %3
  %145 = bitcast %struct.b2TimeStep* %143 to i8*
  %146 = bitcast %struct.b2TimeStep* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %145, i8* %146, i32 24, i32 4, i1 false)
  %147 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 3
  %148 = load %class.b2Contact*** %147, align 4
  %149 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 1
  store %class.b2Contact** %148, %class.b2Contact*** %149, align 4
  %150 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 9
  %151 = load i32* %150, align 4
  %152 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %154 = load %struct.b2Position** %153, align 4
  %155 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 3
  store %struct.b2Position* %154, %struct.b2Position** %155, align 4
  %156 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %157 = load %struct.b2Velocity** %156, align 4
  %158 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 4
  store %struct.b2Velocity* %157, %struct.b2Velocity** %158, align 4
  %159 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 0
  %160 = load %class.b2StackAllocator** %159, align 4
  %161 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 5
  store %class.b2StackAllocator* %160, %class.b2StackAllocator** %161, align 4
  call void @_ZN15b2ContactSolverC1EP18b2ContactSolverDef(%class.b2ContactSolver* %contactSolver, %struct.b2ContactSolverDef* %contactSolverDef)
  invoke void @_ZN15b2ContactSolver29InitializeVelocityConstraintsEv(%class.b2ContactSolver* %contactSolver)
          to label %162 unwind label %169

; <label>:162                                     ; preds = %132
  %163 = load %struct.b2TimeStep** %3
  %164 = getelementptr inbounds %struct.b2TimeStep* %163, i32 0, i32 5
  %165 = load i8* %164, align 1
  %166 = trunc i8 %165 to i1
  br i1 %166, label %167, label %173

; <label>:167                                     ; preds = %162
  invoke void @_ZN15b2ContactSolver9WarmStartEv(%class.b2ContactSolver* %contactSolver)
          to label %168 unwind label %169

; <label>:168                                     ; preds = %167
  br label %173

; <label>:169                                     ; preds = %520, %492, %481, %454, %440, %438, %391, %350, %341, %333, %297, %295, %287, %275, %273, %269, %241, %231, %230, %225, %211, %195, %193, %179, %167, %132
  %170 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  store i8* %171, i8** %10
  %172 = extractvalue { i8*, i32 } %170, 1
  store i32 %172, i32* %11
  invoke void @_ZN15b2ContactSolverD1Ev(%class.b2ContactSolver* %contactSolver)
          to label %534 unwind label %541

; <label>:173                                     ; preds = %168, %162
  store i32 0, i32* %i1, align 4
  br label %174

; <label>:174                                     ; preds = %190, %173
  %175 = load i32* %i1, align 4
  %176 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 8
  %177 = load i32* %176, align 4
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %193

; <label>:179                                     ; preds = %174
  %180 = load i32* %i1, align 4
  %181 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 4
  %182 = load %class.b2Joint*** %181, align 4
  %183 = getelementptr inbounds %class.b2Joint** %182, i32 %180
  %184 = load %class.b2Joint** %183
  %185 = bitcast %class.b2Joint* %184 to void (%class.b2Joint*, %struct.b2SolverData*)***
  %186 = load void (%class.b2Joint*, %struct.b2SolverData*)*** %185
  %187 = getelementptr inbounds void (%class.b2Joint*, %struct.b2SolverData*)** %186, i64 7
  %188 = load void (%class.b2Joint*, %struct.b2SolverData*)** %187
  invoke void %188(%class.b2Joint* %184, %struct.b2SolverData* %solverData)
          to label %189 unwind label %169

; <label>:189                                     ; preds = %179
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load i32* %i1, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %i1, align 4
  br label %174

; <label>:193                                     ; preds = %174
  %194 = invoke float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer)
          to label %195 unwind label %169

; <label>:195                                     ; preds = %193
  %196 = load %struct.b2Profile** %2, align 4
  %197 = getelementptr inbounds %struct.b2Profile* %196, i32 0, i32 3
  store float %194, float* %197, align 4
  invoke void @_ZN7b2Timer5ResetEv(%class.b2Timer* %timer)
          to label %198 unwind label %169

; <label>:198                                     ; preds = %195
  store i32 0, i32* %i2, align 4
  br label %199

; <label>:199                                     ; preds = %227, %198
  %200 = load i32* %i2, align 4
  %201 = load %struct.b2TimeStep** %3
  %202 = getelementptr inbounds %struct.b2TimeStep* %201, i32 0, i32 3
  %203 = load i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %230

; <label>:205                                     ; preds = %199
  store i32 0, i32* %j, align 4
  br label %206

; <label>:206                                     ; preds = %222, %205
  %207 = load i32* %j, align 4
  %208 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 8
  %209 = load i32* %208, align 4
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %225

; <label>:211                                     ; preds = %206
  %212 = load i32* %j, align 4
  %213 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 4
  %214 = load %class.b2Joint*** %213, align 4
  %215 = getelementptr inbounds %class.b2Joint** %214, i32 %212
  %216 = load %class.b2Joint** %215
  %217 = bitcast %class.b2Joint* %216 to void (%class.b2Joint*, %struct.b2SolverData*)***
  %218 = load void (%class.b2Joint*, %struct.b2SolverData*)*** %217
  %219 = getelementptr inbounds void (%class.b2Joint*, %struct.b2SolverData*)** %218, i64 8
  %220 = load void (%class.b2Joint*, %struct.b2SolverData*)** %219
  invoke void %220(%class.b2Joint* %216, %struct.b2SolverData* %solverData)
          to label %221 unwind label %169

; <label>:221                                     ; preds = %211
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32* %j, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %j, align 4
  br label %206

; <label>:225                                     ; preds = %206
  invoke void @_ZN15b2ContactSolver24SolveVelocityConstraintsEv(%class.b2ContactSolver* %contactSolver)
          to label %226 unwind label %169

; <label>:226                                     ; preds = %225
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32* %i2, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i2, align 4
  br label %199

; <label>:230                                     ; preds = %199
  invoke void @_ZN15b2ContactSolver13StoreImpulsesEv(%class.b2ContactSolver* %contactSolver)
          to label %231 unwind label %169

; <label>:231                                     ; preds = %230
  %232 = invoke float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer)
          to label %233 unwind label %169

; <label>:233                                     ; preds = %231
  %234 = load %struct.b2Profile** %2, align 4
  %235 = getelementptr inbounds %struct.b2Profile* %234, i32 0, i32 4
  store float %232, float* %235, align 4
  store i32 0, i32* %i3, align 4
  br label %236

; <label>:236                                     ; preds = %330, %233
  %237 = load i32* %i3, align 4
  %238 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 7
  %239 = load i32* %238, align 4
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %333

; <label>:241                                     ; preds = %236
  %242 = load i32* %i3, align 4
  %243 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %244 = load %struct.b2Position** %243, align 4
  %245 = getelementptr inbounds %struct.b2Position* %244, i32 %242
  %246 = getelementptr inbounds %struct.b2Position* %245, i32 0, i32 0
  %247 = bitcast %struct.b2Vec2* %c4 to i8*
  %248 = bitcast %struct.b2Vec2* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %247, i8* %248, i32 8, i32 4, i1 false)
  %249 = load i32* %i3, align 4
  %250 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %251 = load %struct.b2Position** %250, align 4
  %252 = getelementptr inbounds %struct.b2Position* %251, i32 %249
  %253 = getelementptr inbounds %struct.b2Position* %252, i32 0, i32 1
  %254 = load float* %253, align 4
  store float %254, float* %a5, align 4
  %255 = load i32* %i3, align 4
  %256 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %257 = load %struct.b2Velocity** %256, align 4
  %258 = getelementptr inbounds %struct.b2Velocity* %257, i32 %255
  %259 = getelementptr inbounds %struct.b2Velocity* %258, i32 0, i32 0
  %260 = bitcast %struct.b2Vec2* %v6 to i8*
  %261 = bitcast %struct.b2Vec2* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %260, i8* %261, i32 8, i32 4, i1 false)
  %262 = load i32* %i3, align 4
  %263 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %264 = load %struct.b2Velocity** %263, align 4
  %265 = getelementptr inbounds %struct.b2Velocity* %264, i32 %262
  %266 = getelementptr inbounds %struct.b2Velocity* %265, i32 0, i32 1
  %267 = load float* %266, align 4
  store float %267, float* %w7, align 4
  %268 = load float* %h, align 4
  invoke void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %translation, float %268, %struct.b2Vec2* %v6)
          to label %269 unwind label %169

; <label>:269                                     ; preds = %241
  %270 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %translation, %struct.b2Vec2* %translation)
          to label %271 unwind label %169

; <label>:271                                     ; preds = %269
  %272 = fcmp ogt float %270, 4.000000e+00
  br i1 %272, label %273, label %279

; <label>:273                                     ; preds = %271
  %274 = invoke float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %translation)
          to label %275 unwind label %169

; <label>:275                                     ; preds = %273
  %276 = fdiv float 2.000000e+00, %274
  store float %276, float* %ratio, align 4
  %277 = load float* %ratio, align 4
  invoke void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %v6, float %277)
          to label %278 unwind label %169

; <label>:278                                     ; preds = %275
  br label %279

; <label>:279                                     ; preds = %278, %271
  %280 = load float* %h, align 4
  %281 = load float* %w7, align 4
  %282 = fmul float %280, %281
  store float %282, float* %rotation, align 4
  %283 = load float* %rotation, align 4
  %284 = load float* %rotation, align 4
  %285 = fmul float %283, %284
  %286 = fcmp ogt float %285, 0x4003BD3CE0000000
  br i1 %286, label %287, label %295

; <label>:287                                     ; preds = %279
  %288 = load float* %rotation, align 4
  %289 = invoke float @_Z5b2AbsIfET_S0_(float %288)
          to label %290 unwind label %169

; <label>:290                                     ; preds = %287
  %291 = fdiv float 0x3FF921FB60000000, %289
  store float %291, float* %ratio8, align 4
  %292 = load float* %ratio8, align 4
  %293 = load float* %w7, align 4
  %294 = fmul float %293, %292
  store float %294, float* %w7, align 4
  br label %295

; <label>:295                                     ; preds = %290, %279
  %296 = load float* %h, align 4
  invoke void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %296, %struct.b2Vec2* %v6)
          to label %297 unwind label %169

; <label>:297                                     ; preds = %295
  invoke void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %c4, %struct.b2Vec2* %12)
          to label %298 unwind label %169

; <label>:298                                     ; preds = %297
  %299 = load float* %h, align 4
  %300 = load float* %w7, align 4
  %301 = fmul float %299, %300
  %302 = load float* %a5, align 4
  %303 = fadd float %302, %301
  store float %303, float* %a5, align 4
  %304 = load i32* %i3, align 4
  %305 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %306 = load %struct.b2Position** %305, align 4
  %307 = getelementptr inbounds %struct.b2Position* %306, i32 %304
  %308 = getelementptr inbounds %struct.b2Position* %307, i32 0, i32 0
  %309 = bitcast %struct.b2Vec2* %308 to i8*
  %310 = bitcast %struct.b2Vec2* %c4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %309, i8* %310, i32 8, i32 4, i1 false)
  %311 = load float* %a5, align 4
  %312 = load i32* %i3, align 4
  %313 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %314 = load %struct.b2Position** %313, align 4
  %315 = getelementptr inbounds %struct.b2Position* %314, i32 %312
  %316 = getelementptr inbounds %struct.b2Position* %315, i32 0, i32 1
  store float %311, float* %316, align 4
  %317 = load i32* %i3, align 4
  %318 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %319 = load %struct.b2Velocity** %318, align 4
  %320 = getelementptr inbounds %struct.b2Velocity* %319, i32 %317
  %321 = getelementptr inbounds %struct.b2Velocity* %320, i32 0, i32 0
  %322 = bitcast %struct.b2Vec2* %321 to i8*
  %323 = bitcast %struct.b2Vec2* %v6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %322, i8* %323, i32 8, i32 4, i1 false)
  %324 = load float* %w7, align 4
  %325 = load i32* %i3, align 4
  %326 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %327 = load %struct.b2Velocity** %326, align 4
  %328 = getelementptr inbounds %struct.b2Velocity* %327, i32 %325
  %329 = getelementptr inbounds %struct.b2Velocity* %328, i32 0, i32 1
  store float %324, float* %329, align 4
  br label %330

; <label>:330                                     ; preds = %298
  %331 = load i32* %i3, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %i3, align 4
  br label %236

; <label>:333                                     ; preds = %236
  invoke void @_ZN7b2Timer5ResetEv(%class.b2Timer* %timer)
          to label %334 unwind label %169

; <label>:334                                     ; preds = %333
  store i8 0, i8* %positionSolved, align 1
  store i32 0, i32* %i9, align 4
  br label %335

; <label>:335                                     ; preds = %382, %334
  %336 = load i32* %i9, align 4
  %337 = load %struct.b2TimeStep** %3
  %338 = getelementptr inbounds %struct.b2TimeStep* %337, i32 0, i32 4
  %339 = load i32* %338, align 4
  %340 = icmp slt i32 %336, %339
  br i1 %340, label %341, label %385

; <label>:341                                     ; preds = %335
  %342 = invoke zeroext i1 @_ZN15b2ContactSolver24SolvePositionConstraintsEv(%class.b2ContactSolver* %contactSolver)
          to label %343 unwind label %169

; <label>:343                                     ; preds = %341
  %344 = zext i1 %342 to i8
  store i8 %344, i8* %contactsOkay, align 1
  store i8 1, i8* %jointsOkay, align 1
  store i32 0, i32* %i10, align 4
  br label %345

; <label>:345                                     ; preds = %371, %343
  %346 = load i32* %i10, align 4
  %347 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 8
  %348 = load i32* %347, align 4
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %374

; <label>:350                                     ; preds = %345
  %351 = load i32* %i10, align 4
  %352 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 4
  %353 = load %class.b2Joint*** %352, align 4
  %354 = getelementptr inbounds %class.b2Joint** %353, i32 %351
  %355 = load %class.b2Joint** %354
  %356 = bitcast %class.b2Joint* %355 to i1 (%class.b2Joint*, %struct.b2SolverData*)***
  %357 = load i1 (%class.b2Joint*, %struct.b2SolverData*)*** %356
  %358 = getelementptr inbounds i1 (%class.b2Joint*, %struct.b2SolverData*)** %357, i64 9
  %359 = load i1 (%class.b2Joint*, %struct.b2SolverData*)** %358
  %360 = invoke zeroext i1 %359(%class.b2Joint* %355, %struct.b2SolverData* %solverData)
          to label %361 unwind label %169

; <label>:361                                     ; preds = %350
  %362 = zext i1 %360 to i8
  store i8 %362, i8* %jointOkay, align 1
  %363 = load i8* %jointsOkay, align 1
  %364 = trunc i8 %363 to i1
  br i1 %364, label %365, label %368

; <label>:365                                     ; preds = %361
  %366 = load i8* %jointOkay, align 1
  %367 = trunc i8 %366 to i1
  br label %368

; <label>:368                                     ; preds = %365, %361
  %369 = phi i1 [ false, %361 ], [ %367, %365 ]
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %jointsOkay, align 1
  br label %371

; <label>:371                                     ; preds = %368
  %372 = load i32* %i10, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %i10, align 4
  br label %345

; <label>:374                                     ; preds = %345
  %375 = load i8* %contactsOkay, align 1
  %376 = trunc i8 %375 to i1
  br i1 %376, label %377, label %381

; <label>:377                                     ; preds = %374
  %378 = load i8* %jointsOkay, align 1
  %379 = trunc i8 %378 to i1
  br i1 %379, label %380, label %381

; <label>:380                                     ; preds = %377
  store i8 1, i8* %positionSolved, align 1
  br label %385

; <label>:381                                     ; preds = %377, %374
  br label %382

; <label>:382                                     ; preds = %381
  %383 = load i32* %i9, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %i9, align 4
  br label %335

; <label>:385                                     ; preds = %380, %335
  store i32 0, i32* %i11, align 4
  br label %386

; <label>:386                                     ; preds = %435, %385
  %387 = load i32* %i11, align 4
  %388 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 7
  %389 = load i32* %388, align 4
  %390 = icmp slt i32 %387, %389
  br i1 %390, label %391, label %438

; <label>:391                                     ; preds = %386
  %392 = load i32* %i11, align 4
  %393 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 2
  %394 = load %class.b2Body*** %393, align 4
  %395 = getelementptr inbounds %class.b2Body** %394, i32 %392
  %396 = load %class.b2Body** %395
  store %class.b2Body* %396, %class.b2Body** %body, align 4
  %397 = load %class.b2Body** %body, align 4
  %398 = getelementptr inbounds %class.b2Body* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.b2Sweep* %398, i32 0, i32 2
  %400 = load i32* %i11, align 4
  %401 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %402 = load %struct.b2Position** %401, align 4
  %403 = getelementptr inbounds %struct.b2Position* %402, i32 %400
  %404 = getelementptr inbounds %struct.b2Position* %403, i32 0, i32 0
  %405 = bitcast %struct.b2Vec2* %399 to i8*
  %406 = bitcast %struct.b2Vec2* %404 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %405, i8* %406, i32 8, i32 4, i1 false)
  %407 = load i32* %i11, align 4
  %408 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 5
  %409 = load %struct.b2Position** %408, align 4
  %410 = getelementptr inbounds %struct.b2Position* %409, i32 %407
  %411 = getelementptr inbounds %struct.b2Position* %410, i32 0, i32 1
  %412 = load float* %411, align 4
  %413 = load %class.b2Body** %body, align 4
  %414 = getelementptr inbounds %class.b2Body* %413, i32 0, i32 4
  %415 = getelementptr inbounds %struct.b2Sweep* %414, i32 0, i32 4
  store float %412, float* %415, align 4
  %416 = load %class.b2Body** %body, align 4
  %417 = getelementptr inbounds %class.b2Body* %416, i32 0, i32 5
  %418 = load i32* %i11, align 4
  %419 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %420 = load %struct.b2Velocity** %419, align 4
  %421 = getelementptr inbounds %struct.b2Velocity* %420, i32 %418
  %422 = getelementptr inbounds %struct.b2Velocity* %421, i32 0, i32 0
  %423 = bitcast %struct.b2Vec2* %417 to i8*
  %424 = bitcast %struct.b2Vec2* %422 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %423, i8* %424, i32 8, i32 4, i1 false)
  %425 = load i32* %i11, align 4
  %426 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 6
  %427 = load %struct.b2Velocity** %426, align 4
  %428 = getelementptr inbounds %struct.b2Velocity* %427, i32 %425
  %429 = getelementptr inbounds %struct.b2Velocity* %428, i32 0, i32 1
  %430 = load float* %429, align 4
  %431 = load %class.b2Body** %body, align 4
  %432 = getelementptr inbounds %class.b2Body* %431, i32 0, i32 6
  store float %430, float* %432, align 4
  %433 = load %class.b2Body** %body, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %433)
          to label %434 unwind label %169

; <label>:434                                     ; preds = %391
  br label %435

; <label>:435                                     ; preds = %434
  %436 = load i32* %i11, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %i11, align 4
  br label %386

; <label>:438                                     ; preds = %386
  %439 = invoke float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer* %timer)
          to label %440 unwind label %169

; <label>:440                                     ; preds = %438
  %441 = load %struct.b2Profile** %2, align 4
  %442 = getelementptr inbounds %struct.b2Profile* %441, i32 0, i32 5
  store float %439, float* %442, align 4
  %443 = getelementptr inbounds %class.b2ContactSolver* %contactSolver, i32 0, i32 5
  %444 = load %struct.b2ContactVelocityConstraint** %443, align 4
  invoke void @_ZN8b2Island6ReportEPK27b2ContactVelocityConstraint(%class.b2Island* %14, %struct.b2ContactVelocityConstraint* %444)
          to label %445 unwind label %169

; <label>:445                                     ; preds = %440
  %446 = load i8* %5, align 1
  %447 = trunc i8 %446 to i1
  br i1 %447, label %448, label %533

; <label>:448                                     ; preds = %445
  store float 0x47EFFFFFE0000000, float* %minSleepTime, align 4
  store float 0x3F1A36E2E0000000, float* %linTolSqr, align 4
  store float 0x3F53F6A220000000, float* %angTolSqr, align 4
  store i32 0, i32* %i12, align 4
  br label %449

; <label>:449                                     ; preds = %505, %448
  %450 = load i32* %i12, align 4
  %451 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 7
  %452 = load i32* %451, align 4
  %453 = icmp slt i32 %450, %452
  br i1 %453, label %454, label %508

; <label>:454                                     ; preds = %449
  %455 = load i32* %i12, align 4
  %456 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 2
  %457 = load %class.b2Body*** %456, align 4
  %458 = getelementptr inbounds %class.b2Body** %457, i32 %455
  %459 = load %class.b2Body** %458
  store %class.b2Body* %459, %class.b2Body** %b13, align 4
  %460 = load %class.b2Body** %b13, align 4
  %461 = invoke i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %460)
          to label %462 unwind label %169

; <label>:462                                     ; preds = %454
  %463 = icmp eq i32 %461, 0
  br i1 %463, label %464, label %465

; <label>:464                                     ; preds = %462
  br label %505

; <label>:465                                     ; preds = %462
  %466 = load %class.b2Body** %b13, align 4
  %467 = getelementptr inbounds %class.b2Body* %466, i32 0, i32 1
  %468 = load i16* %467, align 2
  %469 = zext i16 %468 to i32
  %470 = and i32 %469, 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %489, label %472

; <label>:472                                     ; preds = %465
  %473 = load %class.b2Body** %b13, align 4
  %474 = getelementptr inbounds %class.b2Body* %473, i32 0, i32 6
  %475 = load float* %474, align 4
  %476 = load %class.b2Body** %b13, align 4
  %477 = getelementptr inbounds %class.b2Body* %476, i32 0, i32 6
  %478 = load float* %477, align 4
  %479 = fmul float %475, %478
  %480 = fcmp ogt float %479, 0x3F53F6A220000000
  br i1 %480, label %489, label %481

; <label>:481                                     ; preds = %472
  %482 = load %class.b2Body** %b13, align 4
  %483 = getelementptr inbounds %class.b2Body* %482, i32 0, i32 5
  %484 = load %class.b2Body** %b13, align 4
  %485 = getelementptr inbounds %class.b2Body* %484, i32 0, i32 5
  %486 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %483, %struct.b2Vec2* %485)
          to label %487 unwind label %169

; <label>:487                                     ; preds = %481
  %488 = fcmp ogt float %486, 0x3F1A36E2E0000000
  br i1 %488, label %489, label %492

; <label>:489                                     ; preds = %487, %472, %465
  %490 = load %class.b2Body** %b13, align 4
  %491 = getelementptr inbounds %class.b2Body* %490, i32 0, i32 23
  store float 0.000000e+00, float* %491, align 4
  store float 0.000000e+00, float* %minSleepTime, align 4
  br label %504

; <label>:492                                     ; preds = %487
  %493 = load float* %h, align 4
  %494 = load %class.b2Body** %b13, align 4
  %495 = getelementptr inbounds %class.b2Body* %494, i32 0, i32 23
  %496 = load float* %495, align 4
  %497 = fadd float %496, %493
  store float %497, float* %495, align 4
  %498 = load float* %minSleepTime, align 4
  %499 = load %class.b2Body** %b13, align 4
  %500 = getelementptr inbounds %class.b2Body* %499, i32 0, i32 23
  %501 = load float* %500, align 4
  %502 = invoke float @_Z5b2MinIfET_S0_S0_(float %498, float %501)
          to label %503 unwind label %169

; <label>:503                                     ; preds = %492
  store float %502, float* %minSleepTime, align 4
  br label %504

; <label>:504                                     ; preds = %503, %489
  br label %505

; <label>:505                                     ; preds = %504, %464
  %506 = load i32* %i12, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %i12, align 4
  br label %449

; <label>:508                                     ; preds = %449
  %509 = load float* %minSleepTime, align 4
  %510 = fcmp oge float %509, 5.000000e-01
  br i1 %510, label %511, label %532

; <label>:511                                     ; preds = %508
  %512 = load i8* %positionSolved, align 1
  %513 = trunc i8 %512 to i1
  br i1 %513, label %514, label %532

; <label>:514                                     ; preds = %511
  store i32 0, i32* %i14, align 4
  br label %515

; <label>:515                                     ; preds = %528, %514
  %516 = load i32* %i14, align 4
  %517 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 7
  %518 = load i32* %517, align 4
  %519 = icmp slt i32 %516, %518
  br i1 %519, label %520, label %531

; <label>:520                                     ; preds = %515
  %521 = load i32* %i14, align 4
  %522 = getelementptr inbounds %class.b2Island* %14, i32 0, i32 2
  %523 = load %class.b2Body*** %522, align 4
  %524 = getelementptr inbounds %class.b2Body** %523, i32 %521
  %525 = load %class.b2Body** %524
  store %class.b2Body* %525, %class.b2Body** %b15, align 4
  %526 = load %class.b2Body** %b15, align 4
  invoke void @_ZN6b2Body8SetAwakeEb(%class.b2Body* %526, i1 zeroext false)
          to label %527 unwind label %169

; <label>:527                                     ; preds = %520
  br label %528

; <label>:528                                     ; preds = %527
  %529 = load i32* %i14, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %i14, align 4
  br label %515

; <label>:531                                     ; preds = %515
  br label %532

; <label>:532                                     ; preds = %531, %511, %508
  br label %533

; <label>:533                                     ; preds = %532, %445
  call void @_ZN15b2ContactSolverD1Ev(%class.b2ContactSolver* %contactSolver)
  ret void

; <label>:534                                     ; preds = %169
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i8** %10
  %537 = load i8** %10
  %538 = load i32* %11
  %539 = insertvalue { i8*, i32 } undef, i8* %537, 0
  %540 = insertvalue { i8*, i32 } %539, i32 %538, 1
  resume { i8*, i32 } %540

; <label>:541                                     ; preds = %169
  %542 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN7b2TimerC1Ev(%class.b2Timer*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

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

declare void @_ZN7b2Timer5ResetEv(%class.b2Timer*)

declare void @_ZN15b2ContactSolverC1EP18b2ContactSolverDef(%class.b2ContactSolver*, %struct.b2ContactSolverDef*)

declare void @_ZN15b2ContactSolver29InitializeVelocityConstraintsEv(%class.b2ContactSolver*)

declare i32 @__gxx_personality_v0(...)

declare void @_ZN15b2ContactSolver9WarmStartEv(%class.b2ContactSolver*)

declare float @_ZNK7b2Timer15GetMillisecondsEv(%class.b2Timer*)

declare void @_ZN15b2ContactSolver24SolveVelocityConstraintsEv(%class.b2ContactSolver*)

declare void @_ZN15b2ContactSolver13StoreImpulsesEv(%class.b2ContactSolver*)

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

declare zeroext i1 @_ZN15b2ContactSolver24SolvePositionConstraintsEv(%class.b2ContactSolver*)

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

define void @_ZN8b2Island6ReportEPK27b2ContactVelocityConstraint(%class.b2Island* %this, %struct.b2ContactVelocityConstraint* %constraints) align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %struct.b2ContactVelocityConstraint*, align 4
  %i = alloca i32, align 4
  %c = alloca %class.b2Contact*, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %impulse = alloca %struct.b2ContactImpulse, align 4
  %j = alloca i32, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %struct.b2ContactVelocityConstraint* %constraints, %struct.b2ContactVelocityConstraint** %2, align 4
  %3 = load %class.b2Island** %1
  %4 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 1
  %5 = load %class.b2ContactListener** %4, align 4
  %6 = icmp eq %class.b2ContactListener* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %66

; <label>:8                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %63, %8
  %10 = load i32* %i, align 4
  %11 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 9
  %12 = load i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %66

; <label>:14                                      ; preds = %9
  %15 = load i32* %i, align 4
  %16 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 3
  %17 = load %class.b2Contact*** %16, align 4
  %18 = getelementptr inbounds %class.b2Contact** %17, i32 %15
  %19 = load %class.b2Contact** %18
  store %class.b2Contact* %19, %class.b2Contact** %c, align 4
  %20 = load %struct.b2ContactVelocityConstraint** %2, align 4
  %21 = load i32* %i, align 4
  %22 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %20, i32 %21
  store %struct.b2ContactVelocityConstraint* %22, %struct.b2ContactVelocityConstraint** %vc, align 4
  %23 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %24 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %23, i32 0, i32 12
  %25 = load i32* %24, align 4
  %26 = getelementptr inbounds %struct.b2ContactImpulse* %impulse, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %j, align 4
  br label %27

; <label>:27                                      ; preds = %52, %14
  %28 = load i32* %j, align 4
  %29 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %30 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %29, i32 0, i32 12
  %31 = load i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %55

; <label>:33                                      ; preds = %27
  %34 = load i32* %j, align 4
  %35 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %36 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %36, i32 0, i32 %34
  %38 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %37, i32 0, i32 2
  %39 = load float* %38, align 4
  %40 = load i32* %j, align 4
  %41 = getelementptr inbounds %struct.b2ContactImpulse* %impulse, i32 0, i32 0
  %42 = getelementptr inbounds [2 x float]* %41, i32 0, i32 %40
  store float %39, float* %42, align 4
  %43 = load i32* %j, align 4
  %44 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %45 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %45, i32 0, i32 %43
  %47 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %46, i32 0, i32 3
  %48 = load float* %47, align 4
  %49 = load i32* %j, align 4
  %50 = getelementptr inbounds %struct.b2ContactImpulse* %impulse, i32 0, i32 1
  %51 = getelementptr inbounds [2 x float]* %50, i32 0, i32 %49
  store float %48, float* %51, align 4
  br label %52

; <label>:52                                      ; preds = %33
  %53 = load i32* %j, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %j, align 4
  br label %27

; <label>:55                                      ; preds = %27
  %56 = getelementptr inbounds %class.b2Island* %3, i32 0, i32 1
  %57 = load %class.b2ContactListener** %56, align 4
  %58 = bitcast %class.b2ContactListener* %57 to void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2ContactImpulse*)***
  %59 = load void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2ContactImpulse*)*** %58
  %60 = getelementptr inbounds void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2ContactImpulse*)** %59, i64 5
  %61 = load void (%class.b2ContactListener*, %class.b2Contact*, %struct.b2ContactImpulse*)** %60
  %62 = load %class.b2Contact** %c, align 4
  call void %61(%class.b2ContactListener* %57, %class.b2Contact* %62, %struct.b2ContactImpulse* %impulse)
  br label %63

; <label>:63                                      ; preds = %55
  %64 = load i32* %i, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i, align 4
  br label %9

; <label>:66                                      ; preds = %7, %9
  ret void
}

define linkonce_odr i32 @_ZNK6b2Body7GetTypeEv(%class.b2Body* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Body*, align 4
  store %class.b2Body* %this, %class.b2Body** %1, align 4
  %2 = load %class.b2Body** %1
  %3 = getelementptr inbounds %class.b2Body* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  ret i32 %4
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

declare void @_ZN15b2ContactSolverD1Ev(%class.b2ContactSolver*)

declare void @_ZSt9terminatev()

define void @_ZN8b2Island8SolveTOIERK10b2TimeStepii(%class.b2Island* %this, %struct.b2TimeStep* %subStep, i32 %toiIndexA, i32 %toiIndexB) align 2 {
  %1 = alloca %class.b2Island*, align 4
  %2 = alloca %struct.b2TimeStep*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %class.b2Body*, align 4
  %contactSolverDef = alloca %struct.b2ContactSolverDef, align 4
  %contactSolver = alloca %class.b2ContactSolver, align 4
  %i1 = alloca i32, align 4
  %contactsOkay = alloca i8, align 1
  %5 = alloca i8*
  %6 = alloca i32
  %i2 = alloca i32, align 4
  %h = alloca float, align 4
  %i3 = alloca i32, align 4
  %c = alloca %struct.b2Vec2, align 4
  %a = alloca float, align 4
  %v = alloca %struct.b2Vec2, align 4
  %w = alloca float, align 4
  %translation = alloca %struct.b2Vec2, align 4
  %ratio = alloca float, align 4
  %rotation = alloca float, align 4
  %ratio4 = alloca float, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %body = alloca %class.b2Body*, align 4
  store %class.b2Island* %this, %class.b2Island** %1, align 4
  store %struct.b2TimeStep* %subStep, %struct.b2TimeStep** %2, align 4
  store i32 %toiIndexA, i32* %3, align 4
  store i32 %toiIndexB, i32* %4, align 4
  %8 = load %class.b2Island** %1
  %9 = load i32* %3, align 4
  %10 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 7
  %11 = load i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %16

; <label>:14                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0), i32 386, i8* getelementptr inbounds ([58 x i8]* @__PRETTY_FUNCTION__._ZN8b2Island8SolveTOIERK10b2TimeStepii, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i32* %4, align 4
  %18 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 7
  %19 = load i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %16
  br label %24

; <label>:22                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0), i32 387, i8* getelementptr inbounds ([58 x i8]* @__PRETTY_FUNCTION__._ZN8b2Island8SolveTOIERK10b2TimeStepii, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  store i32 0, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %72, %24
  %26 = load i32* %i, align 4
  %27 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 7
  %28 = load i32* %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %75

; <label>:30                                      ; preds = %25
  %31 = load i32* %i, align 4
  %32 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %33 = load %class.b2Body*** %32, align 4
  %34 = getelementptr inbounds %class.b2Body** %33, i32 %31
  %35 = load %class.b2Body** %34
  store %class.b2Body* %35, %class.b2Body** %b, align 4
  %36 = load i32* %i, align 4
  %37 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %38 = load %struct.b2Position** %37, align 4
  %39 = getelementptr inbounds %struct.b2Position* %38, i32 %36
  %40 = getelementptr inbounds %struct.b2Position* %39, i32 0, i32 0
  %41 = load %class.b2Body** %b, align 4
  %42 = getelementptr inbounds %class.b2Body* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.b2Sweep* %42, i32 0, i32 2
  %44 = bitcast %struct.b2Vec2* %40 to i8*
  %45 = bitcast %struct.b2Vec2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  %46 = load %class.b2Body** %b, align 4
  %47 = getelementptr inbounds %class.b2Body* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.b2Sweep* %47, i32 0, i32 4
  %49 = load float* %48, align 4
  %50 = load i32* %i, align 4
  %51 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %52 = load %struct.b2Position** %51, align 4
  %53 = getelementptr inbounds %struct.b2Position* %52, i32 %50
  %54 = getelementptr inbounds %struct.b2Position* %53, i32 0, i32 1
  store float %49, float* %54, align 4
  %55 = load i32* %i, align 4
  %56 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %57 = load %struct.b2Velocity** %56, align 4
  %58 = getelementptr inbounds %struct.b2Velocity* %57, i32 %55
  %59 = getelementptr inbounds %struct.b2Velocity* %58, i32 0, i32 0
  %60 = load %class.b2Body** %b, align 4
  %61 = getelementptr inbounds %class.b2Body* %60, i32 0, i32 5
  %62 = bitcast %struct.b2Vec2* %59 to i8*
  %63 = bitcast %struct.b2Vec2* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 8, i32 4, i1 false)
  %64 = load %class.b2Body** %b, align 4
  %65 = getelementptr inbounds %class.b2Body* %64, i32 0, i32 6
  %66 = load float* %65, align 4
  %67 = load i32* %i, align 4
  %68 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %69 = load %struct.b2Velocity** %68, align 4
  %70 = getelementptr inbounds %struct.b2Velocity* %69, i32 %67
  %71 = getelementptr inbounds %struct.b2Velocity* %70, i32 0, i32 1
  store float %66, float* %71, align 4
  br label %72

; <label>:72                                      ; preds = %30
  %73 = load i32* %i, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %i, align 4
  br label %25

; <label>:75                                      ; preds = %25
  %76 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 3
  %77 = load %class.b2Contact*** %76, align 4
  %78 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 1
  store %class.b2Contact** %77, %class.b2Contact*** %78, align 4
  %79 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 9
  %80 = load i32* %79, align 4
  %81 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 0
  %83 = load %class.b2StackAllocator** %82, align 4
  %84 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 5
  store %class.b2StackAllocator* %83, %class.b2StackAllocator** %84, align 4
  %85 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 0
  %86 = load %struct.b2TimeStep** %2
  %87 = bitcast %struct.b2TimeStep* %85 to i8*
  %88 = bitcast %struct.b2TimeStep* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %87, i8* %88, i32 24, i32 4, i1 false)
  %89 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %90 = load %struct.b2Position** %89, align 4
  %91 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 3
  store %struct.b2Position* %90, %struct.b2Position** %91, align 4
  %92 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %93 = load %struct.b2Velocity** %92, align 4
  %94 = getelementptr inbounds %struct.b2ContactSolverDef* %contactSolverDef, i32 0, i32 4
  store %struct.b2Velocity* %93, %struct.b2Velocity** %94, align 4
  call void @_ZN15b2ContactSolverC1EP18b2ContactSolverDef(%class.b2ContactSolver* %contactSolver, %struct.b2ContactSolverDef* %contactSolverDef)
  store i32 0, i32* %i1, align 4
  br label %95

; <label>:95                                      ; preds = %115, %75
  %96 = load i32* %i1, align 4
  %97 = load %struct.b2TimeStep** %2
  %98 = getelementptr inbounds %struct.b2TimeStep* %97, i32 0, i32 4
  %99 = load i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %118

; <label>:101                                     ; preds = %95
  %102 = load i32* %3, align 4
  %103 = load i32* %4, align 4
  %104 = invoke zeroext i1 @_ZN15b2ContactSolver27SolveTOIPositionConstraintsEii(%class.b2ContactSolver* %contactSolver, i32 %102, i32 %103)
          to label %105 unwind label %110

; <label>:105                                     ; preds = %101
  %106 = zext i1 %104 to i8
  store i8 %106, i8* %contactsOkay, align 1
  %107 = load i8* %contactsOkay, align 1
  %108 = trunc i8 %107 to i1
  br i1 %108, label %109, label %114

; <label>:109                                     ; preds = %105
  br label %118

; <label>:110                                     ; preds = %309, %251, %250, %248, %240, %228, %226, %222, %194, %180, %118, %101
  %111 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  store i8* %112, i8** %5
  %113 = extractvalue { i8*, i32 } %111, 1
  store i32 %113, i32* %6
  invoke void @_ZN15b2ContactSolverD1Ev(%class.b2ContactSolver* %contactSolver)
          to label %313 unwind label %320

; <label>:114                                     ; preds = %105
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load i32* %i1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %i1, align 4
  br label %95

; <label>:118                                     ; preds = %109, %95
  %119 = load i32* %3, align 4
  %120 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %121 = load %class.b2Body*** %120, align 4
  %122 = getelementptr inbounds %class.b2Body** %121, i32 %119
  %123 = load %class.b2Body** %122
  %124 = getelementptr inbounds %class.b2Body* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.b2Sweep* %124, i32 0, i32 1
  %126 = load i32* %3, align 4
  %127 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %128 = load %struct.b2Position** %127, align 4
  %129 = getelementptr inbounds %struct.b2Position* %128, i32 %126
  %130 = getelementptr inbounds %struct.b2Position* %129, i32 0, i32 0
  %131 = bitcast %struct.b2Vec2* %125 to i8*
  %132 = bitcast %struct.b2Vec2* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %131, i8* %132, i32 8, i32 4, i1 false)
  %133 = load i32* %3, align 4
  %134 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %135 = load %struct.b2Position** %134, align 4
  %136 = getelementptr inbounds %struct.b2Position* %135, i32 %133
  %137 = getelementptr inbounds %struct.b2Position* %136, i32 0, i32 1
  %138 = load float* %137, align 4
  %139 = load i32* %3, align 4
  %140 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %141 = load %class.b2Body*** %140, align 4
  %142 = getelementptr inbounds %class.b2Body** %141, i32 %139
  %143 = load %class.b2Body** %142
  %144 = getelementptr inbounds %class.b2Body* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.b2Sweep* %144, i32 0, i32 3
  store float %138, float* %145, align 4
  %146 = load i32* %4, align 4
  %147 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %148 = load %class.b2Body*** %147, align 4
  %149 = getelementptr inbounds %class.b2Body** %148, i32 %146
  %150 = load %class.b2Body** %149
  %151 = getelementptr inbounds %class.b2Body* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.b2Sweep* %151, i32 0, i32 1
  %153 = load i32* %4, align 4
  %154 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %155 = load %struct.b2Position** %154, align 4
  %156 = getelementptr inbounds %struct.b2Position* %155, i32 %153
  %157 = getelementptr inbounds %struct.b2Position* %156, i32 0, i32 0
  %158 = bitcast %struct.b2Vec2* %152 to i8*
  %159 = bitcast %struct.b2Vec2* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 8, i32 4, i1 false)
  %160 = load i32* %4, align 4
  %161 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %162 = load %struct.b2Position** %161, align 4
  %163 = getelementptr inbounds %struct.b2Position* %162, i32 %160
  %164 = getelementptr inbounds %struct.b2Position* %163, i32 0, i32 1
  %165 = load float* %164, align 4
  %166 = load i32* %4, align 4
  %167 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %168 = load %class.b2Body*** %167, align 4
  %169 = getelementptr inbounds %class.b2Body** %168, i32 %166
  %170 = load %class.b2Body** %169
  %171 = getelementptr inbounds %class.b2Body* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.b2Sweep* %171, i32 0, i32 3
  store float %165, float* %172, align 4
  invoke void @_ZN15b2ContactSolver29InitializeVelocityConstraintsEv(%class.b2ContactSolver* %contactSolver)
          to label %173 unwind label %110

; <label>:173                                     ; preds = %118
  store i32 0, i32* %i2, align 4
  br label %174

; <label>:174                                     ; preds = %182, %173
  %175 = load i32* %i2, align 4
  %176 = load %struct.b2TimeStep** %2
  %177 = getelementptr inbounds %struct.b2TimeStep* %176, i32 0, i32 3
  %178 = load i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %185

; <label>:180                                     ; preds = %174
  invoke void @_ZN15b2ContactSolver24SolveVelocityConstraintsEv(%class.b2ContactSolver* %contactSolver)
          to label %181 unwind label %110

; <label>:181                                     ; preds = %180
  br label %182

; <label>:182                                     ; preds = %181
  %183 = load i32* %i2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %i2, align 4
  br label %174

; <label>:185                                     ; preds = %174
  %186 = load %struct.b2TimeStep** %2
  %187 = getelementptr inbounds %struct.b2TimeStep* %186, i32 0, i32 0
  %188 = load float* %187, align 4
  store float %188, float* %h, align 4
  store i32 0, i32* %i3, align 4
  br label %189

; <label>:189                                     ; preds = %306, %185
  %190 = load i32* %i3, align 4
  %191 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 7
  %192 = load i32* %191, align 4
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %309

; <label>:194                                     ; preds = %189
  %195 = load i32* %i3, align 4
  %196 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %197 = load %struct.b2Position** %196, align 4
  %198 = getelementptr inbounds %struct.b2Position* %197, i32 %195
  %199 = getelementptr inbounds %struct.b2Position* %198, i32 0, i32 0
  %200 = bitcast %struct.b2Vec2* %c to i8*
  %201 = bitcast %struct.b2Vec2* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %200, i8* %201, i32 8, i32 4, i1 false)
  %202 = load i32* %i3, align 4
  %203 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %204 = load %struct.b2Position** %203, align 4
  %205 = getelementptr inbounds %struct.b2Position* %204, i32 %202
  %206 = getelementptr inbounds %struct.b2Position* %205, i32 0, i32 1
  %207 = load float* %206, align 4
  store float %207, float* %a, align 4
  %208 = load i32* %i3, align 4
  %209 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %210 = load %struct.b2Velocity** %209, align 4
  %211 = getelementptr inbounds %struct.b2Velocity* %210, i32 %208
  %212 = getelementptr inbounds %struct.b2Velocity* %211, i32 0, i32 0
  %213 = bitcast %struct.b2Vec2* %v to i8*
  %214 = bitcast %struct.b2Vec2* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %213, i8* %214, i32 8, i32 4, i1 false)
  %215 = load i32* %i3, align 4
  %216 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %217 = load %struct.b2Velocity** %216, align 4
  %218 = getelementptr inbounds %struct.b2Velocity* %217, i32 %215
  %219 = getelementptr inbounds %struct.b2Velocity* %218, i32 0, i32 1
  %220 = load float* %219, align 4
  store float %220, float* %w, align 4
  %221 = load float* %h, align 4
  invoke void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %translation, float %221, %struct.b2Vec2* %v)
          to label %222 unwind label %110

; <label>:222                                     ; preds = %194
  %223 = invoke float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %translation, %struct.b2Vec2* %translation)
          to label %224 unwind label %110

; <label>:224                                     ; preds = %222
  %225 = fcmp ogt float %223, 4.000000e+00
  br i1 %225, label %226, label %232

; <label>:226                                     ; preds = %224
  %227 = invoke float @_ZNK6b2Vec26LengthEv(%struct.b2Vec2* %translation)
          to label %228 unwind label %110

; <label>:228                                     ; preds = %226
  %229 = fdiv float 2.000000e+00, %227
  store float %229, float* %ratio, align 4
  %230 = load float* %ratio, align 4
  invoke void @_ZN6b2Vec2mLEf(%struct.b2Vec2* %v, float %230)
          to label %231 unwind label %110

; <label>:231                                     ; preds = %228
  br label %232

; <label>:232                                     ; preds = %231, %224
  %233 = load float* %h, align 4
  %234 = load float* %w, align 4
  %235 = fmul float %233, %234
  store float %235, float* %rotation, align 4
  %236 = load float* %rotation, align 4
  %237 = load float* %rotation, align 4
  %238 = fmul float %236, %237
  %239 = fcmp ogt float %238, 0x4003BD3CE0000000
  br i1 %239, label %240, label %248

; <label>:240                                     ; preds = %232
  %241 = load float* %rotation, align 4
  %242 = invoke float @_Z5b2AbsIfET_S0_(float %241)
          to label %243 unwind label %110

; <label>:243                                     ; preds = %240
  %244 = fdiv float 0x3FF921FB60000000, %242
  store float %244, float* %ratio4, align 4
  %245 = load float* %ratio4, align 4
  %246 = load float* %w, align 4
  %247 = fmul float %246, %245
  store float %247, float* %w, align 4
  br label %248

; <label>:248                                     ; preds = %243, %232
  %249 = load float* %h, align 4
  invoke void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %249, %struct.b2Vec2* %v)
          to label %250 unwind label %110

; <label>:250                                     ; preds = %248
  invoke void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %c, %struct.b2Vec2* %7)
          to label %251 unwind label %110

; <label>:251                                     ; preds = %250
  %252 = load float* %h, align 4
  %253 = load float* %w, align 4
  %254 = fmul float %252, %253
  %255 = load float* %a, align 4
  %256 = fadd float %255, %254
  store float %256, float* %a, align 4
  %257 = load i32* %i3, align 4
  %258 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %259 = load %struct.b2Position** %258, align 4
  %260 = getelementptr inbounds %struct.b2Position* %259, i32 %257
  %261 = getelementptr inbounds %struct.b2Position* %260, i32 0, i32 0
  %262 = bitcast %struct.b2Vec2* %261 to i8*
  %263 = bitcast %struct.b2Vec2* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %262, i8* %263, i32 8, i32 4, i1 false)
  %264 = load float* %a, align 4
  %265 = load i32* %i3, align 4
  %266 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 5
  %267 = load %struct.b2Position** %266, align 4
  %268 = getelementptr inbounds %struct.b2Position* %267, i32 %265
  %269 = getelementptr inbounds %struct.b2Position* %268, i32 0, i32 1
  store float %264, float* %269, align 4
  %270 = load i32* %i3, align 4
  %271 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %272 = load %struct.b2Velocity** %271, align 4
  %273 = getelementptr inbounds %struct.b2Velocity* %272, i32 %270
  %274 = getelementptr inbounds %struct.b2Velocity* %273, i32 0, i32 0
  %275 = bitcast %struct.b2Vec2* %274 to i8*
  %276 = bitcast %struct.b2Vec2* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %275, i8* %276, i32 8, i32 4, i1 false)
  %277 = load float* %w, align 4
  %278 = load i32* %i3, align 4
  %279 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 6
  %280 = load %struct.b2Velocity** %279, align 4
  %281 = getelementptr inbounds %struct.b2Velocity* %280, i32 %278
  %282 = getelementptr inbounds %struct.b2Velocity* %281, i32 0, i32 1
  store float %277, float* %282, align 4
  %283 = load i32* %i3, align 4
  %284 = getelementptr inbounds %class.b2Island* %8, i32 0, i32 2
  %285 = load %class.b2Body*** %284, align 4
  %286 = getelementptr inbounds %class.b2Body** %285, i32 %283
  %287 = load %class.b2Body** %286
  store %class.b2Body* %287, %class.b2Body** %body, align 4
  %288 = load %class.b2Body** %body, align 4
  %289 = getelementptr inbounds %class.b2Body* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.b2Sweep* %289, i32 0, i32 2
  %291 = bitcast %struct.b2Vec2* %290 to i8*
  %292 = bitcast %struct.b2Vec2* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %291, i8* %292, i32 8, i32 4, i1 false)
  %293 = load float* %a, align 4
  %294 = load %class.b2Body** %body, align 4
  %295 = getelementptr inbounds %class.b2Body* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.b2Sweep* %295, i32 0, i32 4
  store float %293, float* %296, align 4
  %297 = load %class.b2Body** %body, align 4
  %298 = getelementptr inbounds %class.b2Body* %297, i32 0, i32 5
  %299 = bitcast %struct.b2Vec2* %298 to i8*
  %300 = bitcast %struct.b2Vec2* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %299, i8* %300, i32 8, i32 4, i1 false)
  %301 = load float* %w, align 4
  %302 = load %class.b2Body** %body, align 4
  %303 = getelementptr inbounds %class.b2Body* %302, i32 0, i32 6
  store float %301, float* %303, align 4
  %304 = load %class.b2Body** %body, align 4
  invoke void @_ZN6b2Body20SynchronizeTransformEv(%class.b2Body* %304)
          to label %305 unwind label %110

; <label>:305                                     ; preds = %251
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32* %i3, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %i3, align 4
  br label %189

; <label>:309                                     ; preds = %189
  %310 = getelementptr inbounds %class.b2ContactSolver* %contactSolver, i32 0, i32 5
  %311 = load %struct.b2ContactVelocityConstraint** %310, align 4
  invoke void @_ZN8b2Island6ReportEPK27b2ContactVelocityConstraint(%class.b2Island* %8, %struct.b2ContactVelocityConstraint* %311)
          to label %312 unwind label %110

; <label>:312                                     ; preds = %309
  call void @_ZN15b2ContactSolverD1Ev(%class.b2ContactSolver* %contactSolver)
  ret void

; <label>:313                                     ; preds = %110
  br label %314

; <label>:314                                     ; preds = %313
  %315 = load i8** %5
  %316 = load i8** %5
  %317 = load i32* %6
  %318 = insertvalue { i8*, i32 } undef, i8* %316, 0
  %319 = insertvalue { i8*, i32 } %318, i32 %317, 1
  resume { i8*, i32 } %319

; <label>:320                                     ; preds = %110
  %321 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare zeroext i1 @_ZN15b2ContactSolver27SolveTOIPositionConstraintsEii(%class.b2ContactSolver*, i32, i32)

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

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

define linkonce_odr float @_ZSt4sqrtf(float %__x) nounwind inlinehint {
  %1 = alloca float, align 4
  store float %__x, float* %1, align 4
  %2 = load float* %1, align 4
  %3 = call float @sqrtf(float %2) nounwind readnone
  ret float %3
}

declare float @sqrtf(float) nounwind readnone
