---@meta

---@class ALV_StartUp_C : ALevelScriptActor
---@field UberGraphFrame FPointerToUberGraphFrame
local ALV_StartUp_C = {}

function ALV_StartUp_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ALV_StartUp_C:ExecuteUbergraph_LV_StartUp(EntryPoint) end


