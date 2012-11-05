; ModuleID = 'Collision/b2DynamicTree.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.b2DynamicTree = type { i32, %struct.b2TreeNode*, i32, i32, i32, i32, i32 }
%struct.b2TreeNode = type { %struct.b2AABB, i8*, %union.anon, i32, i32, i32 }
%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2Vec2 = type { float, float }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"m_nodeCount == m_nodeCapacity\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Collision/b2DynamicTree.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree12AllocateNodeEv = private unnamed_addr constant [36 x i8] c"int32 b2DynamicTree::AllocateNode()\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"0 <= nodeId && nodeId < m_nodeCapacity\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree8FreeNodeEi = private unnamed_addr constant [36 x i8] c"void b2DynamicTree::FreeNode(int32)\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"0 < m_nodeCount\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"0 <= proxyId && proxyId < m_nodeCapacity\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree12DestroyProxyEi = private unnamed_addr constant [40 x i8] c"void b2DynamicTree::DestroyProxy(int32)\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"m_nodes[proxyId].IsLeaf()\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2 = private unnamed_addr constant [69 x i8] c"bool b2DynamicTree::MoveProxy(int32, const b2AABB &, const b2Vec2 &)\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"child1 != (-1)\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree10InsertLeafEi = private unnamed_addr constant [38 x i8] c"void b2DynamicTree::InsertLeaf(int32)\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"child2 != (-1)\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"iA != (-1)\00", align 1
@__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi = private unnamed_addr constant [36 x i8] c"int32 b2DynamicTree::Balance(int32)\00", align 1
@.str9 = private unnamed_addr constant [31 x i8] c"0 <= iB && iB < m_nodeCapacity\00", align 1
@.str10 = private unnamed_addr constant [31 x i8] c"0 <= iC && iC < m_nodeCapacity\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"0 <= iF && iF < m_nodeCapacity\00", align 1
@.str12 = private unnamed_addr constant [31 x i8] c"0 <= iG && iG < m_nodeCapacity\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"m_nodes[C->parent].child2 == iA\00", align 1
@.str14 = private unnamed_addr constant [31 x i8] c"0 <= iD && iD < m_nodeCapacity\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"0 <= iE && iE < m_nodeCapacity\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c"m_nodes[B->parent].child2 == iA\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree13ComputeHeightEi = private unnamed_addr constant [48 x i8] c"int32 b2DynamicTree::ComputeHeight(int32) const\00", align 1
@.str17 = private unnamed_addr constant [30 x i8] c"m_nodes[index].parent == (-1)\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi = private unnamed_addr constant [51 x i8] c"void b2DynamicTree::ValidateStructure(int32) const\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"child1 == (-1)\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"child2 == (-1)\00", align 1
@.str20 = private unnamed_addr constant [18 x i8] c"node->height == 0\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"0 <= child1 && child1 < m_nodeCapacity\00", align 1
@.str22 = private unnamed_addr constant [39 x i8] c"0 <= child2 && child2 < m_nodeCapacity\00", align 1
@.str23 = private unnamed_addr constant [32 x i8] c"m_nodes[child1].parent == index\00", align 1
@.str24 = private unnamed_addr constant [32 x i8] c"m_nodes[child2].parent == index\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi = private unnamed_addr constant [49 x i8] c"void b2DynamicTree::ValidateMetrics(int32) const\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"node->height == height\00", align 1
@.str26 = private unnamed_addr constant [41 x i8] c"aabb.lowerBound == node->aabb.lowerBound\00", align 1
@.str27 = private unnamed_addr constant [41 x i8] c"aabb.upperBound == node->aabb.upperBound\00", align 1
@.str28 = private unnamed_addr constant [45 x i8] c"0 <= freeIndex && freeIndex < m_nodeCapacity\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree8ValidateEv = private unnamed_addr constant [37 x i8] c"void b2DynamicTree::Validate() const\00", align 1
@.str29 = private unnamed_addr constant [31 x i8] c"GetHeight() == ComputeHeight()\00", align 1
@.str30 = private unnamed_addr constant [42 x i8] c"m_nodeCount + freeCount == m_nodeCapacity\00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"node->IsLeaf() == false\00", align 1
@__PRETTY_FUNCTION__._ZNK13b2DynamicTree13GetMaxBalanceEv = private unnamed_addr constant [43 x i8] c"int32 b2DynamicTree::GetMaxBalance() const\00", align 1

@_ZN13b2DynamicTreeC1Ev = alias void (%class.b2DynamicTree*)* @_ZN13b2DynamicTreeC2Ev
@_ZN13b2DynamicTreeD1Ev = alias void (%class.b2DynamicTree*)* @_ZN13b2DynamicTreeD2Ev

define void @_ZN13b2DynamicTreeC2Ev(%class.b2DynamicTree* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %i = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 0
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  store i32 16, i32* %4, align 4
  %5 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %7 = load i32* %6, align 4
  %8 = mul i32 %7, 36
  %9 = call i8* @_Z7b2Alloci(i32 %8)
  %10 = bitcast i8* %9 to %struct.b2TreeNode*
  %11 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  store %struct.b2TreeNode* %10, %struct.b2TreeNode** %11, align 4
  %12 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %13 = load %struct.b2TreeNode** %12, align 4
  %14 = bitcast %struct.b2TreeNode* %13 to i8*
  %15 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = mul i32 %16, 36
  call void @llvm.memset.p0i8.i32(i8* %14, i8 0, i32 %17, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %38, %0
  %19 = load i32* %i, align 4
  %20 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %21 = load i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32* %i, align 4
  %28 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %29 = load %struct.b2TreeNode** %28, align 4
  %30 = getelementptr inbounds %struct.b2TreeNode* %29, i32 %27
  %31 = getelementptr inbounds %struct.b2TreeNode* %30, i32 0, i32 2
  %32 = bitcast %union.anon* %31 to i32*
  store i32 %26, i32* %32, align 4
  %33 = load i32* %i, align 4
  %34 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %35 = load %struct.b2TreeNode** %34, align 4
  %36 = getelementptr inbounds %struct.b2TreeNode* %35, i32 %33
  %37 = getelementptr inbounds %struct.b2TreeNode* %36, i32 0, i32 5
  store i32 -1, i32* %37, align 4
  br label %38

; <label>:38                                      ; preds = %24
  %39 = load i32* %i, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i, align 4
  br label %18

; <label>:41                                      ; preds = %18
  %42 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %43 = load i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %46 = load %struct.b2TreeNode** %45, align 4
  %47 = getelementptr inbounds %struct.b2TreeNode* %46, i32 %44
  %48 = getelementptr inbounds %struct.b2TreeNode* %47, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to i32*
  store i32 -1, i32* %49, align 4
  %50 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %51 = load i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %54 = load %struct.b2TreeNode** %53, align 4
  %55 = getelementptr inbounds %struct.b2TreeNode* %54, i32 %52
  %56 = getelementptr inbounds %struct.b2TreeNode* %55, i32 0, i32 5
  store i32 -1, i32* %56, align 4
  %57 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 5
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 6
  store i32 0, i32* %59, align 4
  ret void
}

declare i8* @_Z7b2Alloci(i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define void @_ZN13b2DynamicTreeD2Ev(%class.b2DynamicTree* %this) unnamed_addr align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %4 = load %struct.b2TreeNode** %3, align 4
  %5 = bitcast %struct.b2TreeNode* %4 to i8*
  call void @_Z6b2FreePv(i8* %5)
  ret void
}

declare void @_Z6b2FreePv(i8*)

define i32 @_ZN13b2DynamicTree12AllocateNodeEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %oldNodes = alloca %struct.b2TreeNode*, align 4
  %i = alloca i32, align 4
  %nodeId = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %81

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %10 = load i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  br label %15

; <label>:13                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 61, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree12AllocateNodeEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %17 = load %struct.b2TreeNode** %16, align 4
  store %struct.b2TreeNode* %17, %struct.b2TreeNode** %oldNodes, align 4
  %18 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %19 = load i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %22 = load i32* %21, align 4
  %23 = mul i32 %22, 36
  %24 = call i8* @_Z7b2Alloci(i32 %23)
  %25 = bitcast i8* %24 to %struct.b2TreeNode*
  %26 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  store %struct.b2TreeNode* %25, %struct.b2TreeNode** %26, align 4
  %27 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %28 = load %struct.b2TreeNode** %27, align 4
  %29 = bitcast %struct.b2TreeNode* %28 to i8*
  %30 = load %struct.b2TreeNode** %oldNodes, align 4
  %31 = bitcast %struct.b2TreeNode* %30 to i8*
  %32 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %33 = load i32* %32, align 4
  %34 = mul i32 %33, 36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %31, i32 %34, i32 1, i1 false)
  %35 = load %struct.b2TreeNode** %oldNodes, align 4
  %36 = bitcast %struct.b2TreeNode* %35 to i8*
  call void @_Z6b2FreePv(i8* %36)
  %37 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %38 = load i32* %37, align 4
  store i32 %38, i32* %i, align 4
  br label %39

; <label>:39                                      ; preds = %59, %15
  %40 = load i32* %i, align 4
  %41 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %42 = load i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %62

; <label>:45                                      ; preds = %39
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32* %i, align 4
  %49 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %50 = load %struct.b2TreeNode** %49, align 4
  %51 = getelementptr inbounds %struct.b2TreeNode* %50, i32 %48
  %52 = getelementptr inbounds %struct.b2TreeNode* %51, i32 0, i32 2
  %53 = bitcast %union.anon* %52 to i32*
  store i32 %47, i32* %53, align 4
  %54 = load i32* %i, align 4
  %55 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %56 = load %struct.b2TreeNode** %55, align 4
  %57 = getelementptr inbounds %struct.b2TreeNode* %56, i32 %54
  %58 = getelementptr inbounds %struct.b2TreeNode* %57, i32 0, i32 5
  store i32 -1, i32* %58, align 4
  br label %59

; <label>:59                                      ; preds = %45
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %39

; <label>:62                                      ; preds = %39
  %63 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %64 = load i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %67 = load %struct.b2TreeNode** %66, align 4
  %68 = getelementptr inbounds %struct.b2TreeNode* %67, i32 %65
  %69 = getelementptr inbounds %struct.b2TreeNode* %68, i32 0, i32 2
  %70 = bitcast %union.anon* %69 to i32*
  store i32 -1, i32* %70, align 4
  %71 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %72 = load i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %75 = load %struct.b2TreeNode** %74, align 4
  %76 = getelementptr inbounds %struct.b2TreeNode* %75, i32 %73
  %77 = getelementptr inbounds %struct.b2TreeNode* %76, i32 0, i32 5
  store i32 -1, i32* %77, align 4
  %78 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %79 = load i32* %78, align 4
  %80 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  br label %81

; <label>:81                                      ; preds = %62, %0
  %82 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  %83 = load i32* %82, align 4
  store i32 %83, i32* %nodeId, align 4
  %84 = load i32* %nodeId, align 4
  %85 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %86 = load %struct.b2TreeNode** %85, align 4
  %87 = getelementptr inbounds %struct.b2TreeNode* %86, i32 %84
  %88 = getelementptr inbounds %struct.b2TreeNode* %87, i32 0, i32 2
  %89 = bitcast %union.anon* %88 to i32*
  %90 = load i32* %89, align 4
  %91 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load i32* %nodeId, align 4
  %93 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %94 = load %struct.b2TreeNode** %93, align 4
  %95 = getelementptr inbounds %struct.b2TreeNode* %94, i32 %92
  %96 = getelementptr inbounds %struct.b2TreeNode* %95, i32 0, i32 2
  %97 = bitcast %union.anon* %96 to i32*
  store i32 -1, i32* %97, align 4
  %98 = load i32* %nodeId, align 4
  %99 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %100 = load %struct.b2TreeNode** %99, align 4
  %101 = getelementptr inbounds %struct.b2TreeNode* %100, i32 %98
  %102 = getelementptr inbounds %struct.b2TreeNode* %101, i32 0, i32 3
  store i32 -1, i32* %102, align 4
  %103 = load i32* %nodeId, align 4
  %104 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %105 = load %struct.b2TreeNode** %104, align 4
  %106 = getelementptr inbounds %struct.b2TreeNode* %105, i32 %103
  %107 = getelementptr inbounds %struct.b2TreeNode* %106, i32 0, i32 4
  store i32 -1, i32* %107, align 4
  %108 = load i32* %nodeId, align 4
  %109 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %110 = load %struct.b2TreeNode** %109, align 4
  %111 = getelementptr inbounds %struct.b2TreeNode* %110, i32 %108
  %112 = getelementptr inbounds %struct.b2TreeNode* %111, i32 0, i32 5
  store i32 0, i32* %112, align 4
  %113 = load i32* %nodeId, align 4
  %114 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %115 = load %struct.b2TreeNode** %114, align 4
  %116 = getelementptr inbounds %struct.b2TreeNode* %115, i32 %113
  %117 = getelementptr inbounds %struct.b2TreeNode* %116, i32 0, i32 1
  store i8* null, i8** %117, align 4
  %118 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %119 = load i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load i32* %nodeId, align 4
  ret i32 %121
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @_ZN13b2DynamicTree8FreeNodeEi(%class.b2DynamicTree* %this, i32 %nodeId) nounwind align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %nodeId, i32* %2, align 4
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
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree8FreeNodeEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 2
  %16 = load i32* %15, align 4
  %17 = icmp slt i32 0, %16
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14
  br label %21

; <label>:19                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree8FreeNodeEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 4
  %23 = load i32* %22, align 4
  %24 = load i32* %2, align 4
  %25 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %26 = load %struct.b2TreeNode** %25, align 4
  %27 = getelementptr inbounds %struct.b2TreeNode* %26, i32 %24
  %28 = getelementptr inbounds %struct.b2TreeNode* %27, i32 0, i32 2
  %29 = bitcast %union.anon* %28 to i32*
  store i32 %23, i32* %29, align 4
  %30 = load i32* %2, align 4
  %31 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %32 = load %struct.b2TreeNode** %31, align 4
  %33 = getelementptr inbounds %struct.b2TreeNode* %32, i32 %30
  %34 = getelementptr inbounds %struct.b2TreeNode* %33, i32 0, i32 5
  store i32 -1, i32* %34, align 4
  %35 = load i32* %2, align 4
  %36 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 2
  %38 = load i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  ret void
}

