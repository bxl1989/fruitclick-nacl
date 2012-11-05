; ModuleID = 'Dynamics/Contacts/b2ContactSolver.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2ContactSolver = type { %struct.b2TimeStep, %struct.b2Position*, %struct.b2Velocity*, %class.b2StackAllocator*, %struct.b2ContactPositionConstraint*, %struct.b2ContactVelocityConstraint*, %class.b2Contact**, i32 }
%struct.b2TimeStep = type { float, float, float, i32, i32, i8 }
%struct.b2Position = type { %struct.b2Vec2, float }
%struct.b2Vec2 = type { float, float }
%struct.b2Velocity = type { %struct.b2Vec2, float }
%class.b2StackAllocator = type { [102400 x i8], i32, i32, i32, [32 x %struct.b2StackEntry], i32 }
%struct.b2StackEntry = type { i8*, i32, i8 }
%struct.b2ContactPositionConstraint = type { [2 x %struct.b2Vec2], %struct.b2Vec2, %struct.b2Vec2, i32, i32, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, i32, float, float, i32 }
%struct.b2ContactVelocityConstraint = type { [2 x %struct.b2VelocityConstraintPoint], %struct.b2Vec2, %struct.b2Mat22, %struct.b2Mat22, i32, i32, float, float, float, float, float, float, i32, i32 }
%struct.b2VelocityConstraintPoint = type { %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }
%class.b2Contact = type { i32 (...)**, i32, %class.b2Contact*, %class.b2Contact*, %struct.b2ContactEdge, %struct.b2ContactEdge, %class.b2Fixture*, %class.b2Fixture*, i32, i32, %struct.b2Manifold, i32, float, float, float }
%struct.b2ContactEdge = type { %class.b2Body*, %class.b2Contact*, %struct.b2ContactEdge*, %struct.b2ContactEdge* }
%class.b2Body = type { i32, i16, i32, %struct.b2Transform, %struct.b2Sweep, %struct.b2Vec2, float, %struct.b2Vec2, float, %class.b2World*, %class.b2Body*, %class.b2Body*, %class.b2Fixture*, i32, %struct.b2JointEdge*, %struct.b2ContactEdge*, float, float, float, float, float, float, float, float, i8* }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
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
%struct.b2ContactSolverDef = type { %struct.b2TimeStep, %class.b2Contact**, i32, %struct.b2Position*, %struct.b2Velocity*, %class.b2StackAllocator* }
%struct.b2WorldManifold = type { %struct.b2Vec2, [2 x %struct.b2Vec2] }
%struct.b2PositionSolverManifold = type { %struct.b2Vec2, %struct.b2Vec2, float }

@.str = private unnamed_addr constant [15 x i8] c"pointCount > 0\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"Dynamics/Contacts/b2ContactSolver.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN15b2ContactSolverC2EP18b2ContactSolverDef = private unnamed_addr constant [55 x i8] c"b2ContactSolver::b2ContactSolver(b2ContactSolverDef *)\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"manifold->pointCount > 0\00", align 1
@__PRETTY_FUNCTION__._ZN15b2ContactSolver29InitializeVelocityConstraintsEv = private unnamed_addr constant [54 x i8] c"void b2ContactSolver::InitializeVelocityConstraints()\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"pointCount == 1 || pointCount == 2\00", align 1
@__PRETTY_FUNCTION__._ZN15b2ContactSolver24SolveVelocityConstraintsEv = private unnamed_addr constant [49 x i8] c"void b2ContactSolver::SolveVelocityConstraints()\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"a.x >= 0.0f && a.y >= 0.0f\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"pc->pointCount > 0\00", align 1
@__PRETTY_FUNCTION__._ZN24b2PositionSolverManifold10InitializeEP27b2ContactPositionConstraintRK11b2TransformS4_i = private unnamed_addr constant [122 x i8] c"void b2PositionSolverManifold::Initialize(b2ContactPositionConstraint *, const b2Transform &, const b2Transform &, int32)\00", align 1

@_ZN15b2ContactSolverC1EP18b2ContactSolverDef = alias void (%class.b2ContactSolver*, %struct.b2ContactSolverDef*)* @_ZN15b2ContactSolverC2EP18b2ContactSolverDef
@_ZN15b2ContactSolverD1Ev = alias void (%class.b2ContactSolver*)* @_ZN15b2ContactSolverD2Ev

define void @_ZN15b2ContactSolverC2EP18b2ContactSolverDef(%class.b2ContactSolver* %this, %struct.b2ContactSolverDef* %def) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %2 = alloca %struct.b2ContactSolverDef*, align 4
  %i = alloca i32, align 4
  %contact = alloca %class.b2Contact*, align 4
  %fixtureA = alloca %class.b2Fixture*, align 4
  %fixtureB = alloca %class.b2Fixture*, align 4
  %shapeA = alloca %class.b2Shape*, align 4
  %shapeB = alloca %class.b2Shape*, align 4
  %radiusA = alloca float, align 4
  %radiusB = alloca float, align 4
  %bodyA = alloca %class.b2Body*, align 4
  %bodyB = alloca %class.b2Body*, align 4
  %manifold = alloca %struct.b2Manifold*, align 4
  %pointCount = alloca i32, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %pc = alloca %struct.b2ContactPositionConstraint*, align 4
  %j = alloca i32, align 4
  %cp = alloca %struct.b2ManifoldPoint*, align 4
  %vcp = alloca %struct.b2VelocityConstraintPoint*, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  store %struct.b2ContactSolverDef* %def, %struct.b2ContactSolverDef** %2, align 4
  %3 = load %class.b2ContactSolver** %1
  %4 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 0
  %6 = load %struct.b2ContactSolverDef** %2, align 4
  %7 = getelementptr inbounds %struct.b2ContactSolverDef* %6, i32 0, i32 0
  %8 = bitcast %struct.b2TimeStep* %5 to i8*
  %9 = bitcast %struct.b2TimeStep* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 24, i32 4, i1 false)
  %10 = load %struct.b2ContactSolverDef** %2, align 4
  %11 = getelementptr inbounds %struct.b2ContactSolverDef* %10, i32 0, i32 5
  %12 = load %class.b2StackAllocator** %11, align 4
  %13 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 3
  store %class.b2StackAllocator* %12, %class.b2StackAllocator** %13, align 4
  %14 = load %struct.b2ContactSolverDef** %2, align 4
  %15 = getelementptr inbounds %struct.b2ContactSolverDef* %14, i32 0, i32 2
  %16 = load i32* %15, align 4
  %17 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 3
  %19 = load %class.b2StackAllocator** %18, align 4
  %20 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 7
  %21 = load i32* %20, align 4
  %22 = mul i32 %21, 88
  %23 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %19, i32 %22)
  %24 = bitcast i8* %23 to %struct.b2ContactPositionConstraint*
  %25 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 4
  store %struct.b2ContactPositionConstraint* %24, %struct.b2ContactPositionConstraint** %25, align 4
  %26 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 3
  %27 = load %class.b2StackAllocator** %26, align 4
  %28 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 7
  %29 = load i32* %28, align 4
  %30 = mul i32 %29, 152
  %31 = call i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator* %27, i32 %30)
  %32 = bitcast i8* %31 to %struct.b2ContactVelocityConstraint*
  %33 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 5
  store %struct.b2ContactVelocityConstraint* %32, %struct.b2ContactVelocityConstraint** %33, align 4
  %34 = load %struct.b2ContactSolverDef** %2, align 4
  %35 = getelementptr inbounds %struct.b2ContactSolverDef* %34, i32 0, i32 3
  %36 = load %struct.b2Position** %35, align 4
  %37 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 1
  store %struct.b2Position* %36, %struct.b2Position** %37, align 4
  %38 = load %struct.b2ContactSolverDef** %2, align 4
  %39 = getelementptr inbounds %struct.b2ContactSolverDef* %38, i32 0, i32 4
  %40 = load %struct.b2Velocity** %39, align 4
  %41 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 2
  store %struct.b2Velocity* %40, %struct.b2Velocity** %41, align 4
  %42 = load %struct.b2ContactSolverDef** %2, align 4
  %43 = getelementptr inbounds %struct.b2ContactSolverDef* %42, i32 0, i32 1
  %44 = load %class.b2Contact*** %43, align 4
  %45 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 6
  store %class.b2Contact** %44, %class.b2Contact*** %45, align 4
  store i32 0, i32* %i, align 4
  br label %46

; <label>:46                                      ; preds = %282, %0
  %47 = load i32* %i, align 4
  %48 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 7
  %49 = load i32* %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %285

; <label>:51                                      ; preds = %46
  %52 = load i32* %i, align 4
  %53 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 6
  %54 = load %class.b2Contact*** %53, align 4
  %55 = getelementptr inbounds %class.b2Contact** %54, i32 %52
  %56 = load %class.b2Contact** %55
  store %class.b2Contact* %56, %class.b2Contact** %contact, align 4
  %57 = load %class.b2Contact** %contact, align 4
  %58 = getelementptr inbounds %class.b2Contact* %57, i32 0, i32 6
  %59 = load %class.b2Fixture** %58, align 4
  store %class.b2Fixture* %59, %class.b2Fixture** %fixtureA, align 4
  %60 = load %class.b2Contact** %contact, align 4
  %61 = getelementptr inbounds %class.b2Contact* %60, i32 0, i32 7
  %62 = load %class.b2Fixture** %61, align 4
  store %class.b2Fixture* %62, %class.b2Fixture** %fixtureB, align 4
  %63 = load %class.b2Fixture** %fixtureA, align 4
  %64 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %63)
  store %class.b2Shape* %64, %class.b2Shape** %shapeA, align 4
  %65 = load %class.b2Fixture** %fixtureB, align 4
  %66 = call %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %65)
  store %class.b2Shape* %66, %class.b2Shape** %shapeB, align 4
  %67 = load %class.b2Shape** %shapeA, align 4
  %68 = getelementptr inbounds %class.b2Shape* %67, i32 0, i32 2
  %69 = load float* %68, align 4
  store float %69, float* %radiusA, align 4
  %70 = load %class.b2Shape** %shapeB, align 4
  %71 = getelementptr inbounds %class.b2Shape* %70, i32 0, i32 2
  %72 = load float* %71, align 4
  store float %72, float* %radiusB, align 4
  %73 = load %class.b2Fixture** %fixtureA, align 4
  %74 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %73)
  store %class.b2Body* %74, %class.b2Body** %bodyA, align 4
  %75 = load %class.b2Fixture** %fixtureB, align 4
  %76 = call %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %75)
  store %class.b2Body* %76, %class.b2Body** %bodyB, align 4
  %77 = load %class.b2Contact** %contact, align 4
  %78 = call %struct.b2Manifold* @_ZN9b2Contact11GetManifoldEv(%class.b2Contact* %77)
  store %struct.b2Manifold* %78, %struct.b2Manifold** %manifold, align 4
  %79 = load %struct.b2Manifold** %manifold, align 4
  %80 = getelementptr inbounds %struct.b2Manifold* %79, i32 0, i32 4
  %81 = load i32* %80, align 4
  store i32 %81, i32* %pointCount, align 4
  %82 = load i32* %pointCount, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %51
  br label %87

; <label>:85                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str1, i32 0, i32 0), i32 71, i8* getelementptr inbounds ([55 x i8]* @__PRETTY_FUNCTION__._ZN15b2ContactSolverC2EP18b2ContactSolverDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %87

; <label>:87                                      ; preds = %86, %84
  %88 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 5
  %89 = load %struct.b2ContactVelocityConstraint** %88, align 4
  %90 = load i32* %i, align 4
  %91 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %89, i32 %90
  store %struct.b2ContactVelocityConstraint* %91, %struct.b2ContactVelocityConstraint** %vc, align 4
  %92 = load %class.b2Contact** %contact, align 4
  %93 = getelementptr inbounds %class.b2Contact* %92, i32 0, i32 13
  %94 = load float* %93, align 4
  %95 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %96 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %95, i32 0, i32 10
  store float %94, float* %96, align 4
  %97 = load %class.b2Contact** %contact, align 4
  %98 = getelementptr inbounds %class.b2Contact* %97, i32 0, i32 14
  %99 = load float* %98, align 4
  %100 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %101 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %100, i32 0, i32 11
  store float %99, float* %101, align 4
  %102 = load %class.b2Body** %bodyA, align 4
  %103 = getelementptr inbounds %class.b2Body* %102, i32 0, i32 2
  %104 = load i32* %103, align 4
  %105 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %106 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %class.b2Body** %bodyB, align 4
  %108 = getelementptr inbounds %class.b2Body* %107, i32 0, i32 2
  %109 = load i32* %108, align 4
  %110 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %111 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %class.b2Body** %bodyA, align 4
  %113 = getelementptr inbounds %class.b2Body* %112, i32 0, i32 17
  %114 = load float* %113, align 4
  %115 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %116 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %115, i32 0, i32 6
  store float %114, float* %116, align 4
  %117 = load %class.b2Body** %bodyB, align 4
  %118 = getelementptr inbounds %class.b2Body* %117, i32 0, i32 17
  %119 = load float* %118, align 4
  %120 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %121 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %120, i32 0, i32 7
  store float %119, float* %121, align 4
  %122 = load %class.b2Body** %bodyA, align 4
  %123 = getelementptr inbounds %class.b2Body* %122, i32 0, i32 19
  %124 = load float* %123, align 4
  %125 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %126 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %125, i32 0, i32 8
  store float %124, float* %126, align 4
  %127 = load %class.b2Body** %bodyB, align 4
  %128 = getelementptr inbounds %class.b2Body* %127, i32 0, i32 19
  %129 = load float* %128, align 4
  %130 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %131 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %130, i32 0, i32 9
  store float %129, float* %131, align 4
  %132 = load i32* %i, align 4
  %133 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %134 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %133, i32 0, i32 13
  store i32 %132, i32* %134, align 4
  %135 = load i32* %pointCount, align 4
  %136 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %137 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 4
  %138 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %139 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %138, i32 0, i32 3
  call void @_ZN7b2Mat227SetZeroEv(%struct.b2Mat22* %139)
  %140 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %141 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %140, i32 0, i32 2
  call void @_ZN7b2Mat227SetZeroEv(%struct.b2Mat22* %141)
  %142 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 4
  %143 = load %struct.b2ContactPositionConstraint** %142, align 4
  %144 = load i32* %i, align 4
  %145 = getelementptr inbounds %struct.b2ContactPositionConstraint* %143, i32 %144
  store %struct.b2ContactPositionConstraint* %145, %struct.b2ContactPositionConstraint** %pc, align 4
  %146 = load %class.b2Body** %bodyA, align 4
  %147 = getelementptr inbounds %class.b2Body* %146, i32 0, i32 2
  %148 = load i32* %147, align 4
  %149 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %150 = getelementptr inbounds %struct.b2ContactPositionConstraint* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %class.b2Body** %bodyB, align 4
  %152 = getelementptr inbounds %class.b2Body* %151, i32 0, i32 2
  %153 = load i32* %152, align 4
  %154 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %155 = getelementptr inbounds %struct.b2ContactPositionConstraint* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load %class.b2Body** %bodyA, align 4
  %157 = getelementptr inbounds %class.b2Body* %156, i32 0, i32 17
  %158 = load float* %157, align 4
  %159 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %160 = getelementptr inbounds %struct.b2ContactPositionConstraint* %159, i32 0, i32 5
  store float %158, float* %160, align 4
  %161 = load %class.b2Body** %bodyB, align 4
  %162 = getelementptr inbounds %class.b2Body* %161, i32 0, i32 17
  %163 = load float* %162, align 4
  %164 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %165 = getelementptr inbounds %struct.b2ContactPositionConstraint* %164, i32 0, i32 6
  store float %163, float* %165, align 4
  %166 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %167 = getelementptr inbounds %struct.b2ContactPositionConstraint* %166, i32 0, i32 7
  %168 = load %class.b2Body** %bodyA, align 4
  %169 = getelementptr inbounds %class.b2Body* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.b2Sweep* %169, i32 0, i32 0
  %171 = bitcast %struct.b2Vec2* %167 to i8*
  %172 = bitcast %struct.b2Vec2* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %171, i8* %172, i32 8, i32 4, i1 false)
  %173 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %174 = getelementptr inbounds %struct.b2ContactPositionConstraint* %173, i32 0, i32 8
  %175 = load %class.b2Body** %bodyB, align 4
  %176 = getelementptr inbounds %class.b2Body* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.b2Sweep* %176, i32 0, i32 0
  %178 = bitcast %struct.b2Vec2* %174 to i8*
  %179 = bitcast %struct.b2Vec2* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %178, i8* %179, i32 8, i32 4, i1 false)
  %180 = load %class.b2Body** %bodyA, align 4
  %181 = getelementptr inbounds %class.b2Body* %180, i32 0, i32 19
  %182 = load float* %181, align 4
  %183 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %184 = getelementptr inbounds %struct.b2ContactPositionConstraint* %183, i32 0, i32 9
  store float %182, float* %184, align 4
  %185 = load %class.b2Body** %bodyB, align 4
  %186 = getelementptr inbounds %class.b2Body* %185, i32 0, i32 19
  %187 = load float* %186, align 4
  %188 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %189 = getelementptr inbounds %struct.b2ContactPositionConstraint* %188, i32 0, i32 10
  store float %187, float* %189, align 4
  %190 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %191 = getelementptr inbounds %struct.b2ContactPositionConstraint* %190, i32 0, i32 1
  %192 = load %struct.b2Manifold** %manifold, align 4
  %193 = getelementptr inbounds %struct.b2Manifold* %192, i32 0, i32 1
  %194 = bitcast %struct.b2Vec2* %191 to i8*
  %195 = bitcast %struct.b2Vec2* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %194, i8* %195, i32 8, i32 4, i1 false)
  %196 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %197 = getelementptr inbounds %struct.b2ContactPositionConstraint* %196, i32 0, i32 2
  %198 = load %struct.b2Manifold** %manifold, align 4
  %199 = getelementptr inbounds %struct.b2Manifold* %198, i32 0, i32 2
  %200 = bitcast %struct.b2Vec2* %197 to i8*
  %201 = bitcast %struct.b2Vec2* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %200, i8* %201, i32 8, i32 4, i1 false)
  %202 = load i32* %pointCount, align 4
  %203 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %204 = getelementptr inbounds %struct.b2ContactPositionConstraint* %203, i32 0, i32 14
  store i32 %202, i32* %204, align 4
  %205 = load float* %radiusA, align 4
  %206 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %207 = getelementptr inbounds %struct.b2ContactPositionConstraint* %206, i32 0, i32 12
  store float %205, float* %207, align 4
  %208 = load float* %radiusB, align 4
  %209 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %210 = getelementptr inbounds %struct.b2ContactPositionConstraint* %209, i32 0, i32 13
  store float %208, float* %210, align 4
  %211 = load %struct.b2Manifold** %manifold, align 4
  %212 = getelementptr inbounds %struct.b2Manifold* %211, i32 0, i32 3
  %213 = load i32* %212, align 4
  %214 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %215 = getelementptr inbounds %struct.b2ContactPositionConstraint* %214, i32 0, i32 11
  store i32 %213, i32* %215, align 4
  store i32 0, i32* %j, align 4
  br label %216

