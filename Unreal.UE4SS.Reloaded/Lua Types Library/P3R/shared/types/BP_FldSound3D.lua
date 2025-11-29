---@meta

---@class ABP_FldSound3D_C : AFldAtomSound
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_FldSound3D_C = {}

function ABP_FldSound3D_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_FldSound3D_C:ExecuteUbergraph_BP_FldSound3D(EntryPoint) end