define i32 @_ZN13b2DynamicTree11CreateProxyERK6b2AABBPv(%class.b2DynamicTree* %this, %struct.b2AABB* %aabb, i8* %userData) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %3 = alloca i8*, align 4
  %proxyId = alloca i32, align 4
  %r = alloca %struct.b2Vec2, align 4
  %4 = alloca %struct.b2Vec2, align 4
  %5 = alloca %struct.b2Vec2, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  store i8* %userData, i8** %3, align 4
  %6 = load %class.b2DynamicTree** %1
  %7 = call i32 @_ZN13b2DynamicTree12AllocateNodeEv(%class.b2DynamicTree* %6)
  store i32 %7, i32* %proxyId, align 4
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %r, float 0x3FB99999A0000000, float 0x3FB99999A0000000)
  %8 = load i32* %proxyId, align 4
  %9 = getelementptr inbounds %class.b2DynamicTree* %6, i32 0, i32 1
  %10 = load %struct.b2TreeNode** %9, align 4
  %11 = getelementptr inbounds %struct.b2TreeNode* %10, i32 %8
  %12 = getelementptr inbounds %struct.b2TreeNode* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.b2AABB* %12, i32 0, i32 0
  %14 = load %struct.b2AABB** %2
  %15 = getelementptr inbounds %struct.b2AABB* %14, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %4, %struct.b2Vec2* %15, %struct.b2Vec2* %r)
  %16 = bitcast %struct.b2Vec2* %13 to i8*
  %17 = bitcast %struct.b2Vec2* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %18 = load i32* %proxyId, align 4
  %19 = getelementptr inbounds %class.b2DynamicTree* %6, i32 0, i32 1
  %20 = load %struct.b2TreeNode** %19, align 4
  %21 = getelementptr inbounds %struct.b2TreeNode* %20, i32 %18
  %22 = getelementptr inbounds %struct.b2TreeNode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.b2AABB* %22, i32 0, i32 1
  %24 = load %struct.b2AABB** %2
  %25 = getelementptr inbounds %struct.b2AABB* %24, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %5, %struct.b2Vec2* %25, %struct.b2Vec2* %r)
  %26 = bitcast %struct.b2Vec2* %23 to i8*
  %27 = bitcast %struct.b2Vec2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %28 = load i8** %3, align 4
  %29 = load i32* %proxyId, align 4
  %30 = getelementptr inbounds %class.b2DynamicTree* %6, i32 0, i32 1
  %31 = load %struct.b2TreeNode** %30, align 4
  %32 = getelementptr inbounds %struct.b2TreeNode* %31, i32 %29
  %33 = getelementptr inbounds %struct.b2TreeNode* %32, i32 0, i32 1
  store i8* %28, i8** %33, align 4
  %34 = load i32* %proxyId, align 4
  %35 = getelementptr inbounds %class.b2DynamicTree* %6, i32 0, i32 1
  %36 = load %struct.b2TreeNode** %35, align 4
  %37 = getelementptr inbounds %struct.b2TreeNode* %36, i32 %34
  %38 = getelementptr inbounds %struct.b2TreeNode* %37, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = load i32* %proxyId, align 4
  call void @_ZN13b2DynamicTree10InsertLeafEi(%class.b2DynamicTree* %6, i32 %39)
  %40 = load i32* %proxyId, align 4
  ret i32 %40
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

define void @_ZN13b2DynamicTree10InsertLeafEi(%class.b2DynamicTree* %this, i32 %leaf) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  %leafAABB = alloca %struct.b2AABB, align 4
  %index = alloca i32, align 4
  %child1 = alloca i32, align 4
  %child2 = alloca i32, align 4
  %area = alloca float, align 4
  %combinedAABB = alloca %struct.b2AABB, align 4
  %combinedArea = alloca float, align 4
  %cost = alloca float, align 4
  %inheritanceCost = alloca float, align 4
  %cost1 = alloca float, align 4
  %aabb = alloca %struct.b2AABB, align 4
  %aabb1 = alloca %struct.b2AABB, align 4
  %oldArea = alloca float, align 4
  %newArea = alloca float, align 4
  %cost2 = alloca float, align 4
  %aabb2 = alloca %struct.b2AABB, align 4
  %aabb3 = alloca %struct.b2AABB, align 4
  %oldArea4 = alloca float, align 4
  %newArea5 = alloca float, align 4
  %sibling = alloca i32, align 4
  %oldParent = alloca i32, align 4
  %newParent = alloca i32, align 4
  %child16 = alloca i32, align 4
  %child27 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %leaf, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 6
  %5 = load i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %16 = load %struct.b2TreeNode** %15, align 4
  %17 = getelementptr inbounds %struct.b2TreeNode* %16, i32 %14
  %18 = getelementptr inbounds %struct.b2TreeNode* %17, i32 0, i32 2
  %19 = bitcast %union.anon* %18 to i32*
  store i32 -1, i32* %19, align 4
  br label %356

; <label>:20                                      ; preds = %0
  %21 = load i32* %2, align 4
  %22 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %23 = load %struct.b2TreeNode** %22, align 4
  %24 = getelementptr inbounds %struct.b2TreeNode* %23, i32 %21
  %25 = getelementptr inbounds %struct.b2TreeNode* %24, i32 0, i32 0
  %26 = bitcast %struct.b2AABB* %leafAABB to i8*
  %27 = bitcast %struct.b2AABB* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 16, i32 4, i1 false)
  %28 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %29 = load i32* %28, align 4
  store i32 %29, i32* %index, align 4
  br label %30

; <label>:30                                      ; preds = %151, %20
  %31 = load i32* %index, align 4
  %32 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %33 = load %struct.b2TreeNode** %32, align 4
  %34 = getelementptr inbounds %struct.b2TreeNode* %33, i32 %31
  %35 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %34)
  %36 = zext i1 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %152

; <label>:38                                      ; preds = %30
  %39 = load i32* %index, align 4
  %40 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %41 = load %struct.b2TreeNode** %40, align 4
  %42 = getelementptr inbounds %struct.b2TreeNode* %41, i32 %39
  %43 = getelementptr inbounds %struct.b2TreeNode* %42, i32 0, i32 3
  %44 = load i32* %43, align 4
  store i32 %44, i32* %child1, align 4
  %45 = load i32* %index, align 4
  %46 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %47 = load %struct.b2TreeNode** %46, align 4
  %48 = getelementptr inbounds %struct.b2TreeNode* %47, i32 %45
  %49 = getelementptr inbounds %struct.b2TreeNode* %48, i32 0, i32 4
  %50 = load i32* %49, align 4
  store i32 %50, i32* %child2, align 4
  %51 = load i32* %index, align 4
  %52 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %53 = load %struct.b2TreeNode** %52, align 4
  %54 = getelementptr inbounds %struct.b2TreeNode* %53, i32 %51
  %55 = getelementptr inbounds %struct.b2TreeNode* %54, i32 0, i32 0
  %56 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %55)
  store float %56, float* %area, align 4
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %combinedAABB)
  %57 = load i32* %index, align 4
  %58 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %59 = load %struct.b2TreeNode** %58, align 4
  %60 = getelementptr inbounds %struct.b2TreeNode* %59, i32 %57
  %61 = getelementptr inbounds %struct.b2TreeNode* %60, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %combinedAABB, %struct.b2AABB* %61, %struct.b2AABB* %leafAABB)
  %62 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %combinedAABB)
  store float %62, float* %combinedArea, align 4
  %63 = load float* %combinedArea, align 4
  %64 = fmul float 2.000000e+00, %63
  store float %64, float* %cost, align 4
  %65 = load float* %combinedArea, align 4
  %66 = load float* %area, align 4
  %67 = fsub float %65, %66
  %68 = fmul float 2.000000e+00, %67
  store float %68, float* %inheritanceCost, align 4
  %69 = load i32* %child1, align 4
  %70 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %71 = load %struct.b2TreeNode** %70, align 4
  %72 = getelementptr inbounds %struct.b2TreeNode* %71, i32 %69
  %73 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %72)
  br i1 %73, label %74, label %83

; <label>:74                                      ; preds = %38
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb)
  %75 = load i32* %child1, align 4
  %76 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %77 = load %struct.b2TreeNode** %76, align 4
  %78 = getelementptr inbounds %struct.b2TreeNode* %77, i32 %75
  %79 = getelementptr inbounds %struct.b2TreeNode* %78, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %aabb, %struct.b2AABB* %leafAABB, %struct.b2AABB* %79)
  %80 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %aabb)
  %81 = load float* %inheritanceCost, align 4
  %82 = fadd float %80, %81
  store float %82, float* %cost1, align 4
  br label %101

; <label>:83                                      ; preds = %38
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb1)
  %84 = load i32* %child1, align 4
  %85 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %86 = load %struct.b2TreeNode** %85, align 4
  %87 = getelementptr inbounds %struct.b2TreeNode* %86, i32 %84
  %88 = getelementptr inbounds %struct.b2TreeNode* %87, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %aabb1, %struct.b2AABB* %leafAABB, %struct.b2AABB* %88)
  %89 = load i32* %child1, align 4
  %90 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %91 = load %struct.b2TreeNode** %90, align 4
  %92 = getelementptr inbounds %struct.b2TreeNode* %91, i32 %89
  %93 = getelementptr inbounds %struct.b2TreeNode* %92, i32 0, i32 0
  %94 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %93)
  store float %94, float* %oldArea, align 4
  %95 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %aabb1)
  store float %95, float* %newArea, align 4
  %96 = load float* %newArea, align 4
  %97 = load float* %oldArea, align 4
  %98 = fsub float %96, %97
  %99 = load float* %inheritanceCost, align 4
  %100 = fadd float %98, %99
  store float %100, float* %cost1, align 4
  br label %101

; <label>:101                                     ; preds = %83, %74
  %102 = load i32* %child2, align 4
  %103 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %104 = load %struct.b2TreeNode** %103, align 4
  %105 = getelementptr inbounds %struct.b2TreeNode* %104, i32 %102
  %106 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %105)
  br i1 %106, label %107, label %116

; <label>:107                                     ; preds = %101
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb2)
  %108 = load i32* %child2, align 4
  %109 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %110 = load %struct.b2TreeNode** %109, align 4
  %111 = getelementptr inbounds %struct.b2TreeNode* %110, i32 %108
  %112 = getelementptr inbounds %struct.b2TreeNode* %111, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %aabb2, %struct.b2AABB* %leafAABB, %struct.b2AABB* %112)
  %113 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %aabb2)
  %114 = load float* %inheritanceCost, align 4
  %115 = fadd float %113, %114
  store float %115, float* %cost2, align 4
  br label %134

; <label>:116                                     ; preds = %101
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb3)
  %117 = load i32* %child2, align 4
  %118 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %119 = load %struct.b2TreeNode** %118, align 4
  %120 = getelementptr inbounds %struct.b2TreeNode* %119, i32 %117
  %121 = getelementptr inbounds %struct.b2TreeNode* %120, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %aabb3, %struct.b2AABB* %leafAABB, %struct.b2AABB* %121)
  %122 = load i32* %child2, align 4
  %123 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %124 = load %struct.b2TreeNode** %123, align 4
  %125 = getelementptr inbounds %struct.b2TreeNode* %124, i32 %122
  %126 = getelementptr inbounds %struct.b2TreeNode* %125, i32 0, i32 0
  %127 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %126)
  store float %127, float* %oldArea4, align 4
  %128 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %aabb3)
  store float %128, float* %newArea5, align 4
  %129 = load float* %newArea5, align 4
  %130 = load float* %oldArea4, align 4
  %131 = fsub float %129, %130
  %132 = load float* %inheritanceCost, align 4
  %133 = fadd float %131, %132
  store float %133, float* %cost2, align 4
  br label %134

; <label>:134                                     ; preds = %116, %107
  %135 = load float* %cost, align 4
  %136 = load float* %cost1, align 4
  %137 = fcmp olt float %135, %136
  br i1 %137, label %138, label %143

; <label>:138                                     ; preds = %134
  %139 = load float* %cost, align 4
  %140 = load float* %cost2, align 4
  %141 = fcmp olt float %139, %140
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %138
  br label %152

; <label>:143                                     ; preds = %138, %134
  %144 = load float* %cost1, align 4
  %145 = load float* %cost2, align 4
  %146 = fcmp olt float %144, %145
  br i1 %146, label %147, label %149

; <label>:147                                     ; preds = %143
  %148 = load i32* %child1, align 4
  store i32 %148, i32* %index, align 4
  br label %151

; <label>:149                                     ; preds = %143
  %150 = load i32* %child2, align 4
  store i32 %150, i32* %index, align 4
  br label %151

; <label>:151                                     ; preds = %149, %147
  br label %30

; <label>:152                                     ; preds = %142, %30
  %153 = load i32* %index, align 4
  store i32 %153, i32* %sibling, align 4
  %154 = load i32* %sibling, align 4
  %155 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %156 = load %struct.b2TreeNode** %155, align 4
  %157 = getelementptr inbounds %struct.b2TreeNode* %156, i32 %154
  %158 = getelementptr inbounds %struct.b2TreeNode* %157, i32 0, i32 2
  %159 = bitcast %union.anon* %158 to i32*
  %160 = load i32* %159, align 4
  store i32 %160, i32* %oldParent, align 4
  %161 = call i32 @_ZN13b2DynamicTree12AllocateNodeEv(%class.b2DynamicTree* %3)
  store i32 %161, i32* %newParent, align 4
  %162 = load i32* %oldParent, align 4
  %163 = load i32* %newParent, align 4
  %164 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %165 = load %struct.b2TreeNode** %164, align 4
  %166 = getelementptr inbounds %struct.b2TreeNode* %165, i32 %163
  %167 = getelementptr inbounds %struct.b2TreeNode* %166, i32 0, i32 2
  %168 = bitcast %union.anon* %167 to i32*
  store i32 %162, i32* %168, align 4
  %169 = load i32* %newParent, align 4
  %170 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %171 = load %struct.b2TreeNode** %170, align 4
  %172 = getelementptr inbounds %struct.b2TreeNode* %171, i32 %169
  %173 = getelementptr inbounds %struct.b2TreeNode* %172, i32 0, i32 1
  store i8* null, i8** %173, align 4
  %174 = load i32* %newParent, align 4
  %175 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %176 = load %struct.b2TreeNode** %175, align 4
  %177 = getelementptr inbounds %struct.b2TreeNode* %176, i32 %174
  %178 = getelementptr inbounds %struct.b2TreeNode* %177, i32 0, i32 0
  %179 = load i32* %sibling, align 4
  %180 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %181 = load %struct.b2TreeNode** %180, align 4
  %182 = getelementptr inbounds %struct.b2TreeNode* %181, i32 %179
  %183 = getelementptr inbounds %struct.b2TreeNode* %182, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %178, %struct.b2AABB* %leafAABB, %struct.b2AABB* %183)
  %184 = load i32* %sibling, align 4
  %185 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %186 = load %struct.b2TreeNode** %185, align 4
  %187 = getelementptr inbounds %struct.b2TreeNode* %186, i32 %184
  %188 = getelementptr inbounds %struct.b2TreeNode* %187, i32 0, i32 5
  %189 = load i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = load i32* %newParent, align 4
  %192 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %193 = load %struct.b2TreeNode** %192, align 4
  %194 = getelementptr inbounds %struct.b2TreeNode* %193, i32 %191
  %195 = getelementptr inbounds %struct.b2TreeNode* %194, i32 0, i32 5
  store i32 %190, i32* %195, align 4
  %196 = load i32* %oldParent, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %248

; <label>:198                                     ; preds = %152
  %199 = load i32* %oldParent, align 4
  %200 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %201 = load %struct.b2TreeNode** %200, align 4
  %202 = getelementptr inbounds %struct.b2TreeNode* %201, i32 %199
  %203 = getelementptr inbounds %struct.b2TreeNode* %202, i32 0, i32 3
  %204 = load i32* %203, align 4
  %205 = load i32* %sibling, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %214