; <label>:216                                     ; preds = %278, %87
  %217 = load i32* %j, align 4
  %218 = load i32* %pointCount, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %281

; <label>:220                                     ; preds = %216
  %221 = load %struct.b2Manifold** %manifold, align 4
  %222 = getelementptr inbounds %struct.b2Manifold* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %222, i32 0, i32 0
  %224 = load i32* %j, align 4
  %225 = getelementptr inbounds %struct.b2ManifoldPoint* %223, i32 %224
  store %struct.b2ManifoldPoint* %225, %struct.b2ManifoldPoint** %cp, align 4
  %226 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %227 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %227, i32 0, i32 0
  %229 = load i32* %j, align 4
  %230 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %228, i32 %229
  store %struct.b2VelocityConstraintPoint* %230, %struct.b2VelocityConstraintPoint** %vcp, align 4
  %231 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 0
  %232 = getelementptr inbounds %struct.b2TimeStep* %231, i32 0, i32 5
  %233 = load i8* %232, align 1
  %234 = trunc i8 %233 to i1
  br i1 %234, label %235, label %254

; <label>:235                                     ; preds = %220
  %236 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 0
  %237 = getelementptr inbounds %struct.b2TimeStep* %236, i32 0, i32 2
  %238 = load float* %237, align 4
  %239 = load %struct.b2ManifoldPoint** %cp, align 4
  %240 = getelementptr inbounds %struct.b2ManifoldPoint* %239, i32 0, i32 1
  %241 = load float* %240, align 4
  %242 = fmul float %238, %241
  %243 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %244 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %243, i32 0, i32 2
  store float %242, float* %244, align 4
  %245 = getelementptr inbounds %class.b2ContactSolver* %3, i32 0, i32 0
  %246 = getelementptr inbounds %struct.b2TimeStep* %245, i32 0, i32 2
  %247 = load float* %246, align 4
  %248 = load %struct.b2ManifoldPoint** %cp, align 4
  %249 = getelementptr inbounds %struct.b2ManifoldPoint* %248, i32 0, i32 2
  %250 = load float* %249, align 4
  %251 = fmul float %247, %250
  %252 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %253 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %252, i32 0, i32 3
  store float %251, float* %253, align 4
  br label %259

; <label>:254                                     ; preds = %220
  %255 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %256 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %255, i32 0, i32 2
  store float 0.000000e+00, float* %256, align 4
  %257 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %258 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %257, i32 0, i32 3
  store float 0.000000e+00, float* %258, align 4
  br label %259

; <label>:259                                     ; preds = %254, %235
  %260 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %261 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %260, i32 0, i32 0
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %261)
  %262 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %263 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %262, i32 0, i32 1
  call void @_ZN6b2Vec27SetZeroEv(%struct.b2Vec2* %263)
  %264 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %265 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %264, i32 0, i32 4
  store float 0.000000e+00, float* %265, align 4
  %266 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %267 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %266, i32 0, i32 5
  store float 0.000000e+00, float* %267, align 4
  %268 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %269 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %268, i32 0, i32 6
  store float 0.000000e+00, float* %269, align 4
  %270 = load i32* %j, align 4
  %271 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %272 = getelementptr inbounds %struct.b2ContactPositionConstraint* %271, i32 0, i32 0
  %273 = getelementptr inbounds [2 x %struct.b2Vec2]* %272, i32 0, i32 %270
  %274 = load %struct.b2ManifoldPoint** %cp, align 4
  %275 = getelementptr inbounds %struct.b2ManifoldPoint* %274, i32 0, i32 0
  %276 = bitcast %struct.b2Vec2* %273 to i8*
  %277 = bitcast %struct.b2Vec2* %275 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %276, i8* %277, i32 8, i32 4, i1 false)
  br label %278

; <label>:278                                     ; preds = %259
  %279 = load i32* %j, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %j, align 4
  br label %216

; <label>:281                                     ; preds = %216
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32* %i, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %i, align 4
  br label %46

; <label>:285                                     ; preds = %46
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @_ZN16b2StackAllocator8AllocateEi(%class.b2StackAllocator*, i32)

define linkonce_odr %class.b2Shape* @_ZN9b2Fixture8GetShapeEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 3
  %4 = load %class.b2Shape** %3, align 4
  ret %class.b2Shape* %4
}

define linkonce_odr %class.b2Body* @_ZN9b2Fixture7GetBodyEv(%class.b2Fixture* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Fixture*, align 4
  store %class.b2Fixture* %this, %class.b2Fixture** %1, align 4
  %2 = load %class.b2Fixture** %1
  %3 = getelementptr inbounds %class.b2Fixture* %2, i32 0, i32 2
  %4 = load %class.b2Body** %3, align 4
  ret %class.b2Body* %4
}

define linkonce_odr %struct.b2Manifold* @_ZN9b2Contact11GetManifoldEv(%class.b2Contact* %this) nounwind inlinehint align 2 {
  %1 = alloca %class.b2Contact*, align 4
  store %class.b2Contact* %this, %class.b2Contact** %1, align 4
  %2 = load %class.b2Contact** %1
  %3 = getelementptr inbounds %class.b2Contact* %2, i32 0, i32 10
  ret %struct.b2Manifold* %3
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZN7b2Mat227SetZeroEv(%struct.b2Mat22* %this) nounwind align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  %3 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.b2Vec2* %5, i32 0, i32 0
  store float 0.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 1
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.b2Vec2* %9, i32 0, i32 1
  store float 0.000000e+00, float* %10, align 4
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

define void @_ZN15b2ContactSolverD2Ev(%class.b2ContactSolver* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %2 = load %class.b2ContactSolver** %1
  %3 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 3
  %4 = load %class.b2StackAllocator** %3, align 4
  %5 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 5
  %6 = load %struct.b2ContactVelocityConstraint** %5, align 4
  %7 = bitcast %struct.b2ContactVelocityConstraint* %6 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %4, i8* %7)
  %8 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 3
  %9 = load %class.b2StackAllocator** %8, align 4
  %10 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 4
  %11 = load %struct.b2ContactPositionConstraint** %10, align 4
  %12 = bitcast %struct.b2ContactPositionConstraint* %11 to i8*
  call void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator* %9, i8* %12)
  ret void
}

declare void @_ZN16b2StackAllocator4FreeEPv(%class.b2StackAllocator*, i8*)

define void @_ZN15b2ContactSolver29InitializeVelocityConstraintsEv(%class.b2ContactSolver* %this) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %i = alloca i32, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %pc = alloca %struct.b2ContactPositionConstraint*, align 4
  %radiusA = alloca float, align 4
  %radiusB = alloca float, align 4
  %manifold = alloca %struct.b2Manifold*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %mA = alloca float, align 4
  %mB = alloca float, align 4
  %iA = alloca float, align 4
  %iB = alloca float, align 4
  %localCenterA = alloca %struct.b2Vec2, align 4
  %localCenterB = alloca %struct.b2Vec2, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %worldManifold = alloca %struct.b2WorldManifold, align 4
  %pointCount = alloca i32, align 4
  %j = alloca i32, align 4
  %vcp = alloca %struct.b2VelocityConstraintPoint*, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %rnA = alloca float, align 4
  %rnB = alloca float, align 4
  %kNormal = alloca float, align 4
  %tangent = alloca %struct.b2Vec2, align 4
  %rtA = alloca float, align 4
  %rtB = alloca float, align 4
  %kTangent = alloca float, align 4
  %vRel = alloca float, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %vcp1 = alloca %struct.b2VelocityConstraintPoint*, align 4
  %vcp2 = alloca %struct.b2VelocityConstraintPoint*, align 4
  %rn1A = alloca float, align 4
  %rn1B = alloca float, align 4
  %rn2A = alloca float, align 4
  %rn2B = alloca float, align 4
  %k11 = alloca float, align 4
  %k22 = alloca float, align 4
  %k12 = alloca float, align 4
  %k_maxConditionNumber = alloca float, align 4
  %13 = alloca %struct.b2Mat22, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %14 = load %class.b2ContactSolver** %1
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %383, %0
  %16 = load i32* %i, align 4
  %17 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 7
  %18 = load i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %386

; <label>:20                                      ; preds = %15
  %21 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 5
  %22 = load %struct.b2ContactVelocityConstraint** %21, align 4
  %23 = load i32* %i, align 4
  %24 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %22, i32 %23
  store %struct.b2ContactVelocityConstraint* %24, %struct.b2ContactVelocityConstraint** %vc, align 4
  %25 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 4
  %26 = load %struct.b2ContactPositionConstraint** %25, align 4
  %27 = load i32* %i, align 4
  %28 = getelementptr inbounds %struct.b2ContactPositionConstraint* %26, i32 %27
  store %struct.b2ContactPositionConstraint* %28, %struct.b2ContactPositionConstraint** %pc, align 4
  %29 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %30 = getelementptr inbounds %struct.b2ContactPositionConstraint* %29, i32 0, i32 12
  %31 = load float* %30, align 4
  store float %31, float* %radiusA, align 4
  %32 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %33 = getelementptr inbounds %struct.b2ContactPositionConstraint* %32, i32 0, i32 13
  %34 = load float* %33, align 4
  store float %34, float* %radiusB, align 4
  %35 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %36 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %35, i32 0, i32 13
  %37 = load i32* %36, align 4
  %38 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 6
  %39 = load %class.b2Contact*** %38, align 4
  %40 = getelementptr inbounds %class.b2Contact** %39, i32 %37
  %41 = load %class.b2Contact** %40
  %42 = call %struct.b2Manifold* @_ZN9b2Contact11GetManifoldEv(%class.b2Contact* %41)
  store %struct.b2Manifold* %42, %struct.b2Manifold** %manifold, align 4
  %43 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %44 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %43, i32 0, i32 4
  %45 = load i32* %44, align 4
  store i32 %45, i32* %indexA, align 4
  %46 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %47 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %46, i32 0, i32 5
  %48 = load i32* %47, align 4
  store i32 %48, i32* %indexB, align 4
  %49 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %50 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %49, i32 0, i32 6
  %51 = load float* %50, align 4
  store float %51, float* %mA, align 4
  %52 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %53 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %52, i32 0, i32 7
  %54 = load float* %53, align 4
  store float %54, float* %mB, align 4
  %55 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %56 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %55, i32 0, i32 8
  %57 = load float* %56, align 4
  store float %57, float* %iA, align 4
  %58 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %59 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %58, i32 0, i32 9
  %60 = load float* %59, align 4
  store float %60, float* %iB, align 4
  %61 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %62 = getelementptr inbounds %struct.b2ContactPositionConstraint* %61, i32 0, i32 7
  %63 = bitcast %struct.b2Vec2* %localCenterA to i8*
  %64 = bitcast %struct.b2Vec2* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 8, i32 4, i1 false)
  %65 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %66 = getelementptr inbounds %struct.b2ContactPositionConstraint* %65, i32 0, i32 8
  %67 = bitcast %struct.b2Vec2* %localCenterB to i8*
  %68 = bitcast %struct.b2Vec2* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %67, i8* %68, i32 8, i32 4, i1 false)
  %69 = load i32* %indexA, align 4
  %70 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 1
  %71 = load %struct.b2Position** %70, align 4
  %72 = getelementptr inbounds %struct.b2Position* %71, i32 %69
  %73 = getelementptr inbounds %struct.b2Position* %72, i32 0, i32 0
  %74 = bitcast %struct.b2Vec2* %cA to i8*
  %75 = bitcast %struct.b2Vec2* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 8, i32 4, i1 false)
  %76 = load i32* %indexA, align 4
  %77 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 1
  %78 = load %struct.b2Position** %77, align 4
  %79 = getelementptr inbounds %struct.b2Position* %78, i32 %76
  %80 = getelementptr inbounds %struct.b2Position* %79, i32 0, i32 1
  %81 = load float* %80, align 4
  store float %81, float* %aA, align 4
  %82 = load i32* %indexA, align 4
  %83 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 2
  %84 = load %struct.b2Velocity** %83, align 4
  %85 = getelementptr inbounds %struct.b2Velocity* %84, i32 %82
  %86 = getelementptr inbounds %struct.b2Velocity* %85, i32 0, i32 0
  %87 = bitcast %struct.b2Vec2* %vA to i8*
  %88 = bitcast %struct.b2Vec2* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %87, i8* %88, i32 8, i32 4, i1 false)
  %89 = load i32* %indexA, align 4
  %90 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 2
  %91 = load %struct.b2Velocity** %90, align 4
  %92 = getelementptr inbounds %struct.b2Velocity* %91, i32 %89
  %93 = getelementptr inbounds %struct.b2Velocity* %92, i32 0, i32 1
  %94 = load float* %93, align 4
  store float %94, float* %wA, align 4
  %95 = load i32* %indexB, align 4
  %96 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 1
  %97 = load %struct.b2Position** %96, align 4
  %98 = getelementptr inbounds %struct.b2Position* %97, i32 %95
  %99 = getelementptr inbounds %struct.b2Position* %98, i32 0, i32 0
  %100 = bitcast %struct.b2Vec2* %cB to i8*
  %101 = bitcast %struct.b2Vec2* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %100, i8* %101, i32 8, i32 4, i1 false)
  %102 = load i32* %indexB, align 4
  %103 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 1
  %104 = load %struct.b2Position** %103, align 4
  %105 = getelementptr inbounds %struct.b2Position* %104, i32 %102
  %106 = getelementptr inbounds %struct.b2Position* %105, i32 0, i32 1
  %107 = load float* %106, align 4
  store float %107, float* %aB, align 4
  %108 = load i32* %indexB, align 4
  %109 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 2
  %110 = load %struct.b2Velocity** %109, align 4
  %111 = getelementptr inbounds %struct.b2Velocity* %110, i32 %108
  %112 = getelementptr inbounds %struct.b2Velocity* %111, i32 0, i32 0
  %113 = bitcast %struct.b2Vec2* %vB to i8*
  %114 = bitcast %struct.b2Vec2* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %113, i8* %114, i32 8, i32 4, i1 false)
  %115 = load i32* %indexB, align 4
  %116 = getelementptr inbounds %class.b2ContactSolver* %14, i32 0, i32 2
  %117 = load %struct.b2Velocity** %116, align 4
  %118 = getelementptr inbounds %struct.b2Velocity* %117, i32 %115
  %119 = getelementptr inbounds %struct.b2Velocity* %118, i32 0, i32 1
  %120 = load float* %119, align 4
  store float %120, float* %wB, align 4
  %121 = load %struct.b2Manifold** %manifold, align 4
  %122 = getelementptr inbounds %struct.b2Manifold* %121, i32 0, i32 4
  %123 = load i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %20
  br label %128

