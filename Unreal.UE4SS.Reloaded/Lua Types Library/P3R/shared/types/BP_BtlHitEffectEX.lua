---@meta

---@class ABP_BtlHitEffectEX_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field EffectToPlay TSoftObjectPtr<UNiagaraSystem>
---@field SENo int32
---@field EffectLocation FVector
---@field EffectRotation FRotator
---@field VFX UNiagaraComponent
---@field ['As Niagara System'] UNiagaraSystem
---@field IsPlaying boolean
local ABP_BtlHitEffectEX_C = {}

---@param Loaded UObject
function ABP_BtlHitEffectEX_C:OnLoaded_CB5170E841E1DBFFA867F0BDA86E9CE7(Loaded) end
function ABP_BtlHitEffectEX_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlHitEffectEX_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_BtlHitEffectEX_C:ExecuteUbergraph_BP_BtlHitEffectEX(EntryPoint) end


