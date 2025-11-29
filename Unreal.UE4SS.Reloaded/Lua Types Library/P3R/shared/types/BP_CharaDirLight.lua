---@meta

---@class ABP_CharaDirLight_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LightIcon UBillboardComponent
---@field LightDirection UArrowComponent
---@field Light_Color FLinearColor
---@field Shadow_Color FLinearColor
---@field HiLight_Color FLinearColor
---@field RimLight_Color FLinearColor
---@field RimHiLightBias float
---@field RimLightBias float
---@field SelfEmissiveBias float
---@field FSSSBoost float
local ABP_CharaDirLight_C = {}

function ABP_CharaDirLight_C:SetLightParameterToMPC() end
function ABP_CharaDirLight_C:UserConstructionScript() end
function ABP_CharaDirLight_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_CharaDirLight_C:ExecuteUbergraph_BP_CharaDirLight(EntryPoint) end


