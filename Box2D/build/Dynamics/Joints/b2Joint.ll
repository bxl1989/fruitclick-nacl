; ModuleID = 'Dynamics/Joints/b2Joint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2Joint = type { i32 (...)**, i32, %class.b2Joint*, %class.b2Joint*, %struct.b2JointEdge, %struct.b2JointEdge, %class.b2Body*, %class.b2Body*, i32, i8, i8, i8* }
%struct.b2JointEdge = type { %class.b2Body*, %class.b2Joint*, %struct.b2JointEdge*, %struct.b2JointEdge* }
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
%class.b2Contact = type opaque
%class.b2ContactFilter = type { i32 (...)** }
%class.b2ContactListener = type { i32 (...)** }
%class.b2DestructionListener = type { i32 (...)** }
%class.b2Draw = type opaque
%struct.b2Profile = type { float, float, float, float, float, float, float, float }
%class.b2Fixture = type opaque
%struct.b2ContactEdge = type opaque
%struct.b2JointDef = type { i32, i8*, %class.b2Body*, %class.b2Body*, i8 }
%class.b2DistanceJoint = type { %class.b2Joint, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%struct.b2DistanceJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2MouseJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, float, %struct.b2Vec2, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Mat22, %struct.b2Vec2 }
%struct.b2Mat22 = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2MouseJointDef = type { %struct.b2JointDef, %struct.b2Vec2, float, float, float }
%class.b2PrismaticJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, %struct.b2Vec3, float, float, float, float, float, i8, i8, i32, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float }
%struct.b2Vec3 = type { float, float, float }
%struct.b2Mat33 = type { %struct.b2Vec3, %struct.b2Vec3, %struct.b2Vec3 }
%struct.b2PrismaticJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i8, float, float, i8, float, float }
%class.b2RevoluteJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec3, float, i8, float, float, i8, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33, float, i32 }
%struct.b2RevoluteJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, i8, float, float, i8, float, float }
%class.b2PulleyJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%struct.b2PulleyJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2GearJoint = type { %class.b2Joint, %class.b2Joint*, %class.b2Joint*, i32, i32, %class.b2Body*, %class.b2Body*, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i32, i32, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float }
%struct.b2GearJointDef = type { %struct.b2JointDef, %class.b2Joint*, %class.b2Joint*, float }
%class.b2WheelJoint = type { %class.b2Joint, float, float, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i8, i32, i32, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, float, float, float, float }
%struct.b2WheelJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, i8, float, float, float, float }
%class.b2WeldJoint = type { %class.b2Joint, float, float, float, %struct.b2Vec2, %struct.b2Vec2, float, float, %struct.b2Vec3, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat33 }
%struct.b2WeldJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%class.b2FrictionJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, %struct.b2Mat22, float }
%struct.b2FrictionJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float, float }
%class.b2RopeJoint = type { %class.b2Joint, %struct.b2Vec2, %struct.b2Vec2, float, float, float, i32, i32, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, i32 }
%struct.b2RopeJointDef = type { %struct.b2JointDef, %struct.b2Vec2, %struct.b2Vec2, float }

@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Dynamics/Joints/b2Joint.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator = private unnamed_addr constant [72 x i8] c"static b2Joint *b2Joint::Create(const b2JointDef *, b2BlockAllocator *)\00", align 1
@__PRETTY_FUNCTION__._ZN7b2Joint7DestroyEPS_P16b2BlockAllocator = private unnamed_addr constant [60 x i8] c"static void b2Joint::Destroy(b2Joint *, b2BlockAllocator *)\00", align 1
@_ZTV7b2Joint = linkonce_odr unnamed_addr constant [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7b2Joint to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%class.b2Joint*)* @_ZN7b2Joint4DumpEv to i8*), i8* bitcast (void (%class.b2Joint*)* @_ZN7b2JointD1Ev to i8*), i8* bitcast (void (%class.b2Joint*)* @_ZN7b2JointD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]
@.str2 = private unnamed_addr constant [25 x i8] c"def->bodyA != def->bodyB\00", align 1
@__PRETTY_FUNCTION__._ZN7b2JointC2EPK10b2JointDef = private unnamed_addr constant [37 x i8] c"b2Joint::b2Joint(const b2JointDef *)\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7b2Joint = linkonce_odr constant [9 x i8] c"7b2Joint\00"
@_ZTI7b2Joint = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7b2Joint, i32 0, i32 0) }
@.str3 = private unnamed_addr constant [47 x i8] c"// Dump is not supported for this joint type.\0A\00", align 1

