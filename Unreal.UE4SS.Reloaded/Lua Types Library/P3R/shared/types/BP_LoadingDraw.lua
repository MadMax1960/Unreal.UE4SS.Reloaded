---@meta

---@class ABP_LoadingDraw_C : ALoadingDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local ABP_LoadingDraw_C = {}

function ABP_LoadingDraw_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_LoadingDraw_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_LoadingDraw_C:ExecuteUbergraph_BP_LoadingDraw(EntryPoint) end


