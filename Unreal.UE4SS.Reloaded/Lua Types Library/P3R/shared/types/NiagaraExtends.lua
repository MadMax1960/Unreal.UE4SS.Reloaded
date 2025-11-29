---@meta

---@class ANiagaraActorExtends : AActor
---@field NiagaraCompleteDispather FNiagaraActorExtendsNiagaraCompleteDispather
---@field ParameterCollection UNiagaraParameterCollection
---@field bIsPause boolean
---@field bISBillboard boolean
---@field PlaybackSpeed float
---@field NiagaraComponent UNiagaraComponent
local ANiagaraActorExtends = {}

---@param InAsset UNiagaraSystem
---@param InSpeed float
function ANiagaraActorExtends:SpawnNiagaraSystem(InAsset, InSpeed) end
---@param InVisible boolean
function ANiagaraActorExtends:SetVisibleDebugArrow_DebugOnly(InVisible) end
---@param InDeltTime float
function ANiagaraActorExtends:SetDesiredAge(InDeltTime) end
function ANiagaraActorExtends:RestertEffect() end
---@param PSystem UNiagaraComponent
function ANiagaraActorExtends:OnComplete(PSystem) end
---@return UNiagaraParameterCollectionInstance
function ANiagaraActorExtends:GetParameterCollectionInstance() end
---@param InPC APlayerController
---@param InAsset UNiagaraSystem
---@param InSpeed float
---@return ANiagaraActorExtends
function ANiagaraActorExtends:CreateNiagaraActorExtends(InPC, InAsset, InSpeed) end


---@class UAnimNotifyState_NiagaraTrail : UAnimNotifyState
---@field Template UNiagaraSystem
---@field FirstSocketName FName
---@field SecondSocketName FName
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bDestroyAtEnd boolean
---@field bAbsoluteLocation boolean
---@field bAbsoluteRotation boolean
---@field bAbsoluteScale boolean
local UAnimNotifyState_NiagaraTrail = {}



---@class UAnimNotifyState_TimedNiagaraEffectEx : UAnimNotifyState
---@field Template UNiagaraSystem
---@field SocketName FName
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bAbsoluteLocation boolean
---@field bAbsoluteRotation boolean
---@field bAbsoluteScale boolean
---@field bUseOffsetRootLocation boolean
---@field bUseOffsetRootRotation boolean
---@field bUseOffsetRootScale boolean
---@field bDestroyAtEnd boolean
---@field Component UFXSystemComponent
local UAnimNotifyState_TimedNiagaraEffectEx = {}



---@class UAnimNotify_PlayNiagaraEffectEx : UAnimNotify
---@field Template UNiagaraSystem
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field Scale FVector
---@field bAbsoluteLocation boolean
---@field bAbsoluteRotation boolean
---@field bAbsoluteScale boolean
---@field bIsLoopEffect boolean
---@field Attached boolean
---@field SocketName FName
local UAnimNotify_PlayNiagaraEffectEx = {}

---@return UNiagaraComponent
function UAnimNotify_PlayNiagaraEffectEx:GetSpawnedEffect() end


---@class UNiagaraCameraShake : UMatineeCameraShake
local UNiagaraCameraShake = {}


---@class UNiagaraDataInterfaceBillboardEffect : UNiagaraDataInterface
---@field PlayerControllerIndex int32
---@field LockAxis FVector
local UNiagaraDataInterfaceBillboardEffect = {}



---@class UNiagaraDataInterfaceBillboardEffect2 : UNiagaraDataInterface
---@field PlayerControllerIndex int32
---@field LockAxis FVector
local UNiagaraDataInterfaceBillboardEffect2 = {}



---@class UNiagaraDataInterfaceCameraShake : UNiagaraDataInterface
---@field NiagaraCameraShake TSubclassOf<UNiagaraCameraShake>
---@field ShakingEffects TArray<uint32>
local UNiagaraDataInterfaceCameraShake = {}



---@class UNiagaraDataInterfacePostProcess : UNiagaraDataInterface
---@field CreatePostProcessComponent boolean
---@field PostProcessMaterials FWeightedBlendables
---@field niagaraPostProcessParameter UMaterialParameterCollectionInstance
local UNiagaraDataInterfacePostProcess = {}



---@class UNiagaraDataInterfaceSetCustomStencil : UNiagaraDataInterface
---@field CustomStencilValue int32
local UNiagaraDataInterfaceSetCustomStencil = {}



---@class UNiagaraDataInterfaceSyncActorPause : UNiagaraDataInterface
local UNiagaraDataInterfaceSyncActorPause = {}


---@class UNiagaraExtendsFunctionLibrary : UObject
local UNiagaraExtendsFunctionLibrary = {}

---@param WorldAssetPath FString
---@return UNiagaraComponent
function UNiagaraExtendsFunctionLibrary:SpawnSystemAttachedOnCamera(WorldAssetPath) end
---@param SystemTemplate UNiagaraSystem
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param Rotation FRotator
---@param LocationType EAttachLocation::Type
---@param bAutoDestroy boolean
---@param bAbsoluteLocation boolean
---@param bAbsoluteRotation boolean
---@param bAbsoluteScale boolean
---@param bAutoActivate boolean
---@param PoolingMethod ENCPoolMethod
---@param bPreCullCheck boolean
---@return UNiagaraComponent
function UNiagaraExtendsFunctionLibrary:SpawnSystemAttached(SystemTemplate, AttachToComponent, AttachPointName, Location, Rotation, LocationType, bAutoDestroy, bAbsoluteLocation, bAbsoluteRotation, bAbsoluteScale, bAutoActivate, PoolingMethod, bPreCullCheck) end
---@param InPC APlayerController
---@param InBaseAssetPath FString
---@param InBaseTransform FTransform
---@return AActor
function UNiagaraExtendsFunctionLibrary:SpawnActorFromBP(InPC, InBaseAssetPath, InBaseTransform) end
---@param InWorldContextObject UObject
---@param InPaused boolean
function UNiagaraExtendsFunctionLibrary:SetAllNiagaraPaused(InWorldContextObject, InPaused) end
---@param FilePath FString
function UNiagaraExtendsFunctionLibrary:OpenAssetEditorWindowFromPath(FilePath) end
---@param Asset UObject
function UNiagaraExtendsFunctionLibrary:OpenAssetEditorWindowFromAsset(Asset) end
---@param WorldAssetPath FString
---@return TArray<FString>
function UNiagaraExtendsFunctionLibrary:GetWarldLevelNames(WorldAssetPath) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return FVector
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterVectorValue(NiagaraComponent, InEmitterName, InValueName) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return FQuat
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterQuatValue(NiagaraComponent, InEmitterName, InValueName) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return FMatrix
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterMatrixValue(NiagaraComponent, InEmitterName, InValueName) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return int32
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterIntValue(NiagaraComponent, InEmitterName, InValueName) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return float
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterFloatValue(NiagaraComponent, InEmitterName, InValueName) end
---@param NiagaraComponent UNiagaraComponent
---@param InEmitterName FString
---@param InValueName FString
---@return boolean
function UNiagaraExtendsFunctionLibrary:GetNiagaraEmitterBoolValue(NiagaraComponent, InEmitterName, InValueName) end
---@param World UWorld
---@return FPostProcessSettings
function UNiagaraExtendsFunctionLibrary:GetFinalPostProcessSettings(World) end
---@param NiagaraComponent UNiagaraComponent
---@return TArray<FString>
function UNiagaraExtendsFunctionLibrary:GetEmitterNames(NiagaraComponent) end