define %class.b2Joint* @_ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator(%struct.b2JointDef* %def, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %struct.b2JointDef*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  %joint = alloca %class.b2Joint*, align 4
  %mem = alloca i8*, align 4
  %mem1 = alloca i8*, align 4
  %mem2 = alloca i8*, align 4
  %mem3 = alloca i8*, align 4
  %mem4 = alloca i8*, align 4
  %mem5 = alloca i8*, align 4
  %mem6 = alloca i8*, align 4
  %mem7 = alloca i8*, align 4
  %mem8 = alloca i8*, align 4
  %mem9 = alloca i8*, align 4
  store %struct.b2JointDef* %def, %struct.b2JointDef** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  store %class.b2Joint* null, %class.b2Joint** %joint, align 4
  %3 = load %struct.b2JointDef** %1, align 4
  %4 = getelementptr inbounds %struct.b2JointDef* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  switch i32 %5, label %126 [
    i32 3, label %6
    i32 5, label %18
    i32 2, label %30
    i32 1, label %42
    i32 4, label %54
    i32 6, label %66
    i32 7, label %78
    i32 8, label %90
    i32 9, label %102
    i32 10, label %114
  ]

; <label>:6                                       ; preds = %0
  %7 = load %class.b2BlockAllocator** %2, align 4
  %8 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %7, i32 176)
  store i8* %8, i8** %mem, align 4
  %9 = load i8** %mem, align 4
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %6
  %12 = bitcast i8* %9 to %class.b2DistanceJoint*
  %13 = load %struct.b2JointDef** %1, align 4
  %14 = bitcast %struct.b2JointDef* %13 to %struct.b2DistanceJointDef*
  call void @_ZN15b2DistanceJointC1EPK18b2DistanceJointDef(%class.b2DistanceJoint* %12, %struct.b2DistanceJointDef* %14)
  br label %15

; <label>:15                                      ; preds = %11, %6
  %16 = phi %class.b2DistanceJoint* [ %12, %11 ], [ null, %6 ]
  %17 = bitcast %class.b2DistanceJoint* %16 to %class.b2Joint*
  store %class.b2Joint* %17, %class.b2Joint** %joint, align 4
  br label %127

; <label>:18                                      ; preds = %0
  %19 = load %class.b2BlockAllocator** %2, align 4
  %20 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %19, i32 168)
  store i8* %20, i8** %mem1, align 4
  %21 = load i8** %mem1, align 4
  %22 = icmp eq i8* %21, null
  br i1 %22, label %27, label %23

; <label>:23                                      ; preds = %18
  %24 = bitcast i8* %21 to %class.b2MouseJoint*
  %25 = load %struct.b2JointDef** %1, align 4
  %26 = bitcast %struct.b2JointDef* %25 to %struct.b2MouseJointDef*
  call void @_ZN12b2MouseJointC1EPK15b2MouseJointDef(%class.b2MouseJoint* %24, %struct.b2MouseJointDef* %26)
  br label %27

; <label>:27                                      ; preds = %23, %18
  %28 = phi %class.b2MouseJoint* [ %24, %23 ], [ null, %18 ]
  %29 = bitcast %class.b2MouseJoint* %28 to %class.b2Joint*
  store %class.b2Joint* %29, %class.b2Joint** %joint, align 4
  br label %127

; <label>:30                                      ; preds = %0
  %31 = load %class.b2BlockAllocator** %2, align 4
  %32 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %31, i32 256)
  store i8* %32, i8** %mem2, align 4
  %33 = load i8** %mem2, align 4
  %34 = icmp eq i8* %33, null
  br i1 %34, label %39, label %35