; <label>:207                                     ; preds = %198
  %208 = load i32* %newParent, align 4
  %209 = load i32* %oldParent, align 4
  %210 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %211 = load %struct.b2TreeNode** %210, align 4
  %212 = getelementptr inbounds %struct.b2TreeNode* %211, i32 %209
  %213 = getelementptr inbounds %struct.b2TreeNode* %212, i32 0, i32 3
  store i32 %208, i32* %213, align 4
  br label %221

; <label>:214                                     ; preds = %198
  %215 = load i32* %newParent, align 4
  %216 = load i32* %oldParent, align 4
  %217 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %218 = load %struct.b2TreeNode** %217, align 4
  %219 = getelementptr inbounds %struct.b2TreeNode* %218, i32 %216
  %220 = getelementptr inbounds %struct.b2TreeNode* %219, i32 0, i32 4
  store i32 %215, i32* %220, align 4
  br label %221

; <label>:221                                     ; preds = %214, %207
  %222 = load i32* %sibling, align 4
  %223 = load i32* %newParent, align 4
  %224 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %225 = load %struct.b2TreeNode** %224, align 4
  %226 = getelementptr inbounds %struct.b2TreeNode* %225, i32 %223
  %227 = getelementptr inbounds %struct.b2TreeNode* %226, i32 0, i32 3
  store i32 %222, i32* %227, align 4
  %228 = load i32* %2, align 4
  %229 = load i32* %newParent, align 4
  %230 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %231 = load %struct.b2TreeNode** %230, align 4
  %232 = getelementptr inbounds %struct.b2TreeNode* %231, i32 %229
  %233 = getelementptr inbounds %struct.b2TreeNode* %232, i32 0, i32 4
  store i32 %228, i32* %233, align 4
  %234 = load i32* %newParent, align 4
  %235 = load i32* %sibling, align 4
  %236 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %237 = load %struct.b2TreeNode** %236, align 4
  %238 = getelementptr inbounds %struct.b2TreeNode* %237, i32 %235
  %239 = getelementptr inbounds %struct.b2TreeNode* %238, i32 0, i32 2
  %240 = bitcast %union.anon* %239 to i32*
  store i32 %234, i32* %240, align 4
  %241 = load i32* %newParent, align 4
  %242 = load i32* %2, align 4
  %243 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %244 = load %struct.b2TreeNode** %243, align 4
  %245 = getelementptr inbounds %struct.b2TreeNode* %244, i32 %242
  %246 = getelementptr inbounds %struct.b2TreeNode* %245, i32 0, i32 2
  %247 = bitcast %union.anon* %246 to i32*
  store i32 %241, i32* %247, align 4
  br label %277

; <label>:248                                     ; preds = %152
  %249 = load i32* %sibling, align 4
  %250 = load i32* %newParent, align 4
  %251 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %252 = load %struct.b2TreeNode** %251, align 4
  %253 = getelementptr inbounds %struct.b2TreeNode* %252, i32 %250
  %254 = getelementptr inbounds %struct.b2TreeNode* %253, i32 0, i32 3
  store i32 %249, i32* %254, align 4
  %255 = load i32* %2, align 4
  %256 = load i32* %newParent, align 4
  %257 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %258 = load %struct.b2TreeNode** %257, align 4
  %259 = getelementptr inbounds %struct.b2TreeNode* %258, i32 %256
  %260 = getelementptr inbounds %struct.b2TreeNode* %259, i32 0, i32 4
  store i32 %255, i32* %260, align 4
  %261 = load i32* %newParent, align 4
  %262 = load i32* %sibling, align 4
  %263 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %264 = load %struct.b2TreeNode** %263, align 4
  %265 = getelementptr inbounds %struct.b2TreeNode* %264, i32 %262
  %266 = getelementptr inbounds %struct.b2TreeNode* %265, i32 0, i32 2
  %267 = bitcast %union.anon* %266 to i32*
  store i32 %261, i32* %267, align 4
  %268 = load i32* %newParent, align 4
  %269 = load i32* %2, align 4
  %270 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %271 = load %struct.b2TreeNode** %270, align 4
  %272 = getelementptr inbounds %struct.b2TreeNode* %271, i32 %269
  %273 = getelementptr inbounds %struct.b2TreeNode* %272, i32 0, i32 2
  %274 = bitcast %union.anon* %273 to i32*
  store i32 %268, i32* %274, align 4
  %275 = load i32* %newParent, align 4
  %276 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  store i32 %275, i32* %276, align 4
  br label %277

; <label>:277                                     ; preds = %248, %221
  %278 = load i32* %2, align 4
  %279 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %280 = load %struct.b2TreeNode** %279, align 4
  %281 = getelementptr inbounds %struct.b2TreeNode* %280, i32 %278
  %282 = getelementptr inbounds %struct.b2TreeNode* %281, i32 0, i32 2
  %283 = bitcast %union.anon* %282 to i32*
  %284 = load i32* %283, align 4
  store i32 %284, i32* %index, align 4
  br label %285

; <label>:285                                     ; preds = %314, %277
  %286 = load i32* %index, align 4
  %287 = icmp ne i32 %286, -1
  br i1 %287, label %288, label %356

; <label>:288                                     ; preds = %285
  %289 = load i32* %index, align 4
  %290 = call i32 @_ZN13b2DynamicTree7BalanceEi(%class.b2DynamicTree* %3, i32 %289)
  store i32 %290, i32* %index, align 4
  %291 = load i32* %index, align 4
  %292 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %293 = load %struct.b2TreeNode** %292, align 4
  %294 = getelementptr inbounds %struct.b2TreeNode* %293, i32 %291
  %295 = getelementptr inbounds %struct.b2TreeNode* %294, i32 0, i32 3
  %296 = load i32* %295, align 4
  store i32 %296, i32* %child16, align 4
  %297 = load i32* %index, align 4
  %298 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %299 = load %struct.b2TreeNode** %298, align 4
  %300 = getelementptr inbounds %struct.b2TreeNode* %299, i32 %297
  %301 = getelementptr inbounds %struct.b2TreeNode* %300, i32 0, i32 4
  %302 = load i32* %301, align 4
  store i32 %302, i32* %child27, align 4
  %303 = load i32* %child16, align 4
  %304 = icmp ne i32 %303, -1
  br i1 %304, label %305, label %306

; <label>:305                                     ; preds = %288
  br label %308

; <label>:306                                     ; preds = %288
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 307, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree10InsertLeafEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %308

; <label>:308                                     ; preds = %307, %305
  %309 = load i32* %child27, align 4
  %310 = icmp ne i32 %309, -1
  br i1 %310, label %311, label %312

; <label>:311                                     ; preds = %308
  br label %314

; <label>:312                                     ; preds = %308
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree10InsertLeafEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %314

; <label>:314                                     ; preds = %313, %311
  %315 = load i32* %child16, align 4
  %316 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %317 = load %struct.b2TreeNode** %316, align 4
  %318 = getelementptr inbounds %struct.b2TreeNode* %317, i32 %315
  %319 = getelementptr inbounds %struct.b2TreeNode* %318, i32 0, i32 5
  %320 = load i32* %319, align 4
  %321 = load i32* %child27, align 4
  %322 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %323 = load %struct.b2TreeNode** %322, align 4
  %324 = getelementptr inbounds %struct.b2TreeNode* %323, i32 %321
  %325 = getelementptr inbounds %struct.b2TreeNode* %324, i32 0, i32 5
  %326 = load i32* %325, align 4
  %327 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %320, i32 %326)
  %328 = add nsw i32 1, %327
  %329 = load i32* %index, align 4
  %330 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %331 = load %struct.b2TreeNode** %330, align 4
  %332 = getelementptr inbounds %struct.b2TreeNode* %331, i32 %329
  %333 = getelementptr inbounds %struct.b2TreeNode* %332, i32 0, i32 5
  store i32 %328, i32* %333, align 4
  %334 = load i32* %index, align 4
  %335 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %336 = load %struct.b2TreeNode** %335, align 4
  %337 = getelementptr inbounds %struct.b2TreeNode* %336, i32 %334
  %338 = getelementptr inbounds %struct.b2TreeNode* %337, i32 0, i32 0
  %339 = load i32* %child16, align 4
  %340 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %341 = load %struct.b2TreeNode** %340, align 4
  %342 = getelementptr inbounds %struct.b2TreeNode* %341, i32 %339
  %343 = getelementptr inbounds %struct.b2TreeNode* %342, i32 0, i32 0
  %344 = load i32* %child27, align 4
  %345 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %346 = load %struct.b2TreeNode** %345, align 4
  %347 = getelementptr inbounds %struct.b2TreeNode* %346, i32 %344
  %348 = getelementptr inbounds %struct.b2TreeNode* %347, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %338, %struct.b2AABB* %343, %struct.b2AABB* %348)
  %349 = load i32* %index, align 4
  %350 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %351 = load %struct.b2TreeNode** %350, align 4
  %352 = getelementptr inbounds %struct.b2TreeNode* %351, i32 %349
  %353 = getelementptr inbounds %struct.b2TreeNode* %352, i32 0, i32 2
  %354 = bitcast %union.anon* %353 to i32*
  %355 = load i32* %354, align 4
  store i32 %355, i32* %index, align 4
  br label %285

; <label>:356                                     ; preds = %10, %285
  ret void
}

define void @_ZN13b2DynamicTree12DestroyProxyEi(%class.b2DynamicTree* %this, i32 %proxyId) align 2 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree12DestroyProxyEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load i32* %2, align 4
  %16 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %17 = load %struct.b2TreeNode** %16, align 4
  %18 = getelementptr inbounds %struct.b2TreeNode* %17, i32 %15
  %19 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %18)
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %14
  br label %23

; <label>:21                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree12DestroyProxyEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load i32* %2, align 4
  call void @_ZN13b2DynamicTree10RemoveLeafEi(%class.b2DynamicTree* %3, i32 %24)
  %25 = load i32* %2, align 4
  call void @_ZN13b2DynamicTree8FreeNodeEi(%class.b2DynamicTree* %3, i32 %25)
  ret void
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

define void @_ZN13b2DynamicTree10RemoveLeafEi(%class.b2DynamicTree* %this, i32 %leaf) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  %parent = alloca i32, align 4
  %grandParent = alloca i32, align 4
  %sibling = alloca i32, align 4
  %index = alloca i32, align 4
  %child1 = alloca i32, align 4
  %child2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %leaf, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  br label %153

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %13 = load %struct.b2TreeNode** %12, align 4
  %14 = getelementptr inbounds %struct.b2TreeNode* %13, i32 %11
  %15 = getelementptr inbounds %struct.b2TreeNode* %14, i32 0, i32 2
  %16 = bitcast %union.anon* %15 to i32*
  %17 = load i32* %16, align 4
  store i32 %17, i32* %parent, align 4
  %18 = load i32* %parent, align 4
  %19 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %20 = load %struct.b2TreeNode** %19, align 4
  %21 = getelementptr inbounds %struct.b2TreeNode* %20, i32 %18
  %22 = getelementptr inbounds %struct.b2TreeNode* %21, i32 0, i32 2
  %23 = bitcast %union.anon* %22 to i32*
  %24 = load i32* %23, align 4
  store i32 %24, i32* %grandParent, align 4
  %25 = load i32* %parent, align 4
  %26 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %27 = load %struct.b2TreeNode** %26, align 4
  %28 = getelementptr inbounds %struct.b2TreeNode* %27, i32 %25
  %29 = getelementptr inbounds %struct.b2TreeNode* %28, i32 0, i32 3
  %30 = load i32* %29, align 4
  %31 = load i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %10
  %34 = load i32* %parent, align 4
  %35 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %36 = load %struct.b2TreeNode** %35, align 4
  %37 = getelementptr inbounds %struct.b2TreeNode* %36, i32 %34
  %38 = getelementptr inbounds %struct.b2TreeNode* %37, i32 0, i32 4
  %39 = load i32* %38, align 4
  store i32 %39, i32* %sibling, align 4
  br label %47

; <label>:40                                      ; preds = %10
  %41 = load i32* %parent, align 4
  %42 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %43 = load %struct.b2TreeNode** %42, align 4
  %44 = getelementptr inbounds %struct.b2TreeNode* %43, i32 %41
  %45 = getelementptr inbounds %struct.b2TreeNode* %44, i32 0, i32 3
  %46 = load i32* %45, align 4
  store i32 %46, i32* %sibling, align 4
  br label %47

; <label>:47                                      ; preds = %40, %33
  %48 = load i32* %grandParent, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %143

; <label>:50                                      ; preds = %47
  %51 = load i32* %grandParent, align 4
  %52 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %53 = load %struct.b2TreeNode** %52, align 4
  %54 = getelementptr inbounds %struct.b2TreeNode* %53, i32 %51
  %55 = getelementptr inbounds %struct.b2TreeNode* %54, i32 0, i32 3
  %56 = load i32* %55, align 4
  %57 = load i32* %parent, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

; <label>:59                                      ; preds = %50
  %60 = load i32* %sibling, align 4
  %61 = load i32* %grandParent, align 4
  %62 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %63 = load %struct.b2TreeNode** %62, align 4
  %64 = getelementptr inbounds %struct.b2TreeNode* %63, i32 %61
  %65 = getelementptr inbounds %struct.b2TreeNode* %64, i32 0, i32 3
  store i32 %60, i32* %65, align 4
  br label %73

; <label>:66                                      ; preds = %50
  %67 = load i32* %sibling, align 4
  %68 = load i32* %grandParent, align 4
  %69 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %70 = load %struct.b2TreeNode** %69, align 4
  %71 = getelementptr inbounds %struct.b2TreeNode* %70, i32 %68
  %72 = getelementptr inbounds %struct.b2TreeNode* %71, i32 0, i32 4
  store i32 %67, i32* %72, align 4
  br label %73

; <label>:73                                      ; preds = %66, %59
  %74 = load i32* %grandParent, align 4
  %75 = load i32* %sibling, align 4
  %76 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %77 = load %struct.b2TreeNode** %76, align 4
  %78 = getelementptr inbounds %struct.b2TreeNode* %77, i32 %75
  %79 = getelementptr inbounds %struct.b2TreeNode* %78, i32 0, i32 2
  %80 = bitcast %union.anon* %79 to i32*
  store i32 %74, i32* %80, align 4
  %81 = load i32* %parent, align 4
  call void @_ZN13b2DynamicTree8FreeNodeEi(%class.b2DynamicTree* %3, i32 %81)
  %82 = load i32* %grandParent, align 4
  store i32 %82, i32* %index, align 4
  br label %83

; <label>:83                                      ; preds = %86, %73
  %84 = load i32* %index, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %142

