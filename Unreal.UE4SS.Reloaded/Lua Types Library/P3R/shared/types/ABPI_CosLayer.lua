---@meta

---@class IABPI_CosLayer_C : IAnimLayerInterface
local IABPI_CosLayer_C = {}

---@param InMeshPose FPoseLink
---@param CostumeAdjustLayer FPoseLink
function IABPI_CosLayer_C:CostumeAdjustLayer(InMeshPose, CostumeAdjustLayer) end
---@param InPose FPoseLink
---@param CustomAdditiveLayer FPoseLink
function IABPI_CosLayer_C:CustomAdditiveLayer(InPose, CustomAdditiveLayer) end
---@param InPhysicsPose FPoseLink
---@param CostumePhysLayer FPoseLink
function IABPI_CosLayer_C:CostumePhysLayer(InPhysicsPose, CostumePhysLayer) end