; <label>:126                                     ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__._ZN15b2ContactSolver29InitializeVelocityConstraintsEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %128

; <label>:128                                     ; preds = %127, %125
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %129 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %130 = load float* %aA, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %129, float %130)
  %131 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %132 = load float* %aB, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %131, float %132)
  %133 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 0
  %134 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %134, %struct.b2Vec2* %localCenterA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %cA, %struct.b2Vec2* %3)
  %135 = bitcast %struct.b2Vec2* %133 to i8*
  %136 = bitcast %struct.b2Vec2* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* %136, i32 8, i32 4, i1 false)
  %137 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 0
  %138 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %138, %struct.b2Vec2* %localCenterB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %cB, %struct.b2Vec2* %5)
  %139 = bitcast %struct.b2Vec2* %137 to i8*
  %140 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %139, i8* %140, i32 8, i32 4, i1 false)
  call void @_ZN15b2WorldManifoldC1Ev(%struct.b2WorldManifold* %worldManifold)
  %141 = load %struct.b2Manifold** %manifold, align 4
  %142 = load float* %radiusA, align 4
  %143 = load float* %radiusB, align 4
  call void @_ZN15b2WorldManifold10InitializeEPK10b2ManifoldRK11b2TransformfS5_f(%struct.b2WorldManifold* %worldManifold, %struct.b2Manifold* %141, %struct.b2Transform* %xfA, float %142, %struct.b2Transform* %xfB, float %143)
  %144 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %145 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.b2WorldManifold* %worldManifold, i32 0, i32 0
  %147 = bitcast %struct.b2Vec2* %145 to i8*
  %148 = bitcast %struct.b2Vec2* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %147, i8* %148, i32 8, i32 4, i1 false)
  %149 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %150 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %149, i32 0, i32 12
  %151 = load i32* %150, align 4
  store i32 %151, i32* %pointCount, align 4
  store i32 0, i32* %j, align 4
  br label %152

; <label>:152                                     ; preds = %267, %128
  %153 = load i32* %j, align 4
  %154 = load i32* %pointCount, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %270

; <label>:156                                     ; preds = %152
  %157 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %158 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %158, i32 0, i32 0
  %160 = load i32* %j, align 4
  %161 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %159, i32 %160
  store %struct.b2VelocityConstraintPoint* %161, %struct.b2VelocityConstraintPoint** %vcp, align 4
  %162 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %163 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %162, i32 0, i32 0
  %164 = load i32* %j, align 4
  %165 = getelementptr inbounds %struct.b2WorldManifold* %worldManifold, i32 0, i32 1
  %166 = getelementptr inbounds [2 x %struct.b2Vec2]* %165, i32 0, i32 %164
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %166, %struct.b2Vec2* %cA)
  %167 = bitcast %struct.b2Vec2* %163 to i8*
  %168 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %167, i8* %168, i32 8, i32 4, i1 false)
  %169 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %170 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %169, i32 0, i32 1
  %171 = load i32* %j, align 4
  %172 = getelementptr inbounds %struct.b2WorldManifold* %worldManifold, i32 0, i32 1
  %173 = getelementptr inbounds [2 x %struct.b2Vec2]* %172, i32 0, i32 %171
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %173, %struct.b2Vec2* %cB)
  %174 = bitcast %struct.b2Vec2* %170 to i8*
  %175 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %174, i8* %175, i32 8, i32 4, i1 false)
  %176 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %177 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %176, i32 0, i32 0
  %178 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %179 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %178, i32 0, i32 1
  %180 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %177, %struct.b2Vec2* %179)
  store float %180, float* %rnA, align 4
  %181 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %182 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %181, i32 0, i32 1
  %183 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %184 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %183, i32 0, i32 1
  %185 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %182, %struct.b2Vec2* %184)
  store float %185, float* %rnB, align 4
  %186 = load float* %mA, align 4
  %187 = load float* %mB, align 4
  %188 = fadd float %186, %187
  %189 = load float* %iA, align 4
  %190 = load float* %rnA, align 4
  %191 = fmul float %189, %190
  %192 = load float* %rnA, align 4
  %193 = fmul float %191, %192
  %194 = fadd float %188, %193
  %195 = load float* %iB, align 4
  %196 = load float* %rnB, align 4
  %197 = fmul float %195, %196
  %198 = load float* %rnB, align 4
  %199 = fmul float %197, %198
  %200 = fadd float %194, %199
  store float %200, float* %kNormal, align 4
  %201 = load float* %kNormal, align 4
  %202 = fcmp ogt float %201, 0.000000e+00
  br i1 %202, label %203, label %206

; <label>:203                                     ; preds = %156
  %204 = load float* %kNormal, align 4
  %205 = fdiv float 1.000000e+00, %204
  br label %207

; <label>:206                                     ; preds = %156
  br label %207

; <label>:207                                     ; preds = %206, %203
  %208 = phi float [ %205, %203 ], [ 0.000000e+00, %206 ]
  %209 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %210 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %209, i32 0, i32 4
  store float %208, float* %210, align 4
  %211 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %212 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %211, i32 0, i32 1
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %tangent, %struct.b2Vec2* %212, float 1.000000e+00)
  %213 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %214 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %213, i32 0, i32 0
  %215 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %214, %struct.b2Vec2* %tangent)
  store float %215, float* %rtA, align 4
  %216 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %217 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %216, i32 0, i32 1
  %218 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %217, %struct.b2Vec2* %tangent)
  store float %218, float* %rtB, align 4
  %219 = load float* %mA, align 4
  %220 = load float* %mB, align 4
  %221 = fadd float %219, %220
  %222 = load float* %iA, align 4
  %223 = load float* %rtA, align 4
  %224 = fmul float %222, %223
  %225 = load float* %rtA, align 4
  %226 = fmul float %224, %225
  %227 = fadd float %221, %226
  %228 = load float* %iB, align 4
  %229 = load float* %rtB, align 4
  %230 = fmul float %228, %229
  %231 = load float* %rtB, align 4
  %232 = fmul float %230, %231
  %233 = fadd float %227, %232
  store float %233, float* %kTangent, align 4
  %234 = load float* %kTangent, align 4
  %235 = fcmp ogt float %234, 0.000000e+00
  br i1 %235, label %236, label %239

; <label>:236                                     ; preds = %207
  %237 = load float* %kTangent, align 4
  %238 = fdiv float 1.000000e+00, %237
  br label %240

; <label>:239                                     ; preds = %207
  br label %240

; <label>:240                                     ; preds = %239, %236
  %241 = phi float [ %238, %236 ], [ 0.000000e+00, %239 ]
  %242 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %243 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %242, i32 0, i32 5
  store float %241, float* %243, align 4
  %244 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %245 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %244, i32 0, i32 6
  store float 0.000000e+00, float* %245, align 4
  %246 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %247 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %246, i32 0, i32 1
  %248 = load float* %wB, align 4
  %249 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %250 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %249, i32 0, i32 1
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %11, float %248, %struct.b2Vec2* %250)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %10, %struct.b2Vec2* %vB, %struct.b2Vec2* %11)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %10, %struct.b2Vec2* %vA)
  %251 = load float* %wA, align 4
  %252 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %253 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %252, i32 0, i32 0
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %12, float %251, %struct.b2Vec2* %253)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %9, %struct.b2Vec2* %12)
  %254 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %247, %struct.b2Vec2* %8)
  store float %254, float* %vRel, align 4
  %255 = load float* %vRel, align 4
  %256 = fcmp olt float %255, -1.000000e+00
  br i1 %256, label %257, label %266

; <label>:257                                     ; preds = %240
  %258 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %259 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %258, i32 0, i32 11
  %260 = load float* %259, align 4
  %261 = fsub float -0.000000e+00, %260
  %262 = load float* %vRel, align 4
  %263 = fmul float %261, %262
  %264 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %265 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %264, i32 0, i32 6
  store float %263, float* %265, align 4
  br label %266

; <label>:266                                     ; preds = %257, %240
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32* %j, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %j, align 4
  br label %152

; <label>:270                                     ; preds = %152
  %271 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %272 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %271, i32 0, i32 12
  %273 = load i32* %272, align 4
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %275, label %382

; <label>:275                                     ; preds = %270
  %276 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %277 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %278, i32 0
  store %struct.b2VelocityConstraintPoint* %279, %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %280 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %281 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %282, i32 1
  store %struct.b2VelocityConstraintPoint* %283, %struct.b2VelocityConstraintPoint** %vcp2, align 4
  %284 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %285 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %284, i32 0, i32 0
  %286 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %287 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %286, i32 0, i32 1
  %288 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %285, %struct.b2Vec2* %287)
  store float %288, float* %rn1A, align 4
  %289 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %290 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %289, i32 0, i32 1
  %291 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %292 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %291, i32 0, i32 1
  %293 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %290, %struct.b2Vec2* %292)
  store float %293, float* %rn1B, align 4
  %294 = load %struct.b2VelocityConstraintPoint** %vcp2, align 4
  %295 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %294, i32 0, i32 0
  %296 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %297 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %296, i32 0, i32 1
  %298 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %295, %struct.b2Vec2* %297)
  store float %298, float* %rn2A, align 4
  %299 = load %struct.b2VelocityConstraintPoint** %vcp2, align 4
  %300 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %299, i32 0, i32 1
  %301 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %302 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %301, i32 0, i32 1
  %303 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %300, %struct.b2Vec2* %302)
  store float %303, float* %rn2B, align 4
  %304 = load float* %mA, align 4
  %305 = load float* %mB, align 4
  %306 = fadd float %304, %305
  %307 = load float* %iA, align 4
  %308 = load float* %rn1A, align 4
  %309 = fmul float %307, %308
  %310 = load float* %rn1A, align 4
  %311 = fmul float %309, %310
  %312 = fadd float %306, %311
  %313 = load float* %iB, align 4
  %314 = load float* %rn1B, align 4
  %315 = fmul float %313, %314
  %316 = load float* %rn1B, align 4
  %317 = fmul float %315, %316
  %318 = fadd float %312, %317
  store float %318, float* %k11, align 4
  %319 = load float* %mA, align 4
  %320 = load float* %mB, align 4
  %321 = fadd float %319, %320
  %322 = load float* %iA, align 4
  %323 = load float* %rn2A, align 4
  %324 = fmul float %322, %323
  %325 = load float* %rn2A, align 4
  %326 = fmul float %324, %325
  %327 = fadd float %321, %326
  %328 = load float* %iB, align 4
  %329 = load float* %rn2B, align 4
  %330 = fmul float %328, %329
  %331 = load float* %rn2B, align 4
  %332 = fmul float %330, %331
  %333 = fadd float %327, %332
  store float %333, float* %k22, align 4
  %334 = load float* %mA, align 4
  %335 = load float* %mB, align 4
  %336 = fadd float %334, %335
  %337 = load float* %iA, align 4
  %338 = load float* %rn1A, align 4
  %339 = fmul float %337, %338
  %340 = load float* %rn2A, align 4
  %341 = fmul float %339, %340
  %342 = fadd float %336, %341
  %343 = load float* %iB, align 4
  %344 = load float* %rn1B, align 4
  %345 = fmul float %343, %344
  %346 = load float* %rn2B, align 4
  %347 = fmul float %345, %346
  %348 = fadd float %342, %347
  store float %348, float* %k12, align 4
  store float 1.000000e+03, float* %k_maxConditionNumber, align 4
  %349 = load float* %k11, align 4
  %350 = load float* %k11, align 4
  %351 = fmul float %349, %350
  %352 = load float* %k11, align 4
  %353 = load float* %k22, align 4
  %354 = fmul float %352, %353
  %355 = load float* %k12, align 4
  %356 = load float* %k12, align 4
  %357 = fmul float %355, %356
  %358 = fsub float %354, %357
  %359 = fmul float 1.000000e+03, %358
  %360 = fcmp olt float %351, %359
  br i1 %360, label %361, label %378

; <label>:361                                     ; preds = %275
  %362 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %363 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.b2Mat22* %363, i32 0, i32 0
  %365 = load float* %k11, align 4
  %366 = load float* %k12, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %364, float %365, float %366)
  %367 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %368 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.b2Mat22* %368, i32 0, i32 1
  %370 = load float* %k12, align 4
  %371 = load float* %k22, align 4
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %369, float %370, float %371)
  %372 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %373 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %372, i32 0, i32 2
  %374 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %375 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %374, i32 0, i32 3
  call void @_ZNK7b2Mat2210GetInverseEv(%struct.b2Mat22* sret %13, %struct.b2Mat22* %375)
  %376 = bitcast %struct.b2Mat22* %373 to i8*
  %377 = bitcast %struct.b2Mat22* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %376, i8* %377, i32 16, i32 4, i1 false)
  br label %381

; <label>:378                                     ; preds = %275
  %379 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %380 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %379, i32 0, i32 12
  store i32 1, i32* %380, align 4
  br label %381

; <label>:381                                     ; preds = %378, %361
  br label %382

; <label>:382                                     ; preds = %381, %270
  br label %383

; <label>:383                                     ; preds = %382
  %384 = load i32* %i, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %i, align 4
  br label %15

; <label>:386                                     ; preds = %15
  ret void
}

define linkonce_odr void @_ZN11b2TransformC1Ev(%struct.b2Transform* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Transform*, align 4
  store %struct.b2Transform* %this, %struct.b2Transform** %1, align 4
  %2 = load %struct.b2Transform** %1
  call void @_ZN11b2TransformC2Ev(%struct.b2Transform* %2)
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

define linkonce_odr void @_ZN15b2WorldManifoldC1Ev(%struct.b2WorldManifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2WorldManifold*, align 4
  store %struct.b2WorldManifold* %this, %struct.b2WorldManifold** %1, align 4
  %2 = load %struct.b2WorldManifold** %1
  call void @_ZN15b2WorldManifoldC2Ev(%struct.b2WorldManifold* %2)
  ret void
}

declare void @_ZN15b2WorldManifold10InitializeEPK10b2ManifoldRK11b2TransformfS5_f(%struct.b2WorldManifold*, %struct.b2Manifold*, %struct.b2Transform*, float, %struct.b2Transform*, float)

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

define linkonce_odr void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %a, float %s) inlinehint {
  %1 = alloca %struct.b2Vec2*, align 4
  %2 = alloca float, align 4
  store %struct.b2Vec2* %a, %struct.b2Vec2** %1, align 4
  store float %s, float* %2, align 4
  %3 = load float* %2, align 4
  %4 = load %struct.b2Vec2** %1
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 1
  %6 = load float* %5, align 4
  %7 = fmul float %3, %6
  %8 = load float* %2, align 4
  %9 = fsub float -0.000000e+00, %8
  %10 = load %struct.b2Vec2** %1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = fmul float %9, %12
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %7, float %13)
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

define linkonce_odr void @_ZNK7b2Mat2210GetInverseEv(%struct.b2Mat22* noalias sret %agg.result, %struct.b2Mat22* %this) align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %d = alloca float, align 4
  %det = alloca float, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  %3 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  store float %5, float* %a, align 4
  %6 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  store float %8, float* %b, align 4
  %9 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  %10 = getelementptr inbounds %struct.b2Vec2* %9, i32 0, i32 1
  %11 = load float* %10, align 4
  store float %11, float* %c, align 4
  %12 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Vec2* %12, i32 0, i32 1
  %14 = load float* %13, align 4
  store float %14, float* %d, align 4
  call void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %agg.result)
  %15 = load float* %a, align 4
  %16 = load float* %d, align 4
  %17 = fmul float %15, %16
  %18 = load float* %b, align 4
  %19 = load float* %c, align 4
  %20 = fmul float %18, %19
  %21 = fsub float %17, %20
  store float %21, float* %det, align 4
  %22 = load float* %det, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %0
  %25 = load float* %det, align 4
  %26 = fdiv float 1.000000e+00, %25
  store float %26, float* %det, align 4
  br label %27

