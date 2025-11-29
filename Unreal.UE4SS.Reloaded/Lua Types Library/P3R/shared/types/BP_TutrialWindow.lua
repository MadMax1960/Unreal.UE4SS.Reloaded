---@meta

---@class ABP_TutrialWindow_C : AitfMsgProgWindow_TUTRIALDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local ABP_TutrialWindow_C = {}

function ABP_TutrialWindow_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_TutrialWindow_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_TutrialWindow_C:ExecuteUbergraph_BP_TutrialWindow(EntryPoint) end


