---@meta

---@class ABP_BtlGuiSceneCapture2D_C : ASceneCapture2D
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BP_BtlTargetsManager UBP_BtlTargetManager_C
---@field IsCallTargetUpdate boolean
---@field ShowActorList TArray<AActor>
---@field TargetTipe int32
local ABP_BtlGuiSceneCapture2D_C = {}

function ABP_BtlGuiSceneCapture2D_C:ClearShowActorList() end
---@param EveryFrame boolean
function ABP_BtlGuiSceneCapture2D_C:SetCaptureEveryFrame(EveryFrame) end
function ABP_BtlGuiSceneCapture2D_C:UserConstructionScript() end
---@param Transform FTransform
---@param InputObject UBP_BtlTargetManager_C
---@param BtlGui UBP_BtlGuiComponent_C
function ABP_BtlGuiSceneCapture2D_C:CaptureUpdate(Transform, InputObject, BtlGui) end
---@param EntryPoint int32
function ABP_BtlGuiSceneCapture2D_C:ExecuteUbergraph_BP_BtlGuiSceneCapture2D(EntryPoint) end