; <label>:27                                      ; preds = %24, %0
  %28 = load float* %det, align 4
  %29 = load float* %d, align 4
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 0
  %32 = getelementptr inbounds %struct.b2Vec2* %31, i32 0, i32 0
  store float %30, float* %32, align 4
  %33 = load float* %det, align 4
  %34 = fsub float -0.000000e+00, %33
  %35 = load float* %b, align 4
  %36 = fmul float %34, %35
  %37 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 1
  %38 = getelementptr inbounds %struct.b2Vec2* %37, i32 0, i32 0
  store float %36, float* %38, align 4
  %39 = load float* %det, align 4
  %40 = fsub float -0.000000e+00, %39
  %41 = load float* %c, align 4
  %42 = fmul float %40, %41
  %43 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b2Vec2* %43, i32 0, i32 1
  store float %42, float* %44, align 4
  %45 = load float* %det, align 4
  %46 = load float* %a, align 4
  %47 = fmul float %45, %46
  %48 = getelementptr inbounds %struct.b2Mat22* %agg.result, i32 0, i32 1
  %49 = getelementptr inbounds %struct.b2Vec2* %48, i32 0, i32 1
  store float %47, float* %49, align 4
  ret void
}

define void @_ZN15b2ContactSolver9WarmStartEv(%class.b2ContactSolver* %this) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %i = alloca i32, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %mA = alloca float, align 4
  %iA = alloca float, align 4
  %mB = alloca float, align 4
  %iB = alloca float, align 4
  %pointCount = alloca i32, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %tangent = alloca %struct.b2Vec2, align 4
  %j = alloca i32, align 4
  %vcp = alloca %struct.b2VelocityConstraintPoint*, align 4
  %P = alloca %struct.b2Vec2, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %6 = load %class.b2ContactSolver** %1
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %130, %0
  %8 = load i32* %i, align 4
  %9 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 7
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %133

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 5
  %14 = load %struct.b2ContactVelocityConstraint** %13, align 4
  %15 = load i32* %i, align 4
  %16 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %14, i32 %15
  store %struct.b2ContactVelocityConstraint* %16, %struct.b2ContactVelocityConstraint** %vc, align 4
  %17 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %18 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %17, i32 0, i32 4
  %19 = load i32* %18, align 4
  store i32 %19, i32* %indexA, align 4
  %20 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %21 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %20, i32 0, i32 5
  %22 = load i32* %21, align 4
  store i32 %22, i32* %indexB, align 4
  %23 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %24 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %23, i32 0, i32 6
  %25 = load float* %24, align 4
  store float %25, float* %mA, align 4
  %26 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %27 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %26, i32 0, i32 8
  %28 = load float* %27, align 4
  store float %28, float* %iA, align 4
  %29 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %30 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %29, i32 0, i32 7
  %31 = load float* %30, align 4
  store float %31, float* %mB, align 4
  %32 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %33 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %32, i32 0, i32 9
  %34 = load float* %33, align 4
  store float %34, float* %iB, align 4
  %35 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %36 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %35, i32 0, i32 12
  %37 = load i32* %36, align 4
  store i32 %37, i32* %pointCount, align 4
  %38 = load i32* %indexA, align 4
  %39 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %40 = load %struct.b2Velocity** %39, align 4
  %41 = getelementptr inbounds %struct.b2Velocity* %40, i32 %38
  %42 = getelementptr inbounds %struct.b2Velocity* %41, i32 0, i32 0
  %43 = bitcast %struct.b2Vec2* %vA to i8*
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 8, i32 4, i1 false)
  %45 = load i32* %indexA, align 4
  %46 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %47 = load %struct.b2Velocity** %46, align 4
  %48 = getelementptr inbounds %struct.b2Velocity* %47, i32 %45
  %49 = getelementptr inbounds %struct.b2Velocity* %48, i32 0, i32 1
  %50 = load float* %49, align 4
  store float %50, float* %wA, align 4
  %51 = load i32* %indexB, align 4
  %52 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %53 = load %struct.b2Velocity** %52, align 4
  %54 = getelementptr inbounds %struct.b2Velocity* %53, i32 %51
  %55 = getelementptr inbounds %struct.b2Velocity* %54, i32 0, i32 0
  %56 = bitcast %struct.b2Vec2* %vB to i8*
  %57 = bitcast %struct.b2Vec2* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %57, i32 8, i32 4, i1 false)
  %58 = load i32* %indexB, align 4
  %59 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %60 = load %struct.b2Velocity** %59, align 4
  %61 = getelementptr inbounds %struct.b2Velocity* %60, i32 %58
  %62 = getelementptr inbounds %struct.b2Velocity* %61, i32 0, i32 1
  %63 = load float* %62, align 4
  store float %63, float* %wB, align 4
  %64 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %65 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %64, i32 0, i32 1
  %66 = bitcast %struct.b2Vec2* %normal to i8*
  %67 = bitcast %struct.b2Vec2* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 8, i32 4, i1 false)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %tangent, %struct.b2Vec2* %normal, float 1.000000e+00)
  store i32 0, i32* %j, align 4
  br label %68

; <label>:68                                      ; preds = %100, %12
  %69 = load i32* %j, align 4
  %70 = load i32* %pointCount, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %103

; <label>:72                                      ; preds = %68
  %73 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %74 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %74, i32 0, i32 0
  %76 = load i32* %j, align 4
  %77 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %75, i32 %76
  store %struct.b2VelocityConstraintPoint* %77, %struct.b2VelocityConstraintPoint** %vcp, align 4
  %78 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %79 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %78, i32 0, i32 2
  %80 = load float* %79, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %2, float %80, %struct.b2Vec2* %normal)
  %81 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %82 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %81, i32 0, i32 3
  %83 = load float* %82, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %3, float %83, %struct.b2Vec2* %tangent)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %P, %struct.b2Vec2* %2, %struct.b2Vec2* %3)
  %84 = load float* %iA, align 4
  %85 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %86 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %85, i32 0, i32 0
  %87 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %86, %struct.b2Vec2* %P)
  %88 = fmul float %84, %87
  %89 = load float* %wA, align 4
  %90 = fsub float %89, %88
  store float %90, float* %wA, align 4
  %91 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %4, float %91, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %4)
  %92 = load float* %iB, align 4
  %93 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %94 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %93, i32 0, i32 1
  %95 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %94, %struct.b2Vec2* %P)
  %96 = fmul float %92, %95
  %97 = load float* %wB, align 4
  %98 = fadd float %97, %96
  store float %98, float* %wB, align 4
  %99 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %5, float %99, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %5)
  br label %100

; <label>:100                                     ; preds = %72
  %101 = load i32* %j, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %j, align 4
  br label %68

; <label>:103                                     ; preds = %68
  %104 = load i32* %indexA, align 4
  %105 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %106 = load %struct.b2Velocity** %105, align 4
  %107 = getelementptr inbounds %struct.b2Velocity* %106, i32 %104
  %108 = getelementptr inbounds %struct.b2Velocity* %107, i32 0, i32 0
  %109 = bitcast %struct.b2Vec2* %108 to i8*
  %110 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %109, i8* %110, i32 8, i32 4, i1 false)
  %111 = load float* %wA, align 4
  %112 = load i32* %indexA, align 4
  %113 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %114 = load %struct.b2Velocity** %113, align 4
  %115 = getelementptr inbounds %struct.b2Velocity* %114, i32 %112
  %116 = getelementptr inbounds %struct.b2Velocity* %115, i32 0, i32 1
  store float %111, float* %116, align 4
  %117 = load i32* %indexB, align 4
  %118 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %119 = load %struct.b2Velocity** %118, align 4
  %120 = getelementptr inbounds %struct.b2Velocity* %119, i32 %117
  %121 = getelementptr inbounds %struct.b2Velocity* %120, i32 0, i32 0
  %122 = bitcast %struct.b2Vec2* %121 to i8*
  %123 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 8, i32 4, i1 false)
  %124 = load float* %wB, align 4
  %125 = load i32* %indexB, align 4
  %126 = getelementptr inbounds %class.b2ContactSolver* %6, i32 0, i32 2
  %127 = load %struct.b2Velocity** %126, align 4
  %128 = getelementptr inbounds %struct.b2Velocity* %127, i32 %125
  %129 = getelementptr inbounds %struct.b2Velocity* %128, i32 0, i32 1
  store float %124, float* %129, align 4
  br label %130

; <label>:130                                     ; preds = %103
  %131 = load i32* %i, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4
  br label %7

; <label>:133                                     ; preds = %7
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

define void @_ZN15b2ContactSolver24SolveVelocityConstraintsEv(%class.b2ContactSolver* %this) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %i = alloca i32, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %mA = alloca float, align 4
  %iA = alloca float, align 4
  %mB = alloca float, align 4
  %iB = alloca float, align 4
  %pointCount = alloca i32, align 4
  %vA = alloca %struct.b2Vec2, align 4
  %wA = alloca float, align 4
  %vB = alloca %struct.b2Vec2, align 4
  %wB = alloca float, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %tangent = alloca %struct.b2Vec2, align 4
  %friction = alloca float, align 4
  %j = alloca i32, align 4
  %vcp = alloca %struct.b2VelocityConstraintPoint*, align 4
  %dv = alloca %struct.b2Vec2, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %vt = alloca float, align 4
  %lambda = alloca float, align 4
  %maxFriction = alloca float, align 4
  %newImpulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %vcp1 = alloca %struct.b2VelocityConstraintPoint*, align 4
  %dv2 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %vn = alloca float, align 4
  %lambda3 = alloca float, align 4
  %newImpulse4 = alloca float, align 4
  %P5 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %cp1 = alloca %struct.b2VelocityConstraintPoint*, align 4
  %cp2 = alloca %struct.b2VelocityConstraintPoint*, align 4
  %a = alloca %struct.b2Vec2, align 4
  %dv1 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  %15 = alloca %struct.b2Vec2, align 4
  %16 = alloca %struct.b2Vec2, align 4
  %17 = alloca %struct.b2Vec2, align 4
  %dv26 = alloca %struct.b2Vec2, align 4
  %18 = alloca %struct.b2Vec2, align 4
  %19 = alloca %struct.b2Vec2, align 4
  %20 = alloca %struct.b2Vec2, align 4
  %21 = alloca %struct.b2Vec2, align 4
  %vn1 = alloca float, align 4
  %vn2 = alloca float, align 4
  %b = alloca %struct.b2Vec2, align 4
  %22 = alloca %struct.b2Vec2, align 4
  %k_errorTol = alloca float, align 4
  %x = alloca %struct.b2Vec2, align 4
  %23 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  %P1 = alloca %struct.b2Vec2, align 4
  %P2 = alloca %struct.b2Vec2, align 4
  %24 = alloca %struct.b2Vec2, align 4
  %25 = alloca %struct.b2Vec2, align 4
  %26 = alloca %struct.b2Vec2, align 4
  %27 = alloca %struct.b2Vec2, align 4
  %d7 = alloca %struct.b2Vec2, align 4
  %P18 = alloca %struct.b2Vec2, align 4
  %P29 = alloca %struct.b2Vec2, align 4
  %28 = alloca %struct.b2Vec2, align 4
  %29 = alloca %struct.b2Vec2, align 4
  %30 = alloca %struct.b2Vec2, align 4
  %31 = alloca %struct.b2Vec2, align 4
  %d10 = alloca %struct.b2Vec2, align 4
  %P111 = alloca %struct.b2Vec2, align 4
  %P212 = alloca %struct.b2Vec2, align 4
  %32 = alloca %struct.b2Vec2, align 4
  %33 = alloca %struct.b2Vec2, align 4
  %34 = alloca %struct.b2Vec2, align 4
  %35 = alloca %struct.b2Vec2, align 4
  %d13 = alloca %struct.b2Vec2, align 4
  %P114 = alloca %struct.b2Vec2, align 4
  %P215 = alloca %struct.b2Vec2, align 4
  %36 = alloca %struct.b2Vec2, align 4
  %37 = alloca %struct.b2Vec2, align 4
  %38 = alloca %struct.b2Vec2, align 4
  %39 = alloca %struct.b2Vec2, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %40 = load %class.b2ContactSolver** %1
  store i32 0, i32* %i, align 4
  br label %41

; <label>:41                                      ; preds = %544, %0
  %42 = load i32* %i, align 4
  %43 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 7
  %44 = load i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %547

; <label>:46                                      ; preds = %41
  %47 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 5
  %48 = load %struct.b2ContactVelocityConstraint** %47, align 4
  %49 = load i32* %i, align 4
  %50 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %48, i32 %49
  store %struct.b2ContactVelocityConstraint* %50, %struct.b2ContactVelocityConstraint** %vc, align 4
  %51 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %52 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %51, i32 0, i32 4
  %53 = load i32* %52, align 4
  store i32 %53, i32* %indexA, align 4
  %54 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %55 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %54, i32 0, i32 5
  %56 = load i32* %55, align 4
  store i32 %56, i32* %indexB, align 4
  %57 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %58 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %57, i32 0, i32 6
  %59 = load float* %58, align 4
  store float %59, float* %mA, align 4
  %60 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %61 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %60, i32 0, i32 8
  %62 = load float* %61, align 4
  store float %62, float* %iA, align 4
  %63 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %64 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %63, i32 0, i32 7
  %65 = load float* %64, align 4
  store float %65, float* %mB, align 4
  %66 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %67 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %66, i32 0, i32 9
  %68 = load float* %67, align 4
  store float %68, float* %iB, align 4
  %69 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %70 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %69, i32 0, i32 12
  %71 = load i32* %70, align 4
  store i32 %71, i32* %pointCount, align 4
  %72 = load i32* %indexA, align 4
  %73 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %74 = load %struct.b2Velocity** %73, align 4
  %75 = getelementptr inbounds %struct.b2Velocity* %74, i32 %72
  %76 = getelementptr inbounds %struct.b2Velocity* %75, i32 0, i32 0
  %77 = bitcast %struct.b2Vec2* %vA to i8*
  %78 = bitcast %struct.b2Vec2* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %77, i8* %78, i32 8, i32 4, i1 false)
  %79 = load i32* %indexA, align 4
  %80 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %81 = load %struct.b2Velocity** %80, align 4
  %82 = getelementptr inbounds %struct.b2Velocity* %81, i32 %79
  %83 = getelementptr inbounds %struct.b2Velocity* %82, i32 0, i32 1
  %84 = load float* %83, align 4
  store float %84, float* %wA, align 4
  %85 = load i32* %indexB, align 4
  %86 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %87 = load %struct.b2Velocity** %86, align 4
  %88 = getelementptr inbounds %struct.b2Velocity* %87, i32 %85
  %89 = getelementptr inbounds %struct.b2Velocity* %88, i32 0, i32 0
  %90 = bitcast %struct.b2Vec2* %vB to i8*
  %91 = bitcast %struct.b2Vec2* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %90, i8* %91, i32 8, i32 4, i1 false)
  %92 = load i32* %indexB, align 4
  %93 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %94 = load %struct.b2Velocity** %93, align 4
  %95 = getelementptr inbounds %struct.b2Velocity* %94, i32 %92
  %96 = getelementptr inbounds %struct.b2Velocity* %95, i32 0, i32 1
  %97 = load float* %96, align 4
  store float %97, float* %wB, align 4
  %98 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %99 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %98, i32 0, i32 1
  %100 = bitcast %struct.b2Vec2* %normal to i8*
  %101 = bitcast %struct.b2Vec2* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %100, i8* %101, i32 8, i32 4, i1 false)
  call void @_Z7b2CrossRK6b2Vec2f(%struct.b2Vec2* sret %tangent, %struct.b2Vec2* %normal, float 1.000000e+00)
  %102 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %103 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %102, i32 0, i32 10
  %104 = load float* %103, align 4
  store float %104, float* %friction, align 4
  %105 = load i32* %pointCount, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %110, label %107

; <label>:107                                     ; preds = %46
  %108 = load i32* %pointCount, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107, %46
  br label %113

; <label>:111                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str1, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZN15b2ContactSolver24SolveVelocityConstraintsEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  store i32 0, i32* %j, align 4
  br label %114

; <label>:114                                     ; preds = %176, %113
  %115 = load i32* %j, align 4
  %116 = load i32* %pointCount, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %179

