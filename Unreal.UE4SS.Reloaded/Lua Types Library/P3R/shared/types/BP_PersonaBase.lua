---@meta

---@class ABP_PersonaBase_C : APersonaBaseCore
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OverlapPointLights TArray<ABP_CharaPointLight_C>
---@field NumberOfPointLights int32
---@field ClosestPointLight TArray<AActor>
---@field DynamicMIs TArray<UMaterialInstanceDynamic>
---@field BoundsScale float
---@field NiagaraDesiredAge float
---@field bNiagaraOffscreen boolean
---@field NiagaraComponents TArray<UNiagaraComponent>
---@field LastRenderTimeOnScreen float
---@field StartPositionVec_VG FVector
---@field EndPositionVec_VG FVector
local ABP_PersonaBase_C = {}

---@param DeltaSeconds float
function ABP_PersonaBase_C:SetNiagaraOffscreenTick(DeltaSeconds) end
ABP_PersonaBase_C['Set Niagara Offscreen Mode'] = function(self, ) end
function ABP_PersonaBase_C:GetClosestPointLights() end
---@param Material UMaterialInstanceDynamic
---@param ParameterName FName
---@param ParameterValue float
function ABP_PersonaBase_C:SetScalarParameterValueEx(Material, ParameterName, ParameterValue) end
function ABP_PersonaBase_C:SetDMIParameter_Tick() end
---@param MIDObjectReference UMaterialInstanceDynamic
function ABP_PersonaBase_C:SetPointLightParameter(MIDObjectReference) end
---@param MeshComponent UMeshComponent
function ABP_PersonaBase_C:CreateDMI(MeshComponent) end
function ABP_PersonaBase_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_PersonaBase_C:ReceiveTick(DeltaSeconds) end
---@param OtherActor AActor
function ABP_PersonaBase_C:ReceiveActorBeginOverlap(OtherActor) end
---@param OtherActor AActor
function ABP_PersonaBase_C:ReceiveActorEndOverlap(OtherActor) end
---@param EntryPoint int32
function ABP_PersonaBase_C:ExecuteUbergraph_BP_PersonaBase(EntryPoint) end


