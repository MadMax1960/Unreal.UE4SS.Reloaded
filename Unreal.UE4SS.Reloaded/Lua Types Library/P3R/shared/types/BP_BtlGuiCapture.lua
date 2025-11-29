---@meta

---@class ABP_BtlGuiCapture_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field PlayerCamera ABP_BtlGuiSceneCapture2D_C
---@field PlayerTransformActor AActor
---@field InCuptureUpdate boolean
---@field IsUIColor boolean
---@field UseCapture boolean
local ABP_BtlGuiCapture_C = {}

function ABP_BtlGuiCapture_C:ClearShowActorList() end
---@param Enable boolean
function ABP_BtlGuiCapture_C:SetCaptureEnable(Enable) end
function ABP_BtlGuiCapture_C:CaptureUpdate() end
function ABP_BtlGuiCapture_C:GuiActorBeginPlay() end
function ABP_BtlGuiCapture_C:GuiActorBeginDestroy() end
---@param DeltaTime float
function ABP_BtlGuiCapture_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlGuiCapture_C:ExecuteUbergraph_BP_BtlGuiCapture(EntryPoint) end


