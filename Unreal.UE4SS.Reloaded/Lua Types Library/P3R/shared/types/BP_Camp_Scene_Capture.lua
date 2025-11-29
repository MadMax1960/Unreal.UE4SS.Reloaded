---@meta

---@class ABP_Camp_Scene_Capture_C : ACampSceneCapture
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_Camp_Scene_Capture_C = {}

function ABP_Camp_Scene_Capture_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_Camp_Scene_Capture_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_Camp_Scene_Capture_C:ExecuteUbergraph_BP_Camp_Scene_Capture(EntryPoint) end


