---@meta

---@class ABP_ShadowBase_C : AShadowBaseCore
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartPosition_VG float
---@field EndPosition_VG float
---@field DynamicMIs TArray<UMaterialInstanceDynamic>
---@field BoundsScale float
---@field bAllPointLightsMode boolean
---@field AllPointLights TArray<ABP_CharaPointLight_C>
---@field ClosestPointLights TArray<ABP_CharaPointLight_C>
---@field LastRenderTimeOnScreen float
local ABP_ShadowBase_C = {}

---@param PointLights TArray<ABP_CharaPointLight_C>
---@param NumOfLights int32
function ABP_ShadowBase_C:GetClosestPointLights(PointLights, NumOfLights) end
function ABP_ShadowBase_C:ResetAllPointLightsMode() end
ABP_ShadowBase_C['Get All Chara Point Lights'] = function(self, ) end
---@param Material UMaterialInstanceDynamic
---@param ParameterName FName
---@param ParameterValue float
function ABP_ShadowBase_C:SetScalarParameterValueEx(Material, ParameterName, ParameterValue) end
function ABP_ShadowBase_C:SetDMIParameter_Tick() end
---@param MIDObjectReference UMaterialInstanceDynamic
function ABP_ShadowBase_C:SetPointLightParameter(MIDObjectReference) end
---@param MeshComponent UMeshComponent
function ABP_ShadowBase_C:CreateDMI(MeshComponent) end
function ABP_ShadowBase_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_ShadowBase_C:ReceiveTick(DeltaSeconds) end
function ABP_ShadowBase_C:Event_GetAllCharaPointLights() end
function ABP_ShadowBase_C:Event_ResetAllPointLightsMode() end
---@param EntryPoint int32
function ABP_ShadowBase_C:ExecuteUbergraph_BP_ShadowBase(EntryPoint) end