; <label>:35                                      ; preds = %30
  %36 = bitcast i8* %33 to %class.b2PrismaticJoint*
  %37 = load %struct.b2JointDef** %1, align 4
  %38 = bitcast %struct.b2JointDef* %37 to %struct.b2PrismaticJointDef*
  call void @_ZN16b2PrismaticJointC1EPK19b2PrismaticJointDef(%class.b2PrismaticJoint* %36, %struct.b2PrismaticJointDef* %38)
  br label %39

; <label>:39                                      ; preds = %35, %30
  %40 = phi %class.b2PrismaticJoint* [ %36, %35 ], [ null, %30 ]
  %41 = bitcast %class.b2PrismaticJoint* %40 to %class.b2Joint*
  store %class.b2Joint* %41, %class.b2Joint** %joint, align 4
  br label %127

; <label>:42                                      ; preds = %0
  %43 = load %class.b2BlockAllocator** %2, align 4
  %44 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %43, i32 228)
  store i8* %44, i8** %mem3, align 4
  %45 = load i8** %mem3, align 4
  %46 = icmp eq i8* %45, null
  br i1 %46, label %51, label %47

; <label>:47                                      ; preds = %42
  %48 = bitcast i8* %45 to %class.b2RevoluteJoint*
  %49 = load %struct.b2JointDef** %1, align 4
  %50 = bitcast %struct.b2JointDef* %49 to %struct.b2RevoluteJointDef*
  call void @_ZN15b2RevoluteJointC1EPK18b2RevoluteJointDef(%class.b2RevoluteJoint* %48, %struct.b2RevoluteJointDef* %50)
  br label %51

; <label>:51                                      ; preds = %47, %42
  %52 = phi %class.b2RevoluteJoint* [ %48, %47 ], [ null, %42 ]
  %53 = bitcast %class.b2RevoluteJoint* %52 to %class.b2Joint*
  store %class.b2Joint* %53, %class.b2Joint** %joint, align 4
  br label %127

; <label>:54                                      ; preds = %0
  %55 = load %class.b2BlockAllocator** %2, align 4
  %56 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %55, i32 196)
  store i8* %56, i8** %mem4, align 4
  %57 = load i8** %mem4, align 4
  %58 = icmp eq i8* %57, null
  br i1 %58, label %63, label %59

; <label>:59                                      ; preds = %54
  %60 = bitcast i8* %57 to %class.b2PulleyJoint*
  %61 = load %struct.b2JointDef** %1, align 4
  %62 = bitcast %struct.b2JointDef* %61 to %struct.b2PulleyJointDef*
  call void @_ZN13b2PulleyJointC1EPK16b2PulleyJointDef(%class.b2PulleyJoint* %60, %struct.b2PulleyJointDef* %62)
  br label %63

; <label>:63                                      ; preds = %59, %54
  %64 = phi %class.b2PulleyJoint* [ %60, %59 ], [ null, %54 ]
  %65 = bitcast %class.b2PulleyJoint* %64 to %class.b2Joint*
  store %class.b2Joint* %65, %class.b2Joint** %joint, align 4
  br label %127

; <label>:66                                      ; preds = %0
  %67 = load %class.b2BlockAllocator** %2, align 4
  %68 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %67, i32 276)
  store i8* %68, i8** %mem5, align 4
  %69 = load i8** %mem5, align 4
  %70 = icmp eq i8* %69, null
  br i1 %70, label %75, label %71

; <label>:71                                      ; preds = %66
  %72 = bitcast i8* %69 to %class.b2GearJoint*
  %73 = load %struct.b2JointDef** %1, align 4
  %74 = bitcast %struct.b2JointDef* %73 to %struct.b2GearJointDef*
  call void @_ZN11b2GearJointC1EPK14b2GearJointDef(%class.b2GearJoint* %72, %struct.b2GearJointDef* %74)
  br label %75

; <label>:75                                      ; preds = %71, %66
  %76 = phi %class.b2GearJoint* [ %72, %71 ], [ null, %66 ]
  %77 = bitcast %class.b2GearJoint* %76 to %class.b2Joint*
  store %class.b2Joint* %77, %class.b2Joint** %joint, align 4
  br label %127

