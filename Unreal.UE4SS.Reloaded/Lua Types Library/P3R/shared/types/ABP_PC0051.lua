---@meta

---@class UABP_PC0051_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field bBlink boolean
---@field bNoBlink boolean
---@field BlinkWait float
---@field BlinkContinuousNumber uint8
---@field SaccadePos FVector
---@field SaccadeRandomVec FVector
---@field SaccadeWait float
---@field SaccadeAlpha float
---@field PawnOwner APawn
local UABP_PC0051_C = {}

---@param AnimGraph FPoseLink
function UABP_PC0051_C:AnimGraph(AnimGraph) end
---@param DeltaTime float
function UABP_PC0051_C:EyeSaccade(DeltaTime) end
---@param DeltaTime float
function UABP_PC0051_C:EyeBlink(DeltaTime) end
---@param DeltaTimeX float
function UABP_PC0051_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_PC0051_C:BlueprintInitializeAnimation() end
---@param EntryPoint int32
function UABP_PC0051_C:ExecuteUbergraph_ABP_PC0051(EntryPoint) end


