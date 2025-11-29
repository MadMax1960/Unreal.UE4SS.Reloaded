---@meta

---@class UBPFL_ABPCostume_C : UBlueprintFunctionLibrary
local UBPFL_ABPCostume_C = {}

---@param InBetweenVector FVector
---@param InTargetVector FVector
---@param constraintXZ boolean
---@param constraintXY boolean
---@param __WorldContext UObject
---@param OutAngle float
function UBPFL_ABPCostume_C:GetAngleBetween(InBetweenVector, InTargetVector, constraintXZ, constraintXY, __WorldContext, OutAngle) end
---@param Actor AActor
---@param SocketName FName
---@param TransformSpace ERelativeTransformSpace
---@param Inverse boolean
---@param __WorldContext UObject
---@param Matrix FMatrix
UBPFL_ABPCostume_C['Get Matrix'] = function(self, Actor, SocketName, TransformSpace, Inverse, __WorldContext, Matrix) end
---@param CalcDirection_L_ boolean
---@param SkeletalMesh USkeletalMeshComponent
---@param AnimInstance UAnimInstance
---@param InUpLegName FName
---@param InPreserveUpLegName FName
---@param __WorldContext UObject
---@param RotateZ float
---@param RotateY float
UBPFL_ABPCostume_C['Get Leg Rotate From Skirt Vector'] = function(self, CalcDirection_L_, SkeletalMesh, AnimInstance, InUpLegName, InPreserveUpLegName, __WorldContext, RotateZ, RotateY) end
---@param LegInput FVector
---@param BS_UnitValue float
---@param SpineInput FVector
---@param __WorldContext UObject
---@param outPutVector FVector2D
---@param debugParam FString
function UBPFL_ABPCostume_C:Get2Dvector(LegInput, BS_UnitValue, SpineInput, __WorldContext, outPutVector, debugParam) end
---@param PawnOwner APawn
---@param SkirtRootName FName
---@param SkirtRootEndName FName
---@param SkirtRootParentName FName
---@param SkirtRootZcoff_In float
---@param SkirtRootYcoff_In float
---@param __WorldContext UObject
---@param LeftLegSkirtBS_Out FVector2D
---@param RightLegSkirtBS_Out FVector2D
---@param SkirtRootRot_Out FRotator
function UBPFL_ABPCostume_C:GetSkirtVectors(PawnOwner, SkirtRootName, SkirtRootEndName, SkirtRootParentName, SkirtRootZcoff_In, SkirtRootYcoff_In, __WorldContext, LeftLegSkirtBS_Out, RightLegSkirtBS_Out, SkirtRootRot_Out) end


