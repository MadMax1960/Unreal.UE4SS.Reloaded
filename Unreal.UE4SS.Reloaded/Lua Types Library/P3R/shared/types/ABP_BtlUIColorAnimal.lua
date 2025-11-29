---@meta

---@class UABP_BtlUIColorAnimal_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
---@field CharacterReference USkeletalMeshComponent
local UABP_BtlUIColorAnimal_C = {}

---@param AnimGraph FPoseLink
function UABP_BtlUIColorAnimal_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UABP_BtlUIColorAnimal_C:ExecuteUbergraph_ABP_BtlUIColorAnimal(EntryPoint) end


