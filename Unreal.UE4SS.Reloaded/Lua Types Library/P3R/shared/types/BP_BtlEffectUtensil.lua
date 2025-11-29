---@meta

---@class ABP_BtlEffectUtensil_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field IsPlaying boolean
---@field VFX UNiagaraComponent
---@field BtlCore UBtlCoreComponent
local ABP_BtlEffectUtensil_C = {}

---@param Niagara UNiagaraComponent
---@param BtlCore UBtlCoreComponent
function ABP_BtlEffectUtensil_C:SetEffect(Niagara, BtlCore) end
---@param DeltaSeconds float
function ABP_BtlEffectUtensil_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlEffectUtensil_C:ReceiveDestroyed() end
---@param EntryPoint int32
function ABP_BtlEffectUtensil_C:ExecuteUbergraph_BP_BtlEffectUtensil(EntryPoint) end