; <label>:78                                      ; preds = %0
  %79 = load %class.b2BlockAllocator** %2, align 4
  %80 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %79, i32 224)
  store i8* %80, i8** %mem6, align 4
  %81 = load i8** %mem6, align 4
  %82 = icmp eq i8* %81, null
  br i1 %82, label %87, label %83

; <label>:83                                      ; preds = %78
  %84 = bitcast i8* %81 to %class.b2WheelJoint*
  %85 = load %struct.b2JointDef** %1, align 4
  %86 = bitcast %struct.b2JointDef* %85 to %struct.b2WheelJointDef*
  call void @_ZN12b2WheelJointC1EPK15b2WheelJointDef(%class.b2WheelJoint* %84, %struct.b2WheelJointDef* %86)
  br label %87

; <label>:87                                      ; preds = %83, %78
  %88 = phi %class.b2WheelJoint* [ %84, %83 ], [ null, %78 ]
  %89 = bitcast %class.b2WheelJoint* %88 to %class.b2Joint*
  store %class.b2Joint* %89, %class.b2Joint** %joint, align 4
  br label %127

; <label>:90                                      ; preds = %0
  %91 = load %class.b2BlockAllocator** %2, align 4
  %92 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %91, i32 208)
  store i8* %92, i8** %mem7, align 4
  %93 = load i8** %mem7, align 4
  %94 = icmp eq i8* %93, null
  br i1 %94, label %99, label %95

; <label>:95                                      ; preds = %90
  %96 = bitcast i8* %93 to %class.b2WeldJoint*
  %97 = load %struct.b2JointDef** %1, align 4
  %98 = bitcast %struct.b2JointDef* %97 to %struct.b2WeldJointDef*
  call void @_ZN11b2WeldJointC1EPK14b2WeldJointDef(%class.b2WeldJoint* %96, %struct.b2WeldJointDef* %98)
  br label %99

; <label>:99                                      ; preds = %95, %90
  %100 = phi %class.b2WeldJoint* [ %96, %95 ], [ null, %90 ]
  %101 = bitcast %class.b2WeldJoint* %100 to %class.b2Joint*
  store %class.b2Joint* %101, %class.b2Joint** %joint, align 4
  br label %127

; <label>:102                                     ; preds = %0
  %103 = load %class.b2BlockAllocator** %2, align 4
  %104 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %103, i32 180)
  store i8* %104, i8** %mem8, align 4
  %105 = load i8** %mem8, align 4
  %106 = icmp eq i8* %105, null
  br i1 %106, label %111, label %107

; <label>:107                                     ; preds = %102
  %108 = bitcast i8* %105 to %class.b2FrictionJoint*
  %109 = load %struct.b2JointDef** %1, align 4
  %110 = bitcast %struct.b2JointDef* %109 to %struct.b2FrictionJointDef*
  call void @_ZN15b2FrictionJointC1EPK18b2FrictionJointDef(%class.b2FrictionJoint* %108, %struct.b2FrictionJointDef* %110)
  br label %111

; <label>:111                                     ; preds = %107, %102
  %112 = phi %class.b2FrictionJoint* [ %108, %107 ], [ null, %102 ]
  %113 = bitcast %class.b2FrictionJoint* %112 to %class.b2Joint*
  store %class.b2Joint* %113, %class.b2Joint** %joint, align 4
  br label %127

; <label>:114                                     ; preds = %0
  %115 = load %class.b2BlockAllocator** %2, align 4
  %116 = call i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator* %115, i32 168)
  store i8* %116, i8** %mem9, align 4
  %117 = load i8** %mem9, align 4
  %118 = icmp eq i8* %117, null
  br i1 %118, label %123, label %119

; <label>:119                                     ; preds = %114
  %120 = bitcast i8* %117 to %class.b2RopeJoint*
  %121 = load %struct.b2JointDef** %1, align 4
  %122 = bitcast %struct.b2JointDef* %121 to %struct.b2RopeJointDef*
  call void @_ZN11b2RopeJointC1EPK14b2RopeJointDef(%class.b2RopeJoint* %120, %struct.b2RopeJointDef* %122)
  br label %123

