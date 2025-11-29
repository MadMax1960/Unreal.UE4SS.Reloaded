---@meta

---@class ABP_Pp2001_TarotCardBase_C : ABP_AppPropsBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Param FAppPropsCardParam
---@field ['Source Material'] UMaterialInterface
---@field MaterialInstanceDynamic UMaterialInstanceDynamic
---@field DataTable UDataTable
---@field Table FAppPropsCardTable
---@field Loading boolean
---@field BackMaterialInstanceDynamic UMaterialInstanceDynamic
local ABP_Pp2001_TarotCardBase_C = {}

---@return UMaterialInstanceDynamic
function ABP_Pp2001_TarotCardBase_C:GetBackMaterial() end
---@return UMaterialInstanceDynamic
function ABP_Pp2001_TarotCardBase_C:GetFrontMaterial() end
---@return boolean
function ABP_Pp2001_TarotCardBase_C:TarotCardSync() end
---@param RowName FName
function ABP_Pp2001_TarotCardBase_C:MakeCardTableRowName(RowName) end
---@param Loaded UObject
function ABP_Pp2001_TarotCardBase_C:OnLoaded_27DEC6194ED2342DEA4210801676A7AA(Loaded) end
---@param Loaded UObject
function ABP_Pp2001_TarotCardBase_C:OnLoaded_F63DE3974F8478B36C703AB363FE0426(Loaded) end
---@param Param FAppPropsCardParam
function ABP_Pp2001_TarotCardBase_C:TarotCardSetup(Param) end
---@param EntryPoint int32
function ABP_Pp2001_TarotCardBase_C:ExecuteUbergraph_BP_Pp2001_TarotCardBase(EntryPoint) end