; <label>:118                                     ; preds = %114
  %119 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %120 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %120, i32 0, i32 0
  %122 = load i32* %j, align 4
  %123 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %121, i32 %122
  store %struct.b2VelocityConstraintPoint* %123, %struct.b2VelocityConstraintPoint** %vcp, align 4
  %124 = load float* %wB, align 4
  %125 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %126 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %125, i32 0, i32 1
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %4, float %124, %struct.b2Vec2* %126)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %3, %struct.b2Vec2* %vB, %struct.b2Vec2* %4)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %3, %struct.b2Vec2* %vA)
  %127 = load float* %wA, align 4
  %128 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %129 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %128, i32 0, i32 0
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %5, float %127, %struct.b2Vec2* %129)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dv, %struct.b2Vec2* %2, %struct.b2Vec2* %5)
  %130 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %dv, %struct.b2Vec2* %tangent)
  store float %130, float* %vt, align 4
  %131 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %132 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %131, i32 0, i32 5
  %133 = load float* %132, align 4
  %134 = load float* %vt, align 4
  %135 = fsub float -0.000000e+00, %134
  %136 = fmul float %133, %135
  store float %136, float* %lambda, align 4
  %137 = load float* %friction, align 4
  %138 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %139 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %138, i32 0, i32 2
  %140 = load float* %139, align 4
  %141 = fmul float %137, %140
  store float %141, float* %maxFriction, align 4
  %142 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %143 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %142, i32 0, i32 3
  %144 = load float* %143, align 4
  %145 = load float* %lambda, align 4
  %146 = fadd float %144, %145
  %147 = load float* %maxFriction, align 4
  %148 = fsub float -0.000000e+00, %147
  %149 = load float* %maxFriction, align 4
  %150 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %146, float %148, float %149)
  store float %150, float* %newImpulse, align 4
  %151 = load float* %newImpulse, align 4
  %152 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %153 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %152, i32 0, i32 3
  %154 = load float* %153, align 4
  %155 = fsub float %151, %154
  store float %155, float* %lambda, align 4
  %156 = load float* %newImpulse, align 4
  %157 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %158 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %157, i32 0, i32 3
  store float %156, float* %158, align 4
  %159 = load float* %lambda, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %159, %struct.b2Vec2* %tangent)
  %160 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %160, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %6)
  %161 = load float* %iA, align 4
  %162 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %163 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %162, i32 0, i32 0
  %164 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %163, %struct.b2Vec2* %P)
  %165 = fmul float %161, %164
  %166 = load float* %wA, align 4
  %167 = fsub float %166, %165
  store float %167, float* %wA, align 4
  %168 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %168, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %7)
  %169 = load float* %iB, align 4
  %170 = load %struct.b2VelocityConstraintPoint** %vcp, align 4
  %171 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %170, i32 0, i32 1
  %172 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %171, %struct.b2Vec2* %P)
  %173 = fmul float %169, %172
  %174 = load float* %wB, align 4
  %175 = fadd float %174, %173
  store float %175, float* %wB, align 4
  br label %176

; <label>:176                                     ; preds = %118
  %177 = load i32* %j, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %j, align 4
  br label %114

; <label>:179                                     ; preds = %114
  %180 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %181 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %180, i32 0, i32 12
  %182 = load i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %237

; <label>:184                                     ; preds = %179
  %185 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %186 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %187, i32 0
  store %struct.b2VelocityConstraintPoint* %188, %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %189 = load float* %wB, align 4
  %190 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %191 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %190, i32 0, i32 1
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %10, float %189, %struct.b2Vec2* %191)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %vB, %struct.b2Vec2* %10)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %9, %struct.b2Vec2* %vA)
  %192 = load float* %wA, align 4
  %193 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %194 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %193, i32 0, i32 0
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %11, float %192, %struct.b2Vec2* %194)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dv2, %struct.b2Vec2* %8, %struct.b2Vec2* %11)
  %195 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %dv2, %struct.b2Vec2* %normal)
  store float %195, float* %vn, align 4
  %196 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %197 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %196, i32 0, i32 4
  %198 = load float* %197, align 4
  %199 = fsub float -0.000000e+00, %198
  %200 = load float* %vn, align 4
  %201 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %202 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %201, i32 0, i32 6
  %203 = load float* %202, align 4
  %204 = fsub float %200, %203
  %205 = fmul float %199, %204
  store float %205, float* %lambda3, align 4
  %206 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %207 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %206, i32 0, i32 2
  %208 = load float* %207, align 4
  %209 = load float* %lambda3, align 4
  %210 = fadd float %208, %209
  %211 = call float @_Z5b2MaxIfET_S0_S0_(float %210, float 0.000000e+00)
  store float %211, float* %newImpulse4, align 4
  %212 = load float* %newImpulse4, align 4
  %213 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %214 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %213, i32 0, i32 2
  %215 = load float* %214, align 4
  %216 = fsub float %212, %215
  store float %216, float* %lambda3, align 4
  %217 = load float* %newImpulse4, align 4
  %218 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %219 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %218, i32 0, i32 2
  store float %217, float* %219, align 4
  %220 = load float* %lambda3, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P5, float %220, %struct.b2Vec2* %normal)
  %221 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %12, float %221, %struct.b2Vec2* %P5)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %12)
  %222 = load float* %iA, align 4
  %223 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %224 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %223, i32 0, i32 0
  %225 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %224, %struct.b2Vec2* %P5)
  %226 = fmul float %222, %225
  %227 = load float* %wA, align 4
  %228 = fsub float %227, %226
  store float %228, float* %wA, align 4
  %229 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %13, float %229, %struct.b2Vec2* %P5)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %13)
  %230 = load float* %iB, align 4
  %231 = load %struct.b2VelocityConstraintPoint** %vcp1, align 4
  %232 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %231, i32 0, i32 1
  %233 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %232, %struct.b2Vec2* %P5)
  %234 = fmul float %230, %233
  %235 = load float* %wB, align 4
  %236 = fadd float %235, %234
  store float %236, float* %wB, align 4
  br label %517

; <label>:237                                     ; preds = %179
  %238 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %239 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %240, i32 0
  store %struct.b2VelocityConstraintPoint* %241, %struct.b2VelocityConstraintPoint** %cp1, align 4
  %242 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %243 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %244, i32 1
  store %struct.b2VelocityConstraintPoint* %245, %struct.b2VelocityConstraintPoint** %cp2, align 4
  %246 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %247 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %246, i32 0, i32 2
  %248 = load float* %247, align 4
  %249 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %250 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %249, i32 0, i32 2
  %251 = load float* %250, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %a, float %248, float %251)
  %252 = getelementptr inbounds %struct.b2Vec2* %a, i32 0, i32 0
  %253 = load float* %252, align 4
  %254 = fcmp oge float %253, 0.000000e+00
  br i1 %254, label %255, label %260

; <label>:255                                     ; preds = %237
  %256 = getelementptr inbounds %struct.b2Vec2* %a, i32 0, i32 1
  %257 = load float* %256, align 4
  %258 = fcmp oge float %257, 0.000000e+00
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %255
  br label %262

; <label>:260                                     ; preds = %255, %237
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZN15b2ContactSolver24SolveVelocityConstraintsEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %262

; <label>:262                                     ; preds = %261, %259
  %263 = load float* %wB, align 4
  %264 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %265 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %264, i32 0, i32 1
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %16, float %263, %struct.b2Vec2* %265)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %15, %struct.b2Vec2* %vB, %struct.b2Vec2* %16)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %14, %struct.b2Vec2* %15, %struct.b2Vec2* %vA)
  %266 = load float* %wA, align 4
  %267 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %268 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %267, i32 0, i32 0
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %17, float %266, %struct.b2Vec2* %268)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dv1, %struct.b2Vec2* %14, %struct.b2Vec2* %17)
  %269 = load float* %wB, align 4
  %270 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %271 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %270, i32 0, i32 1
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %20, float %269, %struct.b2Vec2* %271)
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %19, %struct.b2Vec2* %vB, %struct.b2Vec2* %20)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %18, %struct.b2Vec2* %19, %struct.b2Vec2* %vA)
  %272 = load float* %wA, align 4
  %273 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %274 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %273, i32 0, i32 0
  call void @_Z7b2CrossfRK6b2Vec2(%struct.b2Vec2* sret %21, float %272, %struct.b2Vec2* %274)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %dv26, %struct.b2Vec2* %18, %struct.b2Vec2* %21)
  %275 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %dv1, %struct.b2Vec2* %normal)
  store float %275, float* %vn1, align 4
  %276 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %dv26, %struct.b2Vec2* %normal)
  store float %276, float* %vn2, align 4
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %b)
  %277 = load float* %vn1, align 4
  %278 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %279 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %278, i32 0, i32 6
  %280 = load float* %279, align 4
  %281 = fsub float %277, %280
  %282 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 0
  store float %281, float* %282, align 4
  %283 = load float* %vn2, align 4
  %284 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %285 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %284, i32 0, i32 6
  %286 = load float* %285, align 4
  %287 = fsub float %283, %286
  %288 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 1
  store float %287, float* %288, align 4
  %289 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %290 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %289, i32 0, i32 3
  call void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* sret %22, %struct.b2Mat22* %290, %struct.b2Vec2* %a)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %b, %struct.b2Vec2* %22)
  store float 0x3F50624DE0000000, float* %k_errorTol, align 4
  br label %291

; <label>:291                                     ; preds = %262
  %292 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %293 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %292, i32 0, i32 2
  call void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* sret %23, %struct.b2Mat22* %293, %struct.b2Vec2* %b)
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %x, %struct.b2Vec2* %23)
  %294 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %295 = load float* %294, align 4
  %296 = fcmp oge float %295, 0.000000e+00
  br i1 %296, label %297, label %338

; <label>:297                                     ; preds = %291
  %298 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %299 = load float* %298, align 4
  %300 = fcmp oge float %299, 0.000000e+00
  br i1 %300, label %301, label %338

; <label>:301                                     ; preds = %297
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d, %struct.b2Vec2* %x, %struct.b2Vec2* %a)
  %302 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 0
  %303 = load float* %302, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P1, float %303, %struct.b2Vec2* %normal)
  %304 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 1
  %305 = load float* %304, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P2, float %305, %struct.b2Vec2* %normal)
  %306 = load float* %mA, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %25, %struct.b2Vec2* %P1, %struct.b2Vec2* %P2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %24, float %306, %struct.b2Vec2* %25)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %24)
  %307 = load float* %iA, align 4
  %308 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %309 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %308, i32 0, i32 0
  %310 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %309, %struct.b2Vec2* %P1)
  %311 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %312 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %311, i32 0, i32 0
  %313 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %312, %struct.b2Vec2* %P2)
  %314 = fadd float %310, %313
  %315 = fmul float %307, %314
  %316 = load float* %wA, align 4
  %317 = fsub float %316, %315
  store float %317, float* %wA, align 4
  %318 = load float* %mB, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %27, %struct.b2Vec2* %P1, %struct.b2Vec2* %P2)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %26, float %318, %struct.b2Vec2* %27)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %26)
  %319 = load float* %iB, align 4
  %320 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %321 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %320, i32 0, i32 1
  %322 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %321, %struct.b2Vec2* %P1)
  %323 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %324 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %323, i32 0, i32 1
  %325 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %324, %struct.b2Vec2* %P2)
  %326 = fadd float %322, %325
  %327 = fmul float %319, %326
  %328 = load float* %wB, align 4
  %329 = fadd float %328, %327
  store float %329, float* %wB, align 4
  %330 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %331 = load float* %330, align 4
  %332 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %333 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %332, i32 0, i32 2
  store float %331, float* %333, align 4
  %334 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %335 = load float* %334, align 4
  %336 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %337 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %336, i32 0, i32 2
  store float %335, float* %337, align 4
  br label %516

; <label>:338                                     ; preds = %297, %291
  %339 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %340 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %339, i32 0, i32 4
  %341 = load float* %340, align 4
  %342 = fsub float -0.000000e+00, %341
  %343 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 0
  %344 = load float* %343, align 4
  %345 = fmul float %342, %344
  %346 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  store float %345, float* %346, align 4
  %347 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  store float 0.000000e+00, float* %347, align 4
  store float 0.000000e+00, float* %vn1, align 4
  %348 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %349 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.b2Mat22* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.b2Vec2* %350, i32 0, i32 1
  %352 = load float* %351, align 4
  %353 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %354 = load float* %353, align 4
  %355 = fmul float %352, %354
  %356 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 1
  %357 = load float* %356, align 4
  %358 = fadd float %355, %357
  store float %358, float* %vn2, align 4
  %359 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %360 = load float* %359, align 4
  %361 = fcmp oge float %360, 0.000000e+00
  br i1 %361, label %362, label %402

; <label>:362                                     ; preds = %338
  %363 = load float* %vn2, align 4
  %364 = fcmp oge float %363, 0.000000e+00
  br i1 %364, label %365, label %402

; <label>:365                                     ; preds = %362
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d7, %struct.b2Vec2* %x, %struct.b2Vec2* %a)
  %366 = getelementptr inbounds %struct.b2Vec2* %d7, i32 0, i32 0
  %367 = load float* %366, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P18, float %367, %struct.b2Vec2* %normal)
  %368 = getelementptr inbounds %struct.b2Vec2* %d7, i32 0, i32 1
  %369 = load float* %368, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P29, float %369, %struct.b2Vec2* %normal)
  %370 = load float* %mA, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %29, %struct.b2Vec2* %P18, %struct.b2Vec2* %P29)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %28, float %370, %struct.b2Vec2* %29)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %28)
  %371 = load float* %iA, align 4
  %372 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %373 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %372, i32 0, i32 0
  %374 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %373, %struct.b2Vec2* %P18)
  %375 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %376 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %375, i32 0, i32 0
  %377 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %376, %struct.b2Vec2* %P29)
  %378 = fadd float %374, %377
  %379 = fmul float %371, %378
  %380 = load float* %wA, align 4
  %381 = fsub float %380, %379
  store float %381, float* %wA, align 4
  %382 = load float* %mB, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %31, %struct.b2Vec2* %P18, %struct.b2Vec2* %P29)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %30, float %382, %struct.b2Vec2* %31)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %30)
  %383 = load float* %iB, align 4
  %384 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %385 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %384, i32 0, i32 1
  %386 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %385, %struct.b2Vec2* %P18)
  %387 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %388 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %387, i32 0, i32 1
  %389 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %388, %struct.b2Vec2* %P29)
  %390 = fadd float %386, %389
  %391 = fmul float %383, %390
  %392 = load float* %wB, align 4
  %393 = fadd float %392, %391
  store float %393, float* %wB, align 4
  %394 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %395 = load float* %394, align 4
  %396 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %397 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %396, i32 0, i32 2
  store float %395, float* %397, align 4
  %398 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %399 = load float* %398, align 4
  %400 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %401 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %400, i32 0, i32 2
  store float %399, float* %401, align 4
  br label %516

; <label>:402                                     ; preds = %362, %338
  %403 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  store float 0.000000e+00, float* %403, align 4
  %404 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %405 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %404, i32 0, i32 4
  %406 = load float* %405, align 4
  %407 = fsub float -0.000000e+00, %406
  %408 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 1
  %409 = load float* %408, align 4
  %410 = fmul float %407, %409
  %411 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  store float %410, float* %411, align 4
  %412 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %413 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.b2Mat22* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.b2Vec2* %414, i32 0, i32 0
  %416 = load float* %415, align 4
  %417 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %418 = load float* %417, align 4
  %419 = fmul float %416, %418
  %420 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 0
  %421 = load float* %420, align 4
  %422 = fadd float %419, %421
  store float %422, float* %vn1, align 4
  store float 0.000000e+00, float* %vn2, align 4
  %423 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %424 = load float* %423, align 4
  %425 = fcmp oge float %424, 0.000000e+00
  br i1 %425, label %426, label %466

; <label>:426                                     ; preds = %402
  %427 = load float* %vn1, align 4
  %428 = fcmp oge float %427, 0.000000e+00
  br i1 %428, label %429, label %466

; <label>:429                                     ; preds = %426
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d10, %struct.b2Vec2* %x, %struct.b2Vec2* %a)
  %430 = getelementptr inbounds %struct.b2Vec2* %d10, i32 0, i32 0
  %431 = load float* %430, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P111, float %431, %struct.b2Vec2* %normal)
  %432 = getelementptr inbounds %struct.b2Vec2* %d10, i32 0, i32 1
  %433 = load float* %432, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P212, float %433, %struct.b2Vec2* %normal)
  %434 = load float* %mA, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %33, %struct.b2Vec2* %P111, %struct.b2Vec2* %P212)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %32, float %434, %struct.b2Vec2* %33)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %32)
  %435 = load float* %iA, align 4
  %436 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %437 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %436, i32 0, i32 0
  %438 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %437, %struct.b2Vec2* %P111)
  %439 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %440 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %439, i32 0, i32 0
  %441 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %440, %struct.b2Vec2* %P212)
  %442 = fadd float %438, %441
  %443 = fmul float %435, %442
  %444 = load float* %wA, align 4
  %445 = fsub float %444, %443
  store float %445, float* %wA, align 4
  %446 = load float* %mB, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %35, %struct.b2Vec2* %P111, %struct.b2Vec2* %P212)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %34, float %446, %struct.b2Vec2* %35)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %34)
  %447 = load float* %iB, align 4
  %448 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %449 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %448, i32 0, i32 1
  %450 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %449, %struct.b2Vec2* %P111)
  %451 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %452 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %451, i32 0, i32 1
  %453 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %452, %struct.b2Vec2* %P212)
  %454 = fadd float %450, %453
  %455 = fmul float %447, %454
  %456 = load float* %wB, align 4
  %457 = fadd float %456, %455
  store float %457, float* %wB, align 4
  %458 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %459 = load float* %458, align 4
  %460 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %461 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %460, i32 0, i32 2
  store float %459, float* %461, align 4
  %462 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %463 = load float* %462, align 4
  %464 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %465 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %464, i32 0, i32 2
  store float %463, float* %465, align 4
  br label %516