; <label>:86                                      ; preds = %83
  %87 = load i32* %index, align 4
  %88 = call i32 @_ZN13b2DynamicTree7BalanceEi(%class.b2DynamicTree* %3, i32 %87)
  store i32 %88, i32* %index, align 4
  %89 = load i32* %index, align 4
  %90 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %91 = load %struct.b2TreeNode** %90, align 4
  %92 = getelementptr inbounds %struct.b2TreeNode* %91, i32 %89
  %93 = getelementptr inbounds %struct.b2TreeNode* %92, i32 0, i32 3
  %94 = load i32* %93, align 4
  store i32 %94, i32* %child1, align 4
  %95 = load i32* %index, align 4
  %96 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %97 = load %struct.b2TreeNode** %96, align 4
  %98 = getelementptr inbounds %struct.b2TreeNode* %97, i32 %95
  %99 = getelementptr inbounds %struct.b2TreeNode* %98, i32 0, i32 4
  %100 = load i32* %99, align 4
  store i32 %100, i32* %child2, align 4
  %101 = load i32* %index, align 4
  %102 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %103 = load %struct.b2TreeNode** %102, align 4
  %104 = getelementptr inbounds %struct.b2TreeNode* %103, i32 %101
  %105 = getelementptr inbounds %struct.b2TreeNode* %104, i32 0, i32 0
  %106 = load i32* %child1, align 4
  %107 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %108 = load %struct.b2TreeNode** %107, align 4
  %109 = getelementptr inbounds %struct.b2TreeNode* %108, i32 %106
  %110 = getelementptr inbounds %struct.b2TreeNode* %109, i32 0, i32 0
  %111 = load i32* %child2, align 4
  %112 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %113 = load %struct.b2TreeNode** %112, align 4
  %114 = getelementptr inbounds %struct.b2TreeNode* %113, i32 %111
  %115 = getelementptr inbounds %struct.b2TreeNode* %114, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %105, %struct.b2AABB* %110, %struct.b2AABB* %115)
  %116 = load i32* %child1, align 4
  %117 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %118 = load %struct.b2TreeNode** %117, align 4
  %119 = getelementptr inbounds %struct.b2TreeNode* %118, i32 %116
  %120 = getelementptr inbounds %struct.b2TreeNode* %119, i32 0, i32 5
  %121 = load i32* %120, align 4
  %122 = load i32* %child2, align 4
  %123 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %124 = load %struct.b2TreeNode** %123, align 4
  %125 = getelementptr inbounds %struct.b2TreeNode* %124, i32 %122
  %126 = getelementptr inbounds %struct.b2TreeNode* %125, i32 0, i32 5
  %127 = load i32* %126, align 4
  %128 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %121, i32 %127)
  %129 = add nsw i32 1, %128
  %130 = load i32* %index, align 4
  %131 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %132 = load %struct.b2TreeNode** %131, align 4
  %133 = getelementptr inbounds %struct.b2TreeNode* %132, i32 %130
  %134 = getelementptr inbounds %struct.b2TreeNode* %133, i32 0, i32 5
  store i32 %129, i32* %134, align 4
  %135 = load i32* %index, align 4
  %136 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %137 = load %struct.b2TreeNode** %136, align 4
  %138 = getelementptr inbounds %struct.b2TreeNode* %137, i32 %135
  %139 = getelementptr inbounds %struct.b2TreeNode* %138, i32 0, i32 2
  %140 = bitcast %union.anon* %139 to i32*
  %141 = load i32* %140, align 4
  store i32 %141, i32* %index, align 4
  br label %83

; <label>:142                                     ; preds = %83
  br label %153

; <label>:143                                     ; preds = %47
  %144 = load i32* %sibling, align 4
  %145 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = load i32* %sibling, align 4
  %147 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %148 = load %struct.b2TreeNode** %147, align 4
  %149 = getelementptr inbounds %struct.b2TreeNode* %148, i32 %146
  %150 = getelementptr inbounds %struct.b2TreeNode* %149, i32 0, i32 2
  %151 = bitcast %union.anon* %150 to i32*
  store i32 -1, i32* %151, align 4
  %152 = load i32* %parent, align 4
  call void @_ZN13b2DynamicTree8FreeNodeEi(%class.b2DynamicTree* %3, i32 %152)
  br label %153

; <label>:153                                     ; preds = %8, %143, %142
  ret void
}

define zeroext i1 @_ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2(%class.b2DynamicTree* %this, i32 %proxyId, %struct.b2AABB* %aabb, %struct.b2Vec2* %displacement) align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.b2DynamicTree*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.b2AABB*, align 4
  %5 = alloca %struct.b2Vec2*, align 4
  %b = alloca %struct.b2AABB, align 4
  %r = alloca %struct.b2Vec2, align 4
  %6 = alloca %struct.b2Vec2, align 4
  %7 = alloca %struct.b2Vec2, align 4
  %d = alloca %struct.b2Vec2, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %2, align 4
  store i32 %proxyId, i32* %3, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %4, align 4
  store %struct.b2Vec2* %displacement, %struct.b2Vec2** %5, align 4
  %8 = load %class.b2DynamicTree** %2
  %9 = load i32* %3, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load i32* %3, align 4
  %13 = getelementptr inbounds %class.b2DynamicTree* %8, i32 0, i32 3
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  br label %19

; <label>:17                                      ; preds = %11, %0
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 135, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i32* %3, align 4
  %21 = getelementptr inbounds %class.b2DynamicTree* %8, i32 0, i32 1
  %22 = load %struct.b2TreeNode** %21, align 4
  %23 = getelementptr inbounds %struct.b2TreeNode* %22, i32 %20
  %24 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %23)
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %19
  br label %28

; <label>:26                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i32* %3, align 4
  %30 = getelementptr inbounds %class.b2DynamicTree* %8, i32 0, i32 1
  %31 = load %struct.b2TreeNode** %30, align 4
  %32 = getelementptr inbounds %struct.b2TreeNode* %31, i32 %29
  %33 = getelementptr inbounds %struct.b2TreeNode* %32, i32 0, i32 0
  %34 = load %struct.b2AABB** %4
  %35 = call zeroext i1 @_ZNK6b2AABB8ContainsERKS_(%struct.b2AABB* %33, %struct.b2AABB* %34)
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %28
  store i1 false, i1* %1
  br label %95

; <label>:37                                      ; preds = %28
  %38 = load i32* %3, align 4
  call void @_ZN13b2DynamicTree10RemoveLeafEi(%class.b2DynamicTree* %8, i32 %38)
  %39 = load %struct.b2AABB** %4
  %40 = bitcast %struct.b2AABB* %b to i8*
  %41 = bitcast %struct.b2AABB* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 16, i32 4, i1 false)
  call void @_ZN6b2Vec2C1Eff(%struct.b2Vec2* %r, float 0x3FB99999A0000000, float 0x3FB99999A0000000)
  %42 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 0
  %43 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 0
  call void @_ZmiRK6b2Vec2S1_(%struct.b2Vec2* sret %6, %struct.b2Vec2* %43, %struct.b2Vec2* %r)
  %44 = bitcast %struct.b2Vec2* %42 to i8*
  %45 = bitcast %struct.b2Vec2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  %46 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 1
  %47 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 1
  call void @_ZplRK6b2Vec2S1_(%struct.b2Vec2* sret %7, %struct.b2Vec2* %47, %struct.b2Vec2* %r)
  %48 = bitcast %struct.b2Vec2* %46 to i8*
  %49 = bitcast %struct.b2Vec2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  %50 = load %struct.b2Vec2** %5
  call void @_ZmlfRK6b2Vec2(%struct.b2Vec2* sret %d, float 2.000000e+00, %struct.b2Vec2* %50)
  %51 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 0
  %52 = load float* %51, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %37
  %55 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 0
  %56 = load float* %55, align 4
  %57 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 0
  %58 = getelementptr inbounds %struct.b2Vec2* %57, i32 0, i32 0
  %59 = load float* %58, align 4
  %60 = fadd float %59, %56
  store float %60, float* %58, align 4
  br label %68

; <label>:61                                      ; preds = %37
  %62 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 0
  %63 = load float* %62, align 4
  %64 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 1
  %65 = getelementptr inbounds %struct.b2Vec2* %64, i32 0, i32 0
  %66 = load float* %65, align 4
  %67 = fadd float %66, %63
  store float %67, float* %65, align 4
  br label %68

; <label>:68                                      ; preds = %61, %54
  %69 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 1
  %70 = load float* %69, align 4
  %71 = fcmp olt float %70, 0.000000e+00
  br i1 %71, label %72, label %79

; <label>:72                                      ; preds = %68
  %73 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 1
  %74 = load float* %73, align 4
  %75 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 0
  %76 = getelementptr inbounds %struct.b2Vec2* %75, i32 0, i32 1
  %77 = load float* %76, align 4
  %78 = fadd float %77, %74
  store float %78, float* %76, align 4
  br label %86

; <label>:79                                      ; preds = %68
  %80 = getelementptr inbounds %struct.b2Vec2* %d, i32 0, i32 1
  %81 = load float* %80, align 4
  %82 = getelementptr inbounds %struct.b2AABB* %b, i32 0, i32 1
  %83 = getelementptr inbounds %struct.b2Vec2* %82, i32 0, i32 1
  %84 = load float* %83, align 4
  %85 = fadd float %84, %81
  store float %85, float* %83, align 4
  br label %86

; <label>:86                                      ; preds = %79, %72
  %87 = load i32* %3, align 4
  %88 = getelementptr inbounds %class.b2DynamicTree* %8, i32 0, i32 1
  %89 = load %struct.b2TreeNode** %88, align 4
  %90 = getelementptr inbounds %struct.b2TreeNode* %89, i32 %87
  %91 = getelementptr inbounds %struct.b2TreeNode* %90, i32 0, i32 0
  %92 = bitcast %struct.b2AABB* %91 to i8*
  %93 = bitcast %struct.b2AABB* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %93, i32 16, i32 4, i1 false)
  %94 = load i32* %3, align 4
  call void @_ZN13b2DynamicTree10InsertLeafEi(%class.b2DynamicTree* %8, i32 %94)
  store i1 true, i1* %1
  br label %95

; <label>:95                                      ; preds = %86, %36
  %96 = load i1* %1
  ret i1 %96
}

define linkonce_odr zeroext i1 @_ZNK6b2AABB8ContainsERKS_(%struct.b2AABB* %this, %struct.b2AABB* %aabb) nounwind align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  %2 = alloca %struct.b2AABB*, align 4
  %result = alloca i8, align 1
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  store %struct.b2AABB* %aabb, %struct.b2AABB** %2, align 4
  %3 = load %struct.b2AABB** %1
  store i8 1, i8* %result, align 1
  %4 = load i8* %result, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.b2Vec2* %7, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = load %struct.b2AABB** %2
  %11 = getelementptr inbounds %struct.b2AABB* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.b2Vec2* %11, i32 0, i32 0
  %13 = load float* %12, align 4
  %14 = fcmp ole float %9, %13
  br label %15

; <label>:15                                      ; preds = %6, %0
  %16 = phi i1 [ false, %0 ], [ %14, %6 ]
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %result, align 1
  %18 = load i8* %result, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %15
  %21 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.b2Vec2* %21, i32 0, i32 1
  %23 = load float* %22, align 4
  %24 = load %struct.b2AABB** %2
  %25 = getelementptr inbounds %struct.b2AABB* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.b2Vec2* %25, i32 0, i32 1
  %27 = load float* %26, align 4
  %28 = fcmp ole float %23, %27
  br label %29

; <label>:29                                      ; preds = %20, %15
  %30 = phi i1 [ false, %15 ], [ %28, %20 ]
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %result, align 1
  %32 = load i8* %result, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %29
  %35 = load %struct.b2AABB** %2
  %36 = getelementptr inbounds %struct.b2AABB* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.b2Vec2* %36, i32 0, i32 0
  %38 = load float* %37, align 4
  %39 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.b2Vec2* %39, i32 0, i32 0
  %41 = load float* %40, align 4
  %42 = fcmp ole float %38, %41
  br label %43

; <label>:43                                      ; preds = %34, %29
  %44 = phi i1 [ false, %29 ], [ %42, %34 ]
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %result, align 1
  %46 = load i8* %result, align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %57

; <label>:48                                      ; preds = %43
  %49 = load %struct.b2AABB** %2
  %50 = getelementptr inbounds %struct.b2AABB* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.b2Vec2* %50, i32 0, i32 1
  %52 = load float* %51, align 4
  %53 = getelementptr inbounds %struct.b2AABB* %3, i32 0, i32 1
  %54 = getelementptr inbounds %struct.b2Vec2* %53, i32 0, i32 1
  %55 = load float* %54, align 4
  %56 = fcmp ole float %52, %55
  br label %57

; <label>:57                                      ; preds = %48, %43
  %58 = phi i1 [ false, %43 ], [ %56, %48 ]
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %result, align 1
  %60 = load i8* %result, align 1
  %61 = trunc i8 %60 to i1
  ret i1 %61
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

define linkonce_odr float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %this) nounwind align 2 {
  %1 = alloca %struct.b2AABB*, align 4
  %wx = alloca float, align 4
  %wy = alloca float, align 4
  store %struct.b2AABB* %this, %struct.b2AABB** %1, align 4
  %2 = load %struct.b2AABB** %1
  %3 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.b2Vec2* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 0
  %7 = getelementptr inbounds %struct.b2Vec2* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fsub float %5, %8
  store float %9, float* %wx, align 4
  %10 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.b2Vec2* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %struct.b2AABB* %2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.b2Vec2* %13, i32 0, i32 1
  %15 = load float* %14, align 4
  %16 = fsub float %12, %15
  store float %16, float* %wy, align 4
  %17 = load float* %wx, align 4
  %18 = load float* %wy, align 4
  %19 = fadd float %17, %18
  %20 = fmul float 2.000000e+00, %19
  ret float %20
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

define i32 @_ZN13b2DynamicTree7BalanceEi(%class.b2DynamicTree* %this, i32 %iA) align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.b2DynamicTree*, align 4
  %3 = alloca i32, align 4
  %A = alloca %struct.b2TreeNode*, align 4
  %iB = alloca i32, align 4
  %iC = alloca i32, align 4
  %B = alloca %struct.b2TreeNode*, align 4
  %C = alloca %struct.b2TreeNode*, align 4
  %balance = alloca i32, align 4
  %iF = alloca i32, align 4
  %iG = alloca i32, align 4
  %F = alloca %struct.b2TreeNode*, align 4
  %G = alloca %struct.b2TreeNode*, align 4
  %iD = alloca i32, align 4
  %iE = alloca i32, align 4
  %D = alloca %struct.b2TreeNode*, align 4
  %E = alloca %struct.b2TreeNode*, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %2, align 4
  store i32 %iA, i32* %3, align 4
  %4 = load %class.b2DynamicTree** %2
  %5 = load i32* %3, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 382, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %12 = load %struct.b2TreeNode** %11, align 4
  %13 = load i32* %3, align 4
  %14 = getelementptr inbounds %struct.b2TreeNode* %12, i32 %13
  store %struct.b2TreeNode* %14, %struct.b2TreeNode** %A, align 4
  %15 = load %struct.b2TreeNode** %A, align 4
  %16 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %15)
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %10
  %18 = load %struct.b2TreeNode** %A, align 4
  %19 = getelementptr inbounds %struct.b2TreeNode* %18, i32 0, i32 5
  %20 = load i32* %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %17, %10
  %23 = load i32* %3, align 4
  store i32 %23, i32* %1
  br label %481

; <label>:24                                      ; preds = %17
  %25 = load %struct.b2TreeNode** %A, align 4
  %26 = getelementptr inbounds %struct.b2TreeNode* %25, i32 0, i32 3
  %27 = load i32* %26, align 4
  store i32 %27, i32* %iB, align 4
  %28 = load %struct.b2TreeNode** %A, align 4
  %29 = getelementptr inbounds %struct.b2TreeNode* %28, i32 0, i32 4
  %30 = load i32* %29, align 4
  store i32 %30, i32* %iC, align 4
  %31 = load i32* %iB, align 4
  %32 = icmp sle i32 0, %31
  br i1 %32, label %33, label %39

