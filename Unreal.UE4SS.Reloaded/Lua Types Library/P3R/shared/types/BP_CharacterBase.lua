---@meta

---@class ABP_CharacterBase_C : ACharacterBaseCore
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OverlapPointLights TArray<ABP_CharaPointLight_C>
---@field StartPosition_VG float
---@field EndPosition_VG float
---@field DynamicMIs TArray<UMaterialInstanceDynamic>
---@field Meshes TArray<UMeshComponent>
---@field bAllPointLightsMode boolean
---@field AllPointLights TArray<ABP_CharaPointLight_C>
---@field ClosestPointLights TArray<ABP_CharaPointLight_C>
---@field LastRenderTimeOnScreen float
local ABP_CharacterBase_C = {}

function ABP_CharacterBase_C:ResetAllPointLightsMode() end
ABP_CharacterBase_C['Get All Chara Point Lights'] = function(self, ) end
---@param Enable boolean
ABP_CharacterBase_C['Set No Blink'] = function(self, Enable) end
---@param Enable boolean
ABP_CharacterBase_C['Set Saccade'] = function(self, Enable) end
---@param Material UMaterialInstanceDynamic
---@param ParameterName FName
---@param ParameterValue FLinearColor
function ABP_CharacterBase_C:SetVectorParameterValueEx(Material, ParameterName, ParameterValue) end
function ABP_CharacterBase_C:GetMeshChildlenComponents() end
---@param MeshComponent UMeshComponent
function ABP_CharacterBase_C:SetOutlineMaterialParameter(MeshComponent) end
---@param PointLights TArray<ABP_CharaPointLight_C>
---@param NumOfLights int32
function ABP_CharacterBase_C:GetClosestPointLights(PointLights, NumOfLights) end
---@param Material UMaterialInstanceDynamic
---@param ParameterName FName
---@param ParameterValue float
function ABP_CharacterBase_C:SetScalarParameterValueEx(Material, ParameterName, ParameterValue) end
function ABP_CharacterBase_C:SetDMIParameter_Tick() end
---@param MIDObjectReference UMaterialInstanceDynamic
function ABP_CharacterBase_C:SetPointLightParameter(MIDObjectReference) end
---@param MeshComponent UMeshComponent
function ABP_CharacterBase_C:SetDMIParameter_CS(MeshComponent) end
---@param MeshComponent UMeshComponent
function ABP_CharacterBase_C:CreateDMI(MeshComponent) end
function ABP_CharacterBase_C:UserConstructionScript() end
function ABP_CharacterBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_CharacterBase_C:ReceiveTick(DeltaSeconds) end
---@param OtherActor AActor
function ABP_CharacterBase_C:ReceiveActorBeginOverlap(OtherActor) end
---@param OtherActor AActor
function ABP_CharacterBase_C:ReceiveActorEndOverlap(OtherActor) end
function ABP_CharacterBase_C:LoadEndEvent() end
function ABP_CharacterBase_C:Event_GetAllCharaPointLights() end
function ABP_CharacterBase_C:Event_ResetAllPointLightsMode() end
---@param EntryPoint int32
function ABP_CharacterBase_C:ExecuteUbergraph_BP_CharacterBase(EntryPoint) end


