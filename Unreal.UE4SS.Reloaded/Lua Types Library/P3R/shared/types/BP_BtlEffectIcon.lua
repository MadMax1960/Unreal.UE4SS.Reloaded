---@meta

---@class ABP_BtlEffectIcon_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field targetMesh USkeletalMeshComponent
---@field SocketName FName
---@field Work FTransform
---@field Effect UNiagaraComponent
---@field ParentCharacter ABP_BtlCharacterBase_C
local ABP_BtlEffectIcon_C = {}

---@param Mesh USkeletalMeshComponent
---@param ParentCharacter ABP_BtlCharacterBase_C
---@param SocketName FName
---@param VFX UNiagaraComponent
function ABP_BtlEffectIcon_C:Setup(Mesh, ParentCharacter, SocketName, VFX) end
---@param DeltaSeconds float
function ABP_BtlEffectIcon_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlEffectIcon_C:ReceiveDestroyed() end
---@param EntryPoint int32
function ABP_BtlEffectIcon_C:ExecuteUbergraph_BP_BtlEffectIcon(EntryPoint) end