; <label>:33                                      ; preds = %24
  %34 = load i32* %iB, align 4
  %35 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %36 = load i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %33
  br label %41

; <label>:39                                      ; preds = %33, %24
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = load i32* %iC, align 4
  %43 = icmp sle i32 0, %42
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %41
  %45 = load i32* %iC, align 4
  %46 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %47 = load i32* %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %44
  br label %52

; <label>:50                                      ; preds = %44, %41
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %54 = load %struct.b2TreeNode** %53, align 4
  %55 = load i32* %iB, align 4
  %56 = getelementptr inbounds %struct.b2TreeNode* %54, i32 %55
  store %struct.b2TreeNode* %56, %struct.b2TreeNode** %B, align 4
  %57 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %58 = load %struct.b2TreeNode** %57, align 4
  %59 = load i32* %iC, align 4
  %60 = getelementptr inbounds %struct.b2TreeNode* %58, i32 %59
  store %struct.b2TreeNode* %60, %struct.b2TreeNode** %C, align 4
  %61 = load %struct.b2TreeNode** %C, align 4
  %62 = getelementptr inbounds %struct.b2TreeNode* %61, i32 0, i32 5
  %63 = load i32* %62, align 4
  %64 = load %struct.b2TreeNode** %B, align 4
  %65 = getelementptr inbounds %struct.b2TreeNode* %64, i32 0, i32 5
  %66 = load i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %balance, align 4
  %68 = load i32* %balance, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %273

; <label>:70                                      ; preds = %52
  %71 = load %struct.b2TreeNode** %C, align 4
  %72 = getelementptr inbounds %struct.b2TreeNode* %71, i32 0, i32 3
  %73 = load i32* %72, align 4
  store i32 %73, i32* %iF, align 4
  %74 = load %struct.b2TreeNode** %C, align 4
  %75 = getelementptr inbounds %struct.b2TreeNode* %74, i32 0, i32 4
  %76 = load i32* %75, align 4
  store i32 %76, i32* %iG, align 4
  %77 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %78 = load %struct.b2TreeNode** %77, align 4
  %79 = load i32* %iF, align 4
  %80 = getelementptr inbounds %struct.b2TreeNode* %78, i32 %79
  store %struct.b2TreeNode* %80, %struct.b2TreeNode** %F, align 4
  %81 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %82 = load %struct.b2TreeNode** %81, align 4
  %83 = load i32* %iG, align 4
  %84 = getelementptr inbounds %struct.b2TreeNode* %82, i32 %83
  store %struct.b2TreeNode* %84, %struct.b2TreeNode** %G, align 4
  %85 = load i32* %iF, align 4
  %86 = icmp sle i32 0, %85
  br i1 %86, label %87, label %93

; <label>:87                                      ; preds = %70
  %88 = load i32* %iF, align 4
  %89 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %90 = load i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %93

; <label>:92                                      ; preds = %87
  br label %95

; <label>:93                                      ; preds = %87, %70
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 407, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:95                                      ; preds = %94, %92
  %96 = load i32* %iG, align 4
  %97 = icmp sle i32 0, %96
  br i1 %97, label %98, label %104

; <label>:98                                      ; preds = %95
  %99 = load i32* %iG, align 4
  %100 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %101 = load i32* %100, align 4
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %98
  br label %106

; <label>:104                                     ; preds = %98, %95
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 408, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %106

; <label>:106                                     ; preds = %105, %103
  %107 = load i32* %3, align 4
  %108 = load %struct.b2TreeNode** %C, align 4
  %109 = getelementptr inbounds %struct.b2TreeNode* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.b2TreeNode** %A, align 4
  %111 = getelementptr inbounds %struct.b2TreeNode* %110, i32 0, i32 2
  %112 = bitcast %union.anon* %111 to i32*
  %113 = load i32* %112, align 4
  %114 = load %struct.b2TreeNode** %C, align 4
  %115 = getelementptr inbounds %struct.b2TreeNode* %114, i32 0, i32 2
  %116 = bitcast %union.anon* %115 to i32*
  store i32 %113, i32* %116, align 4
  %117 = load i32* %iC, align 4
  %118 = load %struct.b2TreeNode** %A, align 4
  %119 = getelementptr inbounds %struct.b2TreeNode* %118, i32 0, i32 2
  %120 = bitcast %union.anon* %119 to i32*
  store i32 %117, i32* %120, align 4
  %121 = load %struct.b2TreeNode** %C, align 4
  %122 = getelementptr inbounds %struct.b2TreeNode* %121, i32 0, i32 2
  %123 = bitcast %union.anon* %122 to i32*
  %124 = load i32* %123, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %174

; <label>:126                                     ; preds = %106
  %127 = load %struct.b2TreeNode** %C, align 4
  %128 = getelementptr inbounds %struct.b2TreeNode* %127, i32 0, i32 2
  %129 = bitcast %union.anon* %128 to i32*
  %130 = load i32* %129, align 4
  %131 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %132 = load %struct.b2TreeNode** %131, align 4
  %133 = getelementptr inbounds %struct.b2TreeNode* %132, i32 %130
  %134 = getelementptr inbounds %struct.b2TreeNode* %133, i32 0, i32 3
  %135 = load i32* %134, align 4
  %136 = load i32* %3, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %148

; <label>:138                                     ; preds = %126
  %139 = load i32* %iC, align 4
  %140 = load %struct.b2TreeNode** %C, align 4
  %141 = getelementptr inbounds %struct.b2TreeNode* %140, i32 0, i32 2
  %142 = bitcast %union.anon* %141 to i32*
  %143 = load i32* %142, align 4
  %144 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %145 = load %struct.b2TreeNode** %144, align 4
  %146 = getelementptr inbounds %struct.b2TreeNode* %145, i32 %143
  %147 = getelementptr inbounds %struct.b2TreeNode* %146, i32 0, i32 3
  store i32 %139, i32* %147, align 4
  br label %173

; <label>:148                                     ; preds = %126
  %149 = load %struct.b2TreeNode** %C, align 4
  %150 = getelementptr inbounds %struct.b2TreeNode* %149, i32 0, i32 2
  %151 = bitcast %union.anon* %150 to i32*
  %152 = load i32* %151, align 4
  %153 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %154 = load %struct.b2TreeNode** %153, align 4
  %155 = getelementptr inbounds %struct.b2TreeNode* %154, i32 %152
  %156 = getelementptr inbounds %struct.b2TreeNode* %155, i32 0, i32 4
  %157 = load i32* %156, align 4
  %158 = load i32* %3, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %148
  br label %163

; <label>:161                                     ; preds = %148
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %163

; <label>:163                                     ; preds = %162, %160
  %164 = load i32* %iC, align 4
  %165 = load %struct.b2TreeNode** %C, align 4
  %166 = getelementptr inbounds %struct.b2TreeNode* %165, i32 0, i32 2
  %167 = bitcast %union.anon* %166 to i32*
  %168 = load i32* %167, align 4
  %169 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %170 = load %struct.b2TreeNode** %169, align 4
  %171 = getelementptr inbounds %struct.b2TreeNode* %170, i32 %168
  %172 = getelementptr inbounds %struct.b2TreeNode* %171, i32 0, i32 4
  store i32 %164, i32* %172, align 4
  br label %173

; <label>:173                                     ; preds = %163, %138
  br label %177

; <label>:174                                     ; preds = %106
  %175 = load i32* %iC, align 4
  %176 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  br label %177

; <label>:177                                     ; preds = %174, %173
  %178 = load %struct.b2TreeNode** %F, align 4
  %179 = getelementptr inbounds %struct.b2TreeNode* %178, i32 0, i32 5
  %180 = load i32* %179, align 4
  %181 = load %struct.b2TreeNode** %G, align 4
  %182 = getelementptr inbounds %struct.b2TreeNode* %181, i32 0, i32 5
  %183 = load i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %228

; <label>:185                                     ; preds = %177
  %186 = load i32* %iF, align 4
  %187 = load %struct.b2TreeNode** %C, align 4
  %188 = getelementptr inbounds %struct.b2TreeNode* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = load i32* %iG, align 4
  %190 = load %struct.b2TreeNode** %A, align 4
  %191 = getelementptr inbounds %struct.b2TreeNode* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 4
  %192 = load i32* %3, align 4
  %193 = load %struct.b2TreeNode** %G, align 4
  %194 = getelementptr inbounds %struct.b2TreeNode* %193, i32 0, i32 2
  %195 = bitcast %union.anon* %194 to i32*
  store i32 %192, i32* %195, align 4
  %196 = load %struct.b2TreeNode** %A, align 4
  %197 = getelementptr inbounds %struct.b2TreeNode* %196, i32 0, i32 0
  %198 = load %struct.b2TreeNode** %B, align 4
  %199 = getelementptr inbounds %struct.b2TreeNode* %198, i32 0, i32 0
  %200 = load %struct.b2TreeNode** %G, align 4
  %201 = getelementptr inbounds %struct.b2TreeNode* %200, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %197, %struct.b2AABB* %199, %struct.b2AABB* %201)
  %202 = load %struct.b2TreeNode** %C, align 4
  %203 = getelementptr inbounds %struct.b2TreeNode* %202, i32 0, i32 0
  %204 = load %struct.b2TreeNode** %A, align 4
  %205 = getelementptr inbounds %struct.b2TreeNode* %204, i32 0, i32 0
  %206 = load %struct.b2TreeNode** %F, align 4
  %207 = getelementptr inbounds %struct.b2TreeNode* %206, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %203, %struct.b2AABB* %205, %struct.b2AABB* %207)
  %208 = load %struct.b2TreeNode** %B, align 4
  %209 = getelementptr inbounds %struct.b2TreeNode* %208, i32 0, i32 5
  %210 = load i32* %209, align 4
  %211 = load %struct.b2TreeNode** %G, align 4
  %212 = getelementptr inbounds %struct.b2TreeNode* %211, i32 0, i32 5
  %213 = load i32* %212, align 4
  %214 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %210, i32 %213)
  %215 = add nsw i32 1, %214
  %216 = load %struct.b2TreeNode** %A, align 4
  %217 = getelementptr inbounds %struct.b2TreeNode* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 4
  %218 = load %struct.b2TreeNode** %A, align 4
  %219 = getelementptr inbounds %struct.b2TreeNode* %218, i32 0, i32 5
  %220 = load i32* %219, align 4
  %221 = load %struct.b2TreeNode** %F, align 4
  %222 = getelementptr inbounds %struct.b2TreeNode* %221, i32 0, i32 5
  %223 = load i32* %222, align 4
  %224 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %220, i32 %223)
  %225 = add nsw i32 1, %224
  %226 = load %struct.b2TreeNode** %C, align 4
  %227 = getelementptr inbounds %struct.b2TreeNode* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  br label %271

; <label>:228                                     ; preds = %177
  %229 = load i32* %iG, align 4
  %230 = load %struct.b2TreeNode** %C, align 4
  %231 = getelementptr inbounds %struct.b2TreeNode* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  %232 = load i32* %iF, align 4
  %233 = load %struct.b2TreeNode** %A, align 4
  %234 = getelementptr inbounds %struct.b2TreeNode* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 4
  %235 = load i32* %3, align 4
  %236 = load %struct.b2TreeNode** %F, align 4
  %237 = getelementptr inbounds %struct.b2TreeNode* %236, i32 0, i32 2
  %238 = bitcast %union.anon* %237 to i32*
  store i32 %235, i32* %238, align 4
  %239 = load %struct.b2TreeNode** %A, align 4
  %240 = getelementptr inbounds %struct.b2TreeNode* %239, i32 0, i32 0
  %241 = load %struct.b2TreeNode** %B, align 4
  %242 = getelementptr inbounds %struct.b2TreeNode* %241, i32 0, i32 0
  %243 = load %struct.b2TreeNode** %F, align 4
  %244 = getelementptr inbounds %struct.b2TreeNode* %243, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %240, %struct.b2AABB* %242, %struct.b2AABB* %244)
  %245 = load %struct.b2TreeNode** %C, align 4
  %246 = getelementptr inbounds %struct.b2TreeNode* %245, i32 0, i32 0
  %247 = load %struct.b2TreeNode** %A, align 4
  %248 = getelementptr inbounds %struct.b2TreeNode* %247, i32 0, i32 0
  %249 = load %struct.b2TreeNode** %G, align 4
  %250 = getelementptr inbounds %struct.b2TreeNode* %249, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %246, %struct.b2AABB* %248, %struct.b2AABB* %250)
  %251 = load %struct.b2TreeNode** %B, align 4
  %252 = getelementptr inbounds %struct.b2TreeNode* %251, i32 0, i32 5
  %253 = load i32* %252, align 4
  %254 = load %struct.b2TreeNode** %F, align 4
  %255 = getelementptr inbounds %struct.b2TreeNode* %254, i32 0, i32 5
  %256 = load i32* %255, align 4
  %257 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %253, i32 %256)
  %258 = add nsw i32 1, %257
  %259 = load %struct.b2TreeNode** %A, align 4
  %260 = getelementptr inbounds %struct.b2TreeNode* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 4
  %261 = load %struct.b2TreeNode** %A, align 4
  %262 = getelementptr inbounds %struct.b2TreeNode* %261, i32 0, i32 5
  %263 = load i32* %262, align 4
  %264 = load %struct.b2TreeNode** %G, align 4
  %265 = getelementptr inbounds %struct.b2TreeNode* %264, i32 0, i32 5
  %266 = load i32* %265, align 4
  %267 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %263, i32 %266)
  %268 = add nsw i32 1, %267
  %269 = load %struct.b2TreeNode** %C, align 4
  %270 = getelementptr inbounds %struct.b2TreeNode* %269, i32 0, i32 5
  store i32 %268, i32* %270, align 4
  br label %271

; <label>:271                                     ; preds = %228, %185
  %272 = load i32* %iC, align 4
  store i32 %272, i32* %1
  br label %481

; <label>:273                                     ; preds = %52
  %274 = load i32* %balance, align 4
  %275 = icmp slt i32 %274, -1
  br i1 %275, label %276, label %479

; <label>:276                                     ; preds = %273
  %277 = load %struct.b2TreeNode** %B, align 4
  %278 = getelementptr inbounds %struct.b2TreeNode* %277, i32 0, i32 3
  %279 = load i32* %278, align 4
  store i32 %279, i32* %iD, align 4
  %280 = load %struct.b2TreeNode** %B, align 4
  %281 = getelementptr inbounds %struct.b2TreeNode* %280, i32 0, i32 4
  %282 = load i32* %281, align 4
  store i32 %282, i32* %iE, align 4
  %283 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %284 = load %struct.b2TreeNode** %283, align 4
  %285 = load i32* %iD, align 4
  %286 = getelementptr inbounds %struct.b2TreeNode* %284, i32 %285
  store %struct.b2TreeNode* %286, %struct.b2TreeNode** %D, align 4
  %287 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %288 = load %struct.b2TreeNode** %287, align 4
  %289 = load i32* %iE, align 4
  %290 = getelementptr inbounds %struct.b2TreeNode* %288, i32 %289
  store %struct.b2TreeNode* %290, %struct.b2TreeNode** %E, align 4
  %291 = load i32* %iD, align 4
  %292 = icmp sle i32 0, %291
  br i1 %292, label %293, label %299

