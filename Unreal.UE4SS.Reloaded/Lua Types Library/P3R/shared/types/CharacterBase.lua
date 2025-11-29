---@meta

---@class ACharacterBaseCore : ACharacter
---@field _SkeletalMeshLoader UCBL_LoaderBase
---@field _AnimBpLoader UCBL_LoaderBase
---@field _SkeletalMeshCompArray TArray<USkeletalMeshComponent>
---@field _RecalcBounds boolean
---@field _AutoLoading boolean
---@field _MeshPackAsset UCB_HumanMeshPackAsset
---@field _PreviewMeshNo int32
---@field _PreviewCostumeNo int32
---@field _PreviewHairNo int32
---@field _PreviewFaceNo int32
---@field _AnimPackAsset UCB_HumanAnimPackAsset
---@field _PreviewMeshAnimNo int32
---@field _PreviewCostumeAnimNo int32
---@field _PreviewHairAnimNo int32
local ACharacterBaseCore = {}

function ACharacterBaseCore:ReCalculateBounds() end
function ACharacterBaseCore:LoadEndEvent() end
---@param Montage UAnimMontage
---@param Index int32
---@return FName
function ACharacterBaseCore:GetMontageSectionName(Montage, Index) end
---@return float
function ACharacterBaseCore:GetLastRenderTimeOnScreen() end
---@param MeshComp UPrimitiveComponent
---@return float
function ACharacterBaseCore:GetCompLastRenderTimeOnScreen(MeshComp) end


---@class ACrowdNpcBaseCore : APawn
local ACrowdNpcBaseCore = {}


---@class AEnemySymbolBaseCore : ACharacter
local AEnemySymbolBaseCore = {}


---@class AMobBaseAiControllerCore : AAIController
---@field mTargetDistance_ float
---@field mTurnSpeed_ float
---@field mWalkMaxSpeed_ float
---@field mWalkStopTurnSpeedRatio_ float
---@field mWalkInterpTurnSpeedMIN_ float
---@field mWalkInterpTurnSpeedMAX_ float
---@field mShiftDirectionDistance_ float
---@field mShiftDirectionMinInterpSpeed_ float
---@field mShiftDirectionMaxInterpSpeed_ float
---@field mShiftDirectionTimeOut_ float
---@field mFollowWarpDistance_ float
---@field mDeleteInterval_ float
---@field mDeleteMoveMin_ float
---@field mDeleteTime_ float
---@field mOwnerActor_ AMobWalkCharaBaseCore
---@field mNowDeltaTime_ float
---@field mAnimeRatio_ float
local AMobBaseAiControllerCore = {}

---@param DeltaTime float
function AMobBaseAiControllerCore:UpdateProc(DeltaTime) end
---@param WalkSpeedRatio float
---@param DeltaTime float
function AMobBaseAiControllerCore:UpdateActorBlueprint(WalkSpeedRatio, DeltaTime) end
function AMobBaseAiControllerCore:StartAiCtrl() end
---@param Value int32
function AMobBaseAiControllerCore:SetPointIndex(Value) end
function AMobBaseAiControllerCore:ReStartAiCtrl() end
---@return FMobWalkRoutePoint
function AMobBaseAiControllerCore:GetRoutePointNOW() end
---@return FMobWalkRoutePoint
function AMobBaseAiControllerCore:GetRoutePointNEXT() end
---@return int32
function AMobBaseAiControllerCore:GetPointIndexLAST() end
---@return int32
function AMobBaseAiControllerCore:GetPointIndex() end
---@return AMobWalkCharaBaseCore
function AMobBaseAiControllerCore:GetOwnerActor() end
---@param Value int32
function AMobBaseAiControllerCore:AddPointIndex(Value) end


---@class AMobWalkCharaBaseCore : ACharacter
---@field mBpIndex_ int32
---@field mOpacityCore_ float
---@field mPointList_ TArray<FMobWalkRoutePoint>
---@field mPointIndex_ int32
---@field mStartLocation_ FVector
---@field mWaitTime_ float
---@field mFollowParent_ AActor
---@field mFollowRelativeLocation_ FVector
---@field mStartState_ EMobWalkStartState
local AMobWalkCharaBaseCore = {}