; <label>:123                                     ; preds = %119, %114
  %124 = phi %class.b2RopeJoint* [ %120, %119 ], [ null, %114 ]
  %125 = bitcast %class.b2RopeJoint* %124 to %class.b2Joint*
  store %class.b2Joint* %125, %class.b2Joint** %joint, align 4
  br label %127

; <label>:126                                     ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([72 x i8]* @__PRETTY_FUNCTION__._ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:127                                     ; preds = %123, %111, %99, %87, %75, %63, %51, %39, %27, %15
  %128 = load %class.b2Joint** %joint, align 4
  ret %class.b2Joint* %128
}

declare i8* @_ZN16b2BlockAllocator8AllocateEi(%class.b2BlockAllocator*, i32)

declare void @_ZN15b2DistanceJointC1EPK18b2DistanceJointDef(%class.b2DistanceJoint*, %struct.b2DistanceJointDef*)

declare void @_ZN12b2MouseJointC1EPK15b2MouseJointDef(%class.b2MouseJoint*, %struct.b2MouseJointDef*)

declare void @_ZN16b2PrismaticJointC1EPK19b2PrismaticJointDef(%class.b2PrismaticJoint*, %struct.b2PrismaticJointDef*)

declare void @_ZN15b2RevoluteJointC1EPK18b2RevoluteJointDef(%class.b2RevoluteJoint*, %struct.b2RevoluteJointDef*)

declare void @_ZN13b2PulleyJointC1EPK16b2PulleyJointDef(%class.b2PulleyJoint*, %struct.b2PulleyJointDef*)

declare void @_ZN11b2GearJointC1EPK14b2GearJointDef(%class.b2GearJoint*, %struct.b2GearJointDef*)

declare void @_ZN12b2WheelJointC1EPK15b2WheelJointDef(%class.b2WheelJoint*, %struct.b2WheelJointDef*)

declare void @_ZN11b2WeldJointC1EPK14b2WeldJointDef(%class.b2WeldJoint*, %struct.b2WeldJointDef*)

declare void @_ZN15b2FrictionJointC1EPK18b2FrictionJointDef(%class.b2FrictionJoint*, %struct.b2FrictionJointDef*)

declare void @_ZN11b2RopeJointC1EPK14b2RopeJointDef(%class.b2RopeJoint*, %struct.b2RopeJointDef*)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define void @_ZN7b2Joint7DestroyEPS_P16b2BlockAllocator(%class.b2Joint* %joint, %class.b2BlockAllocator* %allocator) align 2 {
  %1 = alloca %class.b2Joint*, align 4
  %2 = alloca %class.b2BlockAllocator*, align 4
  store %class.b2Joint* %joint, %class.b2Joint** %1, align 4
  store %class.b2BlockAllocator* %allocator, %class.b2BlockAllocator** %2, align 4
  %3 = load %class.b2Joint** %1, align 4
  %4 = bitcast %class.b2Joint* %3 to void (%class.b2Joint*)***
  %5 = load void (%class.b2Joint*)*** %4
  %6 = getelementptr inbounds void (%class.b2Joint*)** %5, i64 5
  %7 = load void (%class.b2Joint*)** %6
  call void %7(%class.b2Joint* %3)
  %8 = load %class.b2Joint** %1, align 4
  %9 = getelementptr inbounds %class.b2Joint* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  switch i32 %10, label %51 [
    i32 3, label %11
    i32 5, label %15
    i32 2, label %19
    i32 1, label %23
    i32 4, label %27
    i32 6, label %31
    i32 7, label %35
    i32 8, label %39
    i32 9, label %43
    i32 10, label %47
  ]

; <label>:11                                      ; preds = %0
  %12 = load %class.b2BlockAllocator** %2, align 4
  %13 = load %class.b2Joint** %1, align 4
  %14 = bitcast %class.b2Joint* %13 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %12, i8* %14, i32 176)
  br label %52

; <label>:15                                      ; preds = %0
  %16 = load %class.b2BlockAllocator** %2, align 4
  %17 = load %class.b2Joint** %1, align 4
  %18 = bitcast %class.b2Joint* %17 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %16, i8* %18, i32 168)
  br label %52

; <label>:19                                      ; preds = %0
  %20 = load %class.b2BlockAllocator** %2, align 4
  %21 = load %class.b2Joint** %1, align 4
  %22 = bitcast %class.b2Joint* %21 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %20, i8* %22, i32 256)
  br label %52