; <label>:293                                     ; preds = %276
  %294 = load i32* %iD, align 4
  %295 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %296 = load i32* %295, align 4
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %299

; <label>:298                                     ; preds = %293
  br label %301

; <label>:299                                     ; preds = %293, %276
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 467, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %301

; <label>:301                                     ; preds = %300, %298
  %302 = load i32* %iE, align 4
  %303 = icmp sle i32 0, %302
  br i1 %303, label %304, label %310

; <label>:304                                     ; preds = %301
  %305 = load i32* %iE, align 4
  %306 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %307 = load i32* %306, align 4
  %308 = icmp slt i32 %305, %307
  br i1 %308, label %309, label %310

; <label>:309                                     ; preds = %304
  br label %312

; <label>:310                                     ; preds = %304, %301
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 468, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %312

; <label>:312                                     ; preds = %311, %309
  %313 = load i32* %3, align 4
  %314 = load %struct.b2TreeNode** %B, align 4
  %315 = getelementptr inbounds %struct.b2TreeNode* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  %316 = load %struct.b2TreeNode** %A, align 4
  %317 = getelementptr inbounds %struct.b2TreeNode* %316, i32 0, i32 2
  %318 = bitcast %union.anon* %317 to i32*
  %319 = load i32* %318, align 4
  %320 = load %struct.b2TreeNode** %B, align 4
  %321 = getelementptr inbounds %struct.b2TreeNode* %320, i32 0, i32 2
  %322 = bitcast %union.anon* %321 to i32*
  store i32 %319, i32* %322, align 4
  %323 = load i32* %iB, align 4
  %324 = load %struct.b2TreeNode** %A, align 4
  %325 = getelementptr inbounds %struct.b2TreeNode* %324, i32 0, i32 2
  %326 = bitcast %union.anon* %325 to i32*
  store i32 %323, i32* %326, align 4
  %327 = load %struct.b2TreeNode** %B, align 4
  %328 = getelementptr inbounds %struct.b2TreeNode* %327, i32 0, i32 2
  %329 = bitcast %union.anon* %328 to i32*
  %330 = load i32* %329, align 4
  %331 = icmp ne i32 %330, -1
  br i1 %331, label %332, label %380

; <label>:332                                     ; preds = %312
  %333 = load %struct.b2TreeNode** %B, align 4
  %334 = getelementptr inbounds %struct.b2TreeNode* %333, i32 0, i32 2
  %335 = bitcast %union.anon* %334 to i32*
  %336 = load i32* %335, align 4
  %337 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %338 = load %struct.b2TreeNode** %337, align 4
  %339 = getelementptr inbounds %struct.b2TreeNode* %338, i32 %336
  %340 = getelementptr inbounds %struct.b2TreeNode* %339, i32 0, i32 3
  %341 = load i32* %340, align 4
  %342 = load i32* %3, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %354

; <label>:344                                     ; preds = %332
  %345 = load i32* %iB, align 4
  %346 = load %struct.b2TreeNode** %B, align 4
  %347 = getelementptr inbounds %struct.b2TreeNode* %346, i32 0, i32 2
  %348 = bitcast %union.anon* %347 to i32*
  %349 = load i32* %348, align 4
  %350 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %351 = load %struct.b2TreeNode** %350, align 4
  %352 = getelementptr inbounds %struct.b2TreeNode* %351, i32 %349
  %353 = getelementptr inbounds %struct.b2TreeNode* %352, i32 0, i32 3
  store i32 %345, i32* %353, align 4
  br label %379

; <label>:354                                     ; preds = %332
  %355 = load %struct.b2TreeNode** %B, align 4
  %356 = getelementptr inbounds %struct.b2TreeNode* %355, i32 0, i32 2
  %357 = bitcast %union.anon* %356 to i32*
  %358 = load i32* %357, align 4
  %359 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %360 = load %struct.b2TreeNode** %359, align 4
  %361 = getelementptr inbounds %struct.b2TreeNode* %360, i32 %358
  %362 = getelementptr inbounds %struct.b2TreeNode* %361, i32 0, i32 4
  %363 = load i32* %362, align 4
  %364 = load i32* %3, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %367

; <label>:366                                     ; preds = %354
  br label %369

; <label>:367                                     ; preds = %354
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__._ZN13b2DynamicTree7BalanceEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %369

; <label>:369                                     ; preds = %368, %366
  %370 = load i32* %iB, align 4
  %371 = load %struct.b2TreeNode** %B, align 4
  %372 = getelementptr inbounds %struct.b2TreeNode* %371, i32 0, i32 2
  %373 = bitcast %union.anon* %372 to i32*
  %374 = load i32* %373, align 4
  %375 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %376 = load %struct.b2TreeNode** %375, align 4
  %377 = getelementptr inbounds %struct.b2TreeNode* %376, i32 %374
  %378 = getelementptr inbounds %struct.b2TreeNode* %377, i32 0, i32 4
  store i32 %370, i32* %378, align 4
  br label %379

; <label>:379                                     ; preds = %369, %344
  br label %383

; <label>:380                                     ; preds = %312
  %381 = load i32* %iB, align 4
  %382 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 0
  store i32 %381, i32* %382, align 4
  br label %383

; <label>:383                                     ; preds = %380, %379
  %384 = load %struct.b2TreeNode** %D, align 4
  %385 = getelementptr inbounds %struct.b2TreeNode* %384, i32 0, i32 5
  %386 = load i32* %385, align 4
  %387 = load %struct.b2TreeNode** %E, align 4
  %388 = getelementptr inbounds %struct.b2TreeNode* %387, i32 0, i32 5
  %389 = load i32* %388, align 4
  %390 = icmp sgt i32 %386, %389
  br i1 %390, label %391, label %434

; <label>:391                                     ; preds = %383
  %392 = load i32* %iD, align 4
  %393 = load %struct.b2TreeNode** %B, align 4
  %394 = getelementptr inbounds %struct.b2TreeNode* %393, i32 0, i32 4
  store i32 %392, i32* %394, align 4
  %395 = load i32* %iE, align 4
  %396 = load %struct.b2TreeNode** %A, align 4
  %397 = getelementptr inbounds %struct.b2TreeNode* %396, i32 0, i32 3
  store i32 %395, i32* %397, align 4
  %398 = load i32* %3, align 4
  %399 = load %struct.b2TreeNode** %E, align 4
  %400 = getelementptr inbounds %struct.b2TreeNode* %399, i32 0, i32 2
  %401 = bitcast %union.anon* %400 to i32*
  store i32 %398, i32* %401, align 4
  %402 = load %struct.b2TreeNode** %A, align 4
  %403 = getelementptr inbounds %struct.b2TreeNode* %402, i32 0, i32 0
  %404 = load %struct.b2TreeNode** %C, align 4
  %405 = getelementptr inbounds %struct.b2TreeNode* %404, i32 0, i32 0
  %406 = load %struct.b2TreeNode** %E, align 4
  %407 = getelementptr inbounds %struct.b2TreeNode* %406, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %403, %struct.b2AABB* %405, %struct.b2AABB* %407)
  %408 = load %struct.b2TreeNode** %B, align 4
  %409 = getelementptr inbounds %struct.b2TreeNode* %408, i32 0, i32 0
  %410 = load %struct.b2TreeNode** %A, align 4
  %411 = getelementptr inbounds %struct.b2TreeNode* %410, i32 0, i32 0
  %412 = load %struct.b2TreeNode** %D, align 4
  %413 = getelementptr inbounds %struct.b2TreeNode* %412, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %409, %struct.b2AABB* %411, %struct.b2AABB* %413)
  %414 = load %struct.b2TreeNode** %C, align 4
  %415 = getelementptr inbounds %struct.b2TreeNode* %414, i32 0, i32 5
  %416 = load i32* %415, align 4
  %417 = load %struct.b2TreeNode** %E, align 4
  %418 = getelementptr inbounds %struct.b2TreeNode* %417, i32 0, i32 5
  %419 = load i32* %418, align 4
  %420 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %416, i32 %419)
  %421 = add nsw i32 1, %420
  %422 = load %struct.b2TreeNode** %A, align 4
  %423 = getelementptr inbounds %struct.b2TreeNode* %422, i32 0, i32 5
  store i32 %421, i32* %423, align 4
  %424 = load %struct.b2TreeNode** %A, align 4
  %425 = getelementptr inbounds %struct.b2TreeNode* %424, i32 0, i32 5
  %426 = load i32* %425, align 4
  %427 = load %struct.b2TreeNode** %D, align 4
  %428 = getelementptr inbounds %struct.b2TreeNode* %427, i32 0, i32 5
  %429 = load i32* %428, align 4
  %430 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %426, i32 %429)
  %431 = add nsw i32 1, %430
  %432 = load %struct.b2TreeNode** %B, align 4
  %433 = getelementptr inbounds %struct.b2TreeNode* %432, i32 0, i32 5
  store i32 %431, i32* %433, align 4
  br label %477

; <label>:434                                     ; preds = %383
  %435 = load i32* %iE, align 4
  %436 = load %struct.b2TreeNode** %B, align 4
  %437 = getelementptr inbounds %struct.b2TreeNode* %436, i32 0, i32 4
  store i32 %435, i32* %437, align 4
  %438 = load i32* %iD, align 4
  %439 = load %struct.b2TreeNode** %A, align 4
  %440 = getelementptr inbounds %struct.b2TreeNode* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 4
  %441 = load i32* %3, align 4
  %442 = load %struct.b2TreeNode** %D, align 4
  %443 = getelementptr inbounds %struct.b2TreeNode* %442, i32 0, i32 2
  %444 = bitcast %union.anon* %443 to i32*
  store i32 %441, i32* %444, align 4
  %445 = load %struct.b2TreeNode** %A, align 4
  %446 = getelementptr inbounds %struct.b2TreeNode* %445, i32 0, i32 0
  %447 = load %struct.b2TreeNode** %C, align 4
  %448 = getelementptr inbounds %struct.b2TreeNode* %447, i32 0, i32 0
  %449 = load %struct.b2TreeNode** %D, align 4
  %450 = getelementptr inbounds %struct.b2TreeNode* %449, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %446, %struct.b2AABB* %448, %struct.b2AABB* %450)
  %451 = load %struct.b2TreeNode** %B, align 4
  %452 = getelementptr inbounds %struct.b2TreeNode* %451, i32 0, i32 0
  %453 = load %struct.b2TreeNode** %A, align 4
  %454 = getelementptr inbounds %struct.b2TreeNode* %453, i32 0, i32 0
  %455 = load %struct.b2TreeNode** %E, align 4
  %456 = getelementptr inbounds %struct.b2TreeNode* %455, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %452, %struct.b2AABB* %454, %struct.b2AABB* %456)
  %457 = load %struct.b2TreeNode** %C, align 4
  %458 = getelementptr inbounds %struct.b2TreeNode* %457, i32 0, i32 5
  %459 = load i32* %458, align 4
  %460 = load %struct.b2TreeNode** %D, align 4
  %461 = getelementptr inbounds %struct.b2TreeNode* %460, i32 0, i32 5
  %462 = load i32* %461, align 4
  %463 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %459, i32 %462)
  %464 = add nsw i32 1, %463
  %465 = load %struct.b2TreeNode** %A, align 4
  %466 = getelementptr inbounds %struct.b2TreeNode* %465, i32 0, i32 5
  store i32 %464, i32* %466, align 4
  %467 = load %struct.b2TreeNode** %A, align 4
  %468 = getelementptr inbounds %struct.b2TreeNode* %467, i32 0, i32 5
  %469 = load i32* %468, align 4
  %470 = load %struct.b2TreeNode** %E, align 4
  %471 = getelementptr inbounds %struct.b2TreeNode* %470, i32 0, i32 5
  %472 = load i32* %471, align 4
  %473 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %469, i32 %472)
  %474 = add nsw i32 1, %473
  %475 = load %struct.b2TreeNode** %B, align 4
  %476 = getelementptr inbounds %struct.b2TreeNode* %475, i32 0, i32 5
  store i32 %474, i32* %476, align 4
  br label %477

; <label>:477                                     ; preds = %434, %391
  %478 = load i32* %iB, align 4
  store i32 %478, i32* %1
  br label %481

; <label>:479                                     ; preds = %273
  %480 = load i32* %3, align 4
  store i32 %480, i32* %1
  br label %481

; <label>:481                                     ; preds = %479, %477, %271, %22
  %482 = load i32* %1
  ret i32 %482
}

define linkonce_odr i32 @_Z5b2MaxIiET_S0_S0_(i32 %a, i32 %b) nounwind inlinehint {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = icmp sgt i32 %3, %4
  %6 = load i32* %1, align 4
  %7 = load i32* %2, align 4
  %8 = select i1 %5, i32 %6, i32 %7
  ret i32 %8
}

define i32 @_ZNK13b2DynamicTree9GetHeightEv(%class.b2DynamicTree* %this) nounwind align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.b2DynamicTree*, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %2, align 4
  %3 = load %class.b2DynamicTree** %2
  %4 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %16

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %12 = load %struct.b2TreeNode** %11, align 4
  %13 = getelementptr inbounds %struct.b2TreeNode* %12, i32 %10
  %14 = getelementptr inbounds %struct.b2TreeNode* %13, i32 0, i32 5
  %15 = load i32* %14, align 4
  store i32 %15, i32* %1
  br label %16

; <label>:16                                      ; preds = %8, %7
  %17 = load i32* %1
  ret i32 %17
}

define float @_ZNK13b2DynamicTree12GetAreaRatioEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca float, align 4
  %2 = alloca %class.b2DynamicTree*, align 4
  %root = alloca %struct.b2TreeNode*, align 4
  %rootArea = alloca float, align 4
  %totalArea = alloca float, align 4
  %i = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %2, align 4
  %3 = load %class.b2DynamicTree** %2
  %4 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store float 0.000000e+00, float* %1
  br label %45

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %10 = load %struct.b2TreeNode** %9, align 4
  %11 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %12 = load i32* %11, align 4
  %13 = getelementptr inbounds %struct.b2TreeNode* %10, i32 %12
  store %struct.b2TreeNode* %13, %struct.b2TreeNode** %root, align 4
  %14 = load %struct.b2TreeNode** %root, align 4
  %15 = getelementptr inbounds %struct.b2TreeNode* %14, i32 0, i32 0
  %16 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %15)
  store float %16, float* %rootArea, align 4
  store float 0.000000e+00, float* %totalArea, align 4
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %38, %8
  %18 = load i32* %i, align 4
  %19 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %20 = load i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %41

; <label>:22                                      ; preds = %17
  %23 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %24 = load %struct.b2TreeNode** %23, align 4
  %25 = load i32* %i, align 4
  %26 = getelementptr inbounds %struct.b2TreeNode* %24, i32 %25
  store %struct.b2TreeNode* %26, %struct.b2TreeNode** %node, align 4
  %27 = load %struct.b2TreeNode** %node, align 4
  %28 = getelementptr inbounds %struct.b2TreeNode* %27, i32 0, i32 5
  %29 = load i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %22
  br label %38

