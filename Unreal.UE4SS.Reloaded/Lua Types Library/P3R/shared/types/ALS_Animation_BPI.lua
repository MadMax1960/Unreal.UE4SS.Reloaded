---@meta

---@class IALS_Animation_BPI_C : IInterface
local IALS_Animation_BPI_C = {}

---@param OverlayOverrideState int32
function IALS_Animation_BPI_C:BPI_SetOverlayOverrideState(OverlayOverrideState) end
---@param GroundedEntryState GroundedEntryState::Type
function IALS_Animation_BPI_C:BPI_SetGroundedEntryState(GroundedEntryState) end
function IALS_Animation_BPI_C:BPI_Jumped() end