; <label>:23                                      ; preds = %0
  %24 = load %class.b2BlockAllocator** %2, align 4
  %25 = load %class.b2Joint** %1, align 4
  %26 = bitcast %class.b2Joint* %25 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %24, i8* %26, i32 228)
  br label %52

; <label>:27                                      ; preds = %0
  %28 = load %class.b2BlockAllocator** %2, align 4
  %29 = load %class.b2Joint** %1, align 4
  %30 = bitcast %class.b2Joint* %29 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %28, i8* %30, i32 196)
  br label %52

; <label>:31                                      ; preds = %0
  %32 = load %class.b2BlockAllocator** %2, align 4
  %33 = load %class.b2Joint** %1, align 4
  %34 = bitcast %class.b2Joint* %33 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %32, i8* %34, i32 276)
  br label %52

; <label>:35                                      ; preds = %0
  %36 = load %class.b2BlockAllocator** %2, align 4
  %37 = load %class.b2Joint** %1, align 4
  %38 = bitcast %class.b2Joint* %37 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %36, i8* %38, i32 224)
  br label %52

; <label>:39                                      ; preds = %0
  %40 = load %class.b2BlockAllocator** %2, align 4
  %41 = load %class.b2Joint** %1, align 4
  %42 = bitcast %class.b2Joint* %41 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %40, i8* %42, i32 208)
  br label %52

; <label>:43                                      ; preds = %0
  %44 = load %class.b2BlockAllocator** %2, align 4
  %45 = load %class.b2Joint** %1, align 4
  %46 = bitcast %class.b2Joint* %45 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %44, i8* %46, i32 180)
  br label %52

; <label>:47                                      ; preds = %0
  %48 = load %class.b2BlockAllocator** %2, align 4
  %49 = load %class.b2Joint** %1, align 4
  %50 = bitcast %class.b2Joint* %49 to i8*
  call void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator* %48, i8* %50, i32 168)
  br label %52

; <label>:51                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([60 x i8]* @__PRETTY_FUNCTION__._ZN7b2Joint7DestroyEPS_P16b2BlockAllocator, i32 0, i32 0)) noreturn nounwind
  unreachable

; <label>:52                                      ; preds = %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  ret void
}

declare void @_ZN16b2BlockAllocator4FreeEPvi(%class.b2BlockAllocator*, i8*, i32)

define void @_ZN7b2JointC2EPK10b2JointDef(%class.b2Joint* %this, %struct.b2JointDef* %def) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  %2 = alloca %struct.b2JointDef*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  store %struct.b2JointDef* %def, %struct.b2JointDef** %2, align 4
  %3 = load %class.b2Joint** %1
  %4 = bitcast %class.b2Joint* %3 to i8***
  store i8** getelementptr inbounds ([12 x i8*]* @_ZTV7b2Joint, i64 0, i64 2), i8*** %4
  %5 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 4
  %6 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 5
  %7 = load %struct.b2JointDef** %2, align 4
  %8 = getelementptr inbounds %struct.b2JointDef* %7, i32 0, i32 2
  %9 = load %class.b2Body** %8, align 4
  %10 = load %struct.b2JointDef** %2, align 4
  %11 = getelementptr inbounds %struct.b2JointDef* %10, i32 0, i32 3
  %12 = load %class.b2Body** %11, align 4
  %13 = icmp ne %class.b2Body* %9, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  br label %17