; <label>:466                                     ; preds = %426, %402
  %467 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  store float 0.000000e+00, float* %467, align 4
  %468 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  store float 0.000000e+00, float* %468, align 4
  %469 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 0
  %470 = load float* %469, align 4
  store float %470, float* %vn1, align 4
  %471 = getelementptr inbounds %struct.b2Vec2* %b, i32 0, i32 1
  %472 = load float* %471, align 4
  store float %472, float* %vn2, align 4
  %473 = load float* %vn1, align 4
  %474 = fcmp oge float %473, 0.000000e+00
  br i1 %474, label %475, label %515

; <label>:475                                     ; preds = %466
  %476 = load float* %vn2, align 4
  %477 = fcmp oge float %476, 0.000000e+00
  br i1 %477, label %478, label %515

; <label>:478                                     ; preds = %475
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %d13, %struct.b2Vec2* %x, %struct.b2Vec2* %a)
  %479 = getelementptr inbounds %struct.b2Vec2* %d13, i32 0, i32 0
  %480 = load float* %479, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P114, float %480, %struct.b2Vec2* %normal)
  %481 = getelementptr inbounds %struct.b2Vec2* %d13, i32 0, i32 1
  %482 = load float* %481, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P215, float %482, %struct.b2Vec2* %normal)
  %483 = load float* %mA, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %37, %struct.b2Vec2* %P114, %struct.b2Vec2* %P215)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %36, float %483, %struct.b2Vec2* %37)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %vA, %struct.b2Vec2* %36)
  %484 = load float* %iA, align 4
  %485 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %486 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %485, i32 0, i32 0
  %487 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %486, %struct.b2Vec2* %P114)
  %488 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %489 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %488, i32 0, i32 0
  %490 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %489, %struct.b2Vec2* %P215)
  %491 = fadd float %487, %490
  %492 = fmul float %484, %491
  %493 = load float* %wA, align 4
  %494 = fsub float %493, %492
  store float %494, float* %wA, align 4
  %495 = load float* %mB, align 4
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %39, %struct.b2Vec2* %P114, %struct.b2Vec2* %P215)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %38, float %495, %struct.b2Vec2* %39)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %vB, %struct.b2Vec2* %38)
  %496 = load float* %iB, align 4
  %497 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %498 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %497, i32 0, i32 1
  %499 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %498, %struct.b2Vec2* %P114)
  %500 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %501 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %500, i32 0, i32 1
  %502 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %501, %struct.b2Vec2* %P215)
  %503 = fadd float %499, %502
  %504 = fmul float %496, %503
  %505 = load float* %wB, align 4
  %506 = fadd float %505, %504
  store float %506, float* %wB, align 4
  %507 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 0
  %508 = load float* %507, align 4
  %509 = load %struct.b2VelocityConstraintPoint** %cp1, align 4
  %510 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %509, i32 0, i32 2
  store float %508, float* %510, align 4
  %511 = getelementptr inbounds %struct.b2Vec2* %x, i32 0, i32 1
  %512 = load float* %511, align 4
  %513 = load %struct.b2VelocityConstraintPoint** %cp2, align 4
  %514 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %513, i32 0, i32 2
  store float %512, float* %514, align 4
  br label %516

; <label>:515                                     ; preds = %475, %466
  br label %516

; <label>:516                                     ; preds = %515, %478, %429, %365, %301
  br label %517

; <label>:517                                     ; preds = %516, %184
  %518 = load i32* %indexA, align 4
  %519 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %520 = load %struct.b2Velocity** %519, align 4
  %521 = getelementptr inbounds %struct.b2Velocity* %520, i32 %518
  %522 = getelementptr inbounds %struct.b2Velocity* %521, i32 0, i32 0
  %523 = bitcast %struct.b2Vec2* %522 to i8*
  %524 = bitcast %struct.b2Vec2* %vA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %523, i8* %524, i32 8, i32 4, i1 false)
  %525 = load float* %wA, align 4
  %526 = load i32* %indexA, align 4
  %527 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %528 = load %struct.b2Velocity** %527, align 4
  %529 = getelementptr inbounds %struct.b2Velocity* %528, i32 %526
  %530 = getelementptr inbounds %struct.b2Velocity* %529, i32 0, i32 1
  store float %525, float* %530, align 4
  %531 = load i32* %indexB, align 4
  %532 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %533 = load %struct.b2Velocity** %532, align 4
  %534 = getelementptr inbounds %struct.b2Velocity* %533, i32 %531
  %535 = getelementptr inbounds %struct.b2Velocity* %534, i32 0, i32 0
  %536 = bitcast %struct.b2Vec2* %535 to i8*
  %537 = bitcast %struct.b2Vec2* %vB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %536, i8* %537, i32 8, i32 4, i1 false)
  %538 = load float* %wB, align 4
  %539 = load i32* %indexB, align 4
  %540 = getelementptr inbounds %class.b2ContactSolver* %40, i32 0, i32 2
  %541 = load %struct.b2Velocity** %540, align 4
  %542 = getelementptr inbounds %struct.b2Velocity* %541, i32 %539
  %543 = getelementptr inbounds %struct.b2Velocity* %542, i32 0, i32 1
  store float %538, float* %543, align 4
  br label %544

; <label>:544                                     ; preds = %517
  %545 = load i32* %i, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %i, align 4
  br label %41

; <label>:547                                     ; preds = %41
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

define linkonce_odr void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %2)
  ret void
}

define linkonce_odr void @_Z5b2MulRK7b2Mat22RK6b2Vec2(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Mat22* %A, %struct.b2Vec2* %v) inlinehint {
  %1 = alloca %struct.b2Mat22*, align 4
  %2 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Mat22* %A, %struct.b2Mat22** %1, align 4
  store %struct.b2Vec2* %v, %struct.b2Vec2** %2, align 4
  %3 = load %struct.b2Mat22** %1
  %4 = getelementptr inbounds %struct.b2Mat22* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.b2Vec2* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = load %struct.b2Vec2** %2
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %6, %9
  %11 = load %struct.b2Mat22** %1
  %12 = getelementptr inbounds %struct.b2Mat22* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.b2Vec2* %12, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = load %struct.b2Vec2** %2
  %16 = getelementptr inbounds %struct.b2Vec2* %15, i32 0, i32 1
  %17 = load float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %10, %18
  %20 = load %struct.b2Mat22** %1
  %21 = getelementptr inbounds %struct.b2Mat22* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 1
  %23 = load float* %22, align 4
  %24 = load %struct.b2Vec2** %2
  %25 = getelementptr inbounds %struct.b2Vec2* %24, i32 0, i32 0
  %26 = load float* %25, align 4
  %27 = fmul float %23, %26
  %28 = load %struct.b2Mat22** %1
  %29 = getelementptr inbounds %struct.b2Mat22* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.b2Vec2* %29, i32 0, i32 1
  %31 = load float* %30, align 4
  %32 = load %struct.b2Vec2** %2
  %33 = getelementptr inbounds %struct.b2Vec2* %32, i32 0, i32 1
  %34 = load float* %33, align 4
  %35 = fmul float %31, %34
  %36 = fadd float %27, %35
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %agg.result, float %19, float %36)
  ret void
}

define linkonce_odr void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* noalias sret %agg.result, %struct.b2Vec2* %this) align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %agg.result)
  %3 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = fsub float -0.000000e+00, %4
  %6 = getelementptr inbounds %struct.b2Vec2* %2, i32 0, i32 1
  %7 = load float* %6, align 4
  %8 = fsub float -0.000000e+00, %7
  call void @_ZN6b2Vec23SetEff(%struct.b2Vec2* %agg.result, float %5, float %8)
  ret void
}

define void @_ZN15b2ContactSolver13StoreImpulsesEv(%class.b2ContactSolver* %this) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %i = alloca i32, align 4
  %vc = alloca %struct.b2ContactVelocityConstraint*, align 4
  %manifold = alloca %struct.b2Manifold*, align 4
  %j = alloca i32, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %2 = load %class.b2ContactSolver** %1
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4
  %5 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 7
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %57

; <label>:8                                       ; preds = %3
  %9 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 5
  %10 = load %struct.b2ContactVelocityConstraint** %9, align 4
  %11 = load i32* %i, align 4
  %12 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %10, i32 %11
  store %struct.b2ContactVelocityConstraint* %12, %struct.b2ContactVelocityConstraint** %vc, align 4
  %13 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %14 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %13, i32 0, i32 13
  %15 = load i32* %14, align 4
  %16 = getelementptr inbounds %class.b2ContactSolver* %2, i32 0, i32 6
  %17 = load %class.b2Contact*** %16, align 4
  %18 = getelementptr inbounds %class.b2Contact** %17, i32 %15
  %19 = load %class.b2Contact** %18
  %20 = call %struct.b2Manifold* @_ZN9b2Contact11GetManifoldEv(%class.b2Contact* %19)
  store %struct.b2Manifold* %20, %struct.b2Manifold** %manifold, align 4
  store i32 0, i32* %j, align 4
  br label %21

; <label>:21                                      ; preds = %50, %8
  %22 = load i32* %j, align 4
  %23 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %24 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %23, i32 0, i32 12
  %25 = load i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %53

; <label>:27                                      ; preds = %21
  %28 = load i32* %j, align 4
  %29 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %30 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %30, i32 0, i32 %28
  %32 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %31, i32 0, i32 2
  %33 = load float* %32, align 4
  %34 = load i32* %j, align 4
  %35 = load %struct.b2Manifold** %manifold, align 4
  %36 = getelementptr inbounds %struct.b2Manifold* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %36, i32 0, i32 %34
  %38 = getelementptr inbounds %struct.b2ManifoldPoint* %37, i32 0, i32 1
  store float %33, float* %38, align 4
  %39 = load i32* %j, align 4
  %40 = load %struct.b2ContactVelocityConstraint** %vc, align 4
  %41 = getelementptr inbounds %struct.b2ContactVelocityConstraint* %40, i32 0, i32 0
  %42 = getelementptr inbounds [2 x %struct.b2VelocityConstraintPoint]* %41, i32 0, i32 %39
  %43 = getelementptr inbounds %struct.b2VelocityConstraintPoint* %42, i32 0, i32 3
  %44 = load float* %43, align 4
  %45 = load i32* %j, align 4
  %46 = load %struct.b2Manifold** %manifold, align 4
  %47 = getelementptr inbounds %struct.b2Manifold* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.b2ManifoldPoint]* %47, i32 0, i32 %45
  %49 = getelementptr inbounds %struct.b2ManifoldPoint* %48, i32 0, i32 2
  store float %44, float* %49, align 4
  br label %50

; <label>:50                                      ; preds = %27
  %51 = load i32* %j, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %j, align 4
  br label %21

; <label>:53                                      ; preds = %21
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4
  br label %3

; <label>:57                                      ; preds = %3
  ret void
}

define zeroext i1 @_ZN15b2ContactSolver24SolvePositionConstraintsEv(%class.b2ContactSolver* %this) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %minSeparation = alloca float, align 4
  %i = alloca i32, align 4
  %pc = alloca %struct.b2ContactPositionConstraint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %localCenterA = alloca %struct.b2Vec2, align 4
  %mA = alloca float, align 4
  %iA = alloca float, align 4
  %localCenterB = alloca %struct.b2Vec2, align 4
  %mB = alloca float, align 4
  %iB = alloca float, align 4
  %pointCount = alloca i32, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %j = alloca i32, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %2 = alloca %struct.b2Vec2, align 4
  %3 = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %psm = alloca %struct.b2PositionSolverManifold, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %point = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %C = alloca float, align 4
  %rnA = alloca float, align 4
  %rnB = alloca float, align 4
  %K = alloca float, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  %8 = load %class.b2ContactSolver** %1
  store float 0.000000e+00, float* %minSeparation, align 4
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %178, %0
  %10 = load i32* %i, align 4
  %11 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 7
  %12 = load i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %181

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 4
  %16 = load %struct.b2ContactPositionConstraint** %15, align 4
  %17 = load i32* %i, align 4
  %18 = getelementptr inbounds %struct.b2ContactPositionConstraint* %16, i32 %17
  store %struct.b2ContactPositionConstraint* %18, %struct.b2ContactPositionConstraint** %pc, align 4
  %19 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %20 = getelementptr inbounds %struct.b2ContactPositionConstraint* %19, i32 0, i32 3
  %21 = load i32* %20, align 4
  store i32 %21, i32* %indexA, align 4
  %22 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %23 = getelementptr inbounds %struct.b2ContactPositionConstraint* %22, i32 0, i32 4
  %24 = load i32* %23, align 4
  store i32 %24, i32* %indexB, align 4
  %25 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %26 = getelementptr inbounds %struct.b2ContactPositionConstraint* %25, i32 0, i32 7
  %27 = bitcast %struct.b2Vec2* %localCenterA to i8*
  %28 = bitcast %struct.b2Vec2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 8, i32 4, i1 false)
  %29 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %30 = getelementptr inbounds %struct.b2ContactPositionConstraint* %29, i32 0, i32 5
  %31 = load float* %30, align 4
  store float %31, float* %mA, align 4
  %32 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %33 = getelementptr inbounds %struct.b2ContactPositionConstraint* %32, i32 0, i32 9
  %34 = load float* %33, align 4
  store float %34, float* %iA, align 4
  %35 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %36 = getelementptr inbounds %struct.b2ContactPositionConstraint* %35, i32 0, i32 8
  %37 = bitcast %struct.b2Vec2* %localCenterB to i8*
  %38 = bitcast %struct.b2Vec2* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 8, i32 4, i1 false)
  %39 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %40 = getelementptr inbounds %struct.b2ContactPositionConstraint* %39, i32 0, i32 6
  %41 = load float* %40, align 4
  store float %41, float* %mB, align 4
  %42 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %43 = getelementptr inbounds %struct.b2ContactPositionConstraint* %42, i32 0, i32 10
  %44 = load float* %43, align 4
  store float %44, float* %iB, align 4
  %45 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %46 = getelementptr inbounds %struct.b2ContactPositionConstraint* %45, i32 0, i32 14
  %47 = load i32* %46, align 4
  store i32 %47, i32* %pointCount, align 4
  %48 = load i32* %indexA, align 4
  %49 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %50 = load %struct.b2Position** %49, align 4
  %51 = getelementptr inbounds %struct.b2Position* %50, i32 %48
  %52 = getelementptr inbounds %struct.b2Position* %51, i32 0, i32 0
  %53 = bitcast %struct.b2Vec2* %cA to i8*
  %54 = bitcast %struct.b2Vec2* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %53, i8* %54, i32 8, i32 4, i1 false)
  %55 = load i32* %indexA, align 4
  %56 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %57 = load %struct.b2Position** %56, align 4
  %58 = getelementptr inbounds %struct.b2Position* %57, i32 %55
  %59 = getelementptr inbounds %struct.b2Position* %58, i32 0, i32 1
  %60 = load float* %59, align 4
  store float %60, float* %aA, align 4
  %61 = load i32* %indexB, align 4
  %62 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %63 = load %struct.b2Position** %62, align 4
  %64 = getelementptr inbounds %struct.b2Position* %63, i32 %61
  %65 = getelementptr inbounds %struct.b2Position* %64, i32 0, i32 0
  %66 = bitcast %struct.b2Vec2* %cB to i8*
  %67 = bitcast %struct.b2Vec2* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 8, i32 4, i1 false)
  %68 = load i32* %indexB, align 4
  %69 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %70 = load %struct.b2Position** %69, align 4
  %71 = getelementptr inbounds %struct.b2Position* %70, i32 %68
  %72 = getelementptr inbounds %struct.b2Position* %71, i32 0, i32 1
  %73 = load float* %72, align 4
  store float %73, float* %aB, align 4
  store i32 0, i32* %j, align 4
  br label %74

; <label>:74                                      ; preds = %148, %14
  %75 = load i32* %j, align 4
  %76 = load i32* %pointCount, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %151

