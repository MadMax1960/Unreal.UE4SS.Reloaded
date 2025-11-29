---@meta

---@class UABP_PC0001_AddPocketLayer_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root_3 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose_2 FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root_2 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose_1 FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_CopyBone_3 FAnimNode_CopyBone
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_TwoBoneIK_1 FAnimNode_TwoBoneIK
---@field AnimGraphNode_CopyBone_2 FAnimNode_CopyBone
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_TwoBoneIK FAnimNode_TwoBoneIK
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_CopyBone_1 FAnimNode_CopyBone
---@field AnimGraphNode_CopyBone FAnimNode_CopyBone
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimInstance UAnimInstance
---@field IsAttachPocket boolean
---@field EnableAttachPocket float
---@field Pocket_L_Transform FTransform
---@field Pocket_R_Transform FTransform
---@field Previous_LocomotionState Enum_LocomotionState::Type
---@field Current_LocomotionState Enum_LocomotionState::Type
---@field EnableAttachPocket_R float
---@field NotUpdate_EnableAttachPocket boolean
---@field ['Delta Time X'] float
---@field SkeltalMesh USkeletalMeshComponent
---@field Apply_Pocket_L_Transform FTransform
local UABP_PC0001_AddPocketLayer_C = {}

---@param InMeshPose FPoseLink
---@param CostumeAdjustLayer FPoseLink
function UABP_PC0001_AddPocketLayer_C:CostumeAdjustLayer(InMeshPose, CostumeAdjustLayer) end
---@param InPhysicsPose FPoseLink
---@param CostumePhysLayer FPoseLink
function UABP_PC0001_AddPocketLayer_C:CostumePhysLayer(InPhysicsPose, CostumePhysLayer) end
---@param InPose FPoseLink
---@param CustomAdditiveLayer FPoseLink
function UABP_PC0001_AddPocketLayer_C:CustomAdditiveLayer(InPose, CustomAdditiveLayer) end
---@param AnimGraph FPoseLink
function UABP_PC0001_AddPocketLayer_C:AnimGraph(AnimGraph) end
---@param Current float
---@param Target float
---@param Increase_Interp float
---@param Decrease_Interp float
---@return float
function UABP_PC0001_AddPocketLayer_C:Interp_F_InOut(Current, Target, Increase_Interp, Decrease_Interp) end
function UABP_PC0001_AddPocketLayer_C:Set_IsAttachPocket() end
function UABP_PC0001_AddPocketLayer_C:BlueprintLinkedAnimationLayersInitialized() end
---@param DeltaTimeX float
function UABP_PC0001_AddPocketLayer_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_PC0001_AddPocketLayer_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_PC0001_AddPocketLayer_AnimGraphNode_ModifyBone_EAF985A94F79D1E8E58908A4067A9FE2() end
function UABP_PC0001_AddPocketLayer_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_PC0001_AddPocketLayer_AnimGraphNode_ModifyBone_00E746714CBE9B7F46C9029C3A6ABACB() end
---@param EntryPoint int32
function UABP_PC0001_AddPocketLayer_C:ExecuteUbergraph_ABP_PC0001_AddPocketLayer(EntryPoint) end


