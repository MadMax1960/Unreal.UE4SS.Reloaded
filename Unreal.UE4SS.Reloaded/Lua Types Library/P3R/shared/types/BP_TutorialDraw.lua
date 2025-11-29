---@meta

---@class ABP_TutorialDraw_C : AUITutorialDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local ABP_TutorialDraw_C = {}

function ABP_TutorialDraw_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_TutorialDraw_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_TutorialDraw_C:ExecuteUbergraph_BP_TutorialDraw(EntryPoint) end