; <label>:78                                      ; preds = %74
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %79 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %80 = load float* %aA, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %79, float %80)
  %81 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %82 = load float* %aB, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %81, float %82)
  %83 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 0
  %84 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %3, %struct.b2Rot* %84, %struct.b2Vec2* %localCenterA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %2, %struct.b2Vec2* %cA, %struct.b2Vec2* %3)
  %85 = bitcast %struct.b2Vec2* %83 to i8*
  %86 = bitcast %struct.b2Vec2* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %85, i8* %86, i32 8, i32 4, i1 false)
  %87 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 0
  %88 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %88, %struct.b2Vec2* %localCenterB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %cB, %struct.b2Vec2* %5)
  %89 = bitcast %struct.b2Vec2* %87 to i8*
  %90 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 8, i32 4, i1 false)
  call void @_ZN24b2PositionSolverManifoldC1Ev(%struct.b2PositionSolverManifold* %psm)
  %91 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %92 = load i32* %j, align 4
  call void @_ZN24b2PositionSolverManifold10InitializeEP27b2ContactPositionConstraintRK11b2TransformS4_i(%struct.b2PositionSolverManifold* %psm, %struct.b2ContactPositionConstraint* %91, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB, i32 %92)
  %93 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 0
  %94 = bitcast %struct.b2Vec2* %normal to i8*
  %95 = bitcast %struct.b2Vec2* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %95, i32 8, i32 4, i1 false)
  %96 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 1
  %97 = bitcast %struct.b2Vec2* %point to i8*
  %98 = bitcast %struct.b2Vec2* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %97, i8* %98, i32 8, i32 4, i1 false)
  %99 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 2
  %100 = load float* %99, align 4
  store float %100, float* %separation, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %rA, %struct.b2Vec2* %point, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %rB, %struct.b2Vec2* %point, %struct.b2Vec2* %cB)
  %101 = load float* %minSeparation, align 4
  %102 = load float* %separation, align 4
  %103 = call float @_Z5b2MinIfET_S0_S0_(float %101, float %102)
  store float %103, float* %minSeparation, align 4
  %104 = load float* %separation, align 4
  %105 = fadd float %104, 0x3F747AE140000000
  %106 = fmul float 0x3FC99999A0000000, %105
  %107 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %106, float 0xBFC99999A0000000, float 0.000000e+00)
  store float %107, float* %C, align 4
  %108 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %normal)
  store float %108, float* %rnA, align 4
  %109 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %normal)
  store float %109, float* %rnB, align 4
  %110 = load float* %mA, align 4
  %111 = load float* %mB, align 4
  %112 = fadd float %110, %111
  %113 = load float* %iA, align 4
  %114 = load float* %rnA, align 4
  %115 = fmul float %113, %114
  %116 = load float* %rnA, align 4
  %117 = fmul float %115, %116
  %118 = fadd float %112, %117
  %119 = load float* %iB, align 4
  %120 = load float* %rnB, align 4
  %121 = fmul float %119, %120
  %122 = load float* %rnB, align 4
  %123 = fmul float %121, %122
  %124 = fadd float %118, %123
  store float %124, float* %K, align 4
  %125 = load float* %K, align 4
  %126 = fcmp ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %132

; <label>:127                                     ; preds = %78
  %128 = load float* %C, align 4
  %129 = fsub float -0.000000e+00, %128
  %130 = load float* %K, align 4
  %131 = fdiv float %129, %130
  br label %133

; <label>:132                                     ; preds = %78
  br label %133

; <label>:133                                     ; preds = %132, %127
  %134 = phi float [ %131, %127 ], [ 0.000000e+00, %132 ]
  store float %134, float* %impulse, align 4
  %135 = load float* %impulse, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %135, %struct.b2Vec2* %normal)
  %136 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %6, float %136, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %6)
  %137 = load float* %iA, align 4
  %138 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P)
  %139 = fmul float %137, %138
  %140 = load float* %aA, align 4
  %141 = fsub float %140, %139
  store float %141, float* %aA, align 4
  %142 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float %142, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %7)
  %143 = load float* %iB, align 4
  %144 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P)
  %145 = fmul float %143, %144
  %146 = load float* %aB, align 4
  %147 = fadd float %146, %145
  store float %147, float* %aB, align 4
  br label %148

; <label>:148                                     ; preds = %133
  %149 = load i32* %j, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %j, align 4
  br label %74

; <label>:151                                     ; preds = %74
  %152 = load i32* %indexA, align 4
  %153 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %154 = load %struct.b2Position** %153, align 4
  %155 = getelementptr inbounds %struct.b2Position* %154, i32 %152
  %156 = getelementptr inbounds %struct.b2Position* %155, i32 0, i32 0
  %157 = bitcast %struct.b2Vec2* %156 to i8*
  %158 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %157, i8* %158, i32 8, i32 4, i1 false)
  %159 = load float* %aA, align 4
  %160 = load i32* %indexA, align 4
  %161 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %162 = load %struct.b2Position** %161, align 4
  %163 = getelementptr inbounds %struct.b2Position* %162, i32 %160
  %164 = getelementptr inbounds %struct.b2Position* %163, i32 0, i32 1
  store float %159, float* %164, align 4
  %165 = load i32* %indexB, align 4
  %166 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %167 = load %struct.b2Position** %166, align 4
  %168 = getelementptr inbounds %struct.b2Position* %167, i32 %165
  %169 = getelementptr inbounds %struct.b2Position* %168, i32 0, i32 0
  %170 = bitcast %struct.b2Vec2* %169 to i8*
  %171 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %170, i8* %171, i32 8, i32 4, i1 false)
  %172 = load float* %aB, align 4
  %173 = load i32* %indexB, align 4
  %174 = getelementptr inbounds %class.b2ContactSolver* %8, i32 0, i32 1
  %175 = load %struct.b2Position** %174, align 4
  %176 = getelementptr inbounds %struct.b2Position* %175, i32 %173
  %177 = getelementptr inbounds %struct.b2Position* %176, i32 0, i32 1
  store float %172, float* %177, align 4
  br label %178

; <label>:178                                     ; preds = %151
  %179 = load i32* %i, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %i, align 4
  br label %9

; <label>:181                                     ; preds = %9
  %182 = load float* %minSeparation, align 4
  %183 = fcmp oge float %182, 0xBF8EB851E0000000
  ret i1 %183
}

define linkonce_odr void @_ZN24b2PositionSolverManifoldC1Ev(%struct.b2PositionSolverManifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2PositionSolverManifold*, align 4
  store %struct.b2PositionSolverManifold* %this, %struct.b2PositionSolverManifold** %1, align 4
  %2 = load %struct.b2PositionSolverManifold** %1
  call void @_ZN24b2PositionSolverManifoldC2Ev(%struct.b2PositionSolverManifold* %2)
  ret void
}

define linkonce_odr void @_ZN24b2PositionSolverManifold10InitializeEP27b2ContactPositionConstraintRK11b2TransformS4_i(%struct.b2PositionSolverManifold* %this, %struct.b2ContactPositionConstraint* %pc, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB, i32 %index) align 2 {
  %1 = alloca %struct.b2PositionSolverManifold*, align 4
  %2 = alloca %struct.b2ContactPositionConstraint*, align 4
  %3 = alloca %struct.b2Transform*, align 4
  %4 = alloca %struct.b2Transform*, align 4
  %5 = alloca i32, align 4
  %pointA = alloca %struct.b2Vec2, align 4
  %pointB = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  %10 = alloca %struct.b2Vec2, align 4
  %planePoint = alloca %struct.b2Vec2, align 4
  %clipPoint = alloca %struct.b2Vec2, align 4
  %11 = alloca %struct.b2Vec2, align 4
  %12 = alloca %struct.b2Vec2, align 4
  %planePoint1 = alloca %struct.b2Vec2, align 4
  %clipPoint2 = alloca %struct.b2Vec2, align 4
  %13 = alloca %struct.b2Vec2, align 4
  %14 = alloca %struct.b2Vec2, align 4
  store %struct.b2PositionSolverManifold* %this, %struct.b2PositionSolverManifold** %1, align 4
  store %struct.b2ContactPositionConstraint* %pc, %struct.b2ContactPositionConstraint** %2, align 4
  store %struct.b2Transform* %xfA, %struct.b2Transform** %3, align 4
  store %struct.b2Transform* %xfB, %struct.b2Transform** %4, align 4
  store i32 %index, i32* %5, align 4
  %15 = load %struct.b2PositionSolverManifold** %1
  %16 = load %struct.b2ContactPositionConstraint** %2, align 4
  %17 = getelementptr inbounds %struct.b2ContactPositionConstraint* %16, i32 0, i32 14
  %18 = load i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8]* @.str1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([122 x i8]* @__PRETTY_FUNCTION__._ZN24b2PositionSolverManifold10InitializeEP27b2ContactPositionConstraintRK11b2TransformS4_i, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.b2ContactPositionConstraint** %2, align 4
  %25 = getelementptr inbounds %struct.b2ContactPositionConstraint* %24, i32 0, i32 11
  %26 = load i32* %25, align 4
  switch i32 %26, label %118 [
    i32 0, label %27
    i32 1, label %54
    i32 2, label %84
  ]

; <label>:27                                      ; preds = %23
  %28 = load %struct.b2Transform** %3
  %29 = load %struct.b2ContactPositionConstraint** %2, align 4
  %30 = getelementptr inbounds %struct.b2ContactPositionConstraint* %29, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointA, %struct.b2Transform* %28, %struct.b2Vec2* %30)
  %31 = load %struct.b2Transform** %4
  %32 = load %struct.b2ContactPositionConstraint** %2, align 4
  %33 = getelementptr inbounds %struct.b2ContactPositionConstraint* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.b2Vec2]* %33, i32 0, i32 0
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %pointB, %struct.b2Transform* %31, %struct.b2Vec2* %34)
  %35 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %36 = bitcast %struct.b2Vec2* %35 to i8*
  %37 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 8, i32 4, i1 false)
  %38 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %39 = call float @_ZN6b2Vec29NormalizeEv(%struct.b2Vec2* %38)
  %40 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %8, %struct.b2Vec2* %pointA, %struct.b2Vec2* %pointB)
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %7, float 5.000000e-01, %struct.b2Vec2* %8)
  %41 = bitcast %struct.b2Vec2* %40 to i8*
  %42 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 8, i32 4, i1 false)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %9, %struct.b2Vec2* %pointB, %struct.b2Vec2* %pointA)
  %43 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %44 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %9, %struct.b2Vec2* %43)
  %45 = load %struct.b2ContactPositionConstraint** %2, align 4
  %46 = getelementptr inbounds %struct.b2ContactPositionConstraint* %45, i32 0, i32 12
  %47 = load float* %46, align 4
  %48 = fsub float %44, %47
  %49 = load %struct.b2ContactPositionConstraint** %2, align 4
  %50 = getelementptr inbounds %struct.b2ContactPositionConstraint* %49, i32 0, i32 13
  %51 = load float* %50, align 4
  %52 = fsub float %48, %51
  %53 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 2
  store float %52, float* %53, align 4
  br label %118

; <label>:54                                      ; preds = %23
  %55 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %56 = load %struct.b2Transform** %3
  %57 = getelementptr inbounds %struct.b2Transform* %56, i32 0, i32 1
  %58 = load %struct.b2ContactPositionConstraint** %2, align 4
  %59 = getelementptr inbounds %struct.b2ContactPositionConstraint* %58, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %10, %struct.b2Rot* %57, %struct.b2Vec2* %59)
  %60 = bitcast %struct.b2Vec2* %55 to i8*
  %61 = bitcast %struct.b2Vec2* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 8, i32 4, i1 false)
  %62 = load %struct.b2Transform** %3
  %63 = load %struct.b2ContactPositionConstraint** %2, align 4
  %64 = getelementptr inbounds %struct.b2ContactPositionConstraint* %63, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %planePoint, %struct.b2Transform* %62, %struct.b2Vec2* %64)
  %65 = load %struct.b2Transform** %4
  %66 = load i32* %5, align 4
  %67 = load %struct.b2ContactPositionConstraint** %2, align 4
  %68 = getelementptr inbounds %struct.b2ContactPositionConstraint* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.b2Vec2]* %68, i32 0, i32 %66
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %clipPoint, %struct.b2Transform* %65, %struct.b2Vec2* %69)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %11, %struct.b2Vec2* %clipPoint, %struct.b2Vec2* %planePoint)
  %70 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %71 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %11, %struct.b2Vec2* %70)
  %72 = load %struct.b2ContactPositionConstraint** %2, align 4
  %73 = getelementptr inbounds %struct.b2ContactPositionConstraint* %72, i32 0, i32 12
  %74 = load float* %73, align 4
  %75 = fsub float %71, %74
  %76 = load %struct.b2ContactPositionConstraint** %2, align 4
  %77 = getelementptr inbounds %struct.b2ContactPositionConstraint* %76, i32 0, i32 13
  %78 = load float* %77, align 4
  %79 = fsub float %75, %78
  %80 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 2
  store float %79, float* %80, align 4
  %81 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 1
  %82 = bitcast %struct.b2Vec2* %81 to i8*
  %83 = bitcast %struct.b2Vec2* %clipPoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 8, i32 4, i1 false)
  br label %118

; <label>:84                                      ; preds = %23
  %85 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %86 = load %struct.b2Transform** %4
  %87 = getelementptr inbounds %struct.b2Transform* %86, i32 0, i32 1
  %88 = load %struct.b2ContactPositionConstraint** %2, align 4
  %89 = getelementptr inbounds %struct.b2ContactPositionConstraint* %88, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %12, %struct.b2Rot* %87, %struct.b2Vec2* %89)
  %90 = bitcast %struct.b2Vec2* %85 to i8*
  %91 = bitcast %struct.b2Vec2* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %90, i8* %91, i32 8, i32 4, i1 false)
  %92 = load %struct.b2Transform** %4
  %93 = load %struct.b2ContactPositionConstraint** %2, align 4
  %94 = getelementptr inbounds %struct.b2ContactPositionConstraint* %93, i32 0, i32 2
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %planePoint1, %struct.b2Transform* %92, %struct.b2Vec2* %94)
  %95 = load %struct.b2Transform** %3
  %96 = load i32* %5, align 4
  %97 = load %struct.b2ContactPositionConstraint** %2, align 4
  %98 = getelementptr inbounds %struct.b2ContactPositionConstraint* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.b2Vec2]* %98, i32 0, i32 %96
  call void @_Z5b2MulRK11b2TransformRK6b2Vec2(%struct.b2Vec2* sret %clipPoint2, %struct.b2Transform* %95, %struct.b2Vec2* %99)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %13, %struct.b2Vec2* %clipPoint2, %struct.b2Vec2* %planePoint1)
  %100 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %101 = call float @_Z5b2DotRK6b2Vec2S1_(%struct.b2Vec2* %13, %struct.b2Vec2* %100)
  %102 = load %struct.b2ContactPositionConstraint** %2, align 4
  %103 = getelementptr inbounds %struct.b2ContactPositionConstraint* %102, i32 0, i32 12
  %104 = load float* %103, align 4
  %105 = fsub float %101, %104
  %106 = load %struct.b2ContactPositionConstraint** %2, align 4
  %107 = getelementptr inbounds %struct.b2ContactPositionConstraint* %106, i32 0, i32 13
  %108 = load float* %107, align 4
  %109 = fsub float %105, %108
  %110 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 2
  store float %109, float* %110, align 4
  %111 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 1
  %112 = bitcast %struct.b2Vec2* %111 to i8*
  %113 = bitcast %struct.b2Vec2* %clipPoint2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 8, i32 4, i1 false)
  %114 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  %115 = getelementptr inbounds %struct.b2PositionSolverManifold* %15, i32 0, i32 0
  call void @_ZNK6b2Vec2ngEv(%struct.b2Vec2* sret %14, %struct.b2Vec2* %115)
  %116 = bitcast %struct.b2Vec2* %114 to i8*
  %117 = bitcast %struct.b2Vec2* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %116, i8* %117, i32 8, i32 4, i1 false)
  br label %118

; <label>:118                                     ; preds = %23, %84, %54, %27
  ret void
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

