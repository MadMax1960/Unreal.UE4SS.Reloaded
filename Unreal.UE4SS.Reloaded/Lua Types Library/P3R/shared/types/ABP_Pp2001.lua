---@meta

---@class UABP_Pp2001_C : UCmpCommuCardAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_RotateRootBone FAnimNode_RotateRootBone
---@field Pitch float
local UABP_Pp2001_C = {}

---@param AnimGraph FPoseLink
function UABP_Pp2001_C:AnimGraph(AnimGraph) end
---@param DeltaTimeX float
function UABP_Pp2001_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_Pp2001_C:BlueprintBeginPlay() end
---@param RootYaw float
UABP_Pp2001_C['RootYawEvent_イベント_0'] = function(self, RootYaw) end
---@param EntryPoint int32
function UABP_Pp2001_C:ExecuteUbergraph_ABP_Pp2001(EntryPoint) end


