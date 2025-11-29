---@meta

---@class IBPI_ModulerCharacterSet_C : IInterface
local IBPI_ModulerCharacterSet_C = {}

---@param Enable boolean
IBPI_ModulerCharacterSet_C['Set Saccade'] = function(self, Enable) end
---@param Enable boolean
IBPI_ModulerCharacterSet_C['Set No Blink'] = function(self, Enable) end
---@param OutLocomotionState Enum_LocomotionState::Type
function IBPI_ModulerCharacterSet_C:GetLocomotionState(OutLocomotionState) end
---@param OutWalkRunBlend float
---@param OutPreviousWalkRunBlend float
function IBPI_ModulerCharacterSet_C:GetWalkRunBlend(OutWalkRunBlend, OutPreviousWalkRunBlend) end
function IBPI_ModulerCharacterSet_C:LinkPhysics() end
function IBPI_ModulerCharacterSet_C:UnlinkPhysics() end
---@param SinkingDistance float
function IBPI_ModulerCharacterSet_C:SetSinkingDistance(SinkingDistance) end