; <label>:32                                      ; preds = %22
  %33 = load %struct.b2TreeNode** %node, align 4
  %34 = getelementptr inbounds %struct.b2TreeNode* %33, i32 0, i32 0
  %35 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %34)
  %36 = load float* %totalArea, align 4
  %37 = fadd float %36, %35
  store float %37, float* %totalArea, align 4
  br label %38

; <label>:38                                      ; preds = %32, %31
  %39 = load i32* %i, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i, align 4
  br label %17

; <label>:41                                      ; preds = %17
  %42 = load float* %totalArea, align 4
  %43 = load float* %rootArea, align 4
  %44 = fdiv float %42, %43
  store float %44, float* %1
  br label %45

; <label>:45                                      ; preds = %41, %7
  %46 = load float* %1
  ret float %46
}

define i32 @_ZNK13b2DynamicTree13ComputeHeightEi(%class.b2DynamicTree* %this, i32 %nodeId) align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.b2DynamicTree*, align 4
  %3 = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %height1 = alloca i32, align 4
  %height2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %2, align 4
  store i32 %nodeId, i32* %3, align 4
  %4 = load %class.b2DynamicTree** %2
  %5 = load i32* %3, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4
  %9 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 3
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 563, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree13ComputeHeightEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %class.b2DynamicTree* %4, i32 0, i32 1
  %17 = load %struct.b2TreeNode** %16, align 4
  %18 = load i32* %3, align 4
  %19 = getelementptr inbounds %struct.b2TreeNode* %17, i32 %18
  store %struct.b2TreeNode* %19, %struct.b2TreeNode** %node, align 4
  %20 = load %struct.b2TreeNode** %node, align 4
  %21 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %20)
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  store i32 0, i32* %1
  br label %36

; <label>:23                                      ; preds = %15
  %24 = load %struct.b2TreeNode** %node, align 4
  %25 = getelementptr inbounds %struct.b2TreeNode* %24, i32 0, i32 3
  %26 = load i32* %25, align 4
  %27 = call i32 @_ZNK13b2DynamicTree13ComputeHeightEi(%class.b2DynamicTree* %4, i32 %26)
  store i32 %27, i32* %height1, align 4
  %28 = load %struct.b2TreeNode** %node, align 4
  %29 = getelementptr inbounds %struct.b2TreeNode* %28, i32 0, i32 4
  %30 = load i32* %29, align 4
  %31 = call i32 @_ZNK13b2DynamicTree13ComputeHeightEi(%class.b2DynamicTree* %4, i32 %30)
  store i32 %31, i32* %height2, align 4
  %32 = load i32* %height1, align 4
  %33 = load i32* %height2, align 4
  %34 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %32, i32 %33)
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %1
  br label %36

; <label>:36                                      ; preds = %23, %22
  %37 = load i32* %1
  ret i32 %37
}

define i32 @_ZNK13b2DynamicTree13ComputeHeightEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %height = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = call i32 @_ZNK13b2DynamicTree13ComputeHeightEi(%class.b2DynamicTree* %2, i32 %4)
  store i32 %5, i32* %height, align 4
  %6 = load i32* %height, align 4
  ret i32 %6
}

define void @_ZNK13b2DynamicTree17ValidateStructureEi(%class.b2DynamicTree* %this, i32 %index) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %child1 = alloca i32, align 4
  %child2 = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %index, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = load i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %110

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4
  %9 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %7
  %13 = load i32* %2, align 4
  %14 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %15 = load %struct.b2TreeNode** %14, align 4
  %16 = getelementptr inbounds %struct.b2TreeNode* %15, i32 %13
  %17 = getelementptr inbounds %struct.b2TreeNode* %16, i32 0, i32 2
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %12
  br label %24

; <label>:22                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 591, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  br label %25

; <label>:25                                      ; preds = %24, %7
  %26 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %27 = load %struct.b2TreeNode** %26, align 4
  %28 = load i32* %2, align 4
  %29 = getelementptr inbounds %struct.b2TreeNode* %27, i32 %28
  store %struct.b2TreeNode* %29, %struct.b2TreeNode** %node, align 4
  %30 = load %struct.b2TreeNode** %node, align 4
  %31 = getelementptr inbounds %struct.b2TreeNode* %30, i32 0, i32 3
  %32 = load i32* %31, align 4
  store i32 %32, i32* %child1, align 4
  %33 = load %struct.b2TreeNode** %node, align 4
  %34 = getelementptr inbounds %struct.b2TreeNode* %33, i32 0, i32 4
  %35 = load i32* %34, align 4
  store i32 %35, i32* %child2, align 4
  %36 = load %struct.b2TreeNode** %node, align 4
  %37 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %36)
  br i1 %37, label %38, label %59

; <label>:38                                      ; preds = %25
  %39 = load i32* %child1, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %38
  br label %44

; <label>:42                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 601, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  %45 = load i32* %child2, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %44
  br label %50

; <label>:48                                      ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 602, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  %51 = load %struct.b2TreeNode** %node, align 4
  %52 = getelementptr inbounds %struct.b2TreeNode* %51, i32 0, i32 5
  %53 = load i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %50
  br label %58

; <label>:56                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %58

; <label>:58                                      ; preds = %57, %55
  br label %110

; <label>:59                                      ; preds = %25
  %60 = load i32* %child1, align 4
  %61 = icmp sle i32 0, %60
  br i1 %61, label %62, label %68

; <label>:62                                      ; preds = %59
  %63 = load i32* %child1, align 4
  %64 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %65 = load i32* %64, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %62
  br label %70

; <label>:68                                      ; preds = %62, %59
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 607, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:70                                      ; preds = %69, %67
  %71 = load i32* %child2, align 4
  %72 = icmp sle i32 0, %71
  br i1 %72, label %73, label %79

; <label>:73                                      ; preds = %70
  %74 = load i32* %child2, align 4
  %75 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %76 = load i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %73
  br label %81

; <label>:79                                      ; preds = %73, %70
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 608, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = load i32* %child1, align 4
  %83 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %84 = load %struct.b2TreeNode** %83, align 4
  %85 = getelementptr inbounds %struct.b2TreeNode* %84, i32 %82
  %86 = getelementptr inbounds %struct.b2TreeNode* %85, i32 0, i32 2
  %87 = bitcast %union.anon* %86 to i32*
  %88 = load i32* %87, align 4
  %89 = load i32* %2, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %81
  br label %94

; <label>:92                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 610, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  %95 = load i32* %child2, align 4
  %96 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %97 = load %struct.b2TreeNode** %96, align 4
  %98 = getelementptr inbounds %struct.b2TreeNode* %97, i32 %95
  %99 = getelementptr inbounds %struct.b2TreeNode* %98, i32 0, i32 2
  %100 = bitcast %union.anon* %99 to i32*
  %101 = load i32* %100, align 4
  %102 = load i32* %2, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %94
  br label %107

; <label>:105                                     ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 611, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree17ValidateStructureEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  %108 = load i32* %child1, align 4
  call void @_ZNK13b2DynamicTree17ValidateStructureEi(%class.b2DynamicTree* %3, i32 %108)
  %109 = load i32* %child2, align 4
  call void @_ZNK13b2DynamicTree17ValidateStructureEi(%class.b2DynamicTree* %3, i32 %109)
  br label %110

; <label>:110                                     ; preds = %107, %58, %6
  ret void
}

define void @_ZNK13b2DynamicTree15ValidateMetricsEi(%class.b2DynamicTree* %this, i32 %index) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %2 = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %child1 = alloca i32, align 4
  %child2 = alloca i32, align 4
  %height1 = alloca i32, align 4
  %height2 = alloca i32, align 4
  %height = alloca i32, align 4
  %aabb = alloca %struct.b2AABB, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  store i32 %index, i32* %2, align 4
  %3 = load %class.b2DynamicTree** %1
  %4 = load i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %119

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %9 = load %struct.b2TreeNode** %8, align 4
  %10 = load i32* %2, align 4
  %11 = getelementptr inbounds %struct.b2TreeNode* %9, i32 %10
  store %struct.b2TreeNode* %11, %struct.b2TreeNode** %node, align 4
  %12 = load %struct.b2TreeNode** %node, align 4
  %13 = getelementptr inbounds %struct.b2TreeNode* %12, i32 0, i32 3
  %14 = load i32* %13, align 4
  store i32 %14, i32* %child1, align 4
  %15 = load %struct.b2TreeNode** %node, align 4
  %16 = getelementptr inbounds %struct.b2TreeNode* %15, i32 0, i32 4
  %17 = load i32* %16, align 4
  store i32 %17, i32* %child2, align 4
  %18 = load %struct.b2TreeNode** %node, align 4
  %19 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %18)
  br i1 %19, label %20, label %41

; <label>:20                                      ; preds = %7
  %21 = load i32* %child1, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %26

; <label>:24                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 631, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = load i32* %child2, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %26
  br label %32

; <label>:30                                      ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 632, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load %struct.b2TreeNode** %node, align 4
  %34 = getelementptr inbounds %struct.b2TreeNode* %33, i32 0, i32 5
  %35 = load i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %32
  br label %40

; <label>:38                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 633, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  br label %119

; <label>:41                                      ; preds = %7
  %42 = load i32* %child1, align 4
  %43 = icmp sle i32 0, %42
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %41
  %45 = load i32* %child1, align 4
  %46 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %47 = load i32* %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %44
  br label %52

; <label>:50                                      ; preds = %44, %41
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 637, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = load i32* %child2, align 4
  %54 = icmp sle i32 0, %53
  br i1 %54, label %55, label %61

; <label>:55                                      ; preds = %52
  %56 = load i32* %child2, align 4
  %57 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 3
  %58 = load i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %55
  br label %63

; <label>:61                                      ; preds = %55, %52
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 638, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:63                                      ; preds = %62, %60
  %64 = load i32* %child1, align 4
  %65 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %66 = load %struct.b2TreeNode** %65, align 4
  %67 = getelementptr inbounds %struct.b2TreeNode* %66, i32 %64
  %68 = getelementptr inbounds %struct.b2TreeNode* %67, i32 0, i32 5
  %69 = load i32* %68, align 4
  store i32 %69, i32* %height1, align 4
  %70 = load i32* %child2, align 4
  %71 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %72 = load %struct.b2TreeNode** %71, align 4
  %73 = getelementptr inbounds %struct.b2TreeNode* %72, i32 %70
  %74 = getelementptr inbounds %struct.b2TreeNode* %73, i32 0, i32 5
  %75 = load i32* %74, align 4
  store i32 %75, i32* %height2, align 4
  %76 = load i32* %height1, align 4
  %77 = load i32* %height2, align 4
  %78 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %76, i32 %77)
  %79 = add nsw i32 1, %78
  store i32 %79, i32* %height, align 4
  %80 = load %struct.b2TreeNode** %node, align 4
  %81 = getelementptr inbounds %struct.b2TreeNode* %80, i32 0, i32 5
  %82 = load i32* %81, align 4
  %83 = load i32* %height, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %63
  br label %88

; <label>:86                                      ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 644, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %88

; <label>:88                                      ; preds = %87, %85
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %aabb)
  %89 = load i32* %child1, align 4
  %90 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %91 = load %struct.b2TreeNode** %90, align 4
  %92 = getelementptr inbounds %struct.b2TreeNode* %91, i32 %89
  %93 = getelementptr inbounds %struct.b2TreeNode* %92, i32 0, i32 0
  %94 = load i32* %child2, align 4
  %95 = getelementptr inbounds %class.b2DynamicTree* %3, i32 0, i32 1
  %96 = load %struct.b2TreeNode** %95, align 4
  %97 = getelementptr inbounds %struct.b2TreeNode* %96, i32 %94
  %98 = getelementptr inbounds %struct.b2TreeNode* %97, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %aabb, %struct.b2AABB* %93, %struct.b2AABB* %98)
  %99 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 0
  %100 = load %struct.b2TreeNode** %node, align 4
  %101 = getelementptr inbounds %struct.b2TreeNode* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.b2AABB* %101, i32 0, i32 0
  %103 = call zeroext i1 @_ZeqRK6b2Vec2S1_(%struct.b2Vec2* %99, %struct.b2Vec2* %102)
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %88
  br label %107

; <label>:105                                     ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 649, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  %108 = getelementptr inbounds %struct.b2AABB* %aabb, i32 0, i32 1
  %109 = load %struct.b2TreeNode** %node, align 4
  %110 = getelementptr inbounds %struct.b2TreeNode* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.b2AABB* %110, i32 0, i32 1
  %112 = call zeroext i1 @_ZeqRK6b2Vec2S1_(%struct.b2Vec2* %108, %struct.b2Vec2* %111)
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %107
  br label %116

; <label>:114                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 650, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree15ValidateMetricsEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %116

; <label>:116                                     ; preds = %115, %113
  %117 = load i32* %child1, align 4
  call void @_ZNK13b2DynamicTree15ValidateMetricsEi(%class.b2DynamicTree* %3, i32 %117)
  %118 = load i32* %child2, align 4
  call void @_ZNK13b2DynamicTree15ValidateMetricsEi(%class.b2DynamicTree* %3, i32 %118)
  br label %119

; <label>:119                                     ; preds = %116, %40, %6
  ret void
}

define linkonce_odr zeroext i1 @_ZeqRK6b2Vec2S1_(%struct.b2Vec2* %a, %struct.b2Vec2* %b) nounwind inlinehint {
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
  %9 = fcmp oeq float %5, %8
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %0
  %11 = load %struct.b2Vec2** %1
  %12 = getelementptr inbounds %struct.b2Vec2* %11, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = load %struct.b2Vec2** %2
  %15 = getelementptr inbounds %struct.b2Vec2* %14, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = fcmp oeq float %13, %16
  br label %18

; <label>:18                                      ; preds = %10, %0
  %19 = phi i1 [ false, %0 ], [ %17, %10 ]
  ret i1 %19
}

define void @_ZNK13b2DynamicTree8ValidateEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %freeCount = alloca i32, align 4
  %freeIndex = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  call void @_ZNK13b2DynamicTree17ValidateStructureEi(%class.b2DynamicTree* %2, i32 %4)
  %5 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 0
  %6 = load i32* %5, align 4
  call void @_ZNK13b2DynamicTree15ValidateMetricsEi(%class.b2DynamicTree* %2, i32 %6)
  store i32 0, i32* %freeCount, align 4
  %7 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 4
  %8 = load i32* %7, align 4
  store i32 %8, i32* %freeIndex, align 4
  br label %9

; <label>:9                                       ; preds = %23, %0
  %10 = load i32* %freeIndex, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %9
  %13 = load i32* %freeIndex, align 4
  %14 = icmp sle i32 0, %13
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %12
  %16 = load i32* %freeIndex, align 4
  %17 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %18 = load i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %15
  br label %23

; <label>:21                                      ; preds = %15, %12
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 665, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree8ValidateEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load i32* %freeIndex, align 4
  %25 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %26 = load %struct.b2TreeNode** %25, align 4
  %27 = getelementptr inbounds %struct.b2TreeNode* %26, i32 %24
  %28 = getelementptr inbounds %struct.b2TreeNode* %27, i32 0, i32 2
  %29 = bitcast %union.anon* %28 to i32*
  %30 = load i32* %29, align 4
  store i32 %30, i32* %freeIndex, align 4
  %31 = load i32* %freeCount, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %freeCount, align 4
  br label %9