---@param InTime float
function AMobWalkCharaBaseCore:SetWaitTime(InTime) end
---@param InLocation FVector
function AMobWalkCharaBaseCore:SetStartLocation(InLocation) end
---@param Value int32
function AMobWalkCharaBaseCore:SetPointIndex(Value) end
---@param Value float
function AMobWalkCharaBaseCore:SetOpacityCore(Value) end
---@param InLocation FVector
function AMobWalkCharaBaseCore:SetFollowRelativeLocation(InLocation) end
---@param InParent AActor
function AMobWalkCharaBaseCore:SetFollowParent(InParent) end
---@param Value int32
function AMobWalkCharaBaseCore:SetBpIndex(Value) end
function AMobWalkCharaBaseCore:InitPointList() end
---@return float
function AMobWalkCharaBaseCore:GetWaitTime() end
---@return FVector
function AMobWalkCharaBaseCore:GetStartLocation() end
---@return int32
function AMobWalkCharaBaseCore:GetPointListMax() end
---@return FMobWalkRoutePoint
function AMobWalkCharaBaseCore:GetPointList_START() end
---@return FMobWalkRoutePoint
function AMobWalkCharaBaseCore:GetPointList_LAST() end
---@param Index int32
---@return FMobWalkRoutePoint
function AMobWalkCharaBaseCore:GetPointList(Index) end
---@return int32
function AMobWalkCharaBaseCore:GetPointIndex() end
---@return float
function AMobWalkCharaBaseCore:GetOpacityCore() end
---@return FVector
function AMobWalkCharaBaseCore:GetFollowRelativeLocation() end
---@return AActor
function AMobWalkCharaBaseCore:GetFollowParent() end
---@return int32
function AMobWalkCharaBaseCore:GetBpIndex() end
---@param InPoint FMobWalkRoutePoint
function AMobWalkCharaBaseCore:AddPointList(InPoint) end


---@class AMobWalkTarget : ATargetPoint
---@field mType_ EMobWalkTargetType
local AMobWalkTarget = {}

---@return EMobWalkTargetType
function AMobWalkTarget:GetTargetType() end


---@class ANpcBaseCore : APawn
---@field Root USceneComponent
---@field Mesh USkeletalMeshComponent
---@field _SkeletalMeshLoader UCBL_LoaderBase
---@field _AnimBpLoader UCBL_LoaderBase
---@field _TextureLoader UCBL_LoaderTexture
---@field _SkeletalMeshCompArray TArray<USkeletalMeshComponent>
---@field _AutoLoading boolean
---@field _MeshPackAsset UCB_HumanMeshPackAsset
---@field _PreviewMeshNo int32
---@field _PreviewCostumeNo int32
---@field _PreviewHairNo int32
---@field _PreviewFaceNo int32
---@field _AnimPackAsset UCB_HumanAnimPackAsset
---@field _PreviewMeshAnimNo int32
---@field _PreviewCostumeAnimNo int32
---@field _PreviewHairAnimNo int32
---@field CostumeTexture UTexture2D
---@field HairTexture UTexture2D
---@field FaceTexture UTexture2D
---@field _CostumeTexturePtr TSoftObjectPtr<UTexture2D>
---@field _HairTexturePtr TSoftObjectPtr<UTexture2D>
---@field _FaceTexturePtr TSoftObjectPtr<UTexture2D>
---@field SkinColorID int32
---@field HeightScale float
local ANpcBaseCore = {}

---@param Montage UAnimMontage
---@param Index int32
---@return FName
function ANpcBaseCore:GetMontageSectionName(Montage, Index) end
---@return USkeletalMeshComponent
function ANpcBaseCore:GetMesh() end
function ANpcBaseCore:CommitModelSetting() end


---@class APersonaBaseCore : APawn
---@field Mesh USkeletalMeshComponent
local APersonaBaseCore = {}



---@class AShadowBaseCore : APawn
---@field Mesh USkeletalMeshComponent
local AShadowBaseCore = {}



---@class FCB_HumanAnimPack
---@field _Base TArray<TSoftClassPtr<UObject>>
---@field _Costume TArray<TSoftClassPtr<UObject>>
---@field _Hair TArray<TSoftClassPtr<UObject>>
local FCB_HumanAnimPack = {}



---@class FCB_HumanMeshPack
---@field _Base TArray<TSoftObjectPtr<USkeletalMesh>>
---@field _Costume TArray<TSoftObjectPtr<USkeletalMesh>>
---@field _Hair TArray<TSoftObjectPtr<USkeletalMesh>>
---@field _Face TArray<TSoftObjectPtr<USkeletalMesh>>
local FCB_HumanMeshPack = {}



---@class FCB_NpcAnimPack
---@field _Base TArray<TSoftClassPtr<UObject>>
local FCB_NpcAnimPack = {}



---@class FCB_NpcMeshPack
---@field _Base TArray<TSoftObjectPtr<USkeletalMesh>>
local FCB_NpcMeshPack = {}



---@class FCB_PersonaAnimPack
---@field _Base TArray<TSoftClassPtr<UObject>>
local FCB_PersonaAnimPack = {}



---@class FCB_PersonaMeshPack
---@field _Base TArray<TSoftObjectPtr<USkeletalMesh>>
local FCB_PersonaMeshPack = {}