define zeroext i1 @_ZN15b2ContactSolver27SolveTOIPositionConstraintsEii(%class.b2ContactSolver* %this, i32 %toiIndexA, i32 %toiIndexB) align 2 {
  %1 = alloca %class.b2ContactSolver*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %minSeparation = alloca float, align 4
  %i = alloca i32, align 4
  %pc = alloca %struct.b2ContactPositionConstraint*, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %localCenterA = alloca %struct.b2Vec2, align 4
  %localCenterB = alloca %struct.b2Vec2, align 4
  %pointCount = alloca i32, align 4
  %mA = alloca float, align 4
  %iA = alloca float, align 4
  %mB = alloca float, align 4
  %iB = alloca float, align 4
  %cA = alloca %struct.b2Vec2, align 4
  %aA = alloca float, align 4
  %cB = alloca %struct.b2Vec2, align 4
  %aB = alloca float, align 4
  %j = alloca i32, align 4
  %xfA = alloca %struct.b2Transform, align 4
  %xfB = alloca %struct.b2Transform, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %psm = alloca %struct.b2PositionSolverManifold, align 4
  %normal = alloca %struct.b2Vec2, align 4
  %point = alloca %struct.b2Vec2, align 4
  %separation = alloca float, align 4
  %rA = alloca %struct.b2Vec2, align 4
  %rB = alloca %struct.b2Vec2, align 4
  %C = alloca float, align 4
  %rnA = alloca float, align 4
  %rnB = alloca float, align 4
  %K = alloca float, align 4
  %impulse = alloca float, align 4
  %P = alloca %struct.b2Vec2, align 4
  %8 = alloca %struct.b2Vec2, align 4
  %9 = alloca %struct.b2Vec2, align 4
  store %class.b2ContactSolver* %this, %class.b2ContactSolver** %1, align 4
  store i32 %toiIndexA, i32* %2, align 4
  store i32 %toiIndexB, i32* %3, align 4
  %10 = load %class.b2ContactSolver** %1
  store float 0.000000e+00, float* %minSeparation, align 4
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %204, %0
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 7
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %207

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 4
  %18 = load %struct.b2ContactPositionConstraint** %17, align 4
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %struct.b2ContactPositionConstraint* %18, i32 %19
  store %struct.b2ContactPositionConstraint* %20, %struct.b2ContactPositionConstraint** %pc, align 4
  %21 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %22 = getelementptr inbounds %struct.b2ContactPositionConstraint* %21, i32 0, i32 3
  %23 = load i32* %22, align 4
  store i32 %23, i32* %indexA, align 4
  %24 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %25 = getelementptr inbounds %struct.b2ContactPositionConstraint* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  store i32 %26, i32* %indexB, align 4
  %27 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %28 = getelementptr inbounds %struct.b2ContactPositionConstraint* %27, i32 0, i32 7
  %29 = bitcast %struct.b2Vec2* %localCenterA to i8*
  %30 = bitcast %struct.b2Vec2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %31 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %32 = getelementptr inbounds %struct.b2ContactPositionConstraint* %31, i32 0, i32 8
  %33 = bitcast %struct.b2Vec2* %localCenterB to i8*
  %34 = bitcast %struct.b2Vec2* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %35 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %36 = getelementptr inbounds %struct.b2ContactPositionConstraint* %35, i32 0, i32 14
  %37 = load i32* %36, align 4
  store i32 %37, i32* %pointCount, align 4
  store float 0.000000e+00, float* %mA, align 4
  store float 0.000000e+00, float* %iA, align 4
  %38 = load i32* %indexA, align 4
  %39 = load i32* %2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

; <label>:41                                      ; preds = %16
  %42 = load i32* %indexA, align 4
  %43 = load i32* %3, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

; <label>:45                                      ; preds = %41, %16
  %46 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %47 = getelementptr inbounds %struct.b2ContactPositionConstraint* %46, i32 0, i32 5
  %48 = load float* %47, align 4
  store float %48, float* %mA, align 4
  %49 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %50 = getelementptr inbounds %struct.b2ContactPositionConstraint* %49, i32 0, i32 9
  %51 = load float* %50, align 4
  store float %51, float* %iA, align 4
  br label %52

; <label>:52                                      ; preds = %45, %41
  %53 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %54 = getelementptr inbounds %struct.b2ContactPositionConstraint* %53, i32 0, i32 6
  %55 = load float* %54, align 4
  store float %55, float* %mB, align 4
  %56 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %57 = getelementptr inbounds %struct.b2ContactPositionConstraint* %56, i32 0, i32 10
  %58 = load float* %57, align 4
  store float %58, float* %iB, align 4
  %59 = load i32* %indexB, align 4
  %60 = load i32* %2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

; <label>:62                                      ; preds = %52
  %63 = load i32* %indexB, align 4
  %64 = load i32* %3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

; <label>:66                                      ; preds = %62, %52
  %67 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %68 = getelementptr inbounds %struct.b2ContactPositionConstraint* %67, i32 0, i32 6
  %69 = load float* %68, align 4
  store float %69, float* %mB, align 4
  %70 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %71 = getelementptr inbounds %struct.b2ContactPositionConstraint* %70, i32 0, i32 10
  %72 = load float* %71, align 4
  store float %72, float* %iB, align 4
  br label %73

; <label>:73                                      ; preds = %66, %62
  %74 = load i32* %indexA, align 4
  %75 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %76 = load %struct.b2Position** %75, align 4
  %77 = getelementptr inbounds %struct.b2Position* %76, i32 %74
  %78 = getelementptr inbounds %struct.b2Position* %77, i32 0, i32 0
  %79 = bitcast %struct.b2Vec2* %cA to i8*
  %80 = bitcast %struct.b2Vec2* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %79, i8* %80, i32 8, i32 4, i1 false)
  %81 = load i32* %indexA, align 4
  %82 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %83 = load %struct.b2Position** %82, align 4
  %84 = getelementptr inbounds %struct.b2Position* %83, i32 %81
  %85 = getelementptr inbounds %struct.b2Position* %84, i32 0, i32 1
  %86 = load float* %85, align 4
  store float %86, float* %aA, align 4
  %87 = load i32* %indexB, align 4
  %88 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %89 = load %struct.b2Position** %88, align 4
  %90 = getelementptr inbounds %struct.b2Position* %89, i32 %87
  %91 = getelementptr inbounds %struct.b2Position* %90, i32 0, i32 0
  %92 = bitcast %struct.b2Vec2* %cB to i8*
  %93 = bitcast %struct.b2Vec2* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %93, i32 8, i32 4, i1 false)
  %94 = load i32* %indexB, align 4
  %95 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %96 = load %struct.b2Position** %95, align 4
  %97 = getelementptr inbounds %struct.b2Position* %96, i32 %94
  %98 = getelementptr inbounds %struct.b2Position* %97, i32 0, i32 1
  %99 = load float* %98, align 4
  store float %99, float* %aB, align 4
  store i32 0, i32* %j, align 4
  br label %100

; <label>:100                                     ; preds = %174, %73
  %101 = load i32* %j, align 4
  %102 = load i32* %pointCount, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %177

; <label>:104                                     ; preds = %100
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfA)
  call void @_ZN11b2TransformC1Ev(%struct.b2Transform* %xfB)
  %105 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  %106 = load float* %aA, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %105, float %106)
  %107 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  %108 = load float* %aB, align 4
  call void @_ZN5b2Rot3SetEf(%struct.b2Rot* %107, float %108)
  %109 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 0
  %110 = getelementptr inbounds %struct.b2Transform* %xfA, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %5, %struct.b2Rot* %110, %struct.b2Vec2* %localCenterA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %cA, %struct.b2Vec2* %5)
  %111 = bitcast %struct.b2Vec2* %109 to i8*
  %112 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %111, i8* %112, i32 8, i32 4, i1 false)
  %113 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 0
  %114 = getelementptr inbounds %struct.b2Transform* %xfB, i32 0, i32 1
  call void @_Z5b2MulRK5b2RotRK6b2Vec2(%struct.b2Vec2* sret %7, %struct.b2Rot* %114, %struct.b2Vec2* %localCenterB)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %cB, %struct.b2Vec2* %7)
  %115 = bitcast %struct.b2Vec2* %113 to i8*
  %116 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 8, i32 4, i1 false)
  call void @_ZN24b2PositionSolverManifoldC1Ev(%struct.b2PositionSolverManifold* %psm)
  %117 = load %struct.b2ContactPositionConstraint** %pc, align 4
  %118 = load i32* %j, align 4
  call void @_ZN24b2PositionSolverManifold10InitializeEP27b2ContactPositionConstraintRK11b2TransformS4_i(%struct.b2PositionSolverManifold* %psm, %struct.b2ContactPositionConstraint* %117, %struct.b2Transform* %xfA, %struct.b2Transform* %xfB, i32 %118)
  %119 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 0
  %120 = bitcast %struct.b2Vec2* %normal to i8*
  %121 = bitcast %struct.b2Vec2* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %121, i32 8, i32 4, i1 false)
  %122 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 1
  %123 = bitcast %struct.b2Vec2* %point to i8*
  %124 = bitcast %struct.b2Vec2* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %123, i8* %124, i32 8, i32 4, i1 false)
  %125 = getelementptr inbounds %struct.b2PositionSolverManifold* %psm, i32 0, i32 2
  %126 = load float* %125, align 4
  store float %126, float* %separation, align 4
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %rA, %struct.b2Vec2* %point, %struct.b2Vec2* %cA)
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %rB, %struct.b2Vec2* %point, %struct.b2Vec2* %cB)
  %127 = load float* %minSeparation, align 4
  %128 = load float* %separation, align 4
  %129 = call float @_Z5b2MinIfET_S0_S0_(float %127, float %128)
  store float %129, float* %minSeparation, align 4
  %130 = load float* %separation, align 4
  %131 = fadd float %130, 0x3F747AE140000000
  %132 = fmul float 7.500000e-01, %131
  %133 = call float @_Z7b2ClampIfET_S0_S0_S0_(float %132, float 0xBFC99999A0000000, float 0.000000e+00)
  store float %133, float* %C, align 4
  %134 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %normal)
  store float %134, float* %rnA, align 4
  %135 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %normal)
  store float %135, float* %rnB, align 4
  %136 = load float* %mA, align 4
  %137 = load float* %mB, align 4
  %138 = fadd float %136, %137
  %139 = load float* %iA, align 4
  %140 = load float* %rnA, align 4
  %141 = fmul float %139, %140
  %142 = load float* %rnA, align 4
  %143 = fmul float %141, %142
  %144 = fadd float %138, %143
  %145 = load float* %iB, align 4
  %146 = load float* %rnB, align 4
  %147 = fmul float %145, %146
  %148 = load float* %rnB, align 4
  %149 = fmul float %147, %148
  %150 = fadd float %144, %149
  store float %150, float* %K, align 4
  %151 = load float* %K, align 4
  %152 = fcmp ogt float %151, 0.000000e+00
  br i1 %152, label %153, label %158

; <label>:153                                     ; preds = %104
  %154 = load float* %C, align 4
  %155 = fsub float -0.000000e+00, %154
  %156 = load float* %K, align 4
  %157 = fdiv float %155, %156
  br label %159

; <label>:158                                     ; preds = %104
  br label %159

; <label>:159                                     ; preds = %158, %153
  %160 = phi float [ %157, %153 ], [ 0.000000e+00, %158 ]
  store float %160, float* %impulse, align 4
  %161 = load float* %impulse, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %P, float %161, %struct.b2Vec2* %normal)
  %162 = load float* %mA, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %8, float %162, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2mIERKS_(%struct.b2Vec2* %cA, %struct.b2Vec2* %8)
  %163 = load float* %iA, align 4
  %164 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rA, %struct.b2Vec2* %P)
  %165 = fmul float %163, %164
  %166 = load float* %aA, align 4
  %167 = fsub float %166, %165
  store float %167, float* %aA, align 4
  %168 = load float* %mB, align 4
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %9, float %168, %struct.b2Vec2* %P)
  call void @_ZN6b2Vec2pLERKS_(%struct.b2Vec2* %cB, %struct.b2Vec2* %9)
  %169 = load float* %iB, align 4
  %170 = call float @_Z7b2CrossRK6b2Vec2S1_(%struct.b2Vec2* %rB, %struct.b2Vec2* %P)
  %171 = fmul float %169, %170
  %172 = load float* %aB, align 4
  %173 = fadd float %172, %171
  store float %173, float* %aB, align 4
  br label %174

; <label>:174                                     ; preds = %159
  %175 = load i32* %j, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %j, align 4
  br label %100

; <label>:177                                     ; preds = %100
  %178 = load i32* %indexA, align 4
  %179 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %180 = load %struct.b2Position** %179, align 4
  %181 = getelementptr inbounds %struct.b2Position* %180, i32 %178
  %182 = getelementptr inbounds %struct.b2Position* %181, i32 0, i32 0
  %183 = bitcast %struct.b2Vec2* %182 to i8*
  %184 = bitcast %struct.b2Vec2* %cA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %183, i8* %184, i32 8, i32 4, i1 false)
  %185 = load float* %aA, align 4
  %186 = load i32* %indexA, align 4
  %187 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %188 = load %struct.b2Position** %187, align 4
  %189 = getelementptr inbounds %struct.b2Position* %188, i32 %186
  %190 = getelementptr inbounds %struct.b2Position* %189, i32 0, i32 1
  store float %185, float* %190, align 4
  %191 = load i32* %indexB, align 4
  %192 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %193 = load %struct.b2Position** %192, align 4
  %194 = getelementptr inbounds %struct.b2Position* %193, i32 %191
  %195 = getelementptr inbounds %struct.b2Position* %194, i32 0, i32 0
  %196 = bitcast %struct.b2Vec2* %195 to i8*
  %197 = bitcast %struct.b2Vec2* %cB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %196, i8* %197, i32 8, i32 4, i1 false)
  %198 = load float* %aB, align 4
  %199 = load i32* %indexB, align 4
  %200 = getelementptr inbounds %class.b2ContactSolver* %10, i32 0, i32 1
  %201 = load %struct.b2Position** %200, align 4
  %202 = getelementptr inbounds %struct.b2Position* %201, i32 %199
  %203 = getelementptr inbounds %struct.b2Position* %202, i32 0, i32 1
  store float %198, float* %203, align 4
  br label %204

; <label>:204                                     ; preds = %177
  %205 = load i32* %i, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %i, align 4
  br label %11

; <label>:207                                     ; preds = %11
  %208 = load float* %minSeparation, align 4
  %209 = fcmp oge float %208, 0xBF7EB851E0000000
  ret i1 %209
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

define linkonce_odr void @_ZN24b2PositionSolverManifoldC2Ev(%struct.b2PositionSolverManifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2PositionSolverManifold*, align 4
  store %struct.b2PositionSolverManifold* %this, %struct.b2PositionSolverManifold** %1, align 4
  %2 = load %struct.b2PositionSolverManifold** %1
  %3 = getelementptr inbounds %struct.b2PositionSolverManifold* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2PositionSolverManifold* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  ret void
}

define linkonce_odr void @_ZN6b2Vec2C2Ev(%struct.b2Vec2* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %struct.b2Vec2*, align 4
  store %struct.b2Vec2* %this, %struct.b2Vec2** %1, align 4
  %2 = load %struct.b2Vec2** %1
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

define linkonce_odr void @_ZN7b2Mat22C1Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  call void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %2)
  ret void
}

define linkonce_odr void @_ZN7b2Mat22C2Ev(%struct.b2Mat22* %this) unnamed_addr align 2 {
  %1 = alloca %struct.b2Mat22*, align 4
  store %struct.b2Mat22* %this, %struct.b2Mat22** %1, align 4
  %2 = load %struct.b2Mat22** %1
  %3 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2Mat22* %2, i32 0, i32 1
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %4)
  ret void
}

define linkonce_odr void @_ZN15b2WorldManifoldC2Ev(%struct.b2WorldManifold* %this) unnamed_addr inlinehint align 2 {
  %1 = alloca %struct.b2WorldManifold*, align 4
  store %struct.b2WorldManifold* %this, %struct.b2WorldManifold** %1, align 4
  %2 = load %struct.b2WorldManifold** %1
  %3 = getelementptr inbounds %struct.b2WorldManifold* %2, i32 0, i32 0
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %3)
  %4 = getelementptr inbounds %struct.b2WorldManifold* %2, i32 0, i32 1
  %5 = getelementptr inbounds [2 x %struct.b2Vec2]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.b2Vec2* %5, i32 2
  br label %7

; <label>:7                                       ; preds = %7, %0
  %8 = phi %struct.b2Vec2* [ %5, %0 ], [ %9, %7 ]
  call void @_ZN6b2Vec2C1Ev(%struct.b2Vec2* %8)
  %9 = getelementptr inbounds %struct.b2Vec2* %8, i32 1
  %10 = icmp eq %struct.b2Vec2* %9, %6
  br i1 %10, label %11, label %7

; <label>:11                                      ; preds = %7
  ret void
}

declare float @sinf(float) nounwind readnone

declare float @cosf(float) nounwind readnone

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