; <label>:15                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZN7b2JointC2EPK10b2JointDef, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load %struct.b2JointDef** %2, align 4
  %19 = getelementptr inbounds %struct.b2JointDef* %18, i32 0, i32 0
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 2
  store %class.b2Joint* null, %class.b2Joint** %22, align 4
  %23 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 3
  store %class.b2Joint* null, %class.b2Joint** %23, align 4
  %24 = load %struct.b2JointDef** %2, align 4
  %25 = getelementptr inbounds %struct.b2JointDef* %24, i32 0, i32 2
  %26 = load %class.b2Body** %25, align 4
  %27 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 6
  store %class.b2Body* %26, %class.b2Body** %27, align 4
  %28 = load %struct.b2JointDef** %2, align 4
  %29 = getelementptr inbounds %struct.b2JointDef* %28, i32 0, i32 3
  %30 = load %class.b2Body** %29, align 4
  %31 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 7
  store %class.b2Body* %30, %class.b2Body** %31, align 4
  %32 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.b2JointDef** %2, align 4
  %34 = getelementptr inbounds %struct.b2JointDef* %33, i32 0, i32 4
  %35 = load i8* %34, align 1
  %36 = trunc i8 %35 to i1
  %37 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 10
  %38 = zext i1 %36 to i8
  store i8 %38, i8* %37, align 1
  %39 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 9
  store i8 0, i8* %39, align 1
  %40 = load %struct.b2JointDef** %2, align 4
  %41 = getelementptr inbounds %struct.b2JointDef* %40, i32 0, i32 1
  %42 = load i8** %41, align 4
  %43 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 11
  store i8* %42, i8** %43, align 4
  %44 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 4
  %45 = getelementptr inbounds %struct.b2JointEdge* %44, i32 0, i32 1
  store %class.b2Joint* null, %class.b2Joint** %45, align 4
  %46 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 4
  %47 = getelementptr inbounds %struct.b2JointEdge* %46, i32 0, i32 0
  store %class.b2Body* null, %class.b2Body** %47, align 4
  %48 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 4
  %49 = getelementptr inbounds %struct.b2JointEdge* %48, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %49, align 4
  %50 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 4
  %51 = getelementptr inbounds %struct.b2JointEdge* %50, i32 0, i32 3
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %51, align 4
  %52 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 5
  %53 = getelementptr inbounds %struct.b2JointEdge* %52, i32 0, i32 1
  store %class.b2Joint* null, %class.b2Joint** %53, align 4
  %54 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 5
  %55 = getelementptr inbounds %struct.b2JointEdge* %54, i32 0, i32 0
  store %class.b2Body* null, %class.b2Body** %55, align 4
  %56 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 5
  %57 = getelementptr inbounds %struct.b2JointEdge* %56, i32 0, i32 2
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %57, align 4
  %58 = getelementptr inbounds %class.b2Joint* %3, i32 0, i32 5
  %59 = getelementptr inbounds %struct.b2JointEdge* %58, i32 0, i32 3
  store %struct.b2JointEdge* null, %struct.b2JointEdge** %59, align 4
  ret void
}

define zeroext i1 @_ZNK7b2Joint8IsActiveEv(%class.b2Joint* %this) align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  %3 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 6
  %4 = load %class.b2Body** %3, align 4
  %5 = call zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %4)
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.b2Joint* %2, i32 0, i32 7
  %8 = load %class.b2Body** %7, align 4
  %9 = call zeroext i1 @_ZNK6b2Body8IsActiveEv(%class.b2Body* %8)
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  ret i1 %11
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

declare void @__cxa_pure_virtual()

define linkonce_odr void @_ZN7b2Joint4DumpEv(%class.b2Joint* %this) align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  call void (i8*, ...)* @_Z5b2LogPKcz(i8* getelementptr inbounds ([47 x i8]* @.str3, i32 0, i32 0))
  ret void
}

define linkonce_odr void @_ZN7b2JointD1Ev(%class.b2Joint* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  call void @_ZN7b2JointD2Ev(%class.b2Joint* %2)
  ret void
}

define linkonce_odr void @_ZN7b2JointD0Ev(%class.b2Joint* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2Joint*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %4 = load %class.b2Joint** %1
  invoke void @_ZN7b2JointD1Ev(%class.b2Joint* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.b2Joint* %4 to i8*
  call void @_ZdlPv(i8* %6) nounwind
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.b2Joint* %4 to i8*
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

define linkonce_odr void @_ZN7b2JointD2Ev(%class.b2Joint* %this) unnamed_addr nounwind align 2 {
  %1 = alloca %class.b2Joint*, align 4
  store %class.b2Joint* %this, %class.b2Joint** %1, align 4
  %2 = load %class.b2Joint** %1
  ret void
}

declare void @_Z5b2LogPKcz(i8*, ...)