---@class FMobWalkRoutePoint
---@field mType EMobWalkTargetType
---@field mStopTime float
---@field mTransform FTransform
local FMobWalkRoutePoint = {}



---@class IMobCharaBaseListener : IInterface
local IMobCharaBaseListener = {}

---@param DeltaTime float
function IMobCharaBaseListener:UpdateMobChara(DeltaTime) end


---@class UAnimInstanceCore : UAnimInstance
local UAnimInstanceCore = {}

---@param InAnimSeq UAnimSequence
function UAnimInstanceCore:SetOverrideLocomotionNotMoveAnim(InAnimSeq) end
---@param Location FVector
function UAnimInstanceCore:SetLookAtWorldLocation(Location) end
---@param LookAtType uint8
function UAnimInstanceCore:SetLookAtType(LookAtType) end
---@param BoneName FString
function UAnimInstanceCore:SetLookAtTargetActorBoneName(BoneName) end
---@param TargetActor AActor
function UAnimInstanceCore:SetLookAtTargetActor(TargetActor) end
---@param InAnimSlotName FName
---@return boolean
function UAnimInstanceCore:IsPlaySlotAnimation(InAnimSlotName) end
---@return FVector
function UAnimInstanceCore:GetLookAtWorldLocation() end
---@return uint8
function UAnimInstanceCore:GetLookAtType() end
---@return FString
function UAnimInstanceCore:GetLookAtTargetActorBoneName() end
---@return AActor
function UAnimInstanceCore:GetLookAtTargetActor() end


---@class UCBL_LoaderBase : UObject
---@field _LoadedAsset TArray<UObject>
local UCBL_LoaderBase = {}



---@class UCBL_LoaderTexture : UObject
---@field _LoadedAsset TArray<UObject>
local UCBL_LoaderTexture = {}



---@class UCB_HumanAnimPackAsset : UDataAsset
---@field _AnimPack FCB_HumanAnimPack
local UCB_HumanAnimPackAsset = {}



---@class UCB_HumanMeshPackAsset : UDataAsset
---@field _MeshPack FCB_HumanMeshPack
local UCB_HumanMeshPackAsset = {}



---@class UCB_NpcAnimPackAsset : UDataAsset
---@field _AnimPack FCB_NpcAnimPack
local UCB_NpcAnimPackAsset = {}



---@class UCB_NpcMeshPackAsset : UDataAsset
---@field _MeshPack FCB_NpcMeshPack
local UCB_NpcMeshPackAsset = {}



---@class UCB_PersonaAnimPackAsset : UDataAsset
---@field _AnimPack FCB_PersonaAnimPack
local UCB_PersonaAnimPackAsset = {}



---@class UCB_PersonaMeshPackAsset : UDataAsset
---@field _MeshPack FCB_PersonaMeshPack
local UCB_PersonaMeshPackAsset = {}



---@class UCharacterBaseBpLib : UBlueprintFunctionLibrary
local UCharacterBaseBpLib = {}

---@param WorldContextObject UObject
---@param AnimBP TSoftObjectPtr<UAnimBlueprint>
---@return FString
function UCharacterBaseBpLib:GetSoftClassPath(WorldContextObject, AnimBP) end


---@class UNpcAnimationBaseCore : UAnimInstance
---@field LookAtType ENpcAnimLookAtType
---@field LookAtWorldLocation FVector
---@field LookAtTargetActor AActor
---@field LookAtTargetActorBoneName FString
---@field IdolAnimSequence UAnimSequenceBase
local UNpcAnimationBaseCore = {}

---@param Location FVector
function UNpcAnimationBaseCore:SetLookAtWorldLocation(Location) end
---@param Type ENpcAnimLookAtType
function UNpcAnimationBaseCore:SetLookAtType(Type) end
---@param BoneName FString
function UNpcAnimationBaseCore:SetLookAtTargetActorBoneName(BoneName) end
---@param TargetActor AActor
function UNpcAnimationBaseCore:SetLookAtTargetActor(TargetActor) end
---@param Anim UAnimSequenceBase
function UNpcAnimationBaseCore:SetIdolAnimSequnece(Anim) end
---@return FVector
function UNpcAnimationBaseCore:GetLookAtWorldLocation() end
---@return ENpcAnimLookAtType
function UNpcAnimationBaseCore:GetLookAtType() end
---@return FString
function UNpcAnimationBaseCore:GetLookAtTargetActorBoneName() end
---@return AActor
function UNpcAnimationBaseCore:GetLookAtTargetActor() end
---@return UAnimSequenceBase
function UNpcAnimationBaseCore:GetIdolAnimSequnece() end


