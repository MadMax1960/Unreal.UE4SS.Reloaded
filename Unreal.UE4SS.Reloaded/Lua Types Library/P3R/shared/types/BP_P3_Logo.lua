---@meta

---@class ABP_P3_Logo_C : ATitleLogoActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field S_UI_P3Logo_TitleA UStaticMeshComponent
---@field S_UI_P3Logo_TitleB UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field MaterialInst_LogoB UMaterialInstanceDynamic
---@field MaterialInst_LogoA UMaterialInstanceDynamic
local ABP_P3_Logo_C = {}

function ABP_P3_Logo_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_P3_Logo_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_P3_Logo_C:ExecuteUbergraph_BP_P3_Logo(EntryPoint) end


