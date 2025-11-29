---@meta

---@class UABP_BtlUIColorHuman_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
---@field CharacterReference USkeletalMeshComponent
local UABP_BtlUIColorHuman_C = {}

---@param AnimGraph FPoseLink
function UABP_BtlUIColorHuman_C:AnimGraph(AnimGraph) end
---@param DeltaTimeX float
function UABP_BtlUIColorHuman_C:BlueprintUpdateAnimation(DeltaTimeX) end
---@param EntryPoint int32
function UABP_BtlUIColorHuman_C:ExecuteUbergraph_ABP_BtlUIColorHuman(EntryPoint) end


