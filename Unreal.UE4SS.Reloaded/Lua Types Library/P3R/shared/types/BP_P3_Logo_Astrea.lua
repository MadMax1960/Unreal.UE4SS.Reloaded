---@meta

---@class ABP_P3_Logo_Astrea_C : ATitleLogoActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field S_UI_P3Logo_TitleA_Jp UStaticMeshComponent
---@field S_UI_P3Logo_TitleB_Jp UStaticMeshComponent
---@field S_UI_P3Logo_TitleA UStaticMeshComponent
---@field S_UI_P3Logo_TitleB UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field MaterialInst_LogoB UMaterialInstanceDynamic
---@field MaterialInst_LogoA UMaterialInstanceDynamic
---@field Logo_jp UMaterialInstance
---@field Logo_en UMaterialInstance
local ABP_P3_Logo_Astrea_C = {}

function ABP_P3_Logo_Astrea_C:InitLogo() end
---@param IsClear boolean
ABP_P3_Logo_Astrea_C['Set Visiblity Logo'] = function(self, IsClear) end
---@param DeltaSeconds float
function ABP_P3_Logo_Astrea_C:ReceiveTick(DeltaSeconds) end
function ABP_P3_Logo_Astrea_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_P3_Logo_Astrea_C:ExecuteUbergraph_BP_P3_Logo_Astrea(EntryPoint) end