; <label>:33                                      ; preds = %9
  %34 = call i32 @_ZNK13b2DynamicTree9GetHeightEv(%class.b2DynamicTree* %2)
  %35 = call i32 @_ZNK13b2DynamicTree13ComputeHeightEv(%class.b2DynamicTree* %2)
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %33
  br label %40

; <label>:38                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 670, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree8ValidateEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  %41 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %42 = load i32* %41, align 4
  %43 = load i32* %freeCount, align 4
  %44 = add nsw i32 %42, %43
  %45 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %46 = load i32* %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %40
  br label %51

; <label>:49                                      ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 672, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree8ValidateEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  ret void
}

define i32 @_ZNK13b2DynamicTree13GetMaxBalanceEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %maxBalance = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca %struct.b2TreeNode*, align 4
  %child1 = alloca i32, align 4
  %child2 = alloca i32, align 4
  %balance = alloca i32, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  store i32 0, i32* %maxBalance, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %50, %0
  %4 = load i32* %i, align 4
  %5 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %53

; <label>:8                                       ; preds = %3
  %9 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %10 = load %struct.b2TreeNode** %9, align 4
  %11 = load i32* %i, align 4
  %12 = getelementptr inbounds %struct.b2TreeNode* %10, i32 %11
  store %struct.b2TreeNode* %12, %struct.b2TreeNode** %node, align 4
  %13 = load %struct.b2TreeNode** %node, align 4
  %14 = getelementptr inbounds %struct.b2TreeNode* %13, i32 0, i32 5
  %15 = load i32* %14, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %8
  br label %50

; <label>:18                                      ; preds = %8
  %19 = load %struct.b2TreeNode** %node, align 4
  %20 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %19)
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  br label %26

; <label>:24                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0), i32 686, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__._ZNK13b2DynamicTree13GetMaxBalanceEv, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = load %struct.b2TreeNode** %node, align 4
  %28 = getelementptr inbounds %struct.b2TreeNode* %27, i32 0, i32 3
  %29 = load i32* %28, align 4
  store i32 %29, i32* %child1, align 4
  %30 = load %struct.b2TreeNode** %node, align 4
  %31 = getelementptr inbounds %struct.b2TreeNode* %30, i32 0, i32 4
  %32 = load i32* %31, align 4
  store i32 %32, i32* %child2, align 4
  %33 = load i32* %child2, align 4
  %34 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %35 = load %struct.b2TreeNode** %34, align 4
  %36 = getelementptr inbounds %struct.b2TreeNode* %35, i32 %33
  %37 = getelementptr inbounds %struct.b2TreeNode* %36, i32 0, i32 5
  %38 = load i32* %37, align 4
  %39 = load i32* %child1, align 4
  %40 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %41 = load %struct.b2TreeNode** %40, align 4
  %42 = getelementptr inbounds %struct.b2TreeNode* %41, i32 %39
  %43 = getelementptr inbounds %struct.b2TreeNode* %42, i32 0, i32 5
  %44 = load i32* %43, align 4
  %45 = sub nsw i32 %38, %44
  %46 = call i32 @_Z5b2AbsIiET_S0_(i32 %45)
  store i32 %46, i32* %balance, align 4
  %47 = load i32* %maxBalance, align 4
  %48 = load i32* %balance, align 4
  %49 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %47, i32 %48)
  store i32 %49, i32* %maxBalance, align 4
  br label %50

; <label>:50                                      ; preds = %26, %17
  %51 = load i32* %i, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i, align 4
  br label %3

; <label>:53                                      ; preds = %3
  %54 = load i32* %maxBalance, align 4
  ret i32 %54
}

define linkonce_odr i32 @_Z5b2AbsIiET_S0_(i32 %a) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i32* %1, align 4
  %8 = sub nsw i32 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  ret i32 %10
}

define void @_ZN13b2DynamicTree15RebuildBottomUpEv(%class.b2DynamicTree* %this) align 2 {
  %1 = alloca %class.b2DynamicTree*, align 4
  %nodes = alloca i32*, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %minCost = alloca float, align 4
  %iMin = alloca i32, align 4
  %jMin = alloca i32, align 4
  %i1 = alloca i32, align 4
  %aabbi = alloca %struct.b2AABB, align 4
  %j = alloca i32, align 4
  %aabbj = alloca %struct.b2AABB, align 4
  %b = alloca %struct.b2AABB, align 4
  %cost = alloca float, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %child1 = alloca %struct.b2TreeNode*, align 4
  %child2 = alloca %struct.b2TreeNode*, align 4
  %parentIndex = alloca i32, align 4
  %parent = alloca %struct.b2TreeNode*, align 4
  store %class.b2DynamicTree* %this, %class.b2DynamicTree** %1, align 4
  %2 = load %class.b2DynamicTree** %1
  %3 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = mul i32 %4, 4
  %6 = call i8* @_Z7b2Alloci(i32 %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %nodes, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %44, %0
  %9 = load i32* %i, align 4
  %10 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 3
  %11 = load i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %47

; <label>:13                                      ; preds = %8
  %14 = load i32* %i, align 4
  %15 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %16 = load %struct.b2TreeNode** %15, align 4
  %17 = getelementptr inbounds %struct.b2TreeNode* %16, i32 %14
  %18 = getelementptr inbounds %struct.b2TreeNode* %17, i32 0, i32 5
  %19 = load i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  br label %44

; <label>:22                                      ; preds = %13
  %23 = load i32* %i, align 4
  %24 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %25 = load %struct.b2TreeNode** %24, align 4
  %26 = getelementptr inbounds %struct.b2TreeNode* %25, i32 %23
  %27 = call zeroext i1 @_ZNK10b2TreeNode6IsLeafEv(%struct.b2TreeNode* %26)
  br i1 %27, label %28, label %41

; <label>:28                                      ; preds = %22
  %29 = load i32* %i, align 4
  %30 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %31 = load %struct.b2TreeNode** %30, align 4
  %32 = getelementptr inbounds %struct.b2TreeNode* %31, i32 %29
  %33 = getelementptr inbounds %struct.b2TreeNode* %32, i32 0, i32 2
  %34 = bitcast %union.anon* %33 to i32*
  store i32 -1, i32* %34, align 4
  %35 = load i32* %i, align 4
  %36 = load i32* %count, align 4
  %37 = load i32** %nodes, align 4
  %38 = getelementptr inbounds i32* %37, i32 %36
  store i32 %35, i32* %38
  %39 = load i32* %count, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %count, align 4
  br label %43

; <label>:41                                      ; preds = %22
  %42 = load i32* %i, align 4
  call void @_ZN13b2DynamicTree8FreeNodeEi(%class.b2DynamicTree* %2, i32 %42)
  br label %43

; <label>:43                                      ; preds = %41, %28
  br label %44

; <label>:44                                      ; preds = %43, %21
  %45 = load i32* %i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4
  br label %8

; <label>:47                                      ; preds = %8
  br label %48

; <label>:48                                      ; preds = %100, %47
  %49 = load i32* %count, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %169

; <label>:51                                      ; preds = %48
  store float 0x47EFFFFFE0000000, float* %minCost, align 4
  store i32 -1, i32* %iMin, align 4
  store i32 -1, i32* %jMin, align 4
  store i32 0, i32* %i1, align 4
  br label %52

; <label>:52                                      ; preds = %97, %51
  %53 = load i32* %i1, align 4
  %54 = load i32* %count, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %100

; <label>:56                                      ; preds = %52
  %57 = load i32* %i1, align 4
  %58 = load i32** %nodes, align 4
  %59 = getelementptr inbounds i32* %58, i32 %57
  %60 = load i32* %59
  %61 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %62 = load %struct.b2TreeNode** %61, align 4
  %63 = getelementptr inbounds %struct.b2TreeNode* %62, i32 %60
  %64 = getelementptr inbounds %struct.b2TreeNode* %63, i32 0, i32 0
  %65 = bitcast %struct.b2AABB* %aabbi to i8*
  %66 = bitcast %struct.b2AABB* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %66, i32 16, i32 4, i1 false)
  %67 = load i32* %i1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %j, align 4
  br label %69

; <label>:69                                      ; preds = %93, %56
  %70 = load i32* %j, align 4
  %71 = load i32* %count, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %96

; <label>:73                                      ; preds = %69
  %74 = load i32* %j, align 4
  %75 = load i32** %nodes, align 4
  %76 = getelementptr inbounds i32* %75, i32 %74
  %77 = load i32* %76
  %78 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %79 = load %struct.b2TreeNode** %78, align 4
  %80 = getelementptr inbounds %struct.b2TreeNode* %79, i32 %77
  %81 = getelementptr inbounds %struct.b2TreeNode* %80, i32 0, i32 0
  %82 = bitcast %struct.b2AABB* %aabbj to i8*
  %83 = bitcast %struct.b2AABB* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 16, i32 4, i1 false)
  call void @_ZN6b2AABBC1Ev(%struct.b2AABB* %b)
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %b, %struct.b2AABB* %aabbi, %struct.b2AABB* %aabbj)
  %84 = call float @_ZNK6b2AABB12GetPerimeterEv(%struct.b2AABB* %b)
  store float %84, float* %cost, align 4
  %85 = load float* %cost, align 4
  %86 = load float* %minCost, align 4
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %92

; <label>:88                                      ; preds = %73
  %89 = load i32* %i1, align 4
  store i32 %89, i32* %iMin, align 4
  %90 = load i32* %j, align 4
  store i32 %90, i32* %jMin, align 4
  %91 = load float* %cost, align 4
  store float %91, float* %minCost, align 4
  br label %92

; <label>:92                                      ; preds = %88, %73
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %j, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %j, align 4
  br label %69

; <label>:96                                      ; preds = %69
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %i1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %i1, align 4
  br label %52

; <label>:100                                     ; preds = %52
  %101 = load i32* %iMin, align 4
  %102 = load i32** %nodes, align 4
  %103 = getelementptr inbounds i32* %102, i32 %101
  %104 = load i32* %103
  store i32 %104, i32* %index1, align 4
  %105 = load i32* %jMin, align 4
  %106 = load i32** %nodes, align 4
  %107 = getelementptr inbounds i32* %106, i32 %105
  %108 = load i32* %107
  store i32 %108, i32* %index2, align 4
  %109 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %110 = load %struct.b2TreeNode** %109, align 4
  %111 = load i32* %index1, align 4
  %112 = getelementptr inbounds %struct.b2TreeNode* %110, i32 %111
  store %struct.b2TreeNode* %112, %struct.b2TreeNode** %child1, align 4
  %113 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %114 = load %struct.b2TreeNode** %113, align 4
  %115 = load i32* %index2, align 4
  %116 = getelementptr inbounds %struct.b2TreeNode* %114, i32 %115
  store %struct.b2TreeNode* %116, %struct.b2TreeNode** %child2, align 4
  %117 = call i32 @_ZN13b2DynamicTree12AllocateNodeEv(%class.b2DynamicTree* %2)
  store i32 %117, i32* %parentIndex, align 4
  %118 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 1
  %119 = load %struct.b2TreeNode** %118, align 4
  %120 = load i32* %parentIndex, align 4
  %121 = getelementptr inbounds %struct.b2TreeNode* %119, i32 %120
  store %struct.b2TreeNode* %121, %struct.b2TreeNode** %parent, align 4
  %122 = load i32* %index1, align 4
  %123 = load %struct.b2TreeNode** %parent, align 4
  %124 = getelementptr inbounds %struct.b2TreeNode* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32* %index2, align 4
  %126 = load %struct.b2TreeNode** %parent, align 4
  %127 = getelementptr inbounds %struct.b2TreeNode* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.b2TreeNode** %child1, align 4
  %129 = getelementptr inbounds %struct.b2TreeNode* %128, i32 0, i32 5
  %130 = load i32* %129, align 4
  %131 = load %struct.b2TreeNode** %child2, align 4
  %132 = getelementptr inbounds %struct.b2TreeNode* %131, i32 0, i32 5
  %133 = load i32* %132, align 4
  %134 = call i32 @_Z5b2MaxIiET_S0_S0_(i32 %130, i32 %133)
  %135 = add nsw i32 1, %134
  %136 = load %struct.b2TreeNode** %parent, align 4
  %137 = getelementptr inbounds %struct.b2TreeNode* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load %struct.b2TreeNode** %parent, align 4
  %139 = getelementptr inbounds %struct.b2TreeNode* %138, i32 0, i32 0
  %140 = load %struct.b2TreeNode** %child1, align 4
  %141 = getelementptr inbounds %struct.b2TreeNode* %140, i32 0, i32 0
  %142 = load %struct.b2TreeNode** %child2, align 4
  %143 = getelementptr inbounds %struct.b2TreeNode* %142, i32 0, i32 0
  call void @_ZN6b2AABB7CombineERKS_S1_(%struct.b2AABB* %139, %struct.b2AABB* %141, %struct.b2AABB* %143)
  %144 = load %struct.b2TreeNode** %parent, align 4
  %145 = getelementptr inbounds %struct.b2TreeNode* %144, i32 0, i32 2
  %146 = bitcast %union.anon* %145 to i32*
  store i32 -1, i32* %146, align 4
  %147 = load i32* %parentIndex, align 4
  %148 = load %struct.b2TreeNode** %child1, align 4
  %149 = getelementptr inbounds %struct.b2TreeNode* %148, i32 0, i32 2
  %150 = bitcast %union.anon* %149 to i32*
  store i32 %147, i32* %150, align 4
  %151 = load i32* %parentIndex, align 4
  %152 = load %struct.b2TreeNode** %child2, align 4
  %153 = getelementptr inbounds %struct.b2TreeNode* %152, i32 0, i32 2
  %154 = bitcast %union.anon* %153 to i32*
  store i32 %151, i32* %154, align 4
  %155 = load i32* %count, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i32** %nodes, align 4
  %158 = getelementptr inbounds i32* %157, i32 %156
  %159 = load i32* %158
  %160 = load i32* %jMin, align 4
  %161 = load i32** %nodes, align 4
  %162 = getelementptr inbounds i32* %161, i32 %160
  store i32 %159, i32* %162
  %163 = load i32* %parentIndex, align 4
  %164 = load i32* %iMin, align 4
  %165 = load i32** %nodes, align 4
  %166 = getelementptr inbounds i32* %165, i32 %164
  store i32 %163, i32* %166
  %167 = load i32* %count, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %count, align 4
  br label %48

; <label>:169                                     ; preds = %48
  %170 = load i32** %nodes, align 4
  %171 = getelementptr inbounds i32* %170, i32 0
  %172 = load i32* %171
  %173 = getelementptr inbounds %class.b2DynamicTree* %2, i32 0, i32 0
  store i32 %172, i32* %173, align 4
  %174 = load i32** %nodes, align 4
  %175 = bitcast i32* %174 to i8*
  call void @_Z6b2FreePv(i8* %175)
  call void @_ZNK13b2DynamicTree8ValidateEv(%class.b2DynamicTree* %2)
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
