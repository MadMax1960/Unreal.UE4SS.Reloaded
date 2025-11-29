---@meta

---@class AAPPGameModeBase : AGameModeBase
local AAPPGameModeBase = {}


---@class AActivityTest : AAppActor
---@field DebugMenu_ UDebugMenu
local AActivityTest = {}



---@class AAddContentDialog : AAppActor
---@field mDlcManager ADLCManager
---@field mProgressBar AUIProgressBarDraw
local AAddContentDialog = {}



---@class AAppActor : AActor
---@field AppPauseFlags EAppPauseObjectFlag
---@field PauseFrontEvent FAppActorPauseFrontEvent
---@field PauseBackEvent FAppActorPauseBackEvent
---@field UnPauseFrontEvent FAppActorUnPauseFrontEvent
---@field UnPauseBackEvent FAppActorUnPauseBackEvent
local AAppActor = {}

---@return EAppPauseObjectFlag
function AAppActor:GetAppPauseFlags() end
---@param EndPlayReason EEndPlayReason::Type
function AAppActor:EndPlay(EndPlayReason) end
function AAppActor:BeginPlay() end
---@return UObject
function AAppActor:AsUObject() end
---@return AActor
function AAppActor:AsAActor() end


---@class AAppCharFootstepsTriggerVolume : ATriggerVolume
---@field mLabel_ FUAppCharFootstepsLabel
---@field mTimeNoon_ boolean
---@field mTimeAfternoon_ boolean
---@field mTimeNight_ boolean
---@field mTimeShadow_ boolean
local AAppCharFootstepsTriggerVolume = {}

---@param OverlappedActor AActor
---@param OtherActor AActor
function AAppCharFootstepsTriggerVolume:OnOverlapEnd(OverlappedActor, OtherActor) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function AAppCharFootstepsTriggerVolume:OnOverlapBegin(OverlappedActor, OtherActor) end


---@class AAppCharFootstepsTriggerVolumeExt : AAppCharFootstepsTriggerVolume
---@field mEnableProgressStart_ int32
---@field mEnableProgressEnd_ int32
local AAppCharFootstepsTriggerVolumeExt = {}



---@class AAppCharTransparencyArea : AActor
---@field CapsuleComp UCapsuleComponent
---@field Opacity float
---@field Speed float
---@field Distance float
---@field MobDistance float
---@field LargeDistance float
---@field Priority int32
local AAppCharTransparencyArea = {}



---@class AAppCharWeaponBase : AAppActor
---@field PlayerId int32
---@field Root USceneComponent
---@field Mesh USkeletalMeshComponent
---@field WeaponTbl FAppCharWeaponTableRow
---@field AttachSocketName FName
---@field HideMaterialID int32
---@field AnimPack UAppCharWeaponAnimDataAsset
local AAppCharWeaponBase = {}

---@param pSequence UAnimSequenceBase
---@param Loop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
function AAppCharWeaponBase:PlayAnimSequence(pSequence, Loop, BlendInTime, BlendOutTime, InPlayRate) end
---@param animNo int32
---@param Loop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
function AAppCharWeaponBase:PlayAnim(animNo, Loop, BlendInTime, BlendOutTime, InPlayRate) end
---@return int32
function AAppCharWeaponBase:GetWaitAnimNo() end
function AAppCharWeaponBase:Event_LoadEnd() end


---@class AAppLvMngUnloadMonitorActor : AActor
---@field mUniqueId_ int32
---@field mLevelName_ FName
---@field mManager_ UAppLevelManager
local AAppLvMngUnloadMonitorActor = {}

function AAppLvMngUnloadMonitorActor:OnEndExec() end


---@class AAppPropsCardContainer : AAppActor
---@field Loader UAssetLoader
---@field CardList TArray<FAppPropsCardData>
---@field PersonaCardClass TSubclassOf<AAppPropsCore>
---@field MajorCardClass TSubclassOf<AAppPropsCore>
---@field MinorCardClass TSubclassOf<AAppPropsCore>
local AAppPropsCardContainer = {}

---@return boolean
function AAppPropsCardContainer:SyncCards() end
---@param Params TArray<FAppPropsCardParam>
function AAppPropsCardContainer:LoadCards(Params) end
---@return TArray<FAppPropsCardData>
function AAppPropsCardContainer:GetCards() end
---@param DestroyCardProps boolean
function AAppPropsCardContainer:DestroyContainer(DestroyCardProps) end


---@class AAppPropsCore : AAppActor
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
---@field Root USceneComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field mAnimePackAsset_ UAppPropsAnimPackAsset
local AAppPropsCore = {}

---@param AnimePackIndex int32
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param AnimSlotName FName
function AAppPropsCore:PlayAnimationPack(AnimePackIndex, IsLoop, BlendInTime, BlendOutTime, InPlayRate, AnimSlotName) end
---@param LocalDataIndex int32
---@param ConditionalValue int32
---@param CompareType EEvtConditionalBranchCompType
function AAppPropsCore:CompareToHiddenCharacter(LocalDataIndex, ConditionalValue, CompareType) end


---@class AApplicationWindowState : AActor
local AApplicationWindowState = {}

---@param IsFocus boolean
function AApplicationWindowState:OnFocusChangeBP(IsFocus) end


---@class AAssistTest : AAppActor
---@field Loader_ UAssetLoader
---@field BmdAsset_ UBmdAsset
local AAssistTest = {}



---@class AAssistViewTest : AAppActor
---@field Loader_ UAssetLoader
---@field BmdAsset_ UBmdAsset
local AAssistViewTest = {}



---@class AAstreaPreviewHelperActor : AAppActor
local AAstreaPreviewHelperActor = {}


---@class AAstreaProgressActor : AAppActor
---@field mAssetLoader_ UAssetLoader
---@field mBpClass_ UClass
---@field mBfAsset_ UBfAsset
---@field mProcActor_ AAstreaProgressProcActor
local AAstreaProgressActor = {}

function AAstreaProgressActor:SetEnd() end


---@class AAstreaProgressProcActor : AAppActor
---@field EndDelegate FAstreaProgressProcActorEndDelegate
---@field ScrActor AScrActor
local AAstreaProgressProcActor = {}

function AAstreaProgressProcActor:Return() end
---@param ExitType int32
function AAstreaProgressProcActor:OnFinishedProc(ExitType) end
---@param ExitType int32
function AAstreaProgressProcActor:OnFinishedAtlScr(ExitType) end
function AAstreaProgressProcActor:CallNextProgress() end


---@class AAtlEvtAnswerActor : AAppActor
---@field mNetAnswer_ AAppActor
local AAtlEvtAnswerActor = {}



---@class AAtlEvtEventEditHelper : AAppActor
---@field bLoadAllSublevels boolean
---@field EventSublevelName FString
---@field EventCategoryType EAtlEvtEventCategoryType
---@field bFieldEventInterpFieldCamera boolean
---@field PreviewTimeZone ECldTimeZone
---@field PreviewSeason ECldSeason
---@field bPreviewCrowd boolean
---@field PreviewCrowdMonth int32
---@field PreviewCrowdDay int32
---@field PreviewCrowdTimeZone ECldTimeZone
---@field InitReadActor TWeakObjectPtr<AInitReadActor>
local AAtlEvtEventEditHelper = {}

---@param InCrowdMonth int32
---@param InCrowdDay int32
---@param InCrowdTimeZone ECldTimeZone
---@param bInPreviewCrowd boolean
function AAtlEvtEventEditHelper:SetPreviewCrowdSettings(InCrowdMonth, InCrowdDay, InCrowdTimeZone, bInPreviewCrowd) end
function AAtlEvtEventEditHelper:OnLoadedLevelInPIE() end
---@return boolean
function AAtlEvtEventEditHelper:IsRankAEvent() end


---@class AAtlEvtEventManager : AAppActor
---@field FieldCameraActor AActor
---@field MovieSceneCameraActor AActor
---@field EventRank EEventManagerEventRank
---@field EventSkipWidget UEventSkipWidgetDelegate
---@field EventSkipWidgetClass TSubclassOf<UEventSkipWidgetDelegate>
---@field MovieSceneOperator FAtlEvtEventManagerMovieSceneOperator
---@field mpBmdAsset UBmdAsset
---@field MsgUniqIDList TArray<uint32>
---@field BmdAssetMsgID int32
---@field ExecutingMessageNo int32
---@field MessageState EEventManagerMessageState
---@field ScrActor AScrActor
---@field UIBackLogActor AUIBackLog
---@field UINetAnswerActor AUIVoiceAnswer
---@field EventSequencePlayer UMovieSceneSequencePlayer
---@field RequestedSeqClosedEventMessageID int32
---@field SeqControllerState EEventManagerSeqControllerState
---@field PauseControllerActor AAtlEvtEventManager_PauseActor
---@field MoviePlayManager UAtlEvtMoviePlayManager
local AAtlEvtEventManager = {}

---@param Index int32
---@param Data int32
function AAtlEvtEventManager:SetLocalData(Index, Data) end
function AAtlEvtEventManager:ResumeEventSequencer() end
---@param ExitType int32
function AAtlEvtEventManager:OnFinishedAtlScr(ExitType) end
---@return boolean
function AAtlEvtEventManager:IsPlaying() end
---@return boolean
function AAtlEvtEventManager:IsEventRankA() end
---@param Index int32
---@return int32
function AAtlEvtEventManager:GetLocalData(Index) end
function AAtlEvtEventManager:ForcedStopScript() end
function AAtlEvtEventManager:ForcedRemoveMessage() end
---@param Key FKey
---@param EventType EInputEvent
function AAtlEvtEventManager:ForceClick(Key, EventType) end
---@return int32
function AAtlEvtEventManager:ExecuteSelectScript() end
---@param InAsset UBfAsset
---@param InProcNo int32
---@param bUseBmdAssetInBfAsset boolean
---@param InBmdAsset UBmdAsset
function AAtlEvtEventManager:ExecuteScript(InAsset, InProcNo, bUseBmdAssetInBfAsset, InBmdAsset) end
---@return int32
function AAtlEvtEventManager:ExecuteMsgScript() end
---@param InAsset UBmdAsset
---@param InMessageNo int32
---@param InSelectNo int32
---@param InSelectResponceToLocalDataID int32
---@param InSeqEventMessageID int32
function AAtlEvtEventManager:ExecuteMessageWithSelect(InAsset, InMessageNo, InSelectNo, InSelectResponceToLocalDataID, InSeqEventMessageID) end
---@param InAsset UBmdAsset
---@param InMessageNo int32
---@param InEventMessageID int32
function AAtlEvtEventManager:ExecuteMessage(InAsset, InMessageNo, InEventMessageID) end
---@param InAsset UBmdAsset
---@param InMessageMajorID int32
---@param InMessageMinorID int32
---@param InMessageSubID int32
---@param InMessagePageID int32
---@param InSelectMessageMajorID int32
---@param InSelectMessageMinorID int32
---@param InSelectMessageSubID int32
---@param InSelectResponceToLocalDataID int32
---@param bInEnableMessageRef boolean
---@param InEventMessageID int32
function AAtlEvtEventManager:ExecuteBmdMessageWithSelect(InAsset, InMessageMajorID, InMessageMinorID, InMessageSubID, InMessagePageID, InSelectMessageMajorID, InSelectMessageMinorID, InSelectMessageSubID, InSelectResponceToLocalDataID, bInEnableMessageRef, InEventMessageID) end
---@param InAsset UBmdAsset
---@param InMessageMajorID int32
---@param InMessageMinorID int32
---@param InMessageSubID int32
---@param InMessagePageID int32
---@param InDrawFrame int32
---@param InSelectMessageMajorID int32
---@param InSelectMessageMinorID int32
---@param InSelectMessageSubID int32
---@param InSelectResponceToLocalDataID int32
---@param bInEnableMessageRef boolean
---@param InSeqEventMessageID int32
function AAtlEvtEventManager:ExecuteBmdMessageSubtitleWithSelect(InAsset, InMessageMajorID, InMessageMinorID, InMessageSubID, InMessagePageID, InDrawFrame, InSelectMessageMajorID, InSelectMessageMinorID, InSelectMessageSubID, InSelectResponceToLocalDataID, bInEnableMessageRef, InSeqEventMessageID) end
---@param InAsset UBmdAsset
---@param InSelectMessageMajorID int32
---@param InSelectMessageMinorID int32
---@param InSelectMessageSubID int32
---@param InSelectResponceToLocalDataID int32
function AAtlEvtEventManager:ExecuteBmdMessageSubtitleSelect(InAsset, InSelectMessageMajorID, InSelectMessageMinorID, InSelectMessageSubID, InSelectResponceToLocalDataID) end
---@param InAsset UBmdAsset
---@param InMessageMajorID int32
---@param InMessageMinorID int32
---@param InMessageSubID int32
---@param InMessagePageID int32
---@param InDrawFrame int32
---@param bInEnableMessageRef boolean
---@param InSeqEventMessageID int32
function AAtlEvtEventManager:ExecuteBmdMessageSubtitle(InAsset, InMessageMajorID, InMessageMinorID, InMessageSubID, InMessagePageID, InDrawFrame, bInEnableMessageRef, InSeqEventMessageID) end
---@param InAsset UBmdAsset
---@param InMessageMajorID int32
---@param InMessageMinorID int32
---@param InMessageSubID int32
---@param InMessagePageID int32
---@param bInEnableMessageRef boolean
---@param InSeqEventMessageID int32
function AAtlEvtEventManager:ExecuteBmdMessage(InAsset, InMessageMajorID, InMessageMinorID, InMessageSubID, InMessagePageID, bInEnableMessageRef, InSeqEventMessageID) end
function AAtlEvtEventManager:CloseMessage() end
function AAtlEvtEventManager:BackLogFinishDelegte() end
function AAtlEvtEventManager:AtlEvt_ResumeEventSequencer() end


---@class AAtlEvtEventManager_PauseActor : AAppActor
---@field OwnerManagerActor AAtlEvtEventManager
---@field CurrentAtlEventState UEvtManagerStateBase
---@field AtlEventStates TMap<EEvtManagerState, UEvtManagerStateBase>
---@field UIBackLogActor AUIBackLog
---@field OnFinishedBackLog FAtlEvtEventManager_PauseActorOnFinishedBackLog
---@field OnFinishedNetAnswer FAtlEvtEventManager_PauseActorOnFinishedNetAnswer
local AAtlEvtEventManager_PauseActor = {}



---@class AAtlEvtHighStreamingLocator : AAppActor
---@field HighStreamingLocatorID int32
---@field BoostFactor float
---@field bOverrideLocation boolean
---@field Duration float
local AAtlEvtHighStreamingLocator = {}

---@param bEnable boolean
function AAtlEvtHighStreamingLocator:SetEnableHighStreaming(bEnable) end


---@class AAtlEvtLevelSequenceActor : ALevelSequenceActor
---@field AtlSequenceType EAtlLevelSequenceActorType
---@field EvtDialogueTimeArray TArray<FFrameNumber>
---@field SoundAssetArray TArray<FAtlEvtLevelSequenceSound>
---@field BankIDArray TArray<int32>
---@field EventVoiceAssetArray TArray<FAtlEvtLevelSequenceEventVoice>
---@field EventSEAssetArray TArray<FAtlEvtLevelSequenceEventSE>
---@field AtlFieldEventIndex int32
---@field bUseDOFInCamera boolean
---@field OnTickFromSequenceTickManager FAtlEvtLevelSequenceActorOnTickFromSequenceTickManager
local AAtlEvtLevelSequenceActor = {}

---@param MovieSceneSequence UMovieSceneSequence
---@param CurrentSubSceneSection UMovieSceneSubSection
function AAtlEvtLevelSequenceActor:PreloadEvtDialogueTime(MovieSceneSequence, CurrentSubSceneSection) end
---@param CurrentTime FQualifiedFrameTime
---@param PreviousTime FQualifiedFrameTime
function AAtlEvtLevelSequenceActor:OnTickFromSequenceTickManager__DelegateSignature(CurrentTime, PreviousTime) end
---@param bEnable boolean
function AAtlEvtLevelSequenceActor:OnHighSpeed(bEnable) end
---@return boolean
function AAtlEvtLevelSequenceActor:IsCompletedLoadSoundAssets() end


---@class AAtlEvtLevelSequenceLoadingActor : AActor
---@field OwnerEvtLevelSequenceActor AAtlEvtLevelSequenceActor
local AAtlEvtLevelSequenceLoadingActor = {}

function AAtlEvtLevelSequenceLoadingActor:OnFinishedLoadingAssets() end


---@class AAtlEvtLightScenarioLoader : AAppActor
---@field OnLoadCompletedDelegate FAtlEvtLightScenarioLoaderOnLoadCompletedDelegate
local AAtlEvtLightScenarioLoader = {}

function AAtlEvtLightScenarioLoader:OnLoadCompleted() end


---@class AAtlEvtLightScenarioTransitionController : AAppActor
---@field OnUnloadCompletedDelegate FAtlEvtLightScenarioTransitionControllerOnUnloadCompletedDelegate
---@field LightScenarioSublevelParamArray TArray<FAtlEvtLightScenarioSublevelParam>
---@field LoaderActor AAtlEvtLightScenarioLoader
---@field UnloaderActor AAtlEvtLightScenarioUnloader
---@field pAssetLoader UAssetLoader
local AAtlEvtLightScenarioTransitionController = {}

---@param InNextLightScenarioIndex int32
function AAtlEvtLightScenarioTransitionController:TransitionLightScenario(InNextLightScenarioIndex) end
function AAtlEvtLightScenarioTransitionController:RemoveAllLightScenarioParam() end
---@param Index int32
function AAtlEvtLightScenarioTransitionController:OnUnloadFinished(Index) end
---@param Index int32
function AAtlEvtLightScenarioTransitionController:OnLoadFinished(Index) end
function AAtlEvtLightScenarioTransitionController:OnCompletedPreload() end
---@return boolean
function AAtlEvtLightScenarioTransitionController:IsDoingTransition() end
---@return int32
function AAtlEvtLightScenarioTransitionController:GetLightScenarioNum() end
---@param LevelName FName
---@return int32
function AAtlEvtLightScenarioTransitionController:AddLightScenario(LevelName) end


---@class AAtlEvtLightScenarioUnloader : AAppActor
---@field OnUnloadCompletedDelegate FAtlEvtLightScenarioUnloaderOnUnloadCompletedDelegate
local AAtlEvtLightScenarioUnloader = {}

function AAtlEvtLightScenarioUnloader:OnUnloadCompleted() end


---@class AAtlEvtOnePicture : AActor
---@field TextureArray TArray<UEvtTextureForOnePicture>
---@field Material UMaterial
---@field DynamicMaterial UMaterialInstanceDynamic
---@field AssetLoader UAssetLoader
local AAtlEvtOnePicture = {}



---@class AAtlEvtPlayObject : AAppActor
---@field LevelName FString
---@field EvtPlayParam FAtlEvtPlayParameter
---@field EventRank FString
---@field LevelSequenceActor ALevelSequenceActor
local AAtlEvtPlayObject = {}

function AAtlEvtPlayObject:OnPlayEventSequencer() end
function AAtlEvtPlayObject:OnLoadLevelStreaming() end
function AAtlEvtPlayObject:OnLoadFieldLevelStreaming_WaitUnpaused() end
function AAtlEvtPlayObject:OnLoadFieldLevelStreaming_DelayCompleted() end
function AAtlEvtPlayObject:OnLoadFieldLevelStreaming() end
function AAtlEvtPlayObject:OnLoadEvtLevelSequence() end
function AAtlEvtPlayObject:OnLoadedReplaceCharactersCostume() end
function AAtlEvtPlayObject:OnLoadedReplaceCharacters() end
function AAtlEvtPlayObject:OnLoadedMovieTrack() end
function AAtlEvtPlayObject:OnFinishedSceneChange() end
function AAtlEvtPlayObject:OnFinishedEventSequencer() end


---@class AAtlEvtPlayOnBindingActorObject : AAtlEvtPlayObject
---@field EvtName FString
local AAtlEvtPlayOnBindingActorObject = {}

function AAtlEvtPlayOnBindingActorObject:OnLoadBindingLevelStreaming() end


---@class AAtlEvtPlayUnstreamObject : AAppActor
---@field LevelName FString
---@field LevelSequenceActor ALevelSequenceActor
local AAtlEvtPlayUnstreamObject = {}

function AAtlEvtPlayUnstreamObject:OnFinishedUnloadLevelStreaming() end


---@class AAtlEvtPropDetachLocator : AAppActor
local AAtlEvtPropDetachLocator = {}


---@class AAtlNiagaraActor : AAppActor
---@field NiagaraComponent UNiagaraComponent
local AAtlNiagaraActor = {}



---@class ABasePartyPanel : AUIBaseActor
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
local ABasePartyPanel = {}



---@class ABtlAI : AAppActor
---@field Character ABtlActor
---@field Core UBtlCoreComponent
---@field ActionType EBtlCommandType
---@field PrevActionType EBtlCommandType
---@field ActionID uint32
---@field ActionSkillID uint32
---@field ActionItemID uint32
---@field PrevActionID uint32
---@field MinorParam uint16
---@field ReceiveSkillAttr EBtlDataAttr
---@field ActionTargets TArray<ABtlActor>
---@field PrevActionTargets TArray<ABtlActor>
local ABtlAI = {}

---@param Actor ABtlActor
---@return int32
function ABtlAI:GetPrevUseActionIDForActor(Actor) end


---@class ABtlActor : APawn
---@field OnActCommand FBtlActorOnActCommand
---@field OnActionStart FBtlActorOnActionStart
---@field OnShowActionName FBtlActorOnShowActionName
---@field OnFinishedExpireSupport FBtlActorOnFinishedExpireSupport
---@field OnFinishedRecoveryFromBadStatus FBtlActorOnFinishedRecoveryFromBadStatus
---@field OnFinishedActBadStatus FBtlActorOnFinishedActBadStatus
---@field OnSyncPersonaLoad FBtlActorOnSyncPersonaLoad
---@field CustomEquipments FBtlEventCustomEquipment
---@field OnSyncSummonEnemyLoad FBtlActorOnSyncSummonEnemyLoad
---@field OnSyncFukaLoad FBtlActorOnSyncFukaLoad
---@field AttackBaseType EBtlAttackType
---@field HomePosition FVector
---@field HomeRotation FRotator
---@field Position FVector
---@field Rotation FRotator
---@field HomePositionID int32
---@field InitialLocationIndexFromLeft int32
---@field EnemyFlag boolean
---@field PersonaFlag boolean
---@field PersonaHideEmergeEffect boolean
---@field AI ABtlAI
---@field Voice UBtlVoice
---@field BtlCore UBtlCoreComponent
---@field PersonaList TArray<ABtlActor>
---@field RequestedPersonaNum int32
---@field EffectList TArray<FBtlEffectItem>
---@field EffectRequestList TArray<EBtlBadStatusIcon>
---@field CurrentBadStatusType EBtlBadStatusIcon
---@field AlloutAttackResult EBtlAlloutAttackResult
---@field AttackPerformanceType EBtlAttackPerformanceType
local ABtlActor = {}

function ABtlActor:UpdatePersonalAnimation() end
---@param Dead boolean
function ABtlActor:TurnOffOrgia(Dead) end
function ABtlActor:ToEndTurn() end
---@return boolean
function ABtlActor:SyncSkillTimeline() end
---@return boolean
function ABtlActor:SyncModelsForEvent() end
---@return boolean
function ABtlActor:SyncModelsForAlloutAttack() end
function ABtlActor:SummonGunTurnToTheurgiaMode() end
function ABtlActor:StopShakeAnim() end
function ABtlActor:StartHoldup() end
function ABtlActor:StartEscape() end
function ABtlActor:StandbyAction() end
---@return ABtlActor
function ABtlActor:SpawnSummonEnemy() end
---@param WithoutEmergeEffect boolean
function ABtlActor:SpawnPersona(WithoutEmergeEffect) end
---@return ABtlActor
function ABtlActor:SpawnFukaForTheurgia() end
---@param initialHiding boolean
function ABtlActor:SpawnCharacterBP(initialHiding) end
---@return TArray<ABtlActor>
function ABtlActor:SpawnAllSummonEnemy() end
function ABtlActor:ShowFromHiding() end
function ABtlActor:ShowActionName() end
---@param Visible boolean
function ABtlActor:SetVisibleFromCode(Visible) end
---@param Enable boolean
function ABtlActor:SetupForEventMode(Enable) end
function ABtlActor:SetupConditionForAllyEscape() end
---@param Color FColor
function ABtlActor:SetStatusColor(Color) end
---@param WorldTrans FTransform
---@param Index int32
function ABtlActor:SetPersonaWorldLocation(WorldTrans, Index) end
---@param RelativeTrans FTransform
---@param Index int32
function ABtlActor:SetPersonaLocation(RelativeTrans, Index) end
function ABtlActor:SetGuard() end
---@param Type EBtlAlloutAttackResult
function ABtlActor:SetGeneralAttackResult(Type) end
---@param Enable boolean
function ABtlActor:SetEventMode(Enable) end
---@param disable boolean
function ABtlActor:SetDisableUpdateFaceAnimFromBody(disable) end
---@param Enable boolean
function ABtlActor:SetActiveMode(Enable) end
---@param ActionID int32
function ABtlActor:SetActionID(ActionID) end
---@param InObject UObject
---@return USkeletalMeshComponent
function ABtlActor:SearchSkeletalMesh(InObject) end
function ABtlActor:RumbleEnemyEmerge() end
function ABtlActor:RestoreModelsFromEvent() end
function ABtlActor:RestoreModelsFromAlloutAttack() end
function ABtlActor:ResetAlongWithRelocation() end
function ABtlActor:RequestPersonalAnimation() end
function ABtlActor:RequestHidePlayersForEspaceSkill() end
---@param AnimType EAppCharFaceAnimID
---@param UseBlendSetting boolean
---@param Blend float
function ABtlActor:RequestFaceAnimation(AnimType, UseBlendSetting, Blend) end
function ABtlActor:RequestDamageAndDeadPerformance() end
---@param AnimType EBtlAnimationType
---@param animNextType EBtlAnimationType
function ABtlActor:RequestAnimationWithNext(AnimType, animNextType) end
---@param AnimType EBtlAnimationType
---@param startingPosition float
---@param UseBlendSetting boolean
---@param Blend float
function ABtlActor:RequestAnimation(AnimType, startingPosition, UseBlendSetting, Blend) end
---@param Type EBtlBadStatusIcon
function ABtlActor:RequestAddStatusEffect(Type) end
---@param Type EBtlBadStatusIcon
function ABtlActor:RemoveEffectItem(Type) end
function ABtlActor:ProcessBeforeCommandSelectStart() end
function ABtlActor:ProcBeforeFadeinToAlloutAttackDamage() end
---@param portionRatio float
function ABtlActor:PreAffectSkillDamagePortion(portionRatio) end
---@param startingPosition float
---@param UseBlendSetting boolean
---@param Blend float
---@param IgnoreWhenSamePose boolean
function ABtlActor:PlayWaitAnimation(startingPosition, UseBlendSetting, Blend, IgnoreWhenSamePose) end
---@param TypeIndex int32
function ABtlActor:PlayVoiceTheurgia(TypeIndex) end
function ABtlActor:PlayVoiceTakeoverStart() end
function ABtlActor:PlayVoiceTakeoverReceive() end
function ABtlActor:PlayVoiceSkillShot() end
function ABtlActor:PlayVoiceSkillChant() end
---@param isFirstSummon boolean
function ABtlActor:PlayVoicePersonaSkillCutin(isFirstSummon) end
function ABtlActor:PlayVoicePersonaSkill() end
function ABtlActor:PlayVoiceFirstSummonScene() end
function ABtlActor:PlayVoiceDead() end
function ABtlActor:PlayVoiceAlloutAttackStart() end
function ABtlActor:PlayVoiceAlloutAttacking() end
function ABtlActor:PlayVoiceAlloutAttackFinishStart() end
function ABtlActor:PlayVoiceAlloutAttackFinishCut() end
function ABtlActor:PlayShakeAnim() end
function ABtlActor:PlayReflectionEffect() end
function ABtlActor:PlayEnemySummonEffect() end
function ABtlActor:PlayAbsorptionEffect() end
function ABtlActor:MarkReadyToDestroy() end
function ABtlActor:MarkAsPlayedStandbyCamera() end
function ABtlActor:MarkAsHidingPersonaForSkillScene() end
function ABtlActor:MarkAsCalledFirstSummonScene() end
function ABtlActor:MarkAsAvoidRelocationUntilTurnEnd() end
function ABtlActor:LoadModelsForEvent() end
function ABtlActor:LoadModelsForAlloutAttack() end
function ABtlActor:LoadFukaForTheurgia() end
---@return boolean
function ABtlActor:IsVelvet() end
---@return boolean
function ABtlActor:IsValidUnit() end
---@return boolean
function ABtlActor:IsUsingSummonSkill() end
---@return boolean
function ABtlActor:IsUsingOffensiveSkill() end
---@return boolean
function ABtlActor:IsUsingGroupTargetSkill() end
---@return boolean
function ABtlActor:IsUsingDamageSkill() end
---@return boolean
function ABtlActor:IsUsingAllTargetSkill() end
---@return boolean
function ABtlActor:IsSummonedEnemy() end
---@return boolean
function ABtlActor:IsStrega() end
---@return boolean
function ABtlActor:IsSkillTrafuliEscape() end
---@return boolean
function ABtlActor:IsSkillTheurgia() end
---@return boolean
function ABtlActor:IsSkillPhysicalType() end
---@return boolean
function ABtlActor:IsSkillOrgia() end
---@return boolean
function ABtlActor:IsSkillMixraid() end
---@return boolean
function ABtlActor:IsSkillItemDumping() end
---@return boolean
function ABtlActor:IsSkillHit() end
---@return boolean
function ABtlActor:IsSkillFukaTheurgia() end
---@return boolean
function ABtlActor:IsSkillEffective() end
---@return boolean
function ABtlActor:IsRushAttack() end
---@return boolean
function ABtlActor:IsPossibleTakeoverTarget() end
---@return boolean
function ABtlActor:IsPossibleEventTarget() end
---@return boolean
function ABtlActor:IsPossibleAlloutMember() end
---@return boolean
function ABtlActor:IsPossibleAITarget() end
---@return boolean
function ABtlActor:IsPlayableDyingAnim() end
---@return boolean
function ABtlActor:IsPersonaEvolved() end
---@return boolean
function ABtlActor:IsPersona() end
---@return boolean
function ABtlActor:IsOrgia() end
---@return boolean
function ABtlActor:IsOccurringSkillReflection() end
---@return boolean
function ABtlActor:IsOccurringSkillBlock() end
---@return boolean
function ABtlActor:IsOccurringSkillAbsorption() end
---@return boolean
function ABtlActor:IsNewBattleOutfitForAlloutFinish() end
---@return boolean
function ABtlActor:IsNewBattleOutfit() end
---@return boolean
function ABtlActor:IsManualOperation() end
---@return boolean
function ABtlActor:IsKoromaru() end
---@return boolean
function ABtlActor:IsInTakeOver() end
---@return boolean
function ABtlActor:IsInOneMore() end
---@return boolean
function ABtlActor:IsInActionTurn() end
---@return boolean
function ABtlActor:IsGuard() end
---@return boolean
function ABtlActor:IsEnemyInParty() end
---@return boolean
function ABtlActor:IsEnemy() end
---@return boolean
function ABtlActor:IsDyingBadStatus() end
---@return boolean
function ABtlActor:IsDying() end
---@return boolean
function ABtlActor:IsDown() end
---@return boolean
function ABtlActor:IsDormancy() end
---@return boolean
function ABtlActor:IsDead() end
---@return boolean
function ABtlActor:IsBoss() end
---@return boolean
function ABtlActor:IsAttackMiss() end
---@return boolean
function ABtlActor:IsAttackHit() end
---@return boolean
function ABtlActor:IsAttackFailed() end
---@return boolean
function ABtlActor:IsAttackControlledByAI() end
---@return boolean
function ABtlActor:IsAstreaCutinEnemy() end
---@return boolean
function ABtlActor:IsAstreaColosseoEnemy() end
---@return boolean
function ABtlActor:IsAnimationWait() end
---@return boolean
function ABtlActor:IsAnimationChant() end
function ABtlActor:InstantKill() end
---@param CriticalHindrance boolean
---@param Rapid boolean
---@param HalfMode boolean
function ABtlActor:HideForOtherAction(CriticalHindrance, Rapid, HalfMode) end
---@return int32
function ABtlActor:GetUID() end
---@return UBtlTargetsManagerComponent
function ABtlActor:GetTargetsManager() end
---@return int32
function ABtlActor:GetSummonEnemyID() end
---@param SocketName FName
---@return FTransform
function ABtlActor:GetSocketTransformFromCpp(SocketName) end
---@return FBtlBossAnimRequestParam
function ABtlActor:GetSkillShotAnim() end
---@return int32
function ABtlActor:GetSkillID() end
---@return FBtlBossAnimRequestParam
function ABtlActor:GetSkillEndAnim() end
---@return FBtlBossAnimRequestParam
function ABtlActor:GetSkillChantAnim() end
---@return EBtlSizeCategoryType
function ABtlActor:GetSizeCategory() end
---@return float
function ABtlActor:GetRecoveryWaitTime() end
---@param PersonaOwner ABtlActor
---@return FTransform
function ABtlActor:GetPersonaTransformFromSkillCondition(PersonaOwner) end
---@param ForCutin boolean
---@return FTransform
function ABtlActor:GetPersonaTransform(ForCutin) end
---@param Index int32
---@return ABtlActor
function ABtlActor:GetPersona(Index) end
---@return int32
function ABtlActor:GetOriginalID() end
---@return int32
function ABtlActor:GetItemID() end
---@return int32
function ABtlActor:GetId() end
---@return FVector
function ABtlActor:GetHomePosition() end
---@return EBtlAlloutAttackResult
function ABtlActor:GetGeneralAttackResult() end
---@return float
function ABtlActor:GetExpireSupportWaitTime() end
---@return EBtlBadStatusIcon
function ABtlActor:GetCurrentStatusEffectType() end
---@return EBtlAnimationType
function ABtlActor:GetCurrentAnimation() end
---@return int32
function ABtlActor:GetCharacterID() end
---@return UAppCharBaseComp
function ABtlActor:GetCharaBPFromCode() end
---@param Type EBtlBadStatusIcon
---@return FName
function ABtlActor:GetBadStatusEffectName(Type) end
---@return float
function ABtlActor:GetBadStatusActionWaitTime() end
---@return EBtlAttackWeaponAnimType
function ABtlActor:GetAttackWeaponAnimType() end
---@return EBtlAttackType
function ABtlActor:GetAttackType() end
---@return EBtlAttackPerformanceType
function ABtlActor:GetAttackPerformanceType() end
---@return EBtlDataAttr
function ABtlActor:GetAttackAttr() end
---@return float
function ABtlActor:GetAnimationBaseSpeedRatio() end
---@return EBtlCommandType
function ABtlActor:GetActionType() end
---@return TArray<ABtlActor>
function ABtlActor:GetActionTargets() end
---@return UBtlActionManagerComponent
function ABtlActor:GetActionManager() end
---@return int32
function ABtlActor:GetActionID() end
function ABtlActor:EnemiesLookatThisCharacter() end
function ABtlActor:EndWaitTurn() end
function ABtlActor:DoSpecificActionTurnEnd() end
function ABtlActor:DoSpecificActionAIEnd() end
function ABtlActor:DoSpecificActionActEnd() end
---@return boolean
function ABtlActor:DoSpecificAction() end
function ABtlActor:DoNothing() end
function ABtlActor:DoGeneralAttack() end
---@param BtlCore UBtlCoreComponent
function ABtlActor:DoClearSupportStatus(BtlCore) end
---@param IsDamageOccurred boolean
function ABtlActor:DoBadStatusDamage(IsDamageOccurred) end
---@param ActBadStatusSkillAction boolean
---@param NeedToWaitProcess boolean
---@param IsOverheatInterrupt boolean
function ABtlActor:DoBadStatusAction(ActBadStatusSkillAction, NeedToWaitProcess, IsOverheatInterrupt) end
---@param RecoveryValid boolean
function ABtlActor:DoAutoSkillRecovery(RecoveryValid) end
function ABtlActor:DestroyPersonaBeforeCreatePersona() end
function ABtlActor:DestroyPersona() end
---@param pFuka ABtlActor
function ABtlActor:DestroyFukaForTheurgia(pFuka) end
---@param pNiagara UNiagaraComponent
function ABtlActor:DestroyEffect(pNiagara) end
function ABtlActor:CreateSummonEnemy() end
function ABtlActor:CreatePersona() end
---@param Skill ABtlSkill
function ABtlActor:CoordinateSkillBPForSpecificSituations(Skill) end
---@param Found boolean
---@param Type EBtlAnimationType
---@param ForceShowWeapon boolean
---@param Params FBtlBossAnimRequestParam
---@return FName
function ABtlActor:ConvExAnimSectionName(Found, Type, ForceShowWeapon, Params) end
---@param Status boolean
---@param Down boolean
---@param keepSwoon boolean
function ABtlActor:CleanupStatusEffect(Status, Down, keepSwoon) end
---@return boolean
function ABtlActor:CheckUsingTakeoverOtherCamera() end
---@return boolean
function ABtlActor:CheckUseSkillShotSeqCam() end
---@return boolean
function ABtlActor:CheckTurnFromGuardCancel() end
---@return boolean
function ABtlActor:CheckSkipTurn() end
---@return boolean
function ABtlActor:CheckSkipSkillEndAnim() end
---@return boolean
function ABtlActor:CheckSkipSkillChantAnim() end
---@return boolean
function ABtlActor:CheckSkipAction() end
---@return boolean
function ABtlActor:CheckSkillCameraCharacterHideDisable() end
---@return boolean
function ABtlActor:CheckShakingWhenDownDamage() end
---@return boolean
function ABtlActor:CheckRecoveryFromDown() end
---@param BtlCore UBtlCoreComponent
---@return boolean
function ABtlActor:CheckRecoveryFromBadStatus(BtlCore) end
---@param pFuka ABtlActor
---@return boolean
function ABtlActor:CheckReadyFukaForTheurgia(pFuka) end
---@return boolean
function ABtlActor:CheckReadyCharacterBP() end
---@return boolean
function ABtlActor:CheckReady() end
---@return boolean
function ABtlActor:CheckProgressToHoldup() end
---@return boolean
function ABtlActor:CheckPriorConvExAnimSection() end
---@return boolean
function ABtlActor:CheckPlayedStandbyCamera() end
---@return boolean
function ABtlActor:CheckPlayableWaitAnimation() end
---@return boolean
function ABtlActor:CheckPlayableShortSkillSceneAfterCutin() end
---@return boolean
function ABtlActor:CheckPersonaValid() end
---@return boolean
function ABtlActor:CheckPersonaStartWithoutEmergePerformance() end
---@return boolean
function ABtlActor:CheckPersonaAlreadyChanged() end
---@return boolean
function ABtlActor:CheckNotSummonPersonaSkill() end
---@return boolean
function ABtlActor:CheckNeedToPlayPreSkillPorc() end
---@return boolean
function ABtlActor:CheckNeedToCallFirstSummonScene() end
---@return boolean
function ABtlActor:CheckNeedOverheatScene() end
---@return boolean
function ABtlActor:CheckLookatEnable() end
---@return boolean
function ABtlActor:CheckKeepDeadAnimation() end
---@return boolean
function ABtlActor:CheckInOverheatProc() end
---@return boolean
function ABtlActor:CheckInAlloutSequence() end
---@return boolean
function ABtlActor:CheckIdle() end
---@return boolean
function ABtlActor:CheckHidingPersonaForSkillScene() end
---@return boolean
function ABtlActor:CheckHiddingWeaponMode() end
---@return boolean
function ABtlActor:CheckGuest() end
---@return boolean
function ABtlActor:CheckGeneralAttackAnnihilation() end
---@param BtlCore UBtlCoreComponent
---@return boolean
function ABtlActor:CheckExpireSupportStatus(BtlCore) end
---@param RequestType EBtlBadStatusIcon
---@return boolean
function ABtlActor:CheckExistStatusEffectRequestList(RequestType) end
---@param Type EBtlBadStatusIcon
---@return boolean
function ABtlActor:CheckExistStatusEffect(Type) end
---@return boolean
function ABtlActor:CheckEnableTranslucence() end
---@return boolean
function ABtlActor:CheckEnableTheurgiaSkillUse() end
---@return boolean
function ABtlActor:CheckEnableTakeover() end
---@return boolean
function ABtlActor:CheckEnableRotation() end
---@return boolean
function ABtlActor:CheckEnableDeadAnimation() end
---@return boolean
function ABtlActor:CheckDownContinuedState() end
---@return boolean
function ABtlActor:CheckDisableUpdateFaceAnimFromBody() end
---@return boolean
function ABtlActor:CheckCutinOccur() end
---@return boolean
function ABtlActor:CheckBadStatusEscape() end
---@return boolean
function ABtlActor:CheckBadStatusDamage() end
---@return boolean
function ABtlActor:CheckBadStatusAction() end
---@return boolean
function ABtlActor:CheckBackshotDisable() end
---@return boolean
function ABtlActor:CheckAlreadyTakeover() end
---@return boolean
function ABtlActor:CheckAlive() end
---@return boolean
function ABtlActor:CheckActiveMode() end
function ABtlActor:CharacterDestroy() end
function ABtlActor:CancelHoldup() end
---@param pCore UBtlCoreComponent
---@param Pos FVector
---@param standRange float
---@param coordinateFromEnemyCenter boolean
---@return FVector
function ABtlActor:CalcClosedStandLocation(pCore, Pos, standRange, coordinateFromEnemyCenter) end
function ABtlActor:AffectSkillDamageRestPortion() end
---@param RecoveryHpRatio float
function ABtlActor:AffectRecoveryFromEvent(RecoveryHpRatio) end
---@param BtlCore UBtlCoreComponent
function ABtlActor:AffectRecoveryBadStatus(BtlCore) end
function ABtlActor:AffectOverheat() end
function ABtlActor:AffectGeneralAttackDamage() end
function ABtlActor:AffectGeneralAttackAnnihilation() end
function ABtlActor:AffectEscape() end
function ABtlActor:AdjustPersonaLocation() end
function ABtlActor:AdjustHomePosition() end
---@param Type EBtlTheurgiaBoostType
function ABtlActor:AddTheurgiaGauge(Type) end
---@param RequestType EBtlBadStatusIcon
function ABtlActor:AddStatusEffectRequestList(RequestType) end
---@param ref UNiagaraComponent
---@param Type EBtlBadStatusIcon
---@param ParentEmpActor AActor
function ABtlActor:AddStatusEffect(ref, Type, ParentEmpActor) end
---@param BtlCore UBtlCoreComponent
function ABtlActor:ActionReady(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@param Skill ABtlSkill
function ABtlActor:ActionPrepareSkill(BtlCore, Skill) end
---@param BtlCore UBtlCoreComponent
function ABtlActor:ActionPrepareAct(BtlCore) end
function ABtlActor:ActionPlayTheurgia() end
function ABtlActor:ActionPlaySkillTimeline() end


---@class ABtlAiScriptWatcher : AAppActor
---@field AI ABtlAI
---@field ActionManager UBtlActionManagerComponent
---@field Character ABtlActor
local ABtlAiScriptWatcher = {}



---@class ABtlCalcBase : AAppActor
---@field DamageMax int32
---@field CriticalMin int32
---@field CriticalMax int32
---@field CriticalPlayerDamageRate float
---@field CriticalEnemyDamageRate float
---@field KnockdownRateAttackingDownCharacter float
---@field AccuracyMin int32
---@field AccuracyMax int32
---@field BadStatusAccuracyMin int32
---@field BadStatusAccuracyMax int32
---@field EscapeSuccessRateMin int32
---@field EscapeSuccessRateMax int32
---@field EscapeTurn int32
---@field DyingHPRatio int32
---@field PhysicsChargePowerRate float
---@field MagicChargePowerRate float
---@field PhysicsChargePowerRateTheurgia float
---@field MagicChargePowerRateTheurgia float
---@field BadStatusRecoveryPlayerRate int32
---@field BadStatusRecoveryEnemyRate int32
---@field GuardProtectRatio float
---@field DamageRatioToDown float
---@field SupportTurnMax float
---@field CharmBoosterDamageRatioToCharm float
---@field SkillDamageBonusToDown float
---@field BadHitRatioBonus float
---@field AutoMikiri float
---@field AutoShinMikiri float
---@field AutoBooster float
---@field AutoHighBooster float
---@field AutoMegaBooster float
---@field AutoBoosterMax float
---@field AutoAlloutBooster float
---@field AutoBadStatusBooster float
---@field AutoBadStatusSwoonBooster float
---@field AutoCounterOccur int32
---@field AutoHeavyCounterOccur int32
---@field AutoHyperCounterOccur int32
---@field AutoGrowthLowExpRatio float
---@field AutoGrowthMiddleExpRatio float
---@field AutoGrowthhightExpRatio float
---@field AutoHPRecoveryRatio_1 float
---@field AutoHPRecoveryRatio_2 float
---@field AutoHPRecoveryRatio_3 float
---@field AutoSPRecoveryValue_1 float
---@field AutoSPRecoveryValue_2 float
---@field AutoSPRecoveryValue_3 float
---@field AutoSPRecoveryValue_AddEffect_1 float
---@field AutoSPRecoveryValue_AddEffect_2 float
---@field AutoAddExp_Ration_1 float
---@field AutoAddExp_Ration_2 float
---@field AutoTakeoverBooster float
---@field AutoTakeoverHighBooster float
---@field AutoSingleTargetBooster float
---@field AutoMultiTargetBooster float
---@field AutoAddCritical int32
---@field AutoAddCriticalHigh int32
---@field AutoTGRWeakBooster float
---@field AutoTGRWeakHighBooster float
---@field AutoTGRCriticalBooster float
---@field AutoTGRCriticalHighBooster float
---@field AutoTGRAddCritical int32
---@field AutoTGRAddCriticalHigh int32
---@field AutoTGRPowerBoostAmplify float
---@field AutoTGRPowerBoostHighAmplify float
---@field AutoTGRAddCriticalToBadStatus float
---@field AutoTGRAddCriticalHighToBadStatus float
---@field AutoTGRWeakProtecter float
---@field AutoTGRWeakHighProtecter float
---@field AutoTGRPhisicsBooster float
---@field AutoTGRPhisicsHighBooster float
---@field AutoTGRSPHeal float
---@field AutoTGRSPHighHeal float
---@field TGRGaugeLowHPRatio float
---@field TGRGaugeLowSPRatio float
---@field TGRExpBonusRatio float
---@field TGRGaugeBonusRatio float
---@field TGRGaugeBonusHighRatio float
---@field MaxTurnSWOON int32
---@field MaxTurnCHARM int32
---@field MinTurnCHARM int32
---@field MaxTurnUPSET int32
---@field MinTurnUPSET int32
---@field MaxTurnPANIC int32
---@field MinTurnPANIC int32
---@field MaxTurnFEAR int32
---@field MinTurnFEAR int32
---@field MaxTurnANGER int32
---@field MinTurnANGER int32
---@field MaxTurnFREEZE int32
---@field MinTurnFREEZE int32
---@field MaxTurnSHOCK int32
---@field MinTurnSHOCK int32
---@field DefaultTurnOVERLIMIT int32
---@field DefaultTurnOVERHEAT int32
---@field AddCriticalByUPSET int32
---@field AddCriticalByPANIC int32
---@field AddCriticalByFEAR int32
---@field AddCriticalBySHOCK int32
---@field AddCriticalByFREEZE int32
---@field AddCriticalBySWOON int32
---@field PoisonMaxDamage int32
---@field PoisonDamageRatio float
---@field AccuracyRatioByANGER float
---@field AttackSwoonDownRatio int32
---@field PhysicalSkillSwoonDownRatio int32
---@field MagicalSkillSwoonDownRatio int32
---@field TheurgiaSkillSwoonDownRatio int32
---@field DoNothingRatioByFEAR int32
---@field MajorArcanaRationByStrong float
---@field MajorArcanaRationByRare float
---@field MustAppearMajorEncount int32
---@field ShufflePersonaBonusExpRation float
---@field MajorArcanaBasicRation float
---@field MinorArcanaBasicRation int32
---@field PersonaArcanaBasicRation int32
---@field ShuffleTimeAlloutBooster float
---@field ShuffleTimeChariotIncreaseHeroHp int32
---@field ShuffleTimeHermitIncreaseHeroSP int32
---@field ShuffleTimeFortuneIncreasePartyHp int32
---@field ShuffleTimeStrengthIncreasePartySp int32
---@field MaxBattleNumNotContinualPlayingFukaCutin int32
---@field AstreaParam UBtlCalcParamAstrea
---@field OneMoreCount int32
---@field OneMoreCountEnemy int32
local ABtlCalcBase = {}

---@return float
function ABtlCalcBase:RecoveryRatioFromUPSET() end
---@return float
function ABtlCalcBase:RecoveryRatioFromPANIC() end
---@return float
function ABtlCalcBase:RecoveryRatioFromFEAR() end
---@return float
function ABtlCalcBase:RecoveryRatioFromCHARM() end
---@return float
function ABtlCalcBase:RecoveryRatioFromANGER() end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABtlCalcBase:GetSpeedSupportRatio(isPlayer, Point) end
---@return int32
function ABtlCalcBase:GetShuffleTimeOccurPercent() end
---@param EncountNumFromLastMajor int32
---@return float
function ABtlCalcBase:GetShuffleTimeMajorPercent(EncountNumFromLastMajor) end
---@return float
function ABtlCalcBase:GetSaleMerchMoneyRate() end
---@return float
function ABtlCalcBase:GetPlayerWeakDamageRate() end
---@return float
function ABtlCalcBase:GetPlayerCriticalDamageRate() end
---@param Type EBtlCalcParamType
---@param Param int32
---@return float
function ABtlCalcBase:GetParam(Type, Param) end
---@param MoonAge int32
---@return float
function ABtlCalcBase:GetNewmoonSkillPowerRatio(MoonAge) end
---@return float
function ABtlCalcBase:GetMoneyRate() end
---@param MagicAttacker int32
---@return int32
function ABtlCalcBase:GetMagicBonusRecovery(MagicAttacker) end
---@param MagicAttacker int32
---@return int32
function ABtlCalcBase:GetMagicBonusDamage(MagicAttacker) end
---@param LevelDifference int32
---@return float
function ABtlCalcBase:GetLevelExpRatio(LevelDifference) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABtlCalcBase:GetLevelDamageRatio(LevelAttacker, LevelTarget) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABtlCalcBase:GetLevelDamageBossRatio(LevelAttacker, LevelTarget) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABtlCalcBase:GetLevelAccuracyRatio(LevelAttacker, LevelTarget) end
---@param MoonAge int32
---@return float
function ABtlCalcBase:GetFullmoonSkillPowerRatio(MoonAge) end
---@return float
function ABtlCalcBase:GetExpRate() end
---@return float
function ABtlCalcBase:GetEnemyWeakDamageRate() end
---@return float
function ABtlCalcBase:GetEnemyCriticalDamageRate() end
---@return int32
function ABtlCalcBase:GetDownAgilityForEnemy() end
---@return EBtlGameDifficulty
function ABtlCalcBase:GetDifficulty() end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABtlCalcBase:GetDefenseSupportRatio(isPlayer, Point) end
---@return float
function ABtlCalcBase:GetDamageRateToPlayer() end
---@return float
function ABtlCalcBase:GetDamageRateToEnemy() end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABtlCalcBase:GetAttackSupportRatio(isPlayer, Point) end
---@return float
function ABtlCalcBase:GetAllOutAttackSwoonRate() end
---@return float
function ABtlCalcBase:DamageRatioByUPSET() end
---@return float
function ABtlCalcBase:DamageRatioByOVERLIMIT() end
---@return float
function ABtlCalcBase:DamageRatioByOVERHEAT() end
---@return float
function ABtlCalcBase:DamageRatioByANGER() end
---@return boolean
function ABtlCalcBase:CheckTargetIsEnemy() end
---@return boolean
function ABtlCalcBase:CheckSkillIsAttack() end
---@return boolean
function ABtlCalcBase:CheckAttackerIsEnemy() end
---@return float
function ABtlCalcBase:CalcTheurgiaSkillDamage() end
---@return float
function ABtlCalcBase:CalcRushDamage() end
---@return float
function ABtlCalcBase:CalcPhysicalDamage() end
---@return float
function ABtlCalcBase:CalcMagicDamage() end
---@return float
function ABtlCalcBase:CalcHealRecovery() end
---@param Level float
---@param DefaultLevel float
---@return float
function ABtlCalcBase:CalcExpPersonaLevelUp(Level, DefaultLevel) end
---@return float
function ABtlCalcBase:CalcEscapeRate() end
---@return float
function ABtlCalcBase:CalcDownRate() end
---@return float
function ABtlCalcBase:CalcCriticalHitRate() end
---@return float
function ABtlCalcBase:CalcBadStatusRecoveryRate() end
---@return float
function ABtlCalcBase:CalcBadStatusHitRate() end
---@return float
function ABtlCalcBase:CalcAllOutAttackDamage() end
---@return float
function ABtlCalcBase:CalcAccuracyRate() end
---@return float
function ABtlCalcBase:AttackRatioByUPSET() end
---@return float
function ABtlCalcBase:AttackRatioByOVERLIMIT() end
---@return float
function ABtlCalcBase:AttackRatioByANGER() end


---@class ABtlCamera : AActor
---@field cameraMainCharacter ABtlActor
---@field CameraTargets TArray<ABtlActor>
---@field MainCamera ACineCameraActor
local ABtlCamera = {}

---@param Targets TArray<ABtlActor>
function ABtlCamera:SetCameraTargets(Targets) end
---@param cameraMainCharacter ABtlActor
function ABtlCamera:SetCameraMainCharacter(cameraMainCharacter) end
---@return TArray<ABtlActor>
function ABtlCamera:GetCameraTargets() end
---@return ABtlActor
function ABtlCamera:GetCameraMainCharacter() end


---@class ABtlControlBase : AAppActor
---@field BtlCore UBtlCoreComponent
local ABtlControlBase = {}

---@return boolean
function ABtlControlBase:SyncBattleFinish() end
---@param IsPause int32
function ABtlControlBase:SetGamePaused(IsPause) end
---@param EncountParam FBtlEncountParam
---@return boolean
function ABtlControlBase:PreLoad(EncountParam) end
---@param EncountParam FBtlEncountParam
function ABtlControlBase:Encount(EncountParam) end
function ABtlControlBase:DestroyLoadedData() end
---@return boolean
function ABtlControlBase:CheckBattleInProgress() end


---@class ABtlCountdown : AAppActor
---@field Timer float
---@field Speed float
---@field IsPlay boolean
---@field IsVisible boolean
---@field IsAnimation boolean
---@field AnimationLerp float
---@field AnimationStartTime float
---@field AnimationEndTime float
local ABtlCountdown = {}

---@param Visible boolean
function ABtlCountdown:SetVisible(Visible) end
---@param Time float
function ABtlCountdown:PullTime(Time) end


---@class ABtlEncountWipeCore : AAppActor
---@field OnCalledBattle FBtlEncountWipeCoreOnCalledBattle
---@field requestWipeOut boolean
---@field isWraped boolean
---@field isSequenceEnable boolean
---@field wipeType EBtlEncountWipeType
---@field Core UBtlCoreComponent
local ABtlEncountWipeCore = {}

---@param Core UBtlCoreComponent
function ABtlEncountWipeCore:RequestEndWipe(Core) end
function ABtlEncountWipeCore:LoadResources() end
---@return EBtlEncountWipeType
function ABtlEncountWipeCore:GetWipeType() end
function ABtlEncountWipeCore:ForceFadeIn() end
function ABtlEncountWipeCore:ClearResources() end
---@return boolean
function ABtlEncountWipeCore:CheckFadeInEnd() end
---@return ABtlEncountWipeCore
function ABtlEncountWipeCore:BtlEncountWipeGetInstance() end
function ABtlEncountWipeCore:BtlEncountWipeDeleteInstance() end
---@return boolean
function ABtlEncountWipeCore:BtlEncountWipeCheckWraped() end


---@class ABtlEventActor : AAppActor
---@field bCompleteInit boolean
---@field bStartScript boolean
---@field pController UBtlEventController
---@field BtlEventProcNo int32
---@field isCommonAsset boolean
local ABtlEventActor = {}



---@class ABtlEventAlloutShuffleMonitor : AAppActor
---@field OnSyncStartCharaAnime FBtlEventAlloutShuffleMonitorOnSyncStartCharaAnime
---@field OnSyncShuffleEnd FBtlEventAlloutShuffleMonitorOnSyncShuffleEnd
---@field pCore UBtlCoreComponent
---@field pShuffle ABtlShuffleMainBase
---@field ShuffleUIBp TSubclassOf<ABtlShuffleMainBase>
---@field Loader UAssetLoader
local ABtlEventAlloutShuffleMonitor = {}

---@param BtlCore UBtlCoreComponent
function ABtlEventAlloutShuffleMonitor:StartShuffleTime(BtlCore) end
---@return boolean
function ABtlEventAlloutShuffleMonitor:CheckReadyToDestroy() end


---@class ABtlEventBfLoader : AAppActor
---@field bCompleteInit boolean
---@field pAssetLoader UAssetLoader
---@field pBfAsset UBfAsset
---@field pBmdAsset UBmdAsset
local ABtlEventBfLoader = {}



---@class ABtlFadeManager : AAppActor
---@field OnFadeOut FBtlFadeManagerOnFadeOut
---@field OnFadeIn FBtlFadeManagerOnFadeIn
---@field isFadeing boolean
---@field isScreenWrap boolean
---@field isEnemyFlag boolean
---@field isAIActionFlag boolean
---@field Type EBtlFadeType
---@field ReceaveType EBtlFadeType
---@field bCrossFade boolean
---@field CrossfadeTime float
---@field CrossFadeMaxTime float
---@field LastFadeOut boolean
---@field fadeParam TArray<FBtlFadeParam>
---@field LoadClass TSubclassOf<ABtlFadeManager>
---@field pLoader UAssetLoader
local ABtlFadeManager = {}

function ABtlFadeManager:FadeUpdate() end
---@param isFadeOut boolean
function ABtlFadeManager:FadeInit(isFadeOut) end
function ABtlFadeManager:ClearDrawItem() end
---@return boolean
function ABtlFadeManager:BtlFadeSync() end
---@param Type EBtlFadeType
---@param Frame int32
---@param IsEnemy boolean
---@param isAIAction boolean
function ABtlFadeManager:BtlFadeOut(Type, Frame, IsEnemy, isAIAction) end
---@return ABtlFadeManager
function ABtlFadeManager:BtlFadeManagerGetInstance() end
---@param Type EBtlFadeType
---@param Frame int32
---@param IsEnemy boolean
---@param isAIAction boolean
function ABtlFadeManager:BtlFadeIn(Type, Frame, IsEnemy, isAIAction) end
---@return boolean
function ABtlFadeManager:BtlFadeCheckScreenWrap() end
function ABtlFadeManager:BtlCrossFadeOut() end
---@param Frame int32
function ABtlFadeManager:BtlCrossFadeIn(Frame) end


---@class ABtlFormationPoint : AActor
---@field IsForEnemies boolean
---@field SizeCategory EBtlFormationSizeType
local ABtlFormationPoint = {}



---@class ABtlFormula : AAppActor
---@field Loader UAssetLoader
---@field Calc ABtlCalcBase
---@field CalcAsset TSubclassOf<ABtlCalcBase>
---@field AstreaParamAsset TSubclassOf<UBtlCalcParamAstrea>
local ABtlFormula = {}



---@class ABtlGuiEncountWipe : ABtlEncountWipeCore
---@field Chara ACharacter
---@field IsEnd boolean
---@field startLine FVector
---@field endLine FVector
local ABtlGuiEncountWipe = {}

---@param Transform FTransform
function ABtlGuiEncountWipe:SetTransform(Transform) end
---@param Visible boolean
function ABtlGuiEncountWipe:SetCharacterVisible(Visible) end
function ABtlGuiEncountWipe:SetCharacterAttackAnim() end
---@return UAppCharacterComp
function ABtlGuiEncountWipe:GetCharacterComp() end
---@return float
function ABtlGuiEncountWipe:GetCharacterAnimTime() end
function ABtlGuiEncountWipe:EndWipe() end


---@class ABtlGuiEventEncountWipe : ABtlEncountWipeCore
---@field IsEnd boolean
---@field IsAnimation boolean
---@field isTexDraw boolean
local ABtlGuiEventEncountWipe = {}

function ABtlGuiEventEncountWipe:EndWipe() end


---@class ABtlGuiFBufferCapture : AAppActor
---@field LoadClass TSubclassOf<ABtlGuiFBufferCapture>
---@field pLoader UAssetLoader
---@field isSetupCompleted boolean
---@field isDraw boolean
---@field is2DCapture boolean
---@field animationTime float
---@field endAnimationTime float
---@field endGtayScale float
---@field endWhiteOut float
local ABtlGuiFBufferCapture = {}

---@param WhiteOut float
function ABtlGuiFBufferCapture:SetWhiteOut(WhiteOut) end
function ABtlGuiFBufferCapture:SetupBP() end
---@param GrayScale float
function ABtlGuiFBufferCapture:SetGrayScale(GrayScale) end
function ABtlGuiFBufferCapture:SetCapture() end
---@param is2DCapture boolean
---@param isGrayScale boolean
---@param AnimTime float
function ABtlGuiFBufferCapture:BtlFBufferCaptureStart(is2DCapture, isGrayScale, AnimTime) end
---@return ABtlGuiFBufferCapture
function ABtlGuiFBufferCapture:BtlFBufferCaptureGetInstance() end
function ABtlGuiFBufferCapture:BtlFBufferCaptureDrawEnd() end
function ABtlGuiFBufferCapture:BtlFBufferCaptureDelete() end
---@param GrayScale float
---@param WhiteOut float
---@param AnimTime float
function ABtlGuiFBufferCapture:BtlFBufferCaptureCreate2D(GrayScale, WhiteOut, AnimTime) end
---@param GrayScale float
---@param WhiteOut float
---@param AnimTime float
function ABtlGuiFBufferCapture:BtlFBufferCaptureCreate(GrayScale, WhiteOut, AnimTime) end


---@class ABtlGuiPinchEncountWipe : ABtlEncountWipeCore
---@field IsEnd boolean
---@field IsAnimation boolean
---@field isTexDraw boolean
local ABtlGuiPinchEncountWipe = {}

function ABtlGuiPinchEncountWipe:EndWipe() end


---@class ABtlGuiResourcesActor : ABtlGuiResourcesBase
---@field pLoadAsset UObject
---@field pLoader UAssetLoader
---@field StackLoadPath FString
---@field pItemSkillListTextDataTable UUILayoutDataTable
---@field pTargetInfoTextDataTable UUILayoutDataTable
---@field pTacticsListTextDataTable UUILayoutDataTable
---@field pTheurgiaDataTable UUILayoutDataTable
---@field pTacticsDataTable UUILayoutDataTable
---@field pTopDataTable UUILayoutDataTable
---@field pGuardDataTable UUILayoutDataTable
---@field pTheurgiaTextDataTable UUILayoutDataTable
---@field pTheurgiaTextRowDataTable UUILayoutDataTable
---@field pTheurgiaTextPosDataTable UUILayoutDataTable
---@field pTacticsCheckDataTable UUILayoutDataTable
---@field pPromiseDataTable UUILayoutDataTable
---@field pAnalyzeDataTable UUILayoutDataTable
---@field pAnalyzeTextDataTable UUILayoutDataTable
---@field pDamageIconDataTable UUILayoutDataTable
---@field pRushDataTable UUILayoutDataTable
---@field pOthersDataTable UUILayoutDataTable
---@field pTouchCollDataTable UUILayoutDataTable
local ABtlGuiResourcesActor = {}

---@param ResourcesPath FString
function ABtlGuiResourcesActor:RequestAddResources(ResourcesPath) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTopLayoutData(Data) end
---@param textData UDataTable
---@param textRowData UDataTable
---@param textPosData UDataTable
function ABtlGuiResourcesActor:InitializeTheurgiaTextLayoutData(textData, textRowData, textPosData) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTheurgiaLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTargetInfoTextLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTargetInfoLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTacticsListTextLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeTacticsLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeRushLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializePromiseLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeOthersLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeItemSkillListTextLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeGuardLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeDamageIconLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeBattleTouchCollLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeAnalyzeTextLayoutData(Data) end
---@param Data UDataTable
function ABtlGuiResourcesActor:InitializeAnalyzeLayoutData(Data) end
---@param Name FName
---@return UObject
function ABtlGuiResourcesActor:GetResources(Name) end
---@return UObject
function ABtlGuiResourcesActor:GetAddResources() end
function ABtlGuiResourcesActor:CallDelegate() end


---@class ABtlGuiResourcesBase : AAppActor
local ABtlGuiResourcesBase = {}


---@class ABtlGuiResourcesLoadWatcher : ABtlGuiResourcesBase
---@field LoadClass TSubclassOf<ABtlGuiResourcesActor>
---@field pLoader UAssetLoader
local ABtlGuiResourcesLoadWatcher = {}

function ABtlGuiResourcesLoadWatcher:LoadStart() end


---@class ABtlGuiRushEffect : AAppActor
---@field Material UMaterialInterface
---@field DynamicMaterial UMaterialInstanceDynamic
---@field MPC UMaterialParameterCollection
---@field switchState int32
---@field materialOt int32
---@field renderOt int32
---@field pLoader UAssetLoader
---@field bEffectEnable boolean
---@field bAnimationPause boolean
---@field bLoadComlpeted boolean
---@field bBtlFlag boolean
---@field defaultEffectParam FBtlGuiRushEffectParam
---@field maskWidth float
local ABtlGuiRushEffect = {}

---@param OT int32
function ABtlGuiRushEffect:SetOT(OT) end
---@param Enable boolean
function ABtlGuiRushEffect:SetEffect(Enable) end
---@param flag boolean
function ABtlGuiRushEffect:SetBtlFlag(flag) end
---@param appCanvas int32
function ABtlGuiRushEffect:SetAppCanvas(appCanvas) end
---@param Pause boolean
function ABtlGuiRushEffect:AnimationPause(Pause) end


---@class ABtlGuiStateManager : AAppActor
---@field nowState EBtlGuiState
---@field prevState EBtlGuiState
---@field StateList TArray<EBtlGuiState>
---@field GuiStateChange FBtlGuiStateManagerGuiStateChange
---@field GuiStateChangeParam FBtlGuiStateManagerGuiStateChangeParam
local ABtlGuiStateManager = {}

function ABtlGuiStateManager:UpdateLayoutDebugMenu() end
---@param State EBtlGuiState
---@param sendFlag boolean
---@param sendNumber int32
function ABtlGuiStateManager:SetState(State, sendFlag, sendNumber) end
---@param State EBtlGuiState
function ABtlGuiStateManager:SetPrevState(State) end
function ABtlGuiStateManager:ResetPrevState() end
---@return boolean
function ABtlGuiStateManager:OnDebugRushStopMaskVisible() end
---@return boolean
function ABtlGuiStateManager:OnDebugRushStopMaskAnimPause() end
---@return boolean
function ABtlGuiStateManager:OnDebugRushDraw() end
---@return boolean
function ABtlGuiStateManager:IsLayoutDebugMenuOpen() end
---@return EBtlGuiState
function ABtlGuiStateManager:GetState() end
---@return EBtlGuiState
function ABtlGuiStateManager:GetPrevState() end
---@return int32
function ABtlGuiStateManager:GetDebugSkillNamePanelID() end
---@return int32
function ABtlGuiStateManager:GetDebugJyokyoHelpID() end
---@return int32
function ABtlGuiStateManager:GetDebugDamageTextIdx() end
function ABtlGuiStateManager:ClearState() end
---@param sendFlag boolean
---@param sendNumber int32
function ABtlGuiStateManager:ChangePrevState(sendFlag, sendNumber) end


---@class ABtlManager : AAppActor
---@field Control ABtlControlBase
---@field Loader UAssetLoader
---@field ControlAsset TSubclassOf<ABtlControlBase>
---@field Param FBtlEncountParam
local ABtlManager = {}



---@class ABtlManualAI : ABtlAI
local ABtlManualAI = {}


---@class ABtlPerformanceMonitor : AAppActor
local ABtlPerformanceMonitor = {}


---@class ABtlPhase : AAppActor
---@field Type EBtlPhaseType
---@field ImplementInBP boolean
local ABtlPhase = {}

---@return boolean
function ABtlPhase:SyncProgressTimingInBP() end
function ABtlPhase:StartPhaseInBP() end
function ABtlPhase:StartPhase() end
---@param newPhaseName EBattlePhaseName
function ABtlPhase:SetNowBattlePhaseName(newPhaseName) end
---@return ABtlPhase
function ABtlPhase:GetNextPhaseInBP() end
---@return ABtlPhase
function ABtlPhase:GetNextPhase() end
function ABtlPhase:FinalizePhaseInBP() end
function ABtlPhase:FinalizePhase() end
---@param phase EBtlPhaseType
---@return ABtlPhase
function ABtlPhase:CreateNextPhase(phase) end
---@return boolean
function ABtlPhase:CheckProgressNextPhaseInBP() end


---@class ABtlPhaseResult : ABtlPhaseVictory
---@field _sceneBase ABtlResultSceneBase
---@field _uiBase ABtlResultUIBase
---@field _ViewData UBtlResultViewData
---@field _ShuffleMain ABtlShuffleMainBase
---@field ReactBackGround UBtlGuiDrawObjectRect
---@field ResutlUIBp TSubclassOf<ABtlResultUIBase>
---@field ShuffleUIBp TSubclassOf<ABtlShuffleMainBase>
---@field Loader UAssetLoader
---@field PhaseVictory ABtlPhase
---@field hasVictoryPhase boolean
---@field isStartResultInVictory boolean
---@field ReadyForExitByVictoryPhase boolean
---@field FoundActors TArray<AActor>
local ABtlPhaseResult = {}

---@param flag boolean
function ABtlPhaseResult:SetStartResultInVictory(flag) end
---@param flag boolean
function ABtlPhaseResult:SetHaveVictorySequence(flag) end
function ABtlPhaseResult:ReleaseResource() end
function ABtlPhaseResult:PlayResultUI() end
function ABtlPhaseResult:CreatePhaseVictory() end
---@return boolean
function ABtlPhaseResult:CheckAlreadyStartResult() end


---@class ABtlPhaseVictory : ABtlPhase
---@field CompensationData UBtlCompensation
---@field BtlCore UBtlCoreComponent
local ABtlPhaseVictory = {}

---@param resulttype EBtlResultType
function ABtlPhaseVictory:SetResultType(resulttype) end
---@return EBtlResultType
function ABtlPhaseVictory:GetResultType() end


---@class ABtlResultResourceManager : AAppActor
---@field ResutlUIBp TSubclassOf<ABtlResultUIBase>
---@field ShuffleUIBp TSubclassOf<ABtlShuffleMainBase>
---@field MessageBmd UBmdAsset
---@field SprShuffle USprAsset
---@field PlgShuffle UPlgAsset
---@field AnimCardInSequence UAnimSequenceBase
---@field AnimCardIn UAnimSequenceBase
---@field CardSelectEffect UNiagaraSystem
---@field CardBonusEffect UNiagaraSystem
---@field ArcanaManager ABtlShuffleArcanaManager
---@field AllGetDownTexture UTexture
---@field SprResult USprAsset
---@field SprResultAstrea USprAsset
---@field BmdResult UBmdAsset
---@field CardContainer AAppPropsCardContainer
---@field Loader UAssetLoader
local ABtlResultResourceManager = {}



---@class ABtlResultSceneBase : AAppActor
local ABtlResultSceneBase = {}

function ABtlResultSceneBase:StartEntryScene() end
function ABtlResultSceneBase:ReleaseResource() end
function ABtlResultSceneBase:LoadResource() end
---@return boolean
function ABtlResultSceneBase:CheckEndEntryScene() end
---@return boolean
function ABtlResultSceneBase:CheckCompleteLoadResource() end


---@class ABtlResultUIBase : AAppActor
---@field _ViewData UBtlResultViewData
---@field isShowPlusWindos boolean
---@field isCreateMsgWindow boolean
---@field FoundActors TArray<AActor>
---@field ShowingPersonaNum uint8
---@field ShowingPlayerNum uint8
---@field IsEndPersonaStatus boolean
---@field isEndHeroPersona boolean
---@field isEndAllyPersona boolean
---@field _PersonaStatusActor APersonaStatus
---@field Loader UAssetLoader
---@field SprResult USprAsset
---@field SprResultAstrea USprAsset
---@field BmdResult UBmdAsset
---@field EquipPersonaTexture UTexture
---@field ResultResource ABtlResultResourceManager
---@field bIsUpdateTutorial boolean
---@field bIsUpdateMajorArcanaGetMsg boolean
---@field m_ArcanaGetMsgAndTutorialParameter FGetUIParameter
---@field isEndPrepare boolean
---@field LayoutData UDataTable
---@field LayoutDataAstrea UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field LayoutDataTableAstrea UUILayoutDataTable
---@field TextLayoutData UDataTable
---@field TextLayoutDataTable UUILayoutDataTable
---@field OkNextLayoutData UDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
local ABtlResultUIBase = {}

function ABtlResultUIBase:UpdatePersonaStatus() end
---@return boolean
function ABtlResultUIBase:UpdateMajorArcanaGetMessage() end
---@param InViewData UBtlResultViewData
function ABtlResultUIBase:StartResultUI(InViewData) end
function ABtlResultUIBase:StartPersona() end
function ABtlResultUIBase:StartHeroStatus() end
function ABtlResultUIBase:ReleaseResource() end
function ABtlResultUIBase:PrevDebugPersonaTexutreID() end
---@return boolean
function ABtlResultUIBase:OpenMajorArcanaTutorialAstrea() end
function ABtlResultUIBase:ObtainItems() end
function ABtlResultUIBase:NextDebugPersonaTexutreID() end
function ABtlResultUIBase:LoadResource() end
---@return boolean
function ABtlResultUIBase:IsOpenableMajorArcanaMsgAstrea() end
---@param PlayerId int32
---@return boolean
function ABtlResultUIBase:IsMatchMetisOfPlayerId(PlayerId) end
---@return boolean
function ABtlResultUIBase:IsLayoutDebugMenuOpen() end
---@param digCount int32
---@return boolean
function ABtlResultUIBase:IsDrawComma(digCount) end
---@return boolean
function ABtlResultUIBase:InputTrigDecideButton() end
---@return boolean
function ABtlResultUIBase:InputRepRUButton() end
---@return boolean
function ABtlResultUIBase:InputDebugButtonR() end
---@return boolean
function ABtlResultUIBase:InputDebugButtonL() end
---@return boolean
function ABtlResultUIBase:InputDebugButton() end
---@param ParamKey FString
---@return float
function ABtlResultUIBase:GetUipParamOfMajorArcanaAndGetMsg(ParamKey) end
---@param InLayoutId EBtlResultTextLayout
---@return FVector2D
function ABtlResultUIBase:GetTextCollision(InLayoutId) end
---@return USprAsset
function ABtlResultUIBase:GetSprAssetAstrea() end
---@return USprAsset
function ABtlResultUIBase:GetSprAsset() end
---@return UBmdAsset
function ABtlResultUIBase:GetResultBmd() end
---@return TArray<FBtlResultPersonaParam>
function ABtlResultUIBase:GetPersonaLevelupParam() end
---@param InLayoutId EOkNextLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function ABtlResultUIBase:GetOkNextLayoutPosition(InLayoutId, InDefaultPos) end
---@return TArray<FBtlResultItemParam>
function ABtlResultUIBase:GetItemParams() end
---@return int32
function ABtlResultUIBase:GetItemMsgID() end
---@return FBtlResultHeroInfo
function ABtlResultUIBase:GetHeroInfo() end
---@param isLvup boolean
---@param Level int32
function ABtlResultUIBase:GetHeroHumanLvupParam(isLvup, Level) end
---@return UTexture
function ABtlResultUIBase:GetEquipPersonaTexture() end
---@return int32
function ABtlResultUIBase:GetDebugPersonaTexutreID() end
---@return TArray<FBtlResultAllyLvupParam>
function ABtlResultUIBase:GetAllyLevelupParam() end
---@param InLayoutId EBtlResultLayoutAstrea
---@param InDefaultPos FVector2D
---@return FVector2D
function ABtlResultUIBase:GetAdjustedLayoutPositionAstrea(InLayoutId, InDefaultPos) end
---@param InLayoutId EBtlResultLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function ABtlResultUIBase:GetAdjustedLayoutPosition(InLayoutId, InDefaultPos) end
function ABtlResultUIBase:EndTutorialMsg() end
function ABtlResultUIBase:EndMajorArcanaGetMessage() end
---@param ID int32
function ABtlResultUIBase:DrawMsg(ID) end
function ABtlResultUIBase:CreateMsg() end
---@param ItemId int32
---@return int32
function ABtlResultUIBase:ConvertItemSprID(ItemId) end
function ABtlResultUIBase:CloseMsg() end
function ABtlResultUIBase:CloseHeroStatus() end
---@return boolean
function ABtlResultUIBase:CheckSKillGetPersona() end
---@param ID int32
---@return boolean
function ABtlResultUIBase:CheckShowMsg(ID) end
---@return boolean
function ABtlResultUIBase:CheckPersonaStatus() end
---@return boolean
function ABtlResultUIBase:CheckHeroStatus() end
---@return boolean
function ABtlResultUIBase:CheckEndResultUI() end
---@return boolean
function ABtlResultUIBase:CheckCompleteLoadResource() end
---@return EBtlResultHeroPersonaUpEvent
function ABtlResultUIBase:CalcStockUp() end
---@param PlayerId int32
---@param isLevelUp boolean
---@param defaultSprId int32
---@return int32
function ABtlResultUIBase:CalcResultSprIdMetis(PlayerId, isLevelUp, defaultSprId) end
---@return boolean
function ABtlResultUIBase:CalcOpenMajorArcanaMsgInfo() end
function ABtlResultUIBase:BeginMajorArcanaTutorial() end
function ABtlResultUIBase:BeginMajorArcanaGetMessage() end


---@class ABtlScriptAI : ABtlAI
---@field pLoader UAssetLoader
---@field pBfAsset UBfAsset
---@field bAssetLoaded boolean
local ABtlScriptAI = {}



---@class ABtlScriptCommandEventBattle : AAppActor
local ABtlScriptCommandEventBattle = {}

function ABtlScriptCommandEventBattle:FieldBattleWait() end
function ABtlScriptCommandEventBattle:FieldBattleSetup() end
function ABtlScriptCommandEventBattle:FieldBattlePlay() end
function ABtlScriptCommandEventBattle:FieldBattleLoad() end
function ABtlScriptCommandEventBattle:FieldBattleInit() end
function ABtlScriptCommandEventBattle:FieldBattleEnd() end
function ABtlScriptCommandEventBattle:EventBattleWait() end
function ABtlScriptCommandEventBattle:EventBattleSetup() end
function ABtlScriptCommandEventBattle:EventBattlePlay() end
function ABtlScriptCommandEventBattle:EventBattleLoad() end
function ABtlScriptCommandEventBattle:EventBattleInit() end
function ABtlScriptCommandEventBattle:EventBattleEventWait() end
function ABtlScriptCommandEventBattle:EventBattleEventInit() end
function ABtlScriptCommandEventBattle:EventBattleEnd() end


---@class ABtlSequencerObserve : AAppActor
local ABtlSequencerObserve = {}

---@param InSequenceActor ALevelSequenceActor
---@param InStart boolean
function ABtlSequencerObserve:SetParam(InSequenceActor, InStart) end


---@class ABtlShakeManager : AAppActor
---@field PresetShakeClass TArray<TSubclassOf<UMatineeCameraShake>>
---@field Loader UAssetLoader
---@field childActor ABtlShakeManager
---@field ShakeAsset TSubclassOf<ABtlShakeManager>
local ABtlShakeManager = {}

---@param Controller APlayerController
function ABtlShakeManager:BtlShakeStop(Controller) end
---@param Type EBtlShakeType
---@param PlayTime float
---@param Controller APlayerController
function ABtlShakeManager:BtlShakePlay(Type, PlayTime, Controller) end
---@return ABtlShakeManager
function ABtlShakeManager:BtlShakeManagerGetInstance() end


---@class ABtlShuffleArcanaManager : AAppActor
---@field RemainMajorArcana TArray<int32>
---@field RemainMinorArcana TArray<int32>
---@field FoundActors TArray<AActor>
local ABtlShuffleArcanaManager = {}



---@class ABtlShuffleMainBase : AAppActor
---@field SelectCoursorIndex int32
---@field ShowCardsMax int32
---@field EnableSelectNum int32
---@field IsFirstSelect boolean
---@field IsStopButton boolean
---@field SelectedCardNum int32
---@field ActionCardIndex int32
---@field IsStartMajorArcanaEffect boolean
---@field EffectMessagePage EBtlShuffleCardState
---@field PersonaSelectCoursorIndex int32
---@field PersonaSelectState int32
---@field IsStartCharaAnime boolean
---@field AllGetBonousMessageIndex int32
---@field AllGetBonousEffectMessageIndex EBtlShuffleCardState
---@field isEndCardInAnime boolean
---@field isEndPersonaListInFlag boolean
---@field isEndArcanaBurstInFlag boolean
---@field AppearMajors TArray<uint8>
---@field Loader UAssetLoader
---@field SprShuffle USprAsset
---@field PlgShuffle UPlgAsset
---@field pTutorialManager UTutorialManager
---@field MessageBmd UBmdAsset
---@field AllGetDownTexture UTexture
---@field MsgShuffle UBtlGuiDrawObjectMsg
---@field CompensationData UBtlCompensation
---@field ArcanaManager ABtlShuffleArcanaManager
---@field PersonaList UBtlShufflePersonaList
---@field AnimCardInSequence UAnimSequenceBase
---@field AnimCardIn UAnimSequenceBase
---@field CardSelectEffect UNiagaraSystem
---@field CardBonusEffect UNiagaraSystem
---@field CardContainer AAppPropsCardContainer
---@field CardInfos TArray<FShuffleCardInfo>
---@field _PersonaStatusActor APersonaStatus
---@field ResultResource ABtlResultResourceManager
---@field m_EffectCardPosInfo FGetUIParameter
---@field LayoutDataTable UUILayoutDataTable
---@field TextLayoutDataTable UUILayoutDataTable
local ABtlShuffleMainBase = {}

---@param DeltaTime float
---@param idx int32
function ABtlShuffleMainBase:UpdateCardRotation(DeltaTime, idx) end
---@param ID int32
function ABtlShuffleMainBase:StartMsg(ID) end
function ABtlShuffleMainBase:StartLoadCardResource() end
function ABtlShuffleMainBase:StartingCardSelect() end
---@param Index int32
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param DrawPoint EUI_DRAW_POINT
function ABtlShuffleMainBase:SetTouchCollision(Index, X, Y, Width, Height, DrawPoint) end
---@param InPos FVector2D
function ABtlShuffleMainBase:SetPosPersonaList(InPos) end
---@param use boolean
function ABtlShuffleMainBase:SetPersonaSkillHelp(use) end
---@param pMsg UBtlGuiDrawObjectMsg
---@param idx int32
---@param PersonaID int32
---@param isBonusCard boolean
function ABtlShuffleMainBase:SetMsgVariableSelectCard(pMsg, idx, PersonaID, isBonusCard) end
---@param State EBtlShuffleKeyHelpState
function ABtlShuffleMainBase:SetKeyHelp(State) end
---@param Value boolean
function ABtlShuffleMainBase:SetEndPersonaListInFlag(Value) end
---@param Input boolean
function ABtlShuffleMainBase:SetEndCardInAnime(Input) end
---@param Value boolean
function ABtlShuffleMainBase:SetEndArcanaBurstInFlag(Value) end
---@param pMsg UBtlGuiDrawObjectMsg
---@param value1 FString
---@param value2 FString
---@param value3 FString
---@param value4 FString
function ABtlShuffleMainBase:SetBmdValue(pMsg, value1, value2, value3, value4) end
---@param Alpha float
function ABtlShuffleMainBase:SetAlphaPersonaList(Alpha) end
---@param idx int32
function ABtlShuffleMainBase:SecondTextCardInStateEffect(idx) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateSelectPersona(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateSelectCardAllGetBonus(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateSelectCard(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateExit(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateEnter(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateEffectCard(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateEffectAllGetBonus(DeltaTime) end
---@param DeltaTime float
function ABtlShuffleMainBase:RunStateAllGetBonus(DeltaTime) end
function ABtlShuffleMainBase:ReleaseTutorialStopper() end
function ABtlShuffleMainBase:ReleaseResource() end
function ABtlShuffleMainBase:PrepareStateSelectPersona() end
function ABtlShuffleMainBase:PrepareStateSelectCardAllGetBonus() end
function ABtlShuffleMainBase:PrepareStateSelectCard() end
function ABtlShuffleMainBase:PrepareStateExit() end
function ABtlShuffleMainBase:PrepareStateEnter() end
function ABtlShuffleMainBase:PrepareStateEffectCard() end
function ABtlShuffleMainBase:PrepareStateEffectAllGetBonus() end
function ABtlShuffleMainBase:PrepareStateAllGetBonus() end
function ABtlShuffleMainBase:PlayOnemore() end
function ABtlShuffleMainBase:LoadTimeCardStart() end
function ABtlShuffleMainBase:LoadTimeCardEnd() end
function ABtlShuffleMainBase:LoadResource() end
---@return boolean
function ABtlShuffleMainBase:IsInMonadDoorAndNormalOrMore() end
---@param pLayoutData UDataTable
---@param pTextLayoutData UDataTable
function ABtlShuffleMainBase:InitLayoutDataTable(pLayoutData, pTextLayoutData) end
---@param InLayoutId EBtlShuffleTextLayout
---@return FVector
function ABtlShuffleMainBase:GetTextCollision(InLayoutId) end
---@return USprAsset
function ABtlShuffleMainBase:GetSprAsset() end
---@param selectIdx int32
---@return int32
function ABtlShuffleMainBase:GetSelectedCardIndex(selectIdx) end
---@return int32
function ABtlShuffleMainBase:GetRemainNumMajorArcana() end
---@return UPlgAsset
function ABtlShuffleMainBase:GetPlgAsset() end
---@param ID int32
---@return FString
function ABtlShuffleMainBase:GetNamePersona(ID) end
---@param ID int32
---@return FString
function ABtlShuffleMainBase:GetNameMajorArcana(ID) end
---@param idx int32
---@param minorId int32
---@param isBonusCard boolean
---@return int32
function ABtlShuffleMainBase:GetMegNoDetailArcanaSelectCard(idx, minorId, isBonusCard) end
---@return int32
function ABtlShuffleMainBase:GetMaxNumMajorArcana() end
---@param idx int32
---@param isBonusCard boolean
---@return int32
function ABtlShuffleMainBase:GetItemNumSelectCard(idx, isBonusCard) end
---@param idx int32
---@return UAnimSequenceBase
function ABtlShuffleMainBase:GetInAnime(idx) end
---@return TArray<int32>
function ABtlShuffleMainBase:GetHaveMajorArcana() end
---@param idx int32
---@param isBonusCard boolean
---@return int32
function ABtlShuffleMainBase:GetHaveItemNumBySelectCard(idx, isBonusCard) end
---@param TargetCardIndex int32
---@return float
function ABtlShuffleMainBase:GetEffectCardPosX(TargetCardIndex) end
---@return UBmdAsset
function ABtlShuffleMainBase:GetBmdAsset() end
---@param X float
---@param Y float
function ABtlShuffleMainBase:GetAxisR(X, Y) end
---@param idx int32
---@param Type int32
---@param Rank int32
---@param Value int32
---@param value2 int32
---@param isBonusCard boolean
function ABtlShuffleMainBase:GetAppearCardInfoDetail(idx, Type, Rank, Value, value2, isBonusCard) end
---@param idx int32
---@param Output FAppPropsCardParam
---@param isBonusCard boolean
function ABtlShuffleMainBase:GetAppearCard(idx, Output, isBonusCard) end
---@param idx int32
---@return UTexture
function ABtlShuffleMainBase:GetAllGetTexture(idx) end
---@param InLayoutId EBtlShuffleLayout
---@return FVector2D
function ABtlShuffleMainBase:GetAdjustedPosition(InLayoutId) end
function ABtlShuffleMainBase:EndStateSelectPersona() end
function ABtlShuffleMainBase:EndStateSelectCardAllGetBonus() end
function ABtlShuffleMainBase:EndStateSelectCard() end
function ABtlShuffleMainBase:EndStateExit() end
function ABtlShuffleMainBase:EndStateEnter() end
function ABtlShuffleMainBase:EndStateEffectCard() end
function ABtlShuffleMainBase:EndStateEffectAllGetBonus() end
function ABtlShuffleMainBase:EndStateAllGetBonus() end
function ABtlShuffleMainBase:CreatePersonaStatus() end
function ABtlShuffleMainBase:CreateMsg() end
function ABtlShuffleMainBase:ClosePersonaStatus() end
function ABtlShuffleMainBase:CloseMsg() end
---@return boolean
function ABtlShuffleMainBase:CheckShowPersonaStatus() end
---@param ID int32
---@return boolean
function ABtlShuffleMainBase:CheckShowMsg(ID) end
---@param idx int32
---@return boolean
function ABtlShuffleMainBase:CheckNewCard(idx) end
---@return boolean
function ABtlShuffleMainBase:CheckLoadCardResource() end
---@return boolean
function ABtlShuffleMainBase:CheckEnableShuffletime() end
---@return boolean
function ABtlShuffleMainBase:CheckDoubleDraw() end
---@param idx int32
---@return boolean
function ABtlShuffleMainBase:CheckCursorSlectedArcana(idx) end
---@return boolean
function ABtlShuffleMainBase:CheckCompleteLoadResource() end
---@return boolean
function ABtlShuffleMainBase:CheckChangeCard() end
---@return boolean
function ABtlShuffleMainBase:CheckAlloutMode() end
---@return boolean
function ABtlShuffleMainBase:CheckAllGetBonusMode() end
function ABtlShuffleMainBase:ChangeTextureEffectCard() end
function ABtlShuffleMainBase:ChangeStateSelectPersona() end
function ABtlShuffleMainBase:ChangeStateSelectCardAllGetBonus() end
function ABtlShuffleMainBase:ChangeStateSelectCard() end
function ABtlShuffleMainBase:ChangeStateExit() end
function ABtlShuffleMainBase:ChangeStateEnter() end
function ABtlShuffleMainBase:ChangeStateEffectCard() end
function ABtlShuffleMainBase:ChangeStateEffectAllGetBonus() end
function ABtlShuffleMainBase:ChangeStateAllGetBonus() end
---@param Cursor int32
function ABtlShuffleMainBase:ChangePersonaStatusRight(Cursor) end
---@param Cursor int32
function ABtlShuffleMainBase:ChangePersonaStatusLeft(Cursor) end
---@param idx int32
function ABtlShuffleMainBase:ChangeCardRotationSpeed(idx) end
---@param DeltaTime float
function ABtlShuffleMainBase:CardFallUpdate(DeltaTime) end
function ABtlShuffleMainBase:CardFallInit() end
function ABtlShuffleMainBase:CardFallDraw() end
---@param idx int32
function ABtlShuffleMainBase:ActionSelectCard(idx) end
function ABtlShuffleMainBase:ActionOnemore() end
---@param idx int32
function ABtlShuffleMainBase:ActionCardInStateEffect(idx) end
---@param idx int32
function ABtlShuffleMainBase:ActionCancel(idx) end


---@class ABtlSkill : AAppActor
---@field EffectList TArray<FBtlSkillParam>
---@field DestroyTime float
---@field DamageTime float
---@field WaitUntilDestroy boolean
---@field CameraEffect FBtlSkillCameraEffectParam
---@field QuickAbsorptionEffectWhenAbsorptionOnly boolean
---@field EnvAnimTime float
---@field UseLightEnvParam boolean
---@field LightIntensityRatio float
---@field UseFogEnvParam boolean
---@field FogPower float
---@field FogDistance float
---@field FogGradationRange float
---@field UseBGBlack boolean
---@field BGBlackPower float
---@field IsOnlyAbsorptionMode boolean
local ABtlSkill = {}

---@param Index int32
---@return float
function ABtlSkill:CalcOnlyAbsorptionTime(Index) end


---@class ACalendarActor : AAppActor
local ACalendarActor = {}


---@class ACampSceneCapture : ASceneCapture2D
local ACampSceneCapture = {}

function ACampSceneCapture:LoopAnimationStart() end
function ACampSceneCapture:InAnimationStart() end


---@class ACldBindingEventActor : AAppActor
---@field mAssetLoader_ UAssetLoader
---@field mBindList_ TArray<FCldBindingData>
local ACldBindingEventActor = {}

function ACldBindingEventActor:CallStatePatternEndDelicate() end


---@class ACldCmnDataActor : AAppActor
---@field mAssetLoader_ UAssetLoader
---@field mArcAsset_ UArcAsset
local ACldCmnDataActor = {}



---@class ACldSchedulerActor : AAppActor
---@field mVoiceConnect_ AUIVoiceConnect
---@field mAssetLoader_ UAssetLoader
---@field mBpClass_ UClass
---@field mProcActor_ AUtlProcActor
local ACldSchedulerActor = {}

function ACldSchedulerActor:SetBpObjEnd() end


---@class ACldSchedulerProcActor : AUtlProcActor
local ACldSchedulerProcActor = {}

function ACldSchedulerProcActor:ShadowTime() end
function ACldSchedulerProcActor:PM() end
function ACldSchedulerProcActor:Noon() end
function ACldSchedulerProcActor:Night() end
function ACldSchedulerProcActor:Morning() end
function ACldSchedulerProcActor:Midnight() end
function ACldSchedulerProcActor:EarlyMorning() end
function ACldSchedulerProcActor:CallNextTime() end
function ACldSchedulerProcActor:AM() end
function ACldSchedulerProcActor:AfterSchool() end


---@class ACmpCommuModelController : AAppActor
---@field pMainActor ACmpMainActor
---@field pCardContainer AAppPropsCardContainer
---@field pCardBp AAppPropsCore
---@field pTextures TArray<UTexture2D>
---@field pMotions TArray<UAnimSequence>
local ACmpCommuModelController = {}



---@class ACmpMainActor : AAppActor
---@field pAssetLoader UAssetLoader
---@field SceneCaptureClass TSubclassOf<ACampSceneCapture>
---@field pSceneCapture2D ACampSceneCapture
---@field pCaptureMaterial UMaterialInstance
---@field pCaptureInstanceDynamic UMaterialInstanceDynamic
---@field pOutlineMaterial UMaterialInstance
---@field pOutlineInstanceDynamic UMaterialInstanceDynamic
---@field pSimpleCopyMaterial UMaterial
---@field pSimpleCopyMateDynamic UMaterialInstanceDynamic
---@field pHologramMaterial UMaterial
---@field pHologramMateDynamic UMaterialInstanceDynamic
---@field HologMaskTexAAry UTexture2D
---@field HologMaskTexBAry UTexture2D
---@field HologMaskTexCAry UTexture2D
---@field HologMaskTexDAry UTexture2D
---@field pGlassMateDynamic UMaterialInstanceDynamic
---@field pCaptureRenderTarget UTextureRenderTarget2D
---@field HeroGaussMaskTexAry UTexture2D
---@field pOutAnimationTexture UTexture2D
---@field pSprCommon USprAsset
---@field pUimBgAry UUimAsset
---@field pParamHologTable UDataTable
---@field pParamTopTable UDataTable
---@field pParamSkillTable UDataTable
---@field pParamItemTable UDataTable
---@field pParamEquipTable UDataTable
---@field pParamPersonaTable UDataTable
---@field pParamStatusTable UDataTable
---@field pParamRankUpTable UDataTable
---@field pParamCommuTable UDataTable
---@field pParamSystemTable UDataTable
---@field pParamCommonTable UDataTable
---@field pCameraTable UDataTable
---@field pHologramTable UDataTable
---@field pCharaLookAdjustTable UDataTable
---@field pCharaLookAdjustMPC UMaterialParameterCollection
---@field pMateWaveCaustics UMaterial
---@field m_SlashColorParameter FGetUIParameter
---@field pParamLayoutDataRoot UDataTable
---@field pParamLayoutDataSystem UDataTable
---@field pParamTriangularCursorDataRoot UDataTable
---@field pParamTriangularCursorDataSystem UDataTable
---@field pParamLayoutDataQuest UDataTable
---@field pParamLayoutDataQuestDate UDataTable
---@field pParamLayoutPersonaList UDataTable
---@field pParamLayoutDataItem UDataTable
---@field pParamLayoutDataSkill UDataTable
---@field pParamLayoutDataSkill2 UDataTable
---@field pParamLayoutDataOthers UDataTable
---@field pParamLayoutDataOthersAstrea UDataTable
---@field pParamLayoutDataHelpOthers UDataTable
---@field pParamLayoutDataPartyPanel UDataTable
---@field pParamLayoutDataTutorialText UDataTable
---@field pParamLayoutDataDictionaryText UDataTable
---@field pParamLayoutDataCalendarText UDataTable
---@field pParamLayoutDataEquipTextCol UDataTable
---@field pParamLayoutDataItemTextCol UDataTable
---@field pParamLayoutDataQuestTextCol UDataTable
---@field pParamLayoutDataQuestTextPos UDataTable
---@field pParamLayoutDataQuestTextPosAstrea UDataTable
---@field pParamLayoutDataQuestTextColAstrea UDataTable
---@field pParamLayoutDataCommuTextCol UDataTable
---@field pParamLayoutDataStatusTextCol UDataTable
---@field pParamLayoutDataOkNext UDataTable
---@field pParamLayoutDataOkNextMask UDataTable
---@field pParamLayoutDataRootTouchColl UDataTable
---@field pParamLayoutDataSystemTouchColl UDataTable
---@field pUimNamiRootAAry UUimAsset
---@field pUimNamiRootBAry UUimAsset
---@field pUimNamiSkillAAry UUimAsset
---@field pUimNamiSkillBAry UUimAsset
---@field pUimNamiItemAAry UUimAsset
---@field pUimNamiItemBAry UUimAsset
---@field pUimNamiEquipAAry UUimAsset
---@field pUimNamiEquipBAry UUimAsset
---@field pUimNamiPersonaAAry UUimAsset
---@field pUimNamiPersonaBAry UUimAsset
---@field pUimNamiStatusAAry UUimAsset
---@field pUimNamiStatusBAry UUimAsset
---@field pUimNamiQuestAAry UUimAsset
---@field pUimNamiQuestBAry UUimAsset
---@field pUimNamiCommuAAry UUimAsset
---@field pUimNamiCommuBAry UUimAsset
---@field pUimNamiCalendarAAry UUimAsset
---@field pUimNamiCalendarBAry UUimAsset
---@field pUimNamiSystemAAry UUimAsset
---@field pUimNamiSystemBAry UUimAsset
---@field pUimNamiTutorialAAry UUimAsset
---@field pUimNamiTutorialBAry UUimAsset
---@field pUimNamiConfigAAry UUimAsset
---@field pUimNamiConfigBAry UUimAsset
---@field pCharaGlassAry UTexture2D
---@field pCharaDetailAry UTexture2D
---@field pCharaDetailShdAry UTexture2D
---@field MenuList TArray<UCmpMenuBase>
---@field pCurrentMenu UCmpMenuBase
---@field pNextMenu UCmpMenuBase
---@field pPrevMenu UCmpMenuBase
---@field pModelController UCampModelController
---@field pCmpMainLoadActor ACmpMainLoadActor
---@field pHeroCharaClass TSubclassOf<ACharacter>
---@field pHeroAnimCtrl UAppAnimCtrl
---@field MateInterAry TArray<UMaterialInterface>
---@field bIsDisableForceTermination boolean
---@field bEquipChange boolean
---@field bReturnCommuToField boolean
---@field pUIRequest UUIRequest
---@field pUIMissingPerson UUIMissingPerson
---@field pUITheurgia UUITheurgia
---@field RootLayoutDataTable UUILayoutDataTable
---@field SystemLayoutDataTable UUILayoutDataTable
---@field QuestLayoutDataTable UUILayoutDataTable
---@field QuestDateLayoutDataTable UUILayoutDataTable
---@field OthersLayoutDataTable UUILayoutDataTable
---@field OthersLayoutDataTableAstrea UUILayoutDataTable
---@field HelpOthersLayoutDataTable UUILayoutDataTable
---@field PersonaListLayoutDataTable UUILayoutDataTable
---@field ItemLayoutDataTable UUILayoutDataTable
---@field SkillLayoutDataTable UUILayoutDataTable
---@field SkillLayoutDataTable2 UUILayoutDataTable
---@field PartyPanelLayoutDataTable UUILayoutDataTable
---@field TutorialTextLayoutDataTable UUILayoutDataTable
---@field DictionaryTextLayoutDataTable UUILayoutDataTable
---@field CalendarTextLayoutDataTable UUILayoutDataTable
---@field EquipTextColLayoutDataTable UUILayoutDataTable
---@field ItemTextColLayoutDataTable UUILayoutDataTable
---@field QuestTextColLayoutDataTable UUILayoutDataTable
---@field QuestTextPosLayoutDataTable UUILayoutDataTable
---@field QuestTextPosLayoutDataTableAstrea UUILayoutDataTable
---@field QuestTextColLayoutDataTableAstrea UUILayoutDataTable
---@field CommuTextColLayoutDataTable UUILayoutDataTable
---@field StatusTextColLayoutDataTable UUILayoutDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
---@field RootTouchCollLayoutDataTable UUILayoutDataTable
---@field SystemTouchCollLayoutDataTable UUILayoutDataTable
local ACmpMainActor = {}



---@class ACmpMainLoadActor : AAppActor
---@field pSequence UCampLoadSequenceBase
---@field pParent ACmpMainActor
local ACmpMainLoadActor = {}



---@class ACombineTest : AAppActor
---@field CombineCalc_ UUICombineCalc
local ACombineTest = {}



---@class ACommunityEventManager : AAppActor
---@field CallEventList TArray<FCommunityCallEventData>
local ACommunityEventManager = {}



---@class ACommunityShortcut : ADebugViewer
---@field pScript AScrActor
---@field pBfAsset UBfAsset
---@field pAssetLoader UAssetLoader
local ACommunityShortcut = {}

---@param ExitType int32
function ACommunityShortcut:ScriptFinishedFunction(ExitType) end


---@class ACutInDraw : AUIBaseActor
---@field AssetLoader_ UAssetLoader
---@field EmotionIconPlg_ UPlgAsset
---@field BustUpTexture_ UTexture
---@field BustUpDummyTexture_ UTexture
---@field UIP_ FGetUIParameter
---@field Curve1_ FCurveVectorAnimation
---@field Curve2_ FCurveVectorAnimation
---@field Curve3_ FCurveVectorAnimation
---@field Curve4_ FCurveVectorAnimation
---@field Curve5_ FCurveVectorAnimation
---@field Curve6_ FCurveVectorAnimation
---@field Curve7_ FCurveVectorAnimation
---@field Spr_ USprAsset
local ACutInDraw = {}



---@class ADEPRECATED_Draft_EventManager : AActor
---@field mpBmdAsset UBmdAsset
---@field ExecutingMessageNo int32
---@field MessageState EEventManagerMessageState
---@field EventSequencePlayer UMovieSceneSequencePlayer
---@field RequestedSeqClosedEventMessageID int32
---@field SeqControllerState EEventManagerSeqControllerState
---@field EvtLocalData FEvtLocalData
local ADEPRECATED_Draft_EventManager = {}

---@param Index int32
---@param Data int32
function ADEPRECATED_Draft_EventManager:SetLocalData(Index, Data) end
function ADEPRECATED_Draft_EventManager:ResumeEventSequencer() end
---@param Index int32
---@return int32
function ADEPRECATED_Draft_EventManager:GetLocalData(Index) end
function ADEPRECATED_Draft_EventManager:ForcedRemoveMessage() end
---@return int32
function ADEPRECATED_Draft_EventManager:ExecuteSelectScript() end
---@return int32
function ADEPRECATED_Draft_EventManager:ExecuteMsgScript() end
---@param InAsset UBmdAsset
---@param InMessageNo int32
---@param InSelectNo int32
---@param InEventMessageID int32
function ADEPRECATED_Draft_EventManager:ExecuteMessageWithSelect(InAsset, InMessageNo, InSelectNo, InEventMessageID) end
---@param InAsset UBmdAsset
---@param InMessageNo int32
---@param InEventMessageID int32
function ADEPRECATED_Draft_EventManager:ExecuteMessage(InAsset, InMessageNo, InEventMessageID) end
function ADEPRECATED_Draft_EventManager:CloseMessage() end


---@class ADLCManager : AAppActor
---@field mAssetLoader UAssetLoader
---@field mAddContentEntitlementData UAddContentEntitlementDataAsset
local ADLCManager = {}



---@class ADailyChangeVoiceActionViewer : ADebugViewer
---@field mVoiceConnect_ AUIDebugReceiveVoiceAction
local ADailyChangeVoiceActionViewer = {}



---@class ADatItemActor : AAppActor
---@field mAssetLoader_ UAssetLoader
local ADatItemActor = {}



---@class ADbgCmpStatusTest : AAppActor
---@field Actor_ UUICmpStatus
---@field DebugMenu_ UDebugMenu
local ADbgCmpStatusTest = {}



---@class ADebugViewer : AAppActor
---@field pMenu UDebugMenu
local ADebugViewer = {}



---@class ADifficultySelectionActor : AUIDrawBaseActor
---@field AssetLoader UAssetLoader
---@field TitleSpr USprAsset
---@field TitleSprAstrea USprAsset
---@field TitlePlg UPlgAsset
---@field InheritanceTex UTexture
---@field TitleSelectDataTable UDataTable
---@field LayoutDataTable UDataTable
---@field UILayoutLayoutDataTable UUILayoutDataTable
---@field DiffBGScaleAnimFrame int32
---@field DiffBGAlphaAnimFrame int32
---@field DiffBGGradAlphaAnimFrame int32
---@field ListWaitFrame int32
---@field InfoInAnimRange int32
---@field InfoInAnimFrame int32
---@field InfoInWaitFrame int32
---@field InfoChangeAnimRange int32
---@field InfoChangeFrame int32
---@field InfoChangeAnimWaitFrame int32
---@field CloseListAndHelpFrame int32
---@field CloseListY int32
---@field CloseBGFrame int32
---@field InheritanceBGFrame int32
---@field InheritanceFadeFrame int32
---@field CloseBGNotScaleFlag boolean
---@field bChangeAnimDisable boolean
---@field DiffBGX float
---@field DiffBGY float
local ADifficultySelectionActor = {}

function ADifficultySelectionActor:ProcessCompleted__DelegateSignature() end
---@return boolean
function ADifficultySelectionActor:LoadCheck() end
---@return boolean
function ADifficultySelectionActor:HasMsgInstance() end
---@return FVector2D
function ADifficultySelectionActor:GetScreenSize() end
---@return int32
function ADifficultySelectionActor:GetCursorIndex() end
---@param InPos FVector2D
---@param InColor FColor
function ADifficultySelectionActor:DrawInfoText(InPos, InColor) end
---@param AddX float
---@param AddY float
function ADifficultySelectionActor:DrawHelp(AddX, AddY) end
function ADifficultySelectionActor:DrawDiffList() end
---@param InPos FVector2D
---@param InColor FColor
function ADifficultySelectionActor:DrawDescriptionText(InPos, InColor) end
function ADifficultySelectionActor:DrawBlackFade() end
function ADifficultySelectionActor:DrawBG() end
function ADifficultySelectionActor:ChangeInfoR() end
function ADifficultySelectionActor:ChangeInfoL() end


---@class AEntranceDoorBase : AActor
---@field DoorShineIndex int32
---@field DoorShineNiagara UNiagaraComponent
local AEntranceDoorBase = {}



---@class AEventSkipEffect : ABtlGuiRushEffect
local AEventSkipEffect = {}


---@class AEvtCharacterDraft : APawn
local AEvtCharacterDraft = {}


---@class AFadePgBattleEventWipeActor : AAppActor
---@field IsAnimation boolean
local AFadePgBattleEventWipeActor = {}

function AFadePgBattleEventWipeActor:RequestFadeOutForBP() end
function AFadePgBattleEventWipeActor:RequestFadeInForBP() end
---@param DeltaTime float
function AFadePgBattleEventWipeActor:DrawForBP(DeltaTime) end
function AFadePgBattleEventWipeActor:DeleteForBP() end
function AFadePgBattleEventWipeActor:CreateForBP() end


---@class AFclAntiqueShop : AFclShopBase
---@field Loader_ UAssetLoader
---@field LineupTable_ UAntiqueShopLineUpListTable
---@field BfAsset_ UBfAsset
---@field BmdAsset_ UBmdAsset
---@field _ComSpr00 USprAsset
---@field _ComSpr00_Astrea USprAsset
---@field _ComPlg00 UPlgAsset
---@field _Spr00 USprAsset
---@field _Plg00 UPlgAsset
---@field pParamLayoutDataAntique UDataTable
---@field _DrawActorClass TSubclassOf<AFclAntiqueShopDrawActor>
---@field _DrawActor AFclAntiqueShopDrawActor
---@field LayoutData UDataTable
---@field TextColLayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field TextColLayoutDataTable UUILayoutDataTable
local AFclAntiqueShop = {}



---@class AFclAntiqueShopDrawActor : AFclWeaponShopDrawActorBase
---@field _CommonData UAntiqueShopDrawCommon
---@field _ListUnselectedStringColor FColor
---@field _ListPanelColor FColor
---@field _DetailPanelHyphenColor FColor
---@field _MatIconDisabledColor FColor
---@field _MatNamelDisabledColor FColor
---@field _MatNumberDisabledColor FColor
---@field _BgColor FColor
---@field _TopMenuList1stAnim FWeaponShopAnimParam
---@field _TopMenuListAnim FWeaponShopAnimParam
---@field _TopMenuListOutAnim FWeaponShopAnimParam
---@field _TopMenuKanban1stAnim FWeaponShopAnimParam
---@field _TopMenuKanbanAnim FWeaponShopAnimParam
---@field _TopMenuKanbanOutAnim FWeaponShopAnimParam
---@field _TopMenuMoonAnim FWeaponShopAnimParam
---@field _TopMenuMoonLoopAnim FWeaponShopAnimParam
---@field _TopMenuMoonOutAnim FWeaponShopAnimParam
---@field _ListCursorBaseInAnim FWeaponShopAnimParam
---@field _ListCursorInAnim FWeaponShopAnimParam
---@field _ListTriangleCursorInAnim FWeaponShopAnimParam
---@field _ListTriangleCursorLoopAnim FWeaponShopAnimParam
---@field _CompareBaseShiftAnim FWeaponShopAnimParam
---@field _CompareMoonRotateAnim FWeaponShopAnimParam
---@field _CompareCharacterMoonRotateAnim FWeaponShopAnimParam
---@field _CompareOutAnim FWeaponShopAnimParam
---@field _LRCursorLoopAnim FWeaponShopAnimParam
---@field _LRCursorInputAnim FWeaponShopAnimParam
---@field _UDCursorLoopAnim FWeaponShopAnimParam
---@field _UDCursorInputAnim FWeaponShopAnimParam
---@field _ParamUpDownAnim FWeaponShopAnimParam
---@field _SellListCursorBaseInAnim FWeaponShopAnimParam
---@field _SellListCursorInAnim FWeaponShopAnimParam
---@field _ParamUpDownLoopAnim FWeaponShopAnimParam
local AFclAntiqueShopDrawActor = {}

---@param Tag int32
function AFclAntiqueShopDrawActor:EventMcaCameraInit(Tag) end
---@param Tag int32
function AFclAntiqueShopDrawActor:EventMcaCameraExchange(Tag) end
---@param Tag int32
function AFclAntiqueShopDrawActor:EventMcaCameraCombine(Tag) end


---@class AFclItemShop : AFclShopBase
---@field m_pSpr_ItemShop USprAsset
---@field m_pSpr_Common USprAsset
---@field m_pTex_ItemShopPlg UPlgAsset
---@field m_pTex_CommonPlg UPlgAsset
---@field m_pTex_Medisine1 UTexture
---@field m_pTex_Medisine2 UTexture
---@field m_pTex_Medisine3 UTexture
---@field m_pTex_Medisine4 UTexture
---@field m_pTex_CapusleA_1 UTexture
---@field m_pTex_CapusleB_1 UTexture
---@field m_pTex_CapusleC_1 UTexture
---@field m_pTex_CapusleShadow UTexture
---@field m_pSpr_Common_Money USprAsset
---@field Loader_ UAssetLoader
---@field LineupTable_ UItemShopLineUpListTable
---@field BfAsset_ UBfAsset
---@field BmdAsset_ UBmdAsset
---@field m_pUimCapsuleAIn UUimAsset
---@field m_pUimCapsuleBIn UUimAsset
---@field m_pUimCapsuleCIn UUimAsset
---@field m_pUimCapsuleAChange UUimAsset
---@field m_pUimCapsuleBChange UUimAsset
---@field m_pUimCapsuleCChange UUimAsset
---@field m_pUimCapsuleAOut1 UUimAsset
---@field m_pUimCapsuleBOut1 UUimAsset
---@field m_pUimCapsuleCOut1 UUimAsset
---@field m_pUimCapsuleAOut2 UUimAsset
---@field m_pUimCapsuleBOut2 UUimAsset
---@field m_pUimCapsuleCOut2 UUimAsset
---@field CloudCursor_ AUICloudCursorDraw
---@field m_pTextDataTable UUILayoutDataTable
---@field m_pTextData UDataTable
---@field m_pLayoutDataTable UUILayoutDataTable
---@field m_pLayoutData UDataTable
local AFclItemShop = {}



---@class AFclShopBase : AUIBaseActor
---@field ScrActor_ AScrActor
local AFclShopBase = {}

---@param ExitType int32
function AFclShopBase:OnFinishedScr(ExitType) end


---@class AFclSimpleShop : AFclShopBase
---@field ShopDraw ASimpleShopDraw
---@field captureBackGround UFrameBufferCapture
---@field tex UTexture
---@field Loader_ UAssetLoader
---@field pParamLayoutData UDataTable
---@field pTextParamLayoutData UDataTable
---@field pLayoutDataTable UUILayoutDataTable
---@field pTextLayoutDataTable UUILayoutDataTable
local AFclSimpleShop = {}



---@class AFclWeaponShop : AFclShopBase
---@field Loader_ UAssetLoader
---@field LineupTable_ UWeaponShopLineUpListTable
---@field BfAsset_ UBfAsset
---@field BmdAsset_ UBmdAsset
---@field _ComSpr00 USprAsset
---@field _ComSpr00_Astrea USprAsset
---@field _ComPlg00 UPlgAsset
---@field _Spr00 USprAsset
---@field _Plg00 UPlgAsset
---@field pParamLayoutDataRoot UDataTable
---@field pLayoutDataTableRoot UUILayoutDataTable
---@field pParamLayoutDataChara UDataTable
---@field pLayoutDataTableChara UUILayoutDataTable
---@field pParamLayoutDataCharaText UDataTable
---@field pLayoutDataTableCharaText UUILayoutDataTable
---@field pParamLayoutDataBuyText UDataTable
---@field pLayoutDataTableBuyText UUILayoutDataTable
---@field pParamLayoutDataBuyHelpText UDataTable
---@field pLayoutDataTableBuyHelpText UUILayoutDataTable
---@field pParamLayoutDataSellText UDataTable
---@field pLayoutDataTableSellText UUILayoutDataTable
---@field pParamLayoutDataTradeInText UDataTable
---@field pLayoutDataTableTradeInText UUILayoutDataTable
---@field pParamLayoutDataOther UDataTable
---@field pLayoutDataTableOther UUILayoutDataTable
---@field _DrawActorClass TSubclassOf<AFclWeaponShopDrawActor>
---@field _DrawActor AFclWeaponShopDrawActor
local AFclWeaponShop = {}



---@class AFclWeaponShopDrawActor : AFclWeaponShopDrawActorBase
---@field _CommonData UWeaponShopDrawCommon
---@field _BgColor FColor
---@field _InfoWindowInnerColor FColor
---@field _TopMenuAnim FWeaponShopAnimParam
---@field _CatIconAnim FWeaponShopAnimParam
---@field _TapeAnim FWeaponShopAnimParam
---@field _TapeChangeAnim FWeaponShopAnimParam
---@field _EquipCompareTapeAnim FWeaponShopAnimParam
---@field _ListCursorBaseInAnim FWeaponShopAnimParam
---@field _ListCursorInAnim FWeaponShopAnimParam
---@field _ListTriangleCursorInAnim FWeaponShopAnimParam
---@field _ListTriangleCursorLoopAnim FWeaponShopAnimParam
---@field _LRCursorLoopAnim FWeaponShopAnimParam
---@field _LRCursorInputAnim FWeaponShopAnimParam
---@field _UDCursorLoopAnim FWeaponShopAnimParam
---@field _UDCursorInputAnim FWeaponShopAnimParam
---@field _RevolverAnim FWeaponShopAnimParam
---@field _DecideConfirmPanelAnimArray TArray<FWeaponShopAnimParam>
---@field _NumConfirmPanelAnimArray TArray<FWeaponShopAnimParam>
---@field _MoneyWindowAnimArray TArray<FWeaponShopAnimParam>
---@field _EquipCompareInAnim FWeaponShopAnimParam
---@field _EquipCompareOutAnim FWeaponShopAnimParam
---@field _ParamUpDownAnim FWeaponShopAnimParam
---@field _PicUpAnimArray TArray<FWeaponShopAnimParam>
---@field _SellListCursorBaseInAnim FWeaponShopAnimParam
---@field _SellListCursorInAnim FWeaponShopAnimParam
---@field _ParamUpDownLoopAnim FWeaponShopAnimParam
---@field _ListInAnim FWeaponShopAnimParam
---@field _CharaEquipListInAnim FWeaponShopAnimParam
---@field _TopMenuOutAnim FWeaponShopAnimParam
---@field _CatIconOutAnim FWeaponShopAnimParam
---@field _TapeOutAnim FWeaponShopAnimParam
---@field _CharaListCursorInAnim FWeaponShopAnimParam
---@field _SellInfoInAnim FWeaponShopAnimParam
local AFclWeaponShopDrawActor = {}

---@param Tag int32
function AFclWeaponShopDrawActor:EventMcaCameraSell(Tag) end
---@param Tag int32
function AFclWeaponShopDrawActor:EventMcaCameraMemberSelect(Tag) end
---@param Tag int32
function AFclWeaponShopDrawActor:EventMcaCameraInit(Tag) end


---@class AFclWeaponShopDrawActorBase : AAppActor
---@field _CurrentMcaAsset UMcaAsset
---@field _CurrentCamera ACameraActor
---@field _OldCamera AActor
local AFclWeaponShopDrawActorBase = {}

---@param McaAsset UMcaAsset
---@param Play boolean
function AFclWeaponShopDrawActorBase:SetMcaCamera(McaAsset, Play) end


---@class AFldAnimObj : AFldObjBase
---@field mAnimeArray_ TArray<FFldAnimeObjAnimation>
---@field mIndex_ int32
---@field mNotPausedInLoop_ boolean
---@field mAnimeMesh_ USkeletalMeshComponent
---@field mNiagaraComp_ UNiagaraComponent
---@field mAnimeMeshList_ TArray<USkeletalMeshComponent>
---@field mAnimIndex_ int32
---@field bIsInit_ boolean
---@field mLoopAnimIndex_ int32
---@field mIsHide_ boolean
---@field mHideTransform_ FTransform
local AFldAnimObj = {}

---@param AnimeID int32
---@param LoopFlag boolean
function AFldAnimObj:PlayAnimation(AnimeID, LoopFlag) end
---@return boolean
function AFldAnimObj:IsPlayingAnimation() end
---@param SkeleTalMeshList TArray<USkeletalMeshComponent>
---@param AnimeID int32
function AFldAnimObj:InitializeArray(SkeleTalMeshList, AnimeID) end
---@param SkeletalMesh USkeletalMeshComponent
---@param AnimeID int32
function AFldAnimObj:Initialize(SkeletalMesh, AnimeID) end
---@return int32
function AFldAnimObj:GetNowAnimeID() end
---@return int32
function AFldAnimObj:GetAnimationNum() end
function AFldAnimObj:DebugSetting() end
---@param IsHide boolean
function AFldAnimObj:ChangeDisableActorAction(IsHide) end
function AFldAnimObj:ChangeAnimationDEBUG() end


---@class AFldAnimalHit : AFldLocalActor
---@field mOwner_ UFldAnimalCompCore
---@field mHitRadius_ float
---@field mHitComp_ USphereComponent
local AFldAnimalHit = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldAnimalHit:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldAnimalHit:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AFldAtomSound : AFldLocalActor
---@field mSeasonSpring_ boolean
---@field mSeasonSummer_ boolean
---@field mSeasonAutumn_ boolean
---@field mSeasonWinter_ boolean
---@field mTimeNoon_ boolean
---@field mTimeAfternoon_ boolean
---@field mTimeNight_ boolean
---@field mTimeShadow_ boolean
---@field mOffInEvent_ boolean
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
---@field AtomComponent UAtomComponent
local AFldAtomSound = {}

function AFldAtomSound:stopSound_IMD() end
function AFldAtomSound:stopSound() end
function AFldAtomSound:PlaySound() end
---@param FadeOutDuration float
function AFldAtomSound:FadeOutSound(FadeOutDuration) end
---@param FadeInDuration float
function AFldAtomSound:FadeInSound(FadeInDuration) end
---@return boolean
function AFldAtomSound:CheckEnablePlay() end


---@class AFldAutoRecoverMenuScript : AFldScriptManagerCore
local AFldAutoRecoverMenuScript = {}


---@class AFldBossBattleScript : AFldScriptManagerCore
local AFldBossBattleScript = {}


---@class AFldCamera : ACameraActor
local AFldCamera = {}


---@class AFldCameraBase : AActor
---@field YawSceneComp USceneComponent
---@field PitchSceneComp USceneComponent
---@field CameraComp UCameraComponent
---@field HitRef AFldCameraHitBase
---@field PlayerRef FFldPlayerHolder
---@field bIsCurrent boolean
---@field Input FVector
---@field bZoom boolean
local AFldCameraBase = {}



---@class AFldCameraFixed : AFldCameraBase
---@field Behavior UFldCameraBehaviorFixed
local AFldCameraFixed = {}



---@class AFldCameraFree : AFldCameraBase
---@field Behavior UFldCameraBehaviorFree
local AFldCameraFree = {}



---@class AFldCameraHitBase : AAppActor
---@field Transition UFldCameraTransBase
---@field LockAtYaw FldCameraLockAtParam
---@field LockAtPitch FldCameraLockAtParam
---@field LockAtForward boolean
local AFldCameraHitBase = {}



---@class AFldCameraHitBox : AFldCameraHitBase
---@field Box UBoxComponent
---@field Camera AFldCameraFixed
local AFldCameraHitBox = {}



---@class AFldCameraHitSpline : AFldCameraHitBase
---@field BoxComp UBoxComponent
---@field SplineComp USplineComponent
---@field CameraSplineComp USplineComponent
---@field CameraList TMap<int32, AFldCameraSpline>
---@field ForwardType EFldCameraForwardType
---@field FreeForward AActor
---@field bTracking boolean
---@field TrackingDistance float
---@field TrackingBufferZone_Player float
---@field TrackingBufferZone_Camera float
---@field MarginYaw float
---@field MarginPitch float
---@field MarginSpeed float
---@field MarginForward boolean
---@field bFanShape boolean
---@field Yaw_FrontOffset float
---@field Yaw_BackOffset float
local AFldCameraHitSpline = {}

function AFldCameraHitSpline:SetupCamera() end


---@class AFldCameraSpline : AFldCameraBase
local AFldCameraSpline = {}


---@class AFldCharArea : AActor
---@field RootComp USceneComponent
---@field AreaComp UBoxComponent
local AFldCharArea = {}



---@class AFldCmmActor : AFldHitCharacter
---@field mUniqueId_ int32
---@field mType_ EFldCmmNpcType
---@field mNameIndex_ int32
---@field mNotMapInfoDisp_ boolean
---@field mMapIconDirectLocation_ FVector
---@field bMapIconDirectLocation_ boolean
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
local AFldCmmActor = {}



---@class AFldCmnDataActor : AFldLocalActor
---@field mParent_ UFldCommonData
---@field mAssetLoader_ UAssetLoader
---@field mArcAsset_ UArcAsset
local AFldCmnDataActor = {}



---@class AFldCrowdNpcBase : AAppActor
---@field CapsuleComp_ UCapsuleComponent
---@field mDispValue_ int32
---@field mOffFlagName_ FName
---@field mChildParam_ TArray<FFldCrowdNpcChildParam>
local AFldCrowdNpcBase = {}

---@param Opacity float
---@param TargetActor AActor
---@return float
function AFldCrowdNpcBase:UpdateOpacityByPlayerActor(Opacity, TargetActor) end


---@class AFldCrowdTarget : AMobWalkTarget
---@field mIndex_ int32
---@field mMobActor_ AMobWalkCharaBaseCore
local AFldCrowdTarget = {}



---@class AFldCrowdTarget_STOP : AFldCrowdTarget
---@field mStopRatio_ int32
---@field mStopTime_ float
local AFldCrowdTarget_STOP = {}



---@class AFldCrowdWalkManager : AFldLocalActor
---@field mFlag_ uint32
---@field mRouteTimers_ TArray<FFldCrowdWalkRouteTimer>
---@field mMinTimer_ float
---@field mMaxTimer_ float
---@field mRouteParam_ TArray<FFldCrowdWalkRouteParam>
---@field mMobBpList_ TArray<FFldCrowdWalkBpParam>
local AFldCrowdWalkManager = {}

---@param InitTable UDataTable
function AFldCrowdWalkManager:SaveMobWalkInitTable(InitTable) end


---@class AFldDailyMenuScript : AFldScriptManagerCore
local AFldDailyMenuScript = {}


---@class AFldDbgChLoad : AActor
---@field AnimInsList TArray<TSoftClassPtr<UAnimInstance>>
---@field InitSkel UObject
---@field InitAnim UObject
---@field loadedAssets TArray<UObject>
---@field Loader UAppCharLoader
local AFldDbgChLoad = {}



---@class AFldDbgEmMaker : AActor
---@field EmClass UClass
---@field Bg TArray<AActor>
---@field Loaded FFldDbgEmMakerLoaded
---@field IsLoadEnded boolean
---@field Enemy TArray<FFldEnemyHolder>
local AFldDbgEmMaker = {}

---@param Target AActor
---@param Scale float
function AFldDbgEmMaker:SetScale(Target, Scale) end


---@class AFldDbgMaker : AActor
---@field PlayerClass UClass
---@field PlayerPoints AActor
---@field PlayerCharaId int32
---@field Player FFldPlayerHolder
---@field PartnerClass UClass
---@field KoroPartnerClass UClass
---@field PartnerId TArray<int32>
---@field PartnerPoints TArray<AActor>
---@field PartnerActors TArray<APawn>
---@field Partners TArray<FFldPartnerHolder>
---@field CostumeID int32
---@field AnimPackID EAnimPackID
---@field bWeapon boolean
---@field WeaponId int32
---@field bBag boolean
---@field BagId int32
---@field FootstepsData UAppCharFootstepsDataAsset
---@field Loaded FFldDbgMakerLoaded
---@field IsLoad boolean
---@field ReLoadCostume boolean
local AFldDbgMaker = {}

---@return boolean
function AFldDbgMaker:Load() end
---@return APawn
function AFldDbgMaker:GetPlayerActor() end
---@return TArray<APawn>
function AFldDbgMaker:GetPartnerActors() end
---@param Enable boolean
function AFldDbgMaker:ForceWaitPose(Enable) end


---@class AFldDbgNpcMaker : AActor
---@field NpcClass UClass
---@field NpcIDs TArray<int32>
---@field NpcPoints TArray<AActor>
---@field NpcActors TArray<APawn>
---@field AnimPackID EAnimPackID
---@field Loaded FFldDbgNpcMakerLoaded
---@field IsLoad boolean
local AFldDbgNpcMaker = {}

---@return TArray<APawn>
function AFldDbgNpcMaker:GetNpcActors() end
---@return APawn
function AFldDbgNpcMaker:GetNpcActor() end


---@class AFldDoorObjCore : AFldAnimObj
---@field mWalkSpeed_ float
---@field mDoorCloseRange_ float
---@field mEnableMovePlayer_ boolean
---@field mWaitAsset_CLOSE_ UAnimationAsset
---@field mAnime_FRONT_ FFldDoorAnimationData
---@field mAnime_BACK_ FFldDoorAnimationData
---@field Root USceneComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field FrontPoint UFldDoorPointComp
---@field BackPoint UFldDoorPointComp
---@field mFlag_ uint32
local AFldDoorObjCore = {}

---@param OpenType EFldDoorOpenType
---@param FadeType int32
---@param FadeFrame int32
---@param FadePattern int32
function AFldDoorObjCore:PlayDoorOpenWithFade(OpenType, FadeType, FadeFrame, FadePattern) end
---@param OpenType EFldDoorOpenType
function AFldDoorObjCore:PlayDoorOpen(OpenType) end
---@return boolean
function AFldDoorObjCore:IsPlayingOpen() end
function AFldDoorObjCore:CallStateEndDelicate() end


---@class AFldDungeonAutoGenerateActor : AFldDungeonAutoGenerateBaseActor
local AFldDungeonAutoGenerateActor = {}


---@class AFldDungeonAutoGenerateBaseActor : AAppActor
local AFldDungeonAutoGenerateBaseActor = {}


---@class AFldDungeonBase : AAppActor
---@field Root USceneComponent
---@field m_pEnvSEActor AFldDungeonSoundActor
---@field m_pFloorAutoGenerator AFldDungeonAutoGenerateActor
---@field m_pEnemyManager AFldEnemyManager
---@field m_pPartnerManager AFldPartnerManager
---@field m_ControlComponent TArray<UFldDungeonComponentBase>
---@field m_pDungeonParam AFldDungeonParamActor
local AFldDungeonBase = {}



---@class AFldDungeonBattleEncount : AAppActor
---@field m_pCharacter ACharacter
local AFldDungeonBattleEncount = {}

function AFldDungeonBattleEncount:WaitVisible() end
function AFldDungeonBattleEncount:WaitFadeOut() end
function AFldDungeonBattleEncount:WaitEnd() end
function AFldDungeonBattleEncount:Idle() end
function AFldDungeonBattleEncount:ExcuteWipe() end
function AFldDungeonBattleEncount:End() end
function AFldDungeonBattleEncount:CaptureWait() end


---@class AFldDungeonBattleResult : AAppActor
---@field m_pLoader UAssetLoader
---@field m_pBfAsset UBfAsset
local AFldDungeonBattleResult = {}

function AFldDungeonBattleResult:Wait() end
function AFldDungeonBattleResult:StartScript() end
function AFldDungeonBattleResult:Run() end
function AFldDungeonBattleResult:Load() end
function AFldDungeonBattleResult:Init() end
function AFldDungeonBattleResult:End() end


---@class AFldDungeonBattleRetry : AAppActor
local AFldDungeonBattleRetry = {}


---@class AFldDungeonControlActor : AFldDungeonGame
local AFldDungeonControlActor = {}

function AFldDungeonControlActor:SetNextFieldFloor() end
---@param major int32
---@param Minor int32
---@param idx int32
function AFldDungeonControlActor:SetField(major, Minor, idx) end
---@return boolean
function AFldDungeonControlActor:IsExist() end
function AFldDungeonControlActor:Delete() end
function AFldDungeonControlActor:DebugSetPrevFieldFloor() end
function AFldDungeonControlActor:DebugSetNextFieldFloor() end
---@return AFldDungeonControlActor
function AFldDungeonControlActor:Create() end
---@return boolean
function AFldDungeonControlActor:CheckReady() end


---@class AFldDungeonEffectActor : AAppActor
---@field Type EDungeonEffectType
---@field NiagaraPath FSoftObjectPath
---@field fadeInTime float
---@field fadeOutTime float
---@field m_pNiagara UNiagaraComponent
local AFldDungeonEffectActor = {}

function AFldDungeonEffectActor:SetPlayEnd() end
function AFldDungeonEffectActor:RequestFadeOut() end
---@return boolean
function AFldDungeonEffectActor:IsPlay() end
---@return float
function AFldDungeonEffectActor:GetPlayTime() end
---@return float
function AFldDungeonEffectActor:GetFadeValue() end
---@return float
function AFldDungeonEffectActor:GetFadeOutTime() end
---@return float
function AFldDungeonEffectActor:GetFadeInTime() end
function AFldDungeonEffectActor:BPUpdate() end
function AFldDungeonEffectActor:BPInit() end


---@class AFldDungeonEffectCameraAttachActor : AAppActor
---@field m_pEffec UNiagaraCameraAttachComponent
local AFldDungeonEffectCameraAttachActor = {}

---@param PSystem UNiagaraComponent
function AFldDungeonEffectCameraAttachActor:OnComplete(PSystem) end


---@class AFldDungeonEnvActor : AAppActor
---@field Type EDungeonEnvType
local AFldDungeonEnvActor = {}

function AFldDungeonEnvActor:BPUpdate() end
function AFldDungeonEnvActor:BPSetDefault() end
function AFldDungeonEnvActor:BPResume() end
function AFldDungeonEnvActor:BPReflect() end
function AFldDungeonEnvActor:BPPause() end
function AFldDungeonEnvActor:BPGetDefault() end


---@class AFldDungeonEventRefActor : AAppActor
---@field RefID int32
local AFldDungeonEventRefActor = {}



---@class AFldDungeonEventTransActor : AAppActor
---@field TransOriginType EDungeonEventTransOriginType
---@field WithinTypeID int32
---@field m_LayoutPos TArray<AFldDungeonLayoutStartActor>
local AFldDungeonEventTransActor = {}

function AFldDungeonEventTransActor:SetPartyTransform() end


---@class AFldDungeonFDoorPartActor : AFldDungeonPartActor
---@field FDoorGroupNum int32
local AFldDungeonFDoorPartActor = {}



---@class AFldDungeonGame : AFldDungeonGameInit
local AFldDungeonGame = {}

---@return boolean
function AFldDungeonGame:IsBattle() end
function AFldDungeonGame:ForceEncount() end
function AFldDungeonGame:BattleSync() end


---@class AFldDungeonGameBase : AFldDungeonBase
local AFldDungeonGameBase = {}

function AFldDungeonGameBase:NotifyLevelUnLoadedNavMesh() end
function AFldDungeonGameBase:NotifyLevelUnLoadedMap() end
function AFldDungeonGameBase:NotifyLevelUnLoadedEnv() end
function AFldDungeonGameBase:NotifyLevelLoadedNavMesh() end
function AFldDungeonGameBase:NotifyLevelLoadedFloorBase() end
function AFldDungeonGameBase:NotifyLevelLoadedFloor() end
function AFldDungeonGameBase:NotifyLevelLoadedFixedFloor() end
function AFldDungeonGameBase:NotifyLevelLoadedEnvironment() end
function AFldDungeonGameBase:NotifyLevelLoadedDesignMap() end


---@class AFldDungeonGameInit : AFldDungeonGameBase
local AFldDungeonGameInit = {}

function AFldDungeonGameInit:NAVMESH_LOAD_WAIT() end
function AFldDungeonGameInit:LOAD_WAIT_LEVEL() end
function AFldDungeonGameInit:LOAD_START() end
function AFldDungeonGameInit:INIT_FLOOR_LEVEL() end
function AFldDungeonGameInit:INIT_FIXED_FLOOR() end
function AFldDungeonGameInit:INIT_END() end
function AFldDungeonGameInit:INIT_DESIGIN_MAP() end
function AFldDungeonGameInit:FloorInit() end
function AFldDungeonGameInit:DungeonInit() end
function AFldDungeonGameInit:CREATE_LAYOUT() end
function AFldDungeonGameInit:CREATE_END() end
function AFldDungeonGameInit:ATTACH_OBJ_WAIT() end
function AFldDungeonGameInit:ADVANCE_PROCESS_WAIT() end
function AFldDungeonGameInit:ADVANCE_PROCESS() end
function AFldDungeonGameInit:ADVANCE_LOAD() end


---@class AFldDungeonInfoActor : AAppActor
---@field Type EDungeonInfoType
local AFldDungeonInfoActor = {}



---@class AFldDungeonLayoutActor : AAppActor
---@field LayoutType ELayoutType
---@field UsageType ELayoutUsageType
---@field GroupNo ELayoutGroup
---@field Dir ELayoutDirType
---@field SpawnSelNo TArray<int32>
---@field Wall boolean
---@field EventSpace boolean
local AFldDungeonLayoutActor = {}



---@class AFldDungeonLayoutBrokenActor : AFldDungeonLayoutActor
---@field Empty boolean
---@field Probability int32
local AFldDungeonLayoutBrokenActor = {}



---@class AFldDungeonLayoutDirectActor : AFldDungeonLayoutActor
---@field LayoutId int32
---@field Eigenvalue int32
---@field GateKeeper boolean
---@field PacIdListOfFbdAstrea TArray<int32>
---@field UsePacIdListOfFbdAstrea boolean
local AFldDungeonLayoutDirectActor = {}



---@class AFldDungeonLayoutDirectEnemyActor : AFldDungeonLayoutDirectActor
---@field ModelID uint32
---@field SymbolID uint32
---@field DefeatFlagID uint32
local AFldDungeonLayoutDirectEnemyActor = {}



---@class AFldDungeonLayoutDirectTBoxActor : AFldDungeonLayoutDirectActor
---@field tboxType EDungeonTBoxType
---@field money uint32
---@field Encount boolean
---@field CheckFlag boolean
---@field FlagName FName
local AFldDungeonLayoutDirectTBoxActor = {}



---@class AFldDungeonLayoutEnemyActor : AFldDungeonLayoutActor
---@field EnemyType EDungeonEnemyType
---@field EncountID int32
local AFldDungeonLayoutEnemyActor = {}



---@class AFldDungeonLayoutStartActor : AFldDungeonLayoutActor
---@field StartType ELayoutStartType
---@field FreeID int32
---@field StartID int32
local AFldDungeonLayoutStartActor = {}



---@class AFldDungeonLoader : AAppActor
local AFldDungeonLoader = {}


---@class AFldDungeonMenuScript : AFldScriptManagerCore
local AFldDungeonMenuScript = {}


---@class AFldDungeonObjectActor : AAppActor
---@field ObjType EDungeonObjType
---@field BaseObject FSoftObjectPath
---@field InitAnimNo int32
---@field HitAnimNo int32
---@field EndAnimNo int32
---@field m_pBaseObject AFldDungeonObjectActor
---@field m_pHitActorList TArray<AFldHitActor>
---@field m_AnimObjList TArray<AFldAnimObj>
---@field m_pBox UBoxComponent
---@field m_pLightComps TArray<ULightComponent>
local AFldDungeonObjectActor = {}

---@param OtherActor AActor
function AFldDungeonObjectActor:HitOutNotice(OtherActor) end
---@param OtherActor AActor
function AFldDungeonObjectActor:HitInNotice(OtherActor) end
---@param Player APawn
function AFldDungeonObjectActor:HitActionNotice(Player) end


---@class AFldDungeonObjectInfoActor : AFldDungeonInfoActor
---@field ObjectType EDungeonObjectInfoType
local AFldDungeonObjectInfoActor = {}



---@class AFldDungeonParamActor : AAppActor
---@field DataAsset FSoftObjectPath
---@field DungeonTable FSoftObjectPath
---@field PartVariationData FSoftObjectPath
---@field FloorFlagsData FSoftObjectPath
---@field m_pPartVariation UFldDungeonPartVariation
---@field m_pFloorFlags UFldDungeonFloorFlags
local AFldDungeonParamActor = {}



---@class AFldDungeonPartActor : AAppActor
---@field PartType EPartType
---@field PartVariation int32
---@field PartDirType EPartDirType
---@field ForbiddenDoor boolean
---@field MonadPassage boolean
---@field ExclusivelyForEvent boolean
---@field m_LayoutActor TArray<AFldDungeonLayoutActor>
---@field m_pLayoutStart TArray<AFldDungeonLayoutStartActor>
---@field m_pLayoutEnemy TArray<AFldDungeonLayoutActor>
---@field m_LayoutEnemyPath TArray<AFldDungeonLayoutActor>
---@field m_LayoutTBox TArray<AFldDungeonLayoutActor>
---@field m_pLayoutRetDev AFldDungeonLayoutActor
---@field m_pLayoutNPC AFldDungeonLayoutActor
---@field m_pLayoutReaper AFldDungeonLayoutActor
---@field m_pLayoutClock AFldDungeonLayoutActor
---@field m_pLayoutSecretGate AFldDungeonLayoutActor
---@field m_ObjectInfoActor TArray<AFldDungeonObjectInfoActor>
---@field m_pSKMeshComps TArray<USkeletalMeshComponent>
---@field m_pLightComps TArray<ULightComponent>
local AFldDungeonPartActor = {}



---@class AFldDungeonResourceServer : AAppActor
local AFldDungeonResourceServer = {}


---@class AFldDungeonRollBack : AAppActor
---@field m_pAddContentCheck UAddContent
local AFldDungeonRollBack = {}



---@class AFldDungeonScriptActor : AAppActor
local AFldDungeonScriptActor = {}


---@class AFldDungeonSoundActor : AFldDungeonSoundBaseActor
---@field CueIDList TArray<int32>
local AFldDungeonSoundActor = {}



---@class AFldDungeonSoundBaseActor : AAppActor
---@field Type EDungeonSuondType
local AFldDungeonSoundBaseActor = {}

function AFldDungeonSoundBaseActor:BPStop() end
function AFldDungeonSoundBaseActor:BPPlay() end


---@class AFldDungeonStartActor : AAppActor
local AFldDungeonStartActor = {}


---@class AFldDungeonUIActor : AAppActor
---@field Type EDungeonUIType
---@field DrawTbl FDungeonUIDrawDataTable
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field m_pLoader UAssetLoader
local AFldDungeonUIActor = {}



---@class AFldEnemyController : AAIController
local AFldEnemyController = {}


---@class AFldEnemyManager : AAppActor
---@field Enemies TArray<FFldEnemyHolder>
---@field bBattle boolean
---@field DisableleList TArray<int32>
---@field VanishNiagaraComp UNiagaraComponent
local AFldEnemyManager = {}

---@param Actor AActor
function AFldEnemyManager:Setup(Actor) end
---@param Enable boolean
---@param Group int32
function AFldEnemyManager:SetEnable(Enable, Group) end
function AFldEnemyManager:ForceEncount() end
function AFldEnemyManager:Cleanup() end
---@param Actor AActor
function AFldEnemyManager:Add(Actor) end


---@class AFldFieldEventActor : AFldLocalActor
---@field mChgHeroComp_ UAppCharacterComp
---@field mChgPartnerComps_ TMap<int32, UAppCharacterComp>
local AFldFieldEventActor = {}



---@class AFldFollowerController : AAIController
local AFldFollowerController = {}


---@class AFldHitActor : AFldHitCore
---@field mMajorID_ int32
---@field mMinorID_ int32
---@field mType_ EFldHitType
---@field mNameIndex_ int32
---@field mIconType_ EFldHitActorIconType
---@field mChangeIconParam_ TArray<FFldHitActorChgIconParam>
---@field mReadedFlagName_ FName
---@field mFloorIndex_ int32
---@field mOffFlagName_ FName
---@field mExecutedFlagName_ FName
---@field mIgnoreFlagName_ FName
---@field mIconActor_ AActor
local AFldHitActor = {}



---@class AFldHitActorBOX : AFldHitActor
local AFldHitActorBOX = {}


---@class AFldHitActorCAPSULE : AFldHitActor
local AFldHitActorCAPSULE = {}


---@class AFldHitActorEachPlayer : AFldHitActor
---@field mProcList_ TArray<FFldHitActorEachPlayerProc>
local AFldHitActorEachPlayer = {}



---@class AFldHitCharacter : AFldHitCore
---@field CollisionComp_ UShapeComponent
---@field mCharaModelParam_ TArray<FFldHitCharaModelParam>
---@field mIconType_ EFldHitCharaIconType
---@field mIconPlural_ boolean
---@field mChangeIconParam_ TArray<FFldHitCharaIconParam>
---@field mIconAttachedType_ EFldHitCharaIconAttachedType
---@field mIconDirectLocationMODEL_ FVector
---@field bIconDirectLocationMODEL_ boolean
---@field mReadedFlagName_ FName
---@field mFloorIndex_ int32
---@field mLookHeroOverlap_ boolean
---@field mSpeakMotionKeyPush_ boolean
---@field mLookHeroKeyPush_ boolean
---@field mFaceingHeroKeyPush_ boolean
---@field mHeroMotionKeyPush_ EFldHitCharaHeroMotion
---@field mReturnBaseRotator_ boolean
---@field mCharaBaseClass_ TSubclassOf<ACharacterBaseCore>
---@field mNpcBaseClass_ TSubclassOf<ANpcBaseCore>
---@field mCharaModelList_ TMap<int16, UFldNpcComp>
---@field mIconActor_ AActor
---@field mMoveActor_ AActor
---@field mHeroProcActor_ AActor
---@field mDispName_ FString
---@field bChangedRotator_ boolean
---@field mBaseRotator_ FRotator
---@field mIdleTalkComp_ UFldHitCharaIdleTalkComp
---@field mIdleBehaviorComp_ UFldHitCharaIdleBehaviorComp
---@field bIsIdleBehaviorCreated_ boolean
---@field bGetAwayPrevAction_ boolean
local AFldHitCharacter = {}

---@return int32
function AFldHitCharacter:GetCharaModelNum() end
---@param ModelIndex int32
---@return UFldNpcComp
function AFldHitCharacter:GetCharaModelNpcComp(ModelIndex) end
function AFldHitCharacter:EndDelicate_SyncMotion() end
function AFldHitCharacter:EndDelicate_RotationToPlayer() end
function AFldHitCharacter:EndDelicate_ReturnBaseRotator() end
function AFldHitCharacter:EndDelicate_ProcHeroPrevAction() end


---@class AFldHitCore : AFldLocalActor
---@field mOtherList_ TArray<AActor>
---@field mPriority_ int32
---@field mBfAssetPath_ FString
---@field mBmdAssetPath_ FString
---@field RootComp_ USceneComponent
---@field HitComp_ UShapeComponent
---@field mOverlapBluePrint_ TSubclassOf<AUtlProcActor>
---@field mOverlapKeyLock_ boolean
---@field mKeyPushBluePrint_ TSubclassOf<AUtlProcActor>
---@field mActionKeyLock_ boolean
---@field mHeroDirectType_ FFldHitCoreHeroDirectType
---@field mCheckIcon_ EFldHitCoreCheckIconType
---@field mActionNoticeDelegateAstrea FFldHitCoreActionNoticeDelegateAstrea
local AFldHitCore = {}

function AFldHitCore:RequestKeyPushBluePrint() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldHitCore:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldHitCore:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function AFldHitCore:CleanupRequest() end


---@class AFldHitPartner : AFldHitCore
---@field Procs TMap<int32, FFldHitPartnerProcs>
---@field CharId int32
---@field bTalkFirst boolean
local AFldHitPartner = {}



---@class AFldHitSoundCore : AFldAtomSound
---@field HitComp UShapeComponent
---@field mFlag_ uint32
---@field mTimer_ float
local AFldHitSoundCore = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldHitSoundCore:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldHitSoundCore:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AFldHitSoundSnapshotCore : AFldLocalActor
---@field mOffInEvent_ boolean
---@field mSnapshotName_ FString
---@field HitComp UShapeComponent
local AFldHitSoundSnapshotCore = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldHitSoundSnapshotCore:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldHitSoundSnapshotCore:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AFldHitSoundSnapshot_BOX : AFldHitSoundSnapshotCore
local AFldHitSoundSnapshot_BOX = {}


---@class AFldHitSoundSnapshot_CIRCLE : AFldHitSoundSnapshotCore
local AFldHitSoundSnapshot_CIRCLE = {}


---@class AFldHitSound_BOX : AFldHitSoundCore
local AFldHitSound_BOX = {}


---@class AFldHitSound_CIRCLE : AFldHitSoundCore
local AFldHitSound_CIRCLE = {}


---@class AFldInitScriptManager : AFldScriptManagerCore
local AFldInitScriptManager = {}


---@class AFldKeyFreeAnnounceActor : AFldLocalActor
---@field mAssetLoader_ UAssetLoader
---@field mBfAsset_ UBfAsset
---@field mBmdAsset_ UBmdAsset
---@field mScriptActor_ AFldScriptActor
local AFldKeyFreeAnnounceActor = {}



---@class AFldKeyFreeEventActor : AFldLocalActor
---@field mAssetLoader_ UAssetLoader
---@field mBfAsset_ UBfAsset
---@field mBmdAsset_ UBmdAsset
---@field mAncBfAsset_ UBfAsset
---@field mAncBmdAsset_ UBmdAsset
---@field mScriptActor_ AFldScriptActor
local AFldKeyFreeEventActor = {}



---@class AFldLevelLoaderMonitorActor : AActor
---@field mUniqueId_ int32
---@field mType_ EFldLevelLoaderType
---@field mLevelAssetPath_ FString
---@field mProcTimer_ float
local AFldLevelLoaderMonitorActor = {}

function AFldLevelLoaderMonitorActor:OnLoadLevelStreaming() end


---@class AFldLevelManager : AFldLocalActor
local AFldLevelManager = {}


---@class AFldLevelPoolManager : AFldLocalActor
---@field mLevelPaths_ TArray<FString>
local AFldLevelPoolManager = {}



---@class AFldLinkAnimHitBase : AFldLocalActor
---@field RootComp_ USceneComponent
---@field HitComp_ UShapeComponent
---@field mLinkObjectArray_ TArray<AFldLinkAnimObj>
---@field mOneshotFlag_ boolean
---@field mFlag_ uint32
local AFldLinkAnimHitBase = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldLinkAnimHitBase:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldLinkAnimHitBase:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AFldLinkAnimHit_BOX : AFldLinkAnimHitBase
local AFldLinkAnimHit_BOX = {}


---@class AFldLinkAnimHit_CIRCLE : AFldLinkAnimHitBase
local AFldLinkAnimHit_CIRCLE = {}


---@class AFldLinkAnimObj : AFldObjBase
---@field mAnime_WAIT_ FFldLaoAnimData
---@field mAnime_START_ FFldLaoAnimData
---@field mAnimeArray_LOOP_ TArray<FFldLaoAnimData>
---@field mAnimeLoopFlag_ boolean
---@field mAnime_END_ FFldLaoAnimData
---@field mFlag_ uint32
---@field mLoopIndex_ int32
---@field mAnimeMeshList_ TArray<USkeletalMeshComponent>
local AFldLinkAnimObj = {}

---@param SkeleTalMeshList TArray<USkeletalMeshComponent>
function AFldLinkAnimObj:InitializeArray(SkeleTalMeshList) end
---@param SkeletalMesh USkeletalMeshComponent
function AFldLinkAnimObj:Initialize(SkeletalMesh) end


---@class AFldLocalActor : AAppActor
local AFldLocalActor = {}

function AFldLocalActor:CallStatePatternEndDelicate() end


---@class AFldMailOrderScript : AFldScriptManagerCore
local AFldMailOrderScript = {}


---@class AFldMiscCameraMove : ACameraActor
---@field mFlag_ uint32
---@field mTimer_ float
---@field mPrevCamera_ AFldMiscCameraMove
local AFldMiscCameraMove = {}



---@class AFldMiscCameraShake : AFldLocalActor
---@field mCollection_ UMaterialParameterCollection
---@field mSetTime_ float
---@field mSetFrequency_ float
---@field mSetPowerX_ float
---@field mSetPowerY_ float
local AFldMiscCameraShake = {}



---@class AFldMiscCharBaseReload : AAppActor
---@field mDataArray_ TArray<FFldMiscCharBaseReload_Data>
local AFldMiscCharBaseReload = {}



---@class AFldMiscCharaBaseMove : AFldLocalActor
---@field mEndDelegate_ FFldMiscCharaBaseMoveEndDelegate_
---@field mCharactor_ AActor
---@field mNpcComp_ UFldNpcComp
local AFldMiscCharaBaseMove = {}



---@class AFldNpcActor : AFldHitCharacter
---@field mMajorID_ int32
---@field mMinorID_ int32
---@field mType_ EFldNpcActorType
---@field mNameIndex_ int32
---@field mNotMapInfoDisp_ boolean
---@field mMapIconDirectLocation_ FVector
---@field bMapIconDirectLocation_ boolean
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
local AFldNpcActor = {}



---@class AFldObjBase : AFldLocalActor
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
---@field mOnWeek_ ECldWeek
---@field bIsOnWeek_ boolean
local AFldObjBase = {}



---@class AFldOperator : AActor
---@field OpCameraComp UFldOperationCamera
---@field OpPlayerComp UFldOperationPlayer
---@field OpPrePhysicsComp UFldOperationPrePhysics
---@field MainCamera AFldCamera
---@field FreeCamera AFldCameraFree
---@field PlayerHolder FFldPlayerHolder
---@field PlayerController AController
---@field KernelInput AKernelInput
---@field OverloapHits TArray<AFldHitCore>
---@field KeyState EFldOperatorKeyState
---@field State EFldOperatorState
---@field NextState EFldOperatorState
---@field EncountEnemy FFldEnemyHolder
---@field EncountType EFldOperatorEncountType
---@field AssembleEvent FFldPartnerHolder
---@field bDebugStandalone boolean
local AFldOperator = {}

---@param KernelInput AKernelInput
---@param Player APawn
---@param FreeCamera AFldCameraFree
---@param Camera AFldCamera
function AFldOperator:Setup(KernelInput, Player, FreeCamera, Camera) end
---@param Angle float
function AFldOperator:SetFreeCameraYaw(Angle) end
---@param Angle float
function AFldOperator:SetFreeCameraPitch(Angle) end
---@param Enable boolean
function AFldOperator:KeyEnable(Enable) end
function AFldOperator:FreeCameraReset() end
---@param bNotCameraReset boolean
function AFldOperator:EndEvent(bNotCameraReset) end
function AFldOperator:Cleanup() end
function AFldOperator:BeginFadeOut() end
function AFldOperator:BeginFadeIn() end
function AFldOperator:BeginEvent() end


---@class AFldPartnerController : AAIController
local AFldPartnerController = {}


---@class AFldPartnerManager : AActor
---@field Partners TArray<FFldPartnerHolder>
local AFldPartnerManager = {}



---@class AFldPlayerStart : APlayerStart
---@field mIndex_ int32
---@field CameraDir USceneComponent
local AFldPlayerStart = {}



---@class AFldPostValumeSound : AFldLocalActor
---@field mOutRadius_ float
---@field mInRadius_ float
---@field bXdirOnly_ boolean
---@field bYdirOnly_ boolean
---@field RootComp USceneComponent
---@field HitComp UShapeComponent
local AFldPostValumeSound = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFldPostValumeSound:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFldPostValumeSound:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AFldScriptActor : AFldLocalActor
local AFldScriptActor = {}


---@class AFldScriptManagerCore : AFldLocalActor
---@field mAssetLoader_ UAssetLoader
---@field mBfAsset_ UBfAsset
---@field mBmdAsset_ UBmdAsset
---@field mScriptActor_ AFldScriptActor
local AFldScriptManagerCore = {}



---@class AFldShortcutMove : AAppActor
---@field mAssetLoader_ UAssetLoader
---@field mBfAsset_ UBfAsset
---@field mScriptActor_ AFldScriptActor
local AFldShortcutMove = {}



---@class AFldSoundMngChangeAISAC : AAppActor
local AFldSoundMngChangeAISAC = {}


---@class AFldSoundMngChangeTownmapActor : AAppActor
local AFldSoundMngChangeTownmapActor = {}


---@class AFldTargetIcon : AAppActor
---@field mOnFlagName_ FName
---@field mOffFlagName_ FName
local AFldTargetIcon = {}



---@class AFldTvProgramScript : AFldScriptManagerCore
local AFldTvProgramScript = {}


---@class AHT_UMGTestGameModeBase : AGameModeBase
---@field StartingWidgetClass TSubclassOf<UUserWidget>
---@field CurrentWidget UUserWidget
local AHT_UMGTestGameModeBase = {}

---@param NewWidgetClass TSubclassOf<UUserWidget>
function AHT_UMGTestGameModeBase:ChangeMenuWidget(NewWidgetClass) end


---@class AHT_UMGTestPlayerController : APlayerController
local AHT_UMGTestPlayerController = {}


---@class AHandwritingEffectBase : AAppActor
---@field NiagaraComp UNiagaraComponent
---@field AtomComp UAtomComponent
local AHandwritingEffectBase = {}



---@class AHandwritingSpawner : AAppActor
---@field HandwritingEffectObj TSubclassOf<AHandwritingEffectBase>
---@field HandwritingGroupType EAtlHandwritingGroupType
---@field bAutoDestroyWhenFinishedHandwriting boolean
---@field DataAsset UAtlHandwritingDataAsset
---@field NiagaraRequestedParam FAtlHandwritingNiagaraRequestParam
---@field SpawnRule EHandwritingSpawnRules
---@field HandwritingType EAtlEvtHandwritingType
---@field HandwritingEffectBaseActor TWeakObjectPtr<AHandwritingEffectBase>
---@field HandwritingComp TWeakObjectPtr<UNiagaraComponent>
local AHandwritingSpawner = {}

---@param InType EAtlEvtHandwritingType
---@param InParam FAtlHandwritingNiagaraRequestParam
---@param InSpawnRule EHandwritingSpawnRules
---@param bInLoop boolean
function AHandwritingSpawner:RequestPlayEffectFromParam(InType, InParam, InSpawnRule, bInLoop) end
---@param InType EAtlEvtHandwritingType
---@param bInLoop boolean
---@param InLocation FVector
---@param InRotator FRotator
---@param InLoopCount int32
---@param InCameraOffset int32
---@param InScale FVector
function AHandwritingSpawner:RequestPlayEffectAtSpawnerLocation(InType, bInLoop, InLocation, InRotator, InLoopCount, InCameraOffset, InScale) end
---@param InType EAtlEvtHandwritingType
---@param NpcBase ANpcBaseCore
---@param AttachSocketName FName
---@param InSpawnRule EHandwritingSpawnRules
---@param bInLoop boolean
---@param InLocation FVector
---@param InRotator FRotator
---@param InLoopCount int32
---@param InCameraOffset int32
---@param InScale FVector
function AHandwritingSpawner:RequestPlayEffectAtSpawnerAttachedToNpc(InType, NpcBase, AttachSocketName, InSpawnRule, bInLoop, InLocation, InRotator, InLoopCount, InCameraOffset, InScale) end
---@param InType EAtlEvtHandwritingType
---@param Character ACharacter
---@param AttachSocketName FName
---@param InSpawnRule EHandwritingSpawnRules
---@param bInLoop boolean
---@param InLocation FVector
---@param InRotator FRotator
---@param InLoopCount int32
---@param InCameraOffset int32
---@param InScale FVector
function AHandwritingSpawner:RequestPlayEffectAtSpawnerAttachedTo(InType, Character, AttachSocketName, InSpawnRule, bInLoop, InLocation, InRotator, InLoopCount, InCameraOffset, InScale) end
---@param InType EAtlEvtHandwritingType
---@param InSpawnRule EHandwritingSpawnRules
---@param bInLoop boolean
function AHandwritingSpawner:RequestPlayEffect(InType, InSpawnRule, bInLoop) end
---@param PSystem UNiagaraComponent
function AHandwritingSpawner:OnCompleteNiagara(PSystem) end
function AHandwritingSpawner:LoadEffectEnded() end


---@class AHmModelTestActor : AActor
---@field MeshAry UStaticMesh
---@field pMayaCamera ACameraActor
---@field pOldCamera AActor
---@field Work FDarkHourWork
local AHmModelTestActor = {}



---@class AHumanParameterUpViewer : ADebugViewer
---@field pHeroParamSystem_ UCmpHeroHumanStatus
---@field pHumanParamDraw_ UCmpHeroHumanStatusDraw
---@field pScene UUIScene
local AHumanParameterUpViewer = {}



---@class AIKCharacterBase : ACharacter
---@field IKMeshComp USkeletalMeshComponent
---@field IKAnimInstance UIKAnimInstanceBase
---@field IKSetupParam FFootIKSetupParam
---@field DefaultCapsuleHalfHeight float
---@field TestLeg float
local AIKCharacterBase = {}

---@param Value FRotator
---@param Target FRotator
---@param InterpSpeed float
---@param DeltaSeconds float
function AIKCharacterBase:UpdateInterpRotator(Value, Target, InterpSpeed, DeltaSeconds) end
---@param Value float
---@param Target float
---@param InterpSpeed float
---@param DeltaSeconds float
function AIKCharacterBase:UpdateInterpFloat(Value, Target, InterpSpeed, DeltaSeconds) end
---@param HipOffset float
---@param bResetCapsule boolean
---@param DeltaSeconds float
function AIKCharacterBase:UpdateCapsuleHalfHeight(HipOffset, bResetCapsule, DeltaSeconds) end
function AIKCharacterBase:UpdateAnimInstanceParams() end
---@param DeltaSeconds float
function AIKCharacterBase:TickUpdateIK(DeltaSeconds) end
---@param bEnable boolean
---@param InTargetMesh USkeletalMeshComponent
---@param InIKAnimInstance UIKAnimInstanceBase
function AIKCharacterBase:InitializeIKSetup(bEnable, InTargetMesh, InIKAnimInstance) end
function AIKCharacterBase:EnableIK() end
function AIKCharacterBase:DisableIK() end


---@class AIkedaTestMenu : AAppActor
---@field _Actor AActor
---@field _DebugMenu UDebugMenu
local AIkedaTestMenu = {}



---@class AImanishiTestMenu : AAppActor
---@field Actor_ AActor
---@field CloudCursor_ AUICloudCursorDraw
---@field AdcDialog_ AAddContentDialog
---@field BmdAsset_ UBmdAsset
---@field DebugMenu_ UDebugMenu
local AImanishiTestMenu = {}



---@class AInitReadActor : AAppActor
local AInitReadActor = {}


---@class AItfController : AKernelInput
local AItfController = {}


---@class AKernelActor : AActor
---@field _DebugCamera ACameraActor
---@field _OldCamera AActor
---@field _KernelWidget UKernelWidget
---@field mpDebugMenu UDebugMenu
---@field mpChildActor AActor
local AKernelActor = {}



---@class AKernelInput : AInputManager
local AKernelInput = {}


---@class AKimuraDebugMenu : AActor
---@field Menu UDebugMenu
local AKimuraDebugMenu = {}



---@class AKimuraURO : AActor
---@field Target ACharacter
---@field Rate TArray<float>
local AKimuraURO = {}

---@param V TArray<float>
function AKimuraURO:Update(V) end
---@param F boolean
function AKimuraURO:Enable(F) end
function AKimuraURO:Apply() end


---@class ALaunchActivityActor : AAppActor
local ALaunchActivityActor = {}


---@class ALoaderActor : AAppActor
---@field Loader UAtomCueSheetLoaderComponent
local ALoaderActor = {}

function ALoaderActor:OnLoadFailed() end
function ALoaderActor:OnLoadCompleted() end


---@class ALoadingDraw : AUIDrawBaseActor
---@field CloudMorningColorList TArray<FColor>
---@field CloudEveningColorList TArray<FColor>
---@field CloudNightColorList TArray<FColor>
---@field CloudShadowTimeColorList TArray<FColor>
---@field CloudMoveFlameSlow float
---@field CloudMoveFlameFast float
---@field WhetherToStart float
---@field FadeTime float
---@field earlyWaitTime float
---@field moonPos FVector2D
---@field OriginPos FVector2D
local ALoadingDraw = {}

---@param on boolean
function ALoadingDraw:SetVisible(on) end
---@param inTimeShifting ECldTimeZone
function ALoadingDraw:SetTimeZone(inTimeShifting) end
function ALoadingDraw:Draw() end


---@class ALocalizationTest : AUIDrawBaseActor
---@field DrawPoint EUI_DRAW_POINT
---@field LinesNum int32
---@field Position FVector
---@field Offset FVector
---@field Angle float
---@field Scale float
---@field DebugMenu UDebugMenu
---@field Loader UAssetLoader
---@field pDataTable UDataTable
local ALocalizationTest = {}



---@class ALocalizeStaffRoll : AAppActor
---@field m_pLoader UAssetLoader
---@field m_StaffRollFont UFont
local ALocalizeStaffRoll = {}



---@class ALocalizeStaffRollDraw : AUIDrawBaseActor
local ALocalizeStaffRollDraw = {}


---@class AMCATestActor : AActor
---@field m_pMcaCam0 UMcaAsset
---@field pMayaCamera ACameraActor
local AMCATestActor = {}



---@class AMailActor : AUIBaseActor
---@field Loader_ UAssetLoader
---@field BmdAssets_ TMap<FString, UBmdAsset>
---@field BfAssets_ TMap<FString, UBfAsset>
---@field ScrActor_ AScrActor
---@field MailDrawActorSC TSubclassOf<AMailDraw>
---@field MailDrawActor AMailDraw
---@field LayoutData UDataTable
---@field textData UDataTable
local AMailActor = {}

---@param ExitType int32
function AMailActor:OnFinishedScr(ExitType) end


---@class AMailDraw : AUIDrawBaseActor
---@field bIsDirectOpen boolean
---@field bIsFlipToMainAnim boolean
---@field bIsFlipToListAnim boolean
---@field bIsStartInAnim boolean
---@field bIsFinishInAnim boolean
---@field bIsStartListAnim boolean
---@field bIsFinishListAnim boolean
---@field bIsStartMailAnim boolean
---@field bIsFinishMailAnim boolean
---@field bIsStartOutAnim boolean
---@field bIsFinishOutAnim boolean
---@field bIsShowMsg boolean
---@field bIsCloseMsg boolean
---@field bIsFinishShowMsgAnim boolean
---@field bIsFinishCloseMsgAnim boolean
---@field bHaveScript boolean
---@field SelectedIndex int32
---@field DrawIndex int32
---@field ScrollIndex int32
---@field MailScrollLine int32
---@field MailRowCount int32
---@field MailRowMax int32
---@field MailScrollMax int32
---@field MailListItems TArray<FUIMailListItem>
---@field MailMainBustupTexture UTexture2D
---@field Loader UAssetLoader
---@field OnLoadedBustupEvent FMailDrawOnLoadedBustupEvent
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field textData UDataTable
---@field TextDataTable UUILayoutDataTable
local AMailDraw = {}

---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function AMailDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@return boolean
function AMailDraw:StateDraw_Out() end
---@return boolean
function AMailDraw:StateDraw_Mail() end
---@return boolean
function AMailDraw:StateDraw_List() end
---@return boolean
function AMailDraw:StateDraw_IN() end
---@return boolean
function AMailDraw:StateDraw_Frame() end
---@return boolean
function AMailDraw:StateDraw_BG() end
---@param Index int32
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param DrawPoint EUI_DRAW_POINT
---@param onList boolean
function AMailDraw:SetTouchCollision(Index, X, Y, Width, Height, DrawPoint, onList) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param DrawPoint EUI_DRAW_POINT
function AMailDraw:SetScrollBarSliderCollision(X, Y, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, DrawPoint) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param DrawPoint EUI_DRAW_POINT
function AMailDraw:SetScrollBarBaseCollision(X, Y, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, DrawPoint) end
---@param InIndex int32
---@param InIsNew boolean
function AMailDraw:SetMailListIsNew(InIndex, InIsNew) end
function AMailDraw:OneTimeLockInput() end
---@return boolean
function AMailDraw:IsIsDeterminedByCross() end
---@return boolean
function AMailDraw:InitDraw_Out() end
---@return boolean
function AMailDraw:InitDraw_Mail() end
---@return boolean
function AMailDraw:InitDraw_List() end
---@return boolean
function AMailDraw:InitDraw_IN() end
---@return int32
function AMailDraw:GetMailSenderID() end
---@param InIndex int32
---@return int32
function AMailDraw:GetListSenderID(InIndex) end
---@param InIndex int32
---@return boolean
function AMailDraw:GetListIsRead(InIndex) end
---@param InIndex int32
---@return boolean
function AMailDraw:GetListIsNew(InIndex) end
---@param InLayoutId EMailLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function AMailDraw:GetAdjustedLayoutPosition(InLayoutId, InDefaultPos) end
---@param InPos FVector2D
---@param InColor FColor
---@param SprID int32
---@param Scale FVector2D
---@param Angle float
---@param ResourceType EUICommonResource
---@param DrawPoint EUI_DRAW_POINT
function AMailDraw:DrawSprForUIResources(InPos, InColor, SprID, Scale, Angle, ResourceType, DrawPoint) end
---@param InPos FVector2D
---@param InColor FColor
---@param InScale float
function AMailDraw:DrawMailTitleText(InPos, InColor, InScale) end
---@param InPos FVector2D
---@param InColor FColor
---@param InScale float
function AMailDraw:DrawMailSenderText(InPos, InColor, InScale) end
---@param InPos FVector2D
---@param InColor FColor
---@param InScale float
function AMailDraw:DrawMailMainText(InPos, InColor, InScale) end
---@param InIndex int32
---@param InPos FVector2D
---@param InColor FColor
---@param InScale float
function AMailDraw:DrawListMailTitleText(InIndex, InPos, InColor, InScale) end
---@param InIndex int32
---@param InPos FVector2D
---@param InColor FColor
---@param InScale float
function AMailDraw:DrawListMailSenderText(InIndex, InPos, InColor, InScale) end
---@param InFrame int32
---@return float
function AMailDraw:ConvFrameToTime(InFrame) end


---@class AMigrateSaveDataActor : AAppActor
local AMigrateSaveDataActor = {}


---@class AMiyamuraLoadTest : AAppActor
---@field Image UBtlGuiDrawObjectImage
---@field TextureCup UTexture
---@field TextureCoin UTexture
---@field TextureSword UTexture
---@field TextureWand UTexture
---@field TexturePersona UTexture
---@field TextureFool UTexture
---@field TextureMagician UTexture
---@field TextureEmpress UTexture
---@field TextureEmperor UTexture
---@field TextureHighPrietess UTexture
---@field TextureArray TArray<UTexture>
---@field LoaderAlpha UAssetLoader
local AMiyamuraLoadTest = {}



---@class AMiyamuraTestManager : AAppActor
local AMiyamuraTestManager = {}


---@class AModelCaptureUpdater : AAppActor
---@field PreviewWorldUpdater_ APreviewWorldUpdater
---@field TargetActor_ AActor
---@field LightSource_ UMaterialParameterCollection
---@field BlueprintClass_ UObject
---@field Loader_ UAssetLoader
local AModelCaptureUpdater = {}

---@param AActor AActor
function AModelCaptureUpdater:OnSetTargetActor(AActor) end


---@class AModelTest : AActor
---@field mpModelTestComp UModelTestComp
local AModelTest = {}



---@class AMoviePlayActor : AMoviePlayActorBase
---@field IsMaterialMovie boolean
---@field CuePointManager UMovieCuePointManager
local AMoviePlayActor = {}

---@param bIsVisible boolean
function AMoviePlayActor:VisibleKeyHelp(bIsVisible) end
---@return boolean
function AMoviePlayActor:SyncInstance() end
function AMoviePlayActor:ReserveDestroy() end
---@param IsPause boolean
function AMoviePlayActor:Pause(IsPause) end
---@return boolean
function AMoviePlayActor:IsReserveDestroy() end
---@return boolean
function AMoviePlayActor:IsPause() end
---@return boolean
function AMoviePlayActor:IsBattleWipe() end
---@return boolean
function AMoviePlayActor:GetPlayBgmOnMovieEnd() end
---@return AMoviePlayActor
function AMoviePlayActor:GetInstance() end
---@return boolean
function AMoviePlayActor:GetBGMFlg() end
function AMoviePlayActor:CreateInstance() end
---@return boolean
function AMoviePlayActor:CheckInstance() end
---@return boolean
function AMoviePlayActor:CanDestroy() end


---@class AMoviePlayActorBase : AAppActor
---@field MovieIDList TArray<int32>
---@field enableAutoFlg boolean
---@field IsPlayBgmOnMovieEnd boolean
---@field Loader UAssetLoader
---@field MainActor AMoviePlayActorBase
---@field SubClass TSubclassOf<AMoviePlayActorBase>
---@field ManaComponent UManaComponent
local AMoviePlayActorBase = {}

function AMoviePlayActorBase:Start() end
---@param InManaComponent UManaComponent
function AMoviePlayActorBase:SetManaComponent(InManaComponent) end
---@param ID int32
function AMoviePlayActorBase:RequestMovie(ID) end
function AMoviePlayActorBase:Remove() end
---@param OpenedUrl FString
function AMoviePlayActorBase:MoviePlay(OpenedUrl) end
function AMoviePlayActorBase:MovieEnd() end
---@param ForceClose boolean
function AMoviePlayActorBase:Close(ForceClose) end
function AMoviePlayActorBase:CallOpenSourceForBP() end


---@class AMoviePlayActorBattle : AMoviePlayActorBase
local AMoviePlayActorBattle = {}

---@return boolean
function AMoviePlayActorBattle:SyncBattleMovieInstance() end
---@param Enable boolean
function AMoviePlayActorBattle:RequestStopperForBP(Enable) end
function AMoviePlayActorBattle:RequestRemoveMaterialsForBP() end
function AMoviePlayActorBattle:MaterialStartForBP() end
---@return AMoviePlayActorBattle
function AMoviePlayActorBattle:GetBattleMovieInstance() end
function AMoviePlayActorBattle:CreateBattleMovieInstance() end
---@return boolean
function AMoviePlayActorBattle:CheckPrepareForBP() end
---@return boolean
function AMoviePlayActorBattle:CheckBattleMovieInstance() end


---@class AMoviePlayActorEventSequenceTrack : AMoviePlayActorBase
---@field CuePointManager UMovieCuePointManager
local AMoviePlayActorEventSequenceTrack = {}

---@return boolean
function AMoviePlayActorEventSequenceTrack:SyncInstance() end
---@param flag boolean
function AMoviePlayActorEventSequenceTrack:SetPause_Main220040(flag) end
---@param InFrameNumber int32
---@param InManaComponent UManaComponent
function AMoviePlayActorEventSequenceTrack:OnTextureUpdated(InFrameNumber, InManaComponent) end
---@param InCurrentTime FQualifiedFrameTime
---@param InPreviousTime FQualifiedFrameTime
function AMoviePlayActorEventSequenceTrack:OnSequenceUpdate(InCurrentTime, InPreviousTime) end
---@param InFrameNumber int32
---@param InManaComponent UManaComponent
function AMoviePlayActorEventSequenceTrack:OnSeekCompleted(InFrameNumber, InManaComponent) end
---@param InManaComponent UManaComponent
function AMoviePlayActorEventSequenceTrack:OnBeginPlay(InManaComponent) end
---@return boolean
function AMoviePlayActorEventSequenceTrack:IsPause_Main220040() end
---@return AMoviePlayActorEventSequenceTrack
function AMoviePlayActorEventSequenceTrack:GetInstance() end
function AMoviePlayActorEventSequenceTrack:CreateInstance() end
---@return boolean
function AMoviePlayActorEventSequenceTrack:CheckInstance() end


---@class AMoviePlayTest : AActor
---@field MovieActor AMoviePlayActor
---@field mMovieInhibitActor AActor
local AMoviePlayTest = {}



---@class AMsgTest : AActor
---@field mpBmdAsset UBmdAsset
local AMsgTest = {}



---@class AMyActor : AActor
local AMyActor = {}


---@class ANameEntry : AUIBaseActor
---@field Loader_ UAssetLoader
---@field ScrActor_ AScrActor
---@field BmdAsset_ UBmdAsset
---@field BfAsset_ UBfAsset
---@field CnvCharDataAsset_ UNameEntryCnvCharDataAsset
---@field NameEntryDrawSubClass TSubclassOf<AUINameEntryDraw>
---@field pNameEntryDrawActor AUINameEntryDraw
---@field pParamLayoutData UDataTable
---@field pLayoutDataTable UUILayoutDataTable
local ANameEntry = {}

---@param ExitType int32
function ANameEntry:OnFinishedScr(ExitType) end


---@class ANetworkWindowTest : ADebugViewer
---@field pDialog AUISystemMsgActor
local ANetworkWindowTest = {}



---@class ANishidaTestMenu : AAppActor
---@field Actor_ AActor
---@field DebugMenu_ UDebugMenu
local ANishidaTestMenu = {}



---@class ANowatariTestMenu : AAppActor
---@field Actor_ AActor
---@field BmdAsset_ UBmdAsset
---@field DebugMenu_ UDebugMenu
local ANowatariTestMenu = {}



---@class AOdagakiTestMenu : AAppActor
---@field _Actor AActor
---@field _DebugMenu UDebugMenu
local AOdagakiTestMenu = {}



---@class AOkadaTestMenu : AAppActor
---@field Actor_ AActor
---@field DebugMenu_ UDebugMenu
local AOkadaTestMenu = {}



---@class AOtHUD : AHUD
local AOtHUD = {}


---@class APadRumbleSequencer : AAppActor
local APadRumbleSequencer = {}

function APadRumbleSequencer:RumbleStopSmall() end
function APadRumbleSequencer:RumbleStopLarge() end
function APadRumbleSequencer:RumbleStopAsset() end
---@param Frame int32
---@param WaitFrame int32
---@param Num int32
---@param TotalFram int32
function APadRumbleSequencer:RumbleStartSmall(Frame, WaitFrame, Num, TotalFram) end
---@param power int32
---@param Frame int32
---@param WaitFrame int32
---@param Num int32
---@param TotalFram int32
function APadRumbleSequencer:RumbleStartLarge(power, Frame, WaitFrame, Num, TotalFram) end
---@param pRumble UForceFeedbackEffect
---@param IsLoop boolean
function APadRumbleSequencer:RumbleStartAsset(pRumble, IsLoop) end


---@class APerformanceViewer : ADebugViewer
local APerformanceViewer = {}


---@class APersonaModelCaptureUpdater : AModelCaptureUpdater
---@field DataAssets_ TArray<UModelCaptureLayoutDataAsset>
local APersonaModelCaptureUpdater = {}



---@class APersonaPreviewWorldUpdater : APreviewWorldUpdater
---@field IsPlaying boolean
local APersonaPreviewWorldUpdater = {}

---@param Actor AActor
---@param Anim EPersonaStatusModelAnim
function APersonaPreviewWorldUpdater:RequestAnimation(Actor, Anim) end
---@param Actor AActor
function APersonaPreviewWorldUpdater:CheckPlayAnimation(Actor) end


---@class APersonaStatus : AAppActor
---@field Sequence_ UPersonaStatusSeq
---@field PersonaList TArray<FPersonaStatusListItem>
---@field RegistList TArray<FPersonaStatusListItem>
---@field pPersonaStatusDraw APersonaStatusDraw
local APersonaStatus = {}



---@class APersonaStatusDraw : AUIDrawBaseActor
---@field IsMemoryCheckPersonaModel boolean
---@field Edit_L1R1_Loop_Animation_Frame int32
---@field Edit_L1R1_Push_Animation_Frame int32
---@field Edit_Flickering_Loop_Frame int32
---@field Edit_Persona_Change_SlideIn_Frame int32
---@field Edit_Persona_Change_Slide_Value float
---@field Scene EPERSONA_STATUS_DRAW_SCENE
---@field pBackgroundMaterial UMaterialInstanceDynamic
---@field ModelCaptureUpdater APersonaModelCaptureUpdater
---@field Edit_Background_FadeIn_Frame int32
---@field Edit_Caustics_SlideIn_Delay int32
---@field Edit_Caustics_SlideIn_Frame int32
---@field Edit_Caustics_RectMask_ScaleUp_Delay int32
---@field Edit_Caustics_RectMask_ScaleUp_Frame int32
---@field Edit_PersonaInfo_SlideIn_Delay int32
---@field Edit_PersonaInfo_SlideIn_Frame int32
---@field Edit_Attribute_Effect_Frame int32
---@field Edit_SkillList_SlideIn_Delay int32
---@field Edit_SkillList_SlideIn_Frame int32
---@field Edit_Parameter_SlideIn_Delay int32
---@field Edit_Parameter_SlideIn_Frame int32
---@field Edit_Persona_SlideIn_Delay int32
---@field Edit_Persona_SlideIn_Frame int32
---@field SetBackgroundAlphaEvent FPersonaStatusDrawSetBackgroundAlphaEvent
---@field SetCausticsSlideEvent FPersonaStatusDrawSetCausticsSlideEvent
---@field SetCausticsRectMaskScaleEvent FPersonaStatusDrawSetCausticsRectMaskScaleEvent
---@field Edit_Parameter_Gage_Animation_Frame int32
---@field Edit_Parameter_Gage_Animation_Delay int32
---@field Edit_Parameter_UpGage_Animation_Frame int32
---@field Edit_Parameter_Incense_Value_FadeIn_Frame int32
---@field Edit_LevelUp_SlideIn_Frame int32
---@field Edit_LevelUp_Plate_FadeOut_Frame int32
---@field Edit_SkillAdd_Next_Skill_Start_Delay int32
---@field Edit_SkillAdd_Next_Skill_Plate_Color_Fade_Wait float
---@field Edit_SkillAdd_Next_Skill_Plate_Color_Fade_Time float
---@field Edit_SkillAdd_Next_Skill_Move_Frame int32
---@field Edit_SkillAdd_Next_Skill_In_Frame int32
---@field Edit_SkillAdd_Next_Skill_New_Slide_In_Frame int32
---@field Edit_SkillAdd_Next_Skill_New_Fade_In_Frame int32
---@field Edit_Conception_Level3_LoopAnimation_Frame int32
---@field Edit_Conception_Level1_LoopAnimation_Frame int32
---@field Edit_Conception_GetEffect_Scale_Frame int32
---@field Edit_Conception_GetEffect_FadeOut_Delay int32
---@field Edit_Conception_GetEffect_FadeOut_Frame int32
---@field Edit_Conception_Icon_Get_FadeOut_Delay int32
---@field Edit_Conception_Icon_Get_FadeOut_Frame int32
---@field Edit_SkillCard_FadeIn_Frame int32
---@field Edit_SkillCard_SlideIn_Frame int32
---@field Edit_SkillCard_Used_FadeOut_Frame int32
---@field Edit_SkillCard_Used_SlideeOut_Frame int32
---@field Edit_SkillCard_Used_Plate_AddEffect_Frame int32
---@field Edit_SkillCard_Used_Plate_LoopAnimation_Frame int32
---@field Edit_SkillCard_Used_GetIcon_SlideIn_Frame int32
---@field Edit_ChangeSkill_Skill_Name_Color_LoopAnimation_Frame int32
---@field Edit_ChangeSkill_1Effect_Delay int32
---@field Edit_ChangeSkill_BluePlate_SlideIn_Frame int32
---@field Edit_ChangeSkill_BluePlate_Slide_Wait_Frame int32
---@field Edit_ChangeSkill_BluePlate_SlideOut_Frame int32
---@field Edit_ChangeSkill_Change_Font_SlideIn_Delay int32
---@field Edit_ChangeSkill_Change_Font_SlideIn_Frame int32
---@field Edit_ChangeSkill_Change_Font_Slide_Wait_Frame int32
---@field Edit_ChangeSkill_Change_Font_SlideOut_Frame int32
---@field Edit_ChangeSkill_Change_Font_FadeIn_Delay int32
---@field Edit_ChangeSkill_Change_Font_FadeIn_Frame int32
---@field Edit_ChangeSkill_Change_Font_Fade_Wait_Frame int32
---@field Edit_ChangeSkill_Change_Font_FadeOut_Frame int32
---@field Edit_ChangeSkill_ChangeIcon_FadeIn_Frame int32
---@field Edit_ChangeSkill_ChangeIcon_SlideIn_Frame int32
---@field Edit_SkillInfo_SlideIn_Frame int32
---@field Edit_SkillInfo_FadeIn_Frame int32
---@field Edit_SkillInfo_SlideOut_Frame int32
---@field Edit_SkillInfo_FadeOut_Frame int32
---@field Edit_SkillInfo_Cursor_FadeIn_Frame int32
---@field Edit_SkillInfo_Cursor_FadeOut_Frame int32
---@field Edit_SkillInfo_Cursor_Frame int32
---@field Edit_SkillInfo_SubCursor_Frame int32
---@field SkillSelectListEvent FPersonaStatusDrawSkillSelectListEvent
---@field Edit_AffinityCheck_Icon_Move_Frame int32
---@field Edit_AffinityCheck_Icon_1_Move_Delay int32
---@field Edit_AffinityCheck_Font_Delay int32
---@field Edit_AffinityCheck_Font_Move_Frame int32
---@field Edit_AffinityCheck_Font_1_Move_Delay int32
---@field Edit_AffinityCheck_Font_FadeIn_Frame int32
---@field Edit_AffinityCheck_Font_1_FadeIn_Delay int32
---@field Edit_SkillSelectList_SlideIn_Delay int32
---@field Edit_SkillSelectList_SlideIn_Frame int32
---@field Edit_SkillSelectList_FadeIn_Delay int32
---@field Edit_SkillSelectList_FadeIn_Frame int32
---@field Edit_SkillSelectList_SlideOut_Delay int32
---@field Edit_SkillSelectList_SlideOut_Frame int32
---@field Edit_SkillSelectList_FadeOut_Delay int32
---@field Edit_SkillSelectList_FadeOut_Frame int32
---@field Edit_SkillSelectList_RectScale_Delay int32
---@field Edit_SkillSelectList_RectScale_Frame int32
---@field Edit_SkillSelectList_Cursor_FadeIn_Delay int32
---@field Edit_SkillSelectList_Cursor_FadeIn_Frame int32
---@field Edit_SkillSelectList_Cursor_SlideIn_Delay int32
---@field Edit_SkillSelectList_Cursor_SlideIn_Frame int32
---@field Edit_SkillSelectList_SubCursor_SlideIn_Frame int32
---@field Edit_SkillSelectList_Cursor_Frame int32
---@field Edit_SkillSelectList_SubCursor_Frame int32
---@field Edit_SkillSelectList_Info_SlideIn_Frame int32
---@field Edit_SkillSelectList_Info_FadeIn_Frame int32
---@field Edit_SkillSelectList_Info_ChangeSlideIn_Frame int32
---@field Edit_SkillSelectList_Info_ChangeFadeIn_Frame int32
---@field Edit_Selected_Succession_Skill_SlideIn_Delay int32
---@field Edit_Selected_Succession_Skill_SlideIn_Frame int32
---@field Edit_Selected_Succession_Skill_FadeIn_Delay int32
---@field Edit_Selected_Succession_Skill_FadeIn_Frame int32
---@field Edit_Commentary_FadeIn_Frame int32
---@field Edit_Commentary_SlideIn_Frame int32
---@field Edit_Commentary_Persona_Slide_Delay int32
---@field Edit_Commentary_Persona_Slide_Frame int32
---@field Edit_Commentary_Info_FadeOut_Delay int32
---@field Edit_Commentary_Info_FadeOut_Frame int32
---@field Edit_Commentary_SkillList_Move_Delay int32
---@field Edit_Commentary_SkillList_Move_Frame int32
---@field Edit_Commentary_Paramter_Move_Delay int32
---@field Edit_Commentary_Paramter_Move_Frame int32
---@field Edit_Commentary_Affinity_FadeOut_Delay int32
---@field Edit_Commentary_Affinity_FadeOut_Frame int32
---@field Edit_Commentary_Affinity_SlideOut_Delay int32
---@field Edit_Commentary_Affinity_SlideOut_Frame int32
---@field Edit_Commentary_Rect_ScaleUp_Delay int32
---@field Edit_Commentary_Rect_ScaleUp_Frame int32
---@field Edit_Commentary_Font_Change_Frame int32
---@field Edit_Combine_CommuBonus_SlideIn_Frame int32
---@field Edit_Combine_CommuBonus_Plate_FadeOut_Frame int32
---@field Edit_Combine_CommuBonus_Font_FadeOut_Frame int32
---@field Edit_Combine_CommuBonus_Fix_Point_ColorChange_Frame1 int32
---@field Edit_Combine_CommuBonus_Fix_Point_ColorChange_Frame2 int32
---@field Edit_Combine_CommuBonus_ColorChange_Frame int32
---@field Edit_Combine_BonusExp_SlideIn_Delay int32
---@field Edit_Combine_BonusExp_SlideIn_Frame int32
---@field Edit_Combine_BonusExp_Fade_Frame int32
---@field Edit_Registry_LockIcon_InAnimation_Delay int32
---@field Edit_Registry_LockIcon_InAnimation_Frame int32
---@field Edit_Registry_Switch_Heading_SlideOut_Delay int32
---@field Edit_Registry_Switch_Heading_SlideOut_Frame int32
---@field Edit_Registry_Switch_Heading_FadeOut_Delay int32
---@field Edit_Registry_Switch_Heading_FadeOut_Frame int32
---@field Edit_Registry_Switch_Heading_SlideIn_Delay int32
---@field Edit_Registry_Switch_Heading_SlideIn_Frame int32
---@field Edit_Registry_Switch_Heading_FadeIn_Delay int32
---@field Edit_Registry_Switch_Heading_FadeIn_Frame int32
---@field Edit_Registry_Switch_Mark_Rotate_Animation_Frame int32
---@field LayoutTable UDataTable
---@field TextLayoutTable UDataTable
---@field TextPosRowLayoutTable UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field TextLayoutDataTable UUILayoutDataTable
---@field TextPosRowLayoutDataTable UUILayoutDataTable
local APersonaStatusDraw = {}

---@param DeltaTime float
function APersonaStatusDraw:Update(DeltaTime) end
function APersonaStatusDraw:SetupOutAnimation() end
---@return UTexture
function APersonaStatusDraw:GetCaptureRenderTarget() end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawSkillSelectList(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawSkillInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawSkillCard(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawRegistrySkillList(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawRegistryPersonaInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawRegistryPersona(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawRegistryCommentary(X, Y, Angle) end
function APersonaStatusDraw:DrawOutAnimation() end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawLevelUpConception(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawLevelUp(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawExpBonus(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDrawerPersona(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDrawerConceptionInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDrawerConception(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefaultStatusParameter(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefaultPersonaInfoBackground(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefaultPersonaInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefaultPersona(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefaultCommentary(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefalutSkillList(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawDefalutConception(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawConceptionInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawCommuBonus(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawCombinePersonaInfo(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawCombinePersona(X, Y, Angle) end
function APersonaStatusDraw:DrawBackground() end
---@param X float
---@param Y float
---@param Angle float
function APersonaStatusDraw:DrawAttribute(X, Y, Angle) end


---@class APersonaStatusTest : AAppActor
---@field Actor_ APersonaStatus
---@field CombineCalc_ UUICombineCalc
---@field DebugMenu_ UDebugMenu
local APersonaStatusTest = {}



---@class APersonaStatusViewer : ADebugViewer
---@field StatusList TArray<FPersonaStatusListItem>
---@field pPersonaStatus APersonaStatus
local APersonaStatusViewer = {}



---@class APreloadVolume : ATriggerVolume
---@field PreloadAssets TArray<FSoftObjectPath>
---@field loadedAssets TArray<UObject>
local APreloadVolume = {}

---@param OverlappedActor AActor
---@param OtherActor AActor
function APreloadVolume:OnOverlapEnd(OverlappedActor, OtherActor) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function APreloadVolume:OnOverlapBegin(OverlappedActor, OtherActor) end
function APreloadVolume:LoadComplete() end


---@class APrgssCmnDataActor : AAppActor
---@field mAssetLoader_ UAssetLoader
local APrgssCmnDataActor = {}



---@class ARankUpTest : AAppActor
---@field Actor AAppActor
---@field DebugMenu UDebugMenu
local ARankUpTest = {}



---@class AResidentReloadActor : AAppActor
local AResidentReloadActor = {}


---@class ARightsNotation : AAppActor
---@field m_pLoader UAssetLoader
---@field pLoadDrawClass TSubclassOf<ARightsNotationDraw>
---@field pAssetLoader UAssetLoader
---@field pDrawClass ARightsNotationDraw
---@field pCaptureTex UTexture
---@field pCaptureBackGround UFrameBufferCapture
---@field LicenseTextData UDataTable
---@field LicenseFont UFont
local ARightsNotation = {}



---@class ARightsNotationDraw : AUIDrawBaseActor
---@field BlackBoardColor FColor
---@field GladationBoardColor FColor
---@field BlueBoardColor FColor
---@field BlackBoardCoverColor FColor
---@field BlackBoardMoveSpeed TArray<float>
---@field BlueBoardMoveSpeed TArray<float>
---@field BlueBoardRollSpeed TArray<float>
---@field MainTextMoveSpeed TArray<float>
---@field ScrollBarMoveSpeed TArray<float>
---@field BlackBoardAlphaSpeed TArray<float>
---@field BlueBoardAlphaSpeed TArray<float>
---@field GradationAlphaSpeed TArray<float>
---@field MainTextAlphaSpeed TArray<float>
---@field ScrollBarAlphaSpeed TArray<float>
---@field FadeOutAnimFinishTime float
---@field TEXT_BASE_POS_X float
---@field TEXT_BASE_POS_Y float
---@field SkipScrollMoveRate int32
---@field MaxDrawRowCount int32
---@field pCaptureTex UTexture
---@field pCaptureBackGround UFrameBufferCapture
local ARightsNotationDraw = {}

function ARightsNotationDraw:Update() end


---@class ASaveLoadDraw : AUIDrawBaseActor
---@field BootMode int32
---@field bIsStartInAnim boolean
---@field bIsUseCapture boolean
---@field bIsOpenCamp boolean
---@field bIsUseScrollBar boolean
---@field bIsStartCloseAnim boolean
---@field CursorIndex int32
---@field ListTopIndex int32
---@field CurrentIndex int32
---@field SaveSlotItems TArray<FSaveSlotItem>
---@field OpenType ESaveDrawOpenType
---@field AllSlotNum int32
---@field CheckOverListIndex int32
---@field bIsInheritanceLoad boolean
local ASaveLoadDraw = {}

---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function ASaveLoadDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@param DeltaTime float
---@return boolean
function ASaveLoadDraw:StateDraw_Update(DeltaTime) end
---@return boolean
function ASaveLoadDraw:StateDraw_SaveDataList() end
---@return boolean
function ASaveLoadDraw:StateDraw_Close() end
---@return boolean
function ASaveLoadDraw:StateDraw_BG() end
---@param Index int32
---@param isSelected boolean
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param DrawPoint EUI_DRAW_POINT
function ASaveLoadDraw:SetTouchCollision(Index, isSelected, X, Y, Width, Height, DrawPoint) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param DrawPoint EUI_DRAW_POINT
function ASaveLoadDraw:SetScrollBarSliderCollision(X, Y, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, DrawPoint) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param DrawPoint EUI_DRAW_POINT
function ASaveLoadDraw:SetScrollBarCollision(X, Y, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, DrawPoint) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param DrawPoint EUI_DRAW_POINT
function ASaveLoadDraw:SetScrollBarBaseCollision(X, Y, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, DrawPoint) end
function ASaveLoadDraw:ProcessCompleted__DelegateSignature() end
---@param X float
---@param Y float
---@param String FString
---@param Color FColor
---@param Scale float
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function ASaveLoadDraw:PLNameFontDraw(X, Y, String, Color, Scale, Angle, DrawPoint, Style) end
function ASaveLoadDraw:PlayListInSE() end
---@param X float
---@param Y float
---@param Z float
---@param String FString
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Scale float
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function ASaveLoadDraw:LocationNameDraw(X, Y, Z, String, R, G, B, A, Scale, Angle, DrawPoint, Style) end
---@return boolean
function ASaveLoadDraw:IsMonthDayDisplayLanguages() end
---@return boolean
function ASaveLoadDraw:IsDebugDrawClearData() end
---@param InMonth int32
---@return boolean
function ASaveLoadDraw:IsDayZeroPaddingLanguages(InMonth) end
---@return boolean
function ASaveLoadDraw:IsCheckedNetworkSave() end
---@param InMonth int32
---@return int32
function ASaveLoadDraw:GetSelDebugMonth(InMonth) end
---@param InDay int32
---@return int32
function ASaveLoadDraw:GetSelDebugDay(InDay) end
---@param InMonth int32
---@return int32
function ASaveLoadDraw:GetDebugMonth(InMonth) end
---@param InDay int32
---@return int32
function ASaveLoadDraw:GetDebugDay(InDay) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param TextureHandle UTexture
---@param DrawPoint EUI_DRAW_POINT
function ASaveLoadDraw:DrawTextureEx(X, Y, Width, Height, TextureHandle, DrawPoint) end
---@param InFrame int32
---@return float
function ASaveLoadDraw:ConvFrameToTime(InFrame) end
function ASaveLoadDraw:CallOnFinishedInAnim() end
function ASaveLoadDraw:CallOnFinishedCloseAnim() end
---@param InLayoutId ESaveLoadTimeZoneLayoutAstrea
---@param InDefaultPos FVector2D
---@return FVector2D
function ASaveLoadDraw:AdjustedTimeZoneLayoutPosAstrea(InLayoutId, InDefaultPos) end
---@param InLayoutId ESaveLoadLayoutAstrea
---@param InDefaultPos FVector2D
---@return FVector2D
function ASaveLoadDraw:AdjustedLayoutPosAstrea(InLayoutId, InDefaultPos) end
---@param InLayoutId ESaveLoadLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function ASaveLoadDraw:AdjustedLayoutPos(InLayoutId, InDefaultPos) end
---@param InLayoutId ESaveLoadLayout2
---@param InDefaultPos FVector2D
---@return FVector2D
function ASaveLoadDraw:AdjustedLayout2Pos(InLayoutId, InDefaultPos) end
---@param InLayoutId ESaveLoadDateLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function ASaveLoadDraw:AdjustedDateLayoutPos(InLayoutId, InDefaultPos) end


---@class AScrActor : AActor
---@field mpBfAsset UBfAsset
---@field mpBmdAsset UBmdAsset
---@field mpAssetLoader UAssetLoader
---@field OnScrActorFinishedDelegate FScrActorOnScrActorFinishedDelegate
local AScrActor = {}

function AScrActor:ForcedStopScr() end


---@class ASimpleShopDraw : AFclShopBase
---@field SprData USprAsset
---@field m_pSpr_Common USprAsset
---@field m_ShimpleShop TArray<USprAsset>
---@field m_pSpr_ShimpleShop USprAsset
---@field m_pPlg_ShimpleShop UPlgAsset
---@field SaveItemNum TArray<int32>
---@field ShimpleShopDrawClass TSubclassOf<ASimpleShopDraw>
---@field pLoader UAssetLoader
---@field LineupTable_ UItemShopLineUpListTable
---@field tex UTexture
---@field captureBackGround UFrameBufferCapture
local ASimpleShopDraw = {}



---@class ASoundMonitoring : AAppActor
local ASoundMonitoring = {}

---@param Filename FString
---@return int32
function ASoundMonitoring:startReadAcb(Filename) end
---@param PlayerId int32
---@return int32
function ASoundMonitoring:startFreePlayer(PlayerId) end
---@param bankID int32
---@return int32
function ASoundMonitoring:startFreeAcb(bankID) end
---@param PlayerId int32
---@param readBank int32
function ASoundMonitoring:setReadBankToPlayer(PlayerId, readBank) end
---@param PlayerId int32
---@param CueId int32
---@return int32
function ASoundMonitoring:playCueID(PlayerId, CueId) end
---@param fadeOutTime int32
---@param fadeOutVolume float
---@return boolean
function ASoundMonitoring:fadeOutBGMCategorySoundMonitor(fadeOutTime, fadeOutVolume) end
---@param fadeInTime int32
---@param fadeInVolume float
---@return boolean
function ASoundMonitoring:fadeInBGMCategorySoundMonitor(fadeInTime, fadeInVolume) end
---@param PlayerId int32
---@param Type EsoundPlayerType
---@return boolean
function ASoundMonitoring:createPlayer(PlayerId, Type) end
---@return boolean
function ASoundMonitoring:checkReadySoundMonitor() end
---@param PlayerId int32
---@return boolean
function ASoundMonitoring:checkReadyPlayer(PlayerId) end
---@param readBank int32
---@return boolean
function ASoundMonitoring:checkReadBank(readBank) end


---@class ASoundPlayerActor : AAppActor
local ASoundPlayerActor = {}


---@class AStaffRoll : AUIDrawBaseActor
---@field m_pStaffRollDrawLoader UAssetLoader
---@field StaffRollDrawClass TSubclassOf<AStaffRollDraw>
---@field pStaffRollDraw AStaffRollDraw
---@field pStaffRollDataList UStaffRollDataAsset
---@field pStaffRollMovie AMoviePlayActor
---@field pStaffRollFont UFont
---@field UIP_StaffRoll FGetUIParameter
local AStaffRoll = {}

---@param DeltaTime float
function AStaffRoll:Update(DeltaTime) end
---@param Type int16
---@param RoundFlg boolean
---@return boolean
function AStaffRoll:Start(Type, RoundFlg) end
function AStaffRoll:Draw() end


---@class AStaffRollDebugViewer : ADebugViewer
---@field mpBfAsset UBfAsset
---@field Loader_ UAssetLoader
---@field mpActor AScrActor
---@field isBFAsset boolean
---@field bStartScript boolean
---@field pStaffRollSys AStaffRoll
local AStaffRollDebugViewer = {}



---@class AStaffRollDraw : AUIDrawBaseActor
---@field PictOutWaitFrame float
---@field PictOutMoveFrame float
---@field PictInWaitFrame float
---@field PictInMoveFrame float
---@field SceneAnimOutWaitFrame float
---@field SceneAnimOutMoveFrame float
---@field SceneAnimInWaitFrame float
---@field SceneAnimInMoveFrame float
---@field SoundSwitchWaitSec float
---@field SoundFadeFrame int32
---@field DataList UStaffRollDataAsset
---@field SprData USprAsset
---@field SprDataAstrea USprAsset
local AStaffRollDraw = {}

function AStaffRollDraw:Draw() end


---@class ASuzukiDrawTest : AAppActor
---@field pAssetLoader UAssetLoader
---@field SuzukiDrawTestDrawClass TSubclassOf<ASuzukiDrawTestDraw>
---@field pSuzukiDrawTestDraw ASuzukiDrawTestDraw
local ASuzukiDrawTest = {}



---@class ASuzukiDrawTestDraw : AUIDrawBaseActor
---@field pMaterial UMaterialInstance
---@field pParamMateDynamic UMaterialInstanceDynamic
---@field pPlgAsset UPlgAsset
---@field pCaptureMaterial UMaterial
---@field pBackgroundMaterial UMaterialInstanceDynamic
---@field pCaptureTexture UTexture
---@field pModelCaptureTex UTexture
---@field PWorldUpdater_ APreviewWorldUpdater
---@field State int32
---@field captureBackGround UFrameBufferCapture
local ASuzukiDrawTestDraw = {}

---@param inDeltaTime float
function ASuzukiDrawTestDraw:Update(inDeltaTime) end
---@param modelTransform FTransform
---@param NewGazeOffset FVector
---@return boolean
function ASuzukiDrawTestDraw:SyncModelCapture(modelTransform, NewGazeOffset) end
---@param X float
---@param Y float
---@param Angle float
function ASuzukiDrawTestDraw:FromBPDraw(X, Y, Angle) end


---@class ASystemViewer : ADebugViewer
local ASystemViewer = {}


---@class ATaskActor : AActor
local ATaskActor = {}


---@class ATestBoxCollision : AActor
---@field CollisionComponent UBoxComponent
local ATestBoxCollision = {}



---@class ATestCharacter3 : ACharacter
---@field Mesh2 USkeletalMeshComponent
---@field Mesh3 USkeletalMeshComponent
local ATestCharacter3 = {}



---@class ATestMultiDraw : AActor
---@field baseTex UTexture
---@field baseMultiBaseTex UTexture
---@field baseMultiTex UTexture
---@field maskTex UTexture
---@field mpMultiplyTestSpr USprAsset
---@field MAT UMaterial
---@field mat2 UMaterial
---@field mTestMID2D TArray<UMaterialInstanceDynamic>
---@field mTestMIC2D UMaterialInstanceConstant
---@field bustupEye_00 UTexture
---@field bustupEye_01 UTexture
---@field bustupMouth_00 UTexture
---@field bustupMouth_01 UTexture
---@field bustupSdw_00 UTexture
---@field bustupSdw_01 UTexture
---@field bustupEye_mask UTexture
---@field bustupMouth_mask UTexture
---@field DrawableMaterial UMaterialInstanceDynamic
---@field bustupBase UTexture
local ATestMultiDraw = {}



---@class ATestNishidaGameMode : AGameModeBase
---@field m_pTestNishidaResource TSubclassOf<UTestNishidaResource>
---@field m_pTestNishidaResourceActor TSubclassOf<ATestNishidaResourceActor>
local ATestNishidaGameMode = {}



---@class ATestNishidaResourceActor : AActor
---@field _HardReferenceTexture UTexture
---@field _SoftReferenceTexture TSoftObjectPtr<UTexture>
---@field _texture UTexture
local ATestNishidaResourceActor = {}

function ATestNishidaResourceActor:Load() end


---@class ATestSaveGameActor : AActor
---@field mpTestSaveGameDebugMenu UDebugMenu
local ATestSaveGameActor = {}



---@class ATestSplineCollision : AActor
---@field SplineComponent USplineComponent
local ATestSplineCollision = {}



---@class ATestSprAppActor : AAppActor
---@field mpTestSpr USprAsset
local ATestSprAppActor = {}



---@class ATestTriggerBox : AActor
---@field Icon UBillboardComponent
---@field CollisionComponent UBoxComponent
local ATestTriggerBox = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ATestTriggerBox:OnComponentOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATestTriggerBox:OnComponentOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class ATextureData : AAppActor
---@field Texture UTexture
---@field Sprite USprAsset
local ATextureData = {}



---@class ATheurgiaActor : AUIBaseActor
local ATheurgiaActor = {}


---@class ATheurgiaAnimActor : AAppActor
local ATheurgiaAnimActor = {}


---@class ATheurgiaDraw : AUIDrawBaseActor
local ATheurgiaDraw = {}

---@param DeltaTime float
function ATheurgiaDraw:UpdateTimes(DeltaTime) end
---@param No int32
function ATheurgiaDraw:SetCurrsorIndex(No) end
function ATheurgiaDraw:OpenSkillHelp() end
---@return int32
function ATheurgiaDraw:GetTheurgiaListMax() end
---@return int32
function ATheurgiaDraw:GetTheurgiaCursorIndex() end
---@param X float
---@param Y float
---@param Index int32
function ATheurgiaDraw:DrawTheurgiaName(X, Y, Index) end
---@param X float
---@param Y float
---@param Index int32
function ATheurgiaDraw:DrawTheurgiaHelp(X, Y, Index) end
---@param X float
---@param Y float
function ATheurgiaDraw:DrawRiseTrend(X, Y) end
---@param X float
---@param Y float
function ATheurgiaDraw:DrawCharaName(X, Y) end
---@param X float
---@param Y float
function ATheurgiaDraw:DrawCharacteristicName(X, Y) end
---@param X float
---@param Y float
function ATheurgiaDraw:DrawCharacteristicHelp(X, Y) end
function ATheurgiaDraw:CloseSkillHelp() end


---@class ATitleActor : AAppActor
---@field CurrentTitleState UTitleStateBase
---@field TitleStates TMap<ETitleState, UTitleStateBase>
---@field DefaultCamera AActor
---@field TitleCamera AActor
---@field m_GamerTagWidget UUIDrawGamerTag
---@field m_GamerTagWidgetClass TSubclassOf<UUserWidget>
---@field TitleAssetLoader UAssetLoader
---@field TitleDataTable UDataTable
---@field TitleSelectDataTable UDataTable
---@field AddAstreaMsgSimpleTimerHandle FTimerHandle
---@field LogoActor ATitleLogoActor
---@field LogoActorAstrea ATitleLogoActor
---@field LogoActorSC TSubclassOf<ATitleLogoActor>
---@field LogoActorSC_Astrea TSubclassOf<ATitleLogoActor>
---@field CurvePressAnyButtonBlueRect FCurveVectorAnimation
---@field CurvePressAnyButtonAnim FCurveVectorAnimation
---@field LayoutDataTable UDataTable
---@field UILayoutLayoutDataTable UUILayoutDataTable
---@field TitleSpr USprAsset
---@field TitleSprAstrea USprAsset
---@field CautionTex UTexture
---@field PhotosensitiveCautionTex UTexture
---@field McaCameraAsset UMcaAsset
---@field McaCameraAssetAstrea UMcaAsset
---@field McaCameraAfterAssetAstrea UMcaAsset
---@field MainCamera ACameraActor
---@field OldCamera AActor
---@field PressAnyButtonMat UMaterial
---@field PressAnyButtonMID UMaterialInstanceDynamic
local ATitleActor = {}

function ATitleActor:OpenAddAstreaMsgSimple() end
function ATitleActor:OnLoaded() end


---@class ATitleCharaBase : AActor
---@field Root USceneComponent
---@field CharaMesh USkeletalMeshComponent
local ATitleCharaBase = {}

function ATitleCharaBase:OnChangeAnimationEvent() end


---@class ATitleCredit : AUIDrawBaseActor
---@field m_pStaffRollDrawLoader UAssetLoader
---@field StaffRollDrawClass TSubclassOf<AStaffRollDraw>
---@field pStaffRollDraw AStaffRollDraw
---@field pStaffRollDataList UStaffRollDataAsset
---@field pStaffRollFont UFont
---@field UIP_StaffRoll FGetUIParameter
local ATitleCredit = {}

---@param DeltaTime float
function ATitleCredit:Update(DeltaTime) end
---@return boolean
function ATitleCredit:Start() end
function ATitleCredit:Draw() end


---@class ATitleLogoActor : AActor
---@field FadeInFrame int32
---@field FadeOutFrame int32
local ATitleLogoActor = {}

---@return boolean
function ATitleLogoActor:IsGameClear() end
---@return float
function ATitleLogoActor:GetAlpha() end


---@class ATutorialViewer : ADebugViewer
local ATutorialViewer = {}


---@class AUFileNameManagerrActor : AAppActor
---@field mAssetLoader_ UAssetLoader
local AUFileNameManagerrActor = {}



---@class AUIAccessInfoDraw : AUIBaseActor
---@field m_pMiniMapSpr USprAsset
---@field m_pMiniMapSprAstrea USprAsset
---@field m_pPlaceSpr USprAsset
---@field m_pPlaceSprAstrea USprAsset
---@field m_pMiniMap UUIMiniMapDraw
---@field m_pLoader UAssetLoader
---@field m_pScrActor AScrActor
---@field m_pBfAsset UBfAsset
---@field m_pBmdAsset UBmdAsset
---@field m_pLocationSelect UUILocationSelect
---@field m_pPlacePlg UPlgAsset
---@field m_pPlacePlgAstrea UPlgAsset
---@field m_tagUip FGetUIParameter
---@field m_tagFadeInCurve FCurveFloatAnimation
---@field m_tagFadeOutCurve FCurveFloatAnimation
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field LayoutParamData UDataTable
---@field PlaceNameLayoutData UDataTable
---@field PlaceNameLayoutDataTable UUILayoutDataTable
---@field PlaceNameLayoutDataAstrea UDataTable
---@field PlaceNameLayoutDataTableAstrea UUILayoutDataTable
---@field MapNameLayoutData UDataTable
---@field MapNameLayoutDataTable UUILayoutDataTable
---@field IwatodaiFloorNoLayoutData UDataTable
---@field IwatodaiFloorNoLayoutDataTable UUILayoutDataTable
---@field MallFloorNoLayoutData UDataTable
---@field MallFloorNoLayoutDataTable UUILayoutDataTable
---@field SchoolFloorNoLayoutData UDataTable
---@field SchoolFloorNoLayoutDataTable UUILayoutDataTable
---@field DormitoryFloorNoLayoutData UDataTable
---@field DormitoryFloorNoLayoutDataTable UUILayoutDataTable
---@field RyokanFloorNoLayoutData UDataTable
---@field RyokanFloorNoLayoutDataTable UUILayoutDataTable
---@field HotelFloorNoLayoutData UDataTable
---@field HotelFloorNoLayoutDataTable UUILayoutDataTable
---@field ThebelFloorNoLayoutData UDataTable
---@field ThebelFloorNoLayoutDataTable UUILayoutDataTable
---@field ArqaFloorNoLayoutData UDataTable
---@field ArqaFloorNoLayoutDataTable UUILayoutDataTable
---@field YabbashahFloorNoLayoutData UDataTable
---@field YabbashahFloorNoLayoutDataTable UUILayoutDataTable
---@field TziahFloorNoLayoutData UDataTable
---@field TziahFloorNoLayoutDataTable UUILayoutDataTable
---@field HarabahFloorNoLayoutData UDataTable
---@field HarabahFloorNoLayoutDataTable UUILayoutDataTable
---@field AdamahFloorNoLayoutData UDataTable
---@field AdamahFloorNoLayoutDataTable UUILayoutDataTable
---@field DungeonFloorNoLayoutDataAstrea TArray<UDataTable>
---@field DungeonFloorNoLayoutDataTableAstrea TArray<UUILayoutDataTable>
local AUIAccessInfoDraw = {}

---@param ExitType int32
function AUIAccessInfoDraw:OnFinishedScr(ExitType) end


---@class AUIActionSuggestionDraw : AUIBaseActor
---@field m_pTextColDataTable UDataTable
---@field m_pTextColLayoutDataTable UUILayoutDataTable
---@field m_pGuidanceSpr USprAsset
local AUIActionSuggestionDraw = {}



---@class AUIArcanaCardCapture : AUIDrawBaseActor
---@field pModelCaptureTex UTexture
---@field CardContainer AAppPropsCardContainer
---@field CardBp AAppPropsCore
---@field AnimSequence UAnimSequenceBase
---@field pUISceneCapture2D AUISceneCapture
---@field UISceneCaptureClass TSubclassOf<AUISceneCapture>
---@field AnimManager AUICmmRankUPAnimManager
---@field CardEffect UNiagaraSystem
---@field EffectComponent UNiagaraComponent
---@field SkeltalComponent USkeletalMeshComponent
local AUIArcanaCardCapture = {}

function AUIArcanaCardCapture:StartPoemOutAnime() end
function AUIArcanaCardCapture:StartAnimeReverse() end
function AUIArcanaCardCapture:StartAnimeRecoveryTurn() end
function AUIArcanaCardCapture:StartAnimeRecoveryOutv() end
function AUIArcanaCardCapture:StartAnimeRecoveryIn() end
function AUIArcanaCardCapture:FadeOutEffect() end
function AUIArcanaCardCapture:FadeInEffect() end


---@class AUIBackLog : AAppActor
---@field m_pLoader UAssetLoader
---@field OnFinishedDelegate FUIBackLogOnFinishedDelegate
---@field BackLoadDrawClass TSubclassOf<AUIBackLogDraw>
---@field pAssetLoader UAssetLoader
---@field pBackLoadDraw AUIBackLogDraw
---@field tex UTexture
---@field captureBackGround UFrameBufferCapture
---@field pParamLayoutData UDataTable
---@field pParamLayoutDataAstrea UDataTable
---@field pLayoutDataTable UUILayoutDataTable
---@field pLayoutDataTableAstrea UUILayoutDataTable
local AUIBackLog = {}



---@class AUIBackLogDraw : AUIDrawBaseActor
---@field CursorMoveSpeed float
---@field CursorPosFix TArray<float>
---@field IconWaveMoveSpeed float
---@field IconWaveSmallWaitFrameList TArray<int32>
---@field IconWaveMediumWaitFrameList TArray<int32>
---@field IconWaveLargeWaitFrameList TArray<int32>
---@field IconWaitAngleFrame TArray<int32>
---@field IconMoveAngleFrame TArray<int32>
---@field IconWaveSelColorList TArray<FColor>
---@field IconWaveNonSelColorList TArray<FColor>
---@field IconColor TArray<FColor>
---@field BlackBoardColor FColor
---@field GladationBoardColor FColor
---@field BlueBoardColor FColor
---@field BlackBoardCoverColor FColor
---@field CursorWaitMoveSlideFrame TArray<int32>
---@field CursorMoveSlideFrame TArray<int32>
---@field BlackBoardMoveSpeed TArray<float>
---@field BlueBoardMoveSpeed TArray<float>
---@field BlueBoardRollSpeed TArray<float>
---@field DayMoveSpeed TArray<float>
---@field ScrollBarMoveSpeed TArray<float>
---@field LogMoveSpeed TArray<float>
---@field IconMoveSpeed TArray<float>
---@field NoneMoveSpeed TArray<float>
---@field DecoMoveSpeed TArray<float>
---@field BlackBoardAlphaSpeed TArray<float>
---@field BlueBoardAlphaSpeed TArray<float>
---@field GradationAlphaSpeed TArray<float>
---@field DayAlphaSpeed TArray<float>
---@field ScrollBarAlphaSpeed TArray<float>
---@field LogAlphaSpeed TArray<float>
---@field IconAlphaSpeed TArray<float>
---@field NoneAlphaSpeed TArray<float>
---@field DecoAlphaSpeed TArray<float>
---@field CursorWhiteMoveSpeed TArray<float>
---@field CursorWhiteAlphaSpeed TArray<float>
---@field CursorBlueMoveSpeed TArray<float>
---@field CursorBlueAlphaSpeed TArray<float>
---@field AnimFinishTime float
---@field SelMsgInterval float
---@field MingMsgInterval float
---@field SoundPlusPosX float
---@field SoundPlusPosY float
---@field tex UTexture
---@field captureBackGround UFrameBufferCapture
---@field pLayoutDataTable UUILayoutDataTable
---@field pLayoutDataTableAstrea UUILayoutDataTable
local AUIBackLogDraw = {}

function AUIBackLogDraw:Update() end


---@class AUIBaseActor : AAppActor
local AUIBaseActor = {}


---@class AUIBattlePartyPanel : ABasePartyPanel
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pSprAstrea USprAsset
---@field m_UIParameter FGetUIParameter
---@field m_aHeadPanelList TArray<FBattleHeadPanel>
---@field m_uip FGetUIParameter
---@field m_curveDamageShake FCurveVectorAnimation
---@field m_curveIceYScale FCurveFloatAnimation
---@field m_curveIceAlpha FCurveFloatAnimation
---@field m_curveThunderWave FCurveFloatAnimation
---@field m_curveThunderWaveBone FCurveFloatAnimation
---@field m_curveThunderWaveCharaLight FCurveFloatAnimation
---@field m_curveThunderWaveIcons FCurveVectorAnimation
---@field m_curveOrgiaEffect FCurveVectorAnimation
---@field m_pSmokeMat UMaterialInterface
---@field m_pSmokeMatInst UMaterialInstanceDynamic
---@field m_pSmokeMatGrey UMaterialInterface
---@field m_pSmokeMatInstGrey UMaterialInstanceDynamic
---@field m_pRecoveryEffect UPartyPanelRecoveryEffect
local AUIBattlePartyPanel = {}



---@class AUICampPartyPanel : ABasePartyPanel
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pSprAstrea USprAsset
---@field m_aHeadPanelList TArray<FCampHeadPanel>
---@field m_curveInAnim FCurveVectorAnimation
local AUICampPartyPanel = {}



---@class AUIClearSaveActor : AAppActor
local AUIClearSaveActor = {}

function AUIClearSaveActor:CallStatePatternEndDelicate() end


---@class AUICloudCursorDraw : AUIBaseActor
local AUICloudCursorDraw = {}


---@class AUICmmRankUPAnimManager : AAppActor
---@field RippleTime float
---@field RippleInitScale float
---@field CardNumFront int32
---@field CardNumBack int32
---@field CardScaleFront float
---@field CardScaleBack float
---@field TimeBGFadeIn float
---@field TimeBGFadeOut float
---@field TimeStarMainInAnime float
---@field FrameStartInAnimeInterval float
---@field TimeWaitStarExpansion float
---@field TimeWaitStarVanish float
---@field TimeWaitStarWait float
---@field TimeStartWaitAnimeInterval float
---@field FrameCardFadeOut float
---@field ColorNormalBG3Up FColor
---@field ColorNormalBG3Middle FColor
---@field ColorNormalBG3Down FColor
---@field ColorNormalBG4 FColor
---@field ColorReverseBG3Up FColor
---@field ColorReverseBG3Middle FColor
---@field ColorReverseBG3Down FColor
---@field ColorReverseBG4 FColor
---@field TimeMaxFadeIn float
---@field TimeMaxWaitAfter float
---@field RippleBlur TArray<float>
---@field RippleWidth TArray<float>
---@field RationGradationUI float
---@field RationPosToOutGradationUI float
---@field RationReverseBG float
---@field ChangeRationReverseColorGradation float
---@field RotRationGradationReverse float
---@field AlphaRationBG12 float
---@field SpeedRationBackCards float
---@field MoveRatioBackBGCard float
---@field MoveRatioFrontBGCard float
---@field ChangeRationReverseColorBackCards float
---@field RotationAllBGCard float
---@field RotRatioArcanaCard float
---@field AlphaRatioArcanaCard float
---@field isVisibleArcanaCardShadow boolean
---@field isVisibleStars boolean
---@field RotateAllStars float
---@field AlphaAllStars float
---@field MoveXRankUpTitle float
---@field AlphaRankUpTitle float
---@field RatioLetter float
---@field AlphaRankupStrings float
---@field MoveRationRankupStrings float
---@field AlphaRankupMaxStrings float
---@field MoveRankupMaxStrings float
---@field IsChangeReverseSprCommuName boolean
---@field MoveXReverseString float
---@field AlphaReverseString float
---@field AlphaKeyhelp float
---@field ScaleKeyhelp float
---@field MoveAllKeyHelp float
---@field MoveMaskKeyHelp float
---@field IsStartKeyHelpIn boolean
---@field IsStartKeyHelpOut boolean
---@field AnimationContentGameOver int32
---@field AlphaEFGameOver float
---@field ScaleRationGameOver float
---@field WeaveSpeedGameOver float
---@field ScaleWidthGameOver float
---@field ScaleHightGameOver float
---@field TimeGameOver float
---@field AlphaNormalGameOver float
---@field MoveYGameOver float
---@field AlphaRipple1 float
---@field ScaleRipple1 float
---@field AlphaRipple2 float
---@field ScaleRipple2 float
---@field AlphaRipple3 float
---@field ScaleRipple3 float
---@field IsEndFinalRipple boolean
---@field AlphaCardEffect float
---@field StartPoemBG1In FUICmmRankUPAnimManagerStartPoemBG1In
---@field StartStartFrameAnime FUICmmRankUPAnimManagerStartStartFrameAnime
---@field StartStartMainAnime FUICmmRankUPAnimManagerStartStartMainAnime
---@field StartStartWaitAnime FUICmmRankUPAnimManagerStartStartWaitAnime
---@field StartShowStartReverse FUICmmRankUPAnimManagerStartShowStartReverse
---@field StartCardAnimePoemOut FUICmmRankUPAnimManagerStartCardAnimePoemOut
---@field StartCardAnimeReverse FUICmmRankUPAnimManagerStartCardAnimeReverse
---@field StartCardAnimeRecoveryIn FUICmmRankUPAnimManagerStartCardAnimeRecoveryIn
---@field StartCardAnimeRecoveryTurn FUICmmRankUPAnimManagerStartCardAnimeRecoveryTurn
---@field StartCardAnimeRecoveryOut FUICmmRankUPAnimManagerStartCardAnimeRecoveryOut
---@field StartRippleGameOver FUICmmRankUPAnimManagerStartRippleGameOver
local AUICmmRankUPAnimManager = {}

function AUICmmRankUPAnimManager:StartRipple3GameOverAnime() end
function AUICmmRankUPAnimManager:StartRipple2GameOverAnime() end
function AUICmmRankUPAnimManager:StartRipple1GameOverAnime() end
function AUICmmRankUPAnimManager:StartReverseRankInAnime() end
function AUICmmRankUPAnimManager:StartReverseOutAnime() end
function AUICmmRankUPAnimManager:StartReverseInAnime() end
function AUICmmRankUPAnimManager:StartRecoveryAnime() end
function AUICmmRankUPAnimManager:StartRankUpOutAnime() end
function AUICmmRankUPAnimManager:StartRankUpInAnime() end
function AUICmmRankUPAnimManager:StartKeyHelpWaitAnime() end
function AUICmmRankUPAnimManager:StartKeyHelpOutAnime() end
function AUICmmRankUPAnimManager:StartKeyHelpInAnime() end
function AUICmmRankUPAnimManager:StartGameOverOneContentAnime() end
function AUICmmRankUPAnimManager:StartGameOverAllAnime() end
function AUICmmRankUPAnimManager:StartCardInAnime() end
function AUICmmRankUPAnimManager:StartCardEffect() end
function AUICmmRankUPAnimManager:SkipContentAnime() end
---@param flag boolean
function AUICmmRankUPAnimManager:SetShowKeyHelp(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetPlayStarInAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetPlayBGCardOutAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndUIOutAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndUIInAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndReverseRankInAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndReverseOutAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndReverseInAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndRecoveryAnime(flag) end
---@param flag boolean
function AUICmmRankUPAnimManager:SetEndGameoverOneLine(flag) end
function AUICmmRankUPAnimManager:RestartGameover() end
---@param SEType EUICmmRankUpSE
function AUICmmRankUPAnimManager:PlaySE(SEType) end
function AUICmmRankUPAnimManager:PauseGameover() end
function AUICmmRankUPAnimManager:EndCardEffect() end


---@class AUICmmRankUpBG : AUIDrawBaseActor
---@field SrcColor EUIBlendFactor
---@field DstColor EUIBlendFactor
---@field SrcAlpha EUIBlendFactor
---@field DstAlpha EUIBlendFactor
---@field bCaptureBG boolean
---@field pBGMaterial UMaterialInstanceDynamic
---@field isAlreadySetBGMaterial boolean
---@field AnimManager AUICmmRankUPAnimManager
local AUICmmRankUpBG = {}

---@param inDeltaTime float
function AUICmmRankUpBG:Update(inDeltaTime) end
function AUICmmRankUpBG:UICmmDrawBG_Red() end
function AUICmmRankUpBG:UICmmDrawBG_5() end
---@param Color FColor
function AUICmmRankUpBG:UICmmDrawBG_4(Color) end
---@param Top FColor
---@param Bottom FColor
function AUICmmRankUpBG:UICmmDrawBG_3(Top, Bottom) end
---@param Top FColor
---@param Bottom FColor
function AUICmmRankUpBG:UICmmDrawBG_2(Top, Bottom) end
---@param Top FColor
---@param Bottom FColor
function AUICmmRankUpBG:UICmmDrawBG_1(Top, Bottom) end
---@return boolean
function AUICmmRankUpBG:UICmmBGCapture() end
function AUICmmRankUpBG:StartAnimePoemBG1In() end
---@param Material UMaterialInstance
function AUICmmRankUpBG:InitSettingMaterialBG(Material) end


---@class AUICmmRankUpDraw : AUIDrawBaseActor
---@field pSprAsset USprAsset
---@field pPlgAsset UPlgAsset
---@field CaptureTexture UFrameBufferCapture
---@field AnimManager AUICmmRankUPAnimManager
---@field pSprKeyHelp USprAsset
---@field pSprKeyHelpButton USprAsset
---@field pManager AUIRankUpDraw
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
---@field CmmRankUpLayoutDataTable UUILayoutDataTable
local AUICmmRankUpDraw = {}

---@param inDeltaTime float
function AUICmmRankUpDraw:Update(inDeltaTime) end
---@param X float
---@param Y float
function AUICmmRankUpDraw:UICmmReverseBG(X, Y) end
---@param BasePosX float
---@param BasePosY float
function AUICmmRankUpDraw:UICmmDrawRankStar(BasePosX, BasePosY) end
---@param X float
---@param Y float
function AUICmmRankUpDraw:UICmmDrawOkKey(X, Y) end
---@param X float
---@param Y float
function AUICmmRankUpDraw:UICmmDrawLetter(X, Y) end
---@param vLeftPos FVector2D
---@param vRightPos FVector2D
---@param hLeftPos FVector2D
---@param hRightPos FVector2D
function AUICmmRankUpDraw:UICmmDrawGradationBG(vLeftPos, vRightPos, hLeftPos, hRightPos) end
---@param X float
---@param Y float
function AUICmmRankUpDraw:UICmmDrawEndDraw(X, Y) end
---@param X float
---@param Y float
function AUICmmRankUpDraw:UICmmDrawCard(X, Y) end
function AUICmmRankUpDraw:StartStarWaitAnime() end
function AUICmmRankUpDraw:StartStarMainInAnime() end
function AUICmmRankUpDraw:StartStarFrameAnime() end
function AUICmmRankUpDraw:StartShowReverseStar() end
---@return boolean
function AUICmmRankUpDraw:isEndAnimStart() end


---@class AUICmpCalendar : AUIBaseActor
---@field DayCursor_ UCmpCldCursor
---@field Drawer_ UUICmpCalendarDraw
---@field CalendarBPClass TSubclassOf<AUICmpCalendar>
local AUICmpCalendar = {}



---@class AUICmpCommu : AUIBaseActor
---@field SceneFSM_ UUISceneFSM
---@field CommuListScene_ UCmpCommuList
---@field CommuDetailsScene_ UCmpCommuDetails
---@field pMainActor ACmpMainActor
---@field pParent UCmpCommu
---@field pModelController ACmpCommuModelController
local AUICmpCommu = {}



---@class AUICmpPersona : AAppActor
---@field SceneFSM_ UUISceneFSM
---@field PersonaList_ UCmpPersonaList
---@field PSStatusActor_ APersonaStatus
---@field pMainActor ACmpMainActor
---@field pParent UCmpPersona
local AUICmpPersona = {}



---@class AUICmpQuest : AUIBaseActor
---@field SceneFSM_ UUISceneFSM
---@field ElizRequestScene_ UQuestElizRequest
---@field DisappearListScene_ UQuestDisappearList
---@field pMainActor ACmpMainActor
local AUICmpQuest = {}



---@class AUIConfiguration : AUIBaseActor
---@field ConfigBGMSelect UConfigBGMSelectDialog
---@field ConfigBossBattleBGMSelect UConfigBGMSelectDialog
---@field ConfigDungeonBGMSelect UConfigDungeonBGMSelectDialog
---@field ConfigTable UDataTable
---@field ConfigTableEx UDataTable
---@field Loader UAssetLoader
---@field NetWaitDialog AUISystemMsgActor
---@field DrawActorSC TSubclassOf<AUIConfigurationDraw>
---@field DrawActor AUIConfigurationDraw
---@field pKeySpr USprAsset
---@field UiConfigurationUIP FGetUIParameter
---@field LayoutData UDataTable
---@field HelpLayoutData UDataTable
---@field pParamLayoutDataConfigText UDataTable
local AUIConfiguration = {}

function AUIConfiguration:OnDrawClosed() end
---@param inIsCancel boolean
function AUIConfiguration:OnDifficultCancel(inIsCancel) end
function AUIConfiguration:OnConfigInAnimFinished() end
---@param inIsCancel boolean
function AUIConfiguration:OnConfigCancel(inIsCancel) end
function AUIConfiguration:OnBgmSetAnimFinished() end
function AUIConfiguration:OnBGMInAnimFinished() end
---@return boolean
function AUIConfiguration:IsWindowDraw() end


---@class AUIConfigurationDraw : AUIDrawBaseActor
---@field ItemDrawOffset FVector2D
---@field bIsTerminationClose boolean
---@field BgmParams TArray<FDrawBGMParam>
---@field pKeySpr USprAsset
---@field ConfigInSilhouetteOffset FVector2D
---@field LayoutDataTable UUILayoutDataTable
---@field HelpLayoutDataTable UUILayoutDataTable
---@field ConfigTextLayoutDataTable UUILayoutDataTable
local AUIConfigurationDraw = {}

---@param inDeltaTime float
function AUIConfigurationDraw:UpdateInWipe(inDeltaTime) end
---@param inDeltaTime float
function AUIConfigurationDraw:UpdateCloseWipe(inDeltaTime) end
---@param DeltaTime float
function AUIConfigurationDraw:UpdateAnim(DeltaTime) end
---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function AUIConfigurationDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@param DeltaTime float
---@return boolean
function AUIConfigurationDraw:StateDraw_UpdateOnlyCursor(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AUIConfigurationDraw:StateDraw_Update(DeltaTime) end
---@return boolean
function AUIConfigurationDraw:StateDraw_Main() end
---@param inMenueID int32
---@param InListIndex int32
---@return boolean
function AUIConfigurationDraw:StateDraw_ListItem(inMenueID, InListIndex) end
---@return boolean
function AUIConfigurationDraw:StateDraw_IN() end
---@return boolean
function AUIConfigurationDraw:StateDraw_Close() end
---@return boolean
function AUIConfigurationDraw:StateDraw_BGMSelect() end
---@return boolean
function AUIConfigurationDraw:StateDraw_BG() end
---@return boolean
function AUIConfigurationDraw:StateBGMDraw_In() end
---@param IsTitle boolean
function AUIConfigurationDraw:StartInWipe(IsTitle) end
function AUIConfigurationDraw:StartCloseWipe() end
---@return boolean
function AUIConfigurationDraw:Start_ToConfAnim() end
---@return boolean
function AUIConfigurationDraw:Start_ToBGMAnim() end
---@return boolean
function AUIConfigurationDraw:Start_MenuChangeAnim() end
---@return boolean
function AUIConfigurationDraw:Start_InAnim() end
---@return boolean
function AUIConfigurationDraw:Start_CloseAnim() end
---@param drawParam FDrawConfigParam
---@param GaugeX float
---@param GaugeY float
---@param GaugeWidth float
---@param GaugeHeight float
---@param SliderX float
---@param SliderY float
function AUIConfigurationDraw:SetValueGaugeTouchCollision(drawParam, GaugeX, GaugeY, GaugeWidth, GaugeHeight, SliderX, SliderY) end
---@param Index int32
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param addLayer int32
---@param DrawPoint EUI_DRAW_POINT
function AUIConfigurationDraw:SetTouchCollision(Index, X, Y, Width, Height, addLayer, DrawPoint) end
---@param InMenuID int32
---@param InSliderPos FVector2D
function AUIConfigurationDraw:SetSliderPos(InMenuID, InSliderPos) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param addLayer int32
---@param DrawPoint EUI_DRAW_POINT
function AUIConfigurationDraw:SetScrollTouchCollision(X, Y, Width, Height, addLayer, DrawPoint) end
---@param InSize FVector2D
function AUIConfigurationDraw:SetScrollSize(InSize) end
---@param InPos FVector2D
---@param Height float
---@param ScrollRange float
---@param DrawListNum int32
---@param MaxListNum int32
---@param ScrollPosY int32
function AUIConfigurationDraw:SetScrollPos(InPos, Height, ScrollRange, DrawListNum, MaxListNum, ScrollPosY) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param DrawListNum int32
---@param MaxListNum int32
---@param ScrollPosY int32
---@param addLayer int32
---@param DrawPoint EUI_DRAW_POINT
function AUIConfigurationDraw:SetScrollBarTouchCollision(X, Y, Width, Height, ScrollRange, DrawListNum, MaxListNum, ScrollPosY, addLayer, DrawPoint) end
function AUIConfigurationDraw:ProcessCompleted__DelegateSignature() end
---@param inMenueID int32
---@param inFlag boolean
---@param inValue int32
---@return boolean
function AUIConfigurationDraw:On_ValueChanged(inMenueID, inFlag, inValue) end
---@param inPlayingIndex int32
---@return boolean
function AUIConfigurationDraw:On_PlayingIndexChanged(inPlayingIndex) end
---@param inCursorIndex int32
---@param inListTopIndex int32
---@return boolean
function AUIConfigurationDraw:On_CursorIndexChanged_BGM(inCursorIndex, inListTopIndex) end
---@param inCursorIndex int32
---@param inListTopIndex int32
---@return boolean
function AUIConfigurationDraw:On_CursorIndexChanged(inCursorIndex, inListTopIndex) end
---@param inSetIndex int32
---@return boolean
function AUIConfigurationDraw:On_BgmSetIndexChanged(inSetIndex) end
---@return boolean
function AUIConfigurationDraw:IsWindowShow() end
---@return boolean
function AUIConfigurationDraw:IsTitleOpend() end
---@return boolean
function AUIConfigurationDraw:IsScrollDrawBgmSelectText() end
---@return boolean
function AUIConfigurationDraw:IsKeyConfig() end
---@return boolean
function AUIConfigurationDraw:IsConfigTypeMode() end
---@return boolean
function AUIConfigurationDraw:IsBGMMode() end
---@return boolean
function AUIConfigurationDraw:IsBaseDiffLuna() end
---@param Key FString
---@return float
function AUIConfigurationDraw:GetUipParameter(Key) end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetSoundOutputText(InSelect) end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetSelLangText(InSelect) end
---@return int32
function AUIConfigurationDraw:GetPlayingIndex() end
---@return FString
function AUIConfigurationDraw:GetOnText() end
---@return FString
function AUIConfigurationDraw:GetOffText() end
---@return int32
function AUIConfigurationDraw:GetListTopIndex() end
---@return int32
function AUIConfigurationDraw:GetListNum() end
---@return boolean
function AUIConfigurationDraw:GetIsFisrt() end
---@param InIndex int32
---@return FDrawConfigParam
function AUIConfigurationDraw:GetIndexedDrawConfigParam(InIndex) end
---@return FColor
function AUIConfigurationDraw:GetGradation2TopColour() end
---@return FColor
function AUIConfigurationDraw:GetGradation2BottomColour() end
---@return FColor
function AUIConfigurationDraw:GetGradation1TopColour() end
---@return FColor
function AUIConfigurationDraw:GetGradation1BottomColour() end
---@param InMenuID int32
---@return FDrawConfigParam
function AUIConfigurationDraw:GetDrawConfigParam(InMenuID) end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetDifficultyText(InSelect) end
---@return int32
function AUIConfigurationDraw:GetCursorIndex() end
---@return int32
function AUIConfigurationDraw:GetCurrentIndex() end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetConfigTypeText(InSelect) end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetButtonLayoutText(InSelect) end
---@return FColor
function AUIConfigurationDraw:GetBlueBoardColor() end
---@param InSelect int32
---@return FString
function AUIConfigurationDraw:GetBGMText(InSelect) end
---@return int32
function AUIConfigurationDraw:GetBgmSetID() end
---@return int32
function AUIConfigurationDraw:GetBgmListTopIndex() end
---@return int32
function AUIConfigurationDraw:GetBgmCursorIndex() end
---@param InIsBGMMode boolean
---@param OutPosition FVector2D
---@return boolean
function AUIConfigurationDraw:GetAdjustedHelpRootPosition(InIsBGMMode, OutPosition) end
---@param InIsBGMMode boolean
---@param OutPosition FVector2D
---@return boolean
function AUIConfigurationDraw:GetAdjustedHelpBarOffset(InIsBGMMode, OutPosition) end
---@param InType ECmpLayoutConfigText
---@param OutSize FVector2D
function AUIConfigurationDraw:GetAdjustedConfigTextCol(InType, OutSize) end
---@param InType ECmpLayoutConfig
---@param Default FVector2D
---@param OutSize FVector2D
function AUIConfigurationDraw:GetAdjustedConfigPos(InType, Default, OutSize) end
---@return UMaterialInterface
function AUIConfigurationDraw:Get_BgMaterial() end
---@param inUimAsset UObject
---@param InFrame float
---@param bIsMaxFrame boolean
---@param inTexture UTexture
function AUIConfigurationDraw:DrawUim(inUimAsset, InFrame, bIsMaxFrame, inTexture) end
function AUIConfigurationDraw:DrawNami() end
---@param X float
---@param Y float
function AUIConfigurationDraw:DrawKeyConfigSwitcher(X, Y) end
---@param X float
---@param Y float
---@param DrawConfigParam FDrawConfigParam
---@param RGBA FColor
---@param SprHandle USprAsset
function AUIConfigurationDraw:DrawKeyConfigButtonSpr(X, Y, DrawConfigParam, RGBA, SprHandle) end
function AUIConfigurationDraw:DrawInWipe() end
---@param inTexture UTexture
function AUIConfigurationDraw:DrawHeroTexture(inTexture) end
---@param Offset FVector2D
function AUIConfigurationDraw:DrawHeroSilhouette(Offset) end
---@param Offset FVector2D
---@param Color FColor
---@param Scale float
---@param PlusOffset FVector2D
---@param SprHandle USprAsset
function AUIConfigurationDraw:DrawGlowCore(Offset, Color, Scale, PlusOffset, SprHandle) end
---@param IsTitle boolean
function AUIConfigurationDraw:DrawCommonBg2(IsTitle) end
function AUIConfigurationDraw:DrawCommonBg1() end
function AUIConfigurationDraw:DrawCloseWipe() end
---@param baseX float
---@param baseY float
---@param textX float
---@param textY float
---@param textColorR uint8
---@param textColorG uint8
---@param textColorB uint8
---@param textColorA uint8
---@param SizeX float
---@param SizeY float
---@param DrawConfigParam FDrawConfigParam
---@param DrawBGMParam FDrawBGMParam
---@param SprHandle USprAsset
function AUIConfigurationDraw:DrawBgmSelectText(baseX, baseY, textX, textY, textColorR, textColorG, textColorB, textColorA, SizeX, SizeY, DrawConfigParam, DrawBGMParam, SprHandle) end
---@param baseX float
---@param baseY float
---@param textX float
---@param textY float
---@param textColorR uint8
---@param textColorG uint8
---@param textColorB uint8
---@param textColorA uint8
---@param SizeX float
---@param SizeY float
---@param DrawConfigParam FDrawConfigParam
---@param SprHandle USprAsset
function AUIConfigurationDraw:DrawAudioDeviceChange(baseX, baseY, textX, textY, textColorR, textColorG, textColorB, textColorA, SizeX, SizeY, DrawConfigParam, SprHandle) end
---@param InFrame int32
---@return float
function AUIConfigurationDraw:ConvFrameToTime(InFrame) end
function AUIConfigurationDraw:ConfigInAnimFinished() end
function AUIConfigurationDraw:Closed() end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param SprNo int32
---@param ScaleX float
---@param ScaleY float
---@param PipodX float
---@param PipodY float
---@param Angle float
---@param SprHandle USprAsset
function AUIConfigurationDraw:BPUICommand_DrawSpr_Ex(X, Y, Z, R, G, B, A, SprNo, ScaleX, ScaleY, PipodX, PipodY, Angle, SprHandle) end
function AUIConfigurationDraw:BgmSetAnimFinished() end
---@param InTimer float
---@param InSrcValue float
---@param InDstValue float
---@param InWaitFrame int32
---@param InMoveFrame int32
---@param InAnimType appCalculationType
---@return float
function AUIConfigurationDraw:BGMScaleCalculation(InTimer, InSrcValue, InDstValue, InWaitFrame, InMoveFrame, InAnimType) end
---@param InTimer float
---@param InSrcValue FVector2D
---@param InDstValue FVector2D
---@param InWaitFrame int32
---@param InMoveFrame int32
---@param InAnimType appCalculationType
---@return FVector2D
function AUIConfigurationDraw:BGMMoveCalculation(InTimer, InSrcValue, InDstValue, InWaitFrame, InMoveFrame, InAnimType) end
function AUIConfigurationDraw:BGMInAnimFinished() end
---@param InTimer float
---@param InSrcValue float
---@param InDstValue float
---@param InWaitFrame int32
---@param InNextWaitFrame int32
---@param InMoveFrame int32
---@param InNextMoveFrame int32
---@param InAnimType appCalculationType
---@return float
function AUIConfigurationDraw:BGMAlphaCalculation(InTimer, InSrcValue, InDstValue, InWaitFrame, InNextWaitFrame, InMoveFrame, InNextMoveFrame, InAnimType) end


---@class AUIDataInheritanceActor : AAppActor
---@field SaveLoadUI AUILoadDialog
---@field Loader UAssetLoader
---@field DifficultySelection ADifficultySelectionActor
---@field DifficultySelectionSC TSubclassOf<ADifficultySelectionActor>
---@field AddContentCheck UAddContent
local AUIDataInheritanceActor = {}

function AUIDataInheritanceActor:OnSelectedChoise() end
function AUIDataInheritanceActor:CallStatePatternEndDelicate() end


---@class AUIDateDraw : AUIBaseActor
---@field m_pAgePanel UAgePanel
---@field m_pFieldSpr USprAsset
---@field m_pFieldSprAstrea USprAsset
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field LayoutDataAstrea UDataTable
---@field LayoutDataTableAstrea UUILayoutDataTable
local AUIDateDraw = {}



---@class AUIDayChange : AUIBaseActor
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pPlg UPlgAsset
---@field m_tagUip FGetUIParameter
---@field m_tagRipple FDayChangeRipple
---@field m_tagLoadRipple FDayChangeRipple
---@field m_curveInAnim FCurveFloatAnimation
---@field m_curveInRectMaskAnim FCurveFloatAnimation
---@field m_curveCenterBlueBandMaskAnim FCurveFloatAnimation
---@field m_curve1DaySpeedAnim FCurveFloatAnimation
---@field m_curveSkipSpeedAnim FCurveFloatAnimation
---@field m_curveSuperSkipSpeedAnim FCurveFloatAnimation
---@field m_curveCenterMoonAgeInOutAnim FCurveVectorAnimation
---@field m_curveBigMoonAgeInOutAnim FCurveVectorAnimation
---@field m_curveCommonMoveAnim FCurveFloatAnimation
---@field m_curveDaysGroupInAnim FCurveVectorAnimation
---@field m_curveDayInAnim FCurveVectorAnimation
---@field m_curveDayOutAnim FCurveVectorAnimation
---@field m_curveBlueBandAnim FCurveFloatAnimation
---@field m_curveSkipMoonAgeFadeAnim FCurveVectorAnimation
---@field m_pLayoutData UDataTable
---@field m_pLayoutDataParam UUILayoutDataTable
local AUIDayChange = {}



---@class AUIDebugDraw : AAppActor
---@field m_pMapLoader UAssetLoader
---@field m_pSprAsset USprAsset
---@field m_pMaterial UMaterial
---@field m_pTexture UTexture
---@field m_pMID UMaterialInstanceDynamic
---@field m_pPersonaStatus APersonaStatus
---@field m_pNotePlg UPlgAsset
---@field m_uip FGetUIParameter
---@field m_uipB FGetUIParameter
---@field m_uipC FGetUIParameter
---@field m_uipD FGetUIParameter
---@field m_curve FCurveFloatAnimation
---@field m_aTestDebugNishidaList TArray<FTestDebugNishida>
---@field m_pScrActor AScrActor
---@field m_pBfAsset UBfAsset
---@field m_pBmdAsset UBmdAsset
local AUIDebugDraw = {}

---@param ExitType int32
function AUIDebugDraw:OnFinishedScrDebug(ExitType) end


---@class AUIDebugReceiveVoiceAction : AUIVoiceBase
local AUIDebugReceiveVoiceAction = {}


---@class AUIDialogBase : AAppActor
---@field DialogMessage FString
local AUIDialogBase = {}



---@class AUIDialogDouble : AUIDialogBase
---@field FirstChoices FString
---@field SecondChoices FString
---@field pCmpMainActor ACmpMainActor
local AUIDialogDouble = {}



---@class AUIDialogSingle : AUIDialogBase
---@field FirstChoices FString
local AUIDialogSingle = {}



---@class AUIDictionary : AAppActor
---@field Loader UAssetLoader
---@field DataTableAsset UDataTable
---@field NameTableAsset UDataTable
---@field pMainActor ACmpMainActor
---@field pTutorialDraw AUITutorialDraw
---@field pTutorialDrawClass TSubclassOf<AUITutorialDraw>
local AUIDictionary = {}



---@class AUIDrawBaseActor : AAppActor
---@field pAssetLoader UAssetLoader
---@field ResourceDataAsset UUIDataAsset
---@field SyncEndEvent FUIDrawBaseActorSyncEndEvent
local AUIDrawBaseActor = {}

---@return boolean
function AUIDrawBaseActor:Sync() end
function AUIDrawBaseActor:LoadStart() end
---@param Index int32
---@return UObject
function AUIDrawBaseActor:GetResourceData(Index) end
---@param VX0 float
---@param VY0 float
---@param VX1 float
---@param VY1 float
---@param VX2 float
---@param VY2 float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
function AUIDrawBaseActor:BPUIDebugCommand_DrawTriangle(VX0, VY0, VX1, VY1, VX2, VY2, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing) end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param U0 float
---@param V0 float
---@param U1 float
---@param v1 float
---@param TextureHandle UTexture
function AUIDrawBaseActor:BPUIDebugCommand_DrawTexture(X, Y, Z, R, G, B, A, ScaleX, ScaleY, Angle, U0, V0, U1, v1, TextureHandle) end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param SprNo int32
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param SprHandle USprAsset
function AUIDrawBaseActor:BPUIDebugCommand_DrawSpr(X, Y, Z, R, G, B, A, SprNo, ScaleX, ScaleY, Angle, SprHandle) end
---@param X float
---@param Y float
---@param Z float
---@param VX0 float
---@param VY0 float
---@param VX1 float
---@param VY1 float
---@param VX2 float
---@param VY2 float
---@param VX3 float
---@param VY3 float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
function AUIDrawBaseActor:BPUIDebugCommand_DrawRectV4(X, Y, Z, VX0, VY0, VX1, VY1, VX2, VY2, VX3, VY3, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
function AUIDrawBaseActor:BPUIDebugCommand_DrawRect(X, Y, Z, Width, Height, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param Angle float
---@param pMaterialInstance UMaterialInstance
function AUIDrawBaseActor:BPUIDebugCommand_DrawMaterial(X, Y, Z, Width, Height, Angle, pMaterialInstance) end
---@param CanvasIndex int32
function AUIDrawBaseActor:BPUICommand_SetRenderTarget(CanvasIndex) end
---@param BlendType EUIOTPRESET_BLEND_TYPE
function AUIDrawBaseActor:BPUICommand_SetPresetBlendState(BlendType) end
---@param OpColor EUIBlendOperation
---@param SrcColor EUIBlendFactor
---@param DstColor EUIBlendFactor
---@param OpAlpha EUIBlendOperation
---@param SrcAlpha EUIBlendFactor
---@param DstAlpha EUIBlendFactor
function AUIDrawBaseActor:BPUICommand_SetBlendState(OpColor, SrcColor, DstColor, OpAlpha, SrcAlpha, DstAlpha) end
---@param X float
---@param Y float
---@param String FString
---@param Color FColor
---@param SizeX float
---@param SizeY float
---@param Scale float
---@param Angle float
---@param ScalingOnlyX boolean
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_ScalingItalicFontDraw(X, Y, String, Color, SizeX, SizeY, Scale, Angle, ScalingOnlyX, DrawPoint, Style) end
---@param X float
---@param Y float
---@param Z float
---@param String FString
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param SizeX float
---@param SizeY float
---@param Scale float
---@param Angle float
---@param ScalingOnlyX boolean
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
---@param IsScaling boolean
function AUIDrawBaseActor:BPUICommand_ScalingFontDraw(X, Y, Z, String, R, G, B, A, SizeX, SizeY, Scale, Angle, ScalingOnlyX, DrawPoint, Style, IsScaling) end
---@param X float
---@param Y float
---@param String FString
---@param Color FColor
---@param Scale float
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_ItalicFontDraw(X, Y, String, Color, Scale, Angle, DrawPoint, Style) end
---@param CanvasIndex int32
---@return UTextureRenderTarget2D
function AUIDrawBaseActor:BPUICommand_GetRenderTarget(CanvasIndex) end
---@param X float
---@param Y float
---@param Z float
---@param String FName
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Scale float
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_FontDrawFromFName(X, Y, Z, String, R, G, B, A, Scale, Angle, DrawPoint, Style) end
---@param X float
---@param Y float
---@param Z float
---@param String FName
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Scale float
---@param Angle float
---@param AnglePointX float
---@param AnglePointY float
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_FontDrawExFromFName(X, Y, Z, String, R, G, B, A, Scale, Angle, AnglePointX, AnglePointY, Style) end
---@param X float
---@param Y float
---@param Z float
---@param String FString
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Scale float
---@param Angle float
---@param AnglePointX float
---@param AnglePointY float
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_FontDrawEx(X, Y, Z, String, R, G, B, A, Scale, Angle, AnglePointX, AnglePointY, Style) end
---@param X float
---@param Y float
---@param Z float
---@param String FString
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Scale float
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
---@param Style EUIFontStyle
function AUIDrawBaseActor:BPUICommand_FontDraw(X, Y, Z, String, R, G, B, A, Scale, Angle, DrawPoint, Style) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param TopColor FColor
---@param BottomColor FColor
function AUIDrawBaseActor:BPUICommand_DrawVerticalGradationRect(X, Y, Width, Height, TopColor, BottomColor) end
---@param X float
---@param Y float
---@param Z float
---@param VX0 float
---@param VY0 float
---@param VX1 float
---@param VY1 float
---@param VX2 float
---@param VY2 float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
function AUIDrawBaseActor:BPUICommand_DrawTriangle(X, Y, Z, VX0, VY0, VX1, VY1, VX2, VY2, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing) end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param U0 float
---@param V0 float
---@param U1 float
---@param v1 float
---@param TextureHandle UTexture
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawTexture(X, Y, Z, R, G, B, A, ScaleX, ScaleY, Angle, U0, V0, U1, v1, TextureHandle, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param SprNo int32
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param SprHandle USprAsset
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawSpr(X, Y, Z, R, G, B, A, SprNo, ScaleX, ScaleY, Angle, SprHandle, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param Radius float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param Antialiasing float
function AUIDrawBaseActor:BPUICommand_DrawSircle(X, Y, Z, Radius, R, G, B, A, Antialiasing) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param ScrollRange float
---@param ScrollPos int32
---@param DrawListNum int32
---@param MaxListNum int32
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawScrollbar(X, Y, Z, Width, Height, ScrollRange, ScrollPos, DrawListNum, MaxListNum, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param Round int32
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawRoundRect(X, Y, Z, Width, Height, Round, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param VX0 float
---@param VY0 float
---@param VX1 float
---@param VY1 float
---@param VX2 float
---@param VY2 float
---@param VX3 float
---@param VY3 float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawRectV4(X, Y, Z, VX0, VY0, VX1, VY1, VX2, VY2, VX3, VY3, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param Antialiasing float
---@param DrawPoint EUI_DRAW_POINT
function AUIDrawBaseActor:BPUICommand_DrawRect(X, Y, Z, Width, Height, R, G, B, A, ScaleX, ScaleY, Angle, Antialiasing, DrawPoint) end
---@param X float
---@param Y float
---@param Z float
---@param R uint8
---@param G uint8
---@param B uint8
---@param A uint8
---@param PlgID int32
---@param ScaleX float
---@param ScaleY float
---@param Angle float
---@param PlgHandle UPlgAsset
function AUIDrawBaseActor:BPUICommand_DrawPlg(X, Y, Z, R, G, B, A, PlgID, ScaleX, ScaleY, Angle, PlgHandle) end
---@param X float
---@param Y float
---@param Z float
---@param Width float
---@param Height float
---@param Angle float
---@param pMaterial UObject
function AUIDrawBaseActor:BPUICommand_DrawMaterial(X, Y, Z, Width, Height, Angle, pMaterial) end
---@param Asset UObject
---@return USprAsset
function AUIDrawBaseActor:BPUICommand_CastSprAsset(Asset) end
---@param Asset UObject
---@return UPlgAsset
function AUIDrawBaseActor:BPUICommand_CastPlgAsset(Asset) end
---@param BlendType EUIBLEND_STATE_TYPE
function AUIDrawBaseActor:BPUICommand_AtlUIBlendState(BlendType) end
---@param SoftAsset TSoftObjectPtr<UObject>
function AUIDrawBaseActor:AddLoadAsset(SoftAsset) end


---@class AUIDungeonTransfer : AUIBaseActor
---@field Loader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pSpr_BG USprAsset
---@field m_pPlg UPlgAsset
---@field m_pTable UDataTable
---@field m_pLayoutData UDataTable
---@field m_Data UUIDungeonTransferData
---@field DataAsset TSubclassOf<UUIDungeonTransferData>
---@field LayoutDataTable UUILayoutDataTable
local AUIDungeonTransfer = {}



---@class AUIFieldPartyPanel : ABasePartyPanel
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pSprAstrea USprAsset
---@field m_aHeadPanelList TArray<FFieldHeadPanel>
---@field m_pRecoveryEffect UPartyPanelRecoveryEffect
local AUIFieldPartyPanel = {}



---@class AUIGameOverPoem : AUIDrawBaseActor
---@field poem FGameOverPoemContent
---@field ripple UMaterialInstanceDynamic
---@field openRipplesPos FVector2D
---@field openRipplesSize float
---@field pLoader UAssetLoader
---@field PoetryData_ UUIPoetryDataAsset
---@field pMaterial UMaterialInstance
---@field pRippleMat UMaterialInstance
---@field AnimManager AUICmmRankUPAnimManager
---@field pParamLayoutData UDataTable
---@field pLayoutDataTable UUILayoutDataTable
local AUIGameOverPoem = {}

function AUIGameOverPoem:StartRipple() end


---@class AUIGenericSelect : AUIBaseActor
---@field System_ UGenericSelectSystemBase
---@field pAssetLoader UAssetLoader
---@field pDrawClass TSubclassOf<AUIGenericSelectDraw>
---@field pDrawActor AUIGenericSelectDraw
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field LayoutDataAstreaGarden UDataTable
---@field LayoutDataTableAstreaGarden UUILayoutDataTable
local AUIGenericSelect = {}



---@class AUIGenericSelectDraw : AUIDrawBaseActor
---@field Edit_PointA FVector2D
---@field Edit_PointD FVector2D
---@field Edit_PointG FVector2D
---@field Edit_PointH FVector2D
---@field Edit_TitleLogo_LoopAnima_Offset_Min float
---@field Edit_TitleLogo_LoopAnima_Offset_Max float
---@field Edit_Character_LoopAnima_Offset_Min float
---@field Edit_Character_LoopAnima_Offset_Max float
---@field Edit_Cursor_AnimationFrame int32
---@field Edit_SubCursor_AnimationFrame int32
---@field Edit_InAnimation_1_1 int32
---@field Edit_InAnimation_1_1_2 int32
---@field Edit_InAnimation_1_3 int32
---@field Edit_InAnimation_1_3_CharacterMask_DelayFrame int32
---@field Edit_InAnimation_1_4_ListItem_InFrame int32
---@field Edit_InAnimation_1_4_ListItem_DelayFrame int32
---@field Edit_InAnimation_1_4_Cursor_InFrame int32
---@field Edit_InAnimation_1_4_Cursor_DelayFrame int32
---@field Edit_LoopAnima_Frame_Min int32
---@field Edit_LoopAnima_Frame_Max int32
---@field Edit_OutAnimation_3_1 int32
---@field Edit_CharacterChange_In_Frame int32
---@field Edit_CharacterChange_Out_Frame int32
---@field Edit_CharacterChange_Slide_Frame int32
---@field Edit_TitleLogo_MorninColor FColor
---@field Edit_TitleLogo_AfterschoolColor FColor
---@field Edit_TitleLogo_NightColor FColor
---@field Edit_ListAndCharacter_MorninColor FColor
---@field Edit_ListAndCharacter_AfterschoolColor FColor
---@field Edit_ListAndCharacter_NightColor FColor
---@field Edit_CharacterBackPlate_MorninColor FColor
---@field Edit_CharacterBackPlate_AfterschoolColor FColor
---@field Edit_CharacterBackPlate_NightColor FColor
---@field Edit_RafflesiyaSelectedListTitle_NightColor FColor
---@field Edit_RafflesiyaSelectedListMain_NightColor FColor
---@field pSprAsset USprAsset
---@field pPlgAsset UPlgAsset
---@field pCharacterDataAsset UGenericSelectCharacterDataAsset
---@field PSystem UGenericSelectSystemBase
---@field CharacterEnableList TArray<UUIGenericSelectCharacter>
---@field CharacterDisableList TArray<UUIGenericSelectCharacter>
---@field TagGetUIP FGetUIParameter
local AUIGenericSelectDraw = {}

---@param DeltaTime float
function AUIGenericSelectDraw:UpdateTimes(DeltaTime) end
function AUIGenericSelectDraw:DrawTitle() end
function AUIGenericSelectDraw:DrawMultiplyPlates() end
function AUIGenericSelectDraw:DrawList() end
function AUIGenericSelectDraw:DrawItemInfo() end
function AUIGenericSelectDraw:DrawCharacter() end


---@class AUIGetCommunityPointDraw : AUIBaseActor
---@field m_pSpr USprAsset
---@field m_pNotePlg UPlgAsset
---@field m_pRankUpEffect UNiagaraSystem
---@field m_pRankUpFinishEffect UNiagaraSystem
---@field m_pRankUpEffectComponent UNiagaraComponent
---@field m_pLoader UAssetLoader
---@field m_tagGetUIP FGetUIParameter
local AUIGetCommunityPointDraw = {}



---@class AUIGetHeroParameterDraw : AUIBaseActor
---@field m_pEffSpr USprAsset
---@field m_pNotePlg UPlgAsset
---@field m_pRankUpEffect UNiagaraSystem
---@field m_pRankUpFinishEffect UNiagaraSystem
---@field m_pRankUpEffectComponent UNiagaraComponent
---@field m_tagGetUIP FGetUIParameter
---@field m_tagNote FPointUpNote
---@field pHumanParamDraw_ UCmpHeroHumanStatusDraw
local AUIGetHeroParameterDraw = {}



---@class AUIHeroParameterStatus : AUIBaseActor
---@field m_pLoader UAssetLoader
---@field m_pHeroParamDrawActor AUIHeroParameterStatusDraw
---@field m_pHeroParamDrawActorSC TSubclassOf<AUIHeroParameterStatusDraw>
local AUIHeroParameterStatus = {}



---@class AUIHeroParameterStatusDraw : AUIDrawBaseActor
local AUIHeroParameterStatusDraw = {}


---@class AUIKeyHelpDraw : AUIBaseActor
local AUIKeyHelpDraw = {}


---@class AUILoadDialog : AUISaveLoad
local AUILoadDialog = {}


---@class AUIMailIconDraw : AUIBaseActor
---@field Sprite_ USprAsset
local AUIMailIconDraw = {}



---@class AUIMiscCheckDraw : AUIBaseActor
---@field m_pAlphaSpr USprAsset
---@field m_pKeySpr USprAsset
---@field m_pLoader UAssetLoader
---@field m_tagMaxColorWave FCurveLinearColorAnimation
---@field m_uip FGetUIParameter
---@field LayoutData UDataTable
---@field TextLayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field TextLayoutDataTable UUILayoutDataTable
local AUIMiscCheckDraw = {}



---@class AUIMiscCinemaScopeDraw : AUIBaseActor
---@field m_pSpr_Cinema USprAsset
---@field m_pPlg_Cinema UPlgAsset
---@field Loader_ UAssetLoader
local AUIMiscCinemaScopeDraw = {}



---@class AUIMiscEnemySymbolDraw : AUIBaseActor
---@field m_pSpr USprAsset
---@field m_pEnemyRef AActor
local AUIMiscEnemySymbolDraw = {}



---@class AUIMiscGetItemDraw : AUIBaseActor
---@field m_pGetItemSpr USprAsset
---@field m_pGetPlg UPlgAsset
---@field m_pItemGetDT UDataTable
---@field m_pSpecialKeyHelpSpr USprAsset
---@field m_pSpecialKeyHelpTextSpr USprAsset
---@field m_pLayoutTextColDT UDataTable
---@field m_pLayoutOkNextDT UDataTable
---@field m_pLayoutOkNextMaskDT UDataTable
---@field m_pLayoutTextCol UUILayoutDataTable
---@field m_pLayoutOkNext UUILayoutDataTable
---@field m_pLayoutOkNextMask UUILayoutDataTable
---@field m_ArcanaGetMsgAndTutorialParameter FGetUIParameter
local AUIMiscGetItemDraw = {}

function AUIMiscGetItemDraw:UpdateMajorArcanaTutorial() end
function AUIMiscGetItemDraw:UpdateMajorArcanaGetMessage() end


---@class AUIMiscMoneyDraw : AUIBaseActor
---@field m_pMoneySpr USprAsset
local AUIMiscMoneyDraw = {}



---@class AUIMiscPictureDraw : AUIBaseActor
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_pPicture UTexture
local AUIMiscPictureDraw = {}



---@class AUIMiscSupportPartyPanel : AUIBaseActor
---@field m_pSpr USprAsset
---@field m_pSupportPartyPanelDT UDataTable
local AUIMiscSupportPartyPanel = {}



---@class AUIMissingPersonActor : AUIBaseActor
local AUIMissingPersonActor = {}


---@class AUIMorphTestActor : AActor
---@field m_pUimMain UUimAsset
---@field mpUimSubAry UUimAsset
---@field m_pUimCross UUimAsset
---@field m_pUimColor UUimAsset
---@field m_pUimUV UUimAsset
---@field m_pUimPoly UUimAsset
---@field m_pUimUVCol UUimAsset
---@field m_TexMain UTexture
---@field m_TexSubAry UTexture
---@field m_TexMask UTexture
---@field m_pSpr USprAsset
---@field pMayaCamera ACameraActor
local AUIMorphTestActor = {}



---@class AUINameEntryDraw : AUIDrawBaseActor
---@field OnKeyEvent FUINameEntryDrawOnKeyEvent
---@field bIsStartInAnim boolean
---@field bIsFinishInAnim boolean
---@field bIsStartOutAnim boolean
---@field bIsFinishOutAnim boolean
---@field bIsKeyOutAnim boolean
---@field bReturnSceneOptionAnim boolean
---@field SprData USprAsset
---@field OffStartFrame int32
---@field InFirstStartFrame int32
---@field InSecondStartFrame int32
---@field InThirdStartFrame int32
---@field InFourthStartFrame int32
---@field InFirstEndFrame int32
---@field InSecondEndFrame int32
---@field InThirdEndFrame int32
---@field InFourthEndFrame int32
---@field OutFirstStartFrame int32
---@field OutSecondStartFrame int32
---@field OutFirstEndFrame int32
---@field OutSecondEndFrame int32
---@field pLayoutDataTable UUILayoutDataTable
local AUINameEntryDraw = {}

---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function AUINameEntryDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@return boolean
function AUINameEntryDraw:StateDraw_Out() end
---@return boolean
function AUINameEntryDraw:StateDraw_IN() end
---@return boolean
function AUINameEntryDraw:StateDraw_Frame() end
---@return boolean
function AUINameEntryDraw:StateDraw_BG() end
---@param InName1Pos FVector2D
---@param InName2Pos FVector2D
function AUINameEntryDraw:SetNameTouchCollision(InName1Pos, InName2Pos) end
---@param InDicitionPos FVector2D
---@param OptionScale FVector2D
---@param DicitionScale FVector2D
---@param DrawPoint EUI_DRAW_POINT
function AUINameEntryDraw:SetDicitionTouchCollision(InDicitionPos, OptionScale, DicitionScale, DrawPoint) end
---@return boolean
function AUINameEntryDraw:ResetDraw() end
function AUINameEntryDraw:PlaySENameEntry() end
function AUINameEntryDraw:OneTimeLockInput() end
---@return boolean
function AUINameEntryDraw:KeyHelpOut() end
---@return boolean
function AUINameEntryDraw:KeyHelpIn() end
---@return boolean
function AUINameEntryDraw:IsName2TypingOnKeyboard() end
---@return boolean
function AUINameEntryDraw:IsName2Entered() end
---@return boolean
function AUINameEntryDraw:IsName1TypingOnKeyboard() end
---@return boolean
function AUINameEntryDraw:IsName1Entered() end
---@return boolean
function AUINameEntryDraw:IsKeyHelpGray() end
---@return boolean
function AUINameEntryDraw:IsIsDeterminedByCross() end
---@return boolean
function AUINameEntryDraw:IsEnableOption() end
---@return boolean
function AUINameEntryDraw:IsCursorPreName2Use() end
---@return boolean
function AUINameEntryDraw:IsCursorPreName1Use() end
---@return boolean
function AUINameEntryDraw:IsCursorName2Use() end
---@return boolean
function AUINameEntryDraw:IsCursorName1Use() end
---@return boolean
function AUINameEntryDraw:IsAllNameEntered() end
---@return boolean
function AUINameEntryDraw:InitDraw_Out() end
---@return boolean
function AUINameEntryDraw:InitDraw_IN() end
---@param InLayoutId EUINameEntryLayout
---@param InDefaultScale FVector2D
---@return FVector2D
function AUINameEntryDraw:GetAdjustedLayoutScale(InLayoutId, InDefaultScale) end
---@param InLayoutId EUINameEntryLayout
---@param InDefaultPos FVector2D
---@return FVector2D
function AUINameEntryDraw:GetAdjustedLayoutPosition(InLayoutId, InDefaultPos) end
---@param InPos FVector2D
---@param InColor FColor
function AUINameEntryDraw:DrawTranslation(InPos, InColor) end
---@param InPos FVector2D
---@param InColor FColor
---@param Scale FVector2D
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
function AUINameEntryDraw:DrawOptionsBase(InPos, InColor, Scale, Angle, DrawPoint) end
---@param InPos FVector2D
---@param InColor FColor
---@param Scale FVector2D
---@param Angle float
---@param DrawPoint EUI_DRAW_POINT
function AUINameEntryDraw:DrawOptions(InPos, InColor, Scale, Angle, DrawPoint) end
---@param InPos FVector2D
---@param InColor FColor
---@param InColorDown FColor
---@param InColorUp FColor
function AUINameEntryDraw:DrawName2Text(InPos, InColor, InColorDown, InColorUp) end
---@param InPos FVector2D
---@param InColor FColor
---@param InColorDown FColor
---@param InColorUp FColor
function AUINameEntryDraw:DrawName1Text(InPos, InColor, InColorDown, InColorUp) end
---@param InPos FVector2D
---@param InColor FColor
function AUINameEntryDraw:DrawGradationScreen(InPos, InColor) end
---@param InPos FVector2D
---@param InColor FColor
function AUINameEntryDraw:DrawCursor1(InPos, InColor) end
---@param InPos FVector2D
---@param InColor FColor
function AUINameEntryDraw:DrawBlueLight(InPos, InColor) end
---@param InFrame int32
---@return float
function AUINameEntryDraw:ConvFrameToTime(InFrame) end


---@class AUIPartyPanel : AUIBaseActor
---@field m_pPartyPanelSpr USprAsset
---@field m_pPartyPanelSprAstrea USprAsset
local AUIPartyPanel = {}



---@class AUIPersonaModelActor : APawn
local AUIPersonaModelActor = {}

---@return USkeletalMeshComponent
function AUIPersonaModelActor:GetSkeletalMesh() end


---@class AUIPoetryActor : AAppActor
---@field PoetryData_ UUIPoetryDataAsset
---@field PoetryRippleData_ UUIPoetryRippleDataAsset
---@field AnimManager AUICmmRankUPAnimManager
---@field pAssetLoader UAssetLoader
---@field UIPoetryDrawClass TSubclassOf<AUIPoetryDraw>
---@field pUIPoetryDraw AUIPoetryDraw
local AUIPoetryActor = {}



---@class AUIPoetryDraw : AUIDrawBaseActor
---@field ArcanaID uint32
---@field ModeID uint32
---@field Data_ UUIPoetryDataAsset
---@field RippleData_ UUIPoetryRippleDataAsset
---@field m_BlurTexPath FString
---@field m_pEfTexPath FString
---@field m_pNormalTexPath FString
---@field m_pBlurTex UTexture
---@field m_pEfTex UTexture
---@field m_pNormalTex UTexture
---@field m_ArcanaTex UTexture
---@field m_ArcanaTexBlur UTexture
---@field m_ArcanaTexEf UTexture
---@field pMaterial UMaterialInstance
---@field pRippleMat UMaterialInstance
---@field pMat_Line1 UMaterialInstanceDynamic
---@field pMat_Line2 UMaterialInstanceDynamic
---@field pMat_Line3 UMaterialInstanceDynamic
---@field pMat_Line4 UMaterialInstanceDynamic
---@field pMat_Line5 UMaterialInstanceDynamic
---@field pMat_Ripples UMaterialInstanceDynamic
---@field EfBaseAlpha float
---@field LineStartTime_1 float
---@field LineStartTime_2 float
---@field LineStartTime_3 float
---@field LineStartTime_4 float
---@field LineStartTime_5 float
---@field OkKeyPushStartTimeMax float
---@field OkKeyPushEndTimeMax float
---@field OkKeyFadeOutAnimTime float
---@field OkKeyFadeOutMovePos float
---@field CrvFadeWidthAnim FCurveFloatAnimation
---@field CrvFadeHeightAnim FCurveFloatAnimation
---@field CrvFadeLineAnim FCurveFloatAnimation
---@field CrvFadeLineEfAnim FCurveFloatAnimation
---@field CrvFadeRippleAlpha FCurveFloatAnimation
---@field CrvFadeRippleScale FCurveFloatAnimation
---@field AnimManager AUICmmRankUPAnimManager
---@field PoetyLayoutData UDataTable
---@field PoetyLayoutDataTable UUILayoutDataTable
---@field RippleLayoutData UDataTable
---@field RippleLayoutDataTable UUILayoutDataTable
---@field RippleTimeData UDataTable
---@field RippleTimeDataTable UUILayoutDataTable
---@field OkNextLayoutData UDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutData UDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
local AUIPoetryDraw = {}

---@param inDeltaTime float
function AUIPoetryDraw:Update(inDeltaTime) end
---@return boolean
function AUIPoetryDraw:UIPoetryIsRankMaxPoetry() end
---@param EfBaseAlpha_ float
function AUIPoetryDraw:UIPoetryGetParam(EfBaseAlpha_) end
---@param DeltaTime float
---@param Ripple1 float
---@param Ripple2 float
---@param Ripple3 float
---@param Ripple4 float
---@param Ripple5 float
function AUIPoetryDraw:UIPoetryDrawRippleOpen(DeltaTime, Ripple1, Ripple2, Ripple3, Ripple4, Ripple5) end
---@param DeltaTime float
---@param Ripple1 float
---@param Ripple2 float
---@param Ripple3 float
---@param Ripple4 float
---@param Ripple5 float
---@param Ripple6 float
---@param Ripple7 float
---@param Ripple8 float
function AUIPoetryDraw:UIPoetryDrawRippleMax(DeltaTime, Ripple1, Ripple2, Ripple3, Ripple4, Ripple5, Ripple6, Ripple7, Ripple8) end
function AUIPoetryDraw:UIPoetryDrawOkKey() end
function AUIPoetryDraw:UIPoetryDrawMaxLine3() end
function AUIPoetryDraw:UIPoetryDrawMaxLine2() end
function AUIPoetryDraw:UIPoetryDrawMaxLine1() end
function AUIPoetryDraw:UIPoetryDrawLine2() end
function AUIPoetryDraw:UIPoetryDrawLine1() end
function AUIPoetryDraw:UIPoetryDrawAllPoetry() end
function AUIPoetryDraw:UIPoetryCreateMaterial() end
---@param InLayoutId EUIRippleTimeLayout
---@param InDefaultTiming float
---@return float
function AUIPoetryDraw:GetAdjustedLayoutRippleTiming(InLayoutId, InDefaultTiming) end


---@class AUIPreviewWorldUpdater : AActor
---@field PreviewWorld TSoftObjectPtr<UWorld>
local AUIPreviewWorldUpdater = {}

---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param OutActors TArray<AActor>
function AUIPreviewWorldUpdater:GetAllActorsOfClass(WorldContextObject, ActorClass, OutActors) end


---@class AUIProgressBarDraw : AUIDrawBaseActor
---@field pSprAsset USprAsset
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
local AUIProgressBarDraw = {}



---@class AUIRankUpDraw : AUIBaseActor
---@field PoetryActor AUIPoetryActor
---@field UIACCaptureActor AUIArcanaCardCapture
---@field UIGameOverPoem AUIGameOverPoem
---@field pAssetLoader UAssetLoader
---@field UIBGActorClass TSubclassOf<AUICmmRankUpBG>
---@field pUIBGActor AUICmmRankUpBG
---@field UICmmRankUpDrawClass TSubclassOf<AUICmmRankUpDraw>
---@field pUICmmRankUpDraw AUICmmRankUpDraw
---@field RankUpAnimManagerClass TSubclassOf<AUICmmRankUPAnimManager>
---@field pRankUpAnimManager AUICmmRankUPAnimManager
---@field pMaterialBGGameover UMaterialInstance
---@field OkNextLayoutData UDataTable
---@field OkNextMaskLayoutData UDataTable
---@field CmmRankUpLayoutData UDataTable
local AUIRankUpDraw = {}



---@class AUIRestore : AAppActor
---@field SaveLoadLayoutDataTable UUILayoutDataTable
---@field SaveLoadLayoutDataTable2 UUILayoutDataTable
---@field SaveLoadDateLayoutDataTable UUILayoutDataTable
---@field pParamLayoutData UDataTable
---@field pParamLayoutData2 UDataTable
---@field pParamDateLayoutData UDataTable
---@field Loader UAssetLoader
---@field DrawActorSC TSubclassOf<ASaveLoadDraw>
---@field DrawActor ASaveLoadDraw
---@field AddContentCheck UAddContent
local AUIRestore = {}

function AUIRestore:OnFinishedInAnim() end
function AUIRestore:OnFinishedCloseAnim() end


---@class AUISaveDialog : AUISaveLoad
local AUISaveDialog = {}


---@class AUISaveLoad : AAppActor
---@field AddContentCheck UAddContent
---@field Loader UAssetLoader
---@field SaveLoadLayoutDataTable UUILayoutDataTable
---@field SaveLoadLayoutDataTableAstrea UUILayoutDataTable
---@field SaveLoadLayoutDataTable2 UUILayoutDataTable
---@field SaveLoadDateLayoutDataTable UUILayoutDataTable
---@field SaveLoadTimeZoneLayoutDataTableAstrea UUILayoutDataTable
---@field pParamLayoutData UDataTable
---@field pParamLayoutDataAstrea UDataTable
---@field pParamLayoutData2 UDataTable
---@field pParamDateLayoutData UDataTable
---@field pParamTimeZoneLayoutDataAstrea UDataTable
---@field NetworkConnectionDialog AUISystemMsgActor
---@field SaveManagerInst UXrd777SaveManager
---@field DrawActorSC TSubclassOf<ASaveLoadDraw>
---@field DrawActor ASaveLoadDraw
local AUISaveLoad = {}

function AUISaveLoad:OnFinishedInAnim() end
function AUISaveLoad:OnFinishedCloseAnim() end


---@class AUISceneCapture : ASceneCapture2D
local AUISceneCapture = {}

function AUISceneCapture:LoopAnimationStart() end
function AUISceneCapture:InAnimationStart() end


---@class AUISystemMsgActor : AAppActor
local AUISystemMsgActor = {}


---@class AUITest1Actor : AActor
---@field m_pMenuTexture UTexture
---@field m_pIconSpr USprAsset
---@field m_pPostMaterial UMaterial
---@field m_pRenderTarget1 UTextureRenderTarget2D
---@field m_loadMaterial UMaterial
---@field m_loadMaterialInstanceDynamic UMaterialInstanceDynamic
---@field m_loadTex UTexture
---@field m_pCurveFloat UCurveFloat
---@field m_tagCurveFloatAnimation FCurveFloatAnimation
---@field m_tagCurveVectorAnimation FCurveVectorAnimation
---@field m_tagCurveColorAnimation FCurveLinearColorAnimation
---@field m_pTestNishidaTableData UTestNishidaDataAsset
---@field m_tagGetUIP FGetUIParameter
local AUITest1Actor = {}



---@class AUITestSpawnActor : AAppActor
local AUITestSpawnActor = {}

function AUITestSpawnActor:VelvetRoomUpdate() end
---@param DeltaTime float
function AUITestSpawnActor:Update(DeltaTime) end
function AUITestSpawnActor:SpawnVelvetRoom() end
function AUITestSpawnActor:SpawnTownMap() end
function AUITestSpawnActor:SpawnMoney() end
function AUITestSpawnActor:SpawnDungeon() end
function AUITestSpawnActor:SpawnCommunity() end
function AUITestSpawnActor:SpawnBattle() end
function AUITestSpawnActor:SpawnAlwayField() end
function AUITestSpawnActor:MoneyUpdate() end
function AUITestSpawnActor:DungeonUpdate() end
function AUITestSpawnActor:CommunityUpdate() end
---@param DeltaTime float
function AUITestSpawnActor:AlwayFieldUpdate(DeltaTime) end


---@class AUITimeChange : AUIBaseActor
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_curveRotateAnim1 FCurveVectorAnimation
---@field m_curveRotateAnim2 FCurveVectorAnimation
---@field m_curveRotateAnim3 FCurveVectorAnimation
---@field m_curveRotateAnim4 FCurveVectorAnimation
---@field m_curveRotateAnim5 FCurveVectorAnimation
---@field m_curveOutAnim FCurveVectorAnimation
---@field m_uip FGetUIParameter
---@field m_pTimeChangeUIDT UDataTable
---@field m_pTimeChangeDataTable UDataTable
---@field m_pTimeChangeLayoutDataTable UUILayoutDataTable
---@field m_pTimeChangeMaskDataTable UDataTable
---@field m_pTimeChangeMaskLayoutDataTable UUILayoutDataTable
local AUITimeChange = {}



---@class AUITownMapActor : AUIBaseActor
---@field m_pTownMapDT UDataTable
---@field m_pTownMapSpr USprAsset
---@field m_pMiniMapIcon00Spr USprAsset
---@field m_pMiniMapIcon01Spr USprAsset
---@field m_pLoader UAssetLoader
---@field m_tagUip FGetUIParameter
---@field m_curveHeadInAnim FCurveVectorAnimation
---@field m_curveBlueDiamondAnim FCurveVectorAnimation
---@field m_curveWhiteDiamondAnim FCurveVectorAnimation
---@field m_curveInfoInAnim FCurveVectorAnimation
---@field m_curveIconAnim FCurveVectorAnimation
---@field m_pLocationSelect UUILocationSelect
---@field m_pSymbolRefList AFldAnimObj
---@field m_pSymbolSkinnedRefList USkinnedMeshComponent
---@field m_pFieldCamera AActor
---@field m_pMainCamera AActor
---@field m_pStartCamera AActor
---@field m_pInfoCamera AActor
---@field m_pNameLocator AActor
---@field m_pTownMapDetailText UBmdAsset
---@field MarginRot FVector
---@field m_notSelectedLayoutDataTables UUILayoutDataTable
---@field m_selectedLayoutDataTables UUILayoutDataTable
---@field m_infoLayoutDataTable UUILayoutDataTable
---@field m_infoLayoutDataTable2 UUILayoutDataTable
---@field m_notSelectedParamLayouts UDataTable
---@field m_selectedParamLayouts UDataTable
---@field m_infoParamLayout UDataTable
---@field m_infoParamLayout2 UDataTable
local AUITownMapActor = {}



---@class AUITownMapCameraActor : AAppActor
---@field MainCamera_ AActor
---@field SchoolCamera_ AActor
---@field DormitoryCamera_ AActor
---@field PortislandCamera_ AActor
---@field PolonianmallCamera_ AActor
---@field IwatodayCamera_ AActor
---@field NaganakiCamera_ AActor
---@field SchoolActor_ AActor
---@field DormitoryActor_ AActor
---@field PortislandActor_ AActor
---@field PolonianmallActor_ AActor
---@field IwatodayActor_ AActor
---@field NaganakiActor_ AActor
---@field StartCamera_ AActor
local AUITownMapCameraActor = {}

---@param MainCamera AActor
---@param SchoolCamera AActor
---@param DormitoryCamera AActor
---@param PortislandCamera AActor
---@param PolonianmallCamera AActor
---@param IwatodayCamera AActor
---@param NaganakiCamera AActor
---@param SchoolActor AActor
---@param DormitoryActor AActor
---@param PortislandActor AActor
---@param PolonianmallActor AActor
---@param IwatodayActor AActor
---@param NaganakiActor AActor
---@param StartCamera AActor
function AUITownMapCameraActor:Initialize(MainCamera, SchoolCamera, DormitoryCamera, PortislandCamera, PolonianmallCamera, IwatodayCamera, NaganakiCamera, SchoolActor, DormitoryActor, PortislandActor, PolonianmallActor, IwatodayActor, NaganakiActor, StartCamera) end


---@class AUITutorial : AAppActor
---@field Loader UAssetLoader
---@field BattleDataTableAsset UDataTable
---@field BattleNameTableAsset UDataTable
---@field DungeonDataTableAsset UDataTable
---@field DungeonNameTableAsset UDataTable
---@field DailyDataTableAsset UDataTable
---@field DailyNameTableAsset UDataTable
---@field CombineDataTableAsset UDataTable
---@field CombineNameTableAsset UDataTable
---@field SystemDataTableAsset UDataTable
---@field SystemNameTableAsset UDataTable
---@field pMainActor ACmpMainActor
---@field pTutorialDraw AUITutorialDraw
---@field pTutorialDrawClass TSubclassOf<AUITutorialDraw>
local AUITutorial = {}



---@class AUITutorialDraw : AUIDrawBaseActor
---@field pBackgroundMaterialDynamicInstance UMaterialInstanceDynamic
---@field pBmdAsset UBmdAsset
---@field Edit_Title_Logo_Slide_In_Delay int32
---@field Edit_Title_Logo_Slide_In_Frame int32
---@field Edit_Navy_Blue_Plate_Slide_In_Delay int32
---@field Edit_Navy_Blue_Plate_Slide_In_Frame int32
---@field Edit_Gradation_Slide_In_Delay int32
---@field Edit_Gradation_Slide_In_Frame int32
---@field Edit_White_Plate_Slide_In_Delay int32
---@field Edit_White_Plate_Slide_In_Frame int32
---@field Edit_Tab_Slide_In_Delay int32
---@field Edit_Tab_Slide_In_Frame int32
---@field Edit_Tab_Fade_In_Delay int32
---@field Edit_Tab_Fade_In_Frame int32
---@field Edit_List_Slide_In_Delay int32
---@field Edit_List_Slide_In_Frame int32
---@field Edit_List_Fade_In_Delay int32
---@field Edit_List_Fade_In_Frame int32
---@field Edit_List_Sub_Cursor_Slide_In_Delay int32
---@field Edit_List_Sub_Cursor_Slide_In_Frame int32
---@field Edit_List_Change_Fade_Out_Delay int32
---@field Edit_List_Change_Fade_Out_Frame int32
---@field Edit_List_Change_Fade_In_Delay int32
---@field Edit_List_Change_Fade_In_Frame int32
---@field Edit_List_Change_Slide_In_Delay int32
---@field Edit_List_Change_Slide_In_Frame int32
---@field Edit_Gradation_Change_Slide_In_Delay int32
---@field Edit_Gradation_Change_Slide_In_Frame int32
---@field Edit_Gradation_Change_Cross_Fade_Delay int32
---@field Edit_Gradation_Change_Cross_Fade_Frame int32
---@field Edit_Tab_Cursor_Frame int32
---@field Edit_List_Cursor_Frame int32
---@field Edit_List_Sub_Cursor_Frame int32
---@field Edit_Gray_Out_Frame int32
---@field pMainActor ACmpMainActor
local AUITutorialDraw = {}

---@param X float
---@param Y float
---@param Angle float
function AUITutorialDraw:DrawList(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function AUITutorialDraw:DrawHelp(X, Y, Angle) end
function AUITutorialDraw:DrawCloseWipe() end
---@param X float
---@param Y float
---@param Angle float
function AUITutorialDraw:DrawCategorys(X, Y, Angle) end
---@param X float
---@param Y float
---@param Angle float
function AUITutorialDraw:DrawBackground(X, Y, Angle) end


---@class AUIVelvetRoom : AUIBaseActor
---@field m_pUICombine UUICombine
---@field m_pUICompleteBook UUICompleteBook
---@field m_pUICompleteBookRegist UUICompleteBookRegist
---@field m_pOwner UUIVelvetRoomOwner
local AUIVelvetRoom = {}

function AUIVelvetRoom:StreamLevelCountDecrement() end


---@class AUIVelvetRoomDraw : AUIDrawBaseActor
---@field Edit_Panel_InAnimation_Frame int32
---@field Edit_Panel_OutAnimation_Frame int32
---@field Edit_Panel_Loop_Wait_Time float
---@field Edit_Panel_Loop_Fade_In_Time float
---@field Edit_Panel_Loop_Fade_Out_Time float
---@field Edit_Cursor_InAnimation_Frame int32
---@field Edit_Dollar_Icon_Animation_Time float
---@field Edit_Equipe_Icon_Animation_Time float
---@field Edit_Equipe_Icon_Wait_Time float
---@field Edit_Equipe_Icon_FadeOut_Frame int32
---@field Edit_HelpMessage_Line_Height float
---@field Edit_Sort_Tab_Animation_Frame int32
---@field Scene EUIVelvetRoomDrawScene
---@field AstreaResourceDataAsset UUIDataAsset
---@field pPanel AUIVelvetRoomPanel
---@field pCamera ACameraActor
---@field pPersonaStatus APersonaStatus
---@field Edit_PanelNoneColorRate int32
---@field Edit_InAnimationFrame_Lattice int32
---@field Edit_Hero_FadeOut_Frame int32
---@field Edit_HelpMessageInAnimationFrame int32
---@field Edit_HelpMessageOutAnimationFrame int32
---@field Edit_HelpMessageChangeAnimationFrame int32
---@field Edit_CardOffsetPosition FVector
---@field Edit_CardOffsetRotation FVector
---@field Edit_CardSadowOffsetPosition FVector
---@field Edit_CardSadowOffsetRotation FVector
---@field Edit_CardSadowScale float
---@field Edit_BlackScreenLow_FadeIn_Frame int32
---@field Edit_BlackScreenLow_FadeIn_Delay int32
---@field Edit_BlackScreenMiddle_FadeIn_Frame int32
---@field Edit_BlackScreenMiddle_FadeIn_Delay int32
---@field Edit_BlackScreenHigh_FadeIn_Frame int32
---@field Edit_BlackScreenHigh_FadeIn_Delay int32
---@field Edit_VelvetRoomTop_FadeOut_Frame int32
---@field Edit_VelvetRoomTop_CardIn_Delay int32
---@field Edit_VelvetRoomTop_KeyHelpIn_Delay int32
---@field Edit_VelvetRoomTop_Capture_OffsetUV FVector2D
---@field Edit_VelvetRoomTop_Hero_Wave1_Fade_Delay int32
---@field Edit_VelvetRoomTop_Hero_Wave1_Fade_Frame int32
---@field Edit_VelvetRoomTop_Hero_Wave2_Fade_Delay int32
---@field Edit_VelvetRoomTop_Hero_Wave2_Fade_Frame int32
---@field OnCardSelectEvent FUIVelvetRoomDrawOnCardSelectEvent
---@field OnUniqeMotionEvent FUIVelvetRoomDrawOnUniqeMotionEvent
---@field OnTopInAnimationEvent FUIVelvetRoomDrawOnTopInAnimationEvent
---@field OnTopOutAnimationEvent FUIVelvetRoomDrawOnTopOutAnimationEvent
---@field CombineType int32
---@field IsHeroPlayMotion boolean
---@field pHeroWaveMaterial1 UMaterialInstance
---@field pHeroWaveMaterial2 UMaterialInstance
---@field pHeroWaveDynamicMaterial1 UMaterialInstanceDynamic
---@field pHeroWaveDynamicMaterial2 UMaterialInstanceDynamic
---@field pCard UUIVelvetRoomUimCard
---@field pMca UUIVelvetRoomMca
---@field Edit_2Combine_InAnimation_Frame int32
---@field Edit_2Combine_Igor_InAnimation_Frame int32
---@field Edit_2Combine_Heading_InAnimation_Frame int32
---@field Edit_2Combine_List_SelectedAnimation_Frame int32
---@field Edit_2Combine_List_Cursor_Animation_Frame int32
---@field Edit_2Combine_1Icon_Animation_Frame int32
---@field Edit_2Combine_Igor_Selected_Animation_Frame int32
---@field Edit_2Combine_Capture_OffsetUV FVector2D
---@field Edit_SearchCombine_Heading_InAnimation_Frame int32
---@field Edit_SearchCombine_Igor_Panel_InAnimation_Frame int32
---@field Edit_SearchCombine_Sort_Panel_InAnimation_Frame int32
---@field Edit_SearchCombine_Name_Panel_InAnimation_Frame int32
---@field Edit_SearchCombine_Help_Message_InAnimation_Frame int32
---@field Edit_SearchCombine_List_InAnimation_Frame int32
---@field Edit_SearchCombine_Capture_OffsetUV FVector2D
---@field Edit_SearchCombine_List_Fade_Out_Delay int32
---@field Edit_SearchCombine_List_Fade_Out_Frame int32
---@field Edit_SearchCombine_List_Fade_In_Delay int32
---@field Edit_SearchCombine_List_Fade_In_Frame int32
---@field Edit_SearchCombine_List_Slide_In_Delay int32
---@field Edit_SearchCombine_List_Slide_In_Frame int32
---@field Edit_SpecialCombine_Heading_InAnimation_Frame int32
---@field Edit_SpecialCombine_Igor_Panel_InAnimation_Frame int32
---@field Edit_SpecialCombine_Name_Panel_InAnimation_Frame int32
---@field Edit_SpecialCombine_Help_Message_InAnimation_Frame int32
---@field Edit_SpecialCombine_List_InAnimation_Frame int32
---@field Edit_SpecialCombine_Capture_OffsetUV FVector2D
---@field Edit_Drawer_Heading_InAnimation_Frame int32
---@field Edit_Drawer_Elizabeth_Panel_InAnimation_Frame int32
---@field Edit_Drawer_Name_Panel_InAnimation_Frame int32
---@field Edit_Drawer_Money_InAnimation_Delay int32
---@field Edit_Drawer_Money_InAnimation_Frame int32
---@field Edit_Drawer_Money_OutAnimation_Delay int32
---@field Edit_Drawer_Money_OutAnimation_Frame int32
---@field Edit_Drawer_Help_Message_InAnimation_Frame int32
---@field Edit_Drawer_List_InAnimation_Frame int32
---@field Edit_Drawer_Sort_Panel_InAnimation_Frame int32
---@field Edit_Drawer_List_Switch_Angle_Animation_Frame int32
---@field Edit_Drawer_List_LockIcon_FadeIn_Delay int32
---@field Edit_Drawer_List_LockIcon_FadeIn_Frame int32
---@field Edit_Drawer_List_LockIcon_Animation_Delay int32
---@field Edit_Drawer_List_LockIcon_Animation_Frame1 int32
---@field Edit_Drawer_List_LockIcon_Animation_Frame2 int32
---@field Edit_Drawer_List_LockIcon_Animation_Frame3 int32
---@field Edit_Drawer_List_LockIcon_Scale1 float
---@field Edit_Drawer_List_LockIcon_Scale2 float
---@field Edit_Drawer_List_LockIcon_Scale3 float
---@field Edit_Drawer_List_LockIcon_Scale4 float
---@field Edit_Drawer_List_LockIcon_Angle1 float
---@field Edit_Drawer_List_LockIcon_Angle2 float
---@field Edit_Drawer_List_LockIcon_Angle3 float
---@field Edit_Drawer_List_LockIcon_Angle4 float
---@field Edit_Drawer_List_Switch_Heading_FadeOut_Delay int32
---@field Edit_Drawer_List_Switch_Heading_FadeOut_Frame int32
---@field Edit_Drawer_List_Switch_Heading_FadeIn_Delay int32
---@field Edit_Drawer_List_Switch_Heading_FadeIn_Frame int32
---@field Edit_Drawer_List_Switch_Heading_SlideIn_Delay int32
---@field Edit_Drawer_List_Switch_Heading_SlideIn_Frame int32
---@field Edit_Drawer_Capture_OffsetUV FVector2D
---@field Edit_Drawer_List_Change_Category_Fade_Out_Delay int32
---@field Edit_Drawer_List_Change_Category_Fade_Out_Frame int32
---@field Edit_Drawer_List_Change_Category_Fade_In_Delay int32
---@field Edit_Drawer_List_Change_Category_Fade_In_Frame int32
---@field Edit_Drawer_List_Change_Category_Slide_In_Delay int32
---@field Edit_Drawer_List_Change_Category_Slide_In_Frame int32
---@field Edit_Registry_Heading_InAnimation_Frame int32
---@field Edit_Registry_Elizabeth_Panel_InAnimation_Frame int32
---@field Edit_Registry_Name_Panel_InAnimation_Frame int32
---@field Edit_Registry_Help_Message_InAnimation_Frame int32
---@field Edit_Registry_List_InAnimation_Frame int32
---@field Edit_Registry_List_CheckMark_Slide_Delay int32
---@field Edit_Registry_List_CheckMark_Slide_Frame int32
---@field Edit_Registry_List_CheckMark_FadeIn_Delay int32
---@field Edit_Registry_List_CheckMark_FadeIn_Frame int32
---@field Edit_Registry_Capture_OffsetUV FVector2D
local AUIVelvetRoomDraw = {}

---@param DeltaTime float
function AUIVelvetRoomDraw:UpdateTimes(DeltaTime) end
---@param DeltaTime float
---@param ResourceData UObject
function AUIVelvetRoomDraw:UpdateMcaTimes(DeltaTime, ResourceData) end
---@param DeltaTime float
---@param ResourceData UObject
function AUIVelvetRoomDraw:UpdateCardTimes(DeltaTime, ResourceData) end
---@param ForceID int32
---@return int32
function AUIVelvetRoomDraw:GetHeroCostumeID(ForceID) end
---@param Index int32
---@return UObject
function AUIVelvetRoomDraw:GetAstreaResourceData(Index) end
---@param X float
---@param Y float
---@param Width float
---@param Height float
---@param pSceneCapture USceneCaptureComponent2D
function AUIVelvetRoomDraw:DrawTopHero(X, Y, Width, Height, pSceneCapture) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawTopHelpMessage(X, Y, Angle, CommonResource) end
---@param Transform FTransform
---@param CardDataAsset UObject
function AUIVelvetRoomDraw:DrawTopCard(Transform, CardDataAsset) end
---@param UniqueResource UObject
function AUIVelvetRoomDraw:DrawTopBlackDesign(UniqueResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSpecialCombinePlayerNameBoard(X, Y, Angle, CommonResource) end
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSpecialCombineList(UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param pSceneCapture USceneCaptureComponent2D
function AUIVelvetRoomDraw:DrawSpecialCombineIgor(X, Y, Angle, pSceneCapture) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSpecialCombineHeading(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSearchCombineSortPanel(X, Y, Angle, UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSearchCombinePlayerNameBoard(X, Y, Angle, CommonResource) end
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSearchCombineList(UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param pSceneCapture USceneCaptureComponent2D
function AUIVelvetRoomDraw:DrawSearchCombineIgor(X, Y, Angle, pSceneCapture) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawSearchCombineHeading(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawRegistryPlayerNameBoard(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawRegistryList(X, Y, Angle, UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawRegistryHelpMessage(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawRegistryHeading(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param pSceneCapture USceneCaptureComponent2D
---@param Elizabeth UObject
function AUIVelvetRoomDraw:DrawRegistryElizabeth(X, Y, Angle, pSceneCapture, Elizabeth) end
function AUIVelvetRoomDraw:DrawMessageWaitScene() end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawHelpMessageSpecialCombine(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawHelpMessageSearchCombine(X, Y, Angle, CommonResource) end
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawHelpMessage2Combine(CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerRegistryRate(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerPlayerNameBoard(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerListSortPanel(X, Y, Angle, UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerList(X, Y, Angle, UniqueResource, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerHelpMessage(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:DrawDrawerHeading(X, Y, Angle, CommonResource) end
---@param X float
---@param Y float
---@param Angle float
---@param pSceneCapture USceneCaptureComponent2D
---@param Elizabeth UObject
function AUIVelvetRoomDraw:DrawDrawerElizabeth(X, Y, Angle, pSceneCapture, Elizabeth) end
function AUIVelvetRoomDraw:DrawBlackScreenMiddle() end
function AUIVelvetRoomDraw:DrawBlackScreenLow() end
function AUIVelvetRoomDraw:DrawBlackScreenHigh() end
function AUIVelvetRoomDraw:DrawBlackScreenFadeOut() end
---@param Colors TArray<FColor>
---@param BlackPanelIndex TArray<int32>
function AUIVelvetRoomDraw:DrawBackgroundPanels(Colors, BlackPanelIndex) end
---@param Resource UObject
function AUIVelvetRoomDraw:DrawBackgroundPanelLattices(Resource) end
---@param X float
---@param Y float
---@param Angle float
---@param CommonResource UObject
function AUIVelvetRoomDraw:Draw2CombinePlayerNameBoard(X, Y, Angle, CommonResource) end
---@param UniqueResource UObject
---@param CommonResource UObject
function AUIVelvetRoomDraw:Draw2CombineList(UniqueResource, CommonResource) end
---@param pSceneCapture USceneCaptureComponent2D
function AUIVelvetRoomDraw:Draw2CombineIgor(pSceneCapture) end
---@param X float
---@param Y float
---@param UniqueResource UObject
function AUIVelvetRoomDraw:Draw2CombineHeading(X, Y, UniqueResource) end
---@param pCaptureComponent USceneCaptureComponent2D
---@param pResource UObject
---@param Type EUIVELVET_ROOM_MCA_CAPTURE
---@param OffsetPoint FVector
---@param OffsetRotation FRotator
---@param OffsetFov float
function AUIVelvetRoomDraw:ApplyMcaToSceneCaptureComponent(pCaptureComponent, pResource, Type, OffsetPoint, OffsetRotation, OffsetFov) end
---@param SceneCaptureComponent2D USceneCaptureComponent2D
---@param McaResourceData UObject
function AUIVelvetRoomDraw:ApplyMcaForSceneCaptureComponent2D(SceneCaptureComponent2D, McaResourceData) end
---@param SoftAsset TSoftObjectPtr<UObject>
function AUIVelvetRoomDraw:AddAstreaLoadAsset(SoftAsset) end


---@class AUIVelvetRoomPanel : AAppActor
local AUIVelvetRoomPanel = {}


---@class AUIVelvetRoomRequest : AUIBaseActor
local AUIVelvetRoomRequest = {}


---@class AUIVelvetRoomRequestDraw : AUIDrawBaseActor
local AUIVelvetRoomRequestDraw = {}

function AUIVelvetRoomRequestDraw:OpenQuestMenu() end
function AUIVelvetRoomRequestDraw:OpenQuestDetails() end
---@return int32
function AUIVelvetRoomRequestDraw:GetSortType() end
---@param Index int32
---@return EQuestListItemState
function AUIVelvetRoomRequestDraw:GetQuestState(Index) end
---@return int32
function AUIVelvetRoomRequestDraw:GetQuestRank() end
---@param Index int32
---@return boolean
function AUIVelvetRoomRequestDraw:GetQuestNewFlag(Index) end
---@return int32
function AUIVelvetRoomRequestDraw:GetQuestListMax() end
---@param Index int32
---@return int32
function AUIVelvetRoomRequestDraw:GetQuestID(Index) end
---@return int32
function AUIVelvetRoomRequestDraw:GetCursorListTopIndex() end
---@return int32
function AUIVelvetRoomRequestDraw:GetCursorCurrentIndex() end
---@param X float
---@param Y float
---@param Index int32
function AUIVelvetRoomRequestDraw:DrawQuestReward(X, Y, Index) end
---@param X float
---@param Y float
---@param Index int32
function AUIVelvetRoomRequestDraw:DrawQuestItem(X, Y, Index) end
---@param X float
---@param Y float
function AUIVelvetRoomRequestDraw:DrawQuestHelp(X, Y) end
---@param X float
---@param Y float
function AUIVelvetRoomRequestDraw:DrawQuestDetails(X, Y) end
function AUIVelvetRoomRequestDraw:CloseQuestMenu() end
function AUIVelvetRoomRequestDraw:CloseQuestDetails() end


---@class AUIVoiceAction : AUIVoiceBase
---@field VoiceActionDrawSubClass TSubclassOf<AUIVoiceActionDraw>
---@field pVoiceActionDrawActor AUIVoiceActionDraw
---@field LayoutDataTable UUILayoutDataTable
---@field pParamLayoutData UDataTable
---@field Loader_ UAssetLoader
local AUIVoiceAction = {}



---@class AUIVoiceActionDraw : AUIDrawBaseActor
---@field bIsStartInAnim boolean
---@field bIsFinishInAnim boolean
---@field bIsStartOutAnim boolean
---@field bIsFinishOutAnim boolean
---@field bIsKeyOutAnim boolean
---@field bReturnSceneOptionAnim boolean
---@field bIsStartInNetworkIconAnim boolean
---@field bIsFinishInNetworkIconAnim boolean
---@field bIsStartOutNetworkIconAnim boolean
---@field bIsFinishOutNetworkIconAnim boolean
---@field bIsStartInBlackBoardAnim boolean
---@field bIsFinishInBlackBoardAnim boolean
---@field bIsStartOutBlackBoardAnim boolean
---@field bIsFinishOutBlackBoardAnim boolean
---@field IsStartGetData boolean
---@field IsGetData boolean
---@field SprData USprAsset
---@field PlgData UPlgAsset
---@field OffStartFrame int32
---@field IsDisp boolean
local AUIVoiceActionDraw = {}

---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function AUIVoiceActionDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@return boolean
function AUIVoiceActionDraw:StateDrawNetworkIcon_Out() end
---@return boolean
function AUIVoiceActionDraw:StateDrawNetworkIcon_IN() end
---@return boolean
function AUIVoiceActionDraw:StateDrawBlackBoard_Out() end
---@return boolean
function AUIVoiceActionDraw:StateDrawBlackBoard_IN() end
---@return boolean
function AUIVoiceActionDraw:StateDraw_Out() end
---@return boolean
function AUIVoiceActionDraw:StateDraw_Network() end
---@return boolean
function AUIVoiceActionDraw:StateDraw_IN() end
---@return boolean
function AUIVoiceActionDraw:StateDraw_Frame() end
---@return boolean
function AUIVoiceActionDraw:StateDraw_BG() end
function AUIVoiceActionDraw:OneTimeLockInput() end
---@return boolean
function AUIVoiceActionDraw:KeyHelpOut() end
---@return boolean
function AUIVoiceActionDraw:KeyHelpIn() end
function AUIVoiceActionDraw:InitSetDayTime() end
---@return boolean
function AUIVoiceActionDraw:InitDrawNetworkIcon_Out() end
---@return boolean
function AUIVoiceActionDraw:InitDrawNetworkIcon_IN() end
---@return boolean
function AUIVoiceActionDraw:InitDrawBlackBoard_Out() end
---@return boolean
function AUIVoiceActionDraw:InitDrawBlackBoard_IN() end
---@return boolean
function AUIVoiceActionDraw:InitDraw_Out() end
---@return boolean
function AUIVoiceActionDraw:InitDraw_IN() end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawStickyNoteAverage(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
---@param Scale float
function AUIVoiceActionDraw:DrawNetworkIconSecond(InPos, InColor, Angle, Scale) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
---@param IconAngle float
function AUIVoiceActionDraw:DrawNetworkIcon(InPos, InColor, Angle, IconAngle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawMonth(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDungeonActionStickyNote(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDungeonActionPercent(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDayOfWeek(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDay(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDailyActionStickyNote(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawDailyActionPercent(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawCommunityActionStickyNote(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawCommunityActionPercent(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawBlueBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawBlackBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawBackBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceActionDraw:DrawActionBoard(InPos, InColor, Angle) end
---@param InFrame int32
---@return float
function AUIVoiceActionDraw:ConvFrameToTime(InFrame) end


---@class AUIVoiceAnswer : AUIVoiceBase
---@field Loader_ UAssetLoader
---@field BmdAsset_ UBmdAsset
---@field VoiceAnswerDrawSubClass TSubclassOf<AUIVoiceAnswerDraw>
---@field pVoiceAnswerDrawActor AUIVoiceAnswerDraw
---@field LayoutDataTable UUILayoutDataTable
---@field LayoutTextColDataTable UUILayoutDataTable
---@field pParamLayoutData UDataTable
---@field pParamTextColLayoutData UDataTable
local AUIVoiceAnswer = {}



---@class AUIVoiceAnswerDraw : AUIDrawBaseActor
---@field bIsStartInAnim boolean
---@field bIsFinishInAnim boolean
---@field bIsStartOutAnim boolean
---@field bIsFinishOutAnim boolean
---@field bIsKeyOutAnim boolean
---@field bReturnSceneOptionAnim boolean
---@field bIsStartInNetworkIconAnim boolean
---@field bIsFinishInNetworkIconAnim boolean
---@field bIsStartOutNetworkIconAnim boolean
---@field bIsFinishOutNetworkIconAnim boolean
---@field bIsStartInBlackBoardAnim boolean
---@field bIsFinishInBlackBoardAnim boolean
---@field bIsStartOutBlackBoardAnim boolean
---@field bIsFinishOutBlackBoardAnim boolean
---@field IsStartGetData boolean
---@field IsGetData boolean
---@field IsDisp boolean
---@field SprData USprAsset
---@field PlgData UPlgAsset
---@field OffStartFrame int32
local AUIVoiceAnswerDraw = {}

---@param NowTime float
---@param StartFrame int32
---@param EndFrame int32
---@return boolean
function AUIVoiceAnswerDraw:TimeWithinRangeFrame(NowTime, StartFrame, EndFrame) end
---@return boolean
function AUIVoiceAnswerDraw:StateDrawNetworkIcon_Out() end
---@return boolean
function AUIVoiceAnswerDraw:StateDrawNetworkIcon_IN() end
---@return boolean
function AUIVoiceAnswerDraw:StateDrawBlackBoard_Out() end
---@return boolean
function AUIVoiceAnswerDraw:StateDrawBlackBoard_IN() end
---@return boolean
function AUIVoiceAnswerDraw:StateDraw_Out() end
---@return boolean
function AUIVoiceAnswerDraw:StateDraw_Network() end
---@return boolean
function AUIVoiceAnswerDraw:StateDraw_IN() end
---@return boolean
function AUIVoiceAnswerDraw:StateDraw_Frame() end
---@return boolean
function AUIVoiceAnswerDraw:StateDraw_BG() end
function AUIVoiceAnswerDraw:OneTimeLockInput() end
---@return boolean
function AUIVoiceAnswerDraw:KeyHelpOut() end
---@return boolean
function AUIVoiceAnswerDraw:KeyHelpIn() end
---@return boolean
function AUIVoiceAnswerDraw:IsMaxAnswer() end
function AUIVoiceAnswerDraw:InitSetDayTime() end
---@return boolean
function AUIVoiceAnswerDraw:InitDrawNetworkIcon_Out() end
---@return boolean
function AUIVoiceAnswerDraw:InitDrawNetworkIcon_IN() end
---@return boolean
function AUIVoiceAnswerDraw:InitDrawBlackBoard_Out() end
---@return boolean
function AUIVoiceAnswerDraw:InitDrawBlackBoard_IN() end
---@return boolean
function AUIVoiceAnswerDraw:InitDraw_Out() end
---@return boolean
function AUIVoiceAnswerDraw:InitDraw_IN() end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawTextureD(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawTextureC(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawTextureB(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawTextureA(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawStickerD(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawStickerC(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawStickerB(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawStickerA(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Width float
---@param Height float
---@param Angle float
function AUIVoiceAnswerDraw:DrawRightBracketsD(InPos, InColor, Width, Height, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Width float
---@param Height float
---@param Angle float
function AUIVoiceAnswerDraw:DrawRightBracketsC(InPos, InColor, Width, Height, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Width float
---@param Height float
---@param Angle float
function AUIVoiceAnswerDraw:DrawRightBracketsB(InPos, InColor, Width, Height, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Width float
---@param Height float
---@param Angle float
function AUIVoiceAnswerDraw:DrawRightBracketsA(InPos, InColor, Width, Height, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
---@param Scale float
function AUIVoiceAnswerDraw:DrawNetworkIconSecond(InPos, InColor, Angle, Scale) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
---@param IconAngle float
function AUIVoiceAnswerDraw:DrawNetworkIcon(InPos, InColor, Angle, IconAngle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawMonth(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawLeftBracketsD(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawLeftBracketsC(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawLeftBracketsB(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawLeftBracketsA(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawDayOfWeek(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawDay(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawBlueBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawBlackBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawBackBoard(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawAnswerTextD(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawAnswerTextC(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawAnswerTextB(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawAnswerTextA(InPos, InColor, Angle) end
---@param InPos FVector2D
---@param InColor FColor
---@param Angle float
function AUIVoiceAnswerDraw:DrawAnswerBoard(InPos, InColor, Angle) end
---@param InFrame int32
---@return float
function AUIVoiceAnswerDraw:ConvFrameToTime(InFrame) end


---@class AUIVoiceBase : AUIBaseActor
local AUIVoiceBase = {}


---@class AUIVoiceConnect : AUIVoiceBase
local AUIVoiceConnect = {}


---@class AUIVoiceConnectWatching : AUIBaseActor
local AUIVoiceConnectWatching = {}


---@class AUmgDebugLogActor : AActor
local AUmgDebugLogActor = {}


---@class AUmgDialogActor : AActor
local AUmgDialogActor = {}


---@class AUtlProcActor : AAppActor
---@field mEndDelegate_ FUtlProcActorEndDelegate_
local AUtlProcActor = {}

function AUtlProcActor:StartProc() end
function AUtlProcActor:ReturnField() end
function AUtlProcActor:Return() end
---@param WorldContextObject UObject
---@param ProcNo int32
---@param LatentInfo FLatentActionInfo
---@param Result int32
function AUtlProcActor:RequestBfSettedFile(WorldContextObject, ProcNo, LatentInfo, Result) end


---@class AVoiceActionViewer : ADebugViewer
---@field pActionVoiceSystem AUIVoiceAction
local AVoiceActionViewer = {}



---@class AitfMsgProgWindow_TUTRIALDraw : AUIDrawBaseActor
---@field FadeInNonThumbnailMovePosFrame float
---@field FadeInWaitNonThumbnailMovePosFrame float
---@field FadeOutNonThumbnailMovePosFrame float
---@field FadeOutWaitNonThumbnailMovePosFrame float
---@field FadeInNonThumbnailAlphaFrame float
---@field FadeInWaitNonThumbnailAlphaFrame float
---@field FadeOutNonThumbnailAlphaFrame float
---@field FadeOutWaitNonThumbnailAlphaFrame float
---@field FadeInThumbnailMovePosFrame float
---@field FadeInWaitThumbnailMovePosFrame float
---@field FadeOutThumbnailMovePosFrame float
---@field FadeOutWaitThumbnailMovePosFrame float
---@field FadeInThumbnailAlphaFrame float
---@field FadeInWaitThumbnailAlphaFrame float
---@field FadeOutThumbnailAlphaFrame float
---@field FadeOutWaitThumbnailAlphaFrame float
---@field FadeInThumbnailAngleFrame float
---@field FadeInWaitThumbnailAngleFrame float
---@field FadeOutThumbnailAngleFrame float
---@field FadeOutWaitThumbnailAngleFrame float
---@field FixThumbnailAngle float
---@field FixThumbnailPosX float
---@field FixThumbnailPosY float
---@field FixThumbnailPlusAngle float
---@field FadeInGroundAlphaFrame float
---@field FadeInWaitGroundAlphaFrame float
---@field FadeOutGroundAlphaFrame float
---@field FadeOutWaitGroundAlphaFrame float
---@field NavyColor FColor
---@field GradationColor FColor
---@field UnderShadowColor FColor
---@field BackColor FColor
---@field PageOutButtonFrame float
---@field PageOutWaitButtonFrame float
---@field PageInButtonFrame float
---@field PageInWaitButtonFrame float
---@field PageOutTextFrame float
---@field PageOutWaitTextFrame float
---@field PageInTextFrame float
---@field PageInWaitTextFrame float
---@field PageOutTextAlphaFrame float
---@field PageOutWaitTextAlphaFrame float
---@field PageInTextAlphaFrame float
---@field PageInWaitTextAlphaFrame float
---@field PageOutThumbnailFrame float
---@field PageOutWaitThumbnailFrame float
---@field PageInThumbnailFrame float
---@field PageInWaitThumbnailFrame float
---@field InWaitThumbnailShadowFrame float
---@field InThumbnailShadowFrame float
---@field MaskLoopWaitFrameFirst int32
---@field MaskLoopWaitFrameSecond int32
---@field MaskLoopWaitFrameThird int32
---@field MaskLoopMoveFrameFirst int32
---@field MaskLoopMoveFrameSecond int32
---@field MaskLoopMoveFrameThird int32
---@field ButtonScaleWaitFrameFirst int32
---@field ButtonScaleWaitFrameSecond int32
---@field ButtonScaleWaitFrameThird int32
---@field ButtonScaleMoveFrameFirst int32
---@field ButtonScaleMoveFrameSecond int32
---@field ButtonScaleMoveFrameThird int32
---@field Edit_Icon_Animation_Start_Delay int32
---@field Edit_Icon_Angle_Frame int32
---@field Edit_Icon_Angle_Delay int32
---@field Edit_Icon_Scale_1Loop_Frame int32
local AitfMsgProgWindow_TUTRIALDraw = {}

---@param DeltaTime float
function AitfMsgProgWindow_TUTRIALDraw:Update(DeltaTime) end


---@class AkitadeTestEditManager : ADebugViewer
local AkitadeTestEditManager = {}


---@class AsainoTestEditManager : ADebugViewer
local AsainoTestEditManager = {}


---@class AsuzukiTestMenu : AAppActor
---@field Actor_ AActor
---@field DebugMenu_ UDebugMenu
local AsuzukiTestMenu = {}



---@class FAccsItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FAccsItemList = {}



---@class FAccsItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FAccsItemListRecord = {}



---@class FActivityData
---@field StartMonth uint8
---@field StartDay uint8
---@field MinFloorNo uint16
---@field MaxFloorNo uint16
---@field StartFlag FName
---@field EndFlag FName
---@field TaskIds TArray<FActivityTaskData>
local FActivityData = {}



---@class FActivityTaskData
---@field EndFlag FName
---@field EndFloorNo int32
local FActivityTaskData = {}



---@class FAddContentEntitlement : FTableRowBase
---@field Enabled boolean
---@field Categories EAddContentEntitlementCategory
---@field Items int32
---@field PsEntitlementLabel FString
---@field MsStoreId FString
---@field SteamAppId uint32
local FAddContentEntitlement = {}



---@class FAddContentTable : FTableRowBase
---@field CategoryID uint16
---@field ItemId uint16
---@field itemNum uint16
---@field ActiveFlag uint32
---@field GetFlag uint32
---@field NewFlag uint32
---@field GdkStoreId FString
local FAddContentTable = {}



---@class FAddContentsBundleNameTable : FTableRowBase
---@field Name FString
local FAddContentsBundleNameTable = {}



---@class FAddContentsNameDispTable : FTableRowBase
---@field ItemId uint16
---@field Category uint16
---@field Comment FString
local FAddContentsNameDispTable = {}



---@class FAnimeWork_t
local FAnimeWork_t = {}


---@class FAntiqueShopEquipCombineResult : FShopLineUpListBase
---@field BaseItemID uint16
---@field TradeItems TArray<FAntiqueShopTradeItem>
local FAntiqueShopEquipCombineResult = {}



---@class FAntiqueShopEquipCombineResultTable : FTableRowBase
---@field Value uint16
---@field BaseItemValue uint16
---@field MatItemValue_1 uint16
---@field MatItemNum_1 uint16
---@field MatItemValue_2 uint16
---@field MatItemNum_2 uint16
---@field MatItemValue_3 uint16
---@field MatItemNum_3 uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FAntiqueShopEquipCombineResultTable = {}



---@class FAntiqueShopEquipCombineSource : FShopLineUpListBase
local FAntiqueShopEquipCombineSource = {}


---@class FAntiqueShopEquipCombineSourceTable : FTableRowBase
---@field Value uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FAntiqueShopEquipCombineSourceTable = {}



---@class FAntiqueShopLineUpList : FShopLineUpListBase
---@field Type uint16
---@field TradeItems TArray<FAntiqueShopTradeItem>
local FAntiqueShopLineUpList = {}



---@class FAntiqueShopLineUpListRecord : FTableRowBase
---@field Value uint16
---@field ListType uint16
---@field MatItemValue_1 uint16
---@field MatItemNum_1 uint16
---@field MatItemValue_2 uint16
---@field MatItemNum_2 uint16
---@field MatItemValue_3 uint16
---@field MatItemNum_3 uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FAntiqueShopLineUpListRecord = {}



---@class FAntiqueShopTradeItem
---@field ItemId uint16
---@field itemNum uint16
local FAntiqueShopTradeItem = {}



---@class FAppAnimSequence
---@field pAnimSequence UAnimSequence
local FAppAnimSequence = {}



---@class FAppCalculaterComponentWork
---@field Timer float
---@field List TArray<FAppCalculationItem>
local FAppCalculaterComponentWork = {}



---@class FAppCalculationItem
---@field SrcValue float
---@field DstValue float
---@field Delay int32
---@field DstFrame int32
---@field Type appCalculationType
local FAppCalculationItem = {}



---@class FAppCharBagData
---@field Base TSoftClassPtr<AAppPropsCore>
---@field AttachSocketName FName
---@field SetAnimSlotName FName
---@field AnimSeqs TMap<EAppCharBagAnimType, TSoftObjectPtr<UAnimSequenceBase>>
local FAppCharBagData = {}



---@class FAppCharCostumeData
---@field Base FAppCharCostumePartsData
---@field Costume FAppCharCostumePartsData
---@field Hair FAppCharCostumePartsData
---@field Face FAppCharCostumePartsData
---@field BagKeyID int32
local FAppCharCostumeData = {}



---@class FAppCharCostumePartsData
---@field Mesh TSoftObjectPtr<USkeletalMesh>
---@field Anim TSoftClassPtr<UObject>
local FAppCharCostumePartsData = {}



---@class FAppCharFootstepsOverwrite
---@field mOverwriteActor AActor
---@field mLable FUAppCharFootstepsLabel
local FAppCharFootstepsOverwrite = {}



---@class FAppCharTableRow : FTableRowBase
---@field CapsuleHalfHeight float
---@field MeshLocation FVector
---@field Anims TMap<EAnimPackID, TSoftObjectPtr<UAppCharAnimDataAsset>>
---@field FaceAnim TSoftObjectPtr<UAppCharFaceAnimDataAsset>
---@field Costumes TMap<int32, FAppCharCostumeData>
---@field WeaponType TMap<int32, FAppCharWeaponData>
---@field BagType TMap<int32, FAppCharBagData>
local FAppCharTableRow = {}



---@class FAppCharTransparency
---@field Opacity float
---@field MaxOpacity float
---@field bLarge boolean
local FAppCharTransparency = {}



---@class FAppCharWeapoAnimAssetTypeData
---@field UsageEnv AppCharWeaponUsageEnv
---@field Asset TSoftObjectPtr<UAppCharWeaponAnimDataAsset>
local FAppCharWeapoAnimAssetTypeData = {}



---@class FAppCharWeaponData
---@field BluePrints TArray<TSoftClassPtr<AAppCharWeaponBase>>
local FAppCharWeaponData = {}



---@class FAppCharWeaponMeshData
---@field Mesh TSoftObjectPtr<USkeletalMesh>
---@field MultiEquip boolean
local FAppCharWeaponMeshData = {}



---@class FAppCharWeaponTableRow : FTableRowBase
---@field Data TMap<int32, FAppCharWeaponMeshData>
---@field Anim TSoftClassPtr<UObject>
---@field AnimAsset TArray<FAppCharWeapoAnimAssetTypeData>
local FAppCharWeaponTableRow = {}



---@class FAppLevelData
---@field mType EAppLevelType
---@field mReferenceCounter int32
local FAppLevelData = {}



---@class FAppNpcCostumeData
---@field Base FAppNpcCostumePartsData
---@field Costume FAppNpcCostumePartsData
---@field Hair FAppNpcCostumePartsData
---@field Face FAppNpcCostumePartsData
local FAppNpcCostumeData = {}



---@class FAppNpcCostumePartsData
---@field Mesh TSoftObjectPtr<USkeletalMesh>
---@field Anim TSoftClassPtr<UObject>
---@field Texture TMap<int32, TSoftObjectPtr<UTexture2D>>
local FAppNpcCostumePartsData = {}



---@class FAppNpcSkeletonTableRow : FTableRowBase
---@field MeshLocation FVector
---@field Anims TMap<EAnimPackID, TSoftObjectPtr<UAppCharAnimDataAsset>>
---@field Costumes TMap<int32, FAppNpcCostumeData>
local FAppNpcSkeletonTableRow = {}



---@class FAppNpcUniqueCostumeData
---@field Anims TMap<EAnimPackID, TSoftObjectPtr<UAppCharAnimDataAsset>>
---@field Costume FAppNpcCostumePartsData
---@field Hair FAppNpcCostumePartsData
---@field Face FAppNpcCostumePartsData
local FAppNpcUniqueCostumeData = {}



---@class FAppPropsCardData
---@field Param FAppPropsCardParam
---@field Card AAppPropsCore
local FAppPropsCardData = {}



---@class FAppPropsCardParam
---@field Type EAppPropsCardType
---@field ID int32
---@field Rank int32
local FAppPropsCardParam = {}



---@class FAppPropsCardTable : FTableRowBase
---@field Type EAppPropsCardType
---@field Texture TSoftObjectPtr<UTexture>
local FAppPropsCardTable = {}



---@class FArbeitInfo
---@field HelpMSGLabel uint32
---@field OrderableTimes EArbeitOrderableTime
---@field OrderableWeeks uint8
---@field UnlockFLG uint32
---@field UnlockDayCNT uint32
---@field HiddenFLG uint32
---@field HolidayWork boolean
local FArbeitInfo = {}



---@class FArbeitInfoTableItem : FTableRowBase
---@field DefineName FName
---@field Name FName
---@field HelpMSGLabel FString
---@field Afternoon boolean
---@field Evening boolean
---@field Sun boolean
---@field Mon boolean
---@field Tue boolean
---@field Wed boolean
---@field Thu boolean
---@field Fri boolean
---@field Sat boolean
---@field UnlockFLG FString
---@field UnlockDayCNT FString
---@field HiddenFLG FString
---@field HolidayWork boolean
local FArbeitInfoTableItem = {}



---@class FArmorItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Defence uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FArmorItemList = {}



---@class FArmorItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Defence uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FArmorItemListRecord = {}



---@class FAssistSpriteItem
---@field BustupObject UBustupObject
---@field Sprite USprAsset
local FAssistSpriteItem = {}



---@class FAstreaInitialPersonaBookData : FTableRowBase
---@field PersonaID int32
local FAstreaInitialPersonaBookData = {}



---@class FAstreaProgressTableItem : FTableRowBase
---@field Progress int32
---@field RefMonth uint8
---@field RefDay uint8
---@field RefTimeZone ECldTimeZone
---@field UseBMD boolean
local FAstreaProgressTableItem = {}



---@class FAtlEvtAdditionBGSublevel
---@field FieldLevelName FName
local FAtlEvtAdditionBGSublevel = {}



---@class FAtlEvtAssetOverrideParameter
---@field BindingTagParameter FAtlEvtPlayBindingTagParameter
local FAtlEvtAssetOverrideParameter = {}



---@class FAtlEvtEventManagerInitializer
---@field EventRank FString
---@field EventSequencePlayer UMovieSceneSequencePlayer
local FAtlEvtEventManagerInitializer = {}



---@class FAtlEvtEventManagerMovieSceneOperator
local FAtlEvtEventManagerMovieSceneOperator = {}


---@class FAtlEvtHandwritingData
---@field HandwritingType EAtlEvtHandwritingType
---@field Location FVector
---@field Scale FVector
---@field BoneName FString
---@field LoopCount int32
---@field CameraOffset float
local FAtlEvtHandwritingData = {}



---@class FAtlEvtHandwritingDataTable : FTableRowBase
---@field CharCategoryType EAppCharCategoryType
---@field CharaIndexID int32
---@field HandwritingType EAtlEvtHandwritingType
local FAtlEvtHandwritingDataTable = {}



---@class FAtlEvtLevelSequenceEventSE
---@field AtomCueAssetPath TSoftObjectPtr<USoundAtomCueSheet>
---@field BankNum int32
local FAtlEvtLevelSequenceEventSE = {}



---@class FAtlEvtLevelSequenceEventVoice
---@field AtomCueAssetPath TSoftObjectPtr<USoundAtomCueSheet>
---@field BankNum int32
local FAtlEvtLevelSequenceEventVoice = {}



---@class FAtlEvtLevelSequenceSound
---@field AtomCueAssetPath TSoftObjectPtr<USoundAtomCueSheet>
---@field PlayerMajorID int32
---@field PlayerMinorID int32
---@field SoundPlayerType EPlayerType
local FAtlEvtLevelSequenceSound = {}



---@class FAtlEvtLightScenarioSublevel
---@field FieldLevelName FName
local FAtlEvtLightScenarioSublevel = {}



---@class FAtlEvtLightScenarioSublevelParam
---@field Level UObject
---@field LevelName FName
---@field PrimaryAssetId FPrimaryAssetId
local FAtlEvtLightScenarioSublevelParam = {}



---@class FAtlEvtNiagaraSystemPool
---@field AttachToCharacter ACharacter
local FAtlEvtNiagaraSystemPool = {}



---@class FAtlEvtPlayBindingTagParameter
---@field BindingActor AActor
---@field BindingTag FString
local FAtlEvtPlayBindingTagParameter = {}



---@class FAtlEvtPlayLoadSublevelInfo
---@field SublevelPackageName FName
---@field SublevelType EAtlEvtPlayLoadSublevelType
local FAtlEvtPlayLoadSublevelInfo = {}



---@class FAtlEvtPlayParameter
---@field EventAssetName FString
---@field bEnableBinding boolean
---@field BindingTagActors TArray<FAtlEvtPlayBindingTagParameter>
---@field bDisableTimeZone boolean
---@field FieldEventInfo FFieldEventInfo
local FAtlEvtPlayParameter = {}



---@class FAtlEvtPlayingCharacterInfo
---@field AppEventCharacters TArray<TWeakObjectPtr<AActor>>
local FAtlEvtPlayingCharacterInfo = {}



---@class FAtlEvtPlayingEventInfo
---@field EventLevelName FString
---@field EventCategoryTypeID int32
---@field EventCategory FString
---@field EventRank FString
---@field EventMajorID int32
---@field EventMinorID int32
---@field AtlEvtLevelSequenceActor TWeakObjectPtr<AAtlEvtLevelSequenceActor>
---@field AtlEvtEventManagerActor TWeakObjectPtr<AAtlEvtEventManager>
---@field EventFirstFieldMajorID int32
---@field EventFirstFieldMinorID int32
local FAtlEvtPlayingEventInfo = {}



---@class FAtlEvtPreData
---@field EventMajorID int32
---@field EventMinorID int32
---@field EventCategoryTypeID int32
---@field EventRank FName
---@field EventCategory FName
---@field EventLevel FString
---@field EventSublevels TArray<FAtlEvtPreSublevelData>
---@field LightScenarioSublevels TArray<FName>
---@field DungeonSublevel FAtlEvtPreDungeonSublevelData
---@field bDisableAutoLoadFirstLightingScenarioLevel boolean
---@field bForceDisableUseCurrentTimeZone boolean
---@field ForcedCldTimeZoneValue uint8
---@field ForceMonth int32
---@field ForceDay int32
local FAtlEvtPreData = {}



---@class FAtlEvtPreDataTableRow : FTableRowBase
---@field EventMajorID int32
---@field EventMinorID int32
---@field EventRank FName
---@field EventType FName
---@field EventLevel FString
---@field BGFieldMajorID0 int32
---@field BGFieldMinorID0 int32
---@field BGFieldSubLevel0_0 FString
---@field BGFieldSubLevel0_1 FString
---@field BGFieldSubLevel0_2 FString
---@field BGFieldSubLevel0_3 FString
---@field BGFieldSubLevel0_4 FString
---@field BGFieldSeasonSubLevel0_0 FString
---@field BGFieldSoundSubLevel0_0 FString
---@field BGFieldMajorID1 int32
---@field BGFieldMinorID1 int32
---@field BGFieldSubLevel1_0 FString
---@field BGFieldSubLevel1_1 FString
---@field BGFieldSubLevel1_2 FString
---@field BGFieldSubLevel1_3 FString
---@field BGFieldSubLevel1_4 FString
---@field BGFieldSeasonSubLevel1_0 FString
---@field BGFieldSoundSubLevel1_0 FString
---@field BGFieldMajorID2 int32
---@field BGFieldMinorID2 int32
---@field BGFieldSubLevel2_0 FString
---@field BGFieldSubLevel2_1 FString
---@field BGFieldSubLevel2_2 FString
---@field BGFieldSubLevel2_3 FString
---@field BGFieldSubLevel2_4 FString
---@field BGFieldSeasonSubLevel2_0 FString
---@field BGFieldSoundSubLevel2_0 FString
---@field BGFieldMajorID3 int32
---@field BGFieldMinorID3 int32
---@field BGFieldSubLevel3_0 FString
---@field BGFieldSubLevel3_1 FString
---@field BGFieldSubLevel3_2 FString
---@field BGFieldSubLevel3_3 FString
---@field BGFieldSubLevel3_4 FString
---@field BGFieldSeasonSubLevel3_0 FString
---@field BGFieldSoundSubLevel3_0 FString
---@field BGFieldMajorID4 int32
---@field BGFieldMinorID4 int32
---@field BGFieldSubLevel4_0 FString
---@field BGFieldSubLevel4_1 FString
---@field BGFieldSubLevel4_2 FString
---@field BGFieldSubLevel4_3 FString
---@field BGFieldSubLevel4_4 FString
---@field BGFieldSeasonSubLevel4_0 FString
---@field BGFieldSoundSubLevel4_0 FString
---@field BGFieldMajorID5 int32
---@field BGFieldMinorID5 int32
---@field BGFieldSubLevel5_0 FString
---@field BGFieldSubLevel5_1 FString
---@field BGFieldSubLevel5_2 FString
---@field BGFieldSubLevel5_3 FString
---@field BGFieldSubLevel5_4 FString
---@field BGFieldSeasonSubLevel5_0 FString
---@field BGFieldSoundSubLevel5_0 FString
---@field BGFieldMajorID6 int32
---@field BGFieldMinorID6 int32
---@field BGFieldSubLevel6_0 FString
---@field BGFieldSubLevel6_1 FString
---@field BGFieldSubLevel6_2 FString
---@field BGFieldSubLevel6_3 FString
---@field BGFieldSubLevel6_4 FString
---@field BGFieldSeasonSubLevel6_0 FString
---@field BGFieldSoundSubLevel6_0 FString
---@field LightScenario0 FName
---@field LightScenario1 FName
---@field LightScenario2 FName
---@field LightScenario3 FName
---@field LightScenario4 FName
---@field LightScenario5 FName
---@field LightScenario6 FName
---@field DungeonFloorSubLevel FName
---@field DungeonEnvironmentSubLevel FName
---@field DisableAutoLoadFirstLightingScenarioLevel boolean
---@field ForceDisableUseCurrentTimeZone boolean
---@field ForceMonth int32
---@field ForceDay int32
local FAtlEvtPreDataTableRow = {}



---@class FAtlEvtPreDungeonSublevelData
---@field EventBGFloorLevel FName
---@field BGEnvironmentSubLevel FName
local FAtlEvtPreDungeonSublevelData = {}



---@class FAtlEvtPreSublevelData
---@field EventBGLevels TArray<FString>
---@field BGFieldMajorID int32
---@field BGFieldMinorID int32
---@field BGFieldSeasonSubLevel FString
---@field BGFieldSoundSubLevel FString
local FAtlEvtPreSublevelData = {}



---@class FAtlEvtSoundSEInfo
---@field bankID int32
---@field bStopWhileHighSpeed boolean
local FAtlEvtSoundSEInfo = {}



---@class FAtlEvtVisibleEventInfo
---@field bExsistVisibleField boolean
---@field EventLevelName FString
---@field EventCategoryTypeID int32
---@field EventMajorID int32
---@field EventMinorID int32
---@field VisibleLevelStreaming TSoftObjectPtr<ULevelStreaming>
---@field FieldMajorID int32
---@field FieldMinorID int32
local FAtlEvtVisibleEventInfo = {}



---@class FAtlHandwritingNiagaraRequestAbsoluteFlag
---@field bAbsoluteLocation boolean
---@field bAbsoluteRotation boolean
---@field bAbsoluteScale boolean
local FAtlHandwritingNiagaraRequestAbsoluteFlag = {}



---@class FAtlHandwritingNiagaraRequestParam
---@field LoopCount int32
---@field CameraOffset float
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector
---@field SpawnedWorldAbsoluteFlag FAtlHandwritingNiagaraRequestAbsoluteFlag
---@field SpawnedAttachAbsoluteFlag FAtlHandwritingNiagaraRequestAbsoluteFlag
local FAtlHandwritingNiagaraRequestParam = {}



---@class FAtlSlotMultiAnimationParam
---@field Animation UAnimSequenceBase
---@field StartOffset float
---@field EndOffset float
---@field BlendIn float
---@field BlendOut float
---@field PlayRate float
local FAtlSlotMultiAnimationParam = {}



---@class FBaseCurveAnimation
---@field m_pAssetLoader UAssetLoader
---@field m_pCurve UCurveBase
local FBaseCurveAnimation = {}



---@class FBaseHeadPanel
local FBaseHeadPanel = {}


---@class FBattleHeadPanel : FBaseHeadPanel
---@field materialSmokeInst UMaterialInstanceDynamic
---@field materialSmokeInstGrey UMaterialInstanceDynamic
local FBattleHeadPanel = {}



---@class FBtlAnalyzeAffinityIcon
---@field Pos FVector
---@field Icon UBtlGuiDrawObjectSprite
---@field BGRect UBtlGuiDrawObjectSprite
---@field WeakIn UBtlGuiDrawObjectSprite
---@field WeakOut UBtlGuiDrawObjectSprite
---@field WeakInDupli UBtlGuiDrawObjectSprite
---@field WeakOutDupli UBtlGuiDrawObjectSprite
---@field AlphaWeakDupli float
---@field ScaleWeakDupli float
---@field TimeWeakDupli float
---@field isPlayingInAnime boolean
---@field ResistIcon UBtlGuiDrawObjectSprite
---@field ResistText UBtlGuiDrawObjectSprite
---@field ResistTextBlur UBtlGuiDrawObjectSprite
---@field ScanUnknownIcon UBtlGuiDrawObjectPlg
---@field ScanUnknownIconBlur UBtlGuiDrawObjectSprite
---@field ScanResistIcon UBtlGuiDrawObjectPlg
---@field ScanResistIconBlur UBtlGuiDrawObjectSprite
---@field RippleEffectLarge UBtlGuiDrawObjectSprite
---@field RippleEffectSmall UBtlGuiDrawObjectSprite
---@field KnownEffect UBtlGuiDrawObjectSprite
---@field SmallScanUnknownIconBlur UBtlGuiDrawObjectSprite
---@field ScanPrimitive FBtlAnalyzeScanPrimitive
---@field TimeScan1 float
---@field AlphaUnknownIcon float
---@field TimeScan2 float
---@field AlphaResistIcon float
---@field AlphaRippleEffec float
---@field SizeRippleEffect float
---@field AlphaKnownEffect float
---@field isHighAnalyzeAnime boolean
---@field isShowNewAttr boolean
---@field KnownIconPosDif FVector2D
---@field RationDetailMove float
---@field ColorIcon FColor
---@field IsWeakKnownIcon boolean
local FBtlAnalyzeAffinityIcon = {}



---@class FBtlAnalyzeHighAnalyzePrimitive
---@field Object UBtlGuiDrawObjectPrimitive
---@field PosX float
---@field PosY float
---@field Width float
---@field isReflectX boolean
local FBtlAnalyzeHighAnalyzePrimitive = {}



---@class FBtlAnalyzeItemSpace
---@field Pos FVector
---@field Text UBtlGuiDrawObjectText
---@field Icon UBtlGuiDrawObjectSprite
---@field NoneIcon UBtlGuiDrawObjectSprite
local FBtlAnalyzeItemSpace = {}



---@class FBtlAnalyzeScanPrimitive
---@field objects TArray<UBtlGuiDrawObjectPrimitive>
---@field Size float
---@field Alpha float
---@field MoveX TArray<float>
---@field MoveY TArray<float>
---@field MoveToX float
---@field MoveToY float
local FBtlAnalyzeScanPrimitive = {}



---@class FBtlAnalyzeSkillSpace
---@field Pos FVector
---@field Text UBtlGuiDrawObjectText
---@field Icon UBtlGuiDrawObjectSprite
---@field BGRect UBtlGuiDrawObjectRoundRect
---@field NoneIcon UBtlGuiDrawObjectSprite
local FBtlAnalyzeSkillSpace = {}



---@class FBtlBlendState
---@field OpColor EBtlGuiBlendOp
---@field SrcColor EBtlGuiBlendFactor
---@field DstColor EBtlGuiBlendFactor
---@field OpAlpha EBtlGuiBlendOp
---@field SrcAlpha EBtlGuiBlendFactor
---@field DstAlpha EBtlGuiBlendFactor
---@field ColorWMask EBtlGuiColorWhiteMask
---@field OT EBtlGuiOT
local FBtlBlendState = {}



---@class FBtlBossAnimRequestParam
---@field Type EBtlAnimationType
---@field UseCustomFade boolean
---@field CustomFadeIn float
---@field CustomFadeOut float
local FBtlBossAnimRequestParam = {}



---@class FBtlCalcCameraData : FTableRowBase
---@field Start FBtlCalcCameraPosParam
---@field Goal FBtlCalcCameraPosParam
---@field AnimTime float
---@field RefleshEachFrame boolean
---@field Curve UCurveFloat
local FBtlCalcCameraData = {}



---@class FBtlCalcCameraPosParam
---@field CylinderType EBtlCalcCameraCylinderType
---@field DirectToOrigin boolean
---@field DirectAlongLookedAtCharacter boolean
---@field RotateDegree float
---@field RadiusRatio float
---@field RadiusAdd float
---@field RadiusAddHeightRatio float
---@field HeightRatio float
---@field HeightAddRadiusRatio float
---@field LookAtTarget EBtlCalcCameraLookAtType
---@field LookAtCylinderHightRatio float
---@field LookAtBlendToCenter float
---@field LookAtLineRatio float
---@field UseRoll boolean
---@field Roll float
---@field HeightBlend float
---@field HeightDefault float
---@field Pan float
---@field PanV float
---@field SlideCamX float
---@field UseCommonCylinder boolean
---@field ExceptPersonaCylinder boolean
---@field WorldTransform FTransform
local FBtlCalcCameraPosParam = {}



---@class FBtlCameraParam : FTableRowBase
---@field HideOtherProcCylinderRatio float
local FBtlCameraParam = {}



---@class FBtlCharacterFaceAnim : FTableRowBase
---@field SectionName FName
---@field FaceType EAppCharFaceAnimID
---@field NotPlay boolean
local FBtlCharacterFaceAnim = {}



---@class FBtlCharacterVisual : FTableRowBase
---@field Movable boolean
---@field AttackWithMove boolean
---@field AttackRange float
---@field AttackDegree TArray<float>
---@field HasMultiPersonalMotion boolean
---@field UseShakingWhenDownDamage boolean
local FBtlCharacterVisual = {}



---@class FBtlCharacterWeaponVisibility : FTableRowBase
---@field ShowWeapon boolean
---@field ShowGun boolean
local FBtlCharacterWeaponVisibility = {}



---@class FBtlCutinBackGround : FTableRowBase
---@field BackGround TSoftObjectPtr<UMaterialInstance>
local FBtlCutinBackGround = {}



---@class FBtlCutsceneData : FTableRowBase
---@field Cutscene TSoftObjectPtr<ULevelSequence>
local FBtlCutsceneData = {}



---@class FBtlCutsceneHandleData
---@field Scene ULevelSequence
---@field Loader UAssetLoader
---@field RowName FString
local FBtlCutsceneHandleData = {}



---@class FBtlCylinder : FTableRowBase
---@field CenterBottom FVector
---@field Radius float
---@field Height float
local FBtlCylinder = {}



---@class FBtlDamageParam
---@field Damage int32
local FBtlDamageParam = {}



---@class FBtlDataTargetRule
---@field Me boolean
---@field Other boolean
---@field Dead boolean
---@field DownOnly boolean
local FBtlDataTargetRule = {}



---@class FBtlEffectItem
---@field ParentEmpActor AActor
---@field ObjectReference UNiagaraComponent
---@field Tag FName
---@field Type EBtlBadStatusIcon
---@field BadStatus boolean
local FBtlEffectItem = {}



---@class FBtlEncountParam
---@field EncountID int32
---@field Preemptive EBtlEncountPreemptive
---@field PreemptiveOriginal EBtlEncountPreemptive
---@field StageMajor int32
---@field StageMinor int32
---@field EnemyBadStatus int32
---@field CalledFromScript boolean
---@field IsEventResult boolean
local FBtlEncountParam = {}



---@class FBtlEventCustomEquipment
---@field UseCustomEquipSettings boolean
---@field CostumeID int32
---@field UseWeapon boolean
local FBtlEventCustomEquipment = {}



---@class FBtlFadeParam
---@field isFadeOut boolean
---@field NowTime float
---@field MaxTime float
---@field Param float
local FBtlFadeParam = {}



---@class FBtlFormationData : FTableRowBase
---@field PlayerPositions TArray<FBtlFormationUnit>
---@field EnemyPositions TArray<FBtlFormationUnit>
local FBtlFormationData = {}



---@class FBtlFormationUnit : FTableRowBase
---@field Translation FVector
---@field Rotation FRotator
---@field ID int32
---@field SizeCategory EBtlSizeCategoryType
local FBtlFormationUnit = {}



---@class FBtlGuiDrawFlag
---@field InheritScale boolean
---@field InheritAngle boolean
---@field InheritColor boolean
local FBtlGuiDrawFlag = {}



---@class FBtlGuiDrawImage : FBtlGuiDrawStructCore
---@field Texture UTexture
---@field Width float
---@field Height float
---@field drawType EBtlGuiDrawType
---@field UV FVector4
---@field RevHorizontal boolean
---@field RevVertical boolean
local FBtlGuiDrawImage = {}



---@class FBtlGuiDrawLineFrame : FBtlGuiDrawStructCore
---@field vertex TArray<FBtlGuiVertex>
---@field lineLength float
---@field useAnriAlias boolean
---@field reverseAlpha boolean
---@field vertexLeftTurn boolean
---@field outStretch boolean
local FBtlGuiDrawLineFrame = {}



---@class FBtlGuiDrawMaterial : FBtlGuiDrawStructCore
---@field rect FVector4
---@field Material UMaterialInterface
local FBtlGuiDrawMaterial = {}



---@class FBtlGuiDrawMsg : FBtlGuiDrawStructCore
---@field bmd UBmdAsset
---@field msgNo int32
---@field pageNo int32
---@field msgLine int32
---@field textType EBtlGuiTextType
---@field fontStyle EBtlGuiFontStyle
---@field lineBreak float
---@field MaxRow int32
---@field adjustedScale FVector2D
---@field RowOffset float
local FBtlGuiDrawMsg = {}



---@class FBtlGuiDrawPanel : FBtlGuiDrawStructCore
---@field Width float
---@field Height float
local FBtlGuiDrawPanel = {}



---@class FBtlGuiDrawPlg : FBtlGuiDrawStructCore
---@field plg UPlgAsset
---@field plgNo int32
---@field reverseAlpha boolean
---@field inverseX boolean
---@field isMultiMode boolean
local FBtlGuiDrawPlg = {}



---@class FBtlGuiDrawPrimitive : FBtlGuiDrawStructCore
---@field vertex TArray<FBtlGuiVertex>
---@field Texture UTexture
---@field useAnriAlias boolean
---@field SkipAntiFirstVtx boolean
---@field reverseAlpha boolean
---@field vertexLeftTurn boolean
---@field drawType EBtlGuiDrawType
local FBtlGuiDrawPrimitive = {}



---@class FBtlGuiDrawRect : FBtlGuiDrawStructCore
---@field rect FVector4
local FBtlGuiDrawRect = {}



---@class FBtlGuiDrawRoundRect : FBtlGuiDrawStructCore
---@field Width float
---@field Height float
---@field Round int32
local FBtlGuiDrawRoundRect = {}



---@class FBtlGuiDrawSilhouette : FBtlGuiDrawStructCore
---@field Texture UTexture
---@field Width float
---@field Height float
---@field UV FVector4
---@field reverseAlpha boolean
local FBtlGuiDrawSilhouette = {}



---@class FBtlGuiDrawSprite : FBtlGuiDrawStructCore
---@field Sprite USprAsset
---@field grpNo int32
---@field SprNo int32
---@field drawType EBtlGuiDrawType
---@field RevHorizontal boolean
---@field RevVertical boolean
local FBtlGuiDrawSprite = {}



---@class FBtlGuiDrawStructCore
---@field Pos FVector2D
---@field Scale FVector2D
---@field Angle float
---@field anchor EBtlGuiAnchorPt
---@field scaleAnchorPos FVector2D
---@field angleAnchorPos FVector2D
---@field Color FColor
---@field blendState FBtlBlendState
local FBtlGuiDrawStructCore = {}



---@class FBtlGuiDrawText : FBtlGuiDrawStructCore
---@field str FString
---@field textType EBtlGuiTextType
---@field fontStyle EBtlGuiFontStyle
---@field adjustedScale FVector2D
local FBtlGuiDrawText = {}



---@class FBtlGuiIconDamage
---@field pTarget ABtlActor
---@field Damage int32
---@field DamageSP int32
---@field Hit EBtlGuiIconHit
---@field DamageType EBtlGuiIconDamageType
---@field isPortionDamage boolean
---@field isBadStatus boolean
---@field isBadStatusRecovery boolean
---@field isEndure boolean
---@field Delay float
---@field StepEndureRadio float
local FBtlGuiIconDamage = {}



---@class FBtlGuiRushEffectParam
---@field Intensity_float float
---@field LineDensity_float float
---@field LineThershold_float float
---@field LineWidthX_float float
---@field LineWidthY_float float
---@field MaskWidth_float float
---@field Speed_float float
local FBtlGuiRushEffectParam = {}



---@class FBtlGuiVertex
---@field Pos FVector2D
---@field Color FColor
---@field UV FVector2D
local FBtlGuiVertex = {}



---@class FBtlInputKey
---@field Trig FBtlInputKeyParam
---@field Press FBtlInputKeyParam
---@field Rep FBtlInputKeyParam
local FBtlInputKey = {}



---@class FBtlInputKeyParam
---@field ru boolean
---@field OK boolean
---@field RL boolean
---@field CANCEL boolean
---@field LU boolean
---@field LR boolean
---@field LL boolean
---@field LD boolean
---@field R1 boolean
---@field L1 boolean
---@field R2 boolean
---@field L2 boolean
---@field R3 boolean
---@field L3 boolean
---@field OPTION boolean
---@field Touch boolean
local FBtlInputKeyParam = {}



---@class FBtlItemData
---@field IconSpr int32
---@field ID int32
---@field CategoryID int32
---@field Num int32
---@field Name FString
local FBtlItemData = {}



---@class FBtlPersonaVisual : FTableRowBase
---@field SummonLocation FVector
---@field SummonRotation FRotator
---@field PhysicsLocation FVector
---@field PhysicsRotation FRotator
---@field MagicLocation FVector
---@field MagicRotation FRotator
---@field CustomCutinLocation FVector
---@field CustomCutinRotation FRotator
---@field PhysicalSkillRange float
---@field DisableBackShotCamera boolean
---@field UseLSizeCutin boolean
---@field UseCustomCutinLocation boolean
local FBtlPersonaVisual = {}



---@class FBtlResultAllyLvupParam
---@field PlayerId int32
---@field Level int32
---@field isLevelUp boolean
local FBtlResultAllyLvupParam = {}



---@class FBtlResultHeroInfo
---@field Name FString
---@field Hp int32
---@field MaxHp int32
---@field Sp int32
---@field MaxSp int32
---@field NextExp int64
---@field EquipRaceNo int32
---@field EquipPersonaLevel int32
---@field EquipPersonaName FString
local FBtlResultHeroInfo = {}



---@class FBtlResultItemParam
---@field ID int32
---@field Num int32
---@field Name FString
local FBtlResultItemParam = {}



---@class FBtlResultPersonaParam
---@field PersonaID int32
---@field Level int32
---@field Name FString
local FBtlResultPersonaParam = {}



---@class FBtlSkillCameraEffectParam
---@field CameraEffect UNiagaraCameraAttachComponent
---@field StartTime float
local FBtlSkillCameraEffectParam = {}



---@class FBtlSkillEnvParam : FTableRowBase
---@field FadeTime float
---@field FogPower float
---@field FogDistance float
---@field FogGradationRange float
---@field LightIntensityRatio float
---@field BGBlackRatio float
local FBtlSkillEnvParam = {}



---@class FBtlSkillParam
---@field VFX UNiagaraSystem
---@field TargetType EBtlSkillTargetType
---@field PositionType EBtlSkillPositionTargetType
---@field PositionHeight EBtlSkillPositionHeightType
---@field Direction EBtlSkillDirectionTargetType
---@field Scale float
---@field StartTime float
---@field IntervalTime float
---@field IsDamageEffect boolean
---@field SkillSE USoundAtomCue
---@field SEVolumeRatio float
---@field SE_UseCameraRangeParam boolean
---@field SE_CameraRangeMaxCM float
local FBtlSkillParam = {}



---@class FBustupAnim
---@field Type uint8
---@field Duration float
---@field Random float
local FBustupAnim = {}



---@class FBustupAnimTable : FTableRowBase
---@field Type uint8
---@field Frame uint16
---@field Random uint16
local FBustupAnimTable = {}



---@class FBustupCloth
---@field Clothes TMap<int32, FBustupParts>
local FBustupCloth = {}



---@class FBustupEnvironment
---@field No TArray<uint8>
---@field HeroNo TArray<uint8>
local FBustupEnvironment = {}



---@class FBustupEnvironmentBG
---@field Bg TMap<int32, FBustupEnvironment>
local FBustupEnvironmentBG = {}



---@class FBustupEnvironmentTable : FTableRowBase
---@field BGMajor int32
---@field BGMinor int32
---@field EarlyMorning uint8
---@field Morning uint8
---@field AM uint8
---@field Noon uint8
---@field PM uint8
---@field AfterSchool uint8
---@field Night uint8
---@field Shadow uint8
---@field Midnight uint8
---@field EarlyMorningHero uint8
---@field MorningHero uint8
---@field AMHero uint8
---@field NoonHero uint8
---@field PMHero uint8
---@field AfterSchoolHero uint8
---@field NightHero uint8
---@field ShadowHero uint8
---@field MidnightHero uint8
local FBustupEnvironmentTable = {}



---@class FBustupFace
---@field Faces TMap<int32, FBustupCloth>
local FBustupFace = {}



---@class FBustupGradation
---@field Angle float
---@field ShadowPosition float
---@field Range float
---@field ShadowColorR float
---@field ShadowColorG float
---@field ShadowColorB float
---@field ShadowColorA float
---@field Desaturation float
---@field Brightness float
---@field TextureNo uint8
local FBustupGradation = {}



---@class FBustupGradationTable : FTableRowBase
---@field Environment uint8
---@field Angle float
---@field ShadowPosition float
---@field Range float
---@field ShadowColorR float
---@field ShadowColorG float
---@field ShadowColorB float
---@field ShadowColorA float
---@field Desaturation float
---@field Brightness float
---@field TextureNo uint8
local FBustupGradationTable = {}



---@class FBustupMouthAnim
---@field Anim TArray<FBustupAnim>
local FBustupMouthAnim = {}



---@class FBustupObjectBuffer
---@field BustupObject UBustupObject
local FBustupObjectBuffer = {}



---@class FBustupOffsetTable : FTableRowBase
---@field CharaID uint16
---@field Pose FString
---@field EyeX float
---@field EyeY float
---@field MouthX float
---@field MouthY float
---@field BlushX float
---@field BlushY float
---@field SweatX float
---@field SweatY float
---@field OffsetX float
---@field OffsetY float
local FBustupOffsetTable = {}



---@class FBustupParamTable : FTableRowBase
---@field CharaID uint16
---@field FaceID uint16
---@field ClothID uint16
---@field Pose FString
---@field EyeAnim boolean
---@field MouthAnim boolean
---@field InBetween uint8
local FBustupParamTable = {}



---@class FBustupParts
---@field Pose FString
---@field EyePartsID uint16
---@field MouthPartsID uint16
---@field bEyeAnim boolean
---@field bMouthAnim boolean
---@field InBetween uint8
---@field EyeX float
---@field EyeY float
---@field MouthX float
---@field MouthY float
---@field BlushX float
---@field BlushY float
---@field SweatX float
---@field SweatY float
---@field OffsetX float
---@field OffsetY float
local FBustupParts = {}



---@class FBustupPoseOffset
---@field PoseOffsets TMap<FString, FBustupParts>
local FBustupPoseOffset = {}



---@class FCampCameraTableRow : FTableRowBase
---@field CameraPos FVector
---@field CameraRot FRotator
---@field CharaPos FVector
---@field CharaRot FRotator
local FCampCameraTableRow = {}



---@class FCampCharaLookAdjust : FTableRowBase
---@field LightPositionTop FVector
---@field LightPositionAdjustTop FVector
---@field LightPositionAdjustRimTop FVector
---@field GradationColorATop FLinearColor
---@field GradationColorBTop FLinearColor
---@field AngleAlignedTop float
---@field AngleAlignedPowerTop float
---@field GradationOFFTop float
---@field SphereColorTop FLinearColor
---@field SpherePosTop FVector2D
---@field SpherePowerTop float
---@field SphereRadiusTop float
---@field ShpereHardnessTop float
---@field SphereReverseTop float
---@field RimLightColorTop FLinearColor
---@field RimLightWidthMinTop float
---@field RimLightWidthMaxTop float
---@field RTShadowColorTop FLinearColor
---@field RTShadowColor_BlendTop float
---@field GaussMaskTextureTopColorTop FColor
---@field GaussMaskTextureBottomColorTop FColor
---@field LightPositionSkill FVector
---@field LightPositionAdjustSkill FVector
---@field LightPositionAdjustRimSkill FVector
---@field GradationColorASkill FLinearColor
---@field GradationColorBSkill FLinearColor
---@field AngleAlignedSkill float
---@field AngleAlignedPowerSkill float
---@field GradationOFFSkill float
---@field SphereColorSkill FLinearColor
---@field SpherePosSkill FVector2D
---@field SpherePowerSkill float
---@field SphereRadiusSkill float
---@field ShpereHardnessSkill float
---@field SphereReverseSkill float
---@field RimLightColorSkill FLinearColor
---@field RimLightWidthMinSkill float
---@field RimLightWidthMaxSkill float
---@field RTShadowColorSkill FLinearColor
---@field RTShadowColor_BlendSkill float
---@field GaussMaskTextureTopColorSkill FColor
---@field GaussMaskTextureBottomColorSkill FColor
---@field LightPositionItem FVector
---@field LightPositionAdjustItem FVector
---@field LightPositionAdjustRimItem FVector
---@field GradationColorAItem FLinearColor
---@field GradationColorBItem FLinearColor
---@field AngleAlignedItem float
---@field AngleAlignedPowerItem float
---@field GradationOFFItem float
---@field SphereColorItem FLinearColor
---@field SpherePosItem FVector2D
---@field SpherePowerItem float
---@field SphereRadiusItem float
---@field ShpereHardnessItem float
---@field SphereReverseItem float
---@field RimLightColorItem FLinearColor
---@field RimLightWidthMinItem float
---@field RimLightWidthMaxItem float
---@field RTShadowColorItem FLinearColor
---@field RTShadowColor_BlendItem float
---@field GaussMaskTextureTopColorItem FColor
---@field GaussMaskTextureBottomColorItem FColor
---@field LightPositionEquip FVector
---@field LightPositionAdjustEquip FVector
---@field LightPositionAdjustRimEquip FVector
---@field GradationColorAEquip FLinearColor
---@field GradationColorBEquip FLinearColor
---@field AngleAlignedEquip float
---@field AngleAlignedPowerEquip float
---@field GradationOFFEquip float
---@field SphereColorEquip FLinearColor
---@field SpherePosEquip FVector2D
---@field SpherePowerEquip float
---@field SphereRadiusEquip float
---@field ShpereHardnessEquip float
---@field SphereReverseEquip float
---@field RimLightColorEquip FLinearColor
---@field RimLightWidthMinEquip float
---@field RimLightWidthMaxEquip float
---@field RTShadowColorEquip FLinearColor
---@field RTShadowColor_BlendEquip float
---@field GaussMaskTextureTopColorEquip FColor
---@field GaussMaskTextureBottomColorEquip FColor
---@field LightPositionStatus FVector
---@field LightPositionAdjustStatus FVector
---@field LightPositionAdjustRimStatus FVector
---@field GradationColorAStatus FLinearColor
---@field GradationColorBStatus FLinearColor
---@field AngleAlignedStatus float
---@field AngleAlignedPowerStatus float
---@field GradationOFFStatus float
---@field SphereColorStatus FLinearColor
---@field SpherePosStatus FVector2D
---@field SpherePowerStatus float
---@field SphereRadiusStatus float
---@field ShpereHardnessStatus float
---@field SphereReverseStatus float
---@field RimLightColorStatus FLinearColor
---@field RimLightWidthMinStatus float
---@field RimLightWidthMaxStatus float
---@field RTShadowColorStatus FLinearColor
---@field RTShadowColor_BlendStatus float
---@field GaussMaskTextureTopColorStatus FColor
---@field GaussMaskTextureBottomColorStatus FColor
---@field LightPositionQuest FVector
---@field LightPositionAdjustQuest FVector
---@field LightPositionAdjustRimQuest FVector
---@field GradationColorAQuest FLinearColor
---@field GradationColorBQuest FLinearColor
---@field AngleAlignedQuest float
---@field AngleAlignedPowerQuest float
---@field GradationOFFQuest float
---@field SphereColorQuest FLinearColor
---@field SpherePosQuest FVector2D
---@field SpherePowerQuest float
---@field SphereRadiusQuest float
---@field ShpereHardnessQuest float
---@field SphereReverseQuest float
---@field RimLightColorQuest FLinearColor
---@field RimLightWidthMinQuest float
---@field RimLightWidthMaxQuest float
---@field RTShadowColorQuest FLinearColor
---@field RTShadowColor_BlendQuest float
---@field GaussMaskTextureTopColorQuest FColor
---@field GaussMaskTextureBottomColorQuest FColor
---@field LightPositionSystem FVector
---@field LightPositionAdjustSystem FVector
---@field LightPositionAdjustRimSystem FVector
---@field GradationColorASystem FLinearColor
---@field GradationColorBSystem FLinearColor
---@field AngleAlignedSystem float
---@field AngleAlignedPowerSystem float
---@field GradationOFFSystem float
---@field SphereColorSystem FLinearColor
---@field SpherePosSystem FVector2D
---@field SpherePowerSystem float
---@field SphereRadiusSystem float
---@field ShpereHardnessSystem float
---@field SphereReverseSystem float
---@field RimLightColorSystem FLinearColor
---@field RimLightWidthMinSystem float
---@field RimLightWidthMaxSystem float
---@field RTShadowColorSystem FLinearColor
---@field RTShadowColor_BlendSystem float
---@field GaussMaskTextureTopColorSystem FColor
---@field GaussMaskTextureBottomColorSystem FColor
---@field LightPositionConfig FVector
---@field LightPositionAdjustConfig FVector
---@field LightPositionAdjustRimConfig FVector
---@field GradationColorAConfig FLinearColor
---@field GradationColorBConfig FLinearColor
---@field AngleAlignedConfig float
---@field AngleAlignedPowerConfig float
---@field GradationOFFConfig float
---@field SphereColorConfig FLinearColor
---@field SpherePosConfig FVector2D
---@field SpherePowerConfig float
---@field SphereRadiusConfig float
---@field ShpereHardnessConfig float
---@field SphereReverseConfig float
---@field RimLightColorConfig FLinearColor
---@field RimLightWidthMinConfig float
---@field RimLightWidthMaxConfig float
---@field RTShadowColorConfig FLinearColor
---@field RTShadowColor_BlendConfig float
---@field GaussMaskTextureTopColorConfig FColor
---@field GaussMaskTextureBottomColorConfig FColor
local FCampCharaLookAdjust = {}



---@class FCampHeadPanel : FBaseHeadPanel
local FCampHeadPanel = {}


---@class FCampHologramTableRow : FTableRowBase
---@field ScaleGradient_Holo float
---@field Holog_Frame uint32
---@field TexA_EndRot float
---@field TexA_EndU float
---@field TexA_EndV float
---@field TexA_Scale float
---@field TexA_StartRot float
---@field TexA_StartU float
---@field TexA_StartV float
---@field TexB_EndRot float
---@field TexB_EndU float
---@field TexB_EndV float
---@field TexB_Scale float
---@field TexB_StartRot float
---@field TexB_StartU float
---@field TexB_StartV float
---@field TexC_EndRot float
---@field TexC_EndU float
---@field TexC_EndV float
---@field TexC_Scale float
---@field TexC_StartRot float
---@field TexC_StartU float
---@field TexC_StartV float
---@field TexD_EndRot float
---@field TexD_EndU float
---@field TexD_EndV float
---@field TexD_Scale float
---@field TexD_StartRot float
---@field TexD_StartU float
---@field TexD_StartV float
local FCampHologramTableRow = {}



---@class FCampModelControllerMotionItem
---@field pAnimSequence UAnimSequenceBase
local FCampModelControllerMotionItem = {}



---@class FCampParamTableCommonRow : FTableRowBase
---@field ListAllSlideAnimType EOneAnimType
---@field ListAllSlideFrame uint32
---@field ListAllSlideBackFrame uint32
---@field Edit_List_Cursor_Anim_Type EOneAnimType
---@field Edit_List_Cursor_Slide_Frame uint32
---@field Edit_List_Party_RedCursor_Anim_Type EOneAnimType
---@field Edit_List_Party_RedCursor_Slide_Frame uint32
---@field Edit_List_Commu_RedCursor_Anim_Type EOneAnimType
---@field Edit_List_Commu_RedCursor_Slide_Frame uint32
---@field ListRedSlideAnimType EOneAnimType
---@field ListRedSlideFrame uint32
---@field ListRedSlideWait uint32
---@field ListRedSlideBackFrame uint32
---@field HPSPFlashFrame uint32
---@field TabShakeAnimType EOneAnimType
---@field TabShakeFrame uint32
---@field TabLoopAnimType EOneAnimType
---@field TabLoopFrame uint32
---@field CampOKScaleAnimType EOneAnimType
---@field CampOKScaleFrame uint32
---@field CampOKScaleWait uint32
---@field CampOKEndScale float
---@field CampOKInScaleAnimType EOneAnimType
---@field CampOKInScaleFrame uint32
---@field CampOKInScaleWait uint32
---@field CampOKInEndScale float
---@field CampOKCaptureScale float
---@field PartyPanelInFlagSlideAnimType EOneAnimType
---@field PartyPanelInFlagSlideFrame uint32
---@field PartyPanelInFlagSlideBackFrame uint32
---@field WipeChangeMaskAAnimType EOneAnimType
---@field WipeChangeMaskAFrame uint32
---@field WipeChangeMaskBAnimType EOneAnimType
---@field WipeChangeMaskBFrame uint32
---@field WipeChangeMaskBWait uint32
---@field WipeChangeCaptureScale float
---@field WipeCloseMaskAFrame uint32
---@field WipeCloseMaskBWait uint32
---@field SuitekiAnimType EOneAnimType
---@field SuitekiFrame uint32
---@field HighpassBrightThreshold uint8
---@field HighpassBrightScale float
---@field AoItaColorHigh FColor
---@field AoItaColorMid FColor
---@field AoItaColorLow FColor
---@field GradAUpColorHigh FColor
---@field GradADownColorHigh FColor
---@field GradBUpColorHigh FColor
---@field GradBDownColorHigh FColor
---@field GradAUpColorMid FColor
---@field GradADownColorMid FColor
---@field GradBUpColorMid FColor
---@field GradBDownColorMid FColor
---@field GradAUpColorLow FColor
---@field GradADownColorLow FColor
---@field GradBUpColorLow FColor
---@field GradBDownColorLow FColor
---@field HeroCaptureBgColor FColor
---@field HeroGaussType EUIGaussType
---@field HeroGaussHorizontal uint8
---@field HeroGaussVertical uint8
---@field HeroGaussScale float
---@field HeroBlurPrev1Offset float
---@field HeroBlurPrev1Alpha uint8
---@field HeroBlurPrev2Offset float
---@field HeroBlurPrev2Alpha uint8
---@field NamiOneFrame uint32
---@field NamiAlpha float
---@field NamiGaussType EUIGaussType
---@field NamiTopAOfsPos FVector2D
---@field NamiTopAScale FVector2D
---@field NamiTopAColor FColor
---@field NamiTopAAddBlend boolean
---@field NamiTopBOfsPos FVector2D
---@field NamiTopBScale FVector2D
---@field NamiTopBColor FColor
---@field NamiTopBAddBlend boolean
---@field NamiSkillAOfsPos FVector2D
---@field NamiSkillAScale FVector2D
---@field NamiSkillAColor FColor
---@field NamiSkillAAddBlend boolean
---@field NamiSkillBOfsPos FVector2D
---@field NamiSkillBScale FVector2D
---@field NamiSkillBColor FColor
---@field NamiSkillBAddBlend boolean
---@field NamiItemAOfsPos FVector2D
---@field NamiItemAScale FVector2D
---@field NamiItemAColor FColor
---@field NamiItemAAddBlend boolean
---@field NamiItemBOfsPos FVector2D
---@field NamiItemBScale FVector2D
---@field NamiItemBColor FColor
---@field NamiItemBAddBlend boolean
---@field NamiEquipAOfsPos FVector2D
---@field NamiEquipAScale FVector2D
---@field NamiEquipAColor FColor
---@field NamiEquipAAddBlend boolean
---@field NamiEquipBOfsPos FVector2D
---@field NamiEquipBScale FVector2D
---@field NamiEquipBColor FColor
---@field NamiEquipBAddBlend boolean
---@field NamiPersonaAOfsPos FVector2D
---@field NamiPersonaAScale FVector2D
---@field NamiPersonaAColor FColor
---@field NamiPersonaAAddBlend boolean
---@field NamiPersonaBOfsPos FVector2D
---@field NamiPersonaBScale FVector2D
---@field NamiPersonaBColor FColor
---@field NamiPersonaBAddBlend boolean
---@field NamiStatusAOfsPos FVector2D
---@field NamiStatusAScale FVector2D
---@field NamiStatusAColor FColor
---@field NamiStatusAAddBlend boolean
---@field NamiStatusBOfsPos FVector2D
---@field NamiStatusBScale FVector2D
---@field NamiStatusBColor FColor
---@field NamiStatusBAddBlend boolean
---@field NamiQuestAOfsPos FVector2D
---@field NamiQuestAScale FVector2D
---@field NamiQuestAColor FColor
---@field NamiQuestAAddBlend boolean
---@field NamiQuestBOfsPos FVector2D
---@field NamiQuestBScale FVector2D
---@field NamiQuestBColor FColor
---@field NamiQuestBAddBlend boolean
---@field NamiCommuAOfsPos FVector2D
---@field NamiCommuAScale FVector2D
---@field NamiCommuAColor FColor
---@field NamiCommuAAddBlend boolean
---@field NamiCommuBOfsPos FVector2D
---@field NamiCommuBScale FVector2D
---@field NamiCommuBColor FColor
---@field NamiCommuBAddBlend boolean
---@field NamiCalendarAOfsPos FVector2D
---@field NamiCalendarAScale FVector2D
---@field NamiCalendarAColor FColor
---@field NamiCalendarAAddBlend boolean
---@field NamiCalendarBOfsPos FVector2D
---@field NamiCalendarBScale FVector2D
---@field NamiCalendarBColor FColor
---@field NamiCalendarBAddBlend boolean
---@field NamiSystemAOfsPos FVector2D
---@field NamiSystemAScale FVector2D
---@field NamiSystemAColor FColor
---@field NamiSystemAAddBlend boolean
---@field NamiSystemBOfsPos FVector2D
---@field NamiSystemBScale FVector2D
---@field NamiSystemBColor FColor
---@field NamiSystemBAddBlend boolean
---@field NamiTutorialAOfsPos FVector2D
---@field NamiTutorialAScale FVector2D
---@field NamiTutorialAColor FColor
---@field NamiTutorialAAddBlend boolean
---@field NamiTutorialBOfsPos FVector2D
---@field NamiTutorialBScale FVector2D
---@field NamiTutorialBColor FColor
---@field NamiTutorialBAddBlend boolean
---@field NamiConfigAOfsPos FVector2D
---@field NamiConfigAScale FVector2D
---@field NamiConfigAColor FColor
---@field NamiConfigAAddBlend boolean
---@field NamiConfigBOfsPos FVector2D
---@field NamiConfigBScale FVector2D
---@field NamiConfigBColor FColor
---@field NamiConfigBAddBlend boolean
---@field LightVecOfsTop FLinearColor
---@field LightVecOfsSkill FLinearColor
---@field LightVecOfsItem FLinearColor
---@field LightVecOfsEquip FLinearColor
---@field LightVecOfsPersona FLinearColor
---@field LightVecOfsStatus FLinearColor
---@field LightVecOfsQuest FLinearColor
---@field LightVecOfsCommu FLinearColor
---@field LightVecOfsCalender FLinearColor
---@field LightVecOfsSystem FLinearColor
---@field Edit_Key_Lock_Frame uint32
---@field Edit_GuideLine_X float
---@field Edit_StatusKeyLockFrame uint32
---@field Edit_Root_FillColor FLinearColor
---@field Edit_Root_Near float
---@field Edit_Root_Far float
---@field Edit_Skill_FillColor FLinearColor
---@field Edit_Skill_Near float
---@field Edit_Skill_Far float
---@field Edit_Item_FillColor FLinearColor
---@field Edit_Item_Near float
---@field Edit_Item_Far float
---@field Edit_Equip_FillColor FLinearColor
---@field Edit_Equip_Near float
---@field Edit_Equip_Far float
---@field Edit_Status_FillColor FLinearColor
---@field Edit_Status_Near float
---@field Edit_Status_Far float
---@field Edit_Quest_FillColor FLinearColor
---@field Edit_Quest_Near float
---@field Edit_Quest_Far float
---@field Edit_Commu_FillColor FLinearColor
---@field Edit_Commu_Near float
---@field Edit_Commu_Far float
---@field Edit_System_FillColor FLinearColor
---@field Edit_System_Near float
---@field Edit_System_Far float
---@field Edit_Config_FillColor FLinearColor
---@field Edit_Config_Near float
---@field Edit_Config_Far float
local FCampParamTableCommonRow = {}



---@class FCampParamTableCommuRow : FTableRowBase
---@field CommListInSilhouetteAnimType EOneAnimType
---@field CommListInSilhouetteFrame uint32
---@field CommListInSilhouetteWait uint32
---@field CommListInSilhouetteOriginal FVector2D
---@field CommListInSilhouetteTarget FVector2D
---@field CommListInSiroItaAnimType EOneAnimType
---@field CommListInSiroItaFrame uint32
---@field CommListInSiroItaWait uint32
---@field CommListOutSiroItaFrame uint32
---@field CommListInListAnimType EOneAnimType
---@field CommListInListFrame uint32
---@field CommListInListWait uint32
---@field CommListOutListFrame uint32
---@field CommDetlInDetailAnimType EOneAnimType
---@field CommDetlInDetailFrame uint32
---@field CommDetlInDetailWait uint32
---@field CommDetlOutDetailFrame uint32
---@field CommDetlInDescriAnimType EOneAnimType
---@field CommDetlInDescriFrame uint32
---@field CommDetlInDescriWait uint32
---@field CommDetlInMemberAnimType EOneAnimType
---@field CommDetlInMemberFrame uint32
---@field CommDetlInMemberWait uint32
---@field CommDetlInBustupAnimType EOneAnimType
---@field CommDetlInBustupFrame uint32
---@field CommDetlInBustupWait uint32
---@field CommDetlBustupChangeFrame uint32
---@field CommuCardAnimType EOneAnimType
---@field CommuCardFrameMin uint32
---@field CommuCardFrameMax uint32
---@field CommuCardWaitMin uint32
---@field CommuCardWaitMax uint32
---@field CommuCardScaleMin float
---@field CommuCardScaleMax float
---@field CommuCardXAccMin float
---@field CommuCardXAccMax float
---@field CommuCardRotAxis1Min float
---@field CommuCardRotAxis1Max float
---@field CommuCardRotAxis2Min float
---@field CommuCardRotAxis2Max float
local FCampParamTableCommuRow = {}



---@class FCampParamTableEquipRow : FTableRowBase
---@field CategoChangeOutAnimType EOneAnimType
---@field CategoChangeOutFrame uint32
---@field CategoChangeInAnimType EOneAnimType
---@field CategoChangeInFrame uint32
---@field EquipListChangeOutAnimType EOneAnimType
---@field EquipListChangeOutFrame uint32
---@field EquipListChangeInAnimType EOneAnimType
---@field EquipListChangeInFrame uint32
---@field EquipListEquipChangeOutAnimType EOneAnimType
---@field EquipListEquipChangeOutFrame uint32
---@field EquipListEquipChangeInAnimType EOneAnimType
---@field EquipListEquipChangeInFrame uint32
---@field EquipListParamArrowSelectFrame uint32
---@field EquipListParamArrowLoopFrame uint32
---@field EquipCompChangeInInfoWait uint32
---@field EquipInPartyPanelDist float
---@field EquipInSilhouetteAnimType EOneAnimType
---@field EquipInSilhouetteFrame uint32
---@field EquipInSilhouetteWait uint32
---@field EquipInSilhouetteOriginal FVector2D
---@field EquipInSilhouetteTarget FVector2D
---@field EquipInSiroItaAnimType EOneAnimType
---@field EquipInSiroItaFrame uint32
---@field EquipInSiroItaWait uint32
---@field EquipInAoItaAnimType EOneAnimType
---@field EquipInAoItaFrame uint32
---@field EquipInAoItaWait uint32
---@field EquipInTitleAnimType EOneAnimType
---@field EquipInTitleFrame uint32
---@field EquipInTitleWait uint32
---@field EquipInBgPlusAnimType EOneAnimType
---@field EquipInBgPlusFrame uint32
---@field EquipInBgPlusWait uint32
---@field EquipInCharaEquipDist float
---@field EquipInCharaEquipSlideAnimType EOneAnimType
---@field EquipInCharaEquipSlideFrame uint32
---@field EquipInCharaEquipSlideWait uint32
---@field EquipInCharaEquipSlideInterval uint32
---@field EquipInCharaEquipFadeFrame uint32
---@field EquipInPartyPanelWait uint32
---@field ToCateCharaEquipFadeFrame uint32
---@field ToCateSiroItaAnimType EOneAnimType
---@field ToCateSiroItaFrame uint32
---@field ToCateSiroItaWait uint32
---@field CategoInSelPartySlideAnimType EOneAnimType
---@field CategoInSelPartySlideFrame uint32
---@field CategoInSelPartyFadeFrame uint32
---@field CategoInBgPlusAnimType EOneAnimType
---@field CategoInBgPlusFrame uint32
---@field CategoInBgPlusWait uint32
---@field CategoInTabSlideAnimType EOneAnimType
---@field CategoInTabSlideFrame uint32
---@field CategoInCategoryDist float
---@field CategoInCategorySlideAnimType EOneAnimType
---@field CategoInCategorySlideFrame uint32
---@field CategoInCategorySlideInterval uint32
---@field CategoInCategoryFadeFrame uint32
---@field BackCateSelPartyOutAnimType EOneAnimType
---@field BackCateSelPartyOutFrame uint32
---@field BackCateSiroItaAnimType EOneAnimType
---@field BackCateSiroItaFrame uint32
---@field ToListCharaEquipOutFrame uint32
---@field ToListSiroItaAnimType EOneAnimType
---@field ToListSiroItaFrame uint32
---@field ListInPartyExBgSlideAnimType EOneAnimType
---@field ListInPartyExBgSlideFrame uint32
---@field ListInPartyExInfoFadeFrame uint32
---@field ListInEquipListDist float
---@field ListInEquipListSlideAnimType EOneAnimType
---@field ListInEquipListSlideFrame uint32
---@field ListInEquipListSlideWait uint32
---@field ListInEquipListFadeFrame uint32
---@field BackEquipListOutFrame uint32
---@field ToCompBg1ScaleAnimType EOneAnimType
---@field ToCompBg1ScaleFrame uint32
---@field ToCompBg1ScaleWait uint32
---@field ToCompBg2ScaleFrame uint32
---@field ToCompBg2ScaleWait uint32
---@field CompInSelectListSlideAnimType EOneAnimType
---@field CompInSelectListSlideFrame uint32
---@field CompInSelectListSlideWait uint32
---@field CompInScrollBarSlideAnimType EOneAnimType
---@field CompInScrollBarSlideFrame uint32
---@field CompInArrowSlideAnimType EOneAnimType
---@field CompInArrowSlideFrame uint32
---@field CompInDetailSlideAnimType EOneAnimType
---@field CompInDetailSlideFrame uint32
---@field BackEquipCompOutFrame uint32
---@field BackCompBgScaleAnimType EOneAnimType
---@field BackCompBgScaleFrame uint32
---@field BackCompBgScaleWait uint32
local FCampParamTableEquipRow = {}



---@class FCampParamTableHologRow : FTableRowBase
---@field HologAnimType EOneAnimType
---@field HologTransFrame uint32
---@field HologTransWait uint32
---@field HologColorWait uint32
local FCampParamTableHologRow = {}



---@class FCampParamTableItemRow : FTableRowBase
---@field ItemInDist float
---@field ItemSilhouetteAnimType EOneAnimType
---@field ItemSilhouetteFrame uint32
---@field ItemSilhouetteWait uint32
---@field ItemSilhouetteOriginal FVector2D
---@field ItemSilhouetteTarget FVector2D
---@field ItemSiroItaAnimType EOneAnimType
---@field ItemSiroItaFrame uint32
---@field ItemSiroItaWait uint32
---@field ItemTitleAnimType EOneAnimType
---@field ItemTitleFrame uint32
---@field ItemTitleWait uint32
---@field ItemListAnimType EOneAnimType
---@field ItemListFrame uint32
---@field ItemListWait uint32
---@field ItemTabAnimType EOneAnimType
---@field ItemTabFrame uint32
---@field ItemTabWait uint32
local FCampParamTableItemRow = {}



---@class FCampParamTablePersonaRow : FTableRowBase
---@field PersonaEquipScaleAnimType EOneAnimType
---@field PersonaEquipScaleFrame uint32
---@field PersonaEquipScaleWait uint32
---@field PersonaEquipRotAnimType EOneAnimType
---@field PersonaEquipRotFrame uint32
---@field PersonaEquipRotWait uint32
---@field PersonaEquipSlideAnimType EOneAnimType
---@field PersonaEquipSlideFrame uint32
---@field PersonaEquipSlideWait uint32
---@field PersonaLightSpeed float
---@field PersonaWaveSpeed float
---@field PersonaArcanaFadeAnimType EOneAnimType
---@field PersonaArcanaFadeFrame uint32
---@field PersonaInDist float
---@field PersonaInSilhouetteAnimType EOneAnimType
---@field PersonaInSilhouetteFrame uint32
---@field PersonaInSilhouetteWait uint32
---@field PersonaInSilhouetteOriginal FVector2D
---@field PersonaInSilhouetteTarget FVector2D
---@field PersonaInPersonaAnimType EOneAnimType
---@field PersonaInPersonaFrame uint32
---@field PersonaInPersonaWait uint32
---@field PersonaInPersonaDist float
---@field PersonaInSiroItaAnimType EOneAnimType
---@field PersonaInSiroItaFrame uint32
---@field PersonaInSiroItaWait uint32
---@field PersonaInTitleAnimType EOneAnimType
---@field PersonaInTitleFrame uint32
---@field PersonaInTitleWait uint32
---@field PersonaInListAnimType EOneAnimType
---@field PersonaInListFrame uint32
---@field PersonaInListWait uint32
---@field PersonaInArcanaAnimType EOneAnimType
---@field PersonaInArcanaFrame uint32
---@field PersonaInArcanaWait uint32
---@field ItemPerListInAnimType EOneAnimType
---@field ItemPerListInFrame uint32
---@field ItemPerListInWait uint32
---@field ItemPerListInBackFrame uint32
---@field ItemPerListInBgAnimType EOneAnimType
---@field ItemPerListInBgFrame uint32
---@field ItemPerListInBgBackFrame uint32
local FCampParamTablePersonaRow = {}



---@class FCampParamTableRankUpRow : FTableRowBase
---@field HumanSankakuRed FColor
---@field HumanSankakuGreen FColor
---@field HumanBokasiRed FColor
---@field HumanBokasiGreen FColor
---@field HumanPointUpLightblue FColor
---@field HumanBrainBlue FColor
---@field HumanCharmBlue FColor
---@field HumanCourageBlue FColor
---@field CampHumanBrainBlue FColor
---@field CampHumanCharmBlue FColor
---@field CampHumanCourageBlue FColor
---@field ParameterNameYellow FColor
---@field CircleYellow FColor
---@field HelpTextYellow FColor
---@field PointUpTextStartPos FVector2D
---@field PointUpTextEndPos FVector2D
---@field RankUpTextStartPos FVector2D
---@field RankUpTextEndPos FVector2D
---@field HumanInBgSankakuFrame uint32
---@field HumanInSankakuFrame uint32
---@field HumanInAllBGFrame uint32
---@field HumanInHamonFrame uint32
---@field HumanInRankRotFrame uint32
---@field HumanInRankSlideFrame uint32
---@field HumanInHelpSlideFrame uint32
---@field HumanInTitleSlideFrame uint32
---@field HumanInBgSankakuFrameWait uint32
---@field HumanInSankakuFrameWaitWhite uint32
---@field HumanInSankakuFrameWaitGreen uint32
---@field HumanInSankakuFrameWaitRed uint32
---@field HumanInAllBGFrameWait uint32
---@field HumanInHamonFrameWait uint32
---@field HumanInHamonFrameWaitSecond uint32
---@field HumanInHamonFrameWaitThird uint32
---@field HumanInRankRotFrameWait uint32
---@field HumanInRankSlideFrameWait uint32
---@field HumanInHelpSlideFrameWait uint32
---@field HumanInTitleSlideFrameWait uint32
---@field HumanInBgSankakuType EOneAnimType
---@field HumanInSankakuType EOneAnimType
---@field HumanInAllBGType EOneAnimType
---@field HumanInHamonType EOneAnimType
---@field HumanInRankRotType EOneAnimType
---@field HumanInRankSlideType EOneAnimType
---@field HumanInHelpSlideType EOneAnimType
---@field HumanInTitleSlideType EOneAnimType
---@field HumanPointUpTextSlideOneFrame uint32
---@field HumanPointUpTextSlideTwoFrame uint32
---@field HumanPointUpTextSlideThreeFrame uint32
---@field HumanPointUpTextFadeOneFrame uint32
---@field HumanPointUpTextFadeTwoFrame uint32
---@field HumanPointUpTextFadeThreeFrame uint32
---@field HumanPointUpHamonScaleFrame uint32
---@field HumanPointUpHamonFadeFrame uint32
---@field HumanPointUpBlueCircleFadeOneFrame uint32
---@field HumanPointUpBlueCircleFadeTwoFrame uint32
---@field HumanPointUpBlueCircleFadeThreeFrame uint32
---@field HumanPointUpBlueCircleScaleOneFrame uint32
---@field HumanPointUpBlueCircleScaleTwoFrame uint32
---@field HumanPointUpBlueCircleScaleThreeFrame uint32
---@field HumanPointUpTextSlideOneFrameWait uint32
---@field HumanPointUpTextSlideTwoFrameWait uint32
---@field HumanPointUpTextSlideThreeFrameWait uint32
---@field HumanPointUpTextFadeOneFrameWait uint32
---@field HumanPointUpTextFadeTwoFrameWait uint32
---@field HumanPointUpTextFadeThreeFrameWait uint32
---@field HumanPointUpHamonScaleFrameWait uint32
---@field HumanPointUpHamonFadeFrameWait uint32
---@field HumanPointUpBlueCircleFadeOneFrameWait uint32
---@field HumanPointUpBlueCircleFadeTwoFrameWait uint32
---@field HumanPointUpBlueCircleFadeThreeFrameWait uint32
---@field HumanPointUpBlueCircleScaleOneFrameWait uint32
---@field HumanPointUpBlueCircleScaleTwoFrameWait uint32
---@field HumanPointUpBlueCircleScaleThreeFrameWait uint32
---@field HumanPointUpTextSlideOneType EOneAnimType
---@field HumanPointUpTextSlideTwoType EOneAnimType
---@field HumanPointUpTextSlideThreeType EOneAnimType
---@field HumanPointUpTextFadeOneType EOneAnimType
---@field HumanPointUpTextFadeTwoType EOneAnimType
---@field HumanPointUpTextFadeThreeType EOneAnimType
---@field HumanPointUpHamonScaleType EOneAnimType
---@field HumanPointUpHamonFadeType EOneAnimType
---@field HumanPointUpBlueCircleFadeScaleOneType EOneAnimType
---@field HumanPointUpBlueCircleFadeScaleTwoType EOneAnimType
---@field HumanPointUpBlueCircleFadeScaleThreeType EOneAnimType
---@field HumanRankUpTextSlideOneFrame uint32
---@field HumanRankUpTextSlideTwoFrame uint32
---@field HumanRankUpTextSlideThreeFrame uint32
---@field HumanRankUpTextFadeOneFrame uint32
---@field HumanRankUpTextFadeTwoFrame uint32
---@field HumanRankUpTextFadeThreeFrame uint32
---@field HumanRankUpHamonScaleFrame uint32
---@field HumanRankUpHamonFadeFrame uint32
---@field HumanRankUpWhiteCircleColorOneFrame uint32
---@field HumanRankUpWhiteCircleColorTwoFrame uint32
---@field HumanRankUpWhiteCircleColorThreeFrame uint32
---@field HumanRankUpWhiteCircleScaleOneFrame uint32
---@field HumanRankUpWhiteCircleScaleTwoFrame uint32
---@field HumanRankUpWhiteCircleScaleThreeFrame uint32
---@field HumanRankUpTextSlideOneFrameWait uint32
---@field HumanRankUpTextSlideTwoFrameWait uint32
---@field HumanRankUpTextSlideThreeFrameWait uint32
---@field HumanRankUpTextFadeOneFrameWait uint32
---@field HumanRankUpTextFadeTwoFrameWait uint32
---@field HumanRankUpTextFadeThreeFrameWait uint32
---@field HumanRankUpHamonScaleFrameWait uint32
---@field HumanRankUpHamonFadeFrameWait uint32
---@field HumanRankUpWhiteCircleColorOneFrameWait uint32
---@field HumanRankUpWhiteCircleColorTwoFrameWait uint32
---@field HumanRankUpWhiteCircleColorThreeFrameWait uint32
---@field HumanRankUpWhiteCircleScaleOneFrameWait uint32
---@field HumanRankUpWhiteCircleScaleTwoFrameWait uint32
---@field HumanRankUpWhiteCircleScaleThreeFrameWait uint32
---@field HumanRankUpTextSlideOneType EOneAnimType
---@field HumanRankUpTextSlideTwoType EOneAnimType
---@field HumanRankUpTextSlideThreeType EOneAnimType
---@field HumanRankUpTextFadeOneType EOneAnimType
---@field HumanRankUpTextFadeTwoType EOneAnimType
---@field HumanRankUpTextFadeThreeType EOneAnimType
---@field HumanRankUpHamonScaleType EOneAnimType
---@field HumanRankUpHamonFadeType EOneAnimType
---@field HumanRankUpWhiteCircleColorOneType EOneAnimType
---@field HumanRankUpWhiteCircleColorTwoType EOneAnimType
---@field HumanRankUpWhiteCircleColorThreeType EOneAnimType
---@field HumanRankUpWhiteCircleScaleOneType EOneAnimType
---@field HumanRankUpWhiteCircleScaleTwoType EOneAnimType
---@field HumanRankUpWhiteCircleScaleThreeType EOneAnimType
---@field HumanRankUpAllCircleScaleFrame uint32
---@field HumanRankUpCurrentNumberFadeFrame uint32
---@field HumanRankUpNextNumberFadeSlideFrame uint32
---@field HumanRankUpCurrentHelpTextFadeFrame uint32
---@field HumanRankUpNextHelpTextFadeSlideFrame uint32
---@field HumanRankUpMaskCircleFrame uint32
---@field HumanRankUpAllCircleScaleFrameWait uint32
---@field HumanRankUpCurrentNumberFadeFrameWait uint32
---@field HumanRankUpNextNumberFadeSlideFrameWait uint32
---@field HumanRankUpCurrentHelpTextFadeFrameWait uint32
---@field HumanRankUpNextHelpTextFadeSlideFrameWait uint32
---@field HumanRankUpMaskCircleFrameWait uint32
---@field HumanRankUpAllCircleScaleType EOneAnimType
---@field HumanRankUpCurrentNumberFadeType EOneAnimType
---@field HumanRankUpNextNumberFadeSlideType EOneAnimType
---@field HumanRankUpCurrentHelpTextFadeType EOneAnimType
---@field HumanRankUpNextHelpTextFadeSlideType EOneAnimType
---@field HumanRankUpMaskCircleType EOneAnimType
---@field HumanRankUpNextNumberFadeFrame uint32
---@field HumanRankUpNextHelpTextFadeFrame uint32
---@field HumanRankUpNextNumberFadeFrameWait uint32
---@field HumanRankUpNextHelpTextFadeFrameWait uint32
---@field HumanRankUpNextNumberFadeType EOneAnimType
---@field HumanRankUpNextHelpTextFadeType EOneAnimType
---@field KeyHelpFadeInFrame uint32
---@field HumanKeyHelpInFrameWait uint32
---@field KeyHelpFadeOutFrame uint32
---@field HumanKeyHelpOutFrameWait uint32
---@field KeyHelpMaskSlideOneFrame uint32
---@field KeyHelpMaskSlideTwoFrame uint32
---@field KeyHelpMaskSlideThreeFrame uint32
---@field KeyHelpMaskSlideOneWaitFrame uint32
---@field KeyHelpMaskSlideTwoWaitFrame uint32
---@field KeyHelpMaskSlideThreeWaitFrame uint32
---@field KeyHelpMaskSlideOneType EOneAnimType
---@field KeyHelpMaskSlideTwoType EOneAnimType
---@field KeyHelpMaskSlideThreeType EOneAnimType
---@field KeyHelpMaskSlideOneWaitType EOneAnimType
---@field KeyHelpMaskSlideTwoWaitType EOneAnimType
---@field KeyHelpMaskSlideThreeWaitType EOneAnimType
---@field KeyHelpOutScaleType EOneAnimType
---@field KeyHelpOutScaleFrame uint32
---@field KeyHelpFadeOutScaleSize float
---@field MaxHamonShiftWaitFlame uint32
---@field HumanMaxHamonScaleInFlame uint32
---@field HumanMaxHamonScaleInFlameWait uint32
---@field HumanMaxHamonFadeInAllFlameWait uint32
---@field HumanMaxHamonFadeInFlame uint32
---@field HumanMaxHamonFadeInFlameWait uint32
---@field HumanMaxHamonFadeOutFlame uint32
---@field HumanMaxHamonFadeOutFlameWait uint32
---@field HumanMaxHamonFadeOutLastFlame uint32
---@field HumanMaxHamonFadeOutLastFlameWait uint32
---@field HumanMaxHamonScaleOutType EOneAnimType
---@field MaxTriangleBlurFadeInFlame uint32
---@field MaxTriangleBlurFadeInFlameWait uint32
---@field MaxTriangleBlurFadeOutFlame uint32
---@field HumanMaxCircleFadeInFlame uint32
---@field HumanMaxCircleFadeInFlameWait uint32
---@field HumanMaxCircleFadeOutFlame uint32
---@field MaxCircleFinishFlameWait uint32
---@field HumanMaxHamonScaleType EOneAnimType
---@field HumanMaxHamonFadeInType EOneAnimType
---@field HumanMaxHamonFadeOutType EOneAnimType
---@field MaxTriangleBlurFadeInType EOneAnimType
---@field MaxTriangleBlurFadeOutType EOneAnimType
---@field HumanMaxCircleFadeInType EOneAnimType
---@field HumanMaxCircleFadeTwoType EOneAnimType
---@field HumanCircleFadeLoop_Wait_0 uint32
---@field HumanCircleFadeLoop_Frame_0 uint32
---@field HumanCircleFadeLoop_Wait_1 uint32
---@field HumanCircleFadeLoop_Frame_1 uint32
---@field HumanCircleColorLoop_Wait_0 uint32
---@field HumanCircleColorLoop_Frame_0 uint32
---@field HumanCircleColorLoop_Wait_1 uint32
---@field HumanCircleColorLoop_Frame_1 uint32
---@field HumanCircleScaleUpLoop_Wait uint32
---@field HumanCircleScaleUpLoop_Frame uint32
---@field HumanCircleFadeLoopType EOneAnimType
---@field HumanCircleScaleLoopType EOneAnimType
---@field HumanCircleColorLoopType EOneAnimType
---@field HumanPlusHamonFlame uint32
---@field HumanCircleLoopStartWait uint32
---@field HumanOutHelpSlideFrame uint32
---@field HumanOutTitleSlideFrame uint32
---@field HumanOutHamonFrame uint32
---@field HumanOutSankakuFrame uint32
---@field HumanOutRankRotFrame uint32
---@field HumanOutBgSankakuFrame uint32
---@field HumanOutAllBgFrame uint32
---@field HumanOutHelpSlideFrameWait uint32
---@field HumanOutTitleSlideFrameWait uint32
---@field HumanOutHamonFrameWait uint32
---@field HumanOutSankakuFrameWait uint32
---@field HumanOutRankRotFrameWait uint32
---@field HumanOutBgSankakuFrameWait uint32
---@field HumanOutAllBgFrameWait uint32
---@field HumanOutHelpSlideType EOneAnimType
---@field HumanOutTitleSlideType EOneAnimType
---@field HumanOutHamonType EOneAnimType
---@field HumanOutSankakuType EOneAnimType
---@field HumanOutRankRotType EOneAnimType
---@field HumanOutBgSankakuType EOneAnimType
---@field HumanOutAllBgType EOneAnimType
---@field HumanKeyHelpOutType EOneAnimType
---@field HumanHamonLoopScaleDownFrame uint32
---@field HumanHamonLoopScaleUpFrameWait uint32
---@field HumanHamonLoopScaleDownType EOneAnimType
---@field HumanHamonLoopWaitFrame uint32
---@field HumanHamonLoopWaitType EOneAnimType
---@field HumanHamonLoopScaleUpFrame uint32
---@field HumanHamonLoopScaleUpType EOneAnimType
local FCampParamTableRankUpRow = {}



---@class FCampParamTableRow : FTableRowBase
---@field Dummy uint32
local FCampParamTableRow = {}



---@class FCampParamTableSkillRow : FTableRowBase
---@field SkillInDist float
---@field SkillSilhouetteAnimType EOneAnimType
---@field SkillSilhouetteFrame uint32
---@field SkillSilhouetteWait uint32
---@field SkillSilhouetteOriginal FVector2D
---@field SkillSilhouetteTarget FVector2D
---@field SkillSiroItaAnimType EOneAnimType
---@field SkillSiroItaFrame uint32
---@field SkillSiroItaWait uint32
---@field SkillTitleAnimType EOneAnimType
---@field SkillTitleFrame uint32
---@field SkillTitleWait uint32
---@field SkillListAnimType EOneAnimType
---@field SkillListFrame uint32
---@field SkillListWait uint32
---@field SkillPartyAnimType EOneAnimType
---@field SkillPartyFrame uint32
---@field SkillPartyWait uint32
---@field SkillPartyFadeFrame uint32
---@field SkillPartyInterval uint32
---@field GunRefRotAnimType EOneAnimType
---@field GunRefInFrame uint32
---@field GunRefInWait uint32
---@field GunRefNextFrame uint32
---@field GunRefPos FVector2D
---@field GunRefOffset float
local FCampParamTableSkillRow = {}



---@class FCampParamTableStatusRow : FTableRowBase
---@field ListTabChangeFrame uint32
---@field StatListPartyRightSideFadeOutFrame uint32
---@field StatListPartyRightSideFadeInFrame uint32
---@field StatListKoshoLogoRotFrame uint32
---@field StatListGlassCharaFrame uint32
---@field StatListGlassCharaWait uint32
---@field StatListBgNoiseRandFrameMin uint32
---@field StatListBgNoiseRandFrameMax uint32
---@field StatListInDist float
---@field StatListInSilhouetteAnimType EOneAnimType
---@field StatListInSilhouetteFrame uint32
---@field StatListInSilhouetteWait uint32
---@field StatListInSilhouetteOriginal FVector2D
---@field StatListInSilhouetteTarget FVector2D
---@field StatListInKoshoAnimType EOneAnimType
---@field StatListInKoshoFrame uint32
---@field StatListInKoshoWait uint32
---@field StatListInTabAnimType EOneAnimType
---@field StatListInTabFrame uint32
---@field StatListInTabWait uint32
---@field StatListBgNoiseAnimType EOneAnimType
---@field StatListBgNoiseFrame uint32
---@field StatListBgTextAnimType EOneAnimType
---@field StatListBgTextFrame uint32
---@field StatListOpeListAnimType EOneAnimType
---@field StatListOpeListFrame uint32
---@field StatDetailRotation float
---@field StatDetailInfoSlideAnimType EOneAnimType
---@field StatDetailInfoSlideFrame uint32
---@field StatDetailBgNumSlideAnimType EOneAnimType
---@field StatDetailBgNumSlideOutFrame uint32
---@field StatDetailBgNumSlideInFrame uint32
---@field StatDetailHanshaSlideAnimType EOneAnimType
---@field StatDetailHanshaSlideFrame uint32
---@field StatDetailHahenShadowSlideAnimType EOneAnimType
---@field StatDetailHahenShadowSlideFrame uint32
---@field StatDetailCharaShadowSlideAnimType EOneAnimType
---@field StatDetailCharaShadowSlideFrame uint32
---@field StatDetailLeaderRotAnimType EOneAnimType
---@field StatDetailLeaderRotOutFrame uint32
---@field StatDetailLeaderRotInFrame uint32
---@field StatDetailInOutlineAnimType EOneAnimType
---@field StatDetailInOutlineFrame uint32
---@field StatDetailInOutlineWait uint32
---@field StatDetailInOutlineOutFrame uint32
---@field StatDetailPanelSlideAnimType EOneAnimType
---@field StatDetailPanelSlideFrame uint32
---@field StatDetailToTheurLeaderRotFrame uint32
---@field StatDetailToTheurDetailInfoSlideAnimType EOneAnimType
---@field StatDetailToTheurDetailInfoSlideFrame uint32
---@field StatDetailToTheurBgNumSlideFrame uint32
---@field HumanHamonAlphaFrameDown uint32
---@field HumanHamonAlphaFrameUp uint32
---@field HumanHamonAlphaFrameStay uint32
---@field HumanHamonAlphaInterval uint32
---@field HumanSankakuRed FColor
---@field HumanSankakuGreen FColor
---@field HumanBokasiRed FColor
---@field HumanBokasiGreen FColor
---@field HumanInBgSankakuFrame uint32
---@field HumanInSankakuFrame uint32
---@field HumanInHamonFrame uint32
---@field HumanInRankRotFrame uint32
---@field HumanInRankSlideFrame uint32
---@field HumanInHelpSlideFrame uint32
---@field HumanInTitleSlideFrame uint32
---@field HumanPointUpTextSlideOneFrame uint32
---@field HumanPointUpTextSlideTwoFrame uint32
---@field HumanPointUpTextSlideThreeFrame uint32
---@field HumanPointUpTextFadeOneFrame uint32
---@field HumanPointUpTextFadeTwoFrame uint32
---@field HumanPointUpTextFadeThreeFrame uint32
---@field HumanPointUpHamonScaleFrame uint32
---@field HumanPointUpHamonFadeFrame uint32
---@field HumanPointUpBlueCircleFadeScaleOneFrame uint32
---@field HumanPointUpBlueCircleFadeScaleTwoFrame uint32
---@field HumanPointUpBlueCircleFadeScaleThreeFrame uint32
---@field HumanRankUpTextSlideOneFrame uint32
---@field HumanRankUpTextSlideTwoFrame uint32
---@field HumanRankUpTextSlideThreeFrame uint32
---@field HumanRankUpTextFadeOneFrame uint32
---@field HumanRankUpTextFadeTwoFrame uint32
---@field HumanRankUpTextFadeThreeFrame uint32
---@field HumanRankUpHamonScaleFrame uint32
---@field HumanRankUpHamonFadeFrame uint32
---@field HumanRankUpWhiteCircleColorOneFrame uint32
---@field HumanRankUpWhiteCircleColorTwoFrame uint32
---@field HumanRankUpWhiteCircleColorThreeFrame uint32
---@field HumanRankUpWhiteCircleScaleOneFrame uint32
---@field HumanRankUpWhiteCircleScaleTwoFrame uint32
---@field HumanRankUpWhiteCircleScaleThreeFrame uint32
---@field HumanRankUpAllCircleScaleFrame uint32
---@field HumanRankUpCurrentNumberFadeFrame uint32
---@field HumanRankUpNextNumberFadeSlideFrame uint32
---@field HumanRankUpCurrentHelpTextFadeFrame uint32
---@field HumanRankUpNextHelpTextFadeSlideFrame uint32
---@field HumanRankUpMaskCircleFrame uint32
---@field KeyHelpFadeFrame uint32
---@field KeyHelpMaskSlideOneFrame uint32
---@field KeyHelpMaskSlideTwoFrame uint32
---@field KeyHelpMaskSlideThreeFrame uint32
---@field KeyHelpMaskSlideOneWaitFrame uint32
---@field KeyHelpMaskSlideTwoWaitFrame uint32
---@field KeyHelpMaskSlideThreeWaitFrame uint32
---@field HumanMaxHamonScaleFlame uint32
---@field HumanMaxHamonFadeOneFlame uint32
---@field HumanMaxHamonFadeTwoFlame uint32
---@field HumanMaxCircleFadeOneFlame uint32
---@field HumanMaxCircleFadeTwoFlame uint32
---@field HumanCircleLoopFlame uint32
---@field HumanPlusHamonFlame uint32
---@field HumanOutHelpSlideFrame uint32
---@field HumanOutHamonFrame uint32
---@field HumanOutSankakuFrame uint32
---@field HumanOutRankRotFrame uint32
---@field HumanOutBgSankakuFrame uint32
---@field HumanHamonLoopScaleDownFrame uint32
---@field HumanHamonLoopWaitFrame uint32
---@field HumanHamonLoopScaleUpFrame uint32
---@field FldTheurPanelSlideAnimType EOneAnimType
---@field FldTheurPanelSlideFrame uint32
---@field FldTheurPanelSlideWait uint32
---@field FldTheurBgNumSlideFrame uint32
---@field FldTheurBgNumSlideWait uint32
---@field FldTheurBustupSlideAnimType EOneAnimType
---@field FldTheurBustupSlideInFrame uint32
---@field FldTheurBustupSlideInWait uint32
---@field FldTheurBustupSlideOutFrame uint32
---@field TheurCharaMaskColor FColor
---@field TheurCharaPosHero FVector2D
---@field TheurShadowPosHero FVector2D
---@field TheurCharaPosYukari FVector2D
---@field TheurShadowPosYukari FVector2D
---@field TheurCharaPosJunpei FVector2D
---@field TheurShadowPosJunpei FVector2D
---@field TheurCharaPosSanada FVector2D
---@field TheurShadowPosSanada FVector2D
---@field TheurCharaPosMituru FVector2D
---@field TheurShadowPosMituru FVector2D
---@field TheurCharaPosFuka FVector2D
---@field TheurShadowPosFuka FVector2D
---@field TheurCharaPosAegis FVector2D
---@field TheurShadowPosAegis FVector2D
---@field TheurCharaPosAmada FVector2D
---@field TheurShadowPosAmada FVector2D
---@field TheurCharaPosKoromaru FVector2D
---@field TheurShadowPosKoromaru FVector2D
---@field TheurCharaPosAragaki FVector2D
---@field TheurShadowPosAragaki FVector2D
---@field Edit_MaskA_InAnimation_SlideIn_Type EOneAnimType
---@field Edit_MaskA_InAnimation_SlideIn_Frame int32
---@field Edit_MaskA_InAnimation_SlideIn_Delay int32
---@field Edit_MaskA_OutAnimation_SlideIn_Type EOneAnimType
---@field Edit_MaskA_OutAnimation_SlideIn_Frame int32
---@field Edit_MaskA_OutAnimation_SlideIn_Delay int32
---@field Edit_MaskA_Change_SlideIn_Type EOneAnimType
---@field Edit_MaskA_Change_SlideIn_Frame int32
---@field Edit_MaskA_Change_SlideIn_Delay int32
---@field Edit_MaskB_InAnimation_SlideIn_Type EOneAnimType
---@field Edit_MaskB_InAnimation_SlideIn_Frame int32
---@field Edit_MaskB_InAnimation_SlideIn_Delay int32
---@field Edit_MaskB_OutAnimation_SlideIn_Type EOneAnimType
---@field Edit_MaskB_OutAnimation_SlideIn_Frame int32
---@field Edit_MaskB_OutAnimation_SlideIn_Delay int32
---@field Edit_MaskB_Change_SlideIn_Type EOneAnimType
---@field Edit_MaskB_Change_SlideIn_Frame int32
---@field Edit_MaskB_Change_SlideIn_Delay int32
---@field Edit_CharacterShadow_InAnimation_SlideIn_Type EOneAnimType
---@field Edit_CharacterShadow_InAnimation_SlideIn_Frame int32
---@field Edit_CharacterShadow_InAnimation_SlideIn_Delay int32
---@field Edit_CharacterShadow_Change_SlideIn_Type EOneAnimType
---@field Edit_CharacterShadow_Change_SlideIn_Frame int32
---@field Edit_CharacterShadow_Change_SlideIn_Delay int32
---@field Edit_Theurgia_Icon_Fade_In_Frame int32
---@field Edit_Theurgia_Icon_Fade_In_Delay int32
local FCampParamTableStatusRow = {}



---@class FCampParamTableSystemRow : FTableRowBase
---@field SystemTopInMenuDist float
---@field SystemTopInTopMenuFrame1 uint32
---@field SystemTopInTopMenuFrame2 uint32
---@field SystemTopInTopMenuRotFrame uint32
---@field SystemTopInAoItaAnimType EOneAnimType
---@field SystemTopInAoItaFrame uint32
---@field SystemTopInAoItaWait uint32
---@field SystemTopInTitleAnimType EOneAnimType
---@field SystemTopInTitleFrame uint32
---@field SystemTopInTitleWait uint32
---@field SystemTopTutorialOnPos FVector2D
---@field SystemTopTutorialOnRot float
---@field SystemTopConfigOnPos FVector2D
---@field SystemTopConfigOnRot float
---@field SystemTopDictionaryOnPos FVector2D
---@field SystemTopDictionaryOnRot float
---@field SystemTopDataloadOnPos FVector2D
---@field SystemTopDataloadOnRot float
---@field SystemTopDatasaveOnPos FVector2D
---@field SystemTopDatasaveOnRot float
---@field SystemTopRollbackOnPos FVector2D
---@field SystemTopRollbackOnRot float
---@field SystemTopTitleOnPos FVector2D
---@field SystemTopTitleOnRot float
---@field SystemTopTutorialOffPos FVector2D
---@field SystemTopTutorialOffRot float
---@field SystemTopConfigOffPos FVector2D
---@field SystemTopConfigOffRot float
---@field SystemTopDictionaryOffPos FVector2D
---@field SystemTopDictionaryOffRot float
---@field SystemTopDataloadOffPos FVector2D
---@field SystemTopDataloadOffRot float
---@field SystemTopDatasaveOffPos FVector2D
---@field SystemTopDatasaveOffRot float
---@field SystemTopRollbackOffPos FVector2D
---@field SystemTopRollbackOffRot float
---@field SystemTopTitleOffPos FVector2D
---@field SystemTopTitleOffRot float
---@field Edit_CursorOn_Tutorial_Text_Scale FVector2D
---@field Edit_CursorOn_Tutorial_Cursor_Scale FVector2D
---@field Edit_CursorOn_Config_Text_Scale FVector2D
---@field Edit_CursorOn_Config_Cursor_Scale FVector2D
---@field Edit_CursorOn_Dictionary_Text_Scale FVector2D
---@field Edit_CursorOn_Dictionary_Cursor_Scale FVector2D
---@field Edit_CursorOn_DataLoad_Text_Scale FVector2D
---@field Edit_CursorOn_DataLoad_Cursor_Scale FVector2D
---@field Edit_CursorOn_DataSave_Text_Scale FVector2D
---@field Edit_CursorOn_DataSave_Cursor_Scale FVector2D
---@field Edit_CursorOn_RollBack_Text_Scale FVector2D
---@field Edit_CursorOn_RollBack_Cursor_Scale FVector2D
---@field Edit_CursorOn_ReturnToTitle_Text_Scale FVector2D
---@field Edit_CursorOn_ReturnToTitle_Cursor_Scale FVector2D
---@field Edit_CursorOn_Tutorial_Cursor_Angle float
---@field Edit_CursorOn_Config_Cursor_Angle float
---@field Edit_CursorOn_Dictionary_Cursor_Angle float
---@field Edit_CursorOn_DataLoad_Cursor_Angle float
---@field Edit_CursorOn_DataSave_Cursor_Angle float
---@field Edit_CursorOn_RollBack_Cursor_Angle float
---@field Edit_CursorOn_ReturnToTitle_Cursor_Angle float
local FCampParamTableSystemRow = {}



---@class FCampParamTableTopRow : FTableRowBase
---@field TopInDist float
---@field TopInMenuDist float
---@field TopInTitleAnimType EOneAnimType
---@field TopInTitleFrame uint32
---@field TopInTitleWait uint32
---@field TopInMenuAnimType EOneAnimType
---@field TopInMenuFrame uint32
---@field TopInMenuWait uint32
---@field TopInMenuInterval uint32
---@field TopInWhiteCursorAnimType EOneAnimType
---@field TopInWhiteCursorFrame uint32
---@field TopInWhiteCursorWait uint32
---@field TopInRedCursorAnimType EOneAnimType
---@field TopInRedCursorFrame uint32
---@field TopInRedCursorWait uint32
---@field Edit_Top_Reselect_Key_Lock_Frame uint32
local FCampParamTableTopRow = {}



---@class FCharacterSimpleLipsAnimAppListener
---@field SimpleLipsAnimParam FCharacterSimpleLipsAnimAppParam
local FCharacterSimpleLipsAnimAppListener = {}



---@class FCharacterSimpleLipsAnimAppParam
---@field CharcterCategoryType EAppCharCategoryType
---@field CharaIndexID int32
---@field RequestedTotalTime float
---@field LipsPlayRate float
---@field StartLipsDelaySec float
---@field LipACustomCurve UCurveFloat
---@field CharaActorPtr AActor
---@field PlayerMajorID int32
---@field PlayerMinorID int32
local FCharacterSimpleLipsAnimAppParam = {}



---@class FChristmasEventData
---@field Mail FChristmasEventMailData
---@field Events TArray<FChristmasEventListData>
local FChristmasEventData = {}



---@class FChristmasEventListData
---@field major int16
---@field Minor int16
---@field flag uint32
local FChristmasEventListData = {}



---@class FChristmasEventMailData
---@field ID int16
---@field Rank int16
---@field flag uint32
local FChristmasEventMailData = {}



---@class FChristmasEventMailRow : FTableRowBase
---@field MailID int16
---@field Rank int16
---@field flag FName
local FChristmasEventMailRow = {}



---@class FChristmasEventRow : FTableRowBase
---@field major int16
---@field Minor int16
---@field flag FName
local FChristmasEventRow = {}



---@class FCldBindingData
---@field mBindingTag FString
---@field mAssetPath FString
---@field mNpcSkeltonID int32
---@field mCostumeID int16
---@field mAnimSlotID int16
---@field mIsBag boolean
---@field mBpClass UClass
---@field mActor AActor
local FCldBindingData = {}



---@class FCldBindingEventActorTag
---@field mAssetName FString
---@field mBindingTag FString
---@field mNpcSkeltonID int32
---@field mCostumeID int16
---@field mAnimSlotID int16
---@field mIsBag boolean
local FCldBindingEventActorTag = {}



---@class FCldBindingEventParam
---@field mEventMajorID int32
---@field mEventMinorID int32
---@field mActorTags TArray<FCldBindingEventActorTag>
---@field mMsgRef int16
---@field mPictureDefs TArray<int32>
local FCldBindingEventParam = {}



---@class FCldDateMessage
---@field Key int32
---@field TotalDay uint16
---@field Month uint8
---@field Day uint8
---@field Period ECldDateMsgPeriod
---@field MsgLabel uint32
---@field VisibleFlag uint32
local FCldDateMessage = {}



---@class FCldDateMessageMonth
---@field Data TArray<FCldDateMessage>
local FCldDateMessageMonth = {}



---@class FCldDateMessageTableItem
---@field Key int32
---@field Month uint8
---@field Day uint8
---@field Period uint8
---@field MsgLabel FString
---@field VisibleFlag FString
local FCldDateMessageTableItem = {}



---@class FCldDateTableItem
---@field Month uint8
---@field Day uint8
---@field MoonAge uint8
---@field IsHoliday boolean
---@field IsPublicHoliday boolean
---@field NumColorType ECldDateColor
local FCldDateTableItem = {}



---@class FCmmProfileItem
---@field PCID uint16
---@field DisappearID uint32
---@field NameMsgNo int32
---@field ProfileMsgNo TMap<ECmmProfileMsgType, int32>
local FCmmProfileItem = {}



---@class FCmmProfileTable : FTableRowBase
---@field PCID FString
---@field DisappearID uint32
---@field NameMsgLabel FString
---@field ProfileMsgLabel FString
---@field ProfileMsgLabel_Reverse FString
---@field ProfileMsgLabel_Missing FString
---@field ProfileMsgLabel_Lost FString
local FCmmProfileTable = {}



---@class FCoefficientInfo
---@field Value int32
---@field Coefficient float
local FCoefficientInfo = {}



---@class FCombineCounterItem
---@field Num uint16
---@field ConceptionRate uint16
---@field SkillChangeRate uint16
---@field AccidentRate uint16
local FCombineCounterItem = {}



---@class FCombineCounterTable : FTableRowBase
---@field Num uint16
---@field ConceptionRate uint16
---@field SkillChangeRate uint16
---@field AccidentRate uint16
local FCombineCounterTable = {}



---@class FCombineMiscTable : FTableRowBase
---@field AccidentBaseRate float
---@field FoolAccidentRate float
---@field AccidentMinLv int16
---@field AccidentMaxLv int16
---@field SkillChangeBaseRate float
---@field SkillBuildUpRate float
---@field SkillChange1 float
---@field SkillChange2 float
---@field SkillChange3 float
---@field SkillWeight2Down float
---@field SkillWeight1Down float
---@field SkillWeightEven float
---@field SkillWeight1Up float
---@field SkillWeight2Up float
local FCombineMiscTable = {}



---@class FCommonItemList
---@field ItemDef FString
---@field SortNum uint16
---@field BtlSortNum uint16
---@field ItemType uint32
---@field UsePlaceID uint16
---@field Rarity uint16
---@field Tier uint16
---@field Hp uint16
---@field Sp uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FCommonItemList = {}



---@class FCommonItemListRecord : FTableRowBase
---@field SortNum uint16
---@field BtlSortNum uint16
---@field ItemType uint32
---@field UsePlaceID uint16
---@field Rarity uint16
---@field Tier uint16
---@field Hp uint16
---@field Sp uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FCommonItemListRecord = {}



---@class FCommunityCallEventData
---@field Rank int32
---@field major int32
---@field Minor int32
---@field Flag0 uint32
---@field Flag1 uint32
---@field Flag2 uint32
---@field Flag3 uint32
local FCommunityCallEventData = {}



---@class FCommunityCharacter
local FCommunityCharacter = {}


---@class FCommunityEventData
---@field Rank int32
---@field major int32
---@field Minor int32
local FCommunityEventData = {}



---@class FCommunityEventTable
---@field NotRankUpTable TArray<FCommunityEventData>
---@field RankUpTable TArray<FCommunityRankUpEventData>
---@field LoverRankUpTable TArray<FCommunityRankUpEventData>
local FCommunityEventTable = {}



---@class FCommunityHandleSaveData_t
local FCommunityHandleSaveData_t = {}


---@class FCommunityMemberFormat : FTableRowBase
---@field PCID1 int32
---@field Flag1 uint32
---@field PCID2 int32
---@field Flag2 uint32
---@field PCID3 int32
---@field Flag3 uint32
---@field PCID4 int32
---@field Flag4 uint32
---@field PCID5 int32
---@field Flag5 uint32
---@field PCID6 int32
---@field Flag6 uint32
---@field PCID7 int32
---@field Flag7 uint32
---@field PCID8 int32
---@field Flag8 uint32
---@field PCID9 int32
---@field Flag9 uint32
---@field PCID10 int32
---@field Flag10 uint32
local FCommunityMemberFormat = {}



---@class FCommunityMemberInfo
---@field Member TArray<FCommunityCharacter>
local FCommunityMemberInfo = {}



---@class FCommunityNPCInfo
local FCommunityNPCInfo = {}


---@class FCommunityNameFormat : FTableRowBase
---@field CommunityName FName
---@field CampDispCommunityCharacterNameA FName
---@field CampDispCommunityCharacterNameB FName
---@field NPCFirstNameA FName
---@field NPCLastNameA FName
---@field NPCFirstNameB FName
---@field NPCLastNameB FName
local FCommunityNameFormat = {}



---@class FCommunityPointDraw
---@field tagNote FPointUpNote
---@field pRankUpEffectComponent UNiagaraComponent
local FCommunityPointDraw = {}



---@class FCommunityPresentData
---@field ItemId uint32
---@field AddCommunityPoint int32
---@field ReactionMessageLabel FName
---@field HeroMessageLabel FName
---@field ChristmasReactionMessageLabel FName
local FCommunityPresentData = {}



---@class FCommunityPresentRow : FTableRowBase
---@field ItemId FName
---@field AddCommunityPoint int32
---@field ReactionMessageLabel FName
---@field HeroMessageLabel FName
---@field ChristmasReactionMessageLabel FName
local FCommunityPresentRow = {}



---@class FCommunityPresentTable
---@field Datas TArray<FCommunityPresentData>
local FCommunityPresentTable = {}



---@class FCommunityRankItem
---@field Bonus uint16
---@field HighBonus uint16
local FCommunityRankItem = {}



---@class FCommunityRankTable : FTableRowBase
---@field Bonus uint16
---@field HighBonus uint16
local FCommunityRankTable = {}



---@class FCommunityRankUpEventData
---@field Rank int16
---@field Point int16
---@field major int16
---@field Minor int16
---@field Brain int8
---@field charm int8
---@field Courage int8
---@field Flag0 uint32
---@field Flag1 uint32
---@field Flag2 uint32
---@field Flag3 uint32
local FCommunityRankUpEventData = {}



---@class FCommunitySaveData_t
local FCommunitySaveData_t = {}


---@class FConfigAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
local FConfigAnimParams = {}



---@class FCostumeItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
---@field ReflectType uint32
---@field CostumeID uint16
local FCostumeItemList = {}



---@class FCostumeItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
---@field ReflectType uint32
---@field CostumeID uint16
local FCostumeItemListRecord = {}



---@class FCurveFloatAnimation : FBaseCurveAnimation
---@field m_pCurveFloat UCurveFloat
local FCurveFloatAnimation = {}



---@class FCurveLinearColorAnimation : FBaseCurveAnimation
---@field m_pCurveLinearColor UCurveLinearColor
local FCurveLinearColorAnimation = {}



---@class FCurveVectorAnimation : FBaseCurveAnimation
---@field m_pCurveVector UCurveVector
local FCurveVectorAnimation = {}



---@class FDLCPersonaCombineBirthTable : FTableRowBase
---@field Value uint16
---@field flag uint32
local FDLCPersonaCombineBirthTable = {}



---@class FDarkHourWork
---@field SkeletalMesh USkeletalMesh
---@field pAnimCtrl UAppAnimCtrl
---@field pSkyBoxMesh UStaticMesh
---@field pSkyBoxMeshActor AStaticMeshActor
---@field pSkyBoxMeshCompo UStaticMeshComponent
---@field pLoadMaterial UMaterialInterface
---@field mMateInst UMaterialInstanceDynamic
---@field pMpc UMaterialParameterCollection
---@field UISceneCaptureClass TSubclassOf<AUISceneCapture>
---@field pUISceneCapture2D AUISceneCapture
---@field pAssetLoader UAssetLoader
local FDarkHourWork = {}



---@class FDatAffinityDataRecord
---@field attr uint16
local FDatAffinityDataRecord = {}



---@class FDatAffinityDataTable : FTableRowBase
---@field Slash uint16
---@field strike uint16
---@field pierce uint16
---@field fire uint16
---@field ice uint16
---@field electric uint16
---@field wind uint16
---@field almighty uint16
---@field Light uint16
---@field dark uint16
---@field charm uint16
---@field poison uint16
---@field upset uint16
---@field panic uint16
---@field fear uint16
---@field anger uint16
---@field recovery uint16
---@field support uint16
---@field Special uint16
local FDatAffinityDataTable = {}



---@class FDatAllyPersonaExpDataTable : FTableRowBase
---@field Exp uint32
local FDatAllyPersonaExpDataTable = {}



---@class FDatAllyPersonaGrowthDataRecord
---@field PlayerId uint8
---@field levelMax uint8
---@field skillEvent FDatPersonaGrowthEventTable
---@field paramsUp FDatLevelupParam
---@field Exp uint32
local FDatAllyPersonaGrowthDataRecord = {}



---@class FDatAllyPersonaGrowthDataTable : FTableRowBase
---@field PlayerId uint8
---@field levelMax uint8
---@field skillEvent0 FDatPersonaGrowthEventTable
---@field skillEvent1 FDatPersonaGrowthEventTable
---@field skillEvent2 FDatPersonaGrowthEventTable
---@field skillEvent3 FDatPersonaGrowthEventTable
---@field skillEvent4 FDatPersonaGrowthEventTable
---@field skillEvent5 FDatPersonaGrowthEventTable
---@field skillEvent6 FDatPersonaGrowthEventTable
---@field skillEvent7 FDatPersonaGrowthEventTable
---@field skillEvent8 FDatPersonaGrowthEventTable
---@field skillEvent9 FDatPersonaGrowthEventTable
---@field skillEvent10 FDatPersonaGrowthEventTable
---@field skillEvent11 FDatPersonaGrowthEventTable
---@field skillEvent12 FDatPersonaGrowthEventTable
---@field skillEvent13 FDatPersonaGrowthEventTable
---@field skillEvent14 FDatPersonaGrowthEventTable
---@field skillEvent15 FDatPersonaGrowthEventTable
---@field skillEvent16 FDatPersonaGrowthEventTable
---@field skillEvent17 FDatPersonaGrowthEventTable
---@field skillEvent18 FDatPersonaGrowthEventTable
---@field skillEvent19 FDatPersonaGrowthEventTable
---@field skillEvent20 FDatPersonaGrowthEventTable
---@field skillEvent21 FDatPersonaGrowthEventTable
---@field skillEvent22 FDatPersonaGrowthEventTable
---@field skillEvent23 FDatPersonaGrowthEventTable
---@field skillEvent24 FDatPersonaGrowthEventTable
---@field skillEvent25 FDatPersonaGrowthEventTable
---@field skillEvent26 FDatPersonaGrowthEventTable
---@field skillEvent27 FDatPersonaGrowthEventTable
---@field skillEvent28 FDatPersonaGrowthEventTable
---@field skillEvent29 FDatPersonaGrowthEventTable
---@field skillEvent30 FDatPersonaGrowthEventTable
---@field skillEvent31 FDatPersonaGrowthEventTable
---@field param0 FDatLevelupParam
---@field Param1 FDatLevelupParam
---@field Param2 FDatLevelupParam
---@field param3 FDatLevelupParam
---@field param4 FDatLevelupParam
---@field param5 FDatLevelupParam
---@field param6 FDatLevelupParam
---@field param7 FDatLevelupParam
---@field param8 FDatLevelupParam
---@field param9 FDatLevelupParam
---@field param10 FDatLevelupParam
---@field param11 FDatLevelupParam
---@field param12 FDatLevelupParam
---@field param13 FDatLevelupParam
---@field param14 FDatLevelupParam
---@field param15 FDatLevelupParam
---@field param16 FDatLevelupParam
---@field param17 FDatLevelupParam
---@field param18 FDatLevelupParam
---@field param19 FDatLevelupParam
---@field param20 FDatLevelupParam
---@field param21 FDatLevelupParam
---@field param22 FDatLevelupParam
---@field param23 FDatLevelupParam
---@field param24 FDatLevelupParam
---@field param25 FDatLevelupParam
---@field param26 FDatLevelupParam
---@field param27 FDatLevelupParam
---@field param28 FDatLevelupParam
---@field param29 FDatLevelupParam
---@field param30 FDatLevelupParam
---@field param31 FDatLevelupParam
---@field param32 FDatLevelupParam
---@field param33 FDatLevelupParam
---@field param34 FDatLevelupParam
---@field param35 FDatLevelupParam
---@field param36 FDatLevelupParam
---@field param37 FDatLevelupParam
---@field param38 FDatLevelupParam
---@field param39 FDatLevelupParam
---@field param40 FDatLevelupParam
---@field param41 FDatLevelupParam
---@field param42 FDatLevelupParam
---@field param43 FDatLevelupParam
---@field param44 FDatLevelupParam
---@field param45 FDatLevelupParam
---@field param46 FDatLevelupParam
---@field param47 FDatLevelupParam
---@field param48 FDatLevelupParam
---@field param49 FDatLevelupParam
---@field param50 FDatLevelupParam
---@field param51 FDatLevelupParam
---@field param52 FDatLevelupParam
---@field param53 FDatLevelupParam
---@field param54 FDatLevelupParam
---@field param55 FDatLevelupParam
---@field param56 FDatLevelupParam
---@field param57 FDatLevelupParam
---@field param58 FDatLevelupParam
---@field param59 FDatLevelupParam
---@field param60 FDatLevelupParam
---@field param61 FDatLevelupParam
---@field param62 FDatLevelupParam
---@field param63 FDatLevelupParam
---@field param64 FDatLevelupParam
---@field param65 FDatLevelupParam
---@field param66 FDatLevelupParam
---@field param67 FDatLevelupParam
---@field param68 FDatLevelupParam
---@field param69 FDatLevelupParam
---@field param70 FDatLevelupParam
---@field param71 FDatLevelupParam
---@field param72 FDatLevelupParam
---@field param73 FDatLevelupParam
---@field param74 FDatLevelupParam
---@field param75 FDatLevelupParam
---@field param76 FDatLevelupParam
---@field param77 FDatLevelupParam
---@field param78 FDatLevelupParam
---@field param79 FDatLevelupParam
---@field param80 FDatLevelupParam
---@field param81 FDatLevelupParam
---@field param82 FDatLevelupParam
---@field param83 FDatLevelupParam
---@field param84 FDatLevelupParam
---@field param85 FDatLevelupParam
---@field param86 FDatLevelupParam
---@field param87 FDatLevelupParam
---@field param88 FDatLevelupParam
---@field param89 FDatLevelupParam
---@field param90 FDatLevelupParam
---@field param91 FDatLevelupParam
---@field param92 FDatLevelupParam
---@field param93 FDatLevelupParam
---@field param94 FDatLevelupParam
---@field param95 FDatLevelupParam
---@field param96 FDatLevelupParam
---@field param97 FDatLevelupParam
local FDatAllyPersonaGrowthDataTable = {}



---@class FDatAssetOverWriteDataTable : FTableRowBase
---@field major uint32
---@field Minor uint32
---@field BindingTag FName
---@field Month uint8
---@field Day uint8
---@field Time uint8
---@field BaseMotion uint32
---@field BaseMotionEx uint32
---@field AddMotionEx uint32
---@field flag uint32
local FDatAssetOverWriteDataTable = {}



---@class FDatAssetOverWriteEventDataTable : FTableRowBase
---@field Category FName
---@field major uint32
---@field Minor uint32
---@field ProcNo uint32
local FDatAssetOverWriteEventDataTable = {}



---@class FDatBagEnableDataTable : FTableRowBase
---@field Category FName
---@field major uint32
---@field Minor uint32
local FDatBagEnableDataTable = {}



---@class FDatBtlCommonName
---@field Name FText
local FDatBtlCommonName = {}



---@class FDatBtlMixraidReleaseDataTable : FTableRowBase
---@field PersonaAID uint16
---@field PersonaBID uint16
---@field flag uint32
---@field Skill uint16
local FDatBtlMixraidReleaseDataTable = {}



---@class FDatBtlMixraidReleaseRecord
---@field PersonaAID uint16
---@field PersonaBID uint16
---@field flag uint32
---@field Skill uint16
local FDatBtlMixraidReleaseRecord = {}



---@class FDatBtlTheurgiaBoostDataTable : FTableRowBase
---@field Value TArray<int16>
local FDatBtlTheurgiaBoostDataTable = {}



---@class FDatBtlTheurgiaBoostRecord
---@field Value TArray<int16>
local FDatBtlTheurgiaBoostRecord = {}



---@class FDatCalcPANICDropItemDataTable : FTableRowBase
---@field item0 FDatEnemyItemTable
---@field item1 FDatEnemyItemTable
---@field item2 FDatEnemyItemTable
---@field item3 FDatEnemyItemTable
---@field item4 FDatEnemyItemTable
local FDatCalcPANICDropItemDataTable = {}



---@class FDatCalcPANICDropItemRecord
---@field Item FDatEnemyItemTable
local FDatCalcPANICDropItemRecord = {}



---@class FDatCalcPANICUseItemDataTable : FTableRowBase
---@field ItemId uint16
local FDatCalcPANICUseItemDataTable = {}



---@class FDatCalcPANICUseItemRecord
---@field ItemId uint16
local FDatCalcPANICUseItemRecord = {}



---@class FDatDataOffDataTable : FTableRowBase
---@field Category FName
---@field major uint32
---@field Minor uint32
local FDatDataOffDataTable = {}



---@class FDatDefineTable : FTableRowBase
---@field Value uint32
---@field Comment FText
local FDatDefineTable = {}



---@class FDatDlcBgmTableData : FTableRowBase
---@field BandleID uint32
---@field SerialNumber uint32
---@field Title FName
---@field Offset uint32
---@field ControlNumber uint32
---@field Sort uint32
---@field Result int32
local FDatDlcBgmTableData = {}



---@class FDatDlcDungeonBgmTableData : FTableRowBase
---@field BandleID uint32
---@field SerialNumber uint32
---@field Title FName
---@field CueId uint32
---@field ControlNumber uint32
---@field Sort uint32
local FDatDlcDungeonBgmTableData = {}



---@class FDatEncountDataRecord
---@field flags uint32
---@field party_item uint16
---@field party_item_num uint16
---@field ID uint16
---@field major uint16
---@field Minor uint16
---@field Sound uint16
---@field shuffleLevel uint16
local FDatEncountDataRecord = {}



---@class FDatEncountDataTable : FTableRowBase
---@field flags uint32
---@field party_item uint16
---@field party_item_num uint16
---@field id0 uint16
---@field id1 uint16
---@field id2 uint16
---@field id3 uint16
---@field id4 uint16
---@field major uint16
---@field Minor uint16
---@field Sound uint16
---@field shuffleLevel uint16
local FDatEncountDataTable = {}



---@class FDatEncountEnemyBadPercentDataTable : FTableRowBase
---@field Num1 uint8
---@field Num2 uint8
---@field Num3 uint8
---@field Num4 uint8
---@field NumOver5 uint8
local FDatEncountEnemyBadPercentDataTable = {}



---@class FDatEncountEnemyBadPercentRecord
---@field Num1 uint8
---@field Num2 uint8
---@field Num3 uint8
---@field Num4 uint8
---@field NumOver5 uint8
local FDatEncountEnemyBadPercentRecord = {}



---@class FDatEnemyAnalyzeSyncDataRecord
---@field enemyID uint16
local FDatEnemyAnalyzeSyncDataRecord = {}



---@class FDatEnemyAnalyzeSyncDataTable : FTableRowBase
---@field enemyID0 uint16
---@field enemyID1 uint16
---@field enemyID2 uint16
---@field enemyID3 uint16
---@field enemyID4 uint16
---@field enemyID5 uint16
---@field enemyID6 uint16
---@field enemyID7 uint16
---@field enemyID8 uint16
---@field enemyID9 uint16
---@field Comment FText
local FDatEnemyAnalyzeSyncDataTable = {}



---@class FDatEnemyAttackTable
---@field attr uint8
---@field Hit uint8
---@field power uint16
local FDatEnemyAttackTable = {}



---@class FDatEnemyDataRecord
---@field flags uint32
---@field Race uint8
---@field Level int16
---@field MaxHp int32
---@field MaxSp int32
---@field Params uint8
---@field Skill uint16
---@field Exp uint32
---@field money uint32
---@field Item FDatEnemyItemTable
---@field eventitem FDatEnemyEventItemTable
---@field attack FDatEnemyAttackTable
local FDatEnemyDataRecord = {}



---@class FDatEnemyDataTable : FTableRowBase
---@field flags uint32
---@field Race uint8
---@field Level int16
---@field MaxHp int32
---@field MaxSp int32
---@field Params uint8
---@field Skill uint16
---@field Exp uint32
---@field money uint32
---@field item0 FDatEnemyItemTable
---@field item1 FDatEnemyItemTable
---@field item2 FDatEnemyItemTable
---@field item3 FDatEnemyItemTable
---@field eventitem FDatEnemyEventItemTable
---@field attack FDatEnemyAttackTable
local FDatEnemyDataTable = {}



---@class FDatEnemyEventItemTable
---@field Event uint32
---@field ID uint16
---@field prob uint16
local FDatEnemyEventItemTable = {}



---@class FDatEnemyItemTable
---@field ID uint16
---@field prob uint16
local FDatEnemyItemTable = {}



---@class FDatEnemyName
---@field Name FText
local FDatEnemyName = {}



---@class FDatFadeOutDataTable : FTableRowBase
---@field Category FName
---@field major uint32
---@field Minor uint32
---@field FadeType uint8
---@field ColorR uint8
---@field ColorG uint8
---@field ColorB uint8
local FDatFadeOutDataTable = {}



---@class FDatItemBag
local FDatItemBag = {}


---@class FDatLevelupParam
---@field ATK uint8
---@field MAT uint8
---@field DEF uint8
---@field SPD uint8
---@field LUK uint8
local FDatLevelupParam = {}



---@class FDatName2Table : FTableRowBase
---@field Name1 FText
---@field Name2 FText
---@field Comment FText
local FDatName2Table = {}



---@class FDatNameTable : FTableRowBase
---@field Name FText
---@field Comment FText
local FDatNameTable = {}



---@class FDatNormalSkillDataTable : FTableRowBase
---@field flag uint32
---@field use uint16
---@field koukatype uint8
---@field costtype uint8
---@field cost uint16
---@field costbase uint16
---@field TargetType uint8
---@field targetarea uint8
---@field targetrule uint8
---@field untargetbadstat uint32
---@field hitratio uint8
---@field targetcntmin uint8
---@field targetcntmax uint8
---@field hptype uint8
---@field hpn int16
---@field sptype uint8
---@field spn int16
---@field badtype uint8
---@field badratio uint8
---@field BadStatus uint32
---@field support uint32
---@field program uint8
---@field criticalratio uint8
---@field swoonratio uint8
local FDatNormalSkillDataTable = {}



---@class FDatNormalSkillTableRecord
---@field flag uint32
---@field use uint16
---@field koukatype uint8
---@field costtype uint8
---@field cost uint16
---@field costbase uint16
---@field TargetType uint8
---@field targetarea uint8
---@field targetrule uint8
---@field untargetbadstat uint32
---@field hitratio uint8
---@field targetcntmin uint8
---@field targetcntmax uint8
---@field hptype uint8
---@field hpn int16
---@field sptype uint8
---@field spn int16
---@field badtype uint8
---@field badratio uint8
---@field BadStatus uint32
---@field support uint32
---@field program uint8
---@field criticalratio uint8
---@field swoonratio uint8
local FDatNormalSkillTableRecord = {}



---@class FDatObjectVisibleDataTable : FTableRowBase
---@field major uint32
---@field Minor uint32
---@field ObjectID uint32
---@field Visible uint8
---@field FlagCond1 FString
---@field FlagValue1 uint8
---@field FlagCond2 FString
---@field FlagValue2 uint8
---@field FlagCond3 FString
---@field FlagValue3 uint8
---@field TimeZone FString
---@field FlagDoW FString
---@field FlagDoWValue uint8
---@field StartMonth uint8
---@field StartDay uint8
---@field EndMonth uint8
---@field EndDay uint8
local FDatObjectVisibleDataTable = {}



---@class FDatPersonaCombineAdjustDataTable : FTableRowBase
---@field PersonaID uint32
---@field TransX float
---@field TransY float
---@field TransZ float
---@field RotationX float
---@field RotationY float
---@field RotationZ float
---@field ScaleX float
---@field ScaleY float
---@field ScaleZ float
local FDatPersonaCombineAdjustDataTable = {}



---@class FDatPersonaDataRecord
---@field flag uint16
---@field Race uint8
---@field Level uint8
---@field Params uint8
---@field breakage uint8
---@field succession uint16
---@field conception uint8
---@field Message uint8
local FDatPersonaDataRecord = {}



---@class FDatPersonaDataTable : FTableRowBase
---@field flag uint16
---@field Race uint8
---@field Level uint8
---@field Params uint8
---@field breakage uint8
---@field succession uint16
---@field conception uint8
---@field Message uint8
local FDatPersonaDataTable = {}



---@class FDatPersonaGrowthDataRecord
---@field paramsUp uint8
---@field skillEvent FDatPersonaGrowthEventTable
local FDatPersonaGrowthDataRecord = {}



---@class FDatPersonaGrowthDataTable : FTableRowBase
---@field paramsUp uint8
---@field event0 FDatPersonaGrowthEventTable
---@field event1 FDatPersonaGrowthEventTable
---@field event2 FDatPersonaGrowthEventTable
---@field event3 FDatPersonaGrowthEventTable
---@field event4 FDatPersonaGrowthEventTable
---@field event5 FDatPersonaGrowthEventTable
---@field event6 FDatPersonaGrowthEventTable
---@field event7 FDatPersonaGrowthEventTable
---@field event8 FDatPersonaGrowthEventTable
---@field event9 FDatPersonaGrowthEventTable
---@field event10 FDatPersonaGrowthEventTable
---@field event11 FDatPersonaGrowthEventTable
---@field event12 FDatPersonaGrowthEventTable
---@field event13 FDatPersonaGrowthEventTable
---@field event14 FDatPersonaGrowthEventTable
---@field event15 FDatPersonaGrowthEventTable
local FDatPersonaGrowthDataTable = {}



---@class FDatPersonaGrowthEventTable
---@field Level uint8
---@field eventId uint16
---@field skillId uint16
local FDatPersonaGrowthEventTable = {}



---@class FDatPersonaName
---@field Name FText
local FDatPersonaName = {}



---@class FDatPlayerLevelUpDataRecord
---@field Exp uint32
local FDatPlayerLevelUpDataRecord = {}



---@class FDatPlayerLevelUpDataTable : FTableRowBase
---@field Exp uint32
local FDatPlayerLevelUpDataTable = {}



---@class FDatPlayerMaxHPSP
---@field MaxHp uint16
---@field MaxSp uint16
local FDatPlayerMaxHPSP = {}



---@class FDatPlayerMaxHPSPBunch
---@field EachPlayerData TArray<FDatPlayerMaxHPSP>
local FDatPlayerMaxHPSPBunch = {}



---@class FDatPlayerMaxHPSPDataTable : FTableRowBase
---@field MaxHp uint16
---@field MaxSp uint16
---@field Comment FText
local FDatPlayerMaxHPSPDataTable = {}



---@class FDatPlayerNameOne
---@field mPlayerID int32
---@field mName FText
local FDatPlayerNameOne = {}



---@class FDatPlayerNameTableRowBase : FTableRowBase
---@field PlayerId int32
---@field Name FText
---@field Comment FText
local FDatPlayerNameTableRowBase = {}



---@class FDatRaceDataTable : FTableRowBase
---@field Name1 FText
---@field Name2 FText
---@field Comment FText
local FDatRaceDataTable = {}



---@class FDatRaceTableRecord
---@field Race FText
---@field Community FText
---@field Comment FText
local FDatRaceTableRecord = {}



---@class FDatShuffleAppearRationDataTable : FTableRowBase
---@field prob int32
local FDatShuffleAppearRationDataTable = {}



---@class FDatShuffleArcanaNameDataTable : FTableRowBase
---@field Name FText
---@field Comment FText
local FDatShuffleArcanaNameDataTable = {}



---@class FDatShuffleArcanaNameRecord
---@field Name FText
local FDatShuffleArcanaNameRecord = {}



---@class FDatShuffleChoiceMajorArcanaDataTable : FTableRowBase
---@field ArcanaID uint8
---@field RankInPhase uint8
local FDatShuffleChoiceMajorArcanaDataTable = {}



---@class FDatShuffleChoiceMajorArcanaRecord
---@field ArcanaID uint8
---@field RankInPhase uint8
local FDatShuffleChoiceMajorArcanaRecord = {}



---@class FDatShuffleChoiceMinorArcanaDataTable : FTableRowBase
---@field AreaId uint8
---@field LowPersonaRankId int32
---@field HightPersonaRankId int32
---@field LowWandRankId int32
---@field HightWandRankId int32
---@field LowCoinRankId int32
---@field HightCoinRankId int32
---@field LowCupRankId int32
---@field HightCupRankId int32
---@field LowSwordRankId int32
---@field HightSwordRankId int32
---@field CardNumProb int32
local FDatShuffleChoiceMinorArcanaDataTable = {}



---@class FDatShuffleChoiceMinorArcanaRecord
---@field AreaId uint8
---@field LowPersonaRankId int32
---@field HightPersonaRankId int32
---@field LowWandRankId int32
---@field HightWandRankId int32
---@field LowCoinRankId int32
---@field HightCoinRankId int32
---@field LowCupRankId int32
---@field HightCupRankId int32
---@field LowSwordRankId int32
---@field HightSwordRankId int32
---@field CardNumProb int32
local FDatShuffleChoiceMinorArcanaRecord = {}



---@class FDatShuffleCoinArcanaDataTable : FTableRowBase
---@field Max uint32
---@field Min uint32
local FDatShuffleCoinArcanaDataTable = {}



---@class FDatShuffleCoinArcanaRecord
---@field Max uint32
---@field Min uint32
local FDatShuffleCoinArcanaRecord = {}



---@class FDatShuffleCommonCoefficientArcanaDataTable : FTableRowBase
---@field Value float
local FDatShuffleCommonCoefficientArcanaDataTable = {}



---@class FDatShuffleCommonCoefficientArcanaRecord
---@field Value float
local FDatShuffleCommonCoefficientArcanaRecord = {}



---@class FDatShuffleCommonItemdropArcanaDataTable : FTableRowBase
---@field RankID uint8
---@field Num uint8
---@field prob uint16
---@field ItemtID uint32
local FDatShuffleCommonItemdropArcanaDataTable = {}



---@class FDatShuffleCommonItemdropArcanaRecord
---@field RankID uint8
---@field Num uint8
---@field prob uint16
---@field ItemtID uint32
local FDatShuffleCommonItemdropArcanaRecord = {}



---@class FDatShuffleCommonRationDataTable : FTableRowBase
---@field Value float
local FDatShuffleCommonRationDataTable = {}



---@class FDatShuffleCupArcanaDataTable : FTableRowBase
---@field RankID uint8
---@field EffectID uint8
---@field prob uint32
local FDatShuffleCupArcanaDataTable = {}



---@class FDatShuffleCupArcanaRecord
---@field RankID uint8
---@field EffectID uint8
---@field prob uint32
local FDatShuffleCupArcanaRecord = {}



---@class FDatShuffleLoversArcanaDataTable : FTableRowBase
---@field CommuBonus uint16
---@field LoversBonus uint16
local FDatShuffleLoversArcanaDataTable = {}



---@class FDatShuffleLoversArcanaRecord
---@field CommuBonus uint16
---@field LoversBonus uint16
local FDatShuffleLoversArcanaRecord = {}



---@class FDatShuffleMajorArcanaCard
---@field Type uint8
---@field Rank uint8
local FDatShuffleMajorArcanaCard = {}



---@class FDatShufflePersonaArcanaDataTable : FTableRowBase
---@field RankID uint8
---@field PersonaID uint8
---@field prob uint8
local FDatShufflePersonaArcanaDataTable = {}



---@class FDatShufflePersonaArcanaRecord
---@field RankID uint8
---@field PersonaID uint8
---@field prob uint8
local FDatShufflePersonaArcanaRecord = {}



---@class FDatSkillDataTable : FTableRowBase
---@field attr int8
---@field Type int8
---@field targetLv int8
local FDatSkillDataTable = {}



---@class FDatSkillTableRecord
---@field attr int8
---@field Type int8
---@field targetLv int8
local FDatSkillTableRecord = {}



---@class FDatSupportInfoDataTable : FTableRowBase
---@field defineId uint32
---@field majorId uint32
---@field minorId uint32
---@field characterId uint32
---@field show uint8
---@field Face uint8
---@field Window uint8
local FDatSupportInfoDataTable = {}



---@class FDatSupportInfoTableRecord
---@field defineId uint32
---@field majorId uint32
---@field minorId uint32
---@field characterId uint32
---@field show uint8
---@field Face uint8
---@field Window uint8
local FDatSupportInfoTableRecord = {}



---@class FDatUnitDropItem
---@field ID uint32
---@field eventitem boolean
local FDatUnitDropItem = {}



---@class FDatUnitItem
---@field equip uint16
local FDatUnitItem = {}



---@class FDatUnitPersona
---@field equip uint16
local FDatUnitPersona = {}



---@class FDatUnitSpecialSkill
---@field skillId uint16
local FDatUnitSpecialSkill = {}



---@class FDatUnitStatus
---@field Hp int32
---@field Sp int32
---@field tp int32
---@field bad uint32
---@field Level int16
---@field Exp uint32
---@field affinity uint16
---@field personalSkill uint32
local FDatUnitStatus = {}



---@class FDatUnitSupport
---@field valid uint32
---@field appointment uint32
---@field Point int8
---@field Turn int8
local FDatUnitSupport = {}



---@class FDatUnitWork
---@field flags uint32
---@field genus uint16
---@field ID uint32
---@field Status FDatUnitStatus
---@field support FDatUnitSupport
---@field persona FDatUnitPersona
---@field Item FDatUnitItem
---@field Operation uint16
---@field Message uint16
---@field maxHpUp int16
---@field maxSpUp int16
---@field specialSkill FDatUnitSpecialSkill
local FDatUnitWork = {}



---@class FDayChangeRipple
---@field curveRipple FCurveLinearColorAnimation
local FDayChangeRipple = {}



---@class FDemoSaveCache
---@field SaveGameObject USaveGame
local FDemoSaveCache = {}



---@class FDictionarySortTableRow : FTableRowBase
---@field SortID int32
---@field TextureNames TArray<FName>
---@field OpenFlagName FName
---@field Comment FText
local FDictionarySortTableRow = {}



---@class FDictionaryTableData
---@field DictionaryID int32
---@field SortID int32
---@field OpenFlagID int32
---@field Title FString
---@field TextureNames TArray<FName>
local FDictionaryTableData = {}



---@class FDisappearItem
---@field StartMonth uint8
---@field StartDays uint8
---@field LimitMonth uint8
---@field LimitDays uint8
---@field ActiveFlag int32
---@field SuccessFlag int32
---@field FailedFlag int32
---@field NpcFlag int32
---@field InfoOnFlag int32
---@field AwardFlag int32
---@field AwardItemID uint16
---@field AwardItemNum uint16
---@field AwardMoney uint32
local FDisappearItem = {}



---@class FDisappearTable : FTableRowBase
---@field DisappearID uint16
---@field StartMonth uint8
---@field StartDays uint8
---@field LimitMonth uint8
---@field LimitDays uint8
---@field ActiveFlag FString
---@field SuccessFlag FString
---@field FailedFlag FString
---@field NpcFlag FString
---@field InfoOnFlag FString
---@field AwardFlag FString
---@field AwardItemID uint16
---@field AwardItemNum uint16
---@field AwardMoney uint32
local FDisappearTable = {}



---@class FDrawBGMParam
---@field Title FString
---@field BgmId int32
---@field bNewFlag boolean
---@field bIsFavoriteFlag boolean
local FDrawBGMParam = {}



---@class FDrawConfigParam
---@field Type EDrawConfigParamType
---@field MenueID int32
---@field Title FString
---@field Description FString
---@field Value int32
---@field bFlag boolean
---@field bEnable boolean
---@field ListType EDrawConfigListType
---@field ListMaxNum int32
---@field ListDefault int32
---@field SelectedLabel FString
---@field SprColor FColor
---@field DrawStatus int32
---@field DescriptionScale float
local FDrawConfigParam = {}



---@class FDungeonAssignFlagsData
---@field Tag FName
---@field FlagName FName
local FDungeonAssignFlagsData = {}



---@class FDungeonBrokenObjData
---@field FragmentProbability int32
local FDungeonBrokenObjData = {}



---@class FDungeonDesignTypeID
---@field MinFloor int32
---@field MaxFloor int32
---@field DesignTypeID int32
local FDungeonDesignTypeID = {}



---@class FDungeonDesignTypesData
---@field DungeonDesignTypesData TArray<FDungeonDesignTypeID>
local FDungeonDesignTypesData = {}



---@class FDungeonEnemyModelIDData
---@field majorId int32
---@field minorId int32
local FDungeonEnemyModelIDData = {}



---@class FDungeonEnemyModelParamData
---@field ScaleX float
---@field ScaleY float
---@field ScaleZ float
local FDungeonEnemyModelParamData = {}



---@class FDungeonFDoorAppearanceData
---@field MagValue_SAreaDiff TArray<int32>
---@field MagDecValue_Floor int32
---@field MagIncAddValue int32
---@field PartPos FVector
local FDungeonFDoorAppearanceData = {}



---@class FDungeonFloorFlagsData
---@field FloorNo uint32
---@field AssignFlagList TArray<FDungeonAssignFlagsData>
local FDungeonFloorFlagsData = {}



---@class FDungeonFloorFlagsDataTableRow : FTableRowBase
---@field Data TArray<FDungeonFloorFlagsData>
local FDungeonFloorFlagsDataTableRow = {}



---@class FDungeonFloorFlagsIDData
---@field Tag FName
---@field ID uint32
local FDungeonFloorFlagsIDData = {}



---@class FDungeonLightAttenuationData
---@field StartDist float
---@field EndDist float
local FDungeonLightAttenuationData = {}



---@class FDungeonMDoorEncountIDData
---@field Minor00 TArray<int32>
---@field Minor01 TArray<int32>
---@field EncountIdOfDesignType TMap<int32, FDungeonMDoorEncountIdOfDesignType>
local FDungeonMDoorEncountIDData = {}



---@class FDungeonMDoorEncountIdOfDesignType
---@field EncountID TArray<int32>
local FDungeonMDoorEncountIdOfDesignType = {}



---@class FDungeonMDoorPacIdData
---@field FbdPackIdBaseWeighting int32
---@field FbdPackIdRevisedWeighting int32
---@field FbdPackIdRevisedWeightingOfHuman int32
local FDungeonMDoorPacIdData = {}



---@class FDungeonParamDataTableRow : FTableRowBase
---@field TrophyValue TMap<EDungeonTrophyType, FDungeonTrophyValue>
---@field ResetTimingData TMap<EDungeonResetTiming, FDungeonResetList>
---@field PartConnectInfo TMap<EPartType, FDungeonPartConnectInfoData>
---@field PartOpenInfo FDungeonPartOpenInfoData
---@field PartLightAttenuationData TMap<int32, FDungeonLightAttenuationData>
---@field ObjectLightAttenuationData FDungeonLightAttenuationData
---@field PartUROParamData FDungeonUROParamData
---@field ObjectUROParamData FDungeonUROParamData
---@field BrokenObjData FDungeonBrokenObjData
---@field FDoorAppearanceData FDungeonFDoorAppearanceData
---@field EnemyModelID TMap<int32, FDungeonEnemyModelIDData>
---@field EnemyModelParamData TMap<int32, FDungeonEnemyModelParamData>
---@field MDoorBuildID TMap<int32, int32>
---@field MDoorEncountID TMap<int32, FDungeonMDoorEncountIDData>
---@field MDoorPacIdData FDungeonMDoorPacIdData
---@field MisNpcType TMap<int32, EDungeonMisNpcType>
---@field DataPath TMap<EDungeonPathType, FDungeonPathGroupList>
---@field LevelPath TMap<EDungeonLevelPathType, FDungeonPathList>
local FDungeonParamDataTableRow = {}



---@class FDungeonPartConnectInfoData
---@field ConnectUp boolean
---@field ConnectLeft boolean
---@field ConnectDown boolean
---@field ConnectRight boolean
local FDungeonPartConnectInfoData = {}



---@class FDungeonPartFDoorTypeDataTableRow : FTableRowBase
---@field TypeList TArray<FDungeonPartVariationData>
---@field VarNo int32
local FDungeonPartFDoorTypeDataTableRow = {}



---@class FDungeonPartMisRoomTypeDataTableRow : FTableRowBase
---@field TypeList TArray<FDungeonPartVariationData>
---@field VarNo int32
local FDungeonPartMisRoomTypeDataTableRow = {}



---@class FDungeonPartOpenInfoData
---@field ConnectPartOpenDistance float
---@field SeparatelyNextFloorOpenNum int32
local FDungeonPartOpenInfoData = {}



---@class FDungeonPartVariationData
---@field PartType EPartType
---@field VariationNo TArray<uint8>
---@field VariationNoDataOfAstrea FDungeonPartVariationNumberDataAstrea
local FDungeonPartVariationData = {}



---@class FDungeonPartVariationDataTableRow : FTableRowBase
---@field VarNoList TArray<FDungeonPartVariationData>
---@field FixedVarNoList TArray<FDungeonPartVariationData>
---@field MonadVarNoList TArray<FDungeonPartVariationData>
local FDungeonPartVariationDataTableRow = {}



---@class FDungeonPartVariationNumberDataAstrea
---@field DesignTypeID int32
---@field VariationNo TArray<uint8>
local FDungeonPartVariationNumberDataAstrea = {}



---@class FDungeonPathData
---@field majorId int32
---@field minorId int32
---@field Path FSoftObjectPath
---@field StrPath FString
---@field DesignTypeID int32
local FDungeonPathData = {}



---@class FDungeonPathGroupList
---@field GroupList TArray<FDungeonPathList>
local FDungeonPathGroupList = {}



---@class FDungeonPathList
---@field PathData TArray<FDungeonPathData>
local FDungeonPathList = {}



---@class FDungeonResetData
---@field DataType EDungeonResetDataType
---@field DataName FName
---@field DataState int32
local FDungeonResetData = {}



---@class FDungeonResetList
---@field ResetData TArray<FDungeonResetData>
local FDungeonResetList = {}



---@class FDungeonTransferPosAssist : FTableRowBase
---@field FloorListEntrancePosDif FVector
---@field InfoMissExclamationColorRed FVector
---@field InfoMissExclamationRedPosdef FVector
---@field InfoMissExclamationRedRotation float
---@field InfoMissExclamationFrameMove int32
---@field HazeParam TArray<FUIDungeonTransferHazeParam>
---@field HazeAppearVanishRarion float
---@field HazeNum float
---@field HazeInitRMin float
---@field HazeInitRMax float
---@field CloudPreset TArray<FUIDungeonTransferCloudPreset>
---@field CloudParam TArray<FUIDungeonTransferCloudSetPos>
---@field CloudAllPos TArray<float>
local FDungeonTransferPosAssist = {}



---@class FDungeonTrophyValue
---@field CounterName FName
---@field Name FName
---@field CountMax int32
local FDungeonTrophyValue = {}



---@class FDungeonUIAlphaAnimData
---@field Time float
---@field Alpha float
local FDungeonUIAlphaAnimData = {}



---@class FDungeonUIAnimData
---@field PosAnim TArray<FDungeonUIPosAnimData>
---@field AlphaAnim TArray<FDungeonUIAlphaAnimData>
local FDungeonUIAnimData = {}



---@class FDungeonUIBaseData
---@field Name FName
---@field DrawOrder int32
---@field BlendStateType EDungeonUIBlendStateType
local FDungeonUIBaseData = {}



---@class FDungeonUIDrawData
---@field LifeSpan float
---@field BasePos FVector
---@field Sprite TArray<FDungeonUISprData>
---@field Primitive TArray<FDungeonUIPrimData>
---@field Massage TArray<FDungeonUIMsgData>
---@field ItemName TArray<FDungeonUIItemNameData>
---@field money TArray<FDungeonUIMoneyData>
---@field FadeIn FDungeonUIAnimData
---@field FadeOut FDungeonUIAnimData
---@field MsgSyncMinWordCount int32
---@field MsgSuncMaxWordCount int32
local FDungeonUIDrawData = {}



---@class FDungeonUIDrawDataTable : FTableRowBase
---@field DrawData TMap<int32, FDungeonUIDrawData>
local FDungeonUIDrawDataTable = {}



---@class FDungeonUIItemNameData
---@field BaseData FDungeonUIBaseData
---@field IconPivot FVector2D
---@field IconPos FVector
---@field IconScale float
---@field NamePos FVector
---@field fontStyle EDungeonUIFontStyle
---@field FontRGBA uint8
local FDungeonUIItemNameData = {}



---@class FDungeonUIMaskInfo
---@field MaskOnly boolean
---@field MaskTargetName FName
local FDungeonUIMaskInfo = {}



---@class FDungeonUIMoneyData
---@field BaseData FDungeonUIBaseData
---@field Pos FVector
---@field fontStyle EDungeonUIFontStyle
---@field FontRGBA uint8
local FDungeonUIMoneyData = {}



---@class FDungeonUIMsgData
---@field BaseData FDungeonUIBaseData
---@field Pos FVector
---@field fontStyle EDungeonUIFontStyle
---@field FontRGBA uint8
---@field LineBreakWidth float
local FDungeonUIMsgData = {}



---@class FDungeonUIPosAnimData
---@field Time float
---@field OffsPos FVector
local FDungeonUIPosAnimData = {}



---@class FDungeonUIPrimData
---@field BaseData FDungeonUIBaseData
---@field MaskInfo FDungeonUIMaskInfo
---@field vertex TArray<FDungeonUIVertexData>
---@field Z float
---@field RGBA uint8
local FDungeonUIPrimData = {}



---@class FDungeonUISprData
---@field BaseData FDungeonUIBaseData
---@field MaskInfo FDungeonUIMaskInfo
---@field SprType EDungeonUISpriteType
---@field grpNo int32
---@field SprNo int32
---@field Origin EDungeonUISpriteOrigin
---@field Pos FVector
---@field RGBA uint8
---@field ScaleMin float
---@field ScaleMax float
---@field MsgWSync boolean
local FDungeonUISprData = {}



---@class FDungeonUIVertexData
---@field Ver FVector
---@field MsgWSync boolean
---@field MsgWSyncOffsSize float
local FDungeonUIVertexData = {}



---@class FDungeonUROParamData
---@field ThresholdSizeList TArray<float>
local FDungeonUROParamData = {}



---@class FEquipItemInfo
local FEquipItemInfo = {}


---@class FEquipListItem
local FEquipListItem = {}


---@class FEvitemItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
local FEvitemItemList = {}



---@class FEvitemItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
local FEvitemItemListRecord = {}



---@class FEvtAdxSoundFadePayload
---@field EventName FName
---@field Type EEvtAdxSoundFadeType
---@field Time int32
---@field TargetVolume float
local FEvtAdxSoundFadePayload = {}



---@class FEvtAdxSoundManagePayload
---@field EventName FName
---@field EvtAdxSoundManageOperationType EEvtSoundManageOperationType
---@field Month int32
---@field Day int32
---@field TimeZone ECldTimeZone
---@field ControlId uint32
---@field ControlValue float
---@field ControlFrame int32
local FEvtAdxSoundManagePayload = {}



---@class FEvtAdxSoundPayload
---@field EventName FName
---@field PlayerMajorID int32
---@field PlayerMinorID int32
---@field CueId int32
---@field EvtSoundCategoryType EEvtSoundCategoryType
---@field EvtAdxSoundOperationType EEvtAdxTrackSoundOperationType
---@field bStopWhileHighSpeed boolean
local FEvtAdxSoundPayload = {}



---@class FEvtCharaAnimationPayload
---@field Animation UAnimSequenceBase
---@field SlotName FName
---@field SlotType EEvtCharaAnimationSlotType
---@field StartOffset float
---@field EndOffset float
---@field BlendIn float
---@field BlendOut float
---@field PlayRate float
---@field CharaAnimationType EEvtCharaAnimationType
---@field AnimArray TArray<FAtlSlotMultiAnimationParam>
local FEvtCharaAnimationPayload = {}



---@class FEvtCharaHandwritingPayload
---@field EventName FName
---@field OwnerType EEvtCharaHandwritingSpawnOwnerType
---@field bAttached boolean
---@field HandwritingType EAtlEvtHandwritingType
---@field Location FVector
---@field Scale FVector
---@field BoneName FString
---@field LoopCount int32
---@field CameraOffset float
local FEvtCharaHandwritingPayload = {}



---@class FEvtCharaOperationControllerPayload
---@field EventName FName
---@field OperationID EEvtCharaOperationType
---@field FootStepLabelType EEvtCharaOperationFootStepLabelType
---@field FootStepLabelName FName
local FEvtCharaOperationControllerPayload = {}



---@class FEvtCharaPackAnimationPayload
---@field EventName FName
---@field AnimId ECommonAnimID
---@field UsingAnimIDType EEvtCharaAnimationPackIDType
---@field EventAnimID EEventAnimID
---@field CommonAnimID ECommonAnimID
---@field DungeonAnimID EDungeonAnimID
---@field bLoop boolean
---@field BlendInTime float
---@field BlendOutTime float
---@field PlayRate float
---@field bBagSlot boolean
---@field MultiAnimCharaAnimationType EEvtCharaAnimationType
---@field AnimArray TArray<FMovieSceneEvtCharaPackAnimationParams>
local FEvtCharaPackAnimationPayload = {}



---@class FEvtCharaPackFaceAnimationPayload
---@field EventName FName
---@field FaceAnimID EAppCharFaceAnimID
---@field bLoop boolean
---@field BlendInTime float
---@field BlendOutTime float
---@field PlayRate float
local FEvtCharaPackFaceAnimationPayload = {}



---@class FEvtCharaPropAttachPayload
---@field EventName FName
---@field PropAttachType EAtlEvtPropAttachType
---@field PropActorBindingID FMovieSceneObjectBindingID
---@field PropActorDetachPointBindingID FMovieSceneObjectBindingID
local FEvtCharaPropAttachPayload = {}



---@class FEvtDialogueOptionsPayload
---@field EventName FName
---@field Parameters FMovieSceneEvtDialogueOptionsParameters
local FEvtDialogueOptionsPayload = {}



---@class FEvtDialoguePayload
---@field EventName FName
---@field MessageNo int32
---@field MessageMajorID int32
---@field MessageMinorID int32
---@field MessageSubID int32
---@field MessagePageID int32
---@field BmdAsset UBmdAsset
---@field bMessageRefAffected boolean
---@field bPauseSequencer boolean
---@field EventMessageID int32
---@field SeqEventMessageID int32
---@field bWithSelect boolean
---@field SelectID int32
---@field SelectMessageMajorID int32
---@field SelectMessageMinorID int32
---@field SelectMessageSubID int32
---@field SelectResponceToLocalDataID int32
local FEvtDialoguePayload = {}



---@class FEvtFadeScreenPayload
---@field EventName FName
---@field FadeScreenType EEvtFadeScreenType
---@field FadeType int32
---@field FadeFrame int32
---@field ColorR uint8
---@field ColorG uint8
---@field ColorB uint8
local FEvtFadeScreenPayload = {}



---@class FEvtFieldAnimationPayload
---@field EventName FName
---@field AnimId int32
---@field bLoop boolean
local FEvtFieldAnimationPayload = {}



---@class FEvtLocalData
---@field LocalDatas TArray<int32>
local FEvtLocalData = {}



---@class FEvtMessageSubtitlePayload
---@field EventName FName
---@field bUseMessage boolean
---@field MessageMajorID int32
---@field MessageMinorID int32
---@field MessageSubID int32
---@field MessagePageID int32
---@field BmdAsset UBmdAsset
---@field bMessageRefAffected boolean
---@field DrawFrame int32
---@field bPauseSequencer boolean
---@field bWithSelect boolean
---@field SelectID int32
---@field SelectMessageMajorID int32
---@field SelectMessageMinorID int32
---@field SelectMessageSubID int32
---@field SelectResponceToLocalDataID int32
local FEvtMessageSubtitlePayload = {}



---@class FEvtMoviePayload
---@field EventName FName
---@field ID int32
---@field Operation EEvtMovieOperation
---@field SeekFrame int32
local FEvtMoviePayload = {}



---@class FEvtScriptPayload
---@field EventName FName
---@field ProcNo int32
---@field BfAsset UBfAsset
---@field bPauseSequencer boolean
---@field bUseBmdAssetInBfAsset boolean
---@field BmdAsset UBmdAsset
local FEvtScriptPayload = {}



---@class FEvtSeqControllerPayload
---@field Operation EEvtSeqControllerOperation
---@field ClosedEventMessageID int32
---@field JumpToSec float
---@field CameraBlendTime float
---@field NextTransitionLightScenarioIndex int32
local FEvtSeqControllerPayload = {}



---@class FEvtSeqTimeJumpControllerPayload
---@field Operation EEvtSeqTimeJumpControllerOperation
local FEvtSeqTimeJumpControllerPayload = {}



---@class FFadeProperties
---@field Frame int32
---@field RenderTargetOt int32
---@field CaptureTargetOt int32
---@field UseCapture boolean
local FFadeProperties = {}



---@class FFadeStatus
---@field program UFadeProgramBase
local FFadeStatus = {}



---@class FFieldEventInfo
---@field FieldCameraActor AActor
local FFieldEventInfo = {}



---@class FFieldHeadPanel : FBaseHeadPanel
local FFieldHeadPanel = {}


---@class FFileNameList : FTableRowBase
---@field Path FString
---@field Name FString
---@field chunk int32
local FFileNameList = {}



---@class FFileNameListRecord : FTableRowBase
---@field Path FString
---@field Filename FString
---@field chunk int32
local FFileNameListRecord = {}



---@class FFldAnimalParam
---@field mWalkSpeed float
---@field mRunSpeed float
---@field mRotSpeed float
---@field mIdleTimeFix float
---@field mIdleTimeRnd float
local FFldAnimalParam = {}



---@class FFldAnimeObjAnimation
---@field mAsset UAnimationAsset
---@field mLoop boolean
---@field mNiagara UNiagaraSystem
local FFldAnimeObjAnimation = {}



---@class FFldBgmTableRow : FTableRowBase
---@field BgmId int32
---@field GayaVoiceAssetID int32
---@field GayaVoiceCueID int32
---@field FieldMajor int32
---@field FieldMinor int32
---@field StartMonth int32
---@field StartDay int32
---@field EndMonth int32
---@field EndDay int32
---@field Time int32
---@field flag int32
local FFldBgmTableRow = {}



---@class FFldCatMotionList
---@field mList TArray<EFldAnimalMotion_CAT>
local FFldCatMotionList = {}



---@class FFldCharAreaParam
---@field Offset FVector
---@field BoxExtent FVector
local FFldCharAreaParam = {}



---@class FFldCharEffectParam
---@field Asset UNiagaraSystem
---@field SocketName FName
---@field Transform FTransform
local FFldCharEffectParam = {}



---@class FFldCharKeyParam
---@field Save EFldCharKeyType
---@field AutoRecover EFldCharKeyType
---@field DailyMenu EFldCharKeyType
---@field DungeonMenu EFldCharKeyType
---@field Camp EFldCharKeyType
---@field LargeMap EFldCharKeyType
---@field BackLog EFldCharKeyType
---@field VoiceActionDisp EFldCharKeyType
---@field Check EFldCharKeyType
---@field attack EFldCharKeyType
---@field CameraZoomIn EFldCharKeyType
---@field CameraZoomOut EFldCharKeyType
---@field CameraDefault TArray<EFldCharKeyType>
---@field DebugCamera EFldCharKeyType
local FFldCharKeyParam = {}



---@class FFldCharMajorBgData
---@field Minor TMap<int32, FFldCharMinorBgData>
local FFldCharMajorBgData = {}



---@class FFldCharMinorBgData
---@field Speed FFldCharSpeed
local FFldCharMinorBgData = {}



---@class FFldCharSpeed
---@field Walk float
---@field Run float
---@field Dash float
---@field Assault float
local FFldCharSpeed = {}



---@class FFldCharacterEffectSetup
---@field SocketName FName
---@field Transform FTransform
local FFldCharacterEffectSetup = {}



---@class FFldCmmNpcLayoutData
---@field mUniqueID int32
---@field mArcanaID int32
---@field mFieldPartsID int32
---@field mType EFldCmmNpcType
---@field mIconType EFldHitCharaIconType
---@field mChangeIcons TArray<FFldHitCharaIconParam>
---@field mNameIndex int32
---@field mOnFlagName FName
---@field mOffFlagName FName
---@field mCharaTrans TArray<FTransform>
---@field mIconTran FTransform
---@field bNotMapInfo boolean
local FFldCmmNpcLayoutData = {}



---@class FFldCmmNpcLayoutList
---@field mFieldMajor int32
---@field mFieldMinor int32
---@field mTimeType int32
---@field mKeyfreeEventID int32
---@field mDataList TArray<FFldCmmNpcLayoutData>
local FFldCmmNpcLayoutList = {}



---@class FFldCmmNpcLayoutTableRow : FTableRowBase
---@field FieldMajor int32
---@field FieldMinor int32
---@field FieldParts int32
---@field TimeType int32
---@field KeyfreeEventID int32
---@field UniqueId int32
---@field ArcanaID int32
---@field Type EFldCmmNpcType
---@field IconType EFldHitCharaIconType
---@field ChangeIcons TArray<FFldHitCharaIconParam>
---@field NameIndex int32
---@field OnFlagName FName
---@field OffFlagName FName
---@field CharaTrans TArray<FTransform>
---@field IconTran FTransform
---@field NotMapInfo boolean
local FFldCmmNpcLayoutTableRow = {}



---@class FFldCrowdNpcChildParam
---@field mColorID_G int32
---@field mColorID_B int32
---@field mRandomValue float
---@field mGrassesOn boolean
local FFldCrowdNpcChildParam = {}



---@class FFldCrowdWalkBpParam
---@field mMobBpClass TSubclassOf<AMobWalkCharaBaseCore>
---@field mFollowList TArray<FFldCrowdWalkFollowParam>
local FFldCrowdWalkBpParam = {}



---@class FFldCrowdWalkFollowParam
---@field mMobBpClass TSubclassOf<AMobWalkCharaBaseCore>
---@field mRelativeLocation FVector
local FFldCrowdWalkFollowParam = {}



---@class FFldCrowdWalkInitActorData
---@field BpIndex int32
---@field StartLocation FVector
---@field PointIndex int32
---@field PointArray TArray<FMobWalkRoutePoint>
local FFldCrowdWalkInitActorData = {}



---@class FFldCrowdWalkInitRow : FTableRowBase
---@field FieldMajorID int32
---@field FieldMinorID int32
---@field SeasonType int32
---@field TimeType int32
---@field ActorArray TArray<FFldCrowdWalkInitActorData>
local FFldCrowdWalkInitRow = {}



---@class FFldCrowdWalkRouteParam
---@field mPointList TArray<int32>
---@field mRoutePattern_ EFldCrowdRoutePtn
local FFldCrowdWalkRouteParam = {}



---@class FFldCrowdWalkRouteTimer
---@field mTimer_ float
---@field mLoopTime_ float
---@field mRoutePattern EFldCrowdRoutePtn
---@field mPointList TArray<int32>
local FFldCrowdWalkRouteTimer = {}



---@class FFldDoorAnimationData
---@field mActionAsset UAnimationAsset
---@field mWaitAsset UAnimationAsset
---@field mCharaMotionID int32
local FFldDoorAnimationData = {}



---@class FFldDungeonEncountPacDataAssetRecord
---@field encNo1 uint16
---@field probability1 uint16
---@field encNo2 uint16
---@field probability2 uint16
---@field encNo3 uint16
---@field probability3 uint16
---@field encNo4 uint16
---@field probability4 uint16
---@field encNo5 uint16
---@field probability5 uint16
---@field encNo6 uint16
---@field probability6 uint16
---@field encNo7 uint16
---@field probability7 uint16
---@field encNo8 uint16
---@field probability8 uint16
---@field order1 uint8
---@field order2 uint8
---@field order3 uint8
---@field order4 uint8
---@field order5 uint8
---@field order6 uint8
---@field order7 uint8
---@field order8 uint8
local FFldDungeonEncountPacDataAssetRecord = {}



---@class FFldDungeonEncountPacDataTable : FTableRowBase
---@field encNo1 uint16
---@field probability1 uint16
---@field encNo2 uint16
---@field probability2 uint16
---@field encNo3 uint16
---@field probability3 uint16
---@field encNo4 uint16
---@field probability4 uint16
---@field encNo5 uint16
---@field probability5 uint16
---@field encNo6 uint16
---@field probability6 uint16
---@field encNo7 uint16
---@field probability7 uint16
---@field encNo8 uint16
---@field probability8 uint16
---@field order1 uint8
---@field order2 uint8
---@field order3 uint8
---@field order4 uint8
---@field order5 uint8
---@field order6 uint8
---@field order7 uint8
---@field order8 uint8
local FFldDungeonEncountPacDataTable = {}



---@class FFldDungeonFloorDataAssetRecord
---@field flags uint32
---@field FieldMajor uint16
---@field FieldMinor uint16
---@field major uint16
---@field Minor uint16
---@field areaNo uint8
---@field envID uint8
---@field partMin uint8
---@field partMax uint8
---@field partSelTable uint8
---@field enemyMin uint8
---@field enemyMax uint8
---@field strongEnemyProbability uint8
---@field strongEnemyMax uint8
---@field rareEnemyProbability uint8
---@field rareEnemyMax uint8
---@field repopNormalNormal uint8
---@field repopNormalStrong uint8
---@field repopNormalRare uint8
---@field repopStrongNormal uint8
---@field repopStrongStrong uint8
---@field repopStrongRare uint8
---@field repopRareNormal uint8
---@field repopRareStrong uint8
---@field repopRareRare uint8
---@field reaper float
---@field encountPack uint16
---@field strongEncountPack uint16
---@field pinchEncountPack uint16
---@field pinchStrongEncountPack uint16
---@field rareEncountPack uint16
---@field continousEncount1 uint16
---@field continousEncount2 uint16
---@field doorGroup uint8
---@field doorProbability uint8
---@field returnDevProbability uint16
---@field tboxMin uint8
---@field tboxMax uint8
---@field tboxType uint8
---@field moneyProbability uint8
---@field moneyMin uint16
---@field moneyMax uint16
---@field tboxPack uint16
---@field rareTboxPack uint16
---@field jewelryTboxPack uint16
---@field primFieldTboxPack uint16
---@field medal1TboxPack uint16
---@field medal2TboxPack uint16
---@field medal3TboxPack uint16
---@field medal4TboxPack uint16
---@field medal5TboxPack uint16
---@field medal6TboxPack uint16
---@field doorTboxPack uint16
---@field doorRareTboxPack uint16
---@field doorJewelryTboxPack uint16
---@field doorPrimFieldTboxPack uint16
---@field doorMedal1TboxPack uint16
---@field doorMedal2TboxPack uint16
---@field doorMedal3TboxPack uint16
---@field doorMedal4TboxPack uint16
---@field doorMedal5TboxPack uint16
---@field doorMedal6TboxPack uint16
---@field missingPersonID uint32
---@field missingBuildID uint32
---@field scrFileNo uint32
local FFldDungeonFloorDataAssetRecord = {}



---@class FFldDungeonFloorDataTable : FTableRowBase
---@field flags uint32
---@field FieldMajor uint16
---@field FieldMinor uint16
---@field major uint16
---@field Minor uint16
---@field areaNo uint8
---@field envID uint8
---@field partMin uint8
---@field partMax uint8
---@field partSelTable uint8
---@field enemyMin uint8
---@field enemyMax uint8
---@field strongEnemyProbability uint8
---@field strongEnemyMax uint8
---@field rareEnemyProbability uint8
---@field rareEnemyMax uint8
---@field repopNormalNormal uint8
---@field repopNormalStrong uint8
---@field repopNormalRare uint8
---@field repopStrongNormal uint8
---@field repopStrongStrong uint8
---@field repopStrongRare uint8
---@field repopRareNormal uint8
---@field repopRareStrong uint8
---@field repopRareRare uint8
---@field reaper float
---@field encountPack uint16
---@field strongEncountPack uint16
---@field pinchEncountPack uint16
---@field pinchStrongEncountPack uint16
---@field rareEncountPack uint16
---@field continousEncount1 uint16
---@field continousEncount2 uint16
---@field doorGroup uint8
---@field doorProbability uint8
---@field returnDevProbability uint16
---@field tboxMin uint8
---@field tboxMax uint8
---@field tboxType uint8
---@field moneyProbability uint8
---@field moneyMin uint16
---@field moneyMax uint16
---@field tboxPack uint16
---@field rareTboxPack uint16
---@field jewelryTboxPack uint16
---@field primFieldTboxPack uint16
---@field medal1TboxPack uint16
---@field medal2TboxPack uint16
---@field medal3TboxPack uint16
---@field medal4TboxPack uint16
---@field medal5TboxPack uint16
---@field medal6TboxPack uint16
---@field doorTboxPack uint16
---@field doorRareTboxPack uint16
---@field doorJewelryTboxPack uint16
---@field doorPrimFieldTboxPack uint16
---@field doorMedal1TboxPack uint16
---@field doorMedal2TboxPack uint16
---@field doorMedal3TboxPack uint16
---@field doorMedal4TboxPack uint16
---@field doorMedal5TboxPack uint16
---@field doorMedal6TboxPack uint16
---@field missingPersonID uint32
---@field missingBuildID uint32
---@field scrFileNo uint32
local FFldDungeonFloorDataTable = {}



---@class FFldDungeonLayoutCombDataAssetRecord
---@field prio uint16
---@field Index uint16
---@field Data0_0_no uint8
---@field Data0_0_dir uint8
---@field Data0_0_y uint8
---@field Data0_1_no uint8
---@field Data0_1_dir uint8
---@field Data0_1_y uint8
---@field Data0_2_no uint8
---@field Data0_2_dir uint8
---@field Data0_2_y uint8
---@field Data1_0_no uint8
---@field Data1_0_dir uint8
---@field Data1_0_y uint8
---@field Data1_1_no uint8
---@field Data1_1_dir uint8
---@field Data1_1_y uint8
---@field Data1_2_no uint8
---@field Data1_2_dir uint8
---@field Data1_2_y uint8
---@field Data2_0_no uint8
---@field Data2_0_dir uint8
---@field Data2_0_y uint8
---@field Data2_1_no uint8
---@field Data2_1_dir uint8
---@field Data2_1_y uint8
---@field Data2_2_no uint8
---@field Data2_2_dir uint8
---@field Data2_2_y uint8
local FFldDungeonLayoutCombDataAssetRecord = {}



---@class FFldDungeonLayoutCombDataTable : FTableRowBase
---@field prio uint16
---@field Index uint16
---@field Data0_0_no uint8
---@field Data0_0_dir uint8
---@field Data0_0_y uint8
---@field Data0_1_no uint8
---@field Data0_1_dir uint8
---@field Data0_1_y uint8
---@field Data0_2_no uint8
---@field Data0_2_dir uint8
---@field Data0_2_y uint8
---@field Data1_0_no uint8
---@field Data1_0_dir uint8
---@field Data1_0_y uint8
---@field Data1_1_no uint8
---@field Data1_1_dir uint8
---@field Data1_1_y uint8
---@field Data1_2_no uint8
---@field Data1_2_dir uint8
---@field Data1_2_y uint8
---@field Data2_0_no uint8
---@field Data2_0_dir uint8
---@field Data2_0_y uint8
---@field Data2_1_no uint8
---@field Data2_1_dir uint8
---@field Data2_1_y uint8
---@field Data2_2_no uint8
---@field Data2_2_dir uint8
---@field Data2_2_y uint8
local FFldDungeonLayoutCombDataTable = {}



---@class FFldDungeonPartsSelDataAssetRecord
---@field parts01 uint8
---@field parts02 uint8
---@field parts03 uint8
---@field parts04 uint8
---@field parts05 uint8
---@field parts06 uint8
---@field parts07 uint8
---@field parts08 uint8
---@field primBit01 uint32
---@field primBit02 uint32
---@field primBit03 uint32
---@field scndBit01 uint32
---@field scndBit02 uint32
---@field scndBit03 uint32
---@field primNum uint8
---@field room uint8
---@field roomMax uint8
local FFldDungeonPartsSelDataAssetRecord = {}



---@class FFldDungeonPartsSelDataTable : FTableRowBase
---@field parts01 uint8
---@field parts02 uint8
---@field parts03 uint8
---@field parts04 uint8
---@field parts05 uint8
---@field parts06 uint8
---@field parts07 uint8
---@field parts08 uint8
---@field primBit01 uint32
---@field primBit02 uint32
---@field primBit03 uint32
---@field scndBit01 uint32
---@field scndBit02 uint32
---@field scndBit03 uint32
---@field primNum uint8
---@field room uint8
---@field roomMax uint8
local FFldDungeonPartsSelDataTable = {}



---@class FFldDungeonTBoxItemDataAssetRecord
---@field ItemId uint16
---@field itemNum uint16
local FFldDungeonTBoxItemDataAssetRecord = {}



---@class FFldDungeonTBoxItemDataTable : FTableRowBase
---@field ItemId uint16
---@field itemNum uint16
local FFldDungeonTBoxItemDataTable = {}



---@class FFldDungeonTBoxPacDataAssetRecord
---@field pacID uint32
---@field tboxID uint16
---@field Probability uint16
local FFldDungeonTBoxPacDataAssetRecord = {}



---@class FFldDungeonTBoxPacDataTable : FTableRowBase
---@field pacID uint32
---@field tboxID uint16
---@field Probability uint16
local FFldDungeonTBoxPacDataTable = {}



---@class FFldDungeonTBoxTypeDataAssetRecord
---@field rareMin uint16
---@field rareMax uint16
---@field jewelryMin uint16
---@field jewelryMax uint16
---@field primFieldMin uint16
---@field primFieldMax uint16
---@field medal1Min uint16
---@field medal1Max uint16
---@field medal2Min uint16
---@field medal2Max uint16
---@field medal3Min uint16
---@field medal3Max uint16
---@field medal4Min uint16
---@field medal4Max uint16
---@field medal5Min uint16
---@field medal5Max uint16
---@field medal6Min uint16
---@field medal6Max uint16
local FFldDungeonTBoxTypeDataAssetRecord = {}



---@class FFldDungeonTBoxTypeDataTable : FTableRowBase
---@field rareMin uint16
---@field rareMax uint16
---@field jewelryMin uint16
---@field jewelryMax uint16
---@field primFieldMin uint16
---@field primFieldMax uint16
---@field medal1Min uint16
---@field medal1Max uint16
---@field medal2Min uint16
---@field medal2Max uint16
---@field medal3Min uint16
---@field medal3Max uint16
---@field medal4Min uint16
---@field medal4Max uint16
---@field medal5Min uint16
---@field medal5Max uint16
---@field medal6Min uint16
---@field medal6Max uint16
local FFldDungeonTBoxTypeDataTable = {}



---@class FFldEnemyConditionAngerParam
---@field MovementRange float
---@field NormalSearch FFldEnemySearchParam
---@field PlayerNearSearch FFldEnemySearchParam
---@field PlayerDashSearch FFldEnemySearchParam
---@field PlayerFindingSearch FFldEnemySearchParam
---@field PlayerShootSerach FFldEnemySearchParam
---@field LoiterSpeed TArray<FFldEnemyLoiterParam>
---@field LoiterWaitTime float
---@field DiscoverTime float
---@field TrackingTime float
---@field TrackingRotSpeed float
---@field AttackSpeed float
---@field AttackRotSpeed float
---@field AttackSearchAngle float
---@field InertiaRunningTime float
---@field BrakingTime float
---@field LostWaitTime float
---@field RespawnInterval float
---@field RespawnDistance float
---@field VanishSpawnDistance float
---@field HitBoxOffset FVector
---@field HitBoxExtent FVector
local FFldEnemyConditionAngerParam = {}



---@class FFldEnemyConditionConfusionParam
---@field MovementRange float
---@field NormalSearch FFldEnemySearchParam
---@field PlayerNearSearch FFldEnemySearchParam
---@field PlayerDashSearch FFldEnemySearchParam
---@field PlayerFindingSearch FFldEnemySearchParam
---@field PlayerShootSerach FFldEnemySearchParam
---@field LoiterSpeed TArray<FFldEnemyLoiterParam>
---@field LoiterWaitTime float
---@field DiscoverWaitTime float
---@field TrackingSpeed FFldEnemyLoiterParam
---@field TrackingTime float
---@field TrackingSearchAngle float
---@field AttackBlendOut float
---@field AttackPlayRate float
---@field AttackRotMin int32
---@field AttackRotMax int32
---@field AttackRotSpeed float
---@field AttackRigidTime float
---@field LostWaitTime float
---@field RespawnInterval float
---@field RespawnDistance float
---@field VanishSpawnDistance float
---@field HitBoxOffset FVector
---@field HitBoxExtent FVector
local FFldEnemyConditionConfusionParam = {}



---@class FFldEnemyConditionFearParam
---@field MovementRange float
---@field NormalSearch FFldEnemySearchParam
---@field PlayerNearSearch FFldEnemySearchParam
---@field PlayerDashSearch FFldEnemySearchParam
---@field PlayerFindingSearch FFldEnemySearchParam
---@field PlayerShootSerach FFldEnemySearchParam
---@field LoiterSpeed TArray<FFldEnemyLoiterParam>
---@field LoiterWaitTime float
---@field DiscoverWaitTime float
---@field TrackingAngle float
---@field TrackingSpeed float
---@field TrackingTime float
---@field AttackBlendOut float
---@field WinceTime float
---@field WinceDistance float
---@field EscapeSpeed float
---@field EscapeRotSpeed float
---@field EscapeDistance float
---@field EscapeMinimumTime float
---@field LostWaitTime float
---@field RespawnInterval float
---@field RespawnDistance float
---@field VanishSpawnDistance float
---@field HitBoxOffset FVector
---@field HitBoxExtent FVector
local FFldEnemyConditionFearParam = {}



---@class FFldEnemyEffectParam
---@field Asset UNiagaraSystem
---@field SocketName FName
---@field Scale float
local FFldEnemyEffectParam = {}



---@class FFldEnemyFootprint
---@field Length float
---@field Scale float
---@field BeforLocation FVector
local FFldEnemyFootprint = {}



---@class FFldEnemyFootprintAsset
---@field Color UMaterialInterface
---@field Normal UMaterialInterface
local FFldEnemyFootprintAsset = {}



---@class FFldEnemyHolder
---@field Actor AActor
---@field EnemyComp UFldEnemyComp
local FFldEnemyHolder = {}



---@class FFldEnemyLoiterParam
---@field Length float
---@field Speed float
---@field CurveSpeed float
---@field CurveScale float
local FFldEnemyLoiterParam = {}



---@class FFldEnemyNormalParam
---@field MovementRange float
---@field NormalSearch FFldEnemySearchParam
---@field PlayerNearSearch FFldEnemySearchParam
---@field PlayerDashSearch FFldEnemySearchParam
---@field PlayerFindingSearch FFldEnemySearchParam
---@field PlayerShootSerach FFldEnemySearchParam
---@field LoiterSpeed TArray<FFldEnemyLoiterParam>
---@field LoiterWaitTime float
---@field TrackingSpeed float
---@field TrackingTime float
---@field AttackBlendOut float
---@field DiscoverWaitTime float
---@field LostWiatTime float
---@field EscapeSpeed float
---@field EscapeTime float
---@field EscapeWaitTime float
---@field EscapeResetDistance float
---@field EscapeVanishDistance float
---@field EscapeForceVanishDistance float
---@field RespawnInterval float
---@field RespawnDistance float
---@field VanishSpawnDistance float
---@field HitBoxOffset FVector
---@field HitBoxExtent FVector
local FFldEnemyNormalParam = {}



---@class FFldEnemyRareParam
---@field MovementRange float
---@field NormalSearch FFldEnemySearchParam
---@field PlayerNearSearch FFldEnemySearchParam
---@field PlayerDashSearch FFldEnemySearchParam
---@field PlayerFindingSearch FFldEnemySearchParam
---@field PlayerShootSerach FFldEnemySearchParam
---@field LoiterSpeed TArray<FFldEnemyLoiterParam>
---@field LoiterWaitTime float
---@field DiscoverWaitTime float
---@field EscapeSpeed float
---@field EscapeRotSpeed float
---@field EscapeTime float
---@field RespawnInterval float
---@field RespawnDistance float
local FFldEnemyRareParam = {}



---@class FFldEnemyReaperParam
---@field TrackingSpeed float
---@field AttackStartDistance float
---@field AttackPreparationTime float
---@field AttackBlendOut float
---@field AttackWaitTime float
---@field LockAtPlayerRotSpeed float
---@field HitBoxOffset FVector
---@field HitBoxExtent FVector
local FFldEnemyReaperParam = {}



---@class FFldEnemySearchParam
---@field Range float
---@field Angle float
local FFldEnemySearchParam = {}



---@class FFldEnemySkillReaction
---@field Normal FFldEnemySkillReactionParam
---@field Strong FFldEnemySkillReactionParam
---@field Rare FFldEnemySkillReactionParam
---@field Death FFldEnemySkillReactionParam
local FFldEnemySkillReaction = {}



---@class FFldEnemySkillReactionParam
---@field bJamming boolean
---@field bPressure boolean
local FFldEnemySkillReactionParam = {}



---@class FFldHeadIconData
---@field bIsVisible boolean
---@field mClassIndex int32
---@field mActor AActor
---@field mTransparency FAppCharTransparency
local FFldHeadIconData = {}



---@class FFldHitActorChgIconParam
---@field mFlagName FName
---@field mIconType EFldHitActorIconType
local FFldHitActorChgIconParam = {}



---@class FFldHitActorEachPlayerProc
---@field mPlayerID int32
---@field mProcActor TSubclassOf<AUtlProcActor>
---@field mKeyLock boolean
local FFldHitActorEachPlayerProc = {}



---@class FFldHitCharaIconParam
---@field mFlagName FName
---@field mIconType EFldHitCharaIconType
local FFldHitCharaIconParam = {}



---@class FFldHitCharaIdleTalkCharacterParam
---@field mNpcComp UFldNpcComp
---@field mMotionTimer float
---@field mMotionMaxTime float
---@field bIsLookAt float
---@field mLookTimer float
---@field mLookMaxTime float
local FFldHitCharaIdleTalkCharacterParam = {}



---@class FFldHitCharaModelParam
---@field mMajorID int32
---@field mMinorID int32
---@field mFbnNumber int32
---@field mNoCollision boolean
---@field mAddTransform FTransform
---@field mAttachProps00 FFldNpcCompAttachPropsParam
---@field mAttachProps01 FFldNpcCompAttachPropsParam
local FFldHitCharaModelParam = {}



---@class FFldHitCitLookParam : FFldHitCitTimeParam
---@field mTargetActer AFldLocalActor
local FFldHitCitLookParam = {}



---@class FFldHitCitTimeParam
---@field mMinTime float
---@field mMaxTime float
local FFldHitCitTimeParam = {}



---@class FFldHitInfo
---@field mArcanaID int32
---@field mCmmLevel int32
local FFldHitInfo = {}



---@class FFldHitNameTableRow : FTableRowBase
---@field Name FString
---@field flag FString
---@field Name2 FString
local FFldHitNameTableRow = {}



---@class FFldHitPartnerProcs
---@field Talk TSubclassOf<AUtlProcActor>
---@field Assemble TSubclassOf<AUtlProcActor>
local FFldHitPartnerProcs = {}



---@class FFldIconDispData
---@field mSet boolean
---@field mCharaActor AFldHitCharacter
---@field mHitActor AFldHitActor
---@field mTimer float
---@field mEndTime float
local FFldIconDispData = {}



---@class FFldLaoAnimData
---@field mAsset UAnimationAsset
local FFldLaoAnimData = {}



---@class FFldLmapData
---@field mCmmList TArray<FFldLmapData_CMM>
---@field mMaleQuestList TArray<FFldLmapData_NPC>
---@field mDormitoryList TArray<FFldLmapData_NPC>
---@field mKoromaruList TArray<FFldLmapData_NPC>
---@field mQuestList TArray<FFldLmapData_QUEST>
local FFldLmapData = {}



---@class FFldLmapData_CMM
---@field mArcanaID int32
---@field mRank int32
---@field mReverse boolean
---@field mName FString
local FFldLmapData_CMM = {}



---@class FFldLmapData_NPC
---@field mType EFldLmapData_NpcType
---@field mName FString
local FFldLmapData_NPC = {}



---@class FFldLmapData_QUEST
---@field mType EFldLmapData_QuestType
---@field mFlagName FString
---@field mDispName FString
local FFldLmapData_QUEST = {}



---@class FFldLoadCrowdLevel : FTableRowBase
---@field FieldMajor int32
---@field FieldMinor int32
---@field FieldPartsID int32
---@field DayDatas TArray<FFldLoadCrowdLevelDays>
---@field Time int32
---@field OnFlags TArray<int32>
---@field OffFlags TArray<int32>
---@field Type int32
---@field LevelName FString
local FFldLoadCrowdLevel = {}



---@class FFldLoadCrowdLevelDays
---@field StartMonth int32
---@field StartDay int32
---@field EndMonth int32
---@field EndDay int32
local FFldLoadCrowdLevelDays = {}



---@class FFldLoadLevelListData : FTableRowBase
---@field FieldMajor int32
---@field FieldMinor int32
---@field Bg TArray<FString>
---@field Lighting_NOON TArray<FString>
---@field Lighting_EVENING TArray<FString>
---@field Lighting_NIGHT TArray<FString>
---@field Lighting_SHADOW TArray<FString>
---@field Sound TArray<FString>
---@field AreaChange TArray<FString>
---@field Hit TArray<FString>
---@field Hit_SHADOW TArray<FString>
---@field NPC TArray<FString>
---@field Npc_NOON TArray<FString>
---@field Npc_EVENING TArray<FString>
---@field Npc_NIGHT TArray<FString>
---@field Npc_SHADOW TArray<FString>
---@field Cmm_NOON TArray<FString>
---@field Cmm_EVENING TArray<FString>
---@field Cmm_NIGHT TArray<FString>
---@field CrowdTarget TArray<FString>
local FFldLoadLevelListData = {}



---@class FFldLoadVariationLevel : FTableRowBase
---@field FieldMajor int32
---@field FieldMinor int32
---@field StartMonth int32
---@field StartDay int32
---@field EndMonth int32
---@field EndDay int32
---@field Time int32
---@field OnFlag int32
---@field OffFlag int32
---@field LevelName FString
local FFldLoadVariationLevel = {}



---@class FFldMailOrderTableRow : FTableRowBase
---@field DataIndex int32
---@field BuyMonth int32
---@field BuyDay int32
---@field ReceiveMonth int32
---@field ReceiveDay int32
---@field ItemA_ID int32
---@field ItemA_Num int32
---@field OneWordMsgID int32
---@field ItemB_ID int32
---@field ItemB_Num int32
---@field Price int32
---@field ProcID int32
local FFldMailOrderTableRow = {}



---@class FFldMiniMapData
---@field mNpcList TArray<FFldMiniMapData_NPC>
---@field mTargetList TArray<FFldMiniMapData_Target>
local FFldMiniMapData = {}



---@class FFldMiniMapData_NPC
---@field mType EFldMiniMapType_NPC
---@field mTransform FTransform
---@field mCharactor AActor
local FFldMiniMapData_NPC = {}



---@class FFldMiniMapData_Target
---@field mTransform FTransform
local FFldMiniMapData_Target = {}



---@class FFldMiscCharBaseReload_Data
---@field mType FFldMiscCharBaseReload_Type
---@field mCharaComp UAppCharacterComp
local FFldMiscCharBaseReload_Data = {}



---@class FFldNpcCompAttachPropsParam
---@field mAddTransform FTransform
local FFldNpcCompAttachPropsParam = {}



---@class FFldNpcCompOrnamentsInfo : FFldNpcCompPropsInfo
---@field mOnFlagValue int32
local FFldNpcCompOrnamentsInfo = {}



---@class FFldNpcCompPropsInfo
---@field mActor AAppPropsCore
---@field mFilePath FSoftObjectPath
---@field mAttachIndex int32
---@field mAttachName FString
---@field mTransform FTransform
---@field mMotionAttached boolean
---@field mWaitMotionID int32
---@field mSpeakMotionID int32
local FFldNpcCompPropsInfo = {}



---@class FFldNpcCompPropsParam
---@field mMajorID int32
---@field mMinorID int32
---@field mAddTransform FTransform
---@field mMotionAttached boolean
local FFldNpcCompPropsParam = {}



---@class FFldNpcCompTableRow : FTableRowBase
---@field ModelType int32
---@field ModelTableID int32
---@field CharaBagON int16
---@field CharShoesID int16
---@field HairTexID int16
---@field CosTexID int16
---@field SkinColorID int16
---@field HeightScale float
---@field WaitMotionID int32
---@field SpeakMotionID int32
---@field BreathSetting int16
---@field PersonalMotionID int32
---@field ToPersonalMotionTime float
---@field FromPersonalMotionTime float
---@field GoodsID_00 int32
---@field GoodsAttachName_00 FString
---@field GoodsAttachedMotion_00 int32
---@field GoodsWaitMotionID_00 int32
---@field GoodsSpeakMotionID_00 int32
---@field GoodsID_01 int32
---@field GoodsAttachName_01 FString
---@field GoodsAttachedMotion_01 int32
---@field GoodsWaitMotionID_01 int32
---@field GoodsSpeakMotionID_01 int32
---@field GoodsID_Onmt_00 int32
---@field OnFlag_Onmt_00 int32
---@field AttachName_Onmt_00 FString
---@field WaitMotionID_Onmt_00 int32
---@field SpeakMotionID_Onmt_00 int32
---@field GoodsID_Onmt_01 int32
---@field OnFlag_Onmt_01 int32
---@field AttachName_Onmt_01 FString
---@field WaitMotionID_Onmt_01 int32
---@field SpeakMotionID_Onmt_01 int32
---@field GoodsID_Onmt_02 int32
---@field OnFlag_Onmt_02 int32
---@field AttachName_Onmt_02 FString
---@field WaitMotionID_Onmt_02 int32
---@field SpeakMotionID_Onmt_02 int32
---@field GoodsID_Onmt_03 int32
---@field OnFlag_Onmt_03 int32
---@field AttachName_Onmt_03 FString
---@field WaitMotionID_Onmt_03 int32
---@field SpeakMotionID_Onmt_03 int32
---@field GoodsID_Onmt_04 int32
---@field OnFlag_Onmt_04 int32
---@field AttachName_Onmt_04 FString
---@field WaitMotionID_Onmt_04 int32
---@field SpeakMotionID_Onmt_04 int32
local FFldNpcCompTableRow = {}



---@class FFldNpcLayoutData
---@field mMajorID int32
---@field mMinorID int32
---@field mFieldPartsID int32
---@field mType EFldNpcActorType
---@field mIconType EFldHitCharaIconType
---@field mChangeIcons TArray<FFldHitCharaIconParam>
---@field mNameIndex int32
---@field mOnFlagName FName
---@field mOffFlagName FName
---@field mCharaTrans TArray<FTransform>
---@field mIconTran FTransform
---@field bNotMapInfo boolean
local FFldNpcLayoutData = {}



---@class FFldNpcLayoutList
---@field mFieldMajor int32
---@field mFieldMinor int32
---@field mTimeType int32
---@field mKeyfreeEventID int32
---@field mDataList TArray<FFldNpcLayoutData>
local FFldNpcLayoutList = {}



---@class FFldNpcLayoutTableRow : FTableRowBase
---@field FieldMajor int32
---@field FieldMinor int32
---@field FieldParts int32
---@field TimeType int32
---@field KeyfreeEventID int32
---@field majorId int32
---@field minorId int32
---@field Type EFldNpcActorType
---@field IconType EFldHitCharaIconType
---@field ChangeIcons TArray<FFldHitCharaIconParam>
---@field NameIndex int32
---@field OnFlagName FName
---@field OffFlagName FName
---@field CharaTrans TArray<FTransform>
---@field IconTran FTransform
---@field NotMapInfo boolean
local FFldNpcLayoutTableRow = {}



---@class FFldNpcNameTableRow : FTableRowBase
---@field Name FString
---@field flag FString
---@field Name2 FString
local FFldNpcNameTableRow = {}



---@class FFldPartnerData
---@field TrackingBeginDistance float
---@field TrackingNearDistance float
---@field TrackingUpdateDistance float
---@field AvoidPlayerDistance float
local FFldPartnerData = {}



---@class FFldPartnerHolder
---@field Pawn APawn
---@field PartnerComp UFldPartnerComp
local FFldPartnerHolder = {}



---@class FFldPersonalMotionData
---@field MotionID int32
---@field IsBag int32
---@field DailyCostumes TArray<FFldPmtCostumeDataCore>
local FFldPersonalMotionData = {}



---@class FFldPersonalMotionTableRow : FTableRowBase
---@field OnFlag int32
---@field OffFlag int32
---@field MotionID int32
---@field IsBag int32
---@field DailyCostumes TArray<FFldPmtCostumeDataCore>
local FFldPersonalMotionTableRow = {}



---@class FFldPlaceNameNameTableRowBase : FTableRowBase
---@field Index int32
---@field Name FString
local FFldPlaceNameNameTableRowBase = {}



---@class FFldPlayerAttackCollisionData
---@field CollisionSize FVector
---@field CollisionOffset FVector
---@field NearSideLength float
---@field LockOnDistanceCheckAngle float
local FFldPlayerAttackCollisionData = {}



---@class FFldPlayerAttackData
---@field AnimId EDungeonAnimID
---@field AnimBlendTime float
---@field WeaponAnimId int32
---@field BeginReceivingInputTime float
---@field EndReceivingInputTime float
---@field SwitchNextAttackTime float
---@field SwitchFreeStateTime float
---@field SlideRot float
---@field SlideScaleTime float
---@field SlideScale float
---@field VoiceId int32
---@field NextAttackId int32
local FFldPlayerAttackData = {}



---@class FFldPlayerAttackGuideData
---@field Range float
---@field Angle float
---@field GuideAngle float
local FFldPlayerAttackGuideData = {}



---@class FFldPlayerCostumeData
---@field CostumeType int16
---@field BagType int16
---@field ShoesID int16
local FFldPlayerCostumeData = {}



---@class FFldPlayerCostumeTableRow : FTableRowBase
---@field Data_DAY FFldPlayerCostumeData
---@field Data_AFTER FFldPlayerCostumeData
---@field Data_NIGHT FFldPlayerCostumeData
---@field Data_NIGHT_H FFldPlayerCostumeData
local FFldPlayerCostumeTableRow = {}



---@class FFldPlayerData
---@field InputDeadZone float
---@field InputWalkZone float
---@field InputInterpolation FFldPlayerInputInterpolationData
---@field Acceleration float
---@field Deceleration float
---@field RotSpeed float
---@field RotSpeed_Walk float
---@field TurnSpeed float
---@field TurnMoveRot float
---@field BrakingTime float
---@field BrakingSlideTime float
---@field ReverseBrakingTime float
---@field ReverseBrakingSlideTime float
---@field EncoutRadius float
---@field LongRangeAttackEncoutRadius float
---@field LockOnAnimAdvanceDuration float
---@field LockOnEffectSizeMin FVector
---@field LockOnEffectSizeMax FVector
---@field TurnAniStartRot float
---@field SwitchingTimeToAssault float
---@field SwitchingTimeToAssaultLv2 float
---@field AssaultGetTpLv1 float
---@field AssaultGetTpLv2 float
---@field AssaultUpsetRateLv1 int32
---@field AssaultUpsetRateLv2 int32
---@field IdleAttackId int32
---@field WalkAttackId int32
---@field RunAttackId int32
---@field DashAttackId int32
---@field AssaultAttackId int32
---@field AttackToMoveBlendTime float
---@field attack TMap<int32, FFldPlayerAttackData>
---@field AttackGuide TArray<FFldPlayerAttackGuideData>
---@field AttackCollision TMap<EFldAttackCollisionType, FFldPlayerAttackCollisionData>
---@field Rumble FRumbleData
---@field DashAttackEffectWaitTime float
---@field AssaultAttackJumpHeight float
---@field CharacterEffectSetup TMap<EDungeonEffectType, FFldCharacterEffectSetup>
local FFldPlayerData = {}



---@class FFldPlayerHolder
---@field Pawn APawn
---@field PlayerComp UFldPlayerComp
---@field DungeonComp UFldPlayerDungeonComp
local FFldPlayerHolder = {}



---@class FFldPlayerInputInterpolationData
---@field MinAgnle float
---@field MinFrame int32
---@field MaxAgnle float
---@field MaxFrame int32
---@field Border float
local FFldPlayerInputInterpolationData = {}



---@class FFldPmtCostumeDataCore
---@field CostumeIndex int32
---@field Setting int32
local FFldPmtCostumeDataCore = {}



---@class FFldPoolConnectTableRow : FTableRowBase
---@field Access TArray<FFldPoolParts>
local FFldPoolConnectTableRow = {}



---@class FFldPoolPackTableRow : FTableRowBase
---@field PartsList TArray<FFldPoolParts>
local FFldPoolPackTableRow = {}



---@class FFldPoolParts
---@field FieldMajor int32
---@field FieldMinor int32
---@field PrevLoad int32
---@field Noon int32
---@field Night int32
---@field Holiday int32
local FFldPoolParts = {}



---@class FFldSequenceDeleteParam
---@field mFlag uint32
---@field mNextSequence int32
---@field mLoadSubLevelList TArray<FString>
---@field mHideSubLevelList TArray<FString>
---@field mNextMajor int32
---@field mNextMinor int32
local FFldSequenceDeleteParam = {}



---@class FFldShortcutData
---@field mShortcutIndex int16
---@field mName FString
---@field mEnable boolean
local FFldShortcutData = {}



---@class FFldShortcutNameTableRowBase : FTableRowBase
---@field Index int32
---@field Name FString
local FFldShortcutNameTableRowBase = {}



---@class FFldSortieMemberTableRow : FTableRowBase
---@field flag int32
---@field Enables TArray<int32>
local FFldSortieMemberTableRow = {}



---@class FFldSoundMngAisacSet
---@field mAisacID uint32
---@field mNowValume float
local FFldSoundMngAisacSet = {}



---@class FFldTemporalAATableRow : FTableRowBase
---@field FieldMajorID int32
---@field FieldMinorID int32
---@field SamplesValue int32
---@field FrameWeight float
local FFldTemporalAATableRow = {}



---@class FFldTvProgramTableRow : FTableRowBase
---@field ObjIndex int32
---@field MotionID int32
---@field ProcID int32
local FFldTvProgramTableRow = {}



---@class FFontAdjustmentList : FTableRowBase
---@field Code int32
---@field Font FString
---@field Left_Adjustment float
---@field Right_Adjustment float
local FFontAdjustmentList = {}



---@class FFootIKSetupParam
---@field TraceDistance float
---@field TraceOffset float
---@field FootAdjustOffset float
---@field LeftFootSocketName FName
---@field RightFootSocketName FName
---@field VelocityThreshold float
local FFootIKSetupParam = {}



---@class FFootIKTraceResult
---@field bResultHit boolean
---@field HitLocation FVector
---@field Offset float
---@field FootRotation FRotator
local FFootIKTraceResult = {}



---@class FFrameBufferCaptureDebugWork
local FFrameBufferCaptureDebugWork = {}


---@class FGWFlagType : FTableRowBase
---@field Value uint32
---@field Offset uint32
---@field Comment FText
local FGWFlagType = {}



---@class FGWHashBase
---@field Name FName
---@field hash uint32
---@field Value uint32
local FGWHashBase = {}



---@class FGameOverPoemContent
---@field m_pEfTex UTexture
---@field m_pNormalTex UTexture
---@field pMatNormal UMaterialInstanceDynamic
---@field pMatEf UMaterialInstanceDynamic
local FGameOverPoemContent = {}



---@class FGenSelDrawInfo
---@field System UGenericSelectSystemBase
local FGenSelDrawInfo = {}



---@class FGenSelItemDefine
---@field DefineValue int32
---@field DefineName FString
---@field TitleText FString
---@field CommentText FString
local FGenSelItemDefine = {}



---@class FGenSelItemDefineTable : FTableRowBase
---@field DefineValue int32
---@field DefineName FString
---@field TitleText FString
---@field CommentText FString
local FGenSelItemDefineTable = {}



---@class FGenSelItemLineup
---@field Data TArray<FGenSelItemLineupItem>
local FGenSelItemLineup = {}



---@class FGenSelItemLineupItem
---@field ItemId uint16
---@field VisibleFlag uint32
local FGenSelItemLineupItem = {}



---@class FGenSelItemLineupTable : FTableRowBase
---@field ItemId FString
---@field VisibleFlag FString
local FGenSelItemLineupTable = {}



---@class FGenSelListElementInterface
local FGenSelListElementInterface = {}


---@class FGenSelListItemElement : FGenSelListElementInterface
local FGenSelListItemElement = {}


---@class FGenSelListMsgElement : FGenSelListElementInterface
local FGenSelListMsgElement = {}


---@class FGenSelListShopElement : FGenSelListMsgElement
local FGenSelListShopElement = {}


---@class FGeneralCoefficientRow : FTableRowBase
---@field flag FName
---@field Coefficient float
local FGeneralCoefficientRow = {}



---@class FGenericSelectCharacterTextureItem
---@field characterId uint32
---@field pTexture UTexture
local FGenericSelectCharacterTextureItem = {}



---@class FGetUIParameter
---@field ParameterAsset UUIParameterAsset
---@field ParameterMap TMap<FString, float>
---@field AssetLoader UAssetLoader
local FGetUIParameter = {}



---@class FGlobalGameDataInheritanceTableRow : FTableRowBase
---@field Type int16
---@field Parameter int32
local FGlobalGameDataInheritanceTableRow = {}



---@class FHeroParameterHandleSaveData_t
local FHeroParameterHandleSaveData_t = {}


---@class FHeroParameterNameRow : FTableRowBase
---@field Brain FText
---@field charm FText
---@field Courage FText
local FHeroParameterNameRow = {}



---@class FHeroParameterPointRow : FTableRowBase
---@field BrainPoint int32
---@field CharmPoint int32
---@field CouragePoint int32
local FHeroParameterPointRow = {}



---@class FHeroParameterSaveData_t
local FHeroParameterSaveData_t = {}


---@class FHeroParameterTable
---@field Points TArray<int32>
local FHeroParameterTable = {}



---@class FHiddenArbeitData
---@field Month int32
---@field Day int32
---@field TotalDay int32
---@field TimeZone EArbeitOrderableTime
---@field Visibility boolean
---@field EnableFlag uint32
local FHiddenArbeitData = {}



---@class FHiddenArbeitTableItem : FTableRowBase
---@field Month int32
---@field Day int32
---@field TimeZone EArbeitOrderableTime
---@field Visibility boolean
---@field EnableFlag FString
local FHiddenArbeitTableItem = {}



---@class FHolidayEventData
---@field major int32
---@field Minor int32
local FHolidayEventData = {}



---@class FHolidayEventDataTable
---@field Datas TArray<FHolidayEventData>
local FHolidayEventDataTable = {}



---@class FHolidayEventRow : FTableRowBase
---@field major int32
---@field Minor int32
local FHolidayEventRow = {}



---@class FHolidayScheduleData
---@field Month int32
---@field Day int32
---@field ArcanaID int32
local FHolidayScheduleData = {}



---@class FHolidayScheduleRow : FTableRowBase
---@field Month int32
---@field Day int32
---@field ArcanaID_A FName
---@field ArcanaID_B FName
---@field ArcanaID_C FName
local FHolidayScheduleRow = {}



---@class FItemGetTableRow : FTableRowBase
---@field OutWaitFrame int32
---@field MaruPekeBounceFrame int32
---@field Param1 int32
---@field Param2 int32
---@field param3 int32
---@field param4 int32
local FItemGetTableRow = {}



---@class FItemListItem
local FItemListItem = {}


---@class FItemNameList : FTableRowBase
---@field ItemName FString
local FItemNameList = {}



---@class FItemShopLineUpList : FShopLineUpListBase
local FItemShopLineUpList = {}


---@class FItemShopLineUpListRecord : FTableRowBase
---@field Value uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FItemShopLineUpListRecord = {}



---@class FLicenseDataTables : FTableRowBase
---@field Contents FString
local FLicenseDataTables = {}



---@class FLicenseTextData
local FLicenseTextData = {}


---@class FLicenseTextOneLineData
local FLicenseTextOneLineData = {}


---@class FLipsyncAppListener
---@field CharcterCategoryType EAppCharCategoryType
---@field CharaIndexID int32
---@field SoundMajorID int32
---@field SoundMinorID int32
---@field PlayingCheckWaitTime float
local FLipsyncAppListener = {}



---@class FLocalizeStaffRollStruct : FTableRowBase
---@field Name1 FString
---@field Name2 FString
---@field Name3 FString
---@field Tag int32
---@field NameNum int32
---@field SprID int32
local FLocalizeStaffRollStruct = {}



---@class FMailIncomingItem
---@field ID uint16
---@field SenderID uint16
---@field Group uint16
---@field Category EMailCategory
---@field StartMonth uint8
---@field StartDays uint8
---@field EndMonth uint8
---@field EndDays uint8
---@field ReceiveTime EMailTime
---@field WeekFlag uint8
---@field bWeekday boolean
---@field bHoliday boolean
---@field bRankUp boolean
---@field bOnlyOnce boolean
---@field ArcanaID uint8
---@field ArcanaCondition EMailCondition
---@field Rank uint8
---@field InviteCounter uint8
---@field CounterID int32
---@field CounterCondition EMailCondition
---@field CounterValue int32
---@field MailBmdFileName FString
---@field SenderLabelID int32
---@field TitleLabelID int32
---@field BodyLabelID int32
---@field ScriptBfFileName FString
---@field ScriptBmdFileName FString
---@field EnableFlags TArray<int32>
---@field DisableFlags TArray<int32>
local FMailIncomingItem = {}



---@class FMailIncomingTable : FTableRowBase
---@field MailID uint16
---@field SenderID uint16
---@field Group uint16
---@field Category uint8
---@field StartMonth uint8
---@field StartDays uint8
---@field EndMonth uint8
---@field EndDays uint8
---@field ReceiveTime uint8
---@field Sun boolean
---@field Mon boolean
---@field Tue boolean
---@field Wed boolean
---@field Thr boolean
---@field Fri boolean
---@field Sat boolean
---@field Weekday boolean
---@field Holiday boolean
---@field RankUp boolean
---@field OnlyOnce boolean
---@field ArcanaID uint8
---@field ArcanaCondition uint8
---@field Rank uint8
---@field InviteCounter uint8
---@field CounterID FString
---@field CounterCondition uint8
---@field CounterValue int32
---@field MailBmdFileName FString
---@field SenderLabel FString
---@field TitleLabel FString
---@field BodyLabel FString
---@field ScriptBfFileName FString
---@field ScriptBmdFileName FString
---@field EnableFlag0 FString
---@field EnableFlag1 FString
---@field EnableFlag2 FString
---@field DisableFlag0 FString
---@field DisableFlag1 FString
---@field DisableFlag2 FString
local FMailIncomingTable = {}



---@class FMaterialItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field Rarity uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FMaterialItemList = {}



---@class FMaterialItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field Rarity uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FMaterialItemListRecord = {}



---@class FMiniMapIconList : FTableRowBase
---@field IconName FString
---@field SprType int32
---@field SprNo int32
---@field X float
---@field Y float
---@field DegreeAngle float
---@field VisibleFlag FString
---@field DisableFlag FString
local FMiniMapIconList = {}



---@class FMiniMapInfoTable : FTableRowBase
---@field FieldID FString
---@field Scale float
---@field DegreeAngle float
---@field Hide boolean
---@field VLScale float
local FMiniMapInfoTable = {}



---@class FMiniMapOffsetTable : FTableRowBase
---@field FieldID FString
---@field OffsetX int32
---@field OffsetY int32
local FMiniMapOffsetTable = {}



---@class FMissingParamTableRow : FTableRowBase
---@field PlateQuestInAllFrame int32
---@field PlateQuestInStartFrame int32
---@field PlateChangeAllFrame int32
---@field PlateChangeStartFrame int32
---@field PlateChangeOutAllFrame int32
---@field PlateChangeOutStartFrame int32
---@field ListChangeAllFrame int32
---@field ListChangeStartFrame int32
---@field AlphaBGNoCampAllFrame int32
---@field AlphaBGNoCampStartFrame int32
---@field BGPlateNoCampAllFrame int32
---@field BGPlateNoCampStartFrame int32
---@field MissingPlateNoCampAllFrame int32
---@field MissingPlateNoCampStartFrame int32
---@field ListNoCampAllFrame int32
---@field ListNoCampStartFrame int32
---@field DetailInPlateAllFrame int32
---@field DetailInPlateStartFrame int32
---@field DetailInInfoAllFrame int32
---@field DetailInInfoStartFrame int32
---@field DetailInCursorAllFrame int32
---@field DetailInCursorStartFrame int32
---@field DetailInMoreInfoAllFrame int32
---@field DetailInMoreInfoStartFrame int32
---@field DetailInNotSelectAllFrame int32
---@field DetailInNotSelectStartFrame int32
---@field DetailInCompleteAllFrame int32
---@field DetailInCompleteStartFrame int32
---@field DetailOutPlateAllFrame int32
---@field DetailOutPlateStartFrame int32
---@field DetailOutInfoAllFrame int32
---@field DetailOutInfoStartFrame int32
---@field DetailOutCursorAllFrame int32
---@field DetailOutCursorStartFrame int32
---@field DetailOutMoreInfoAllFrame int32
---@field DetailOutMoreInfoStartFrame int32
---@field DetailOutNotSelectAllFrame int32
---@field DetailOutNotSelectStartFrame int32
---@field DetailOutCompleteAllFrame int32
---@field DetailOutCompleteStartFrame int32
---@field DetailShowPrevContentFrame int32
---@field DetailChangeInfoAllFrame int32
---@field DetailChangeInfoStartFrame int32
---@field DetailChangeCompleteAllFrame int32
---@field DetailChangeCompleteStartFrame int32
---@field SortPrevAllFrame int32
---@field SortPrevStartFrame int32
---@field SortNewAllFrame int32
---@field SortNewStartFrame int32
---@field SortListAllFrame int32
---@field SortListStartFrame int32
---@field PlateWhenMissingX float
---@field PlateWhenMissingY float
---@field PlateWhenQuestX float
---@field PlateWhenQuestY float
---@field PlateInY float
---@field TatumiY float
---@field CursorRedInAllFrame float
---@field CursorRedInStartFrame float
local FMissingParamTableRow = {}



---@class FModelCaptureEnvironment
---@field ScalarParameters TArray<FCollectionScalarParameter>
---@field VectorParameters TArray<FCollectionVectorParameter>
local FModelCaptureEnvironment = {}



---@class FModelCaptureLayoutItem
---@field Location FVector
---@field Rotation FRotator
---@field RotationOffset FVector
---@field FOV float
---@field bRotationLocal boolean
---@field bYawLimit boolean
---@field YawMinusLimit float
---@field YawPlusLimit float
---@field AnimType EAnimationType
---@field Environment FModelCaptureEnvironment
local FModelCaptureLayoutItem = {}



---@class FMoonAgeProbabilityItem
---@field ConceptionRate uint16
---@field SkillChangeRate uint16
---@field AccidentRate uint16
local FMoonAgeProbabilityItem = {}



---@class FMoonAgeProbabilityTable : FTableRowBase
---@field ConceptionRate uint16
---@field SkillChangeRate uint16
---@field AccidentRate uint16
local FMoonAgeProbabilityTable = {}



---@class FMovieSceneEvtAdxSoundFadeSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtAdxSoundFadePayload>
local FMovieSceneEvtAdxSoundFadeSectionData = {}



---@class FMovieSceneEvtAdxSoundFadeSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtAdxSoundFadeSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtAdxSoundFadeSectionTemplate = {}



---@class FMovieSceneEvtAdxSoundManageSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtAdxSoundManagePayload>
local FMovieSceneEvtAdxSoundManageSectionData = {}



---@class FMovieSceneEvtAdxSoundManageSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtAdxSoundManageSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtAdxSoundManageSectionTemplate = {}



---@class FMovieSceneEvtAdxSoundSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtAdxSoundPayload>
local FMovieSceneEvtAdxSoundSectionData = {}



---@class FMovieSceneEvtAdxSoundSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtAdxSoundSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtAdxSoundSectionTemplate = {}



---@class FMovieSceneEvtCharaAnimationParameters
local FMovieSceneEvtCharaAnimationParameters = {}


---@class FMovieSceneEvtCharaAnimationParams
---@field AnimationAsset UAnimSequenceBase
local FMovieSceneEvtCharaAnimationParams = {}



---@class FMovieSceneEvtCharaAnimationSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaAnimationPayload>
local FMovieSceneEvtCharaAnimationSectionData = {}



---@class FMovieSceneEvtCharaAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaAnimationSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaAnimationSectionTemplate = {}



---@class FMovieSceneEvtCharaHandwritingSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaHandwritingPayload>
local FMovieSceneEvtCharaHandwritingSectionData = {}



---@class FMovieSceneEvtCharaHandwritingSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaHandwritingSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaHandwritingSectionTemplate = {}



---@class FMovieSceneEvtCharaOperationControllerSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaOperationControllerPayload>
local FMovieSceneEvtCharaOperationControllerSectionData = {}



---@class FMovieSceneEvtCharaOperationControllerSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaOperationControllerSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaOperationControllerSectionTemplate = {}



---@class FMovieSceneEvtCharaPackAnimationParams
---@field EventAnimID EEventAnimID
---@field CommonAnimID ECommonAnimID
---@field DungeonAnimID EDungeonAnimID
---@field StartOffset float
---@field EndOffset float
---@field BlendIn float
---@field BlendOut float
---@field PlayRate float
local FMovieSceneEvtCharaPackAnimationParams = {}



---@class FMovieSceneEvtCharaPackAnimationSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaPackAnimationPayload>
local FMovieSceneEvtCharaPackAnimationSectionData = {}



---@class FMovieSceneEvtCharaPackAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaPackAnimationSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaPackAnimationSectionTemplate = {}



---@class FMovieSceneEvtCharaPackFaceAnimationParams
---@field AnimationAsset UAnimSequenceBase
local FMovieSceneEvtCharaPackFaceAnimationParams = {}



---@class FMovieSceneEvtCharaPackFaceAnimationSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaPackFaceAnimationPayload>
local FMovieSceneEvtCharaPackFaceAnimationSectionData = {}



---@class FMovieSceneEvtCharaPackFaceAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaPackFaceAnimationSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaPackFaceAnimationSectionTemplate = {}



---@class FMovieSceneEvtCharaPropAttachSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtCharaPropAttachPayload>
local FMovieSceneEvtCharaPropAttachSectionData = {}



---@class FMovieSceneEvtCharaPropAttachSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtCharaPropAttachSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtCharaPropAttachSectionTemplate = {}



---@class FMovieSceneEvtConditionalBranchData
---@field ConditionalType EEvtConditionalBranchType
---@field ConditionalNo int32
---@field ConditionalValue int32
---@field CompareType EEvtConditionalBranchCompType
---@field EvtManagerBindingID FMovieSceneObjectBindingID
local FMovieSceneEvtConditionalBranchData = {}



---@class FMovieSceneEvtDialogueOptionsParameters
local FMovieSceneEvtDialogueOptionsParameters = {}


---@class FMovieSceneEvtDialogueOptionsSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtDialogueOptionsPayload>
local FMovieSceneEvtDialogueOptionsSectionData = {}



---@class FMovieSceneEvtDialogueOptionsSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtDialogueOptionsSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
local FMovieSceneEvtDialogueOptionsSectionTemplate = {}



---@class FMovieSceneEvtDialogueSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtDialoguePayload>
local FMovieSceneEvtDialogueSectionData = {}



---@class FMovieSceneEvtDialogueSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtDialogueSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtDialogueSectionTemplate = {}



---@class FMovieSceneEvtFadeScreenSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtFadeScreenPayload>
local FMovieSceneEvtFadeScreenSectionData = {}



---@class FMovieSceneEvtFadeScreenSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtFadeScreenSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtFadeScreenSectionTemplate = {}



---@class FMovieSceneEvtFieldAnimationSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtFieldAnimationPayload>
local FMovieSceneEvtFieldAnimationSectionData = {}



---@class FMovieSceneEvtFieldAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtFieldAnimationSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtFieldAnimationSectionTemplate = {}



---@class FMovieSceneEvtMessageSubtitleSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtMessageSubtitlePayload>
local FMovieSceneEvtMessageSubtitleSectionData = {}



---@class FMovieSceneEvtMessageSubtitleSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtMessageSubtitleSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtMessageSubtitleSectionTemplate = {}



---@class FMovieSceneEvtMovieSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtMoviePayload>
local FMovieSceneEvtMovieSectionData = {}



---@class FMovieSceneEvtMovieTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtMovieSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtMovieTemplate = {}



---@class FMovieSceneEvtScriptSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtScriptPayload>
local FMovieSceneEvtScriptSectionData = {}



---@class FMovieSceneEvtScriptSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtScriptSectionData
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtScriptSectionTemplate = {}



---@class FMovieSceneEvtSeqControllerSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtSeqControllerPayload>
local FMovieSceneEvtSeqControllerSectionData = {}



---@class FMovieSceneEvtSeqControllerSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtSeqControllerSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtSeqControllerSectionTemplate = {}



---@class FMovieSceneEvtSeqTimeJumpControllerSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEvtSeqTimeJumpControllerPayload>
local FMovieSceneEvtSeqTimeJumpControllerSectionData = {}



---@class FMovieSceneEvtSeqTimeJumpControllerSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEvtSeqTimeJumpControllerSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local FMovieSceneEvtSeqTimeJumpControllerSectionTemplate = {}



---@class FMoviesEventData
---@field Month int8
---@field Day int8
---@field ArcanaID int32
---@field MailID int32
---@field major int16
---@field Minor int16
---@field CommunityRankMin int8
---@field CommunityRankMax int8
---@field OffFlag uint32
local FMoviesEventData = {}



---@class FMoviesEventRow : FTableRowBase
---@field Month int8
---@field Day int8
---@field ArcanaID FName
---@field MailID int32
---@field major int16
---@field Minor int16
---@field CommunityRankMin int8
---@field CommunityRankMax int8
---@field OffFlag FName
local FMoviesEventRow = {}



---@class FMsgItemInfo
local FMsgItemInfo = {}


---@class FNameNumberPairTable : FTableRowBase
---@field Name FString
---@field Number int32
local FNameNumberPairTable = {}



---@class FNormalSpreadItem
---@field Races TArray<uint8>
local FNormalSpreadItem = {}



---@class FNormalSpreadTable : FTableRowBase
---@field FOOL uint8
---@field MAGICIA uint8
---@field PRIESTE uint8
---@field EMPRESS uint8
---@field EMPEROR uint8
---@field HIEROPH uint8
---@field LOVERS uint8
---@field CHARIOT uint8
---@field JUSTICE uint8
---@field HERMIT uint8
---@field FORTUNE uint8
---@field STRENGT uint8
---@field HANGEDM uint8
---@field Death uint8
---@field TEMPERA uint8
---@field DEVIL uint8
---@field TOWER uint8
---@field STAR uint8
---@field MOON uint8
---@field Sun uint8
---@field JUDGEME uint8
---@field World uint8
local FNormalSpreadTable = {}



---@class FNotRankUpEventRow : FTableRowBase
---@field Rank int32
---@field major int16
---@field Minor int16
---@field Comment FName
local FNotRankUpEventRow = {}



---@class FPauseDebugItem
local FPauseDebugItem = {}


---@class FPersonaConfigItem
---@field BirthMsgNo int32
---@field ToneType uint32
---@field VoicePack uint32
local FPersonaConfigItem = {}



---@class FPersonaConfigTable : FTableRowBase
---@field BirthMsg FString
---@field ToneType FString
---@field VoicePack FString
local FPersonaConfigTable = {}



---@class FPersonaLiftItem
---@field PersonaID uint16
---@field OrFlag uint32
---@field AndFlag uint32
local FPersonaLiftItem = {}



---@class FPersonaLiftTable : FTableRowBase
---@field Value uint16
---@field OrFlag uint32
---@field AndFlag uint32
local FPersonaLiftTable = {}



---@class FPersonaStatusListItem
local FPersonaStatusListItem = {}


---@class FPgBtlResultWipe
---@field m_curveFadeOutBlack FCurveVectorAnimation
---@field m_curveFadeOutBlue FCurveVectorAnimation
---@field m_curveFadeInBlack FCurveVectorAnimation
---@field objList TArray<UBtlGuiDrawObjectPrimitive>
---@field m_Watcher UBattleResultWatcher
---@field centerOffset FVector2D
---@field Offset1 FVector2D
---@field Offset2 FVector2D
---@field Offset3 FVector2D
---@field m_bLoading boolean
---@field m_bLoaded boolean
---@field m_bMainLoaded boolean
local FPgBtlResultWipe = {}



---@class FPoetryParamTable : FTableRowBase
---@field Type FPoetryTexturePath
---@field PosX float
---@field PosY float
---@field DrawPoint uint8
---@field TextureNum uint8
---@field Scale float
local FPoetryParamTable = {}



---@class FPoetryRipplesParam : FTableRowBase
---@field PosX float
---@field PosY float
local FPoetryRipplesParam = {}



---@class FPoetryTexturePath
---@field Blur FString
---@field Ef FString
---@field Normal FString
local FPoetryTexturePath = {}



---@class FPointUpNote
local FPointUpNote = {}


---@class FRankUpEventRow : FTableRowBase
---@field Rank int16
---@field Point int16
---@field major int16
---@field Minor int16
---@field Brain int8
---@field charm int8
---@field Courage int8
---@field Flag0 FName
---@field Flag1 FName
---@field Flag2 FName
---@field Flag3 FName
---@field Comment FName
local FRankUpEventRow = {}



---@class FRaytraceActorData : FTableRowBase
---@field actorName FString
---@field materialNames TArray<FString>
local FRaytraceActorData = {}



---@class FRaytraceFieldData : FTableRowBase
---@field minorId int32
---@field rayTraceEnable boolean
---@field maxRoughness float
---@field reflectionMaxBounces int32
---@field reflectionShadow int32
---@field rayTracingCulling int32
---@field rayTracingCullingRadius int32
---@field rayTracingCullingAngle int32
---@field rayTracingGeometryWPOCullingRadius int32
---@field actorDatas TArray<FRaytraceActorData>
---@field planarReflectionActorDatas TArray<FRaytracePlanarReflectionActorData>
local FRaytraceFieldData = {}



---@class FRaytraceFieldDataTable : FTableRowBase
---@field majorId int32
---@field fieldDatas TArray<FRaytraceFieldData>
local FRaytraceFieldDataTable = {}



---@class FRaytracePlanarReflectionActorData : FTableRowBase
---@field actorName FString
---@field percentage int32
---@field highendOnly boolean
local FRaytracePlanarReflectionActorData = {}



---@class FRequestParamTableRow : FTableRowBase
---@field InFrame int32
---@field OutFrame int32
---@field DetailInFrame int32
---@field DetailOutFrame int32
---@field ListInFrame int32
---@field ListOutFrame int32
---@field AllCampFirstInWaitFrame int32
---@field AllElizFirstInWaitFrame int32
---@field ListFirstInWaitFrame int32
local FRequestParamTableRow = {}



---@class FRumbleData
---@field Encount FRumbleParam
---@field PinchEncount FRumbleParam
---@field Broken FRumbleParam
local FRumbleData = {}



---@class FRumbleParam
---@field power int32
---@field Frame int32
---@field WaitFrame int32
---@field Num int32
---@field TotalFram int32
local FRumbleParam = {}



---@class FSaveGameHeadder
---@field GameName FString
---@field SaveSlotName FString
---@field UserIndex uint32
---@field FirstName int8
---@field LastName int8
---@field Month int32
---@field Day int32
---@field Week ECldWeek
---@field TimeZone ECldTimeZone
---@field FldMajorID int32
---@field FldMinorID int32
---@field FldPartsID int32
---@field PlayerLevel uint32
---@field Difficulty uint16
---@field PlayTime uint32
---@field Age ECldMoonAge
---@field ClearStatus int32
local FSaveGameHeadder = {}



---@class FSaveLoadAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
local FSaveLoadAnimParams = {}



---@class FSaveSlotItem
---@field SlotNo int32
---@field Month int32
---@field Day int32
---@field PLV int32
---@field Week int32
---@field bHoliday boolean
---@field PTimeHour int32
---@field PTimeMin int32
---@field Diff int32
---@field MoonAge int32
---@field TimeZone int32
---@field PlayerName FString
---@field LocationName FString
---@field bIsGoodEnd boolean
---@field bIsBadEnd boolean
---@field bIsAstreaClear boolean
---@field bIsAstreaManiacsClear boolean
---@field bIsLoaded boolean
---@field bHasData boolean
---@field bUseDefaultHeroName boolean
---@field bIsDateUnknownAstrea boolean
local FSaveSlotItem = {}



---@class FSeedLotteryTableItem : FTableRowBase
---@field Key int32
---@field ItemId uint16
---@field cost int32
---@field Rate int32
---@field RwdItemID uint16
---@field RwdNum int32
local FSeedLotteryTableItem = {}



---@class FSelData
local FSelData = {}


---@class FSelectSkillData
local FSelectSkillData = {}


---@class FShadowFieldData : FTableRowBase
---@field majorId int32
---@field minorId int32
---@field partsId FString
---@field dataCategory EShadowSettingCategory
---@field actorList TArray<FShadowSettingData>
---@field childComponentList TArray<FShadowSettingData>
local FShadowFieldData = {}



---@class FShadowSettingData : FTableRowBase
---@field Name FString
---@field shadowBiasHigh float
local FShadowSettingData = {}



---@class FShoesItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Evasion uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FShoesItemList = {}



---@class FShoesItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field EquipID uint32
---@field Rarity uint16
---@field Tier uint16
---@field Evasion uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FShoesItemListRecord = {}



---@class FShopLineUpListBase
---@field Value uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FShopLineUpListBase = {}



---@class FShortcutItem
---@field Data FFldShortcutData
local FShortcutItem = {}



---@class FShuffleBackGroundPrimitiveDrawObject
---@field SlideX float
---@field ScaleW float
---@field ScaleH float
---@field PosBase FVector
---@field RotationBase float
---@field RotationBeforeExpansion float
---@field RotationAfterExpansion float
---@field SpeedRotationBeforeExpansion float
---@field SpeedRotationAfterExpansion float
---@field TimeRotationBeforeExpansion float
---@field TimeRotationAfterExpansion float
---@field ChangeTimeRotationBeforeExpansion float
---@field ChangeTimeRotationAfterExpansion float
---@field Move FVector
---@field SpeedMove FVector
---@field TimeMove float
---@field ChangeTimeMove float
local FShuffleBackGroundPrimitiveDrawObject = {}



---@class FShuffleCardInfo
---@field Card AAppPropsCore
---@field Pos FVector
---@field PosBase FVector
---@field PosAllMove FVector
---@field PosWaittingMove FVector
---@field SpeedWatting FVector
---@field BaseRotX float
---@field BaseRotZ float
---@field RotationX float
---@field RotationZ float
---@field SppedRotationX float
---@field SppedRotationZ float
---@field PosMoveFrom FVector
---@field PosMoveTo FVector
---@field RotMoveXFrom float
---@field RotMoveXTo float
---@field RotMoveZFrom float
---@field RotMoveZTo float
---@field MoveLerpValue float
---@field MoveAfterState EBtlShuffleCardState
---@field MoveTime float
---@field State EBtlShuffleCardState
---@field Moving boolean
---@field isOutAnimeSelectEffect boolean
---@field SelectEffectAlpha float
---@field EffectSelectState EBtlShuffleCardEffectSelectState
---@field ValueCardRotation float
---@field TimeWaitCardRotation float
---@field StateCardRotation EBtlShuffleCardRotationState
---@field IsTickCard boolean
---@field IsStartMajorAppear boolean
---@field RotationMajorAppear float
local FShuffleCardInfo = {}



---@class FShuffleSmallArcanaDrawObject
---@field Card UBtlGuiDrawObjectSprite
---@field Shine1 UBtlGuiDrawObjectSprite
---@field Shine2 UBtlGuiDrawObjectSprite
---@field Frame UBtlGuiDrawObjectSprite
---@field BonusShine UBtlGuiDrawObjectSprite
---@field Glow UBtlGuiDrawObjectSprite
---@field GetEffect UBtlGuiDrawObjectSprite
---@field isNewGetArcana boolean
---@field GlowAlpha float
---@field GlowWaitAnimeTime float
---@field isStartGlowWaitAnime boolean
local FShuffleSmallArcanaDrawObject = {}



---@class FSimpleShopData
---@field Data TArray<FSimpleShopLineup>
local FSimpleShopData = {}



---@class FSimpleShopLineup
---@field ItemId uint16
---@field SellWeekFlag uint8
---@field LiftMonth uint8
---@field LiftDays uint8
---@field Stock uint8
---@field ResetWeekFlag uint8
---@field OpenFlag int32
local FSimpleShopLineup = {}



---@class FSimpleShopTable : FTableRowBase
---@field ItemId FString
---@field SellSun boolean
---@field SellMon boolean
---@field SellTue boolean
---@field SellWed boolean
---@field SellThr boolean
---@field SellFri boolean
---@field SellSat boolean
---@field LiftMonth uint8
---@field LiftDays uint8
---@field Stock uint8
---@field ResetSun boolean
---@field ResetMon boolean
---@field ResetTue boolean
---@field ResetWed boolean
---@field ResetThr boolean
---@field ResetFri boolean
---@field ResetSat boolean
---@field OpenFlag FString
local FSimpleShopTable = {}



---@class FSkillAffinityItem
---@field Bit uint32
local FSkillAffinityItem = {}



---@class FSkillAffinityTable : FTableRowBase
---@field Slash boolean
---@field strike boolean
---@field pierce boolean
---@field fire boolean
---@field ice boolean
---@field electric boolean
---@field wind boolean
---@field almighty boolean
---@field Light boolean
---@field dark boolean
---@field charm boolean
---@field poison boolean
---@field upset boolean
---@field panic boolean
---@field fear boolean
---@field anger boolean
---@field recovery boolean
---@field support boolean
---@field Special boolean
local FSkillAffinityTable = {}



---@class FSkillChangeItem
---@field SkillPack uint16
local FSkillChangeItem = {}



---@class FSkillChangeTable : FTableRowBase
---@field SkillPack uint16
local FSkillChangeTable = {}



---@class FSkillLimitItem
---@field TotalSkillNum uint8
---@field InheritanceSkillNum uint8
local FSkillLimitItem = {}



---@class FSkillLimitTable : FTableRowBase
---@field TotalSkillNum uint8
---@field InheritanceSkillNum uint8
local FSkillLimitTable = {}



---@class FSkillPackItem
---@field Rank uint16
---@field Skill uint16
---@field Weight uint16
local FSkillPackItem = {}



---@class FSkillPackItems
---@field Items TArray<FSkillPackItem>
local FSkillPackItems = {}



---@class FSkillPackTable : FTableRowBase
---@field Rank_1 uint16
---@field Skill_1 uint16
---@field Weight_1 uint16
---@field Rank_2 uint16
---@field Skill_2 uint16
---@field Weight_2 uint16
---@field Rank_3 uint16
---@field Skill_3 uint16
---@field Weight_3 uint16
---@field Rank_4 uint16
---@field Skill_4 uint16
---@field Weight_4 uint16
---@field Rank_5 uint16
---@field Skill_5 uint16
---@field Weight_5 uint16
---@field Rank_6 uint16
---@field Skill_6 uint16
---@field Weight_6 uint16
---@field Rank_7 uint16
---@field Skill_7 uint16
---@field Weight_7 uint16
---@field Rank_8 uint16
---@field Skill_8 uint16
---@field Weight_8 uint16
---@field Rank_9 uint16
---@field Skill_9 uint16
---@field Weight_9 uint16
---@field Rank_10 uint16
---@field Skill_10 uint16
---@field Weight_10 uint16
local FSkillPackTable = {}



---@class FSkillPowerUpItem
---@field OldSkill uint16
---@field NewSkill uint16
---@field LevelLimit uint16
local FSkillPowerUpItem = {}



---@class FSkillPowerUpTable : FTableRowBase
---@field OldSkill uint16
---@field NewSkill uint16
---@field LevelLimit uint16
local FSkillPowerUpTable = {}



---@class FSkillcardItemList
---@field ItemDef FString
---@field SortNum uint16
---@field ItemType uint32
---@field Rarity uint16
---@field Tier uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FSkillcardItemList = {}



---@class FSkillcardItemListRecord : FTableRowBase
---@field SortNum uint16
---@field ItemType uint32
---@field Rarity uint16
---@field Tier uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
local FSkillcardItemListRecord = {}



---@class FSoundAppFieldControlBlock
---@field mIsSetup boolean
---@field mReadBank int32
---@field mPlayerType EPlayerType
---@field mPlayerNum int32
---@field mFileName FString
---@field mRestartFlags uint32
---@field mRestartQueIds TArray<int32>
local FSoundAppFieldControlBlock = {}



---@class FSpecialKeyHelpTable : FTableRowBase
---@field IN_OK_MASK_FRAME int32
---@field OUT_OK_MASK_FRAME int32
---@field IN_RECT_ANIM_FRAME int32
---@field WAIT_OUT_OK_FRAME int32
---@field FADE_IN_FRAME int32
---@field FADE_OUT_FRAME int32
---@field MARU_PEKE_BOUNCE_FRAME int32
---@field NEXT_ANIM_FRAME int32
local FSpecialKeyHelpTable = {}



---@class FSpecialSpreadItem
---@field ResultID uint16
---@field SourceID uint16
---@field Index uint16
local FSpecialSpreadItem = {}



---@class FSpecialSpreadTable : FTableRowBase
---@field Value uint16
---@field MatPerVal_1 uint16
---@field MatPerVal_2 uint16
---@field MatPerVal_3 uint16
---@field MatPerVal_4 uint16
---@field MatPerVal_5 uint16
---@field MatPerVal_6 uint16
local FSpecialSpreadTable = {}



---@class FStaffRollOneLineData
local FStaffRollOneLineData = {}


---@class FStaffRollTableData
---@field StaffRollIndex int32
---@field FirstColumnName FString
---@field SecondColumnName FString
---@field ThirdColumnName FString
---@field ForthColumnName FString
---@field Ficolor FColor
---@field Scolor FColor
---@field Tcolor FColor
---@field Focolor FColor
---@field Fistyle uint8
---@field Sstyle uint8
---@field Tstyle uint8
---@field Fostyle uint8
---@field Fisize uint8
---@field Ssize uint8
---@field Tsize uint8
---@field Fosize uint8
---@field Command uint8
---@field SecondCommand uint8
---@field ThirdCommand uint8
---@field ForthCommand uint8
---@field LineCount int32
---@field LineCommand boolean
---@field EmptyCount int32
---@field StartWaitSeconds float
---@field FinishSeconds float
---@field LastSeconds float
local FStaffRollTableData = {}



---@class FStaffRollTables : FTableRowBase
---@field FirstColumnName FString
---@field SecondColumnName FString
---@field ThirdColumnName FString
---@field ForthColumnName FString
---@field Ficolor FString
---@field Scolor FString
---@field Tcolor FString
---@field Focolor FString
---@field Fistyle FString
---@field Sstyle FString
---@field Tstyle FString
---@field Fostyle FString
---@field Fisize FString
---@field Ssize FString
---@field Tsize FString
---@field Fosize FString
local FStaffRollTables = {}



---@class FStaffRollText
local FStaffRollText = {}


---@class FSuggestionList : FTableRowBase
---@field Category FString
---@field TextLabel FString
---@field VisibleFlag FString
---@field HideFlag FString
---@field ReferenceGlobalCounter FString
---@field StartValue int32
---@field EndValue int32
---@field AnimationFlag int32
---@field SuggestionFlag FString
local FSuggestionList = {}



---@class FSuggestionTextList : FTableRowBase
---@field TextLabel FString
---@field Text FString
---@field Comment FString
local FSuggestionTextList = {}



---@class FSummerFestivalEventData
---@field MailID int32
---@field major int16
---@field Minor int16
---@field OnFlag uint32
---@field OffFlag uint32
local FSummerFestivalEventData = {}



---@class FSummerFestivalEventRow : FTableRowBase
---@field MailID int32
---@field major int16
---@field Minor int16
---@field OnFlag FName
---@field OffFlag FName
local FSummerFestivalEventRow = {}



---@class FSupportBustupParam
---@field CharaID uint16
---@field Pose FString
---@field OffsetLeft_X float
---@field OffsetLeft_Y float
---@field MaskOffsetLeft_Y float
---@field OffsetRight_X float
---@field OffsetRight_Y float
---@field MaskOffsetRight_Y float
local FSupportBustupParam = {}



---@class FSupportBustupTable : FTableRowBase
---@field CharaID uint16
---@field Pose FString
---@field OffsetLeft_X float
---@field OffsetLeft_Y float
---@field MaskOffsetLeft_Y float
---@field OffsetRight_X float
---@field OffsetRight_Y float
---@field MaskOffsetRight_Y float
local FSupportBustupTable = {}



---@class FSupportPartyPanelTableRow : FTableRowBase
---@field InFrame int32
---@field OutFrame int32
---@field WaveFrame int32
---@field Param1 int32
---@field Param2 int32
---@field param3 int32
---@field param4 int32
---@field param5 int32
---@field param6 int32
---@field param7 int32
---@field param8 int32
local FSupportPartyPanelTableRow = {}



---@class FTestDebugNishida : FTestDebugNishidaBase
---@field uip FGetUIParameter
---@field curveIceYScale FCurveFloatAnimation
local FTestDebugNishida = {}



---@class FTestDebugNishidaBase
local FTestDebugNishidaBase = {}


---@class FTestNishidaDataTable : FTableRowBase
---@field Level uint16
---@field attack uint16
---@field Defence uint16
local FTestNishidaDataTable = {}



---@class FTheurgiaUITableRow : FTableRowBase
---@field InFrame int32
---@field OutFrame int32
---@field Param1 int32
---@field Param2 int32
---@field param3 int32
---@field param4 int32
---@field NewAddX int32
---@field NewAddY int32
---@field SelectNewAddX int32
---@field SelectNewAddY int32
---@field SkillInfo_ItiretugotonoX int32
---@field SkillInfo_ItiretugotonoY int32
---@field OKmadenoFrame int32
---@field NextkaraOKmadenoFrame int32
---@field AddAllAngle float
---@field AddStatusKeyHelpAngle float
---@field AddNEWAngle float
---@field ChangeSkillArrowAnimFrame int32
---@field SkillGetAntenTime float
---@field PassiveSkillPersonalityStartWaitTime float
---@field GetSkillCardWaitFrame int32
---@field SkillGetMoveCursorWaitTime float
local FTheurgiaUITableRow = {}



---@class FTimeChangeUITableRow : FTableRowBase
---@field AddNextBlueBandPos_1 FVector
---@field AddNextBlueBandAngle_1 float
---@field AddNextBlueBandAnglePoint_1 FVector
---@field AddNextTimePos_1 FVector
---@field AddNextSecondHandPos_1 FVector
---@field AddNextSecondHandAngle_1 float
---@field AddNextBlueBandPos_2 FVector
---@field AddNextBlueBandAngle_2 float
---@field AddNextBlueBandAnglePoint_2 FVector
---@field AddNextTimePos_2 FVector
---@field AddNextSecondHandPos_2 FVector
---@field AddNextSecondHandAngle_2 float
---@field AddNextBlueBandPos_3 FVector
---@field AddNextBlueBandAngle_3 float
---@field AddNextBlueBandAnglePoint_3 FVector
---@field AddNextTimePos_3 FVector
---@field AddNextSecondHandPos_3 FVector
---@field AddNextSecondHandAngle_3 float
---@field AddNextBlueBandPos_4 FVector
---@field AddNextBlueBandAngle_4 float
---@field AddNextBlueBandAnglePoint_4 FVector
---@field AddNextTimePos_4 FVector
---@field AddNextSecondHandPos_4 FVector
---@field AddNextSecondHandAngle_4 float
---@field AddNextBlueBandPos_5 FVector
---@field AddNextBlueBandAngle_5 float
---@field AddNextBlueBandAnglePoint_5 FVector
---@field AddNextTimePos_5 FVector
---@field AddNextSecondHandPos_5 FVector
---@field AddNextSecondHandAngle_5 float
---@field NowTimeLeftSlideFrame int32
---@field NowTimeLeftSlideWaitFrame int32
---@field NowTimeLeftSlideSize float
local FTimeChangeUITableRow = {}



---@class FTitleSelectListTableRow : FTableRowBase
---@field StretchFrame int32
---@field ShrinkFrame int32
---@field ShrinkWaitFrame int32
---@field TextInAnimAddWaitFrame int32
---@field BlurPlateAddWidth int32
---@field WaitMaskAnimFrame int32
---@field ItemCountWaitFrame int32
---@field CursorMoveFrame int32
---@field StretchFrame_Diff int32
---@field ShrinkFrame_Diff int32
---@field ShrinkWaitFrame_Diff int32
---@field TextInAnimAddWaitFrame_Diff int32
---@field BlurPlateAddWidth_Diff int32
---@field WaitMaskAnimFrame_Diff int32
---@field ItemCountWaitFrame_Diff int32
---@field CursorMoveFrame_Diff int32
---@field NAKAMI_IN_OK_MASK_FRAME int32
---@field NAKAMI_OUT_OK_MASK_FRAME int32
---@field NAKAMI_IN_RECT_ANIM_FRAME int32
---@field NAKAMI_WAIT_OUT_OK_FRAME int32
---@field NAKAMI_LOOP_PLAY_WAIT_FRAME int32
---@field NAKAMI_IN_OK_MASK_FRAME_Diff int32
---@field NAKAMI_OUT_OK_MASK_FRAME_Diff int32
---@field NAKAMI_IN_RECT_ANIM_FRAME_Diff int32
---@field NAKAMI_WAIT_OUT_OK_FRAME_Diff int32
---@field NAKAMI_LOOP_PLAY_WAIT_FRAME_Diff int32
---@field TextSpriteInvalidColor FColor
---@field TextEdgeSpriteInvalidColor FColor
local FTitleSelectListTableRow = {}



---@class FTitleUITableRow : FTableRowBase
---@field LogoFadeInFrame int32
---@field LogoAtlusCrossFadeFrame int32
---@field LogoAtlusWaitFrame int32
---@field LogoMaskOutFrame int32
---@field LogoAtlusVisibleTime float
---@field LogoVisibleTime float
---@field CautionFadeInFrame int32
---@field CautionVisibleFrame int32
---@field CautionFadeOutFrame int32
---@field PressAnyButtonVisibleFrame int32
---@field PressAnyButtonWaitAnimFrame int32
---@field PressAnyButtonSpeedFrame int32
---@field CopyLightAndLogoVisibleWaitFrame int32
---@field CopyLightAndLogoSpeedFrame int32
---@field PressAnyUICloseFrame int32
---@field SelectListAnimWaitFrame int32
---@field TitleSelectListRootX int32
---@field TitleSelectListRootY int32
---@field PressWaitTimeout float
---@field SelectTimeout float
---@field LogoAtlusWidthM float
---@field LogoAtlusHeightM float
---@field Logo2ProWidthM float
---@field Logo2ProHeightM float
---@field LogoUe4WidthM float
---@field LogoUe4HeightM float
---@field LogoCloseAnimDEC boolean
---@field CautionSkipWaitTime float
---@field PleaseWaitFadeInWaitTime float
local FTitleUITableRow = {}



---@class FTownMapDetailTextTable : FTableRowBase
---@field DetailText FString
local FTownMapDetailTextTable = {}



---@class FTownMapInfoNameTable : FTableRowBase
---@field TextLabel FString
---@field Text FString
---@field Comment FString
local FTownMapInfoNameTable = {}



---@class FTownMapInfoTable : FTableRowBase
---@field LocationName FString
---@field LocationNo int32
---@field CategoryName FString
---@field CategoryNo int32
---@field IconName FString
---@field SprType int32
---@field SprNo int32
---@field Noon boolean
---@field Night boolean
---@field HideFlag FString
---@field TextLabel FString
local FTownMapInfoTable = {}



---@class FTownMapParamTableRow : FTableRowBase
---@field SchoolPos FVector2D
---@field DormitoryPos FVector2D
---@field PolonianmallPos FVector2D
---@field PortilandPos FVector2D
---@field IwatdaiPos FVector2D
---@field NaganakiPos FVector2D
---@field bDebugPosDraw boolean
---@field TenmetuFrame int32
local FTownMapParamTableRow = {}



---@class FTownMapRestrictionsTable : FTableRowBase
---@field KeyfreeEventID int32
---@field CloseLMap boolean
---@field DestinationA int32
---@field DestinationB int32
---@field DestinationC int32
---@field DestinationD int32
---@field DestinationE int32
---@field DestinationF int32
---@field AfterMove FString
local FTownMapRestrictionsTable = {}



---@class FTownMapTimeTable : FTableRowBase
---@field TownName FString
---@field Noon boolean
---@field NoonVisibleFlag FString
---@field NoonHideFlag1 FString
---@field NoonHideFlag2 FString
---@field Night boolean
---@field NightVisibleFlag FString
---@field NightHideFlag1 FString
---@field NightHideFlag2 FString
local FTownMapTimeTable = {}



---@class FTutorialSortTableExtRow : FTableRowBase
---@field UseAstreaTex FName
local FTutorialSortTableExtRow = {}



---@class FTutorialSortTableRow : FTableRowBase
---@field SortID int32
---@field TextureNames TArray<FName>
---@field OpenFlagName FName
---@field Comment FText
local FTutorialSortTableRow = {}



---@class FTutorialTableData
---@field TutorialID int32
---@field SortID int32
---@field OpenFlagID int32
---@field Title FString
---@field TextureNames TArray<FName>
local FTutorialTableData = {}



---@class FTutorialTables
---@field Datas TArray<FTutorialTableData>
local FTutorialTables = {}



---@class FUAppCharFootstepsCue
---@field Common USoundAtomCue
---@field Costume TMap<int32, USoundAtomCue>
local FUAppCharFootstepsCue = {}



---@class FUAppCharFootstepsLabel
---@field Walk FString
---@field Run FString
local FUAppCharFootstepsLabel = {}



---@class FUAppCharFootstepsMajor
---@field Minor TMap<int32, FUAppCharFootstepsLabel>
local FUAppCharFootstepsMajor = {}



---@class FUIAccessInfoLayoutParam : FTableRowBase
---@field CarNoDisplayType EAccessInfoCarNoDisplayType
---@field PlaceNameWidthType EAccessInfoPlaceNameWidthType
---@field FixedCharacterWidth float
local FUIAccessInfoLayoutParam = {}



---@class FUICmpCalendarDrawEditParameterItem : FTableRowBase
---@field Frame int32
---@field Comment FText
local FUICmpCalendarDrawEditParameterItem = {}



---@class FUICmpCalendarDrawStringItem : FTableRowBase
---@field String FName
---@field Comment FName
local FUICmpCalendarDrawStringItem = {}



---@class FUIDungeonTransferCloudParam
---@field SprNo int32
---@field Pos FVector
---@field Scale FVector
---@field Speed float
local FUIDungeonTransferCloudParam = {}



---@class FUIDungeonTransferCloudPreset
---@field SprNo int32
---@field Speed float
---@field DrawMode EUIDungeonTransferCloudDrawMode
local FUIDungeonTransferCloudPreset = {}



---@class FUIDungeonTransferCloudSetPos
---@field Pos FVector
---@field Color FVector
---@field Alpha float
---@field Scale FVector
---@field PresetNo int32
local FUIDungeonTransferCloudSetPos = {}



---@class FUIDungeonTransferHazeParam
---@field Num int32
---@field Pos FVector
---@field Scale FVector
---@field Alpha float
---@field RotationSecond float
---@field DrawMode EUIDungeonTransferHazeDrawMode
---@field PresetNo int32
local FUIDungeonTransferHazeParam = {}



---@class FUIMailAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
local FUIMailAnimParams = {}



---@class FUIMailListItem
local FUIMailListItem = {}


---@class FUINameEntryAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
local FUINameEntryAnimParams = {}



---@class FUIParameter
---@field Value float
---@field Key FString
---@field Info FString
local FUIParameter = {}



---@class FUITextTable : FTableRowBase
---@field KewWord FString
---@field Text FString
---@field Comment FString
local FUITextTable = {}



---@class FUIVoiceActionAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field bIsUseMatrix boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
---@field StartMatrix FMatrix
---@field EndMatrix FMatrix
local FUIVoiceActionAnimParams = {}



---@class FUIVoiceAnswerAnimParams
---@field StartFrame int32
---@field EndFrame int32
---@field bIsUsePos boolean
---@field bIsUseColor boolean
---@field bIsUseAngle boolean
---@field bIsUseValue boolean
---@field bIsUseMatrix boolean
---@field StartPos FVector2D
---@field EndPos FVector2D
---@field StartColor FColor
---@field EndColor FColor
---@field StartAngle float
---@field EndAngle float
---@field StartValue float
---@field EndValue float
---@field StartMatrix FMatrix
---@field EndMatrix FMatrix
local FUIVoiceAnswerAnimParams = {}



---@class FUniqCoefficient
---@field DataMap TMap<int32, FCoefficientInfo>
local FUniqCoefficient = {}



---@class FUniqCoefficientRow : FTableRowBase
---@field Type FName
---@field flag FName
---@field Coefficient float
local FUniqCoefficientRow = {}



---@class FVelvetRoomCardItem
local FVelvetRoomCardItem = {}


---@class FVelvetRoomCardWork
local FVelvetRoomCardWork = {}


---@class FVelvetRoomQuestItem
---@field OpenNo TArray<uint16>
---@field StartMonth uint8
---@field StartDay uint8
---@field EndMonth uint8
---@field EndDay uint8
---@field OpenFlag uint32
---@field ReceivedFlag uint32
---@field EndFlag uint32
---@field Rank uint8
---@field Request FVelvetRoomQuestRequest
---@field Reward FVelvetRoomQuestReward
---@field InfoDisplay uint32
---@field OrderTalkID uint32
---@field QuestIndex uint32
local FVelvetRoomQuestItem = {}



---@class FVelvetRoomQuestRequest
---@field Type EQuestRequestType
---@field PersonaType EQuestRequestPersonaType
---@field OPTION EQuestRequestOption
---@field ID uint32
---@field Value uint32
---@field Penalty uint32
local FVelvetRoomQuestRequest = {}



---@class FVelvetRoomQuestReward
---@field ItemId uint16
---@field itemNum uint16
---@field money uint32
local FVelvetRoomQuestReward = {}



---@class FVelvetRoomQuestTable : FTableRowBase
---@field OpenNo_1 uint16
---@field OpenNo_2 uint16
---@field OpenNo_3 uint16
---@field StartMonth uint8
---@field StartDay uint8
---@field EndMonth uint8
---@field EndDay uint8
---@field OpenFlag uint32
---@field ReceivedFlag uint32
---@field EndFlag uint32
---@field Rank uint8
---@field RequestType uint8
---@field PersonaType uint8
---@field ID uint32
---@field Value uint32
---@field OPTION uint8
---@field RewardItemID uint16
---@field RewardItemNum uint16
---@field RewardMoney uint32
---@field InfoDisplay uint32
---@field OrderTalkID uint32
---@field QuestIndex uint32
local FVelvetRoomQuestTable = {}



---@class FVelvetWipe
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
---@field m_uip FGetUIParameter
---@field m_pVelvetWipeDT UDataTable
---@field m_curveOpenAnim FCurveVectorAnimation
---@field m_curveFadeInAnim FCurveVectorAnimation
---@field m_curveSpeedAnim FCurveVectorAnimation
---@field m_curveCenterDoorSpeedAnim FCurveVectorAnimation
---@field m_pCaptureTex UTexture
local FVelvetWipe = {}



---@class FVelvetWipeTableRow : FTableRowBase
---@field StartRectPos FVector
---@field StartRectV1 FVector
---@field StartRectV2 FVector
---@field StartRectV3 FVector
---@field StartRectV4 FVector
---@field EndRectPos FVector
---@field EndRectV1 FVector
---@field EndRectV2 FVector
---@field EndRectV3 FVector
---@field EndRectV4 FVector
---@field StartRectPosEv FVector
---@field StartRectV1Ev FVector
---@field StartRectV2Ev FVector
---@field StartRectV3Ev FVector
---@field StartRectV4Ev FVector
---@field EndRectPosEv FVector
---@field EndRectV1Ev FVector
---@field EndRectV2Ev FVector
---@field EndRectV3Ev FVector
---@field EndRectV4Ev FVector
---@field StartRectPos_Out FVector
---@field StartRectV1_Out FVector
---@field StartRectV2_Out FVector
---@field StartRectV3_Out FVector
---@field StartRectV4_Out FVector
---@field EndRectPos_Out FVector
---@field EndRectV1_Out FVector
---@field EndRectV2_Out FVector
---@field EndRectV3_Out FVector
---@field EndRectV4_Out FVector
---@field SideDoorLeftStartV1 FVector
---@field SideDoorLeftStartV2 FVector
---@field SideDoorLeftStartV3 FVector
---@field SideDoorLeftStartV4 FVector
---@field SideDoorLeftShadowStartV3 FVector
---@field SideDoorLeftShadowStartV4 FVector
---@field SideDoorRightStartV1 FVector
---@field SideDoorRightStartV2 FVector
---@field SideDoorRightStartV3 FVector
---@field SideDoorRightStartV4 FVector
---@field SideDoorRightShadowStartV3 FVector
---@field SideDoorRightShadowStartV4 FVector
---@field SideDoorLeftEndV1 FVector
---@field SideDoorLeftEndV2 FVector
---@field SideDoorLeftEndV3 FVector
---@field SideDoorLeftEndV4 FVector
---@field SideDoorLeftShadowEndV3 FVector
---@field SideDoorLeftShadowEndV4 FVector
---@field SideDoorRightEndV1 FVector
---@field SideDoorRightEndV2 FVector
---@field SideDoorRightEndV3 FVector
---@field SideDoorRightEndV4 FVector
---@field SideDoorRightShadowEndV3 FVector
---@field SideDoorRightShadowEndV4 FVector
---@field StartRectFadeFrame int32
---@field StartRectFadeFrame_Out int32
---@field FlontLightAdjustY float
local FVelvetWipeTableRow = {}



---@class FVeveMessage : FTableRowBase
---@field Message FName
local FVeveMessage = {}



---@class FWeaponItemList
---@field ItemDef FString
---@field SortNum uint16
---@field WeaponType uint32
---@field EquipID uint32
---@field AttrID uint16
---@field Rarity uint16
---@field Tier uint16
---@field attack uint16
---@field Accuracy uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
---@field ModelID uint16
---@field flags uint32
local FWeaponItemList = {}



---@class FWeaponItemListRecord : FTableRowBase
---@field SortNum uint16
---@field WeaponType uint32
---@field EquipID uint32
---@field AttrID uint16
---@field Rarity uint16
---@field Tier uint16
---@field attack uint16
---@field Accuracy uint16
---@field Strength uint16
---@field Magic uint16
---@field Endurance uint16
---@field Agility uint16
---@field Luck uint16
---@field skillId uint16
---@field Price uint32
---@field SellPrice uint32
---@field GetFLG uint16
---@field ModelID uint16
---@field flags uint32
local FWeaponItemListRecord = {}



---@class FWeaponShopAnimParam
---@field _StartParam FWeaponShopDrawParam
---@field _EndParam FWeaponShopDrawParam
---@field _WaitTime float
---@field _InterpCurve UCurveFloat
---@field _InterpCoefficient float
---@field _InterpTime float
local FWeaponShopAnimParam = {}



---@class FWeaponShopAwardData
---@field MaxArrivedFloor uint16
---@field TotalDefeatedEnemies uint16
---@field AwardFlag int32
---@field AwardItemID uint16
---@field AwardItemNum uint16
---@field AwardMoney uint32
local FWeaponShopAwardData = {}



---@class FWeaponShopAwardTable : FTableRowBase
---@field ID uint16
---@field MaxArrivedFloor uint16
---@field TotalDefeatedEnemies uint16
---@field AwardFlag FString
---@field AwardItemID uint16
---@field AwardItemNum uint16
---@field AwardMoney uint32
local FWeaponShopAwardTable = {}



---@class FWeaponShopDrawParam
---@field _Position FVector2D
---@field _ScaleOrWH FVector2D
---@field _Angle float
---@field _GenericValue float
local FWeaponShopDrawParam = {}



---@class FWeaponShopLineUpList : FShopLineUpListBase
local FWeaponShopLineUpList = {}


---@class FWeaponShopLineUpListRecord : FTableRowBase
---@field Value uint16
---@field SaleMonth uint16
---@field SaleDay uint16
---@field OpenFLG uint32
local FWeaponShopLineUpListRecord = {}



---@class FWordSortTable : FTableRowBase
---@field PersonaID uint16
---@field Value uint32
local FWordSortTable = {}



---@class FWordTranslationTable : FTableRowBase
---@field Name FString
---@field Ext boolean
---@field LangBits int32
---@field Index int32
local FWordTranslationTable = {}



---@class FldCameraCorrectionParam : FldCameraRotParam
---@field Margin float
local FldCameraCorrectionParam = {}



---@class FldCameraInputInterpolation
local FldCameraInputInterpolation = {}


---@class FldCameraLockAtParam
---@field bEnable boolean
---@field MinLimitAngle float
---@field MaxLimitAngle float
local FldCameraLockAtParam = {}



---@class FldCameraParam
local FldCameraParam = {}


---@class FldCameraRotParam
---@field Speed float
---@field Acceleration float
---@field Deceleration float
---@field Press float
---@field Release float
local FldCameraRotParam = {}



---@class FldCameraSlopeParam : FldCameraRotParam
---@field Margin float
---@field Pitch float
local FldCameraSlopeParam = {}



---@class FldPlayerInputInterpolation
---@field Begin FVector
---@field End FVector
---@field Distance float
---@field Yaw float
---@field Frame int32
local FldPlayerInputInterpolation = {}



---@class IAppPauseableListener : IInterface
local IAppPauseableListener = {}

---@param Type EAppPauseType
function IAppPauseableListener:UnPaused(Type) end
---@param Type EAppPauseType
function IAppPauseableListener:Paused(Type) end
---@return EAppPauseObjectFlag
function IAppPauseableListener:GetAppPauseFlags() end
---@return UObject
function IAppPauseableListener:AsUObject() end
---@return AActor
function IAppPauseableListener:AsAActor() end
---@param EndPlayReason EEndPlayReason::Type
function IAppPauseableListener:AppPauseableEndPlay(EndPlayReason) end
function IAppPauseableListener:AppPauseableBeginPlay() end


---@class IAppPropsCardInterface : IInterface
local IAppPropsCardInterface = {}

---@return boolean
function IAppPropsCardInterface:TarotCardSync() end
---@param Param FAppPropsCardParam
function IAppPropsCardInterface:TarotCardSetup(Param) end
---@return UMaterialInstanceDynamic
function IAppPropsCardInterface:GetFrontMaterial() end
---@return UMaterialInstanceDynamic
function IAppPropsCardInterface:GetBackMaterial() end


---@class IBtlAegisInterface : IInterface
local IBtlAegisInterface = {}

---@param Enable boolean
function IBtlAegisInterface:SetupOverheat(Enable) end
---@param Enable boolean
function IBtlAegisInterface:SetupOrgiaWaitingEffect(Enable) end
---@param Enable boolean
function IBtlAegisInterface:SetupOrgiaAttackEffect(Enable) end
---@param Enable boolean
function IBtlAegisInterface:SetupOrgia(Enable) end
function IBtlAegisInterface:PlayOrgiaDeadEffect() end
function IBtlAegisInterface:ClearAllAegisEffect() end


---@class IBtlBossEmperorInterface : IInterface
local IBtlBossEmperorInterface = {}

function IBtlBossEmperorInterface:StandingAlwaysWithPersona() end


---@class IBtlBossErebusInterface : IInterface
local IBtlBossErebusInterface = {}

function IBtlBossErebusInterface:SpawnChargeVanishEffect() end
---@param IsWaitResurrect boolean
function IBtlBossErebusInterface:SetWaitResurrectAnimation(IsWaitResurrect) end
---@param IsChargeMode boolean
function IBtlBossErebusInterface:SetIsInChargeMode(IsChargeMode) end
---@param IsShowCharageEffect boolean
function IBtlBossErebusInterface:SetChargeEffect(IsShowCharageEffect) end
---@return boolean
function IBtlBossErebusInterface:IsWaitResurrectAnimation() end
---@return boolean
function IBtlBossErebusInterface:IsChargeMode() end


---@class IBtlBossFortuneInterface : IInterface
local IBtlBossFortuneInterface = {}

---@param AnimTime float
function IBtlBossFortuneInterface:StrengthFlowerLoopEffectFadeout(AnimTime) end
---@param AnimTime float
function IBtlBossFortuneInterface:FortuneFlowerLoopEffectFadeout(AnimTime) end
---@param AnimTime float
function IBtlBossFortuneInterface:FortuneFlowerLoopEffectFadein(AnimTime) end
---@param AnimTime float
function IBtlBossFortuneInterface:FortuneFadeout(AnimTime) end
---@param AnimTime float
function IBtlBossFortuneInterface:FortuneFadein(AnimTime) end


---@class IBtlBossHangedManInterface : IInterface
local IBtlBossHangedManInterface = {}

---@param AnimTime float
function IBtlBossHangedManInterface:FadeoutStatueEffect(AnimTime) end
---@param AnimTime float
function IBtlBossHangedManInterface:FadeoutHangedManEffect(AnimTime) end
---@param AnimTime float
function IBtlBossHangedManInterface:FadeinHangedManEffect(AnimTime) end


---@class IBtlBossHermitInterface : IInterface
local IBtlBossHermitInterface = {}

---@param Visible boolean
function IBtlBossHermitInterface:SetVisibleChargeStartEffect(Visible) end
---@param Visible boolean
---@param Level int32
function IBtlBossHermitInterface:SetVisibleChargeEffectFromLevel(Visible, Level) end
---@param Visible boolean
---@param StrongEffect boolean
function IBtlBossHermitInterface:SetVisibleChargeEffect(Visible, StrongEffect) end


---@class IBtlBossNyxAvatarInterface : IInterface
local IBtlBossNyxAvatarInterface = {}

---@param Visible boolean
function IBtlBossNyxAvatarInterface:SetVisibleWeaponEffect(Visible) end
---@param AnimSeconds float
function IBtlBossNyxAvatarInterface:PlayFeatherAnim(AnimSeconds) end
---@param AnimSeconds float
function IBtlBossNyxAvatarInterface:FadeoutWeaponEffect(AnimSeconds) end
---@param AnimSeconds float
function IBtlBossNyxAvatarInterface:FadeoutFeatherAnim(AnimSeconds) end


---@class IBtlBossNyxCoreInterface : IInterface
local IBtlBossNyxCoreInterface = {}

function IBtlBossNyxCoreInterface:LoadHeroAnimationForNyxCore() end


---@class IBtlBossStregaInterface : IInterface
local IBtlBossStregaInterface = {}

---@param Enable boolean
function IBtlBossStregaInterface:SetTakayaTheurgiaMode(Enable) end
---@param isFadeIn boolean
---@param FadeTime float
function IBtlBossStregaInterface:PlayJinDrugLoopEffect(isFadeIn, FadeTime) end


---@class IBtlBossUraBossInterface : IInterface
local IBtlBossUraBossInterface = {}

---@param IsUsingCutin boolean
function IBtlBossUraBossInterface:SetIsUsingCutin(IsUsingCutin) end
---@return boolean
function IBtlBossUraBossInterface:IsUsingCutinFlag() end
---@param InCameraActor AActor
function IBtlBossUraBossInterface:AttachSkillCamera(InCameraActor) end
---@param IsAttachGunModel boolean
function IBtlBossUraBossInterface:AttachGunModel(IsAttachGunModel) end


---@class IBtlManagerInterface : IInterface
local IBtlManagerInterface = {}

function IBtlManagerInterface:MarkAsBtlCoreIsReady() end


---@class IBtlPersonaInterface : IInterface
local IBtlPersonaInterface = {}

---@param PersonaOwner ABtlActor
function IBtlPersonaInterface:SetPersonaOwner(PersonaOwner) end
---@param PersonaOwner ABtlActor
---@return FTransform
function IBtlPersonaInterface:GetPersonaTransformFromSkillCondition(PersonaOwner) end


---@class UAccsItemListTable : UAppDataAsset
---@field Data TArray<FAccsItemList>
local UAccsItemListTable = {}



---@class UActivityDataAsset : UAppDataAsset
---@field Data TArray<FActivityData>
local UActivityDataAsset = {}



---@class UAddContent : UObject
---@field mDlcManager ADLCManager
---@field mAdcDialog AAddContentDialog
---@field GuardUnlockedContent TArray<boolean>
local UAddContent = {}



---@class UAddContentBundleNameTableDataAsset : UAppDataAsset
---@field Data TArray<FAddContentsBundleNameTable>
local UAddContentBundleNameTableDataAsset = {}



---@class UAddContentEntitlementDataAsset : UAppDataAsset
---@field Data TArray<FAddContentEntitlement>
local UAddContentEntitlementDataAsset = {}



---@class UAddContentNameDispTableDataAsset : UAppDataAsset
---@field Data TArray<FAddContentsNameDispTable>
local UAddContentNameDispTableDataAsset = {}



---@class UAddContentTableDataAsset : UAppDataAsset
---@field Data TArray<FAddContentTable>
local UAddContentTableDataAsset = {}



---@class UAgePanel : UObject
---@field _readSpr USprAsset
---@field _readSprAstrea USprAsset
---@field _readMat UMaterial
---@field _readMatInst UMaterialInstanceDynamic
---@field _fadeCurve FCurveVectorAnimation
---@field Loader_ UAssetLoader
local UAgePanel = {}



---@class UAnimController : UObject
---@field mAnimNameArray TArray<FName>
---@field mSkMeshCompArray TArray<USkeletalMeshComponent>
---@field mMontageArray TArray<UAnimMontage>
local UAnimController = {}



---@class UAnimNotify_BtlPlayMontageNotify : UAnimNotify_PlayMontageNotify
local UAnimNotify_BtlPlayMontageNotify = {}

---@param NewName FName
function UAnimNotify_BtlPlayMontageNotify:ReplaceNotifyName(NewName) end
---@return FName
function UAnimNotify_BtlPlayMontageNotify:GetBattleNotifyName() end


---@class UAnimNotify_PlayEvtMultiMontage : UAnimNotify
---@field MontageArray TArray<FAtlSlotMultiAnimationParam>
---@field SlotNodeName FName
---@field AnimationType EEvtCharaAnimationType
---@field bStop boolean
local UAnimNotify_PlayEvtMultiMontage = {}

---@param Montage UAnimMontage
---@param bInterapt boolean
function UAnimNotify_PlayEvtMultiMontage:OnFinished(Montage, bInterapt) end


---@class UAntiqueShopDrawCommon : UObject
---@field _pCloudCursor AUICloudCursorDraw
local UAntiqueShopDrawCommon = {}



---@class UAntiqueShopLineUpListTable : UAppMultiDataAsset
---@field TradeData TArray<FAntiqueShopLineUpList>
---@field CombineSources TArray<FAntiqueShopEquipCombineSource>
---@field CombineResults TArray<FAntiqueShopEquipCombineResult>
local UAntiqueShopLineUpListTable = {}



---@class UAppActivity : UGameInstanceSubsystem
---@field Loader_ UAssetLoader
---@field DataAsset_ UActivityDataAsset
local UAppActivity = {}



---@class UAppActorComponent : UActorComponent
---@field AppPauseFlags EAppPauseObjectFlag
local UAppActorComponent = {}

---@return EAppPauseObjectFlag
function UAppActorComponent:GetAppPauseFlags() end
---@param EndPlayReason EEndPlayReason::Type
function UAppActorComponent:EndPlay(EndPlayReason) end
function UAppActorComponent:BeginPlay() end
---@return UObject
function UAppActorComponent:AsUObject() end
---@return AActor
function UAppActorComponent:AsAActor() end


---@class UAppAnimCtrl : UObject
---@field pCharacterClass TSubclassOf<ACharacter>
---@field pCharacter ACharacter
---@field pSkeletalMesh USkeletalMesh
---@field pSkelMeshAct ASkeletalMeshActor
---@field pSkMeshCompo USkeletalMeshComponent
---@field animSeqAry TArray<FAppAnimSequence>
---@field mMontageAry TArray<UAnimMontage>
---@field mSeqLengthAry TArray<float>
---@field pAssetLoader UAssetLoader
local UAppAnimCtrl = {}



---@class UAppCalculaterComponent : UActorComponent
local UAppCalculaterComponent = {}

---@param DeltaTime float
---@param Work FAppCalculaterComponentWork
---@param IsReverse boolean
---@param IsLoop boolean
---@param IsReset boolean
---@return float
function UAppCalculaterComponent:BPCommand_CalculationUpdate(DeltaTime, Work, IsReverse, IsLoop, IsReset) end


---@class UAppCharAnimAttachNotify : UAnimNotify
---@field mSocketName_ FName
local UAppCharAnimAttachNotify = {}



---@class UAppCharAnimDataAsset : UDataAsset
---@field PackId EAnimPackID
---@field Category EAppCharCategoryType
---@field CharId int32
---@field AnimInstance UClass
---@field SpecialAnimInstance TMap<int32, UClass>
---@field Anims TMap<int32, UAnimSequenceBase>
local UAppCharAnimDataAsset = {}

function UAppCharAnimDataAsset:Make() end


---@class UAppCharAnimDetachNotify : UAnimNotify
---@field bDetachTrans_ boolean
---@field mRelativeTrans_ FTransform
---@field bRelativeTrans_ boolean
local UAppCharAnimDetachNotify = {}



---@class UAppCharAnimDetachPrepareNotify : UAnimNotify
---@field bDetachTrans_ boolean
---@field mRelativeTrans_ FTransform
---@field bRelativeTrans_ boolean
local UAppCharAnimDetachPrepareNotify = {}



---@class UAppCharAnimFadeNotify : UAnimNotify
local UAppCharAnimFadeNotify = {}


---@class UAppCharAnimLockLookAtNotify : UAnimNotify
---@field mInterpSpeed_ float
local UAppCharAnimLockLookAtNotify = {}



---@class UAppCharAnimStopTimingNotify : UAnimNotify
---@field mLookAtFlag_ boolean
local UAppCharAnimStopTimingNotify = {}



---@class UAppCharAnimUnlockLookAtNotify : UAnimNotify
local UAppCharAnimUnlockLookAtNotify = {}


---@class UAppCharAttachedPropsAnimNotify : UAnimNotify
---@field mAnimePackIndex_ int32
---@field mPlayType_ int32
local UAppCharAttachedPropsAnimNotify = {}



---@class UAppCharBaseComp : UActorComponent
---@field mMotionAttached_ AActor
---@field mMotionAttachedSocketName_ FName
---@field mMotionAttachedTransform FTransform
---@field mMotionDetachPrepared_ boolean
---@field bMotionDetachPreparedTransKeep_ boolean
---@field bMotionDetachPreparedRelativeTrans_ boolean
---@field mMotionDetachPreparedRelativeRotator_ FRotator
---@field mMotionDetachPreparedRelativeLocation_ FVector
---@field mFadeType_ int32
---@field mFadeFrame_ int32
---@field mFadePattern_ int32
---@field mDelayPauseAnimReq_ boolean
---@field mDelayPauseAnimFlag_ boolean
---@field mDelayPauseAnimSpeedRate_ float
---@field mBagClassPtr_ TSoftClassPtr<AAppPropsCore>
---@field mBagAttachSocketName FName
---@field mBagAnimSlotName_ FName
---@field mBagAnims_ TMap<EAppCharBagAnimType, UAnimSequenceBase>
---@field mBagActor_ AAppPropsCore
---@field bIsLockedLookAt_ boolean
---@field mLockedLookAtType_ uint8
---@field mLockedLookAtSpeed_ float
---@field CostumeMesh USkeletalMeshComponent
---@field HairMesh USkeletalMeshComponent
---@field FaceMesh USkeletalMeshComponent
---@field FootstepsAtom UAppCharFootstepsAtom
---@field AnimMontage_DefaultSlot UAnimMontage
---@field AnimMontage_FacialSlot UAnimMontage
---@field AnimMontage_NeckSlot UAnimMontage
---@field AnimMontage_TurnSlot UAnimMontage
---@field AnimMontage_HavBagSlot UAnimMontage
---@field CategoryID EAppCharCategoryType
---@field IndexID int32
---@field CostumeID int32
---@field AnimPackID EAnimPackID
---@field AnimPack UAppCharAnimDataAsset
---@field FaceAnimPack UAppCharFaceAnimDataAsset
---@field WeaponType EAppCharWeaponType
---@field WeaponId int32
---@field Weapons TArray<AAppCharWeaponBase>
---@field bBagEnable boolean
---@field ShoesID int32
---@field State EAppCharState
---@field MoveLocation FVector
---@field MoveSpeed float
---@field bTransparencyEnable boolean
---@field Transparency FAppCharTransparency
---@field ResetIkDelegate FAppCharBaseCompResetIkDelegate
local UAppCharBaseComp = {}

---@param InBlendOutTime float
function UAppCharBaseComp:StopTurnAnimation(InBlendOutTime) end
---@param InBlendOutTime float
function UAppCharBaseComp:StopNeckAnimation(InBlendOutTime) end
---@param InBlendOutTime float
function UAppCharBaseComp:StopHaveBagAnimation(InBlendOutTime) end
---@param InBlendOutTime float
function UAppCharBaseComp:StopFaceAnimation(InBlendOutTime) end
---@param InBlendOutTime float
function UAppCharBaseComp:StopAnim_DefaultSlot(InBlendOutTime) end
---@param Value EAppCharWeaponType
function UAppCharBaseComp:SetWeaponType(Value) end
---@param Value int32
function UAppCharBaseComp:SetWeaponId(Value) end
function UAppCharBaseComp:SetupHaveBag_AfterSetCostume() end
---@param ID int32
function UAppCharBaseComp:SetShoesId(ID) end
---@param Enable boolean
function UAppCharBaseComp:SetShoes(Enable) end
---@param AttachedActor AActor
---@param AttachedSocketName FName
function UAppCharBaseComp:SetMotionAttachedActorCore(AttachedActor, AttachedSocketName) end
---@param AttachedActor AActor
function UAppCharBaseComp:SetMotionAttachedActor(AttachedActor) end
---@param Value int32
function UAppCharBaseComp:SetIndexID(Value) end
---@param FadeType int32
---@param FadeFrame int32
---@param FadePattern int32
function UAppCharBaseComp:SetFadeSettingFromMotion(FadeType, FadeFrame, FadePattern) end
---@param Value int32
function UAppCharBaseComp:SetCostumeID(Value) end
function UAppCharBaseComp:SetCostume() end
---@param Value EAppCharCategoryType
function UAppCharBaseComp:SetCategoryID(Value) end
---@param Enable boolean
function UAppCharBaseComp:SetBag(Enable) end
---@param Value EAnimPackID
function UAppCharBaseComp:SetAnimPackID(Value) end
---@param AnimMontage UAnimMontage
function UAppCharBaseComp:SetAnimMontageDefaultSlot(AnimMontage) end
function UAppCharBaseComp:ResetIK() end
---@param IsLookAt boolean
function UAppCharBaseComp:RequestPauseAnimFromMotionIMD(IsLookAt) end
function UAppCharBaseComp:RequestLoadWeapons() end
function UAppCharBaseComp:RequestDelayPauseAnimFromMotion() end
---@param AnimIndex int32
---@param IsLoop boolean
---@param InBlendInTime float
---@param InBlendOutTime float
---@param InPlayRate float
---@param InBlendWeight float
---@return UAnimMontage
function UAppCharBaseComp:PlayTurnAnimation(AnimIndex, IsLoop, InBlendInTime, InBlendOutTime, InPlayRate, InBlendWeight) end
---@param AnimIndex int32
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayNeckAnimation(AnimIndex, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param AnimType EAppCharBagAnimType
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayHaveBagAnimation(AnimType, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param AnimIndex int32
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayFaceAnimIndex(AnimIndex, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param FaceAnimID EAppCharFaceAnimID
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayFaceAnimation(FaceAnimID, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param AnimId int32
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnimBagSlot_Pack(AnimId, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param InAnimePackIndex int32
---@param InPlayType int32
---@param InBlendInTime float
---@param InBlendOutTime float
---@param InPlayRate float
---@param InAnimSlotName FName
function UAppCharBaseComp:PlayAnimationPackMotionAttachedProps(InAnimePackIndex, InPlayType, InBlendInTime, InBlendOutTime, InPlayRate, InAnimSlotName) end
---@param Anim UAnimSequenceBase
---@param IsLoop boolean
---@param InBlendInTime float
---@param InBlendOutTime float
---@param InPlayRate float
---@param InBlendWeight float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_TurnSlot(Anim, IsLoop, InBlendInTime, InBlendOutTime, InPlayRate, InBlendWeight) end
---@param ID int32
---@param Loop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_Pack(ID, Loop, BlendInTime, BlendOutTime, InPlayRate) end
---@param Anim UAnimSequenceBase
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_NeckSlot(Anim, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param Anim UAnimSequenceBase
---@param SetSlotName FName
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_HaveBagSlot(Anim, SetSlotName, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param Anim UAnimSequenceBase
---@param IsLoop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_FacialSlot(Anim, IsLoop, BlendInTime, BlendOutTime, InPlayRate) end
---@param Anim UAnimSequenceBase
---@param Loop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim_DefaultSlot(Anim, Loop, BlendInTime, BlendOutTime, InPlayRate) end
---@param Anim UAnimSequenceBase
---@param Slot EAppCharAnimSlot
---@param Loop boolean
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@return UAnimMontage
function UAppCharBaseComp:PlayAnim(Anim, Slot, Loop, BlendInTime, BlendOutTime, InPlayRate) end
---@param bPause boolean
---@param InMontage UAnimMontage
function UAppCharBaseComp:PauseAnim(bPause, InMontage) end
---@param Transform FTransform
function UAppCharBaseComp:OverwriteTransformMotionAttachedActor(Transform) end
---@param Location FVector
---@param Speed float
function UAppCharBaseComp:Movement(Location, Speed) end
---@return boolean
function UAppCharBaseComp:IsTurnAnimation() end
---@return boolean
function UAppCharBaseComp:IsPlayAnim_DefaultSlot() end
---@return boolean
function UAppCharBaseComp:IsNeckAnimation() end
---@return boolean
function UAppCharBaseComp:IsLoadWeapons() end
---@return boolean
function UAppCharBaseComp:IsDelayPauseAnimFromMotion() end
---@return boolean
function UAppCharBaseComp:IsCostumeChenged() end
---@return boolean
function UAppCharBaseComp:IsBag() end
---@return TArray<AAppCharWeaponBase>
function UAppCharBaseComp:GetWeapons() end
---@return boolean
function UAppCharBaseComp:GetWeaponEnable() end
---@return AAppCharWeaponBase
function UAppCharBaseComp:GetWeapon() end
---@return USkeletalMeshComponent
function UAppCharBaseComp:GetMesh() end
---@return int32
function UAppCharBaseComp:GetIndexID() end
---@return USkeletalMeshComponent
function UAppCharBaseComp:GetHairMesh() end
---@return UAppCharFootstepsAtom
function UAppCharBaseComp:GetFootstepsAtom() end
---@return USkeletalMeshComponent
function UAppCharBaseComp:GetFaceMesh() end
---@return TArray<AAppCharWeaponBase>
function UAppCharBaseComp:GetEffectWeapons() end
---@return USkeletalMeshComponent
function UAppCharBaseComp:GetCostumeMesh() end
---@return int32
function UAppCharBaseComp:GetCostumeID() end
---@return EAppCharCategoryType
function UAppCharBaseComp:GetCategoryID() end
---@return TSoftClassPtr<AAppPropsCore>
function UAppCharBaseComp:GetBagClassPtr() end
---@return FName
function UAppCharBaseComp:GetBagAttachSocketName() end
---@return EAnimPackID
function UAppCharBaseComp:GetAnimPackID() end
---@return UAnimMontage
function UAppCharBaseComp:GetAnimMontageDefaultSlot() end
---@return TArray<UMaterialInterface>
function UAppCharBaseComp:GetAllMaterial() end
function UAppCharBaseComp:ClearDelayPauseAnimFromMotion() end


---@class UAppCharFaceAnimDataAsset : UDataAsset
---@field Category EAppCharCategoryType
---@field CharId int32
---@field Anims TMap<int32, UAnimSequenceBase>
local UAppCharFaceAnimDataAsset = {}

function UAppCharFaceAnimDataAsset:Make() end
---@param FaceAnimID EAppCharFaceAnimID
---@param CharCategory EAppCharCategoryType
---@param CharId int32
---@param AnimCategory EAppCharAnimCategoryType
---@return FString
function UAppCharFaceAnimDataAsset:GetAssetPath(FaceAnimID, CharCategory, CharId, AnimCategory) end
function UAppCharFaceAnimDataAsset:AddExtra() end


---@class UAppCharFootstepsAtom : UAtomComponent
---@field Lable FUAppCharFootstepsLabel
---@field DefaultLable FUAppCharFootstepsLabel
---@field OverwriteActor AActor
---@field mKeepOverwrites_ TArray<FAppCharFootstepsOverwrite>
---@field bEnable boolean
local UAppCharFootstepsAtom = {}

---@param Value USoundAtomCue
function UAppCharFootstepsAtom:SetWalkCue(Value) end
---@param Value USoundAtomCue
function UAppCharFootstepsAtom:SetRunCue(Value) end
---@param Value boolean
function UAppCharFootstepsAtom:SetEnable(Value) end


---@class UAppCharFootstepsDataAsset : UDataAsset
---@field Field TMap<int32, FUAppCharFootstepsMajor>
---@field Battle TMap<int32, FUAppCharFootstepsMajor>
---@field CommonCue USoundAtomCue
---@field NpcCue USoundAtomCue
---@field CharCue TMap<int32, FUAppCharFootstepsCue>
local UAppCharFootstepsDataAsset = {}



---@class UAppCharFootstepsNotify : UAnimNotify
---@field Type EAppCharFootstepsType
local UAppCharFootstepsNotify = {}



---@class UAppCharFootstepsTable : UObject
---@field Path TSoftObjectPtr<UAppCharFootstepsDataAsset>
---@field Data UAppCharFootstepsDataAsset
---@field bLoaded boolean
local UAppCharFootstepsTable = {}



---@class UAppCharFootstepsTriggerComp_BOX : UBoxComponent
---@field mLabel_ FUAppCharFootstepsLabel
local UAppCharFootstepsTriggerComp_BOX = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UAppCharFootstepsTriggerComp_BOX:OnOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UAppCharFootstepsTriggerComp_BOX:OnOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UAppCharFootstepsTriggerComp_CIRCLE : USphereComponent
---@field mLabel_ FUAppCharFootstepsLabel
local UAppCharFootstepsTriggerComp_CIRCLE = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UAppCharFootstepsTriggerComp_CIRCLE:OnOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UAppCharFootstepsTriggerComp_CIRCLE:OnOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UAppCharLib : UBlueprintFunctionLibrary
local UAppCharLib = {}

---@param Target AActor
---@param Value float
function UAppCharLib:SetOpacityNiagaraOnly(Target, Value) end
---@param Target AActor
---@param Value float
function UAppCharLib:SetOpacity(Target, Value) end
---@param ID int32
---@return boolean
function UAppCharLib:IsUniqueNpc(ID) end
---@param Target AActor
---@return boolean
function UAppCharLib:IsDungeonChara(Target) end
---@param Target USkeletalMeshComponent
---@param ID int32
---@return FString
function UAppCharLib:GetMaterialSlotName(Target, ID) end
---@param Target AActor
---@return TArray<UMaterialInterface>
function UAppCharLib:GetMaterial(Target) end


---@class UAppCharLoader : UObject
---@field Assets TArray<UObject>
local UAppCharLoader = {}



---@class UAppCharWeaponAnimDataAsset : UDataAsset
---@field WaitAnimNo int32
---@field Anims TMap<int32, UAnimSequenceBase>
local UAppCharWeaponAnimDataAsset = {}



---@class UAppCharacterComp : UAppCharBaseComp
---@field mBagMotionBlendTime_StandToRun_ float
---@field mBagMotionBlendTime_RunToStand_ float
---@field bIsBagSetting_ boolean
---@field bIsBagRun_ boolean
---@field mBagKeyID_ int32
---@field mOverwirteBagKeyID_ int32
---@field bIsBagInvalidIK_ boolean
---@field Character ACharacterBaseCore
---@field bNeedInitialize boolean
---@field Loader UAppCharLoader
---@field EffectWeapons TArray<AAppCharWeaponBase>
---@field HideMaterialIDs TArray<int32>
---@field UnlinkPhysicsDelegate FAppCharacterCompUnlinkPhysicsDelegate
---@field mSetCostumeID int32
---@field mSetWeaponType int32
---@field mSetWeaponModelID int32
local UAppCharacterComp = {}

function UAppCharacterComp:UnlinkPhysics() end
---@param Visible boolean
function UAppCharacterComp:SetVisibleAttachComponent(Visible) end
---@return UCharacterMovementComponent
function UAppCharacterComp:GetMovement() end
---@return ACharacterBaseCore
function UAppCharacterComp:GetCharacter() end
---@return UCapsuleComponent
function UAppCharacterComp:GetCapsule() end


---@class UAppCharacterPoolManager : UObject
---@field Loader UAppCharLoader
local UAppCharacterPoolManager = {}



---@class UAppCheatManager : UCheatManager
local UAppCheatManager = {}

---@param bEnable boolean
function UAppCheatManager:AtlWindowPosSaveEnable(bEnable) end
---@param bEnable boolean
function UAppCheatManager:AtlUObjectLeakChecker(bEnable) end
function UAppCheatManager:AtlStartNextProgressAstrea() end
function UAppCheatManager:AtlSoundConfigInfo() end
---@param Index int32
function UAppCheatManager:AtlSoundConfigDevice(Index) end
---@param sec float
function UAppCheatManager:AtlSetWorldTimeSec(sec) end
---@param Month int32
---@param Day int32
---@param Time int32
function UAppCheatManager:AtlSetNextDayTime(Month, Day, Time) end
---@param Month int32
---@param Day int32
---@param Time int32
function UAppCheatManager:AtlSetDayTime(Month, Day, Time) end
---@param PosX float
---@param PosY float
---@param PosZ float
---@param RotX float
---@param RotY float
---@param RotZ float
function UAppCheatManager:AtlSetCameraTransform(PosX, PosY, PosZ, RotX, RotY, RotZ) end
---@param Mode FString
---@param SaveDataID FString
---@param SlotIndex int32
function UAppCheatManager:AtlSaveDataConvert(Mode, SaveDataID, SlotIndex) end
---@param Mask FString
function UAppCheatManager:AtlSaveDataAccessorMask(Mask) end
---@param Rate float
function UAppCheatManager:AtlRushEffectRate(Rate) end
---@param raytrace int32
---@param PlanarReflection int32
function UAppCheatManager:AtlRayTraceEnable(raytrace, PlanarReflection) end
---@param percent int32
function UAppCheatManager:AtlPlanarReflectionPercentage(percent) end
---@param bEnable boolean
function UAppCheatManager:AtlMessageScaleNewProcessEnable(bEnable) end
function UAppCheatManager:AtlLogWorldTimeSec() end
---@param Quality int32
function UAppCheatManager:AtlGraphicConfigShadowQuality(Quality) end
---@param ScreenMode int32
---@param displayNo int32
function UAppCheatManager:AtlGraphicConfigScreenMode(ScreenMode, displayNo) end
---@param ResX int32
---@param ResY int32
---@param ScreenMode int32
---@param displayNo int32
function UAppCheatManager:AtlGraphicConfigScreen(ResX, ResY, ScreenMode, displayNo) end
---@param Preset int32
function UAppCheatManager:AtlGraphicConfigPreset(Preset) end
function UAppCheatManager:AtlGraphicConfigHardwareStat() end
---@param maxFPS int32
function UAppCheatManager:AtlGraphicConfigFPS(maxFPS) end
function UAppCheatManager:AtlGraphicConfigBenchmark() end
function UAppCheatManager:AtlGetDayTime() end
function UAppCheatManager:AtlForceUnpause() end
function UAppCheatManager:AtlForceFadeOUT() end
function UAppCheatManager:AtlForceFadeIN() end
function UAppCheatManager:AtlFldDispCriAtomExDebugResourcesInfo() end
---@param X float
---@param Y float
---@param Z float
function UAppCheatManager:AtlFieldPlayerPos(X, Y, Z) end
---@param bPaused boolean
function UAppCheatManager:AtlFieldPauseActorALL(bPaused) end
function UAppCheatManager:AtlFieldChangeVisible() end
---@param InFrequency float
---@param InPowerX float
---@param InPowerY float
---@param InTime float
function UAppCheatManager:AtlFieldCameraShakeStart(InFrequency, InPowerX, InPowerY, InTime) end
---@param InTime float
function UAppCheatManager:AtlFieldCameraShakeEnd(InTime) end
function UAppCheatManager:AtlEventForceFinish() end
---@param bVisible boolean
function UAppCheatManager:AtlDrawPlayLog(bVisible) end
function UAppCheatManager:AtlDispLoadedStreamingLevels() end
function UAppCheatManager:AtlDispIsUsingAstreaSavedata() end
function UAppCheatManager:AtlDispIsPlayingAstrea() end
function UAppCheatManager:AtlDispIsAvailableAstrea() end
function UAppCheatManager:AtlDispCharacterPoolListToOutputLog() end
function UAppCheatManager:AtlDispAstreaProgress() end
---@param bEnable boolean
function UAppCheatManager:AtlDevPlayLogging(bEnable) end
function UAppCheatManager:AtlCallNextTime() end
---@param EventMaojorID int32
---@param EventMinorID int32
function UAppCheatManager:AtlCallEventFild(EventMaojorID, EventMinorID) end
---@param EventMaojorID int32
---@param EventMinorID int32
function UAppCheatManager:AtlCallEventCmmu(EventMaojorID, EventMinorID) end
---@param EventMajorID int32
---@param EventMinorID int32
function UAppCheatManager:AtlCallEvent(EventMajorID, EventMinorID) end
function UAppCheatManager:AtlCallDebugStartMenu() end
function UAppCheatManager:AtlCallAstreaProgress() end
function UAppCheatManager:AtlCallAlphaDebugMenu() end
---@param bEnable boolean
function UAppCheatManager:AtlBtlFadeManagerOldProcessEnable(bEnable) end
function UAppCheatManager:AtlBtlCountdownStop() end
---@param InSecond int32
function UAppCheatManager:AtlBtlCountdownSetTime(InSecond) end
function UAppCheatManager:AtlBtlCountdownPlay() end
function UAppCheatManager:AtlBgmStop() end
function UAppCheatManager:AtlBgmRestart() end
---@param SkillPackIndex int32
---@param MaxTryCount int32
function UAppCheatManager:AtlAutoPlayExecSkillMutationTest(SkillPackIndex, MaxTryCount) end
---@param OldSkillID int32
---@param NewSkillID int32
function UAppCheatManager:AtlAutoPlayExecSkillMutationPowerUpUnitTest(OldSkillID, NewSkillID) end
---@param StartIndex int32
---@param MaxTryCount int32
function UAppCheatManager:AtlAutoPlayExecSkillMutationPowerUpTest(StartIndex, MaxTryCount) end
function UAppCheatManager:AtlAutoPlayExecShuffleTimeTest() end
---@param MinEncountID int32
---@param MaxEncountID int32
function UAppCheatManager:AtlAutoPlayExecEnemyDropItemLoggingTest(MinEncountID, MaxEncountID) end
---@param MinEncountID int32
---@param MaxEncountID int32
function UAppCheatManager:AtlAutoPlayExecEnemyAILoggingTest(MinEncountID, MaxEncountID) end
---@param BeginFloor int32
---@param EndFloor int32
---@param bLoop boolean
---@param bAstrea boolean
function UAppCheatManager:AtlAutoPlayExecDungeonTBoxTest(BeginFloor, EndFloor, bLoop, bAstrea) end
---@param BeginFloor int32
---@param EndFloor int32
---@param bLoop boolean
---@param bRebuild boolean
---@param bAstrea boolean
function UAppCheatManager:AtlAutoPlayExecDungeonPassingTest(BeginFloor, EndFloor, bLoop, bRebuild, bAstrea) end
---@param OPTION FString
function UAppCheatManager:AtlAutoPlay(OPTION) end
function UAppCheatManager:AtlAllDLCActiveFlagOn() end
function UAppCheatManager:AtlAllDLCActiveFlagOff() end


---@class UAppChunkInstall : UGameInstanceSubsystem
local UAppChunkInstall = {}


---@class UAppDataAsset : UDataAsset
local UAppDataAsset = {}

function UAppDataAsset:Import() end


---@class UAppKoromaruComp : UAppCharacterComp
local UAppKoromaruComp = {}


---@class UAppLevelManager : UGameInstanceSubsystem
---@field mLevelTable_ TMap<FName, FAppLevelData>
---@field mMonitors_ TArray<AAppLvMngUnloadMonitorActor>
local UAppLevelManager = {}



---@class UAppMultiDataAsset : UDataAsset
local UAppMultiDataAsset = {}

function UAppMultiDataAsset:Import() end


---@class UAppNpcComp : UAppCharBaseComp
---@field mBaseCore_ ANpcBaseCore
---@field Loader UAppCharLoader
local UAppNpcComp = {}

---@param ID int32
function UAppNpcComp:SetFootForBP(ID) end
---@param Index int32
function UAppNpcComp:SetCosTexID(Index) end
---@return ANpcBaseCore
function UAppNpcComp:GetBaseCore() end


---@class UAppNpcCostume_DA : UDataAsset
---@field Type int32
---@field MeshLocation FVector
---@field Anims TMap<EAnimPackID, TSoftObjectPtr<UAppCharAnimDataAsset>>
---@field Base FAppNpcCostumePartsData
---@field CostumeSummer TMap<int32, FAppNpcCostumePartsData>
---@field CostumeWinter TMap<int32, FAppNpcCostumePartsData>
---@field Hair TMap<int32, FAppNpcCostumePartsData>
---@field Face TMap<int32, FAppNpcCostumePartsData>
---@field Unique TMap<int32, FAppNpcUniqueCostumeData>
local UAppNpcCostume_DA = {}

function UAppNpcCostume_DA:Make() end


---@class UAppPauseList : UObject
---@field List TArray<TScriptInterface<IAppPauseableListener>>
---@field DebugList TArray<FPauseDebugItem>
---@field WarningObjectNames TArray<FName>
local UAppPauseList = {}



---@class UAppPauseManagerSubsystem : UGameInstanceSubsystem
---@field PauseFlow TArray<EAppPauseType>
---@field AppPauseables UAppPauseList
---@field AppPaused UAppPauseList
local UAppPauseManagerSubsystem = {}

function UAppPauseManagerSubsystem:UnPause() end
---@param InPauseType EAppPauseType
function UAppPauseManagerSubsystem:Pause(InPauseType) end
---@param PauseType EAppPauseType
---@return boolean
function UAppPauseManagerSubsystem:IsPause(PauseType) end


---@class UAppPropsAnimPackAsset : UDataAsset
---@field PackType EAppPropsAnimPackType
---@field Anims TMap<int32, UAnimSequenceBase>
local UAppPropsAnimPackAsset = {}



---@class UArbeitInfoDataAsset : UAppDataAsset
---@field Data TArray<FArbeitInfo>
local UArbeitInfoDataAsset = {}



---@class UArmorItemListTable : UAppDataAsset
---@field Data TArray<FArmorItemList>
local UArmorItemListTable = {}



---@class UAssetHolder : UObject
---@field HoldAssets TArray<FSoftObjectPath>
---@field LoadedDelegate FAssetHolderLoadedDelegate
---@field loadedAssets TArray<UObject>
---@field ChildHolders TArray<UAssetHolder>
local UAssetHolder = {}

function UAssetHolder:UnloadAsset() end
function UAssetHolder:LoadedDelegate__DelegateSignature() end
function UAssetHolder:LoadComplete() end
function UAssetHolder:LoadAsset() end
---@return FGetLoadedDelegateReturnValue
function UAssetHolder:GetLoadedDelegate() end
---@param loadedAssets TArray<UObject>
function UAssetHolder:ChildLoadComplete(loadedAssets) end


---@class UAssetLoader : UObject
local UAssetLoader = {}


---@class UAstreaEditorWork : UDeveloperSettings
---@field bIsEditAstrea boolean
---@field bIsForce boolean
local UAstreaEditorWork = {}



---@class UAstreaFuncLib : UBlueprintFunctionLibrary
local UAstreaFuncLib = {}

---@param bUsingAstrea boolean
function UAstreaFuncLib:SetUsingAstreaSaveData(bUsingAstrea) end
---@param bIsDisplay boolean
function UAstreaFuncLib:SetRequestDisplayNetworkSlot(bIsDisplay) end
---@param bPlaying boolean
function UAstreaFuncLib:SetPlayingAstrea(bPlaying) end
---@param bIsOpen boolean
function UAstreaFuncLib:SetOpenAddAstreaMsg(bIsOpen) end
---@param SaveDataState ELibraSaveDataState
function UAstreaFuncLib:SetLibraSaveDataState(SaveDataState) end
---@param InOriginal FString
---@return FString
function UAstreaFuncLib:ReplaceContentRootPath(InOriginal) end
---@return boolean
function UAstreaFuncLib:IsUsingAstreaSavedata() end
---@return boolean
function UAstreaFuncLib:IsUsingAstreaPersonaBook() end
---@return boolean
function UAstreaFuncLib:IsUnlockAstrea() end
---@return boolean
function UAstreaFuncLib:IsRequestDisplayNetworkSlot() end
---@return boolean
function UAstreaFuncLib:IsPlayingAstrea() end
---@param PlayerId int32
---@return boolean
function UAstreaFuncLib:IsOriginEpisodeMember(PlayerId) end
---@return boolean
function UAstreaFuncLib:IsOpenedAddAstreaMsg() end
---@return boolean
function UAstreaFuncLib:IsMonadoBattle() end
---@return boolean
function UAstreaFuncLib:IsLongRangeAttackEnhanced() end
---@param PlayerId int32
---@return boolean
function UAstreaFuncLib:IsExtraEpisodeMember(PlayerId) end
---@return boolean
function UAstreaFuncLib:IsEnableAstreaSaveFormat() end
---@param Date FString
---@return boolean
function UAstreaFuncLib:IsDateUnknowText(Date) end
---@return boolean
function UAstreaFuncLib:IsDateUnknown() end
---@param PlayerId int32
---@return boolean
function UAstreaFuncLib:IsCurrentEpisodeMember(PlayerId) end
---@param EncounterID int32
---@return boolean
function UAstreaFuncLib:IsColosseumBattle(EncounterID) end
---@return boolean
function UAstreaFuncLib:IsAvailableAstrea() end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@return boolean
function UAstreaFuncLib:IsAstreaField(FieldMajorID, FieldMinorID) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@return boolean
function UAstreaFuncLib:IsAbyssOfTimeField(FieldMajorID, FieldMinorID) end
---@return ELibraSaveDataState
function UAstreaFuncLib:GetLibraSaveDataState() end
---@return int32
function UAstreaFuncLib:GetCurrentEpisodeHero() end
---@return int32
function UAstreaFuncLib:GetCurrentDesignTypeId() end
---@param PlayerId int32
---@return int32
function UAstreaFuncLib:GetCostumeAstreaDaily(PlayerId) end


---@class UAstreaProgress : UObject
---@field ExecProgressActor_ AAstreaProgressActor
local UAstreaProgress = {}



---@class UAstreaProgressDataAsset : UAppDataAsset
---@field Data TArray<FAstreaProgressTableItem>
local UAstreaProgressDataAsset = {}



---@class UAstreaSaveGame : USaveGame
---@field breakdown FString
---@field SaveDataHeadder FSaveGameHeadder
---@field SaveDataArea uint32
local UAstreaSaveGame = {}



---@class UAtlEvtActorComponent : UAppActorComponent
---@field AttachPropActor AActor
---@field LocomotionTeleportVelocityType EAtlEvtLocomotionTeleportVelocityType
---@field LocomotionTeleportDistanceThreshold float
---@field LocomotionTeleportVelocityConstant FVector
---@field LocomotionTeleportVelocityClampMinMax FVector2D
---@field LipUniqueID int32
---@field HandwritingComp TWeakObjectPtr<UNiagaraComponent>
---@field HandwritingSpawner TWeakObjectPtr<AHandwritingSpawner>
---@field OwnerCharacter ACharacter
---@field OwnerNpc ANpcBaseCore
---@field AppCharaBaseComp UAppCharBaseComp
---@field EvtNiagaraSystemPool FAtlEvtNiagaraSystemPool
---@field bUseAnimPack boolean
---@field OverrideAnimPackID EAnimPackID
---@field bEnableAtlEvtLocomotionVelocitySimulation boolean
---@field bEnableAtlEvtBag boolean
---@field ShoesID EAppCharShoesID
local UAtlEvtActorComponent = {}

---@param Type EAtlEvtHandwritingType
---@param bAttached boolean
---@return AHandwritingSpawner
function UAtlEvtActorComponent:SpawnHandwritingAttachedDefaultParam(Type, bAttached) end
---@param Type EAtlEvtHandwritingType
---@param LoopCount int32
---@param CameraOffset float
---@param AttachPointName FName
---@param Location FVector
---@param Rotation FRotator
---@param Scale FVector
---@param bAttached boolean
---@return AHandwritingSpawner
function UAtlEvtActorComponent:SpawnHandwritingAttached(Type, LoopCount, CameraOffset, AttachPointName, Location, Rotation, Scale, bAttached) end
---@param bInUseAnimPack boolean
function UAtlEvtActorComponent:SetUseAnimPack(bInUseAnimPack) end
function UAtlEvtActorComponent:SetupHeroBag() end
function UAtlEvtActorComponent:SetupAnimPack() end
---@param ID EAppCharShoesID
function UAtlEvtActorComponent:SetShoesId(ID) end
---@param Transform FTransform
function UAtlEvtActorComponent:SetOverwriteDettachPropTransform(Transform) end
---@param InAnimPackID EAnimPackID
function UAtlEvtActorComponent:SetOverrideAnimPackID(InAnimPackID) end
---@param Type EAtlEvtLocomotionTeleportVelocityType
function UAtlEvtActorComponent:SetLocomotionTeleportVelocityType(Type) end
---@param bInEnableAtlEvtBag boolean
function UAtlEvtActorComponent:SetEnableBag(bInEnableAtlEvtBag) end
---@param bInEnableAtlEvtLocomotionVelocitySimulation boolean
function UAtlEvtActorComponent:SetEnableAtlEvtLocomotionVelocitySimulation(bInEnableAtlEvtLocomotionVelocitySimulation) end
function UAtlEvtActorComponent:SetAttachPropActor() end
function UAtlEvtActorComponent:ResetVelocitySimulateParam() end
function UAtlEvtActorComponent:LoadEnded() end
---@return boolean
function UAtlEvtActorComponent:IsUseAnimPack() end
---@return boolean
function UAtlEvtActorComponent:IsEnableLocomotionVelocitySimulate() end
---@return boolean
function UAtlEvtActorComponent:IsEnableBag() end
---@return EAppCharShoesID
function UAtlEvtActorComponent:GetShoesID() end
---@return EAtlEvtLocomotionTeleportVelocityType
function UAtlEvtActorComponent:GetLocomotionTeleportVelocityType() end
---@param LocalDataIndex int32
---@param ConditionalValue int32
---@param CompareType EEvtConditionalBranchCompType
function UAtlEvtActorComponent:CompareToHiddenCharacter(LocalDataIndex, ConditionalValue, CompareType) end
function UAtlEvtActorComponent:ClearAttachPropActor() end
---@param SimVelocity FVector
---@param PrevSimVelocity FVector
---@param VelocityRate float
---@return FVector
function UAtlEvtActorComponent:CalcEvtLocomotionTeleportVelocity(SimVelocity, PrevSimVelocity, VelocityRate) end


---@class UAtlEvtHandwritingDataAsset : UDataAsset
---@field EvtHandwritingData FAtlEvtHandwritingData
local UAtlEvtHandwritingDataAsset = {}



---@class UAtlEvtHandwritingSubsystem : UGameInstanceSubsystem
---@field EvtHandwritingAsset UAtlEvtHandwritingDataAsset
---@field EvtHandwritingDefaultDatas TArray<FAtlEvtHandwritingData>
---@field EvtHandwritingDataMap TMap<uint32, FAtlEvtHandwritingData>
local UAtlEvtHandwritingSubsystem = {}

function UAtlEvtHandwritingSubsystem:LoadEventHandwrintingData() end


---@class UAtlEvtHelperSettings : UDeveloperSettings
---@field bLoadSublevelsInAEvent boolean
---@field bUseSimulateDate boolean
local UAtlEvtHelperSettings = {}



---@class UAtlEvtLightScenarioSublevelsDataAsset : UAppDataAsset
---@field LightingIndexArray TArray<FAtlEvtLightScenarioSublevel>
---@field AdditionBGSublevelArray TArray<FAtlEvtAdditionBGSublevel>
---@field bDisableAutoLoadFirstLightingScenarioLevel boolean
---@field bForceDisableUseCurrentTimeZone boolean
---@field ForceMonth int32
---@field ForceDay int32
local UAtlEvtLightScenarioSublevelsDataAsset = {}



---@class UAtlEvtMoviePlayManager : UObject
local UAtlEvtMoviePlayManager = {}


---@class UAtlEvtPreDataAsset : UAppDataAsset
---@field Data TArray<FAtlEvtPreData>
local UAtlEvtPreDataAsset = {}



---@class UAtlEvtSubsystem : UGameInstanceSubsystem
---@field AppEvtCharactersMap TMap<uint32, FAtlEvtPlayingCharacterInfo>
---@field AppEvtLipUniqueIDCharactersMap TMap<int32, FAtlEvtPlayingCharacterInfo>
---@field EventSEInfoArray TArray<FAtlEvtSoundSEInfo>
---@field LightScenarioTransitionController AAtlEvtLightScenarioTransitionController
---@field EvtLocalData FEvtLocalData
---@field pLSAssetLoader UAssetLoader
---@field LevelSequenceObject UObject
---@field OnPlaySequencerDelegate FAtlEvtSubsystemOnPlaySequencerDelegate
---@field OnFinishedDelegate FAtlEvtSubsystemOnFinishedDelegate
---@field OnForceFinishedDelegate FAtlEvtSubsystemOnForceFinishedDelegate
---@field OnEvtHighSpeedDelegate FAtlEvtSubsystemOnEvtHighSpeedDelegate
---@field EvtPreDataAsset UAtlEvtPreDataAsset
---@field EvtPreDataMap TMap<uint32, FAtlEvtPreData>
---@field EventSublevelWorldObjPtr TWeakObjectPtr<UWorld>
---@field LoadedEventSublevelInfos TArray<FAtlEvtPlayLoadSublevelInfo>
---@field CurrentLoadedEventSublevels TArray<FName>
---@field ReserveAssetOverrideParameter TArray<FAtlEvtAssetOverrideParameter>
---@field AssetOverrideLoader UAssetLoader
---@field AssetOverrideSubClass TSubclassOf<ACharacter>
---@field BagActor AActor
---@field OnePicture AAtlEvtOnePicture
local UAtlEvtSubsystem = {}

---@param NextLightScenarioIndex int32
function UAtlEvtSubsystem:TransitionLightScenarioSublevel(NextLightScenarioIndex) end
---@param bShow boolean
function UAtlEvtSubsystem:SetShowCinemaScope(bShow) end
---@param Color FColor
function UAtlEvtSubsystem:SetOT(Color) end
---@param Index int32
---@param Data int32
function UAtlEvtSubsystem:SetLocalData(Index, Data) end
---@param InPlayMode EAtlEvtPlayMode
function UAtlEvtSubsystem:SetEventPlayMode(InPlayMode) end
function UAtlEvtSubsystem:ResetLocalData() end
---@param SpawnedActor AActor
function UAtlEvtSubsystem:OnActorSpawnedEventSublevel(SpawnedActor) end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
---@return TArray<FString>
function UAtlEvtSubsystem:MakeFieldSublevelPathListField(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
---@return TArray<FString>
function UAtlEvtSubsystem:MakeFieldSublevelPathListEvent(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
---@return TArray<FString>
function UAtlEvtSubsystem:MakeFieldSublevelPathListCmmu(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param WorldContextObject UObject
---@param CategoryType EAtlEvtEventCategoryType
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
---@return TArray<FString>
function UAtlEvtSubsystem:MakeFieldSublevelPathList(WorldContextObject, CategoryType, EventMajorID, EventMinorID, Param) end
---@return boolean
function UAtlEvtSubsystem:IsShowCinemaScope() end
---@return boolean
function UAtlEvtSubsystem:IsPlayingEventOrEditHelperMode() end
---@return boolean
function UAtlEvtSubsystem:IsPlayingEvent() end
---@return boolean
function UAtlEvtSubsystem:IsHighSpeed() end
---@return boolean
function UAtlEvtSubsystem:IsFinishedPreloadLightScenarioSublevels() end
---@return boolean
function UAtlEvtSubsystem:IsEventPlayModeEditHelper() end
---@return boolean
function UAtlEvtSubsystem:IsDoingTransitionLightScenarioSublevel() end
---@param CompType EEvtConditionalBranchCompType
---@param LHS int32
---@param Index int32
---@return boolean
function UAtlEvtSubsystem:IsConditionalBranchFromLocalData(CompType, LHS, Index) end
---@param ExitType int32
function UAtlEvtSubsystem:InitScriptFinishFunction(ExitType) end
---@param WorldContextObject UObject
---@return FAtlEvtVisibleEventInfo
function UAtlEvtSubsystem:GetPlayingVisibleEventInfo(WorldContextObject) end
---@param Index int32
---@return int32
function UAtlEvtSubsystem:GetLocalData(Index) end
---@return TArray<FAtlEvtPlayLoadSublevelInfo>
function UAtlEvtSubsystem:GetLoadedEventSublevelInfos() end
---@param LipUniqueID int32
---@return AActor
function UAtlEvtSubsystem:GetFirstAppEventCharacterByLipUniqueID(LipUniqueID) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@return AActor
function UAtlEvtSubsystem:GetFirstAppEventCharacter(CharcterCategoryType, CharaIndexID) end
---@param CategoryType EAtlEvtEventCategoryType
---@param EventMajorID int32
---@param EventMinorID int32
---@return uint32
function UAtlEvtSubsystem:GetEvtPreDataHash(CategoryType, EventMajorID, EventMinorID) end
---@param CategoryType EAtlEvtEventCategoryType
---@param EventMajorID int32
---@param EventMinorID int32
---@return FAtlEvtPreData
function UAtlEvtSubsystem:GetEvtPreData(CategoryType, EventMajorID, EventMinorID) end
---@return EAtlEvtPlayMode
function UAtlEvtSubsystem:GetEventPlayMode() end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@return uint32
function UAtlEvtSubsystem:GetAppEvtCharactersHash(CharcterCategoryType, CharaIndexID) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@return FAtlEvtPlayingCharacterInfo
function UAtlEvtSubsystem:GetAppEventCharacter(CharcterCategoryType, CharaIndexID) end
---@param WorldContextObject UObject
---@param EvtName FString
---@param InEventRank FString
---@param Param FAtlEvtPlayParameter
function UAtlEvtSubsystem:EvtPlay(WorldContextObject, EvtName, InEventRank, Param) end
---@param idx int32
function UAtlEvtSubsystem:DateOffDelegate(idx) end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
function UAtlEvtSubsystem:CallEventField(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
function UAtlEvtSubsystem:CallEventCmmu(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param World UWorld
---@param StreamTargetLevelName FName
---@param Param FAtlEvtPlayParameter
---@param PreData FAtlEvtPreData
---@param SublevelType EAtlEvtSublevelType
---@param LatentInfo FLatentActionInfo
---@param WorldContextObject UObject
---@return AAtlEvtPlayObject
function UAtlEvtSubsystem:CallEvent_SpawnLoadSublevelActor(World, StreamTargetLevelName, Param, PreData, SublevelType, LatentInfo, WorldContextObject) end
---@return boolean
function UAtlEvtSubsystem:CallEvent_IsCompleteFieldLoadingSublevel() end
---@param Value int32
function UAtlEvtSubsystem:CallEvent_InternalFinishedEvent(Value) end
function UAtlEvtSubsystem:CallEvent_DecrementFieldLoadingCount() end
---@param WorldContextObject UObject
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
function UAtlEvtSubsystem:CallEvent(WorldContextObject, EventMajorID, EventMinorID, Param) end
---@param WorldContextObject UObject
---@param CategoryType EAtlEvtEventCategoryType
---@param EventMajorID int32
---@param EventMinorID int32
---@param Param FAtlEvtPlayParameter
function UAtlEvtSubsystem:CallCategoryEvent(WorldContextObject, CategoryType, EventMajorID, EventMinorID, Param) end


---@class UAtlHandwritingDataAsset : UDataAsset
---@field HandwritingEffectSoftObjMap TMap<EAtlEvtHandwritingType, TSoftClassPtr<AHandwritingEffectBase>>
local UAtlHandwritingDataAsset = {}



---@class UAtlUIPlg : UWidget
---@field Brush FSlateBrush
---@field BrushDelegate FAtlUIPlgBrushDelegate
---@field ColorAndOpacity FLinearColor
---@field ColorAndOpacityDelegate FAtlUIPlgColorAndOpacityDelegate
---@field PlgAsset UPlgAsset
---@field PrimitiveNo int32
---@field PlgScale float
local UAtlUIPlg = {}



---@class UAtlUIPrimitive : UWidget
---@field Brush FSlateBrush
---@field BrushDelegate FAtlUIPrimitiveBrushDelegate
---@field ColorAndOpacity FLinearColor
---@field ColorAndOpacityDelegate FAtlUIPrimitiveColorAndOpacityDelegate
---@field Vertexes TArray<FVector2D>
---@field Indexes TArray<int32>
local UAtlUIPrimitive = {}



---@class UAtlUITextBlock : UTextLayoutWidget
---@field Text FText
---@field TextDelegate FAtlUITextBlockTextDelegate
---@field fontStyle EAtlUIFontStyle
---@field TextScale float
---@field FontAdjustmentListTable UFontAdjustmentListTable
---@field ColorAndOpacity FSlateColor
---@field ColorAndOpacityDelegate FAtlUITextBlockColorAndOpacityDelegate
---@field Font FSlateFontInfo
---@field StrikeBrush FSlateBrush
---@field ShadowOffset FVector2D
---@field ShadowColorAndOpacity FLinearColor
---@field ShadowColorAndOpacityDelegate FAtlUITextBlockShadowColorAndOpacityDelegate
---@field MinDesiredWidth float
---@field bWrapWithInvalidationPanel boolean
---@field bAutoWrapText boolean
---@field TextTransformPolicy ETextTransformPolicy
local UAtlUITextBlock = {}

---@param InTransformPolicy ETextTransformPolicy
function UAtlUITextBlock:SetTextTransformPolicy(InTransformPolicy) end
---@param InText FText
function UAtlUITextBlock:SetText(InText) end
---@param InStrikeBrush FSlateBrush
function UAtlUITextBlock:SetStrikeBrush(InStrikeBrush) end
---@param InShadowOffset FVector2D
function UAtlUITextBlock:SetShadowOffset(InShadowOffset) end
---@param InShadowColorAndOpacity FLinearColor
function UAtlUITextBlock:SetShadowColorAndOpacity(InShadowColorAndOpacity) end
---@param InOpacity float
function UAtlUITextBlock:SetOpacity(InOpacity) end
---@param InMinDesiredWidth float
function UAtlUITextBlock:SetMinDesiredWidth(InMinDesiredWidth) end
---@param InFontInfo FSlateFontInfo
function UAtlUITextBlock:SetFont(InFontInfo) end
---@param InColorAndOpacity FSlateColor
function UAtlUITextBlock:SetColorAndOpacity(InColorAndOpacity) end
---@param InAutoTextWrap boolean
function UAtlUITextBlock:SetAutoWrapText(InAutoTextWrap) end
---@return FText
function UAtlUITextBlock:GetText() end
---@return UMaterialInstanceDynamic
function UAtlUITextBlock:GetDynamicOutlineMaterial() end
---@return UMaterialInstanceDynamic
function UAtlUITextBlock:GetDynamicFontMaterial() end


---@class UAtlUITriangle : UWidget
---@field Brush FSlateBrush
---@field BrushDelegate FAtlUITriangleBrushDelegate
---@field ColorAndOpacity FLinearColor
---@field ColorAndOpacityDelegate FAtlUITriangleColorAndOpacityDelegate
---@field Vertexe01 FVector2D
---@field Vertexe02 FVector2D
---@field Vertexe03 FVector2D
---@field Antialiasing int32
local UAtlUITriangle = {}



---@class UBFLAtlEvtCharacter : UBlueprintFunctionLibrary
local UBFLAtlEvtCharacter = {}

---@param Character ACharacter
---@param bShowDebugLookAtTargetLocation boolean
---@param LookAtFinalLocation FVector
function UBFLAtlEvtCharacter:TickLookAtEditorOnly(Character, bShowDebugLookAtTargetLocation, LookAtFinalLocation) end
---@param PersonaActor AActor
function UBFLAtlEvtCharacter:PersonaCombineAdjust(PersonaActor) end
---@param KoromaruActor AActor
function UBFLAtlEvtCharacter:KoromaruAdjust(KoromaruActor) end
---@param NpcBaseCore ANpcBaseCore
---@param AppNpcCharaCostumeIndex int32
---@param NpcIndexId int32
---@param HairId int32
---@param FaceID int32
function UBFLAtlEvtCharacter:ConstructNPCCostume(NpcBaseCore, AppNpcCharaCostumeIndex, NpcIndexId, HairId, FaceID) end
---@param CharacterBaseCore ACharacterBaseCore
---@param AppCharaCategory EAppCharCategoryType
---@param AppCharaIndex int32
---@param AppCharaCostumeIndex int32
function UBFLAtlEvtCharacter:ConstructCostume(CharacterBaseCore, AppCharaCategory, AppCharaIndex, AppCharaCostumeIndex) end


---@class UBFLAtlEvtHandwriting : UBlueprintFunctionLibrary
local UBFLAtlEvtHandwriting = {}

---@param Type EAtlEvtHandwritingType
---@param LoopCount int32
---@param CameraOffset float
---@param AttachToCharacter ACharacter
---@param AttachPointName FName
---@param Location FVector
---@param Rotation FRotator
---@param Scale FVector
---@param LocationType EAttachLocation::Type
---@param bAutoDestroy boolean
---@param bAutoActivate boolean
---@param PoolingMethod ENCPoolMethod
---@param bPreCullCheck boolean
---@return UNiagaraComponent
function UBFLAtlEvtHandwriting:SpawnHandwritingAttached(Type, LoopCount, CameraOffset, AttachToCharacter, AttachPointName, Location, Rotation, Scale, LocationType, bAutoDestroy, bAutoActivate, PoolingMethod, bPreCullCheck) end
---@param WorldContextObject UObject
---@param Type EAtlEvtHandwritingType
---@param LoopCount int32
---@param CameraOffset float
---@param Location FVector
---@param Rotation FRotator
---@param Scale FVector
---@param bAutoDestroy boolean
---@param bAutoActivate boolean
---@param PoolingMethod ENCPoolMethod
---@param bPreCullCheck boolean
---@return UNiagaraComponent
function UBFLAtlEvtHandwriting:SpawnHandwritingAtLocation(WorldContextObject, Type, LoopCount, CameraOffset, Location, Rotation, Scale, bAutoDestroy, bAutoActivate, PoolingMethod, bPreCullCheck) end
---@param Type EAtlEvtHandwritingType
---@return FName
function UBFLAtlEvtHandwriting:MakeHandwritingTypeName(Type) end
---@param Type EAtlEvtHandwritingType
---@return FName
function UBFLAtlEvtHandwriting:MakeHandwritingTypeDefaultParamAssetPath(Type) end
---@param Type EAtlEvtHandwritingType
---@param CharacterTypeCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@return FName
function UBFLAtlEvtHandwriting:MakeHandwritingTypeCharaParamAssetPath(Type, CharacterTypeCategoryType, CharaIndexID) end
---@param Type EAtlEvtHandwritingType
---@return FName
function UBFLAtlEvtHandwriting:MakeHandwritingTypeAssetPath(Type) end


---@class UBFLAtlEvtTest : UBlueprintFunctionLibrary
local UBFLAtlEvtTest = {}

---@param WorldContextObject UObject
---@param EvtName FString
---@param SublevelOnBindingActorName FString
---@param Param FAtlEvtPlayParameter
function UBFLAtlEvtTest:EvtPlayOnBindingActor(WorldContextObject, EvtName, SublevelOnBindingActorName, Param) end


---@class UBFLBtlAnimation : UBlueprintFunctionLibrary
local UBFLBtlAnimation = {}

---@param InSkeletalMeshComponent USkeletalMeshComponent
function UBFLBtlAnimation:StopMontageAnimation(InSkeletalMeshComponent) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param MontageToPlay UAnimMontage
---@param SectionName FName
---@param PositionInSection float
function UBFLBtlAnimation:SetMontagePositionInSection(InSkeletalMeshComponent, MontageToPlay, SectionName, PositionInSection) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param MontageToPlay UAnimMontage
---@param PlayRate float
function UBFLBtlAnimation:SetMontageAnimationSpeed(InSkeletalMeshComponent, MontageToPlay, PlayRate) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param AnimMontage UAnimMontage
---@return float
function UBFLBtlAnimation:GetRemainingTimeFromCurrentSection(InSkeletalMeshComponent, AnimMontage) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@return float
function UBFLBtlAnimation:GetMontageSectionLength(InSkeletalMeshComponent, AnimMontage, SectionName) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param NextSectionName FName
---@return boolean
function UBFLBtlAnimation:GetMontageNextSectionName(AnimMontage, SectionName, NextSectionName) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param NextSectionName FName
---@return boolean
function UBFLBtlAnimation:GetMontageAlignedNextSectionName(AnimMontage, SectionName, NextSectionName) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@return FName
function UBFLBtlAnimation:GetCurrentSectionName(InSkeletalMeshComponent) end
---@param SkeletalMesh USkeletalMeshComponent
function UBFLBtlAnimation:ForcePoseUpdate(SkeletalMesh) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param AnimSequence UAnimSequence
function UBFLBtlAnimation:CoordinateDefaultAnimPose(InSkeletalMeshComponent, AnimSequence) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@return boolean
function UBFLBtlAnimation:CheckMontageSectionIsLoop(AnimMontage, SectionName) end


---@class UBFLBtlManager : UBlueprintFunctionLibrary
local UBFLBtlManager = {}

function UBFLBtlManager:MarkAsBattleMainSetup() end
function UBFLBtlManager:MarkAsBattleCoreSetup() end
function UBFLBtlManager:ClearBattleManagerSetupFlags() end
---@return boolean
function UBFLBtlManager:CheckBattleMainLoaded() end
---@return boolean
function UBFLBtlManager:CheckBattleCoreLoaded() end


---@class UBFLEventMovieScene : UBlueprintFunctionLibrary
local UBFLEventMovieScene = {}

---@param AnimInstance UAnimInstance
---@param BlendOutTime float
---@param SlotNodeName FName
function UBFLEventMovieScene:StopSlotAnimation(AnimInstance, BlendOutTime, SlotNodeName) end
---@param InObject UObject
---@return USkeletalMeshComponent
function UBFLEventMovieScene:SkeletalMeshComponentFromObject(InObject) end
---@param WorldContextObject UObject
---@param NearClipCm float
function UBFLEventMovieScene:SetNearClipPlane(WorldContextObject, NearClipCm) end
---@param WorldContextObject UObject
---@param bEnable boolean
function UBFLEventMovieScene:SetEnableStreamingTexture(WorldContextObject, bEnable) end
---@param WorldContextObject UObject
function UBFLEventMovieScene:ResetNearClipPlane(WorldContextObject) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param StartOffsetTime float
---@param EndOffsetTime float
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotOffsetAnimationAsDynamicMontageLoop(AnimInstance, Mesh, Asset, SlotNodeName, StartOffsetTime, EndOffsetTime, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param BaseAnimAsset UAnimSequenceBase
---@param LoopAsset UAnimSequenceBase
---@param SlotNodeName FName
---@param StartOffsetTime float
---@param EndOffsetTime float
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotMultiAnimationOffsetAsDynamicMontageTwo(AnimInstance, Mesh, BaseAnimAsset, LoopAsset, SlotNodeName, StartOffsetTime, EndOffsetTime, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param BaseAnimAsset UAnimSequenceBase
---@param AnimAssets TArray<FAtlSlotMultiAnimationParam>
---@param SlotNodeName FName
---@param EvtCharaAnimationType EEvtCharaAnimationType
---@param StartOffsetTime float
---@param EndOffsetTime float
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotMultiAnimationOffsetAsDynamicMontage(AnimInstance, Mesh, BaseAnimAsset, AnimAssets, SlotNodeName, EvtCharaAnimationType, StartOffsetTime, EndOffsetTime, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param BaseAnimAsset UAnimSequenceBase
---@param AnimAssets TArray<FAtlSlotMultiAnimationParam>
---@param SlotNodeName FName
---@param EvtCharaAnimationType EEvtCharaAnimationType
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotMultiAnimationAsDynamicMontage(AnimInstance, Mesh, BaseAnimAsset, AnimAssets, SlotNodeName, EvtCharaAnimationType, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param Asset2 UAnimSequenceBase
---@param SlotNodeName FName
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotAnimationAsDynamicMontageTwo(AnimInstance, Mesh, Asset, Asset2, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param StartOffsetTime float
---@param EndOffsetTime float
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotAnimationAsDynamicMontageLoopSecOnLastFrame(AnimInstance, Mesh, Asset, SlotNodeName, StartOffsetTime, EndOffsetTime, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotAnimationAsDynamicMontageLoopOnLastFrame(AnimInstance, Mesh, Asset, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param AnimInstance UAnimInstance
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:PlaySlotAnimationAsDynamicMontageLoop(AnimInstance, Mesh, Asset, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@param Season ECldSeason
---@param bStreamingPath boolean
---@return FName
function UBFLEventMovieScene:MakeSeasonSublevel(FieldMajorID, FieldMinorID, Season, bStreamingPath) end
---@param SublevelName FString
function UBFLEventMovieScene:LoadSublevel(SublevelName) end
---@param CompareType EEvtConditionalBranchCompType
---@param LHS int32
---@param RHS int32
---@return boolean
function UBFLEventMovieScene:IsCondition(CompareType, LHS, RHS) end
---@param SequenceActor ALevelSequenceActor
---@param ObjectDisplayName FString
---@return FMovieSceneObjectBindingID
function UBFLEventMovieScene:GetBindingID(SequenceActor, ObjectDisplayName) end
---@param SlotType EEvtCharaAnimationSlotType
---@return FName
function UBFLEventMovieScene:GetAnimationSlotName(SlotType) end
---@param TargetLevelStreaming ULevelStreaming
---@return ALevelSequenceActor
function UBFLEventMovieScene:FindLevelSequenceActor(TargetLevelStreaming) end
---@param TargetLevelStreaming ULevelStreaming
---@return AAtlEvtEventManager
function UBFLEventMovieScene:FindAtlEvtEventManager(TargetLevelStreaming) end
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param StartOffsetTime float
---@param EndOffsetTime float
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:CreateSlotOffsetAnimationAsDynamicMontage(Mesh, Asset, SlotNodeName, StartOffsetTime, EndOffsetTime, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param Mesh USkeletalMesh
---@param Asset UAnimSequenceBase
---@param SlotNodeName FName
---@param BlendInTime float
---@param BlendOutTime float
---@param InPlayRate float
---@param LoopCount int32
---@param BlendOutTriggerTime float
---@param InTimeToStartMontageAt float
---@return UAnimMontage
function UBFLEventMovieScene:CreateSlotAnimationAsDynamicMontage(Mesh, Asset, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt) end
---@param BindingActor AActor
---@param TargetName FString
---@return int32
function UBFLEventMovieScene:AllActorBinding(BindingActor, TargetName) end
---@param Location FVector
---@param BoostFactor float
---@param bOverrideLocation boolean
---@param Duration float
function UBFLEventMovieScene:AddViewSlaveLocation(Location, BoostFactor, bOverrideLocation, Duration) end
---@param Index int32
---@param NewMontage UAnimMontage
---@param AnimAssets TArray<FAtlSlotMultiAnimationParam>
---@param SlotNodeName FName
---@param EvtCharaAnimationType EEvtCharaAnimationType
---@param CurrentMontageBlendOut float
---@param NextMontageBlendIn float
---@return UAnimMontage
function UBFLEventMovieScene:AddPlayEvtMultiMontageAnimNotify(Index, NewMontage, AnimAssets, SlotNodeName, EvtCharaAnimationType, CurrentMontageBlendOut, NextMontageBlendIn) end


---@class UBFL_UIPaint : UBlueprintFunctionLibrary
local UBFL_UIPaint = {}

function UBFL_UIPaint:DrawTest() end


---@class UBPExtensionsFunctionLibrary : UBlueprintFunctionLibrary
local UBPExtensionsFunctionLibrary = {}

---@param inComponent UPlanarReflectionComponent
---@param inValue int32
function UBPExtensionsFunctionLibrary:SetScreenPercentage(inComponent, inValue) end
---@param targetMesh USkeletalMeshComponent
function UBPExtensionsFunctionLibrary:RemoveRenderMesh(targetMesh) end
---@param inComponent UPlanarReflectionComponent
---@return int32
function UBPExtensionsFunctionLibrary:GetScreenPercentage(inComponent) end
---@param Transform FTransform
---@return TArray<FLinearColor>
function UBPExtensionsFunctionLibrary:GetInverseMatrix(Transform) end
---@param Target UMeshComponent
---@param SocketName FName
function UBPExtensionsFunctionLibrary:DetachSocketAttachment(Target, SocketName) end
---@param inString FString
function UBPExtensionsFunctionLibrary:CommitConsoleLog(inString) end
---@param targetMesh USkeletalMeshComponent
---@param changeMesh USkeletalMesh
function UBPExtensionsFunctionLibrary:ChangeSkeletalMesh(targetMesh, changeMesh) end
---@param Target UMeshComponent
---@param SocketName FName
---@param attachSTMesh UStaticMesh
---@return UMeshComponent
function UBPExtensionsFunctionLibrary:AttachStaticMesh(Target, SocketName, attachSTMesh) end
---@param Target UMeshComponent
---@param SocketName FName
---@param attachSKMesh USkeletalMesh
---@return UMeshComponent
function UBPExtensionsFunctionLibrary:AttachSkeletalMesh(Target, SocketName, attachSKMesh) end
---@param Target UMeshComponent
---@param SocketName FName
---@param AttachComponent UMeshComponent
function UBPExtensionsFunctionLibrary:AttachMeshComponent(Target, SocketName, AttachComponent) end


---@class UBattleResultWatcher : UObject
local UBattleResultWatcher = {}


---@class UBtlAIManagerComponent : UActorComponent
local UBtlAIManagerComponent = {}

---@param ActionManager UBtlActionManagerComponent
---@param commander ABtlActor
function UBtlAIManagerComponent:DetermineAIAction(ActionManager, commander) end


---@class UBtlActionManagerComponent : UAppActorComponent
---@field ActionCommander ABtlActor
---@field ActionType EBtlCommandType
---@field ActionID int32
---@field ActionTargets TArray<ABtlActor>
---@field TargetsManager UBtlTargetsManagerComponent
local UBtlActionManagerComponent = {}

---@param commander ABtlActor
---@param Type EBtlCommandType
---@param ID int32
---@param Targets TArray<ABtlActor>
function UBtlActionManagerComponent:SetCommandWithTargets(commander, Type, ID, Targets) end
---@param Targets TArray<ABtlActor>
function UBtlActionManagerComponent:SetCommandTargets(Targets) end
---@param commander ABtlActor
function UBtlActionManagerComponent:SetCommander(commander) end
---@param commander ABtlActor
---@param Type EBtlCommandType
---@param ID int32
function UBtlActionManagerComponent:SetCommand(commander, Type, ID) end
function UBtlActionManagerComponent:DoCommand() end
function UBtlActionManagerComponent:ClearCommand() end


---@class UBtlBCDCharaCameraComponent : UActorComponent
---@field RadiumRation float
---@field HeightRation float
---@field RotateDegree float
---@field Pan float
---@field Roll float
---@field bUseCommonCylinder boolean
---@field TargetAreaType EBtlEventAreaType
---@field SocketName FString
local UBtlBCDCharaCameraComponent = {}



---@class UBtlBCDMoveCameraComponent : UActorComponent
---@field BlendAlpha float
---@field MoveMode EBtlCutsceneMoveMode
local UBtlBCDMoveCameraComponent = {}



---@class UBtlBoss : UObject
---@field CameraTable UDataTable
local UBtlBoss = {}



---@class UBtlBossChariot : UBtlBoss
local UBtlBossChariot = {}


---@class UBtlBossElizabeth : UBtlBoss
local UBtlBossElizabeth = {}


---@class UBtlBossEmperor : UBtlBoss
local UBtlBossEmperor = {}


---@class UBtlBossErebus : UBtlBoss
local UBtlBossErebus = {}


---@class UBtlBossFortune : UBtlBoss
---@field pSavedCore UBtlCoreComponent
local UBtlBossFortune = {}

function UBtlBossFortune:ProcAfterReturnRoulette() end


---@class UBtlBossHangedMan : UBtlBoss
local UBtlBossHangedMan = {}


---@class UBtlBossHermit : UBtlBoss
local UBtlBossHermit = {}


---@class UBtlBossHierophant : UBtlBoss
local UBtlBossHierophant = {}


---@class UBtlBossJunpeiKoromaru : UBtlBossTeammates
local UBtlBossJunpeiKoromaru = {}


---@class UBtlBossLovers : UBtlBoss
local UBtlBossLovers = {}


---@class UBtlBossMagician : UBtlBoss
local UBtlBossMagician = {}


---@class UBtlBossMetis : UBtlBossTeammates
local UBtlBossMetis = {}


---@class UBtlBossMitsuruYukari : UBtlBossTeammates
local UBtlBossMitsuruYukari = {}


---@class UBtlBossNyxAvatar : UBtlBoss
local UBtlBossNyxAvatar = {}


---@class UBtlBossNyxAvatarVoice : UBtlBossVoice
local UBtlBossNyxAvatarVoice = {}


---@class UBtlBossNyxCore : UBtlBoss
local UBtlBossNyxCore = {}


---@class UBtlBossPriestess : UBtlBoss
local UBtlBossPriestess = {}

function UBtlBossPriestess:TimeoverEventEndCallback() end


---@class UBtlBossSanadaAmada : UBtlBossTeammates
local UBtlBossSanadaAmada = {}


---@class UBtlBossShadowHero : UBtlBoss
local UBtlBossShadowHero = {}


---@class UBtlBossStregaBase : UBtlBoss
local UBtlBossStregaBase = {}


---@class UBtlBossStregaChidori : UBtlBossStregaBase
local UBtlBossStregaChidori = {}


---@class UBtlBossStregaJin : UBtlBossStregaBase
local UBtlBossStregaJin = {}


---@class UBtlBossStregaTakaya : UBtlBossStregaBase
local UBtlBossStregaTakaya = {}


---@class UBtlBossStregaTakayaJin : UBtlBossStregaBase
local UBtlBossStregaTakayaJin = {}


---@class UBtlBossStregaTakayaJoined : UBtlBossStregaBase
local UBtlBossStregaTakayaJoined = {}


---@class UBtlBossStregaVoice : UBtlBossVoice
local UBtlBossStregaVoice = {}


---@class UBtlBossTeammates : UBtlBoss
local UBtlBossTeammates = {}


---@class UBtlBossUraBoss : UBtlBoss
---@field BattleCore UBtlCoreComponent
local UBtlBossUraBoss = {}



---@class UBtlBossUraBossHeartless : UBtlBoss
---@field BattleCore UBtlCoreComponent
local UBtlBossUraBossHeartless = {}



---@class UBtlBossVoice : UBtlVoice
local UBtlBossVoice = {}


---@class UBtlCalcParamAstrea : UObject
---@field AutoTGRSisterBooster float
---@field AutoTGRSisterHighBooster float
---@field AutoTGRMegamiDamageBooster float
---@field MajorArcanaGetLimitAstrea TMap<int32, int32>
local UBtlCalcParamAstrea = {}



---@class UBtlCompensation : UObject
local UBtlCompensation = {}


---@class UBtlCoreComponent : UActorComponent
---@field OnBattleHasFinished FBtlCoreComponentOnBattleHasFinished
---@field OnRelocation FBtlCoreComponentOnRelocation
---@field OnUIVisibleON FBtlCoreComponentOnUIVisibleON
---@field OnUIVisibleOFF FBtlCoreComponentOnUIVisibleOFF
---@field OnUICaptureON FBtlCoreComponentOnUICaptureON
---@field OnUICaptureOFF FBtlCoreComponentOnUICaptureOFF
---@field OnBGVisibleON FBtlCoreComponentOnBGVisibleON
---@field OnBGVisibleOFF FBtlCoreComponentOnBGVisibleOFF
---@field OnPlayerVisibleON FBtlCoreComponentOnPlayerVisibleON
---@field OnPlayerVisibleOFF FBtlCoreComponentOnPlayerVisibleOFF
---@field OnEnemyVisibleON FBtlCoreComponentOnEnemyVisibleON
---@field OnEnemyVisibleOFF FBtlCoreComponentOnEnemyVisibleOFF
---@field OnLogTurnStart FBtlCoreComponentOnLogTurnStart
---@field OnLogActStart FBtlCoreComponentOnLogActStart
---@field InitReadActor TWeakObjectPtr<AInitReadActor>
---@field FormationData FSoftObjectPath
---@field FormationTable UDataTable
---@field BtlCutscene UBtlEventCutsceneController
---@field Boss UBtlBoss
---@field Countdown ABtlCountdown
---@field BtlEventController UBtlEventController
---@field ResidentData UBtlResidentDataBase
---@field PlayerLocationRoot AActor
---@field EnemyLocationRoot AActor
---@field EnemyAttachRoot AActor
---@field EnemyTurnTableRotationTargetCharacter ABtlActor
---@field BtlEnvironmentComponent UBtlEnvironmentBase
---@field FadeManager ABtlFadeManager
---@field ShakeManager ABtlShakeManager
---@field HasFinishedResidentLoad FBtlCoreComponentHasFinishedResidentLoad
---@field HasFinishedPerformerLoad FBtlCoreComponentHasFinishedPerformerLoad
---@field HasFinishedSerialEncountLoad FBtlCoreComponentHasFinishedSerialEncountLoad
---@field HasFinishedEnemyLoad FBtlCoreComponentHasFinishedEnemyLoad
---@field SummonEnemyCount uint32
---@field BattleElapsedTime float
---@field BattleDeltaTime float
---@field EncountParameter FBtlEncountParam
---@field EncountIndex int32
---@field BattleResult EBtlFinishResult
---@field CurrentAction ABtlActor
---@field EventMainAction ABtlActor
---@field LatestAction ABtlActor
---@field ActionRequestedEscape ABtlActor
---@field ActionList TArray<ABtlActor>
---@field PlayerList TArray<ABtlActor>
---@field EnemyList TArray<ABtlActor>
---@field PlayerDataStockList TArray<TSubclassOf<ABtlActor>>
---@field PlayerDataAddedStockList TArray<TSubclassOf<ABtlActor>>
---@field DebugMonitorData TSubclassOf<AAppActor>
---@field PlayerDataAddedIDList TArray<int16>
---@field EnemyDataStockList TArray<TSubclassOf<ABtlActor>>
---@field EnemyDataSummonStockList TArray<TSubclassOf<ABtlActor>>
---@field EnemyDataSummonIDList TArray<int16>
---@field PersonaDataStockList TArray<TSubclassOf<ABtlActor>>
---@field Compensation UBtlCompensation
---@field Order UBtlOrder
---@field CurrentPhase ABtlPhase
---@field RequestChangePhase boolean
---@field RequestedNextPhase ABtlPhase
---@field UtensilEffectList TArray<AAppActor>
---@field HomeFormation FString
---@field ResultResource ABtlResultResourceManager
---@field LoadedResidentData boolean
---@field LoadedBattleData boolean
---@field LoadedAllyData boolean
---@field LoadedEnemyData boolean
---@field LoadedPersonaData boolean
---@field LoadedSummonEnemyData boolean
---@field LoadedAddedPlayerData boolean
---@field LoadedEncSerial boolean
---@field LoadedDebugMonitor boolean
---@field Loader UAssetLoader
---@field LoaderEnemy UAssetLoader
---@field LoaderPersona UAssetLoader
---@field LoaderSummonEnemy UAssetLoader
---@field LoaderAddedPlayer UAssetLoader
---@field LoaderSerialEncount UAssetLoader
---@field LoaderDebugMonitor UAssetLoader
---@field SupportInfo UBtlSupportInfoBase
---@field InitialEquipedPersonaID uint16
---@field TutorialRequestList TArray<int32>
---@field DebugWindow AAppActor
---@field DebugMonitor AAppActor
---@field DebugSkillSelect AAppActor
---@field ModeName FString
---@field DebugStateString FString
---@field DebugLatestCamera FString
local UBtlCoreComponent = {}

function UBtlCoreComponent:ToggleSkillEditMode() end
function UBtlCoreComponent:TheurgiaDebugSetup() end
---@return boolean
function UBtlCoreComponent:SyncReadyIndependentBattle() end
---@return boolean
function UBtlCoreComponent:SyncInfoGameover() end
---@param initialHiding boolean
function UBtlCoreComponent:SpawnCharacters(initialHiding) end
function UBtlCoreComponent:ShowDebugData() end
---@param EncountParam FBtlEncountParam
---@return FBtlEncountParam
function UBtlCoreComponent:SetupIndependentBattle(EncountParam) end
---@param RejectDebugKillRequest boolean
function UBtlCoreComponent:SetupDebugKill(RejectDebugKillRequest) end
---@param Enable boolean
function UBtlCoreComponent:SetRushMode(Enable) end
---@param disable boolean
function UBtlCoreComponent:SetRushDisable(disable) end
---@param NextPhase ABtlPhase
function UBtlCoreComponent:SetPhase(NextPhase) end
---@param Enable boolean
function UBtlCoreComponent:SetPersonaStatusMode(Enable) end
---@param Encount FBtlEncountParam
function UBtlCoreComponent:SetEncountParam(Encount) end
---@param str FString
function UBtlCoreComponent:SetDebugStateString(str) end
---@param str FString
function UBtlCoreComponent:SetDebugLatestCamera(str) end
---@param Enable boolean
function UBtlCoreComponent:SetBGMTheurgiaMode(Enable) end
---@param Rate float
function UBtlCoreComponent:SetBattleTimeDilation(Rate) end
---@param Enable boolean
function UBtlCoreComponent:SetAnalyzeMode(Enable) end
function UBtlCoreComponent:RestoreGameCondition() end
function UBtlCoreComponent:RequestSummonEnemies() end
---@param pEmploy ABtlActor
---@param Type EBtlJyokyohelpType
function UBtlCoreComponent:RequestSituationHelp(pEmploy, Type) end
---@param Enable boolean
function UBtlCoreComponent:RequestRushMode(Enable) end
---@param Visible boolean
function UBtlCoreComponent:RequestPartyPanelVisible(Visible) end
---@return boolean
function UBtlCoreComponent:RequestEncountProcess() end
---@param Enable boolean
function UBtlCoreComponent:RequestCutinAging(Enable) end
function UBtlCoreComponent:RequestClearUtensilEffectWithRelocation() end
---@param Type EBtlBGMType
function UBtlCoreComponent:RequestBGM(Type) end
---@param Target AAppActor
function UBtlCoreComponent:RemoveUtensilEffect(Target) end
---@param Enable boolean
function UBtlCoreComponent:RelocationRequestOnBCDPlay(Enable) end
---@param Type EBtlRelocationType
function UBtlCoreComponent:RelocationCustom(Type) end
---@param PlayerOnly boolean
function UBtlCoreComponent:Relocation(PlayerOnly) end
---@param Target ABtlActor
---@param takeoverFrom ABtlActor
function UBtlCoreComponent:RegisterTakeoverCharacter(Target, takeoverFrom) end
function UBtlCoreComponent:ProgressOrder() end
function UBtlCoreComponent:ProcessBeforeStartNextTurn() end
function UBtlCoreComponent:ProcBeforeLoad() end
function UBtlCoreComponent:ProcAheadOfRetrySequence() end
function UBtlCoreComponent:ProcAfterLoad() end
function UBtlCoreComponent:ProcAfterAllCharacterSpawned() end
function UBtlCoreComponent:PlayInfoGameover() end
function UBtlCoreComponent:PlayInfoFukaCutin() end
function UBtlCoreComponent:PlayInfoAlloutAttackSuggestion() end
function UBtlCoreComponent:PlayHighAnalyzeEvent() end
function UBtlCoreComponent:MarkAsUICommand() end
function UBtlCoreComponent:MarkAsPlayedShadowExChantCam() end
function UBtlCoreComponent:MarkAsPlayedFukaCutin() end
---@param EncountParam FBtlEncountParam
function UBtlCoreComponent:LoadResidentData(EncountParam) end
---@param EncountParam FBtlEncountParam
function UBtlCoreComponent:LoadEnemyData(EncountParam) end
function UBtlCoreComponent:LoadDataForSerialEncount() end
---@param EncountParam FBtlEncountParam
function UBtlCoreComponent:LoadData(EncountParam) end
---@return boolean
function UBtlCoreComponent:IsNeedToFinale() end
---@param IsCaptureResult boolean
---@return boolean
function UBtlCoreComponent:IsEventResult(IsCaptureResult) end
---@return boolean
function UBtlCoreComponent:IsEventBattle() end
---@return boolean
function UBtlCoreComponent:IsDisableSequenceCamera() end
function UBtlCoreComponent:InitProcessBeforeFirstTurn() end
function UBtlCoreComponent:InitializeOrder() end
function UBtlCoreComponent:InitializeBattleForNextBattle() end
function UBtlCoreComponent:InitializeBattle() end
---@return ABtlActor
function UBtlCoreComponent:GetResultMainPlayer() end
---@return TArray<ABtlActor>
function UBtlCoreComponent:GetPlayerList() end
---@return EBtlPhaseType
function UBtlCoreComponent:GetPhaseType() end
---@return ABtlPhase
function UBtlCoreComponent:GetPhase() end
---@param Index int32
---@return ABtlActor
function UBtlCoreComponent:GetNextAction(Index) end
---@return ABtlActor
function UBtlCoreComponent:GetHero() end
---@return ABtlActor
function UBtlCoreComponent:GetEventMainAction() end
---@return TArray<ABtlActor>
function UBtlCoreComponent:GetEnemyList() end
---@return FString
function UBtlCoreComponent:GetEnemyFormationName() end
---@return FBtlEncountParam
function UBtlCoreComponent:GetEncountParamForBP() end
---@return float
function UBtlCoreComponent:GetElapsedTime() end
---@return float
function UBtlCoreComponent:GetDeltaTime() end
---@return FString
function UBtlCoreComponent:GetDebugStateString() end
---@return FString
function UBtlCoreComponent:GetDebugModeName() end
---@return FString
function UBtlCoreComponent:GetDebugLatestCamera() end
---@return int32
function UBtlCoreComponent:GetDebugCalcFlag() end
---@return UDataTable
function UBtlCoreComponent:GetBossCameraTable() end
---@return TArray<ABtlActor>
function UBtlCoreComponent:GetAllCharacterList() end
---@return ABtlActor
function UBtlCoreComponent:GetAction() end
---@param Category EBtlLoadingTimeCategory
function UBtlCoreComponent:FinishLoadingRecord(Category) end
function UBtlCoreComponent:FinalProcessAfterGameover() end
function UBtlCoreComponent:FinalizeActionTurn() end
---@param FadeFrame int32
function UBtlCoreComponent:FadeoutBGM(FadeFrame) end
function UBtlCoreComponent:DoInterruptProcessEscape() end
function UBtlCoreComponent:DestroyAllBattleActor() end
function UBtlCoreComponent:DeleteCapture() end
---@param Damage int32
function UBtlCoreComponent:DebugSetCustomDamage(Damage) end
---@return int32
function UBtlCoreComponent:DebugGetCustomDamage() end
function UBtlCoreComponent:DebugAllCharacterToDying() end
function UBtlCoreComponent:DebugAllCharacterToDown() end
---@param Encount FBtlEncountParam
---@return FBtlEncountParam
function UBtlCoreComponent:CoordinateEncountParam(Encount) end
---@param EncountParam FBtlEncountParam
function UBtlCoreComponent:CoordinateBattleCondition(EncountParam) end
function UBtlCoreComponent:ClearUtensilEffect() end
function UBtlCoreComponent:ClearUIForSerialEncount() end
---@return boolean
function UBtlCoreComponent:CheckValidFukaTheurgia() end
---@return boolean
function UBtlCoreComponent:CheckUseQuickEncount() end
---@return boolean
function UBtlCoreComponent:CheckUsableRetry() end
---@return boolean
function UBtlCoreComponent:CheckUsableFukaTheurgia() end
---@return boolean
function UBtlCoreComponent:CheckSuspendTurnProgress() end
---@return boolean
function UBtlCoreComponent:CheckShuffleTimeOccurrence() end
---@return boolean
function UBtlCoreComponent:CheckShaffleTimeAllowed() end
---@return boolean
function UBtlCoreComponent:CheckShadowExChantCamMustPlay() end
---@return boolean
function UBtlCoreComponent:CheckRushSwitchable() end
---@return boolean
function UBtlCoreComponent:CheckRushDisable() end
---@return boolean
function UBtlCoreComponent:CheckRequestRushMode() end
---@return boolean
function UBtlCoreComponent:CheckPlayingEventScript() end
---@return boolean
function UBtlCoreComponent:CheckPlayableDesignedCommonAttackCamera() end
---@return boolean
function UBtlCoreComponent:CheckNeedTurningTable() end
---@return boolean
function UBtlCoreComponent:CheckNeedResult() end
---@return boolean
function UBtlCoreComponent:CheckLineFormation() end
---@return boolean
function UBtlCoreComponent:CheckKnockedoutHero() end
---@return boolean
function UBtlCoreComponent:CheckIsSerialEncountBattle() end
---@return boolean
function UBtlCoreComponent:CheckInterruptProcessEscape() end
---@return boolean
function UBtlCoreComponent:CheckInRush() end
---@return boolean
function UBtlCoreComponent:CheckInAllout() end
---@return boolean
function UBtlCoreComponent:CheckIgnoreShowingCharacterAtPreAct() end
---@return boolean
function UBtlCoreComponent:CheckHighAnalyzeUnlocked() end
---@return boolean
function UBtlCoreComponent:CheckHighAnalyzeEnable() end
---@return boolean
function UBtlCoreComponent:CheckHasHighAnalyzeEvent() end
---@return boolean
function UBtlCoreComponent:CheckEventBattleFinish() end
---@return boolean
function UBtlCoreComponent:CheckEnemyLoadFinished() end
---@return boolean
function UBtlCoreComponent:CheckEnableRelocationClosedFormation() end
---@return boolean
function UBtlCoreComponent:CheckEnableFukaCutin() end
---@return boolean
function UBtlCoreComponent:CheckEnableActEndProc() end
---@return boolean
function UBtlCoreComponent:CheckEnableActEndEvent() end
---@return boolean
function UBtlCoreComponent:CheckDecideRetry() end
---@return boolean
function UBtlCoreComponent:CheckCutinAging() end
---@return boolean
function UBtlCoreComponent:CheckBattleProgressToNextBattle() end
---@return boolean
function UBtlCoreComponent:CheckBattleInProgress() end
---@return boolean
function UBtlCoreComponent:CheckAnyInterruptProcessBetweenTurn() end
---@return boolean
function UBtlCoreComponent:CheckAllowEnemyAttackBackshotCamera() end
---@return boolean
function UBtlCoreComponent:CheckAlloutResult() end
function UBtlCoreComponent:CallResultCapture() end
function UBtlCoreComponent:CallInfoForSerialEncount() end
function UBtlCoreComponent:CallDebugWindow() end
function UBtlCoreComponent:CallDebugSkillSelect() end
function UBtlCoreComponent:CallDebugMonitor() end
function UBtlCoreComponent:CallCapture() end
---@param Category EBtlLoadingTimeCategory
function UBtlCoreComponent:BeginLoadingRecord(Category) end
---@return boolean
function UBtlCoreComponent:BattleFadeOutSync() end
---@param ForceRapid boolean
---@param White boolean
function UBtlCoreComponent:BattleFadeOut(ForceRapid, White) end
---@param ForceRapid boolean
function UBtlCoreComponent:BattleFadeIn(ForceRapid) end
function UBtlCoreComponent:AffectRetry() end
---@param pTarget ABtlActor
function UBtlCoreComponent:AffectHighAnalyze(pTarget) end
---@param Target AAppActor
function UBtlCoreComponent:AddUtensilEffect(Target) end


---@class UBtlDataAssets : UObject
local UBtlDataAssets = {}


---@class UBtlDataBaseComponent : UAppActorComponent
local UBtlDataBaseComponent = {}

---@param BtlCore UBtlCoreComponent
---@param IsEnd boolean
---@return ABtlActor
function UBtlDataBaseComponent:SyncTheugiaWindowEnd(BtlCore, IsEnd) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:SyncRewuestTutorial(BtlCore) end
---@param pAction ABtlActor
---@param targetList TArray<ABtlActor>
---@return boolean
function UBtlDataBaseComponent:StartTheugiaWindow(pAction, targetList) end
---@param Action ABtlActor
---@param State EBtlGuiState
---@param ID int32
---@param Target TArray<ABtlActor>
---@param PersonaID int32
---@param physical boolean
function UBtlDataBaseComponent:StartNavigation(Action, State, ID, Target, PersonaID, physical) end
---@param inList TArray<ABtlActor>
---@return TArray<ABtlActor>
function UBtlDataBaseComponent:SortPlayerTacticsList(inList) end
---@param BtlCore UBtlCoreComponent
---@param In TArray<FBtlItemData>
---@return TArray<FBtlItemData>
function UBtlDataBaseComponent:SortItemBagData(BtlCore, In) end
---@param inList TArray<ABtlActor>
---@return TArray<ABtlActor>
function UBtlDataBaseComponent:SortEnemyTacticsList(inList) end
---@param Actor ABtlActor
---@param Hp int32
function UBtlDataBaseComponent:SetUnitTP(Actor, Hp) end
---@param Actor ABtlActor
---@param Hp int32
function UBtlDataBaseComponent:SetUnitSP(Actor, Hp) end
---@param Actor ABtlActor
---@param Hp int32
function UBtlDataBaseComponent:SetUnitHP(Actor, Hp) end
---@param Actor ABtlActor
---@param Type int32
function UBtlDataBaseComponent:SetSupport(Actor, Type) end
---@param Actor ABtlActor
---@param Index int32
function UBtlDataBaseComponent:SetPersonaStockEquip(Actor, Index) end
---@param Actor ABtlActor
---@param ID int32
function UBtlDataBaseComponent:SetPersonaEquipID(Actor, ID) end
---@param Actor ABtlActor
---@param PersonaID int32
---@param Index int32
function UBtlDataBaseComponent:SetPersonaDefaultStock(Actor, PersonaID, Index) end
---@param Action ABtlActor
---@param Operation int32
function UBtlDataBaseComponent:SetOperation(Action, Operation) end
---@param Action ABtlActor
---@param isManual boolean
function UBtlDataBaseComponent:SetManualOperate(Action, isManual) end
---@param Location FVector
function UBtlDataBaseComponent:SetHighStreamingLocation(Location) end
---@param Actor ABtlActor
---@param Type int32
function UBtlDataBaseComponent:SetBadStatus(Actor, Type) end
---@param Targets TArray<ABtlActor>
---@param attr EBtlDataAttr
function UBtlDataBaseComponent:SaveReceiveSkillAttr(Targets, attr) end
---@param Action ABtlActor
---@param ID int32
function UBtlDataBaseComponent:SavePrevUseSkillID(Action, ID) end
---@param ID int32
function UBtlDataBaseComponent:SavePrevUseItemID(ID) end
---@param Actor ABtlActor
function UBtlDataBaseComponent:OpenAllAttr(Actor) end
---@param nowIdx int32
---@param List TArray<ABtlActor>
---@param PosCursor TArray<FVector2D>
---@param moveCursor EBtlDataMoveCursorTactics
---@return ABtlActor
function UBtlDataBaseComponent:MoveCursorTacticsSimple(nowIdx, List, PosCursor, moveCursor) end
---@param nowIdx int32
---@param List TArray<ABtlActor>
---@param PosCursor TArray<FVector2D>
---@param moveCursor EBtlDataMoveCursorTactics
---@param IsBoss boolean
---@return ABtlActor
function UBtlDataBaseComponent:MoveCursorTactics(nowIdx, List, PosCursor, moveCursor, IsBoss) end
---@param CameraManager APlayerCameraManager
---@return AActor
function UBtlDataBaseComponent:GetViewTargetActor(CameraManager) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitTP(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitSP(Actor) end
---@param Actor ABtlActor
---@param InsertSpace boolean
---@return FText
function UBtlDataBaseComponent:GetUnitName(Actor, InsertSpace) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitMaxTP(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitMaxSP(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitMaxHP(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitLevel(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitID(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitHP(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetUnitArcana(Actor) end
---@param BtlCore UBtlCoreComponent
---@return ABtlActor
function UBtlDataBaseComponent:GetUINextAction(BtlCore) end
---@return UBmdAsset
function UBtlDataBaseComponent:GetTheurgiaFlavorBMD() end
---@param Target TArray<ABtlActor>
---@param Type EBtlDataCostType
---@return int32
function UBtlDataBaseComponent:GetTargetEffectiveIndex(Target, Type) end
---@param Actor ABtlActor
---@param Type int32
---@return int32
function UBtlDataBaseComponent:GetSupportTurn(Actor, Type) end
---@param Actor ABtlActor
---@param Type int32
---@return int32
function UBtlDataBaseComponent:GetSupportPoint(Actor, Type) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetStatusStrength(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetStatusSpeed(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetStatusMagic(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetStatusLuck(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetStatusEndurance(Actor) end
---@param Actor ABtlActor
---@return TArray<int32>
function UBtlDataBaseComponent:GetSpecialSkillList(Actor) end
---@param Actor ABtlActor
---@param bPowerUp boolean
---@return int32
function UBtlDataBaseComponent:GetSpecialAutoSkill(Actor, bPowerUp) end
---@param skillId int32
---@return EBtlDataTargetType
function UBtlDataBaseComponent:GetSkillTargetType(skillId) end
---@param skillId int32
---@return FBtlDataTargetRule
function UBtlDataBaseComponent:GetSkillTargetRule(skillId) end
---@param skillId int32
---@return EBtlDataTargetArea
function UBtlDataBaseComponent:GetSkillTargetArea(skillId) end
---@param skillId int32
---@param Sucsess boolean
---@return FText
function UBtlDataBaseComponent:GetSkillParamN(skillId, Sucsess) end
---@param skillId int32
---@param Sucsess boolean
---@return FText
function UBtlDataBaseComponent:GetSkillName(skillId, Sucsess) end
---@return int32
function UBtlDataBaseComponent:GetSkillMaxNum() end
---@param Actor ABtlActor
---@param Output TArray<int32>
function UBtlDataBaseComponent:GetSkillList(Actor, Output) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillIsSupport(skillId) end
---@param skillId int32
---@param Type EBtlDataCostType
---@return boolean
function UBtlDataBaseComponent:GetSkillIsRecovery(skillId, Type) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillIsNoPanel(skillId) end
---@param skillId int32
---@param support EBtlDataSupportTable
---@return boolean
function UBtlDataBaseComponent:GetSkillIsHealSupport(skillId, support) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillIsDamageBit(skillId) end
---@param skillId int32
---@param Type EBtlDataCostType
---@return boolean
function UBtlDataBaseComponent:GetSkillIsDamage(skillId, Type) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillIsCharge(skillId) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillIsBadStatus(skillId) end
---@param attr EBtlDataAttr
---@return int32
function UBtlDataBaseComponent:GetSkillIconSprNoByAttr(attr) end
---@param skillId int32
---@return int32
function UBtlDataBaseComponent:GetSkillIconSprNo(skillId) end
---@param skillId int32
---@return EBtlDataEfficacyType
function UBtlDataBaseComponent:GetSkillEfficacyType(skillId) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:GetSkillCostCheckOff(skillId) end
---@param skillId int32
---@param Action ABtlActor
---@param Sucsess boolean
---@param cost EBtlDataCostType
---@return int32
function UBtlDataBaseComponent:GetSkillCost(skillId, Action, Sucsess, cost) end
---@param skillId int32
---@return EBtlDataAttr
function UBtlDataBaseComponent:GetSkillAttr(skillId) end
---@param Action ABtlActor
---@return int32
function UBtlDataBaseComponent:GetPrevUseSkillID(Action) end
---@return int32
function UBtlDataBaseComponent:GetPrevUseItemID() end
---@param ButtonType int32
---@return FColor
function UBtlDataBaseComponent:GetPlatFormButtonColor(ButtonType) end
---@param PersonaID int32
---@return TArray<int32>
function UBtlDataBaseComponent:GetPersonaTableSkillList(PersonaID) end
---@param Actor ABtlActor
---@return TArray<int32>
function UBtlDataBaseComponent:GetPersonaStockIndexList(Actor) end
---@param Actor ABtlActor
---@param Index int32
---@return TArray<int32>
function UBtlDataBaseComponent:GetPersonaSkillList(Actor, Index) end
---@param Actor ABtlActor
---@param NameList TArray<FText>
---@param Count int32
---@param equip int32
function UBtlDataBaseComponent:GetPersonaNameList(Actor, NameList, Count, equip) end
---@param PersonaID int32
---@return FText
function UBtlDataBaseComponent:GetPersonaName(PersonaID) end
---@return int32
function UBtlDataBaseComponent:GetPersonaMaxNum() end
---@param Actor ABtlActor
---@return TArray<int32>
function UBtlDataBaseComponent:GetPersonaEquipSkillList(Actor) end
---@param Actor ABtlActor
---@return FText
function UBtlDataBaseComponent:GetPersonaEquipName(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetPersonaEquipIndex(Actor) end
---@param Actor ABtlActor
---@return int32
function UBtlDataBaseComponent:GetPersonaEquipID(Actor) end
---@param skillId int32
---@param personaID1 int32
---@param personaID2 int32
---@param twoPersona boolean
function UBtlDataBaseComponent:GetPersonaBySpecialSkill(skillId, personaID1, personaID2, twoPersona) end
---@param Actor ABtlActor
---@return boolean
function UBtlDataBaseComponent:GetOrgiaMode(Actor) end
---@param Action ABtlActor
---@return int32
function UBtlDataBaseComponent:GetOperation(Action) end
---@return int32
function UBtlDataBaseComponent:GetNormalSkillMaxNum() end
---@param Action ABtlActor
---@return boolean
function UBtlDataBaseComponent:GetManualOperate(Action) end
---@param BtlCore UBtlCoreComponent
---@return TArray<boolean>
function UBtlDataBaseComponent:GetKeyControl(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@param Type EBtlCommandType
---@param ID int32
---@return EBtlDataItemUseType
function UBtlDataBaseComponent:GetItemUseType(BtlCore, Type, ID) end
---@param ItemId int32
---@return int32
function UBtlDataBaseComponent:GetItemSkillID(ItemId) end
---@param ItemId int32
---@return FText
function UBtlDataBaseComponent:GetItemName(ItemId) end
---@param ItemId int32
---@return int32
function UBtlDataBaseComponent:GetItemIconSprNo(ItemId) end
---@return TArray<FBtlItemData>
function UBtlDataBaseComponent:GetItemBagData() end
---@return boolean
function UBtlDataBaseComponent:GetInputDecideKeyCross() end
---@return int32
function UBtlDataBaseComponent:GetFukaTheurgiaSkill() end
---@param Actor ABtlActor
---@param Index int32
---@return int32
function UBtlDataBaseComponent:GetEnemyDropItem(Actor, Index) end
---@param Out TArray<ABtlActor>
---@param spEmployment ABtlActor
---@param Command EBtlCommandType
---@param ID int32
function UBtlDataBaseComponent:GetCorrespondList(Out, spEmployment, Command, ID) end
---@param Key int32
---@return FText
function UBtlDataBaseComponent:GetBtlCommonText(Key) end
---@param Actor ABtlActor
---@param Type int32
---@return boolean
function UBtlDataBaseComponent:GetBadStatus(Actor, Type) end
---@param attr int32
---@return FText
function UBtlDataBaseComponent:GetAttackName(attr) end
---@return int32
function UBtlDataBaseComponent:GetAnalyzeAttrMaxNum() end
---@param Actor ABtlActor
---@param attr uint8
---@return EBtlDataAnalyze
function UBtlDataBaseComponent:GatAnalizeAttr(Actor, attr) end
---@param Actor ABtlActor
function UBtlDataBaseComponent:CloseAllAttr(Actor) end
---@param Actor ABtlActor
---@param Type int32
function UBtlDataBaseComponent:ClearTargetSupport(Actor, Type) end
---@param Actor ABtlActor
function UBtlDataBaseComponent:ClearSupport(Actor) end
---@param Actor ABtlActor
function UBtlDataBaseComponent:ClearBadStatus(Actor) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkUseAllSkillAgeing(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkTutorialSkillList(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkTurnOff(BtlCore) end
---@param Actor ABtlActor
---@return boolean
function UBtlDataBaseComponent:ChkTPValid(Actor) end
---@param ID int32
---@return boolean
function UBtlDataBaseComponent:ChkSpecialSkillID(ID) end
---@param Action ABtlActor
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:ChkSkillIgnoreResistances(Action, skillId) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkSelectAllSkill(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkSelectAllPersona(BtlCore) end
---@return boolean
function UBtlDataBaseComponent:ChkPrevUseSkillIDFrag() end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkPlayerDamageOff(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkLastActionLoop(BtlCore) end
---@param pAction ABtlActor
---@param targetList TArray<ABtlActor>
---@param skillId int32
---@param isItem boolean
---@return int32
function UBtlDataBaseComponent:ChkExcessEfficary(pAction, targetList, skillId, isItem) end
---@param Action ABtlActor
---@param EnemyList TArray<ABtlActor>
---@return boolean
function UBtlDataBaseComponent:ChkEnemySideWeakAll(Action, EnemyList) end
---@param Action ABtlActor
---@param EnemyList TArray<ABtlActor>
---@param attr EBtlDataAttr
---@return boolean
function UBtlDataBaseComponent:ChkEnemySideWeak(Action, EnemyList, attr) end
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:ChkAutoSkill(skillId) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:ChkAllCostOff(BtlCore) end
---@param Target ABtlActor
---@return boolean
function UBtlDataBaseComponent:CheckTacticsIconLLSize(Target) end
---@param Actor ABtlActor
---@param support EBtlDataSupportTable
---@return boolean
function UBtlDataBaseComponent:CheckSupportDownUp(Actor, support) end
---@param Actor ABtlActor
---@param Type int32
---@return boolean
function UBtlDataBaseComponent:CheckSupport(Actor, Type) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:CheckNyxCoreBattle(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:CheckExistTutorial(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@param skillId int32
---@return boolean
function UBtlDataBaseComponent:CheckExistTarget(BtlCore, skillId) end
---@param BtlCore UBtlCoreComponent
function UBtlDataBaseComponent:CallSupportInfoDisableShift(BtlCore) end
---@param BtlCore UBtlCoreComponent
function UBtlDataBaseComponent:CallRequestEscape(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:CallCheckEncountEscape(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlDataBaseComponent:CallCheckAlreadyRequestEscape(BtlCore) end


---@class UBtlEncountWipeLoader : UObject
---@field pLoader UAssetLoader
---@field Chara ACharacter
---@field EncountBp TSubclassOf<ABtlEncountWipeCore>
---@field EventEncountBp TSubclassOf<ABtlEncountWipeCore>
---@field PinthEncountBp TSubclassOf<ABtlEncountWipeCore>
local UBtlEncountWipeLoader = {}



---@class UBtlEnvironmentBase : UAppActorComponent
---@field BgObjList TArray<AFldAnimObj>
local UBtlEnvironmentBase = {}

function UBtlEnvironmentBase:RequestLoversFogEffect() end
function UBtlEnvironmentBase:InvisibleHangedmanBGObj() end
---@return TArray<ANiagaraActor>
function UBtlEnvironmentBase:GetNyxAvatarFeatherEffects() end
---@return TArray<AFldAnimObj>
function UBtlEnvironmentBase:GetMonorailWallObj() end
---@return TArray<AFldAnimObj>
function UBtlEnvironmentBase:GetMonorailStrapObj() end
---@return TArray<ANiagaraActor>
function UBtlEnvironmentBase:GetMonorailRushEffects() end
---@return AFldAnimObj
function UBtlEnvironmentBase:GetMonorailBGObj() end
---@return TArray<ANiagaraActor>
function UBtlEnvironmentBase:GetLoversFogEffects() end
function UBtlEnvironmentBase:DeleteLoversFogEffect() end


---@class UBtlEventController : UAppActorComponent
---@field bLoadCompleted boolean
---@field bCommonLoadCompleted boolean
---@field pBfCommonAsset UBfAsset
---@field pBmdCommonAsset UBmdAsset
---@field pBfAsset UBfAsset
---@field pBmdAsset UBmdAsset
---@field pEventActor ABtlEventActor
---@field EncountParam FBtlEncountParam
---@field BtlCore UBtlCoreComponent
---@field SequencerObserveClass TSubclassOf<AAppActor>
---@field OnEndScirpt FBtlEventControllerOnEndScirpt
local UBtlEventController = {}

---@param Actor ABtlActor
---@param Type EBtlEventAreaType
function UBtlEventController:SetPerformer(Actor, Type) end
function UBtlEventController:ResetAllPerformer() end
---@return boolean
function UBtlEventController:IsPlayingEvent() end
---@param EncParam FBtlEncountParam
---@return boolean
function UBtlEventController:HasEventScriptForBP(EncParam) end
---@param EventType EBtlEventType
function UBtlEventController:EventStart(EventType) end
---@param EventType EBtlCommonEventType
function UBtlEventController:CommonEventStart(EventType) end


---@class UBtlEventCutsceneController : UObject
---@field SequenceTable UDataTable
---@field LoadSequence FBtlCutsceneHandleData
---@field SequenceActor ALevelSequenceActor
---@field LoaderTable UAssetLoader
---@field AllLoader UAssetLoader
local UBtlEventCutsceneController = {}



---@class UBtlGuiAnalyzeComponent : UAppActorComponent
---@field BmdAsset UBmdAsset
---@field Loader UAssetLoader
local UBtlGuiAnalyzeComponent = {}

---@param Actor ABtlActor
function UBtlGuiAnalyzeComponent:UpdateAnalyze(Actor) end
function UBtlGuiAnalyzeComponent:StartLoadResource() end
---@param Index int32
function UBtlGuiAnalyzeComponent:ShowMessage(Index) end
function UBtlGuiAnalyzeComponent:ShowFukaPartyPanel() end
---@param idx int32
function UBtlGuiAnalyzeComponent:SetSelectIndex(idx) end
---@param inList TArray<ABtlActor>
---@param PriorityActor ABtlActor
---@return TArray<ABtlActor>
function UBtlGuiAnalyzeComponent:RemoveSameEnemyID(inList, PriorityActor) end
---@param BtlCore UBtlCoreComponent
---@param Actor ABtlActor
function UBtlGuiAnalyzeComponent:PlaySupportInfo(BtlCore, Actor) end
---@param BtlCore UBtlCoreComponent
---@param PlayID int32
function UBtlGuiAnalyzeComponent:PlayAnalyzeSupportInfo(BtlCore, PlayID) end
function UBtlGuiAnalyzeComponent:OpenSelectWindow() end
function UBtlGuiAnalyzeComponent:Init() end
function UBtlGuiAnalyzeComponent:HiddenFukaPartyPanel() end
---@param BtlCore UBtlCoreComponent
---@param Actor ABtlActor
---@return EBtlAnalyzeSupportType
function UBtlGuiAnalyzeComponent:GetSupportTypeTargetEnemy(BtlCore, Actor) end
---@param BtlCore UBtlCoreComponent
---@return UBmdAsset
function UBtlGuiAnalyzeComponent:GetHighAnalyzeBMD(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlGuiAnalyzeComponent:GetDebugEnableFlag(BtlCore) end
---@return int32
function UBtlGuiAnalyzeComponent:GetCostHighAnalyze() end
---@param BtlCore UBtlCoreComponent
---@param Type EBtlAnalyzeSupportType
---@return int32
function UBtlGuiAnalyzeComponent:GetAnalyzeSupportInfo(BtlCore, Type) end
function UBtlGuiAnalyzeComponent:CloseSelectWindow() end
function UBtlGuiAnalyzeComponent:CloseAnalyze() end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowStatus(Actor) end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowSkill(Actor) end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowItem(Actor) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowFukaFukidashi(BtlCore) end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowAttackAttr(Actor) end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckShowArcana(Actor) end
---@param BtlCore UBtlCoreComponent
---@return boolean
function UBtlGuiAnalyzeComponent:CheckPlayHighAnalzeSupport(BtlCore) end
---@return boolean
function UBtlGuiAnalyzeComponent:CheckHighAnalyzeEnableSP() end
---@return boolean
function UBtlGuiAnalyzeComponent:CheckEndLoader() end
---@param Actor ABtlActor
---@return boolean
function UBtlGuiAnalyzeComponent:CheckAttrFullOpen(Actor) end


---@class UBtlGuiDrawComponent : UAppActorComponent
---@field canvasType EBtlGuiCanvas
---@field ItemAry TArray<UBtlGuiDrawObjectCore>
local UBtlGuiDrawComponent = {}

---@param Obj UObject
---@return UPlgAsset
function UBtlGuiDrawComponent:TranslateObjectToPlgAsset(Obj) end
---@param Obj UObject
---@param TranslateClass UClass
---@param OutAsset UObject
function UBtlGuiDrawComponent:TranslateObjectToAsset(Obj, TranslateClass, OutAsset) end
---@param IsVisible boolean
function UBtlGuiDrawComponent:SetVisible(IsVisible) end
---@param idx int32
---@param IsVisible boolean
function UBtlGuiDrawComponent:SetItemVisible(idx, IsVisible) end
---@param isOff boolean
function UBtlGuiDrawComponent:SetComponentBoolOff(isOff) end
---@param Canvas EBtlGuiCanvas
function UBtlGuiDrawComponent:SetCanvas(Canvas) end
---@param IsVisible boolean
function UBtlGuiDrawComponent:SetAryVisible(IsVisible) end
---@return boolean
function UBtlGuiDrawComponent:IsWindowsPlatform() end
---@param Item UBtlGuiDrawObjectSprite
---@return boolean
function UBtlGuiDrawComponent:IsNotUsingPS4PS5GuardYesNoKey(Item) end
---@return boolean
function UBtlGuiDrawComponent:GetVisible() end
---@return FVector2D
function UBtlGuiDrawComponent:GetViewportSize() end
---@param Canvas EBtlGuiCanvas
---@return UTextureRenderTarget2D
function UBtlGuiDrawComponent:GetRenderTarget(Canvas) end
---@param grpNo int32
---@param idAry TArray<int32>
---@param objAry TArray<UBtlGuiDrawObjectCore>
---@param Reverse boolean
function UBtlGuiDrawComponent:GetGroupDrawItem(grpNo, idAry, objAry, Reverse) end
---@param ID int32
---@param Obj UBtlGuiDrawObjectCore
function UBtlGuiDrawComponent:GetDrawItem(ID, Obj) end
---@param idAry TArray<int32>
---@param objAry TArray<UBtlGuiDrawObjectCore>
function UBtlGuiDrawComponent:GetAllDrawItem(idAry, objAry) end
---@param is2DCapture boolean
---@return UTexture
function UBtlGuiDrawComponent:FrameBufferCapture(is2DCapture) end
---@param useCanvas EBtlGuiCanvas
function UBtlGuiDrawComponent:DrawAtCanvas(useCanvas) end
function UBtlGuiDrawComponent:Draw() end
---@param grpNo int32
---@param Item FBtlGuiDrawText
---@param outID int32
---@param outItem UBtlGuiDrawObjectText
function UBtlGuiDrawComponent:CreateDrawText(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawSprite
---@param outID int32
---@param outItem UBtlGuiDrawObjectSprite
---@param onChangeByPlatform boolean
function UBtlGuiDrawComponent:CreateDrawSprite(grpNo, Item, outID, outItem, onChangeByPlatform) end
---@param grpNo int32
---@param Item FBtlGuiDrawSilhouette
---@param outID int32
---@param outItem UBtlGuiDrawObjectSilhouette
function UBtlGuiDrawComponent:CreateDrawSilhouette(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawRoundRect
---@param outID int32
---@param outItem UBtlGuiDrawObjectRoundRect
function UBtlGuiDrawComponent:CreateDrawRoundRect(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawRect
---@param outID int32
---@param outItem UBtlGuiDrawObjectRect
function UBtlGuiDrawComponent:CreateDrawRect(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawPrimitive
---@param outID int32
---@param outItem UBtlGuiDrawObjectPrimitive
function UBtlGuiDrawComponent:CreateDrawPrimitive(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawPlg
---@param outID int32
---@param outItem UBtlGuiDrawObjectPlg
function UBtlGuiDrawComponent:CreateDrawPlg(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawPanel
---@param outID int32
---@param outItem UBtlGuiDrawObjectPanel
function UBtlGuiDrawComponent:CreateDrawPanel(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawMsg
---@param outID int32
---@param outItem UBtlGuiDrawObjectMsg
function UBtlGuiDrawComponent:CreateDrawMsg(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawMaterial
---@param outID int32
---@param outItem UBtlGuiDrawObjectMaterial
function UBtlGuiDrawComponent:CreateDrawMaterial(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawLineFrame
---@param outID int32
---@param outItem UBtlGuiDrawObjectLineFrame
function UBtlGuiDrawComponent:CreateDrawLineFrame(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Item FBtlGuiDrawImage
---@param outID int32
---@param outItem UBtlGuiDrawObjectImage
function UBtlGuiDrawComponent:CreateDrawImageByStruct(grpNo, Item, outID, outItem) end
---@param grpNo int32
---@param Texture UTexture
---@param Pos FVector2D
---@param outID int32
---@param outItem UBtlGuiDrawObjectImage
function UBtlGuiDrawComponent:CreateDrawImage(grpNo, Texture, Pos, outID, outItem) end
---@param grpNo int32
---@param outID int32
---@param outItem UBtlGuiDrawObjectClearScreen
---@param Color FColor
---@param OT EBtlGuiOT
function UBtlGuiDrawComponent:ClearScreen(grpNo, outID, outItem, Color, OT) end
function UBtlGuiDrawComponent:ClearDrawItem() end
---@param Canvas EBtlGuiCanvas
---@param Alpha float
---@param Bs FBtlBlendState
function UBtlGuiDrawComponent:ClearCanvas(Canvas, Alpha, Bs) end
---@param WorldPos FVector
---@param CameraManager APlayerCameraManager
---@param outPos FVector2D
---@param fZ float
---@param CameraActor ACameraActor
---@return boolean
function UBtlGuiDrawComponent:BtlGuiWorldToScreen2(WorldPos, CameraManager, outPos, fZ, CameraActor) end
---@param WorldPos FVector
---@param PlayerController APlayerController
---@return FVector2D
function UBtlGuiDrawComponent:BtlGuiWorldToScreen(WorldPos, PlayerController) end
---@param isEnable boolean
function UBtlGuiDrawComponent:BtlGuiSetDrawEnable(isEnable) end
---@param Enable boolean
function UBtlGuiDrawComponent:BtlGuiCheckDrawEnable(Enable) end


---@class UBtlGuiDrawObjectClearScreen : UBtlGuiDrawObjectCore
---@field Color FColor
---@field OT EBtlGuiOT
local UBtlGuiDrawObjectClearScreen = {}



---@class UBtlGuiDrawObjectCore : UObject
---@field Visible boolean
---@field grpNo int32
---@field childObject TArray<UBtlGuiDrawObjectCore>
---@field drawFlag FBtlGuiDrawFlag
local UBtlGuiDrawObjectCore = {}

---@param Scale FVector2D
function UBtlGuiDrawObjectCore:SetScaleVec2(Scale) end
---@param anchor FVector2D
function UBtlGuiDrawObjectCore:SetScaleAnchorPos(anchor) end
---@param Scale float
function UBtlGuiDrawObjectCore:SetScale(Scale) end
---@param Pos FVector2D
function UBtlGuiDrawObjectCore:SetPos(Pos) end
---@param Color FColor
function UBtlGuiDrawObjectCore:SetColor(Color) end
---@param Object UBtlGuiDrawObjectCore
---@param flag FBtlGuiDrawFlag
function UBtlGuiDrawObjectCore:SetChildObject(Object, flag) end
---@param anchor FVector2D
function UBtlGuiDrawObjectCore:SetAngleAnchorPos(anchor) end
---@param Angle float
function UBtlGuiDrawObjectCore:SetAngle(Angle) end
---@param anchor FVector2D
function UBtlGuiDrawObjectCore:SetAnchorPos(anchor) end
---@param Alpha float
function UBtlGuiDrawObjectCore:SetAlpha(Alpha) end
---@return FVector2D
function UBtlGuiDrawObjectCore:GetScaleAnchorPos() end
---@return FVector2D
function UBtlGuiDrawObjectCore:GetScale() end
---@return FVector2D
function UBtlGuiDrawObjectCore:GetPos() end
---@return FColor
function UBtlGuiDrawObjectCore:GetColor() end
---@return FVector2D
function UBtlGuiDrawObjectCore:GetAngleAnchorPos() end
---@return float
function UBtlGuiDrawObjectCore:GetAngle() end
---@return float
function UBtlGuiDrawObjectCore:GetAlpha() end


---@class UBtlGuiDrawObjectImage : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawImage
local UBtlGuiDrawObjectImage = {}

---@param Width float
---@param Height float
function UBtlGuiDrawObjectImage:GetWidthHeight(Width, Height) end


---@class UBtlGuiDrawObjectLineFrame : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawLineFrame
local UBtlGuiDrawObjectLineFrame = {}

---@param anti float
function UBtlGuiDrawObjectLineFrame:SetAntiLength(anti) end
---@param Size FVector2D
---@param Color FColor
function UBtlGuiDrawObjectLineFrame:MakeRhombus(Size, Color) end
---@param Radius float
---@param Color FColor
function UBtlGuiDrawObjectLineFrame:MakeCircle(Radius, Color) end


---@class UBtlGuiDrawObjectMaterial : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawMaterial
local UBtlGuiDrawObjectMaterial = {}



---@class UBtlGuiDrawObjectMsg : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawMsg
local UBtlGuiDrawObjectMsg = {}

function UBtlGuiDrawObjectMsg:SetSkillHelpMsg() end
---@param ItemId int32
function UBtlGuiDrawObjectMsg:SetItemHelpMsg(ItemId) end
function UBtlGuiDrawObjectMsg:ResetBmd() end
function UBtlGuiDrawObjectMsg:ReCreateMsgInfo() end
---@param Width float
---@param Height float
function UBtlGuiDrawObjectMsg:GetMsgWindowLength(Width, Height) end
---@param Item FBtlGuiDrawMsg
---@param textCollision FVector2D
---@param adjustedScale FVector2D
function UBtlGuiDrawObjectMsg:CalcAdjustedScaleOnlyX(Item, textCollision, adjustedScale) end
---@param Item FBtlGuiDrawMsg
---@param textCollision FVector2D
---@param adjustedScale FVector2D
---@param lineBreak float
---@param onKeepScale boolean
function UBtlGuiDrawObjectMsg:CalcAdjustedScale(Item, textCollision, adjustedScale, lineBreak, onKeepScale) end


---@class UBtlGuiDrawObjectPanel : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawPanel
local UBtlGuiDrawObjectPanel = {}



---@class UBtlGuiDrawObjectPlg : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawPlg
local UBtlGuiDrawObjectPlg = {}

---@return FVector2D
function UBtlGuiDrawObjectPlg:GetSize() end


---@class UBtlGuiDrawObjectPrimitive : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawPrimitive
local UBtlGuiDrawObjectPrimitive = {}

---@param anti float
function UBtlGuiDrawObjectPrimitive:SetAntiLength(anti) end
---@param Size FVector2D
---@param Color FColor
function UBtlGuiDrawObjectPrimitive:MakeRhombus(Size, Color) end
---@param Radius float
---@param Color FColor
---@param Scale FVector2D
function UBtlGuiDrawObjectPrimitive:MakeCircle(Radius, Color, Scale) end


---@class UBtlGuiDrawObjectRect : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawRect
local UBtlGuiDrawObjectRect = {}

---@param callbackValue EBtlTouchCallbackValue
---@param adjustX float
---@param adjustY float
---@param adjustAngle float
---@param adjustW float
---@param adjustH float
---@param addLayer int32
function UBtlGuiDrawObjectRect:SetTouchCollision(callbackValue, adjustX, adjustY, adjustAngle, adjustW, adjustH, addLayer) end
---@param screenID EBtlTouchScreenID
---@param adjustX float
---@param adjustY float
---@param adjustAngle float
---@param adjustW float
---@param adjustH float
---@param onSlider boolean
function UBtlGuiDrawObjectRect:SetScrollBarTouchCollision(screenID, adjustX, adjustY, adjustAngle, adjustW, adjustH, onSlider) end
---@param screenID EBtlTouchScreenID
---@param idx int32
---@param adjustX float
---@param adjustY float
---@param adjustAngle float
---@param adjustW float
---@param adjustH float
---@param addLayer int32
function UBtlGuiDrawObjectRect:SetListTouchCollision(screenID, idx, adjustX, adjustY, adjustAngle, adjustW, adjustH, addLayer) end
---@param onEnable boolean
function UBtlGuiDrawObjectRect:OnEnableTouchCollision(onEnable) end


---@class UBtlGuiDrawObjectRoundRect : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawRoundRect
local UBtlGuiDrawObjectRoundRect = {}



---@class UBtlGuiDrawObjectSilhouette : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawSilhouette
local UBtlGuiDrawObjectSilhouette = {}



---@class UBtlGuiDrawObjectSprite : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawSprite
local UBtlGuiDrawObjectSprite = {}

---@param callbackValue EBtlTouchCallbackValue
---@param adjustX float
---@param adjustY float
---@param adjustAngle float
---@param adjustW float
---@param adjustH float
---@param addLayer int32
function UBtlGuiDrawObjectSprite:SetTouchCollision(callbackValue, adjustX, adjustY, adjustAngle, adjustW, adjustH, addLayer) end
---@param screenID EBtlTouchScreenID
---@param idx int32
---@param adjustX float
---@param adjustY float
---@param adjustAngle float
---@param adjustW float
---@param adjustH float
---@param addLayer int32
function UBtlGuiDrawObjectSprite:SetListTouchCollision(screenID, idx, adjustX, adjustY, adjustAngle, adjustW, adjustH, addLayer) end
---@param onEnable boolean
function UBtlGuiDrawObjectSprite:OnEnableTouchCollision(onEnable) end
---@param Width float
---@param Height float
function UBtlGuiDrawObjectSprite:GetWidthHeight(Width, Height) end


---@class UBtlGuiDrawObjectText : UBtlGuiDrawObjectCore
---@field Data FBtlGuiDrawText
local UBtlGuiDrawObjectText = {}

---@param Width float
---@param Height float
function UBtlGuiDrawObjectText:GetTextWidthHeight(Width, Height) end
---@param Item FBtlGuiDrawText
---@param textCollision FVector2D
---@param ScalingOnlyX boolean
---@param adjustedScale FVector2D
function UBtlGuiDrawObjectText:CalcAdjustedScale(Item, textCollision, ScalingOnlyX, adjustedScale) end
function UBtlGuiDrawObjectText:ApplyFontStyleMakeOffset() end


---@class UBtlGuiIconComponent : UAppActorComponent
---@field OnVisibleEvent FBtlGuiIconComponentOnVisibleEvent
---@field OnHiddenEvent FBtlGuiIconComponentOnHiddenEvent
---@field OnJyokyoHelpEndEvent FBtlGuiIconComponentOnJyokyoHelpEndEvent
local UBtlGuiIconComponent = {}

---@param IsVisible boolean
function UBtlGuiIconComponent:VisibleActionSuggestion(IsVisible) end
---@param PlayerId int32
---@param Sp int32
function UBtlGuiIconComponent:UpdateParamPartyPanel_SP(PlayerId, Sp) end
---@param PlayerId int32
---@param Hp int32
function UBtlGuiIconComponent:UpdateParamPartyPanel_HP(PlayerId, Hp) end
---@param IsPlayerAdvantage boolean
---@param Time float
function UBtlGuiIconComponent:StartEncountEffectForBP(IsPlayerAdvantage, Time) end
---@param IsEnemy boolean
---@param Time float
function UBtlGuiIconComponent:Start1MoreEffectForBP(IsEnemy, Time) end
function UBtlGuiIconComponent:ShowFukaPartyPanel() end
---@param pMsg UBtlGuiDrawObjectMsg
---@param genus int32
---@param ID int32
---@param var1 int32
---@param var2 int32
---@param flags int32
function UBtlGuiIconComponent:SetVariableJyokyoHelp(pMsg, genus, ID, var1, var2, flags) end
---@param vidible boolean
---@param ResetAnimFlag boolean
function UBtlGuiIconComponent:SetPartyPanelVisible(vidible, ResetAnimFlag) end
---@param Visible boolean
---@param BtlCore UBtlCoreComponent
function UBtlGuiIconComponent:SetKeyHelpVisible(Visible, BtlCore) end
---@param help EBtlGuiIconKeyHelp
---@param BtlCore UBtlCoreComponent
---@param noChange boolean
---@param disableParam boolean
function UBtlGuiIconComponent:SetKeyHelpOffset(help, BtlCore, noChange, disableParam) end
---@param ActiveActor ABtlActor
---@param IsSkipAnim boolean
function UBtlGuiIconComponent:SetCharacterPartyPanel(ActiveActor, IsSkipAnim) end
---@param genus int32
---@param ID int32
---@param msgNo int32
---@param var1 int32
---@param var2 int32
---@param renderTime float
---@param DelayTime float
---@param forceOverride boolean
---@param flags int32
function UBtlGuiIconComponent:RequestJyokyoHelpForBP(genus, ID, msgNo, var1, var2, renderTime, DelayTime, forceOverride, flags) end
---@param PlayerId int32
function UBtlGuiIconComponent:RecoverPartyPanel_SP(PlayerId) end
---@param PlayerId int32
function UBtlGuiIconComponent:RecoverPartyPanel_HP(PlayerId) end
---@param PlayerId int32
function UBtlGuiIconComponent:RecoverPartyPanel_BadStatus(PlayerId) end
---@return boolean
function UBtlGuiIconComponent:LoadSyncPartyPanel() end
---@param Num int32
---@return UTexture
function UBtlGuiIconComponent:GetRenderTargets(Num) end
function UBtlGuiIconComponent:DisableCharacterPartyPanel() end
function UBtlGuiIconComponent:DestroyPartyPanel() end
function UBtlGuiIconComponent:DestroyActionSuggestion() end
---@param PlayerId int32
---@param isWeak boolean
function UBtlGuiIconComponent:DamagePartyPanel(PlayerId, isWeak) end
---@param Damage int32
function UBtlGuiIconComponent:CreateTotalDamagePanelForBP(Damage) end
---@param Cmd EBtlCommandType
---@param ID int32
---@param IsEnemy boolean
---@param Time float
function UBtlGuiIconComponent:CreateSkillNamePanelForBP(Cmd, ID, IsEnemy, Time) end
---@param Scale float
---@param X float
---@param Y float
function UBtlGuiIconComponent:CreatePartyPanel(Scale, X, Y) end
---@param Data FBtlGuiIconDamage
function UBtlGuiIconComponent:CreateDamagePanelForBP(Data) end
function UBtlGuiIconComponent:CreateActionSuggestion() end
function UBtlGuiIconComponent:ClearSkillNamePanelForBP() end
function UBtlGuiIconComponent:ClearKeyHelpOffset() end
function UBtlGuiIconComponent:ClearDamagePanelForBP() end
---@return boolean
function UBtlGuiIconComponent:CheckPartyPanelVisible() end
function UBtlGuiIconComponent:CancelJyokyoHelpForBP() end
function UBtlGuiIconComponent:CallJyokyoHelpBroadcast() end


---@class UBtlGuiListComponent : UAppActorComponent
---@field OnCurcorUpdate FBtlGuiListComponentOnCurcorUpdate
---@field OnCurcorUpdated FBtlGuiListComponentOnCurcorUpdated
local UBtlGuiListComponent = {}

---@param CursorIndex int32
---@param TopIndex int32
---@param CurrentIndex int32
function UBtlGuiListComponent:Update(CursorIndex, TopIndex, CurrentIndex) end
---@param PosY float
---@param ScrollRange float
---@param CenterPosY float
function UBtlGuiListComponent:SetScrollBarData(PosY, ScrollRange, CenterPosY) end
---@param CurrentIndex int32
function UBtlGuiListComponent:SetCursor(CurrentIndex) end
---@param ItemDtarMin int32
---@param ItemDtarMax int32
---@param itemNum int32
---@param screenID EBtlListScreenID
---@param CursorIdx int32
---@param ListTopIdx int32
---@param MoveType int32
function UBtlGuiListComponent:Init(ItemDtarMin, ItemDtarMax, itemNum, screenID, CursorIdx, ListTopIdx, MoveType) end
---@param CursorIndex int32
---@param TopIndex int32
---@param CurrentIndex int32
function UBtlGuiListComponent:GetCursor(CursorIndex, TopIndex, CurrentIndex) end


---@class UBtlGuiPersonaStatusComponent : UAppActorComponent
---@field pActor APersonaStatus
---@field pFirstCharacter ABtlActor
---@field OnChangeL1 FBtlGuiPersonaStatusComponentOnChangeL1
---@field OnChangeR1 FBtlGuiPersonaStatusComponentOnChangeR1
local UBtlGuiPersonaStatusComponent = {}

---@param DeltaTime float
function UBtlGuiPersonaStatusComponent:UpdatePersonaStatus(DeltaTime) end
function UBtlGuiPersonaStatusComponent:StartPersonaSkillHelp() end
function UBtlGuiPersonaStatusComponent:StartPersonaCommentary() end
function UBtlGuiPersonaStatusComponent:SetEquipPersona() end
---@return boolean
function UBtlGuiPersonaStatusComponent:IsEndPersonaStatus() end
---@param Actor ABtlActor
---@return int32
function UBtlGuiPersonaStatusComponent:GetPersonaStockCount(Actor) end
---@param pCore UBtlCoreComponent
---@return ABtlActor
function UBtlGuiPersonaStatusComponent:GetDispActor(pCore) end
function UBtlGuiPersonaStatusComponent:DeleteInstance() end
---@param Actor ABtlActor
---@param pCore UBtlCoreComponent
---@param PlayerList TArray<ABtlActor>
function UBtlGuiPersonaStatusComponent:CreatePersonaStatusTargetSelect(Actor, pCore, PlayerList) end
---@param Actor ABtlActor
---@param pCore UBtlCoreComponent
---@param CurrentNum int32
---@param AlwaysChange boolean
function UBtlGuiPersonaStatusComponent:CreatePersonaStatus(Actor, pCore, CurrentNum, AlwaysChange) end
function UBtlGuiPersonaStatusComponent:CreateInstance() end
---@param pCore UBtlCoreComponent
function UBtlGuiPersonaStatusComponent:ClosePersonaStatus(pCore) end
---@return boolean
function UBtlGuiPersonaStatusComponent:CheckPersonaSkillHelp() end
---@return boolean
function UBtlGuiPersonaStatusComponent:CheckPersonaCommentary() end
---@return boolean
function UBtlGuiPersonaStatusComponent:CheckPersonaChange() end
function UBtlGuiPersonaStatusComponent:ChangePersonaStatusRightActor() end
---@return boolean
function UBtlGuiPersonaStatusComponent:ChangePersonaStatusRight() end
function UBtlGuiPersonaStatusComponent:ChangePersonaStatusLeftActor() end
---@return boolean
function UBtlGuiPersonaStatusComponent:ChangePersonaStatusLeft() end


---@class UBtlGuiPromiseComponent : UAppActorComponent
local UBtlGuiPromiseComponent = {}

---@param BtlCore UBtlCoreComponent
function UBtlGuiPromiseComponent:StopSupportInfo(BtlCore) end
---@param BtlCore UBtlCoreComponent
---@param isGeneral boolean
---@param msgNo int32
function UBtlGuiPromiseComponent:StartSupportInfo(BtlCore, isGeneral, msgNo) end
---@return boolean
function UBtlGuiPromiseComponent:CheckMsgStart() end


---@class UBtlGuiResources : UAppActorComponent
---@field AddResourcesDelegate FBtlGuiResourcesAddResourcesDelegate
local UBtlGuiResources = {}

---@param Actor ABtlGuiResourcesActor
function UBtlGuiResources:SetResourcesActor(Actor) end
function UBtlGuiResources:SetAsyncLoadCompleted() end
---@param ResourcesPath FString
function UBtlGuiResources:RequestAddResources(ResourcesPath) end
function UBtlGuiResources:LoadEndAction() end
---@param StateManager ABtlGuiStateManager
function UBtlGuiResources:InitializeLayoutDebugMenu(StateManager) end
---@param LayoutId EBtlTouchCollisionLayout
---@param PosX float
---@param PosY float
---@param Angle float
---@param Width float
---@param Height float
function UBtlGuiResources:GetTouchCollData(LayoutId, PosX, PosY, Angle, Width, Height) end
---@param LayoutId EBtlTopLayout
---@return FVector2D
function UBtlGuiResources:GetTopAdjustedPosition(LayoutId) end
---@param LayoutId EUITheurgiaTextLayout
---@return FVector2D
function UBtlGuiResources:GetTheurgiaTextTextCollition(LayoutId) end
---@param LayoutId EUITheurgiaTextRowLayout
---@return int32
function UBtlGuiResources:GetTheurgiaTextRow(LayoutId) end
---@param LayoutId EUITheurgiaTextPosLayout
---@return FVector2D
function UBtlGuiResources:GetTheurgiaTextPos(LayoutId) end
---@param LayoutId EBtlTheurgiaLayout
---@return FVector2D
function UBtlGuiResources:GetTheurgiaAdjustedPosition(LayoutId) end
---@param LayoutId EBtlTargetInfoTextLayout
---@return FVector2D
function UBtlGuiResources:GetTargetInfoTextCollision(LayoutId) end
---@param LayoutId EBtlTacticsListTextLayout
---@return FVector2D
function UBtlGuiResources:GetTacticsTextCollision(LayoutId) end
---@param LayoutId EBtlTacticsCheckLayout
---@return FVector2D
function UBtlGuiResources:GetTacticsCheckAdjustedPosition(LayoutId) end
---@param LayoutId EBtlTacticsLayout
---@return FVector2D
function UBtlGuiResources:GetTacticsAdjustedPosition(LayoutId) end
---@param LayoutId EBtlRushLayout
---@return FVector2D
function UBtlGuiResources:GetRushAdjustedPosition(LayoutId) end
---@param ResourcesName FName
---@param ResourcesClass UClass
---@param OutResources UObject
function UBtlGuiResources:GetResourcesPure(ResourcesName, ResourcesClass, OutResources) end
---@param ResourcesName FName
---@param ResourcesClass UClass
---@param OutResources UObject
function UBtlGuiResources:GetResources(ResourcesName, ResourcesClass, OutResources) end
---@param LayoutId EBtlPromiseLayout
---@return FVector2D
function UBtlGuiResources:GetPromiseAdjustedPosition(LayoutId) end
---@param LayoutId EBtlOthersLayout
---@return FVector2D
function UBtlGuiResources:GetOthersAdjustedPosition(LayoutId) end
---@return USprAsset
function UBtlGuiResources:GetKeyHelpSpr() end
---@param LayoutId EBtlItemSkillListTextLayout
---@return FVector
function UBtlGuiResources:GetItemSkillListTextCollision(LayoutId) end
---@return USprAsset
function UBtlGuiResources:GetItemIconSpr() end
---@param LayoutId EBtlGuardLayout
---@return FVector2D
function UBtlGuiResources:GetGuardAdjustedPosition(LayoutId) end
---@param LayoutId EBtlDamageIconLayout
---@return FVector2D
function UBtlGuiResources:GetDamageIconAdjustedPosition(LayoutId) end
---@return USprAsset
function UBtlGuiResources:GetCampSpr() end
---@param Type int32
---@return UTextureRenderTarget2D
function UBtlGuiResources:GetAppRenderTarget(Type) end
---@param LayoutId EBtlAnalyzeTextLayout
---@return FVector2D
function UBtlGuiResources:GetAnalyzeTextTextCollition(LayoutId) end
---@param LayoutId EBtlAnalyzeLayout
---@return FVector2D
function UBtlGuiResources:GetAnalyzeAdjustedPosition(LayoutId) end
---@param ResourcesClass UClass
---@param OutResources UObject
function UBtlGuiResources:GetAddResourcesPure(ResourcesClass, OutResources) end
---@param ResourcesClass UClass
---@param OutResources UObject
function UBtlGuiResources:GetAddResources(ResourcesClass, OutResources) end
---@return boolean
function UBtlGuiResources:CheckBtlResourcesCompleted() end
function UBtlGuiResources:BtlGuiResourcesDestroy() end
---@return ABtlGuiResourcesBase
function UBtlGuiResources:BtlGuiResourcesCreate() end


---@class UBtlInputComponent : UAppActorComponent
---@field InputKey FBtlInputKey
---@field InputDelegate FBtlInputComponentInputDelegate
---@field TrigRU FBtlInputComponentTrigRU
---@field TrigOK FBtlInputComponentTrigOK
---@field TrigRL FBtlInputComponentTrigRL
---@field TrigCANCEL FBtlInputComponentTrigCANCEL
---@field TrigLU FBtlInputComponentTrigLU
---@field TrigLR FBtlInputComponentTrigLR
---@field TrigLL FBtlInputComponentTrigLL
---@field TrigLD FBtlInputComponentTrigLD
---@field TrigR1 FBtlInputComponentTrigR1
---@field TrigL1 FBtlInputComponentTrigL1
---@field TrigR2 FBtlInputComponentTrigR2
---@field TrigL2 FBtlInputComponentTrigL2
---@field TrigR3 FBtlInputComponentTrigR3
---@field TrigL3 FBtlInputComponentTrigL3
---@field TrigOPTION FBtlInputComponentTrigOPTION
---@field TrigTOUCH FBtlInputComponentTrigTOUCH
local UBtlInputComponent = {}

function UBtlInputComponent:RemoveTouchCollCallback() end
---@param Key EBtlInputKeyboardEnum
function UBtlInputComponent:CallInputTrigKeyboard(Key) end
---@param isEnable boolean
function UBtlInputComponent:BtlInputSetCtrlEnable(isEnable) end
---@param isEnable boolean
function UBtlInputComponent:BtlInputSetComponentEnable(isEnable) end
function UBtlInputComponent:BtlInputKeyLockClear() end
---@param lockKey TArray<EBtlInputKeyboardEnum>
function UBtlInputComponent:BtlInputKeyLock(lockKey) end
---@param Enable boolean
function UBtlInputComponent:BtlInputCheckCtrlEnable(Enable) end
---@param Enable boolean
function UBtlInputComponent:BtlInputCheckComponentEnable(Enable) end
---@param isEnable boolean
function UBtlInputComponent:BtlInputAlwaysEnable(isEnable) end
function UBtlInputComponent:AddTouchCollCallback() end


---@class UBtlOrder : UObject
---@field InterruptList TArray<ABtlActor>
---@field StandbyList TArray<ABtlActor>
local UBtlOrder = {}



---@class UBtlPcVoice : UBtlVoice
local UBtlPcVoice = {}


---@class UBtlResidentDataBase : UAppActorComponent
---@field SummonVFX UNiagaraSystem
---@field SummonShellVFX UNiagaraSystem
---@field HitSlashVFX UNiagaraSystem
---@field HitPierceVFX UNiagaraSystem
---@field HitStrikeVFX UNiagaraSystem
---@field ReflectionVFX UNiagaraSystem
---@field AbsorptionVFX UNiagaraSystem
---@field PersonaAuraVFX UNiagaraSystem
---@field PersonaAuraShineVFX UNiagaraSystem
---@field ShadowSummonVFX UNiagaraSystem
---@field ShadowDeadVFX UNiagaraSystem
---@field ShadowDeadSplashVFX UNiagaraSystem
---@field HitPierceVFX_YukariCritical UNiagaraSystem
---@field Loader UAssetLoader
---@field LoadedResidentData boolean
local UBtlResidentDataBase = {}

function UBtlResidentDataBase:LoadAsync() end
---@param Type EBtlResidentResource
---@return UNiagaraSystem
function UBtlResidentDataBase:GetEffect(Type) end
---@param Type EBtlResidentResource
---@return boolean
function UBtlResidentDataBase:CheckLoaded(Type) end


---@class UBtlResultViewData : UObject
---@field Exp int64
---@field money int64
---@field PartyAfterLevel TArray<uint8>
---@field HeroStatusShowFlag boolean
---@field isBonusExpArcana boolean
---@field isBonusExpTheurgia boolean
local UBtlResultViewData = {}



---@class UBtlShufflePersonaList : UObject
local UBtlShufflePersonaList = {}


---@class UBtlSkillGeneratorComponent : UActorComponent
---@field HasFinishedSkillLoad FBtlSkillGeneratorComponentHasFinishedSkillLoad
---@field pSkill ABtlSkill
---@field SkillAsset TSubclassOf<ABtlSkill>
---@field Loader UAssetLoader
---@field LoadRequested boolean
local UBtlSkillGeneratorComponent = {}

---@param skillId int32
---@return boolean
function UBtlSkillGeneratorComponent:RequestCreateSkill(skillId) end
---@return ABtlSkill
function UBtlSkillGeneratorComponent:GetSkill() end


---@class UBtlSoundBPFuncLib : UBlueprintFunctionLibrary
local UBtlSoundBPFuncLib = {}

function UBtlSoundBPFuncLib:BtlSEPlaySHIFT() end
function UBtlSoundBPFuncLib:BtlSEPlayPANELOPEN() end
function UBtlSoundBPFuncLib:BtlSEPlayPAGE() end
function UBtlSoundBPFuncLib:BtlSEPlayERROR() end
function UBtlSoundBPFuncLib:BtlSEPlayDOWN() end
function UBtlSoundBPFuncLib:BtlSEPlayDECIDE() end
function UBtlSoundBPFuncLib:BtlSEPlayCURSOR() end
function UBtlSoundBPFuncLib:BtlSEPlayCRITICAL() end
function UBtlSoundBPFuncLib:BtlSEPlayCANCEL() end
---@param CueId int32
function UBtlSoundBPFuncLib:BtlSEPlay(CueId) end
---@param Actor ABtlActor
---@param CueId int32
function UBtlSoundBPFuncLib:BtlPCVoicePlayNotLipsync(Actor, CueId) end
---@param Actor ABtlActor
function UBtlSoundBPFuncLib:BtlPCVoicePlay_ShiftSelect(Actor) end
---@param Actor ABtlActor
---@param Type int32
function UBtlSoundBPFuncLib:BtlPCVoicePlay_HeroUI(Actor, Type) end
---@param Actor ABtlActor
function UBtlSoundBPFuncLib:BtlPCVoicePlay_Command(Actor) end
---@param Actor ABtlActor
---@param CueId int32
function UBtlSoundBPFuncLib:BtlPCVoicePlay(Actor, CueId) end


---@class UBtlSpecificEventBattle : UBtlBoss
local UBtlSpecificEventBattle = {}


---@class UBtlSupportInfoBase : UObject
---@field SupportInfoMessage UBtlSupportInfoMessage
local UBtlSupportInfoBase = {}



---@class UBtlSupportInfoCommonOnly : UBtlSupportInfoBase
local UBtlSupportInfoCommonOnly = {}


---@class UBtlSupportInfoFuka : UBtlSupportInfoBase
local UBtlSupportInfoFuka = {}


---@class UBtlSupportInfoMessage : UObject
---@field commonBmdAsset UBmdAsset
---@field currentNaviBmdAsset UBmdAsset
---@field commonDataAsset UDatSupportInfo
---@field currentNaviDataAsset UDatSupportInfo
---@field Loader UAssetLoader
---@field CommonBmdpath FString
---@field CommonTablepath FString
---@field CurrentNaviBmdpath FString
---@field CurrentNaviTablepath FString
local UBtlSupportInfoMessage = {}



---@class UBtlSupportInfoMituru : UBtlSupportInfoBase
local UBtlSupportInfoMituru = {}


---@class UBtlSupportSound : UObject
local UBtlSupportSound = {}


---@class UBtlTableTypes : UObject
local UBtlTableTypes = {}


---@class UBtlTargetsManagerComponent : UAppActorComponent
---@field Targets TArray<ABtlActor>
---@field EffectTargets TArray<ABtlActor>
---@field CursorTargets TArray<ABtlActor>
---@field MainCharacter ABtlActor
local UBtlTargetsManagerComponent = {}

---@param List TArray<ABtlActor>
function UBtlTargetsManagerComponent:SetTargets(List) end
---@param Character ABtlActor
function UBtlTargetsManagerComponent:SetMainCharacter(Character) end
---@param List TArray<ABtlActor>
function UBtlTargetsManagerComponent:SetCursorTargets(List) end
---@return TArray<ABtlActor>
function UBtlTargetsManagerComponent:GetTargets() end
---@return ABtlActor
function UBtlTargetsManagerComponent:GetMainCharacter() end
---@return TArray<ABtlActor>
function UBtlTargetsManagerComponent:GetEffectTargets() end
---@return TArray<ABtlActor>
function UBtlTargetsManagerComponent:GetCursorTargets() end
---@return TArray<ABtlActor>
function UBtlTargetsManagerComponent:GetConstTargets() end
function UBtlTargetsManagerComponent:ClearForBP() end
function UBtlTargetsManagerComponent:Clear() end
---@param pCore UBtlCoreComponent
---@return boolean
function UBtlTargetsManagerComponent:CheckTargetIsNextActionCharacter(pCore) end
---@param pCore UBtlCoreComponent
---@return boolean
function UBtlTargetsManagerComponent:CheckTargetIsLatestActionCharacter(pCore) end


---@class UBtlTutorial1st : UBtlTutorialBase
local UBtlTutorial1st = {}


---@class UBtlTutorial2nd : UBtlTutorialBase
local UBtlTutorial2nd = {}


---@class UBtlTutorial3rd : UBtlTutorialBase
local UBtlTutorial3rd = {}


---@class UBtlTutorialAstrea : UBtlBoss
local UBtlTutorialAstrea = {}


---@class UBtlTutorialBase : UBtlBoss
local UBtlTutorialBase = {}


---@class UBtlTutorialTheurgia : UBtlBoss
local UBtlTutorialTheurgia = {}


---@class UBtlVoice : UObject
---@field Character ABtlActor
---@field Core UBtlCoreComponent
---@field Watcher UBtlVoicePlayWatcher
local UBtlVoice = {}

function UBtlVoice:StartLipyncWatcher() end
function UBtlVoice:EndLipsyncWatcher() end


---@class UBtlVoicePlayWatcher : UObject
local UBtlVoicePlayWatcher = {}


---@class UBuildModeLibrary : UBlueprintFunctionLibrary
local UBuildModeLibrary = {}

---@return boolean
function UBuildModeLibrary:IsShipping() end
---@return boolean
function UBuildModeLibrary:IsDebug() end


---@class UBustupAnimDataAsset : UAppMultiDataAsset
---@field EyeAnim TArray<FBustupAnim>
---@field MouthAnim TArray<FBustupMouthAnim>
local UBustupAnimDataAsset = {}



---@class UBustupController : UObject
---@field pModel UBustupModel
local UBustupController = {}



---@class UBustupDraw : UObject
---@field BustupObject_ UBustupObject
---@field PrevBustupObject_ UBustupObject
---@field ObjectBuffer_ TArray<FBustupObjectBuffer>
local UBustupDraw = {}



---@class UBustupEnvironmentDataAsset : UAppDataAsset
---@field Data TMap<int32, FBustupEnvironmentBG>
local UBustupEnvironmentDataAsset = {}



---@class UBustupExistDataAsset : UAppMultiDataAsset
---@field Data TMap<int32, FBustupFace>
local UBustupExistDataAsset = {}



---@class UBustupGradationDataAsset : UAppDataAsset
---@field Data TMap<uint8, FBustupGradation>
local UBustupGradationDataAsset = {}



---@class UBustupModel : UObject
---@field pBustupDraw UBustupDraw
local UBustupModel = {}



---@class UBustupObject : UObject
---@field BaseMaterial_ UMaterialInterface
---@field DrawableMaterial_ UMaterialInstanceDynamic
---@field BaseTex_ UTexture
---@field ShadowMask_ UTexture
---@field RimLightMask_ UTexture
---@field EyeTex_ UTexture
---@field MouthTex_ UTexture
---@field BlushTex_ UTexture
---@field SweatTex_ UTexture
---@field BaseMask_ UTexture
---@field DropMask_ UTexture
---@field Loader_ UAssetLoader
---@field BustupAnim_ UBustupAnimDataAsset
---@field SupportBustupOffset_ USupportBustupDataAsset
local UBustupObject = {}



---@class UCalendar : UObject
---@field mEventActor_ ACldBindingEventActor
---@field mChangeFlag_ uint32
---@field mChangeType_ ECldSceneChangeType
---@field mChangeSetted_ ECldSceneChangeType
---@field mChangePrevDay_ int32
---@field mChangePrevTimeZone_ ECldTimeZone
---@field mChangeNextDay_ int32
---@field mChangeNextTimeZone_ ECldTimeZone
---@field cursorDay int32
local UCalendar = {}



---@class UCallFieldSequence : UCampLoadSequenceBase
local UCallFieldSequence = {}


---@class UCallTitleSequence : UCampLoadSequenceBase
local UCallTitleSequence = {}


---@class UCampLoadSequenceBase : UObject
local UCampLoadSequenceBase = {}


---@class UCampModelController : UObject
---@field pAssetLoader UAssetLoader
---@field Items TArray<UCampModelControllerItem>
local UCampModelController = {}



---@class UCampModelControllerItem : UObject
---@field AnimItems TArray<FCampModelControllerMotionItem>
local UCampModelControllerItem = {}



---@class UCampPlayerModelControllerItem : UCampModelControllerItem
---@field pCharacterClass TSubclassOf<ACharacter>
---@field pCharacter ACharacter
---@field pDefaultMontage UAnimMontage
local UCampPlayerModelControllerItem = {}



---@class UCharacterLipsyncAppComponent : UAppActorComponent
---@field CurrentLipsyncParam FLipsyncAppListener
---@field OwnerMesh USkeletalMeshComponent
---@field AppCharacterComponent UAppCharBaseComp
---@field LipA_PropPath TFieldPath<FFloatProperty>
---@field LipI_PropPath TFieldPath<FFloatProperty>
---@field LipU_PropPath TFieldPath<FFloatProperty>
---@field LipE_PropPath TFieldPath<FFloatProperty>
---@field LipO_PropPath TFieldPath<FFloatProperty>
---@field mCurrentTotalTime float
---@field mLipACurveDefault UCurveFloat
local UCharacterLipsyncAppComponent = {}

---@param LipSyncAppStateType ELipSyncAppStateType
---@param LipsyncParam FLipsyncAppListener
function UCharacterLipsyncAppComponent:OnChangeLipsyncState(LipSyncAppStateType, LipsyncParam) end
---@return ULipsyncAppObserverSubsystem
function UCharacterLipsyncAppComponent:GetLipsyncSubsystem() end
function UCharacterLipsyncAppComponent:FindLipPropsPtr() end


---@class UCharacterSimpleLipsAnimAppComponent : UAppActorComponent
---@field LipACurveDefault UCurveFloat
---@field CurrentTotalLipDeltaTime float
---@field CurrentTotalTime float
---@field RequestedTotalEndTime float
---@field LipsPlayRate float
---@field StartLipsDelaySec float
---@field LipACustomCurve UCurveFloat
---@field PlayerMajorID int32
---@field PlayerMinorID int32
---@field CurrentLipsyncParam FCharacterSimpleLipsAnimAppListener
---@field OwnerMesh USkeletalMeshComponent
---@field AppCharacterComponent UAppCharBaseComp
---@field LipA_PropPath TFieldPath<FFloatProperty>
---@field LipI_PropPath TFieldPath<FFloatProperty>
---@field LipU_PropPath TFieldPath<FFloatProperty>
---@field LipE_PropPath TFieldPath<FFloatProperty>
---@field LipO_PropPath TFieldPath<FFloatProperty>
local UCharacterSimpleLipsAnimAppComponent = {}

---@param LipSyncAppStateType ECharacterSimpleLipsAnimAppStateType
---@param LipsyncParam FCharacterSimpleLipsAnimAppListener
function UCharacterSimpleLipsAnimAppComponent:OnChangeLipsState(LipSyncAppStateType, LipsyncParam) end
---@return UCharacterSimpleLipsAnimAppSubsystem
function UCharacterSimpleLipsAnimAppComponent:GetLipsSubsystem() end
function UCharacterSimpleLipsAnimAppComponent:FindPropsPtr() end


---@class UCharacterSimpleLipsAnimAppSubsystem : UGameInstanceSubsystem
---@field LipsAppDelegate FCharacterSimpleLipsAnimAppSubsystemLipsAppDelegate
---@field SpeakCharacterMap TMap<uint32, FCharacterSimpleLipsAnimAppListener>
local UCharacterSimpleLipsAnimAppSubsystem = {}

function UCharacterSimpleLipsAnimAppSubsystem:StopAllSpeakCharacter() end
---@param SimpleLipsParam FCharacterSimpleLipsAnimAppParam
---@param bOverride boolean
function UCharacterSimpleLipsAnimAppSubsystem:StartSpeakCharacterWithCustomParam(SimpleLipsParam, bOverride) end
---@param ActorPtr AActor
---@param RequestedSpeakTotalTime float
---@param MajorPlayerID int32
---@param MinorPlayerID int32
---@param bOverride boolean
function UCharacterSimpleLipsAnimAppSubsystem:StartSpeakCharacterPtr(ActorPtr, RequestedSpeakTotalTime, MajorPlayerID, MinorPlayerID, bOverride) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param RequestedSpeakTotalTime float
---@param bOverride boolean
function UCharacterSimpleLipsAnimAppSubsystem:StartSpeakCharacter(CharcterCategoryType, CharaIndexID, RequestedSpeakTotalTime, bOverride) end
---@param ActorPtr AActor
function UCharacterSimpleLipsAnimAppSubsystem:FinishSpeakCharacterPtr(ActorPtr) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
function UCharacterSimpleLipsAnimAppSubsystem:FinishSpeakCharacter(CharcterCategoryType, CharaIndexID) end


---@class UChristmasEventDataAsset : UAppMultiDataAsset
---@field Table TArray<FChristmasEventData>
local UChristmasEventDataAsset = {}



---@class UCldBpFuncLib : UBlueprintFunctionLibrary
local UCldBpFuncLib = {}

---@param TotalDay int32
function UCldBpFuncLib:SetNowTotalDay(TotalDay) end
---@param TimeZone ECldTimeZone
function UCldBpFuncLib:SetNowTimeZone(TimeZone) end
---@param Season ECldSeason
---@return int32
function UCldBpFuncLib:GetTotalDayFromSeason(Season) end
---@return int32
function UCldBpFuncLib:GetNowYoubi() end
---@return boolean
function UCldBpFuncLib:GetNowYasumi() end
---@param Month int32
---@param Day int32
function UCldBpFuncLib:GetNowTotalToDayMon(Month, Day) end
---@return int32
function UCldBpFuncLib:GetNowTotalDay() end
---@return ECldTimeZone
function UCldBpFuncLib:GetNowTimeZone() end
---@return int32
function UCldBpFuncLib:GetNowTime() end
---@return ECldSeason
function UCldBpFuncLib:GetNowSeason() end
---@return int32
function UCldBpFuncLib:GetNowMoonAge() end
---@param flag ECldDayDispState
function UCldBpFuncLib:CldSetDrawDayDispIm(flag) end
---@param flag ECldDayDispState
function UCldBpFuncLib:CldSetDrawDayDisp(flag) end
---@return ECldDayDispState
function UCldBpFuncLib:CldGetDayDispState() end
---@return boolean
function UCldBpFuncLib:CldCheckDayDispInOut() end
---@return boolean
function UCldBpFuncLib:CheckWinterCloth() end


---@class UCldCommonData : UObject
---@field mActor_ ACldCmnDataActor
---@field mDatesData_ UCldDateDataAsset
---@field mBpClass_ UClass
local UCldCommonData = {}



---@class UCldDateDataAsset : UAppDataAsset
---@field Data TArray<FCldDateTableItem>
local UCldDateDataAsset = {}



---@class UCldDateMessageDataAsset : UAppDataAsset
---@field Data TArray<FCldDateMessageMonth>
local UCldDateMessageDataAsset = {}



---@class UCldSceneChange : UBlueprintFunctionLibrary
local UCldSceneChange = {}


---@class UCldSchedulerBpObject : UUtlBpObj
local UCldSchedulerBpObject = {}

function UCldSchedulerBpObject:Shadow() end
function UCldSchedulerBpObject:PM() end
function UCldSchedulerBpObject:Noon() end
function UCldSchedulerBpObject:Night() end
function UCldSchedulerBpObject:Morning() end
function UCldSchedulerBpObject:Midnight() end
function UCldSchedulerBpObject:EarlyMorning() end
function UCldSchedulerBpObject:CallNextTime() end
function UCldSchedulerBpObject:AM() end
function UCldSchedulerBpObject:AfterSchool() end


---@class UCldTableTypes : UObject
local UCldTableTypes = {}


---@class UCmmProfileDataAsset : UAppDataAsset
---@field Data TMap<uint16, FCmmProfileItem>
local UCmmProfileDataAsset = {}



---@class UCmpCalendar : UCmpMenuBase
---@field AssetLoader_ UAssetLoader
---@field Actor_ AUICmpCalendar
local UCmpCalendar = {}



---@class UCmpCharacterStatus : UUIScene
---@field HeroStatus_ UCmpHeroHumanStatus
---@field Owner_ UUICmpStatus
local UCmpCharacterStatus = {}



---@class UCmpCharacterStatusDraw : UObject
---@field HumanParamDraw_ UCmpHeroHumanStatusDraw
---@field pParent UUICmpStatus
---@field pMainActor ACmpMainActor
local UCmpCharacterStatusDraw = {}



---@class UCmpCldCursor : UObject
local UCmpCldCursor = {}


---@class UCmpCommu : UCmpMenuBase
---@field pCommuBustupAry UTexture2D
---@field AssetLoader_ UAssetLoader
---@field Actor_ AUICmpCommu
---@field pModelController ACmpCommuModelController
local UCmpCommu = {}



---@class UCmpCommuCardAnimInstance : UAnimInstance
---@field RootYawEvent FCmpCommuCardAnimInstanceRootYawEvent
local UCmpCommuCardAnimInstance = {}



---@class UCmpCommuDetails : UUIScene
---@field Context_ AUICmpCommu
---@field pParent AUICmpCommu
---@field pMainActor ACmpMainActor
local UCmpCommuDetails = {}



---@class UCmpCommuList : UUIScene
---@field Context_ AUICmpCommu
---@field pParent AUICmpCommu
---@field pMainActor ACmpMainActor
local UCmpCommuList = {}



---@class UCmpEquip : UCmpMenuBase
---@field PSystem UCmpEquipSystem
---@field pDraw UCmpEquipDraw
local UCmpEquip = {}



---@class UCmpEquipDraw : UObject
---@field pMainActor ACmpMainActor
---@field pParent UCmpEquip
local UCmpEquipDraw = {}



---@class UCmpEquipSystem : UObject
---@field PartyMemberList TArray<int16>
---@field EquipList TArray<FEquipListItem>
---@field LastEquipList TArray<FEquipListItem>
---@field pMainActor ACmpMainActor
---@field pParent UCmpEquip
local UCmpEquipSystem = {}



---@class UCmpHeroHumanStatus : UUIScene
---@field pOffHumanParamDraw_ UCmpHeroHumanStatusDraw
---@field pParent UUICmpStatus
local UCmpHeroHumanStatus = {}



---@class UCmpHeroHumanStatusDraw : UObject
---@field pMainActor ACmpMainActor
---@field pParent UUICmpStatus
local UCmpHeroHumanStatusDraw = {}



---@class UCmpItem : UCmpMenuBase
---@field PSystem UCmpItemSystem
---@field pDraw UCmpItemDraw
---@field pPersonaStatus APersonaStatus
local UCmpItem = {}



---@class UCmpItemDraw : UObject
---@field pMainActor ACmpMainActor
local UCmpItemDraw = {}



---@class UCmpItemSystem : UObject
---@field PartyMemberList TArray<int16>
---@field PersonaStockIDList TArray<int32>
---@field ItemList TArray<FItemListItem>
local UCmpItemSystem = {}



---@class UCmpMenuBase : UObject
---@field pMainActor ACmpMainActor
local UCmpMenuBase = {}



---@class UCmpPersona : UCmpMenuBase
---@field AssetLoader_ UAssetLoader
---@field pDynaMateWaveCausticsAry UMaterialInstanceDynamic
---@field pTexArcanaWordAry UTexture2D
---@field Actor_ AUICmpPersona
local UCmpPersona = {}



---@class UCmpPersonaList : UUIScene
---@field Context_ AUICmpPersona
---@field PSStatusActor_ APersonaStatus
local UCmpPersonaList = {}



---@class UCmpQuest : UCmpMenuBase
---@field m_pSpr USprAsset
---@field AssetLoader_ UAssetLoader
---@field m_pCampSpr USprAsset
---@field m_pCampKeySpr USprAsset
---@field m_pCampPlg UPlgAsset
local UCmpQuest = {}



---@class UCmpRoot : UCmpMenuBase
---@field pRootDraw UCmpRootDraw
local UCmpRoot = {}



---@class UCmpRootDraw : UObject
---@field pUimTextCursorOn UUimAsset
---@field pUimCursorLoop UUimAsset
---@field pUimCursorInBounce UUimAsset
---@field pMenuItemInstanceDynamics TArray<UMaterialInstanceDynamic>
---@field pMetaricMaterial UMaterial
---@field pWriteMetaricMaterial UMaterial
---@field pWriteMetaricInstanceDynamics UMaterialInstanceDynamic
---@field pMainActor ACmpMainActor
local UCmpRootDraw = {}



---@class UCmpSkill : UCmpMenuBase
---@field pSkillDraw UCmpSkillDraw
---@field pSkillSystem UCmpSkillSystem
local UCmpSkill = {}



---@class UCmpSkillDraw : UObject
---@field pMainActor ACmpMainActor
local UCmpSkillDraw = {}



---@class UCmpSkillSystem : UObject
local UCmpSkillSystem = {}


---@class UCmpStatus : UCmpMenuBase
---@field Actor_ UUICmpStatus
local UCmpStatus = {}



---@class UCmpStatusCharacterList : UUIScene
---@field Owner_ UUICmpStatus
local UCmpStatusCharacterList = {}



---@class UCmpStatusCharacterListDraw : UObject
---@field pParent UUICmpStatus
---@field pMainActor ACmpMainActor
local UCmpStatusCharacterListDraw = {}



---@class UCmpSystem : UCmpMenuBase
---@field pSystemDraw UCmpSystemDraw
---@field pSystemSystem UCmpSystemSystem
---@field pSaveMenu AUISaveLoad
---@field pTutorial AUITutorial
---@field pDictionary AUIDictionary
---@field pTutorialDrawClass TSubclassOf<AUITutorialDraw>
---@field pConfig AUIConfiguration
local UCmpSystem = {}

---@param Actor AActor
---@param EndPlayReason EEndPlayReason::Type
function UCmpSystem:OnEndPlaySubProcess(Actor, EndPlayReason) end


---@class UCmpSystemDraw : UObject
---@field SubMenuMateDynamicAry TArray<UMaterialInstanceDynamic>
---@field pMainActor ACmpMainActor
---@field pParent UCmpSystem
local UCmpSystemDraw = {}



---@class UCmpSystemSystem : UObject
---@field pCmpMainActor ACmpMainActor
---@field pSaveMenu AUISaveLoad
---@field pRestoreMenu AUIRestore
local UCmpSystemSystem = {}



---@class UCoefficientDataAsset : UAppMultiDataAsset
---@field GeneralTable TArray<FCoefficientInfo>
---@field UniqTables TArray<FUniqCoefficient>
local UCoefficientDataAsset = {}



---@class UCollisionActor : UActorComponent
---@field mpSphere USphereComponent
local UCollisionActor = {}

---@param OverlappedComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UCollisionActor:OnEndOverlapSphere(OverlappedComp, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UCollisionActor:OnBeginOverlapSphere(OverlappedComp, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UCombineCounterDataAsset : UAppDataAsset
---@field Data TArray<FCombineCounterItem>
local UCombineCounterDataAsset = {}



---@class UCombineMiscDataAsset : UAppDataAsset
---@field AccidentBaseRate float
---@field FoolAccidentRate float
---@field AccidentMinLv int16
---@field AccidentMaxLv int16
---@field SkillChangeBaseRate float
---@field SkillBuildUpRate float
---@field SkillChanges TArray<float>
---@field SkillWeights TArray<float>
local UCombineMiscDataAsset = {}



---@class UCommonItemListTable : UAppDataAsset
---@field Data TArray<FCommonItemList>
local UCommonItemListTable = {}



---@class UCommunityEventDataAsset : UAppMultiDataAsset
---@field Tables TArray<FCommunityEventTable>
local UCommunityEventDataAsset = {}



---@class UCommunityHandler : UObject
---@field pEventDataAsset UCommunityEventDataAsset
---@field pHolidayEventDataAsset UHolidayEventDataAsset
---@field pHolidayScheduleDataAsset UHolidayScheduleDataAsset
---@field pMemberFormatTable UDataTable
---@field pNameFormatTable UDataTable
---@field pCoefficientDataAsset UCoefficientDataAsset
---@field pPresentDataAsset UCommunityPresentDataAsset
---@field pMoviesEventDataAsset UMoviesEventDataAsset
---@field pSummerFestivalEventDataAsset USummerFestivalEventDataAsset
---@field pChristmasEventDataAsset UChristmasEventDataAsset
---@field pEventManager ACommunityEventManager
local UCommunityHandler = {}



---@class UCommunityPresentDataAsset : UAppMultiDataAsset
---@field Tables TArray<FCommunityPresentTable>
local UCommunityPresentDataAsset = {}



---@class UCommunityRankDataAsset : UAppDataAsset
---@field Data TArray<FCommunityRankItem>
local UCommunityRankDataAsset = {}



---@class UCommunityWork : UObject
---@field pAssetLoader UAssetLoader
---@field pCommunityHandle UCommunityHandler
---@field pVeveWork UVeveWork
---@field pHeroParameterHandle UHeroParameterHandle
local UCommunityWork = {}



---@class UConfigBGMSelectDialog : UObject
local UConfigBGMSelectDialog = {}


---@class UConfigDialog : UObject
---@field OnConfirm FConfigDialogOnConfirm
local UConfigDialog = {}



---@class UConfigDungeonBGMSelectDialog : UObject
local UConfigDungeonBGMSelectDialog = {}


---@class UCostumeItemListTable : UAppDataAsset
---@field Data TArray<FCostumeItemList>
local UCostumeItemListTable = {}



---@class UDEPRECATED_AtlEvtSubsystemDraft : UGameInstanceSubsystem
---@field OnFinishedDelegate FAtlEvtSubsystemDraftOnFinishedDelegate
---@field GlobalCount int32
local UDEPRECATED_AtlEvtSubsystemDraft = {}

function UDEPRECATED_AtlEvtSubsystemDraft:ResetGlobalCount() end
---@param WorldContextObject UObject
---@param EvtName FString
---@param Param FAtlEvtPlayParameter
function UDEPRECATED_AtlEvtSubsystemDraft:EvtPlay(WorldContextObject, EvtName, Param) end


---@class UDLCPersonaCombineBirthDataAsset : UAppDataAsset
---@field Data TArray<FDLCPersonaCombineBirthTable>
local UDLCPersonaCombineBirthDataAsset = {}



---@class UDatAffinityTable : UAppDataAsset
---@field Data TArray<FDatAffinityDataRecord>
local UDatAffinityTable = {}



---@class UDatAllyPersonaGrowthTable : UAppMultiDataAsset
---@field Data TArray<FDatAllyPersonaGrowthDataRecord>
local UDatAllyPersonaGrowthTable = {}



---@class UDatAnalyze : UObject
---@field Loader UAssetLoader
---@field TableAnalyzeSync UDataAsset
local UDatAnalyze = {}



---@class UDatAssetOverWriteEventTable : UAppDataAsset
---@field Data TArray<FDatAssetOverWriteEventDataTable>
local UDatAssetOverWriteEventTable = {}



---@class UDatAssetOverWriteTable : UAppDataAsset
---@field Data TArray<FDatAssetOverWriteDataTable>
local UDatAssetOverWriteTable = {}



---@class UDatAttrNameTable : UAppDataAsset
---@field Data TArray<FText>
local UDatAttrNameTable = {}



---@class UDatBagEnableTable : UAppDataAsset
---@field Data TArray<FDatBagEnableDataTable>
local UDatBagEnableTable = {}



---@class UDatBtlCommon : UObject
---@field Loader UAssetLoader
---@field Table UDataAsset
---@field TableCalcPANICDropItem UDataAsset
---@field TableCalcPANICUseItem UDataAsset
---@field TableEncountEnemyBadPercent UDataAsset
local UDatBtlCommon = {}



---@class UDatBtlCommonNameTable : UAppDataAsset
---@field Data TArray<FDatBtlCommonName>
local UDatBtlCommonNameTable = {}



---@class UDatBtlMixraidReleaseTable : UAppDataAsset
---@field Data TArray<FDatBtlMixraidReleaseRecord>
local UDatBtlMixraidReleaseTable = {}



---@class UDatBtlTheurgiaBoostTable : UAppDataAsset
---@field Data TArray<FDatBtlTheurgiaBoostRecord>
local UDatBtlTheurgiaBoostTable = {}



---@class UDatCalcPANICDropItemTable : UAppDataAsset
---@field Data TArray<FDatCalcPANICDropItemRecord>
local UDatCalcPANICDropItemTable = {}



---@class UDatCalcPANICUseItemTable : UAppDataAsset
---@field Data TArray<FDatCalcPANICUseItemRecord>
local UDatCalcPANICUseItemTable = {}



---@class UDatDataOffTable : UAppDataAsset
---@field Data TArray<FDatDataOffDataTable>
local UDatDataOffTable = {}



---@class UDatDlcBgmTable : UAppDataAsset
---@field Data TArray<FDatDlcBgmTableData>
local UDatDlcBgmTable = {}



---@class UDatDlcDungeonBgmTable : UAppDataAsset
---@field Data TArray<FDatDlcDungeonBgmTableData>
local UDatDlcDungeonBgmTable = {}



---@class UDatEncount : UObject
---@field Loader UAssetLoader
---@field TableEncount UDataAsset
local UDatEncount = {}



---@class UDatEncountEnemyBadPercentTable : UAppDataAsset
---@field Data TArray<FDatEncountEnemyBadPercentRecord>
local UDatEncountEnemyBadPercentTable = {}



---@class UDatEncountTable : UAppDataAsset
---@field Data TArray<FDatEncountDataRecord>
local UDatEncountTable = {}



---@class UDatEnemy : UObject
---@field Loader UAssetLoader
---@field TableEnemy UDataAsset
---@field TableName UDataAsset
---@field TableAttr UDataAsset
local UDatEnemy = {}



---@class UDatEnemyAnalyzeSyncTable : UAppDataAsset
---@field Data TArray<FDatEnemyAnalyzeSyncDataRecord>
local UDatEnemyAnalyzeSyncTable = {}



---@class UDatEnemyNameTable : UAppDataAsset
---@field Data TArray<FDatEnemyName>
local UDatEnemyNameTable = {}



---@class UDatEnemyTable : UAppDataAsset
---@field Data TArray<FDatEnemyDataRecord>
local UDatEnemyTable = {}



---@class UDatFadeOutTable : UAppDataAsset
---@field Data TArray<FDatFadeOutDataTable>
local UDatFadeOutTable = {}



---@class UDatFontAdjustment : UObject
---@field Loader UAssetLoader
---@field TableFontAdjustment UFontAdjustmentListTable
local UDatFontAdjustment = {}



---@class UDatItem : UObject
---@field Loader UAssetLoader
---@field TableAccs UDataAsset
---@field TableArmor UDataAsset
---@field TableCommon UDataAsset
---@field TableCostume UDataAsset
---@field TableEvitem UDataAsset
---@field TableMaterial UDataAsset
---@field TableShoes UDataAsset
---@field TableSkillcard UDataAsset
---@field TableWeapon UDataAsset
---@field TableAccsName UDataAsset
---@field TableArmorName UDataAsset
---@field TableCommonName UDataAsset
---@field TableCostumeName UDataAsset
---@field TableEvitemName UDataAsset
---@field TableMaterialName UDataAsset
---@field TableShoesName UDataAsset
---@field TableSkillcardName UDataAsset
---@field TableWeaponName UDataAsset
---@field mActor_ ADatItemActor
local UDatItem = {}



---@class UDatMiniMapInfo : UGameInstanceSubsystem
---@field m_aInfoList TArray<FMiniMapInfoTable>
local UDatMiniMapInfo = {}



---@class UDatMiniMapOffset : UGameInstanceSubsystem
---@field m_aOffsetList TArray<FMiniMapOffsetTable>
local UDatMiniMapOffset = {}



---@class UDatObjectVisibleTable : UAppDataAsset
---@field Data TArray<FDatObjectVisibleDataTable>
local UDatObjectVisibleTable = {}



---@class UDatPersona : UObject
---@field Loader UAssetLoader
---@field TablePersona UDataAsset
---@field TableAttr UDataAsset
---@field TableName UDataAsset
---@field TableGrowth UDataAsset
---@field TableAllyGrowth UDataAsset
---@field TableAstreaPersonaBook UDataTable
local UDatPersona = {}



---@class UDatPersonaCombineAdjustTable : UAppDataAsset
---@field Data TArray<FDatPersonaCombineAdjustDataTable>
local UDatPersonaCombineAdjustTable = {}



---@class UDatPersonaGrowthTable : UAppDataAsset
---@field Data TArray<FDatPersonaGrowthDataRecord>
local UDatPersonaGrowthTable = {}



---@class UDatPersonaNameTable : UAppDataAsset
---@field Data TArray<FDatPersonaName>
local UDatPersonaNameTable = {}



---@class UDatPersonaTable : UAppDataAsset
---@field Data TArray<FDatPersonaDataRecord>
local UDatPersonaTable = {}



---@class UDatPlayer : UObject
---@field Loader UAssetLoader
---@field TableLevelup UDataAsset
---@field TableMaxHPSP UDataAsset
---@field MaxHPSPDataCache UDatPlayerMaxHPSPTable
---@field TableName UDataAsset
---@field TableFitstName UDataAsset
---@field TableLastName UDataAsset
local UDatPlayer = {}



---@class UDatPlayerFirstNameTable : UAppDataAsset
---@field Data TArray<FDatPlayerNameOne>
local UDatPlayerFirstNameTable = {}



---@class UDatPlayerLastNameTable : UAppDataAsset
---@field Data TArray<FDatPlayerNameOne>
local UDatPlayerLastNameTable = {}



---@class UDatPlayerLevelUpTable : UAppDataAsset
---@field Data TArray<FDatPlayerLevelUpDataRecord>
local UDatPlayerLevelUpTable = {}



---@class UDatPlayerMaxHPSPTable : UAppDataAsset
---@field Data TArray<FDatPlayerMaxHPSPBunch>
local UDatPlayerMaxHPSPTable = {}



---@class UDatPlayerMaxHPSPTableExtra : UDatPlayerMaxHPSPTable
local UDatPlayerMaxHPSPTableExtra = {}


---@class UDatPlayerNameTable : UAppDataAsset
---@field Data TArray<FDatPlayerNameOne>
local UDatPlayerNameTable = {}



---@class UDatRace : UObject
---@field Loader UAssetLoader
---@field Table UDataAsset
local UDatRace = {}



---@class UDatRaceTable : UAppDataAsset
---@field Data TArray<FDatRaceTableRecord>
local UDatRaceTable = {}



---@class UDatSaveDataLocalization : UGameInstanceSubsystem
local UDatSaveDataLocalization = {}


---@class UDatShuffleArcanaNameTable : UAppDataAsset
---@field Data TArray<FDatShuffleArcanaNameRecord>
local UDatShuffleArcanaNameTable = {}



---@class UDatShuffleCard : UObject
---@field Loader UAssetLoader
---@field TableName UDataAsset
---@field TableChoiceMajor UDataAsset
---@field TableChoiceMinor UDataAsset
---@field TablePersona UDataAsset
---@field TableWand UDataAsset
---@field TableCoin UDataAsset
---@field TableCup UDataAsset
---@field TableSword UDataAsset
---@field TableFool UDataAsset
---@field TableMagician UDataAsset
---@field TableLovers UDataAsset
---@field TableFortune UDataAsset
---@field TableStrength UDataAsset
---@field TableHangedman UDataAsset
local UDatShuffleCard = {}



---@class UDatShuffleChoiceMajorArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleChoiceMajorArcanaRecord>
local UDatShuffleChoiceMajorArcanaTable = {}



---@class UDatShuffleChoiceMinorArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleChoiceMinorArcanaRecord>
local UDatShuffleChoiceMinorArcanaTable = {}



---@class UDatShuffleCoinArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleCoinArcanaRecord>
local UDatShuffleCoinArcanaTable = {}



---@class UDatShuffleCommonCoefficientArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleCommonCoefficientArcanaRecord>
local UDatShuffleCommonCoefficientArcanaTable = {}



---@class UDatShuffleCommonItemdropArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleCommonItemdropArcanaRecord>
local UDatShuffleCommonItemdropArcanaTable = {}



---@class UDatShuffleCupArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleCupArcanaRecord>
local UDatShuffleCupArcanaTable = {}



---@class UDatShuffleLoversArcanaTable : UAppDataAsset
---@field Data TArray<FDatShuffleLoversArcanaRecord>
local UDatShuffleLoversArcanaTable = {}



---@class UDatShufflePersonaArcanaTable : UAppDataAsset
---@field Data TArray<FDatShufflePersonaArcanaRecord>
local UDatShufflePersonaArcanaTable = {}



---@class UDatSkill : UObject
---@field Loader UAssetLoader
---@field TableName UDataAsset
---@field TableSkill UDataAsset
---@field TableNormal UDataAsset
---@field TableAttrName UDataAsset
local UDatSkill = {}



---@class UDatSkillNameTable : UAppDataAsset
---@field Data TArray<FText>
local UDatSkillNameTable = {}



---@class UDatSkillNormalTable : UAppDataAsset
---@field Data TArray<FDatNormalSkillTableRecord>
local UDatSkillNormalTable = {}



---@class UDatSkillTable : UAppDataAsset
---@field Data TArray<FDatSkillTableRecord>
local UDatSkillTable = {}



---@class UDatSuggestion : UObject
---@field Loader UAssetLoader
---@field TableSuggestion UDataAsset
---@field TableSuggestionText UDataAsset
local UDatSuggestion = {}



---@class UDatSupportInfo : UObject
---@field Loader UAssetLoader
---@field TableSupportInfo UDataAsset
local UDatSupportInfo = {}



---@class UDatSupportInfoTable : UAppDataAsset
---@field Data TArray<FDatSupportInfoTableRecord>
local UDatSupportInfoTable = {}



---@class UDatSystemText : UObject
---@field Loader UAssetLoader
---@field DataTable UDataTable
---@field DataTableEx UDataTable
---@field SystemTextTable TMap<int32, FString>
local UDatSystemText = {}



---@class UDatTableTypes : UObject
local UDatTableTypes = {}


---@class UDatTheurgia : UObject
---@field Loader UAssetLoader
---@field TableTheurgiaBoost UDataAsset
---@field TableTheurgiaBoostBoss UDataAsset
---@field TableMixraidRelease UDataAsset
---@field TheurgiaFlavorText UBmdAsset
local UDatTheurgia = {}



---@class UDatTownMapInfo : UGameInstanceSubsystem
---@field m_aTownMapInfoList TArray<FTownMapInfoTable>
---@field m_aNameList TArray<FTownMapInfoNameTable>
---@field m_aDetailTextList TArray<FTownMapDetailTextTable>
local UDatTownMapInfo = {}



---@class UDatTownMapRestrictions : UGameInstanceSubsystem
local UDatTownMapRestrictions = {}


---@class UDatTownMapTime : UGameInstanceSubsystem
local UDatTownMapTime = {}


---@class UDatUICalendarText : UObject
---@field Loader UAssetLoader
---@field MonthTable UDataTable
---@field DateTable UDataTable
---@field DayOfWeekTable UDataTable
---@field MonthTexts TArray<FString>
---@field DateTexts TArray<FString>
---@field DayOfWeekTexts TArray<FString>
local UDatUICalendarText = {}



---@class UDatUIText : UGameInstanceSubsystem
local UDatUIText = {}


---@class UDatUIUseText : UObject
---@field Loader UAssetLoader
---@field DataTable UDataTable
---@field UIUseTextTable TMap<int32, FString>
local UDatUIUseText = {}



---@class UDatUnit : UObject
local UDatUnit = {}


---@class UDebugMenu : UDebugMenuBase
local UDebugMenu = {}


---@class UDemoFuncLib : UBlueprintFunctionLibrary
local UDemoFuncLib = {}


---@class UDictionaryTableDataAsset : UAppDataAsset
---@field Tables TArray<FDictionaryTableData>
local UDictionaryTableDataAsset = {}



---@class UDisappearDataAsset : UAppDataAsset
---@field Data TMap<uint16, FDisappearItem>
local UDisappearDataAsset = {}



---@class UDungeonAssetData : UObject
---@field m_pObject UObject
---@field m_pSyncData UDungeonAssetData
local UDungeonAssetData = {}



---@class UDungeonSoundDataAssets : UObject
---@field pAssetLoader UAssetLoader
---@field pDlcDungeonBgm UDataAsset
local UDungeonSoundDataAssets = {}



---@class UDungeonSoundTableTypes : UObject
local UDungeonSoundTableTypes = {}


---@class UErrorDialog : UObject
local UErrorDialog = {}


---@class UEventSkipWidgetDelegate : UUserWidget
---@field OnEventDispather FEventSkipWidgetDelegateOnEventDispather
local UEventSkipWidgetDelegate = {}

---@param InSetEffect boolean
function UEventSkipWidgetDelegate:CallDelegate(InSetEffect) end


---@class UEvitemItemListTable : UAppDataAsset
---@field Data TArray<FEvitemItemList>
local UEvitemItemListTable = {}



---@class UEvtDataAssets : UObject
local UEvtDataAssets = {}


---@class UEvtDataLoad : UObject
---@field pAssetLoader UAssetLoader
---@field pDataOffTable UDataAsset
---@field pFadeOutTable UDataAsset
---@field pAssetOverWriteTable UDataAsset
---@field pAssetOverWriteEventTable UDataAsset
---@field pBagEnableTable UDataAsset
---@field pEvtPreDataTable UDataAsset
---@field pPersonaCombineAdjustTable UDataAsset
---@field pObjectVisibleTable UDataAsset
local UEvtDataLoad = {}



---@class UEvtManagerStateBacklog : UEvtManagerStateBase
---@field UIBackLogActor AUIBackLog
local UEvtManagerStateBacklog = {}

function UEvtManagerStateBacklog:OnBackLogFinishDelegte() end


---@class UEvtManagerStateBase : UObject
---@field EvtPauseActor AAtlEvtEventManager_PauseActor
local UEvtManagerStateBase = {}



---@class UEvtManagerStateExit : UEvtManagerStateBase
local UEvtManagerStateExit = {}


---@class UEvtManagerStateNetAnswer : UEvtManagerStateBase
---@field UINetAnswerActor AUIVoiceAnswer
local UEvtManagerStateNetAnswer = {}

function UEvtManagerStateNetAnswer:OnNetAnswerFinishDelegte() end


---@class UEvtManagerStatePlaying : UEvtManagerStateBase
local UEvtManagerStatePlaying = {}


---@class UEvtTableTypes : UObject
local UEvtTableTypes = {}


---@class UEvtTextureForOnePicture : UObject
---@field Texture UTexture2D
---@field AssetLoader UAssetLoader
local UEvtTextureForOnePicture = {}



---@class UFadePgBattleEventWipe : UFadeProgramBase
---@field pActor AFadePgBattleEventWipeActor
---@field LoadClass TSubclassOf<AFadePgBattleEventWipeActor>
---@field pAssetLoader UAssetLoader
---@field m_bLoading boolean
---@field m_bLoaded boolean
---@field m_bMainLoaded boolean
---@field m_bIsAnimation boolean
---@field requestNo int32
local UFadePgBattleEventWipe = {}



---@class UFadePgBattleResult : UFadeProgramBase
---@field m_PgBtlResultWipe FPgBtlResultWipe
local UFadePgBattleResult = {}



---@class UFadePgBattleResultEnd : UFadePgBattleResult
local UFadePgBattleResultEnd = {}


---@class UFadePgCircle : UFadeProgramBase
local UFadePgCircle = {}


---@class UFadePgColorOut : UFadeProgramBase
local UFadePgColorOut = {}


---@class UFadePgCrossFade : UFadeProgramBase
local UFadePgCrossFade = {}


---@class UFadePgDarkHour : UFadeProgramBase
---@field Work FDarkHourWork
local UFadePgDarkHour = {}



---@class UFadePgSlide : UFadeProgramBase
local UFadePgSlide = {}


---@class UFadePgSlideVertical : UFadeProgramBase
local UFadePgSlideVertical = {}


---@class UFadePgSlideVerticalInverse : UFadeProgramBase
local UFadePgSlideVerticalInverse = {}


---@class UFadePgVelvet : UFadeProgramBase
---@field m_velvetWipe FVelvetWipe
local UFadePgVelvet = {}



---@class UFadePgVelvetReturn : UFadeProgramBase
---@field m_velvetWipe FVelvetWipe
local UFadePgVelvetReturn = {}



---@class UFadePlayer : UObject
---@field Programs_ TArray<UFadeProgramBase>
local UFadePlayer = {}

---@param R float
---@param G float
---@param B float
function UFadePlayer:SetColor(R, G, B) end
---@param DeltaTime float
function UFadePlayer:OnTick(DeltaTime) end
---@return boolean
function UFadePlayer:IsFilled() end
---@return boolean
function UFadePlayer:IsFading() end
---@return boolean
function UFadePlayer:IsExistNextFade() end
---@return float
function UFadePlayer:GetRemainDuration() end
---@param Inverse boolean
---@return float
function UFadePlayer:GetProgressRate(Inverse) end
---@return EFadingState
function UFadePlayer:GetFadingState() end
---@return EFadeMode
function UFadePlayer:GetFadeMode() end
---@return float
function UFadePlayer:GetFadeDuration() end
---@param Type int32
---@return FFadeProperties
function UFadePlayer:GetDefaultProperties(Type) end
---@return float
function UFadePlayer:GetCurrentStateTime() end
---@return FColor
function UFadePlayer:GetColor() end
---@param Type int32
---@param Props FFadeProperties
function UFadePlayer:FadeOut(Type, Props) end
---@param Type int32
---@param Props FFadeProperties
function UFadePlayer:FadeIn(Type, Props) end


---@class UFadeProgramBase : UObject
local UFadeProgramBase = {}


---@class UFileNameListAssets : UAppDataAsset
---@field Data TArray<FFileNameList>
local UFileNameListAssets = {}



---@class UFileNameManager : UObject
---@field Loader UAssetLoader
---@field TableFileName UDataAsset
---@field mActor_ AUFileNameManagerrActor
local UFileNameManager = {}



---@class UFldAnimalCompCore : UFldLocalActorComp
---@field mIndex_ int32
---@field bIsEscape_ boolean
---@field bIsNotComeBack_ boolean
---@field mSceneOutTimeFix_ float
---@field mSceneOutTimeRnd_ float
---@field mEscapeRadius_ float
---@field mParamater_ FFldAnimalParam
---@field mEscapeVector_ FVector
---@field mOwnerAnimal_ AAppPropsCore
---@field mInitDisp_ boolean
---@field mInitTransform_ FTransform
---@field mEscapeHit_ AFldAnimalHit
---@field mOverlapTargets_ TArray<AActor>
local UFldAnimalCompCore = {}

---@param InWorld UWorld
---@param InIndex int32
---@param InClassPtr TSubclassOf<AAppPropsCore>
---@param InTransform FTransform
---@param InOwner AActor
---@return AAppPropsCore
function UFldAnimalCompCore:CreateAnimalActor(InWorld, InIndex, InClassPtr, InTransform, InOwner) end


---@class UFldAnimalComp_BIRD : UFldAnimalCompCore
---@field bWalkAfterLanding_ boolean
---@field mFlyPitch_ float
---@field mFlyAwayTime_ float
---@field mFlyAwayDist_ float
---@field mComebackTime_ float
---@field mComebackDist_ float
---@field bAutoFlyAway_ boolean
---@field mAutoFlyAwayTimeFix_ float
---@field mAutoFlyAwayTimeRnd_ float
---@field mAutoFlyAwayYaw_ float
---@field bIsMove_ boolean
---@field mMoveTimeFix_ float
---@field mMoveTimeRnd_ float
---@field mMoveDist_ float
---@field mMoveRadius_ float
local UFldAnimalComp_BIRD = {}



---@class UFldAnimalComp_CAT : UFldAnimalCompCore
---@field mMotionPattern_ TArray<FFldCatMotionList>
---@field mEscapeTime_ float
---@field mEscapeDist_ float
---@field mComebackDist_ float
---@field bEscapeYawFixed_ boolean
---@field mEscapeFixedYaw_ float
---@field bAutoWalkAway_ boolean
---@field mAutoWalkAwayTimeFix_ float
---@field mAutoWalkAwayTimeRnd_ float
---@field mAutoWalkAwayYaw_ float
---@field mAutoWalkAwayDist_ float
---@field bFixedMove_ boolean
---@field mFixedMoveTimeFix_ float
---@field mFixedMoveTimeRnd_ float
---@field mFixedMoveTransform_ FTransform
local UFldAnimalComp_CAT = {}



---@class UFldAnimalComp_PIGEON : UFldAnimalComp_BIRD
---@field mRunAwayDist_ float
---@field mHeroNearDist_ float
local UFldAnimalComp_PIGEON = {}



---@class UFldBpFuncLib : UBlueprintFunctionLibrary
local UFldBpFuncLib = {}

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldBpFuncLib:SyncFade(WorldContextObject, LatentInfo) end
---@param Type int32
---@param Frame int32
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldBpFuncLib:StartFadeOUT(Type, Frame, WorldContextObject, LatentInfo) end
---@param Type int32
---@param Frame int32
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldBpFuncLib:StartFadeIN(Type, Frame, WorldContextObject, LatentInfo) end
---@param WorldContextObject UObject
---@param LevelAssetPath FString
---@return boolean
function UFldBpFuncLib:ShowSubLevellOrigin(WorldContextObject, LevelAssetPath) end
---@param Component USkeletalMeshComponent
---@param NewUpdateState boolean
function UFldBpFuncLib:SetSkelMeshCompUpdateAnimationInEditor(Component, NewUpdateState) end
---@param FlagName FName
---@param OnOff boolean
function UFldBpFuncLib:SetLocalFlag(FlagName, OnOff) end
---@param CntName FName
---@param Value int32
function UFldBpFuncLib:SetLocalCounter(CntName, Value) end
---@param WorldContextObject UObject
---@param LevelAssetPath FString
function UFldBpFuncLib:RequestUnloadSubLevellOrigin(WorldContextObject, LevelAssetPath) end
---@param WorldContextObject UObject
---@param LevelAssetPath FString
function UFldBpFuncLib:RequestLoadSubLevelOrigin(WorldContextObject, LevelAssetPath) end
---@param WorldContextObject UObject
---@param LevelAssetPath FString
---@return boolean
function UFldBpFuncLib:HideSubLevellOrigin(WorldContextObject, LevelAssetPath) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@return EFldLoadPersistentType
function UFldBpFuncLib:GetPersistentType(FieldMajorID, FieldMinorID) end
---@param FlagName FName
---@param RetFlag EFldBpRetFlag
function UFldBpFuncLib:GetLocalFlag(FlagName, RetFlag) end
---@param CntName FName
---@return int32
function UFldBpFuncLib:GetLocalCounter(CntName) end
---@param ControlValue float
function UFldBpFuncLib:FldSoundManagerSetAisacValue_FRONT_VELVETROOM(ControlValue) end
---@param NpcMajorID int32
---@param NpcMinorID int32
---@param ToHide boolean
function UFldBpFuncLib:FldSetDisableNpcActor(NpcMajorID, NpcMinorID, ToHide) end
---@param SubLevelTable UDataTable
---@param DataTable UDataTable
function UFldBpFuncLib:FldLibUpdateNpcLayoutTable(SubLevelTable, DataTable) end
---@param SubLevelTable UDataTable
---@param DataTable UDataTable
function UFldBpFuncLib:FldLibUpdateCmmNpcLayoutTable(SubLevelTable, DataTable) end
---@return AActor
function UFldBpFuncLib:FldGetPlayerActor() end
function UFldBpFuncLib:FldDispCriAtomExDebugResourcesInfo() end
function UFldBpFuncLib:FldCommitViewports() end
---@param WorldContextObject UObject
---@param LevelName FString
---@param Result EFldBpRetBool
function UFldBpFuncLib:CheckRegistedSubLevel(WorldContextObject, LevelName, Result) end
function UFldBpFuncLib:CheckLoadedCommonDataSyncBlock() end
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldBpFuncLib:CheckLoadedCommonData(WorldContextObject, LatentInfo) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@param TotalDay int32
---@param TimeZone ECldTimeZone
---@param StartID int32
function UFldBpFuncLib:CallFieldLevel(FieldMajorID, FieldMinorID, TotalDay, TimeZone, StartID) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@param TotalDay int32
---@param TimeZone ECldTimeZone
---@param eventId int32
---@param PlayerStartID int32
function UFldBpFuncLib:CallFieldKeyFreeEventLevel(FieldMajorID, FieldMinorID, TotalDay, TimeZone, eventId, PlayerStartID) end


---@class UFldCameraBehaviorBase : UActorComponent
---@field BaseOwner AFldCameraBase
---@field ForwardType EFldCameraForwardType
---@field FreeForward AActor
local UFldCameraBehaviorBase = {}



---@class UFldCameraBehaviorFixed : UFldCameraBehaviorBase
---@field FixedYaw float
---@field FixedPitch float
---@field MarginYaw float
---@field MarginPitch float
---@field RotSpeed float
---@field MarginForward boolean
local UFldCameraBehaviorFixed = {}



---@class UFldCameraBehaviorFree : UFldCameraBehaviorBase
---@field DrivedOwner AFldCameraFree
---@field Player FFldPlayerHolder
---@field YawParam FldCameraRotParam
---@field PitchParam FldCameraRotParam
---@field CorrectionParam FldCameraCorrectionParam
---@field SlopeParam FldCameraSlopeParam
---@field FarLength float
---@field NearLength float
---@field Offset FVector
---@field ZoomTime float
---@field InitialPitch float
---@field DefaultMoveSpeed float
---@field NormalFov float
---@field DashFov float
---@field FovAnimSpeed float
---@field ExtrusionSpeed float
---@field UpLimitBegin float
---@field UpLimitEnd float
---@field UpLimitLength float
---@field UpLimitOffset FVector
---@field DownLimitBegin float
---@field DownLimitEnd float
---@field DownLimitLength float
---@field DownLimitOffset FVector
---@field BlurAmount float
---@field PushOutOffset float
---@field State EFldCameraBehaviorFreeState
---@field NextState EFldCameraBehaviorFreeState
---@field StoredInput FVector
---@field AnimTime float
---@field ResetParam FldCameraParam
---@field bResetDirectionOnce boolean
local UFldCameraBehaviorFree = {}



---@class UFldCameraTransBase : UAppActorComponent
---@field bIdentifyAngle boolean
---@field ComplementaryAngle float
local UFldCameraTransBase = {}



---@class UFldCameraTransLinear : UFldCameraTransBase
---@field TotalTime float
local UFldCameraTransLinear = {}



---@class UFldCameraUtility : UBlueprintFunctionLibrary
local UFldCameraUtility = {}


---@class UFldCharAccessIconMngComp : UFldLocalActorComp
---@field mCharaBaseComp_ UAppCharBaseComp
---@field mIconActor_ AActor
local UFldCharAccessIconMngComp = {}



---@class UFldCharAttackAnimNotify : UAnimNotify
---@field flag EFldCharAttackAnimNotifyFlag
---@field bEnable boolean
local UFldCharAttackAnimNotify = {}



---@class UFldCharAttackLongRangeAnimNotify : UAnimNotify
---@field flag EFldCharAttackAnimNotifyFlag
---@field bEnable boolean
local UFldCharAttackLongRangeAnimNotify = {}



---@class UFldCharDashAttackAnimNotify : UAnimNotify
---@field flag EFldCharAttackAnimNotifyFlag
---@field bEnable boolean
local UFldCharDashAttackAnimNotify = {}



---@class UFldCharDataAsset : UDataAsset
---@field DailySpeed FFldCharSpeed
---@field DungeonSpeed FFldCharSpeed
---@field MajorBg TMap<int32, FFldCharMajorBgData>
---@field Player FFldPlayerData
---@field Partner FFldPartnerData
---@field Key FFldCharKeyParam
local UFldCharDataAsset = {}

function UFldCharDataAsset:PlayerOutputLog() end


---@class UFldCharEmotionIconMngComp : UFldLocalActorComp
---@field mCharaBaseComp_ UAppCharBaseComp
---@field mHandwritingSpawner_ AHandwritingSpawner
local UFldCharEmotionIconMngComp = {}



---@class UFldCharParamTable : UObject
---@field Path TSoftObjectPtr<UFldCharDataAsset>
---@field Data UFldCharDataAsset
---@field bLoaded boolean
local UFldCharParamTable = {}



---@class UFldCharPersonalMotionComp : UFldLocalActorComp
---@field mIdolTime_FIX_ float
---@field mIdolTime_RAND_ float
---@field mBlendTime_START_ float
---@field mBlendTime_END_ float
---@field mCharComp_ UAppCharBaseComp
---@field mTimer_ float
---@field mMaxTime_ float
---@field mAnimMontage_ UAnimMontage
---@field mMotionList_BASE_ TArray<FFldPersonalMotionData>
---@field mMotionList_ TArray<FFldPersonalMotionData>
local UFldCharPersonalMotionComp = {}



---@class UFldCharSysBPFL : UBlueprintFunctionLibrary
local UFldCharSysBPFL = {}

---@param Target USkeletalMeshComponent
---@param Anim UAnimSequenceBase
---@param Loop boolean
---@return UAnimMontage
function UFldCharSysBPFL:PlayAnimSequence(Target, Anim, Loop) end


---@class UFldCommonData : UObject
---@field mActor_ AFldCmnDataActor
---@field mTvProgramActor_ AFldTvProgramScript
---@field mMailOrderActor_ AFldMailOrderScript
---@field mBossBattleActor_ AFldBossBattleScript
---@field mTableDat_ UDataTable
---@field mBpClass_ UClass
local UFldCommonData = {}



---@class UFldCrowdIdleBehaviorComp : UFldLocalActorComp
---@field mLoopPitchTime_ float
---@field mPitchRadius_ float
---@field mLoopRollTime_ float
---@field mRollRadius_ float
---@field mPitchTimer_ float
---@field mPitchDir_ int32
---@field mRollTimer_ float
---@field mRollDir_ int32
---@field mBaseRotator_ FRotator
---@field mForwardVector_ FVector
---@field mRightVector_ FVector
local UFldCrowdIdleBehaviorComp = {}

---@param DeltaTime float
function UFldCrowdIdleBehaviorComp:UpdateProc(DeltaTime) end


---@class UFldCrowdOpacityComp : UFldLocalActorComp
---@field mTargetOpacity_ float
---@field mSpeed_ float
---@field mInvisibleRadius_ float
---@field mDisappearRadius_ float
---@field mOpacity_ float
---@field mTransparency_ FAppCharTransparency
local UFldCrowdOpacityComp = {}

---@param DeltaTime float
function UFldCrowdOpacityComp:UpdateProc(DeltaTime) end


---@class UFldCrowdWalkOpacityComp : UFldCrowdOpacityComp
---@field mSpeedLoc_ float
---@field mInvisibleRadiusLoc_ float
---@field mDisappearRadiusLoc_ float
---@field mStartPoint_ FVector
---@field mEndPoint_ FVector
---@field mOpacityLoc_ float
local UFldCrowdWalkOpacityComp = {}

---@param StartPoint FVector
---@param EndPoint FVector
function UFldCrowdWalkOpacityComp:SetPointLocation(StartPoint, EndPoint) end


---@class UFldDoorPointComp : USceneComponent
local UFldDoorPointComp = {}


---@class UFldDungeonAccidentController : UFldDungeonComponentBase
local UFldDungeonAccidentController = {}


---@class UFldDungeonBrokenObjController : UFldDungeonComponentBase
---@field m_BrokenActor TArray<AFldDungeonObjectActor>
---@field m_LayoutArray TArray<AFldDungeonLayoutBrokenActor>
local UFldDungeonBrokenObjController = {}

---@param EventType EDungeonObjHitEvent
---@param ID int32
---@param pObject AFldDungeonObjectActor
function UFldDungeonBrokenObjController:HitEvent(EventType, ID, pObject) end


---@class UFldDungeonClockController : UFldDungeonComponentBase
---@field m_ClockActor AFldDungeonObjectActor
---@field m_pLayoutClock AFldDungeonLayoutActor
local UFldDungeonClockController = {}



---@class UFldDungeonComponentBase : UAppActorComponent
---@field m_ScrHandleList01 TArray<AFldDungeonScriptActor>
---@field m_ScrHandleList02 TArray<AFldDungeonScriptActor>
---@field m_Name FName
local UFldDungeonComponentBase = {}



---@class UFldDungeonDebugController : UFldDungeonComponentBase
local UFldDungeonDebugController = {}


---@class UFldDungeonEffectController : UFldDungeonComponentBase
---@field m_EffectActor TArray<AFldDungeonEffectActor>
local UFldDungeonEffectController = {}



---@class UFldDungeonEffectTartarosSearch : UAppActorComponent
---@field LifeSpan float
---@field Intensity float
---@field MaxBrightness float
---@field Radius float
local UFldDungeonEffectTartarosSearch = {}

---@return float
function UFldDungeonEffectTartarosSearch:GetRadius() end
---@return float
function UFldDungeonEffectTartarosSearch:GetMaxBrightness() end
---@return float
function UFldDungeonEffectTartarosSearch:GetLifeSpan() end
---@return float
function UFldDungeonEffectTartarosSearch:GetIntensity() end


---@class UFldDungeonEncountController : UFldDungeonComponentBase
---@field m_EnemyCompArray TArray<FFldEnemyHolder>
local UFldDungeonEncountController = {}



---@class UFldDungeonEnemyController : UFldDungeonComponentBase
---@field m_pLayoutDirectArray TArray<AFldDungeonLayoutDirectEnemyActor>
---@field m_EnemyList TArray<FFldEnemyHolder>
---@field m_DirectEnemy TMap<int32, FFldEnemyHolder>
---@field m_MonadEnemy TArray<FFldEnemyHolder>
---@field m_FDoorEnemy TArray<FFldEnemyHolder>
---@field m_Reaper TArray<FFldEnemyHolder>
---@field m_FixedLayoutArray TArray<AFldDungeonLayoutEnemyActor>
---@field m_FixedLayoutPathArray TArray<AFldDungeonLayoutActor>
---@field m_DesignLayoutArray TArray<AFldDungeonLayoutEnemyActor>
---@field m_DesignLayoutPathArray TArray<AFldDungeonLayoutActor>
---@field m_MonadLayoutArray TArray<AFldDungeonLayoutDirectEnemyActor>
local UFldDungeonEnemyController = {}

function UFldDungeonEnemyController:FixedFloorLoad() end
function UFldDungeonEnemyController:FixedFloorCreateActor() end
function UFldDungeonEnemyController:FixedFloorAdvanceProcess() end
function UFldDungeonEnemyController:DesignFloorLoad() end
function UFldDungeonEnemyController:DesignFloorCreateActor() end
function UFldDungeonEnemyController:DesignFloorAdvanceProcess() end
function UFldDungeonEnemyController:AutoFloorLoad() end
function UFldDungeonEnemyController:AutoFloorCreateActor() end
function UFldDungeonEnemyController:AutoFloorAdvanceProcess() end


---@class UFldDungeonEnvController : UFldDungeonComponentBase
---@field m_EnvActor TArray<AFldDungeonEnvActor>
---@field m_DungeonFilterTimeline UTimelineComponent
---@field m_DungeonFilterCurve UCurveFloat
---@field m_DungeonFilterMPC UMaterialParameterCollection
local UFldDungeonEnvController = {}

---@param Alpha float
function UFldDungeonEnvController:FadeOutDungeonFilter(Alpha) end


---@class UFldDungeonEventController : UFldDungeonComponentBase
local UFldDungeonEventController = {}


---@class UFldDungeonFloorFlags : UObject
local UFldDungeonFloorFlags = {}


---@class UFldDungeonFloorFlagsDataAsset : UDataAsset
---@field IDList TArray<FDungeonFloorFlagsIDData>
---@field FloorFlagsTbl FDungeonFloorFlagsDataTableRow
local UFldDungeonFloorFlagsDataAsset = {}

function UFldDungeonFloorFlagsDataAsset:SearchTag() end
function UFldDungeonFloorFlagsDataAsset:SearchFloor() end
function UFldDungeonFloorFlagsDataAsset:SearchFlag() end
function UFldDungeonFloorFlagsDataAsset:Input() end


---@class UFldDungeonForbiddenDoorController : UFldDungeonComponentBase
---@field m_pForbiddenDoors_Astrea TMap<int32, AFldDungeonPartActor>
---@field m_pForbiddenDoor AFldDungeonPartActor
---@field m_LayoutActor TArray<AFldDungeonLayoutActor>
local UFldDungeonForbiddenDoorController = {}



---@class UFldDungeonInfoSupportController : UFldDungeonComponentBase
local UFldDungeonInfoSupportController = {}


---@class UFldDungeonMissingController : UFldDungeonComponentBase
---@field m_pMissingPerson ANpcBaseCore
---@field m_pMisNpcSE AFldDungeonSoundBaseActor
---@field m_pPartRoom AFldDungeonPartActor
local UFldDungeonMissingController = {}



---@class UFldDungeonParamDataAsset : UDataAsset
---@field ParamData FDungeonParamDataTableRow
local UFldDungeonParamDataAsset = {}

function UFldDungeonParamDataAsset:ImportLevelPathOfTartarus() end
function UFldDungeonParamDataAsset:ImportLevelPathOfAstrea() end
function UFldDungeonParamDataAsset:ImportDataPathOfTartarus() end
function UFldDungeonParamDataAsset:ImportDataPathOfAstrea() end
function UFldDungeonParamDataAsset:GenEnemyModelIdOfTartarus() end
function UFldDungeonParamDataAsset:GenEnemyModelIdOfAstrea() end
function UFldDungeonParamDataAsset:DelResetData() end
function UFldDungeonParamDataAsset:AddResetData() end


---@class UFldDungeonPartController : UFldDungeonComponentBase
---@field m_PartActor TArray<AFldDungeonPartActor>
---@field m_WallActor TArray<AActor>
---@field m_PartActorRef TArray<AActor>
local UFldDungeonPartController = {}

function UFldDungeonPartController:InitFixedMap() end
function UFldDungeonPartController:InitDesignMap() end
function UFldDungeonPartController:AutoLoadPart() end
function UFldDungeonPartController:AutoCreatePart() end


---@class UFldDungeonPartVariation : UObject
local UFldDungeonPartVariation = {}


---@class UFldDungeonPartVariationDataAsset : UDataAsset
---@field Area1 FDungeonPartVariationDataTableRow
---@field Area2 FDungeonPartVariationDataTableRow
---@field Area3 FDungeonPartVariationDataTableRow
---@field Area4 FDungeonPartVariationDataTableRow
---@field Area5 FDungeonPartVariationDataTableRow
---@field Area6 FDungeonPartVariationDataTableRow
---@field Area7 FDungeonPartVariationDataTableRow
---@field DungeonDesignTypesDataList TArray<FDungeonDesignTypesData>
---@field FDoorTypeTbl FDungeonPartFDoorTypeDataTableRow
---@field MisRoomTypeTbl FDungeonPartMisRoomTypeDataTableRow
local UFldDungeonPartVariationDataAsset = {}



---@class UFldDungeonPartnerController : UFldDungeonComponentBase
---@field m_Partners TArray<FFldPartnerHolder>
---@field m_StartList TArray<AFldDungeonLayoutStartActor>
local UFldDungeonPartnerController = {}



---@class UFldDungeonReaperController : UFldDungeonComponentBase
---@field m_pEffect AFldDungeonEffectCameraAttachActor
local UFldDungeonReaperController = {}



---@class UFldDungeonRecoverController : UFldDungeonComponentBase
---@field m_pEffectCameraAttach UNiagaraCameraAttachComponent
local UFldDungeonRecoverController = {}



---@class UFldDungeonSecretGateController : UFldDungeonComponentBase
---@field m_SecretGateActor AFldDungeonObjectActor
---@field m_pLayoutSecretGate AFldDungeonLayoutActor
local UFldDungeonSecretGateController = {}



---@class UFldDungeonSeparatelyController : UFldDungeonComponentBase
local UFldDungeonSeparatelyController = {}


---@class UFldDungeonSetupController : UFldDungeonComponentBase
local UFldDungeonSetupController = {}


---@class UFldDungeonStartParam : UObject
local UFldDungeonStartParam = {}

---@param major int32
---@param Minor int32
---@param idx int32
---@param bScript boolean
function UFldDungeonStartParam:SetStartParam(major, Minor, idx, bScript) end
---@return boolean
function UFldDungeonStartParam:CheckStartParam() end


---@class UFldDungeonSupportSkillController : UFldDungeonComponentBase
---@field m_pEffectList TArray<AFldDungeonEffectCameraAttachActor>
local UFldDungeonSupportSkillController = {}



---@class UFldDungeonTBoxController : UFldDungeonComponentBase
---@field m_TBoxActor TArray<AFldDungeonObjectActor>
---@field m_TBoxSE TArray<AFldDungeonSoundBaseActor>
---@field m_HitTBox AFldDungeonObjectActor
local UFldDungeonTBoxController = {}

---@param EventType EDungeonObjHitEvent
---@param ID int32
---@param pObject AFldDungeonObjectActor
function UFldDungeonTBoxController:HitEvent(EventType, ID, pObject) end
---@param EventType EDungeonObjHitEvent
---@param ID int32
---@param pObject AFldDungeonObjectActor
function UFldDungeonTBoxController:ForbiddenDoorHitEvent(EventType, ID, pObject) end
function UFldDungeonTBoxController:FixedFloorAdvanceProcess() end
function UFldDungeonTBoxController:DesignFloorAdvanceProcess() end
function UFldDungeonTBoxController:AutoFloorAdvanceProcess() end


---@class UFldDungeonTable : UDataAsset
---@field PartsSelData TArray<FFldDungeonPartsSelDataAssetRecord>
---@field LayoutCombData TArray<FFldDungeonLayoutCombDataAssetRecord>
---@field FloorData TArray<FFldDungeonFloorDataAssetRecord>
---@field TBoxTypeData TArray<FFldDungeonTBoxTypeDataAssetRecord>
---@field TBoxItemData TArray<FFldDungeonTBoxItemDataAssetRecord>
---@field TBoxPacData TArray<FFldDungeonTBoxPacDataAssetRecord>
---@field EncountPacData TArray<FFldDungeonEncountPacDataAssetRecord>
local UFldDungeonTable = {}

function UFldDungeonTable:Import() end


---@class UFldDungeonTalkController : UFldDungeonComponentBase
local UFldDungeonTalkController = {}


---@class UFldDungeonTransferController : UFldDungeonComponentBase
---@field m_ReturnActor AFldDungeonObjectActor
---@field m_pFixedReturn AFldDungeonObjectActor
---@field m_pFixedTransfer AFldDungeonObjectActor
---@field m_pPartActor AFldDungeonPartActor
local UFldDungeonTransferController = {}



---@class UFldDungeonUIController : UFldDungeonComponentBase
---@field m_UIActor TArray<AFldDungeonUIActor>
local UFldDungeonUIController = {}



---@class UFldEnemyComp : UFldLocalActorComp
---@field ControllerRef AFldEnemyController
---@field MeshComp USkeletalMeshComponent
---@field MovementComp UCharacterMovementComponent
---@field CapsuleComp UCapsuleComponent
---@field SearchAreaComp UChildActorComponent
---@field SearchArea AFldCharArea
---@field AttackAreaComp UChildActorComponent
---@field AttackArea AFldCharArea
---@field AnimMontage UAnimMontage
---@field CurrentAnimSequence UAnimSequenceBase
---@field EnemyType EFldEnemyType
---@field ID int32
---@field EncountID int32
---@field Group int32
---@field AbnormalStateId int32
---@field bForceUpset boolean
---@field bGroupEnable boolean
---@field bVisibleEnable boolean
---@field bCollisionEnable boolean
---@field FlagID int32
---@field RespawnProhibited boolean
---@field TypeChanged boolean
---@field bAllowStandbyToFinish boolean
---@field Transparency FAppCharTransparency
---@field BeginTransform FTransform
local UFldEnemyComp = {}



---@class UFldEnemyDataAsset : UDataAsset
---@field ScaleMax float
---@field ScaleMin float
---@field ScaleStep int32
---@field Normal FFldEnemyNormalParam
---@field anger FFldEnemyConditionAngerParam
---@field Confusion FFldEnemyConditionConfusionParam
---@field fear FFldEnemyConditionFearParam
---@field upset FFldEnemyNormalParam
---@field Rare FFldEnemyRareParam
---@field Death FFldEnemyReaperParam
---@field SkillReaction FFldEnemySkillReaction
local UFldEnemyDataAsset = {}



---@class UFldEnemyFootprintDA : UDataAsset
---@field Assets TArray<FFldEnemyFootprintAsset>
---@field Span float
---@field FadeDelay float
---@field FadeDuration float
local UFldEnemyFootprintDA = {}



---@class UFldEnemyForbiddenDoorComp : UFldEnemyComp
---@field DisplayChildActorComp UChildActorComponent
---@field AuraNiagaraComp UNiagaraComponent
---@field State EFldEnemyState
---@field NextState EFldEnemyState
---@field bIsLoading boolean
---@field bIsSetupDisplay boolean
---@field DisplayClassPtr TSoftClassPtr<UObject>
---@field AuraEffect FFldEnemyEffectParam
local UFldEnemyForbiddenDoorComp = {}



---@class UFldEnemyNormalComp : UFldEnemyComp
---@field MarkNiagaraComp UNiagaraComponent
---@field DirectionNiagaraComp UNiagaraComponent
---@field AuraNiagaraComp UNiagaraComponent
---@field ConditionNiagaraComp UNiagaraComponent
---@field SkillReaction FFldEnemySkillReactionParam
---@field State EFldEnemyState
---@field NextState EFldEnemyState
---@field CurrentMarkEffectParam FFldEnemyEffectParam
---@field CurrentConditionEffectParam FFldEnemyEffectParam
---@field LoiterPoints TArray<FVector>
---@field TrackingTarget FFldPlayerHolder
---@field bIsDead boolean
---@field bVanish boolean
---@field bModalMenu boolean
---@field bIdleMenu boolean
---@field EnemyData UFldEnemyDataAsset
---@field FootprintDA UFldEnemyFootprintDA
---@field IdelAnim UAnimSequenceBase
---@field DamageAnim UAnimSequenceBase
---@field RunAnim UAnimSequenceBase
---@field WalkAnim UAnimSequenceBase
---@field AttackAnim UAnimSequenceBase
---@field FindAnim UAnimSequenceBase
---@field SearchAnim UAnimSequenceBase
---@field VanishAnim UAnimSequenceBase
---@field ArrivalAnim UAnimSequenceBase
---@field WinceAnim UAnimSequenceBase
---@field WinceIdleAnim UAnimSequenceBase
---@field AuraEffect FFldEnemyEffectParam
---@field ExclamationEffect FFldEnemyEffectParam
---@field QuestionEffect FFldEnemyEffectParam
---@field SweatEffect FFldEnemyEffectParam
---@field VanishEffect FFldEnemyEffectParam
---@field ArrivalEffect FFldEnemyEffectParam
---@field AngerEffect FFldEnemyEffectParam
---@field ConfusionEffect FFldEnemyEffectParam
---@field FearEffect FFldEnemyEffectParam
---@field UpsetEffect FFldEnemyEffectParam
local UFldEnemyNormalComp = {}

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UFldEnemyNormalComp:OnMontageEnded(Montage, bInterrupted) end


---@class UFldEnemyUniqueComp : UFldEnemyComp
---@field State EFldEnemyState
---@field NextState EFldEnemyState
local UFldEnemyUniqueComp = {}



---@class UFldFollowerComp : UFldLocalActorComp
---@field mLengthLEAVE_START_ float
---@field mLengthLEAVE_END_ float
---@field mLengthAPPROACH_START_ float
---@field mLengthAPPROACH_END_ float
---@field mLengthALLAY_NEAR_ float
---@field mLengthSPEAK_HERO_ float
---@field mIdleMinTime_ float
---@field mIdleMaxTime_ float
---@field mLookMinTime_ float
---@field mLookMaxTime_ float
---@field mSideMinTime_ float
---@field mSideMaxTime_ float
---@field mInterpSpeed_ float
---@field mFlag_ uint32
---@field mFollowerIndex_ int32
---@field mApprouchRad_ float
---@field mCharaComp_ UAppCharacterComp
---@field mCapsuleComp_ UCapsuleComponent
---@field mMoveComp_ UCharacterMovementComponent
---@field mHitChild_ AFldHitCharacter
---@field mNpcComp_ UFldNpcComp
---@field mPointComp_ UFldFollowerPointComp
---@field bIsLookAt_ boolean
---@field mLookTimer_ float
---@field mLookEndTime_ float
---@field mLookBaseLocation_ FVector
---@field mLookYawDir_ int32
---@field mLookCount_ int32
local UFldFollowerComp = {}

---@param OtherActor AActor
function UFldFollowerComp:ProcOutEvent(OtherActor) end
---@param OtherActor AActor
function UFldFollowerComp:ProcInEvent(OtherActor) end
function UFldFollowerComp:GetAwayHeroRequest() end
function UFldFollowerComp:CleanupRequest() end
---@param Player APawn
---@param Check boolean
function UFldFollowerComp:CheckEnableAction(Player, Check) end
---@param Player APawn
function UFldFollowerComp:ActoinRequest(Player) end


---@class UFldFollowerPointComp : USceneComponent
local UFldFollowerPointComp = {}


---@class UFldHitCharaIdleBehaviorComp : UFldLocalActorComp
---@field mIdleMinTime_ float
---@field mIdleMaxTime_ float
---@field mLookMinTime_ float
---@field mLookMaxTime_ float
---@field mSideMinTime_ float
---@field mSideMaxTime_ float
---@field mInterpSpeed_ float
---@field mFlag_ uint32
---@field mNpcComp_ UFldNpcComp
---@field bIsLookAt_ boolean
---@field mLookTimer_ float
---@field mLookEndTime_ float
---@field mLookBaseLocation_ FVector
---@field mLookYawDir_ int32
---@field mLookCount_ int32
local UFldHitCharaIdleBehaviorComp = {}



---@class UFldHitCharaIdleTalkComp : UFldLocalActorComp
---@field mMotionParam_ FFldHitCitTimeParam
---@field mLookParam_ FFldHitCitLookParam
---@field bLookAtFlag_ boolean
---@field mFlag_ uint32
---@field mParamArray_ TArray<FFldHitCharaIdleTalkCharacterParam>
local UFldHitCharaIdleTalkComp = {}



---@class UFldLinkAnimHitComp_BOX : UBoxComponent
---@field mLinkCompNameArray_ TArray<FString>
---@field mOneshotFlag_ boolean
---@field mFlag_ uint32
---@field mLinkChildArray_ TArray<UChildActorComponent>
local UFldLinkAnimHitComp_BOX = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UFldLinkAnimHitComp_BOX:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UFldLinkAnimHitComp_BOX:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UFldLinkAnimHitComp_CIRCLE : USphereComponent
---@field mLinkCompNameArray_ TArray<FString>
---@field mOneshotFlag_ boolean
---@field mFlag_ uint32
---@field mLinkChildArray_ TArray<UChildActorComponent>
local UFldLinkAnimHitComp_CIRCLE = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UFldLinkAnimHitComp_CIRCLE:OnActorOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UFldLinkAnimHitComp_CIRCLE:OnActorOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UFldLmapManager : UObject
local UFldLmapManager = {}


---@class UFldLocalActorComp : UAppActorComponent
local UFldLocalActorComp = {}


---@class UFldManagerSubsystem : UGameInstanceSubsystem
---@field mOnEventCallField_ FFldManagerSubsystemOnEventCallField_
---@field mLevelManager_ AFldLevelManager
---@field mPlayerComp_ UAppCharacterComp
---@field mPlayerTransform FTransform
---@field mOparetator_ AFldOperator
---@field mInitScrManager_ AFldInitScriptManager
---@field mKeyFreeAnnounceActor_ AFldKeyFreeAnnounceActor
---@field mKeyFreeEventActor_ AFldKeyFreeEventActor
---@field mFieldEventActor_ AFldFieldEventActor
---@field mLargeMapActor_ AAppActor
---@field mSoundManager_ UFldSoundManager
---@field mMiniMapManager_ UFldMiniMapManager
---@field mDungeonMenuScript_ AFldDungeonMenuScript
---@field mDailyMenuScript_ AFldDailyMenuScript
---@field mSaveMenu_ AUISaveLoad
---@field mBackLogDisp_ AUIBackLog
---@field mVoiceActionDisp_ AActor
---@field mKeyLockedActor_ AFldHitCore
---@field mAutoRecoverMenuScript_ AFldAutoRecoverMenuScript
---@field mHiddenActorArray_ TArray<AActor>
---@field mCharBaseReload_ AFldMiscCharBaseReload
---@field mCmnPropsActors_ TMap<EFldCmnProps, AAppPropsCore>
---@field mCameraShake_ AFldMiscCameraShake
---@field mKeyHelpDelayTimer_ float
---@field mMoveFloorTimer_ float
---@field mDefaultPlayerClass_ TSubclassOf<ACharacterBaseCore>
---@field mDungeonPlayerClass_ TSubclassOf<ACharacterBaseCore>
---@field mDungeonPlayerClass_Astrea_ TSubclassOf<ACharacterBaseCore>
---@field mDefaultCameraClass_ TSubclassOf<AFldCameraBase>
---@field mDungeonCameraClass_ TSubclassOf<AFldCameraBase>
---@field mDngEntranceCameraClassAstrea_ TSubclassOf<AFldCameraBase>
---@field mDngFinalFloorCameraClassAstrea_ TSubclassOf<AFldCameraBase>
---@field mTransCameraClass_ TSubclassOf<AFldCamera>
---@field mFollowerClass_ TSubclassOf<ACharacterBaseCore>
---@field mFollowerKoromaruClass_ TSubclassOf<ACharacterBaseCore>
---@field mWorldContextObject_ UObject
---@field mMoveActor_ AFldMiscCharaBaseMove
---@field mCameraLock_ boolean
---@field mCameraMoveActor_ AFldMiscCameraMove
---@field mOverlapedHitArray_ TArray<AFldHitCore>
---@field mDebugMenu_ AAppActor
local UFldManagerSubsystem = {}

---@param KeyEnable boolean
function UFldManagerSubsystem:SetPlayerKeyEnable(KeyEnable) end
---@param Visible boolean
---@param KeyEnable boolean
function UFldManagerSubsystem:SetPlayerEnable(Visible, KeyEnable) end
---@param FieldMajorID int32
---@param FieldMinorID int32
function UFldManagerSubsystem:SetParamDebug(FieldMajorID, FieldMinorID) end
---@param InActor AFldMiscCameraShake
function UFldManagerSubsystem:SetFieldCameraShakeActor(InActor) end
---@param DefaultPlayerClass TSubclassOf<ACharacterBaseCore>
---@param DungeonPlayerClass TSubclassOf<ACharacterBaseCore>
---@param DungeonPlayerClass_Astrea TSubclassOf<ACharacterBaseCore>
---@param DefaultCameraClass TSubclassOf<AFldCameraBase>
---@param DungeonCameraClass TSubclassOf<AFldCameraBase>
---@param TransCameraClass TSubclassOf<AFldCamera>
---@param FollowerClass TSubclassOf<ACharacterBaseCore>
---@param FollowerKoromaruClass TSubclassOf<ACharacterBaseCore>
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param DngEntranceCameraClassAstrea TSubclassOf<AFldCameraBase>
---@param DngFinalFloorCameraClassAstrea TSubclassOf<AFldCameraBase>
function UFldManagerSubsystem:ProcLevelBluePrint(DefaultPlayerClass, DungeonPlayerClass, DungeonPlayerClass_Astrea, DefaultCameraClass, DungeonCameraClass, TransCameraClass, FollowerClass, FollowerKoromaruClass, WorldContextObject, LatentInfo, DngEntranceCameraClassAstrea, DngFinalFloorCameraClassAstrea) end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@param TotalDay int32
---@param TimeZone ECldTimeZone
---@param Pattern EFldLoadPattern
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldManagerSubsystem:LoadFieldSubLevelDebug(FieldMajorID, FieldMinorID, TotalDay, TimeZone, Pattern, WorldContextObject, LatentInfo) end
---@return boolean
function UFldManagerSubsystem:IsProcFldEvent() end
---@return boolean
function UFldManagerSubsystem:IsProcField() end
---@return boolean
function UFldManagerSubsystem:IsLoadingField() end
---@return boolean
function UFldManagerSubsystem:IsKeyFreeEvent() end
---@return boolean
function UFldManagerSubsystem:IsEnablePartyChange() end
---@return AFldMiscCameraShake
function UFldManagerSubsystem:GetFieldCameraShakeActor() end
---@return boolean
function UFldManagerSubsystem:CheckKeyFree() end
---@param FieldMajorID int32
---@param FieldMinorID int32
---@param TotalDay int32
---@param TimeZone ECldTimeZone
---@param Pattern EFldLoadPattern
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UFldManagerSubsystem:ChangeFieldSubLevelDebug(FieldMajorID, FieldMinorID, TotalDay, TimeZone, Pattern, WorldContextObject, LatentInfo) end


---@class UFldMiniMapManager : UObject
---@field mCharactorList_ TArray<AFldHitCharacter>
local UFldMiniMapManager = {}



---@class UFldNpcComp : UFldLocalActorComp
---@field mCharaBaseComp_ UAppCharBaseComp
---@field mListIndex_ int32
---@field mMajorID_ int32
---@field mMinorID_ int32
---@field mFbnNumber_ int32
---@field mSpeakMotionBlendInTime_ float
---@field mSpeakMotionBlendOutTime_ float
---@field mPropsArray_ TArray<FFldNpcCompPropsInfo>
---@field mOrnamentsArray_ TArray<FFldNpcCompOrnamentsInfo>
local UFldNpcComp = {}

function UFldNpcComp:RequestRestartAnimProcByMotion() end
function UFldNpcComp:RequestPauseAnimProcByMotion() end
function UFldNpcComp:RequestLookAtPlayerByMotion() end
---@return UAppCharBaseComp
function UFldNpcComp:GetCharBaseComp() end


---@class UFldOperationBase : UActorComponent
---@field Holder AFldOperator
local UFldOperationBase = {}



---@class UFldOperationCamera : UFldOperationBase
---@field CurrentHitRef AFldCameraHitBase
---@field bLock boolean
local UFldOperationCamera = {}



---@class UFldOperationPlayer : UFldOperationBase
---@field HitUI boolean
---@field Direction FMatrix
---@field PreviousAxisL FVector2D
---@field EncountEnemy FFldEnemyHolder
---@field Timer float
---@field StackTimer float
---@field CameraChanged boolean
---@field Clamp float
---@field D_AxisL FVector2D
---@field D_AxisR FVector2D
---@field D_ClampAxisL FVector2D
---@field D_ClampAxisR FVector2D
local UFldOperationPlayer = {}



---@class UFldOperationPrePhysics : UActorComponent
local UFldOperationPrePhysics = {}


---@class UFldPartnerComp : UFldLocalActorComp
---@field AppCharacter UAppCharacterComp
---@field LipComp UCharacterLipsyncAppComponent
---@field SimpleLipComp UCharacterSimpleLipsAnimAppComponent
---@field ControllerRef AFldPartnerController
---@field Player FFldPlayerHolder
---@field PartyID int32
---@field Data FFldPartnerData
---@field SpeedData FFldCharSpeed
---@field bAllowStandbyToFinish boolean
---@field State EFldPartnerState
---@field NextState EFldPartnerState
---@field Behavior EFldPartnerBehavior
---@field NextBehavior EFldPartnerBehavior
---@field TrackingPointId int32
---@field TrackingLocation FVector
---@field TrackingPlayerLocation FVector
---@field AvoidLocation FVector
---@field UseRootMotionDelegate FFldPartnerCompUseRootMotionDelegate
---@field EnableRootMotionDelegate FFldPartnerCompEnableRootMotionDelegate
---@field DisableRootMotionDelegate FFldPartnerCompDisableRootMotionDelegate
---@field SetSpeedThresholdDelegate FFldPartnerCompSetSpeedThresholdDelegate
---@field EnableForceWaitPoseDelegate FFldPartnerCompEnableForceWaitPoseDelegate
---@field DisableForceWaitPoseDelegate FFldPartnerCompDisableForceWaitPoseDelegate
---@field SetSpeedDelegate FFldPartnerCompSetSpeedDelegate
---@field MoveForce FVector
---@field PersonalMotionComp UFldCharPersonalMotionComp
local UFldPartnerComp = {}

---@return float
function UFldPartnerComp:GetWalkThreshold() end
---@return float
function UFldPartnerComp:GetRunThreshold() end
---@return float
function UFldPartnerComp:GetDashThreshold() end


---@class UFldPartnerPointComp : USceneComponent
---@field UsePartyId int32
local UFldPartnerPointComp = {}



---@class UFldPartnerStartPointComp : USceneComponent
---@field ID int32
local UFldPartnerStartPointComp = {}



---@class UFldPlayerAbsComp : UFldPlayerComp
---@field InputInterpolation FldPlayerInputInterpolation
local UFldPlayerAbsComp = {}



---@class UFldPlayerComp : UFldLocalActorComp
---@field ControllerRef AController
---@field AppCharComp UAppCharacterComp
---@field HitCoreRef AFldHitCore
---@field CameraHitRef AFldCameraHitBase
---@field PlayerData FFldPlayerData
---@field SpeedData FFldCharSpeed
---@field State EFldPlayerState
---@field NextState EFldPlayerState
---@field bEnableDash boolean
---@field bEnableAssault boolean
---@field bJammingSkill boolean
---@field bPressureSkill boolean
---@field bOnceAnimStop boolean
---@field bNotSearchedByEnemies boolean
---@field AttackMontage UAnimMontage
---@field SetSpeedThresholdDelegate FFldPlayerCompSetSpeedThresholdDelegate
---@field EnableForceWaitPoseDelegate FFldPlayerCompEnableForceWaitPoseDelegate
---@field DisableForceWaitPoseDelegate FFldPlayerCompDisableForceWaitPoseDelegate
---@field EnableIsTurnedDelegate FFldPlayerCompEnableIsTurnedDelegate
---@field DisableIsTurnedDelegate FFldPlayerCompDisableIsTurnedDelegate
---@field PersonalMotionComp UFldCharPersonalMotionComp
local UFldPlayerComp = {}

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UFldPlayerComp:OnMontageEnded(Montage, bInterrupted) end
---@return float
function UFldPlayerComp:GetWalkThreshold() end
---@return float
function UFldPlayerComp:GetRunThreshold() end
---@return float
function UFldPlayerComp:GetDashThreshold() end


---@class UFldPlayerDailyComp : UFldPlayerAbsComp
---@field Behavior EFldPlayerDailyBehavior
---@field NextBehavior EFldPlayerDailyBehavior
local UFldPlayerDailyComp = {}



---@class UFldPlayerDungeonComp : UFldPlayerAbsComp
---@field AttackAreaComp UChildActorComponent
---@field AttackArea AFldCharArea
---@field AttackAreaLongRangeComp UChildActorComponent
---@field AttackAreaLongRange AFldCharArea
---@field TargetDetectAreaLongRangeComp UChildActorComponent
---@field TargetDetectAreaLongRange AFldCharArea
---@field ObjectAutoDestroyAreaComp UChildActorComponent
---@field ObjectAutoDestroyArea AFldCharArea
---@field DashAttackAreaComp UChildActorComponent
---@field DashAttackArea AFldCharArea
---@field SearchAreaComp UChildActorComponent
---@field SearchArea AFldCharArea
---@field PartnerStartPoints TMap<int32, UFldPartnerStartPointComp>
---@field PartnerPoints TArray<UFldPartnerPointComp>
---@field PostProcessComp UPostProcessComponent
---@field Behavior EFldPlayerDngBehavior
---@field NextBehavior EFldPlayerDngBehavior
---@field Timer float
---@field AttackId int32
---@field bNextAttack boolean
---@field bRotAttack boolean
---@field AttackForward FVector
---@field RootMoveY float
---@field AssaultTimer float
---@field bEncountingPause boolean
---@field AssaultEffect FFldCharEffectParam
---@field AssaultNiagara UNiagaraComponent
---@field AttackOrbitBegin FVector
---@field AttackOrbitEnd FVector
---@field IsPlayingLongRangeAttackEffect boolean
---@field LockOnActor AActor
---@field LockOnEffectId int32
---@field LockOnNearSideLength float
---@field HasAttackHitObjectOrEnemy boolean
---@field IsUsingLongRangeAttack boolean
---@field LockOnDistanceCheckAngle float
---@field IsUsingDashAttack boolean
---@field IsUsingAssaultAttack boolean
---@field LongRangeAttackHitArray TArray<FVector>
---@field DashAttackPlayingEffect int32
---@field DashAttackHitActorEffectArray TArray<AActor>
---@field DashAttackEnemyHitCache FFldEnemyHolder
---@field DashAttackTimer float
---@field SizeCheckComp UStaticMeshComponent
local UFldPlayerDungeonComp = {}



---@class UFldPlayerEncountComp : UAppActorComponent
---@field AppCharComp UAppCharacterComp
---@field AnimMontage UAnimMontage
---@field RunAnim UAnimSequenceBase
---@field AttackAnim UAnimSequenceBase
local UFldPlayerEncountComp = {}



---@class UFldSaveCallField : UObject
local UFldSaveCallField = {}


---@class UFldShortcutManager : UObject
local UFldShortcutManager = {}


---@class UFldSoundManager : UObject
---@field mFlag_ uint32
---@field mChgActorAISAC_ AFldSoundMngChangeAISAC
---@field mComVoicePath_ FString
---@field mComSePath_ FString
---@field mGayaSePath_ FString
---@field mComSeExtPath_ FString
---@field mActorArrays_ TArray<AFldAtomSound>
---@field mAtomCompArray_ TArray<UAtomComponent>
---@field mAisacArray_ TArray<FFldSoundMngAisacSet>
---@field mPostVolumeArray_ TArray<AFldPostValumeSound>
---@field mChangeActor_ AFldSoundMngChangeTownmapActor
local UFldSoundManager = {}



---@class UFontAdjustmentListTable : UAppDataAsset
---@field Data TMap<int32, FFontAdjustmentList>
local UFontAdjustmentListTable = {}



---@class UFrameBufferCapture : UObject
---@field DebugInfo TArray<FFrameBufferCaptureDebugWork>
local UFrameBufferCapture = {}



---@class UGWFlagWork : UObject
---@field pBattleDataTable UDataTable
---@field pCommuDataTable UDataTable
---@field pEventDataTable UDataTable
---@field pFieldDataTable UDataTable
---@field pProgramDataTable UDataTable
---@field pSystemDataTable UDataTable
---@field pCounterDataTable UDataTable
---@field BattleDataHashArry FGWHashBase
---@field CommuDataHashArry FGWHashBase
---@field EventDataHashArry FGWHashBase
---@field FieldDataHashArry FGWHashBase
---@field ProgramDataHashArry FGWHashBase
---@field SystemDataHashArry FGWHashBase
---@field CounterDataHashArry FGWHashBase
---@field BattleDataHashNum int32
---@field CommuDataHashNum int32
---@field EventDataHashNum int32
---@field FieldDataHashNum int32
---@field ProgramDataHashNum int32
---@field SystemDataHashNum int32
---@field CounterDataHashNum int32
---@field mFldLocalFlagDataTable_ UDataTable
---@field mFldLocalFlagDataHashArry_ FGWHashBase
---@field mFldLocalFlagDataHashNum_ int32
---@field mFldLocalCounterDataTable_ UDataTable
---@field mFldLocalCounterDataHashArry_ FGWHashBase
---@field mFldLocalCounterDataHashNum_ int32
---@field mFldNpcFlagDataTable_ UDataTable
---@field mFldNpcFlagDataHashArry_ FGWHashBase
---@field mFldNpcFlagDataHashNum_ int32
local UGWFlagWork = {}



---@class UGWSettings : UDeveloperSettings
---@field bIsDeterminedByCross boolean
local UGWSettings = {}



---@class UGenSelItemDefineDataAsset : UAppDataAsset
---@field Data TArray<FGenSelItemDefine>
local UGenSelItemDefineDataAsset = {}



---@class UGenSelItemLineupDataAsset : UAppMultiDataAsset
---@field Data TArray<FGenSelItemLineup>
local UGenSelItemLineupDataAsset = {}



---@class UGenericSelectCharacterDataAsset : UAppDataAsset
---@field Assets TArray<FGenericSelectCharacterTextureItem>
local UGenericSelectCharacterDataAsset = {}



---@class UGenericSelectItem : UGenericSelectSystemBase
local UGenericSelectItem = {}


---@class UGenericSelectMsg : UGenericSelectSystemBase
---@field SelectionImage_ UTexture
local UGenericSelectMsg = {}



---@class UGenericSelectShop : UGenericSelectMsg
local UGenericSelectShop = {}


---@class UGenericSelectSystemBase : UObject
local UGenericSelectSystemBase = {}


---@class UGlobalGameData : UObject
---@field mFlags_ALWAYS_ TArray<int32>
---@field mFlags_ANY_ TArray<int32>
---@field mCounters_ALWAYS_ TArray<int32>
---@field mCounters_ANY_ TArray<int32>
---@field mComItems_ALWAYS_ TArray<uint16>
---@field mComItems_ANY_ TArray<uint16>
---@field mEvtItems_ALWAYS_ TArray<uint16>
---@field mEvtItems_ANY_ TArray<uint16>
---@field mDlcItems_ALWAYS_ TArray<uint16>
---@field mNotInheritanceItems_ TArray<uint16>
local UGlobalGameData = {}

function UGlobalGameData:StartDataInitialize() end
function UGlobalGameData:SetDataInheritance_LibraToAstrea() end
function UGlobalGameData:SetDataInheritance_AstreaClearData() end
function UGlobalGameData:SetDataInheritance_ALWAYS() end
function UGlobalGameData:SetDataInheritance() end
function UGlobalGameData:RestoreAstreaClearDataDifficulty() end
function UGlobalGameData:ClearDataInheritance() end


---@class UGlobalWork : UGameInstance
---@field mSequenceInstance_ USequence
---@field mCalendarInstance_ UCalendar
---@field mCldCommonData_ UCldCommonData
---@field mAstreaProgressInstance_ UAstreaProgress
---@field mAstreaPrgssCommonData_ UPrgssCommonData
---@field mFileNameData_ UFileNameManager
---@field mFldCommonData_ UFldCommonData
---@field mItemData_ UDatItem
---@field mTrophy_ UTrophyManager
---@field mLeaderBoard_ ULeaderBoardManager
---@field mSignedInDialog_ USignedInDialog
---@field mErrorDialog_ UErrorDialog
---@field mMessageDialog_ UMessageDialog
---@field pBustupController UBustupController
---@field pCommunityWork UCommunityWork
---@field pMsgWork UMsgWork
---@field pEvtDataLoad UEvtDataLoad
---@field pFrameBufferCapture UFrameBufferCapture
---@field pPadRumble UPadRumble
---@field mFldCharParamTable_ UFldCharParamTable
---@field mFootstepsTable_ UAppCharFootstepsTable
---@field mCharacterPoolManager_ UAppCharacterPoolManager
---@field mSystemTextTable UDatSystemText
---@field mUIUseTextTable UDatUIUseText
---@field mUICalendarTextTable UDatUICalendarText
---@field mSaveManager_ UXrd777SaveManager
---@field mAddContent_ UAddContent
---@field pLoadingInst ULoading
---@field mCmpMainActor_ ACmpMainActor
---@field mBtlGuiResourcesActor_ ABtlGuiResourcesBase
---@field mBtlEncountWipeLoader_ UBtlEncountWipeLoader
---@field mBtlEncountWipeCore_ ABtlEncountWipeCore
---@field mLevelPoolManager_ AFldLevelPoolManager
---@field mPoolSetting_ boolean
---@field mTempSaveHeader_ FSaveGameHeadder
---@field bTempSaveHeaderUsed_ boolean
---@field mGameDataProc_ UGlobalGameData
---@field mSystemMonitor_ AAppActor
---@field ResidentReloadActor AResidentReloadActor
local UGlobalWork = {}

---@param ActorClass TSubclassOf<AActor>
---@param SubLevelIndex ESubLevelIndex
---@param Transform FTransform
---@return AActor
function UGlobalWork:SpawnActorFromClassSubLevelIndex(ActorClass, SubLevelIndex, Transform) end
---@param SubLevelNum ESubLevelIndex
---@param Actor AActor
function UGlobalWork:SetSubLevelActor(SubLevelNum, Actor) end
---@param Type EGWorkSeqType
---@param major int32
---@param Minor int32
---@param mKfEvent int32
function UGlobalWork:SetSequenceParam_KEY_FREE_EVENT(Type, major, Minor, mKfEvent) end
---@param Type EGWorkSeqType
---@param major int32
---@param Minor int32
---@param mKfEvent int32
---@param Tag FString
function UGlobalWork:SetSequenceParam_DEBUG(Type, major, Minor, mKfEvent, Tag) end
---@param Type EGWorkSeqType
---@param major int32
---@param Minor int32
function UGlobalWork:SetSequenceParam(Type, major, Minor) end
---@param SubLevelNum ESubLevelIndex
---@return AActor
function UGlobalWork:GetSubLevelActor(SubLevelNum) end
---@param Type EGWorkSeqType
---@param major int32
---@param Minor int32
---@param mKfEvent int32
---@param Tag FString
function UGlobalWork:GetSequenceParam_DEBUG(Type, major, Minor, mKfEvent, Tag) end
---@param Type EGWorkSeqType
---@param major int32
---@param Minor int32
---@param mKfEvent int32
function UGlobalWork:GetSequenceParam(Type, major, Minor, mKfEvent) end
---@param SubLevelNum ESubLevelIndex
function UGlobalWork:ClearSubLevelActor(SubLevelNum) end


---@class UGlobalWorkBpLib : UBlueprintFunctionLibrary
local UGlobalWorkBpLib = {}

---@param PCID int32
function UGlobalWorkBpLib:GWorkSetPartyOUT(PCID) end
---@param PCID int32
function UGlobalWorkBpLib:GWorkSetPartyIN(PCID) end
---@param SetMoeny int32
function UGlobalWorkBpLib:GWorkSetMoney(SetMoeny) end
---@param CntNo int32
---@param Value int32
function UGlobalWorkBpLib:GWorkSetCounterValue(CntNo, Value) end
---@param CntName FName
---@param Value int32
function UGlobalWorkBpLib:GWorkSetCounter(CntName, Value) end
---@param PCID int32
---@return boolean
function UGlobalWorkBpLib:GWorkIsPartyExists(PCID) end
---@return boolean
function UGlobalWorkBpLib:GWorkIsJapaneseLanguage() end
---@return boolean
function UGlobalWorkBpLib:GWorkIsFullHpSpAllPartyMember() end
---@return boolean
function UGlobalWorkBpLib:GWorkIsEFIGSLanguages() end
---@return boolean
function UGlobalWorkBpLib:GWorkIsAsiaLanguages() end
---@param CntNo int32
function UGlobalWorkBpLib:GWorkIncCounterValue(CntNo) end
---@param CntName FName
function UGlobalWorkBpLib:GWorkIncCounter(CntName) end
---@return float
function UGlobalWorkBpLib:GWorkGetRealTimeDelta() end
---@param Index int32
---@return int32
function UGlobalWorkBpLib:GWorkGetPartyID(Index) end
---@return int32
function UGlobalWorkBpLib:GWorkGetMoney() end
---@return float
function UGlobalWorkBpLib:GWorkGetMaxFPS() end
---@param CntNo int32
---@return int32
function UGlobalWorkBpLib:GWorkGetCounterValue(CntNo) end
---@param CntName FName
---@return int32
function UGlobalWorkBpLib:GWorkGetCounter(CntName) end
function UGlobalWorkBpLib:GWorkFullRecoveryAllPartyMember() end
---@param Index int32
---@param OnOff EGWorkOnOffEnum
function UGlobalWorkBpLib:GWorkFlagSetValue(Index, OnOff) end
---@param FlagName FName
---@param OnOff EGWorkOnOffEnum
function UGlobalWorkBpLib:GWorkFlagSet(FlagName, OnOff) end
---@param Index int32
function UGlobalWorkBpLib:GWorkFlagOnValue(Index) end
---@param FlagName FName
function UGlobalWorkBpLib:GWorkFlagOn(FlagName) end
---@param Index int32
function UGlobalWorkBpLib:GWorkFlagOffValue(Index) end
---@param FlagName FName
function UGlobalWorkBpLib:GWorkFlagOff(FlagName) end
---@param Index int32
---@param OnOff EGWorkOnOffEnum
function UGlobalWorkBpLib:GWorkFlagChkValue(Index, OnOff) end
---@param FlagName FName
---@param OnOff EGWorkOnOffEnum
function UGlobalWorkBpLib:GWorkFlagChk(FlagName, OnOff) end
---@param CntNo int32
function UGlobalWorkBpLib:GWorkDecCounterValue(CntNo) end
---@param CntName FName
function UGlobalWorkBpLib:GWorkDecCounter(CntName) end
function UGlobalWorkBpLib:GWorkCreateTrophyManagere() end
function UGlobalWorkBpLib:GWorkCreateSignedInDialog() end
function UGlobalWorkBpLib:GWorkCreateMessageDialog() end
function UGlobalWorkBpLib:GWorkCreateLeaderBoardManagere() end
function UGlobalWorkBpLib:GWorkCreateErrorDialog() end
---@return boolean
function UGlobalWorkBpLib:GWorkCheckPartyFull() end
---@param SetMoeny int32
---@return int32
function UGlobalWorkBpLib:GWorkAddMoney(SetMoeny) end


---@class UHandwritingSubsystem : UGameInstanceSubsystem
---@field HandwritingDataAsset UAtlHandwritingDataAsset
---@field PreloadedHandwritingEffectObjMap TMap<EAtlEvtHandwritingType, TSoftClassPtr<AHandwritingEffectBase>>
---@field PreloadedHandwritingEffectObjMap_Field TMap<EAtlEvtHandwritingType, TSoftClassPtr<AHandwritingEffectBase>>
---@field PreloadedHandwritingEffectObjMap_Event TMap<EAtlEvtHandwritingType, TSoftClassPtr<AHandwritingEffectBase>>
---@field HandwritingSpawnerDefaultClass TSubclassOf<AHandwritingSpawner>
---@field HandwritingSpawnerClassArray TArray<TSubclassOf<AHandwritingSpawner>>
---@field LayoutDataTable UUILayoutDataTable
local UHandwritingSubsystem = {}

---@param GroupType EAtlHandwritingGroupType
---@param Type EAtlEvtHandwritingType
---@param NpcBase ANpcBaseCore
---@param AttachSocketName FName
---@param InSpawnRule EHandwritingSpawnRules
---@param InParam FAtlHandwritingNiagaraRequestParam
---@param bAutoDestroySpawner boolean
---@param InbLoop boolean
---@return AHandwritingSpawner
function UHandwritingSubsystem:SpawnHandwritingAttachedNpc(GroupType, Type, NpcBase, AttachSocketName, InSpawnRule, InParam, bAutoDestroySpawner, InbLoop) end
---@param GroupType EAtlHandwritingGroupType
---@param Type EAtlEvtHandwritingType
---@param Character ACharacter
---@param AttachSocketName FName
---@param InSpawnRule EHandwritingSpawnRules
---@param InParam FAtlHandwritingNiagaraRequestParam
---@param bAutoDestroySpawner boolean
---@param InbLoop boolean
---@return AHandwritingSpawner
function UHandwritingSubsystem:SpawnHandwritingAttached(GroupType, Type, Character, AttachSocketName, InSpawnRule, InParam, bAutoDestroySpawner, InbLoop) end
---@param WorldContextObject UObject
---@param GroupType EAtlHandwritingGroupType
---@param Type EAtlEvtHandwritingType
---@param InParam FAtlHandwritingNiagaraRequestParam
---@param bAutoDestroySpawner boolean
---@param InbLoop boolean
---@return AHandwritingSpawner
function UHandwritingSubsystem:SpawnHandwritingAtLocation(WorldContextObject, GroupType, Type, InParam, bAutoDestroySpawner, InbLoop) end
---@return boolean
function UHandwritingSubsystem:IsPolandLanguage() end
---@param OutPosition1 FVector
---@param OutPosition2 FVector
---@param OutPosition3 FVector
---@param OutPosition4 FVector
---@return boolean
function UHandwritingSubsystem:GetAdjustedWoofLayoutData(OutPosition1, OutPosition2, OutPosition3, OutPosition4) end
---@param OutPosition FVector
---@param OutScale FVector
---@param OutSize float
---@return boolean
function UHandwritingSubsystem:GetAdjustedWhineLayoutData(OutPosition, OutScale, OutSize) end
---@param OutPosition1 FVector
---@param OutPosition2 FVector
---@param OutPosition3 FVector
---@return boolean
function UHandwritingSubsystem:GetAdjustedQuestionLayoutData(OutPosition1, OutPosition2, OutPosition3) end
---@param InIndex EHandwritingLayout
---@param OutScale float
---@return boolean
function UHandwritingSubsystem:GetAdjustedLayoutScale(InIndex, OutScale) end
---@param InIndex EHandwritingLayout
---@param OutAngle float
---@return boolean
function UHandwritingSubsystem:GetAdjustedLayoutRotation(InIndex, OutAngle) end
---@param InIndex EHandwritingLayout
---@param OutPosition FVector
---@return boolean
function UHandwritingSubsystem:GetAdjustedLayoutPosition(InIndex, OutPosition) end
---@param InIndex EHandwritingLayout
---@param OutPosition FVector
---@param OutAngle float
---@param OutScale float
---@return boolean
function UHandwritingSubsystem:GetAdjustedLayoutData(InIndex, OutPosition, OutAngle, OutScale) end
---@param OutPosition1 FVector
---@param OutPosition2 FVector
---@param OutScale FVector
---@param OutScaleFloat float
---@return boolean
function UHandwritingSubsystem:GetAdjustedExclamationQuestionLayoutData(OutPosition1, OutPosition2, OutScale, OutScaleFloat) end
---@param OutPosition1 FVector
---@param OutPosition2 FVector
---@return boolean
function UHandwritingSubsystem:GetAdjustedDoubleExclamationLayoutData(OutPosition1, OutPosition2) end
---@param OutScale1 float
---@param OutScale2 float
---@param OutScale3 float
---@return boolean
function UHandwritingSubsystem:GetAdjustedCallingLayoutData(OutScale1, OutScale2, OutScale3) end
---@param InIndexPosRot EHandwritingLayout
---@param OutPosition FVector
---@param OutAngle float
---@param InIndexScale EHandwritingLayout
---@param OutScale FVector
---@param OutSize float
---@return boolean
function UHandwritingSubsystem:GetAdjustedAllLayoutData(InIndexPosRot, OutPosition, OutAngle, InIndexScale, OutScale, OutSize) end


---@class UHeroParameterDataAsset : UAppMultiDataAsset
---@field Tables TArray<FHeroParameterTable>
local UHeroParameterDataAsset = {}



---@class UHeroParameterHandle : UObject
---@field pDataAsset UHeroParameterDataAsset
---@field pParameterNameTable UDataTable
local UHeroParameterHandle = {}



---@class UHiddenArbeitDataAsset : UAppDataAsset
---@field Data TArray<FHiddenArbeitData>
local UHiddenArbeitDataAsset = {}



---@class UHolidayEventDataAsset : UAppMultiDataAsset
---@field Tables TArray<FHolidayEventDataTable>
local UHolidayEventDataAsset = {}



---@class UHolidayScheduleDataAsset : UAppDataAsset
---@field Table TArray<FHolidayScheduleData>
local UHolidayScheduleDataAsset = {}



---@class UHttpBpLib : UBlueprintFunctionLibrary
local UHttpBpLib = {}

---@param BPActorReferencePath FString
---@param Arg FString
function UHttpBpLib:SpawnHttpActor(BPActorReferencePath, Arg) end
---@param URL FString
---@param Title FString
---@param Text FString
function UHttpBpLib:PostTeamsMessage(URL, Title, Text) end


---@class UIKAnimInstanceBase : UAnimInstance
---@field MoveSpeed float
---@field bUsingFootIK boolean
---@field bEnableFootIK boolean
---@field LeftFootOffset FVector
---@field RightFootOffset FVector
---@field RotationOffsetInterpSpeed float
---@field ZOffsetInterpSpeed float
---@field PelvisOffset float
---@field MinLimitStanding FVector
---@field MaxLimitStanding FVector
---@field LeftFootIKSocketName FName
---@field RightFootIKSocketName FName
local UIKAnimInstanceBase = {}

---@param DeltaSeconds float
function UIKAnimInstanceBase:UpdateLocomotionTick(DeltaSeconds) end


---@class UItemNameListTable : UAppDataAsset
---@field Data TArray<FString>
local UItemNameListTable = {}



---@class UItemShopLineUpListTable : UAppDataAsset
---@field Data TArray<FItemShopLineUpList>
local UItemShopLineUpListTable = {}



---@class UKernelBpLib : UBlueprintFunctionLibrary
local UKernelBpLib = {}

function UKernelBpLib:StopLoadingScreen() end
---@param WorldContextObject UObject
---@param bPlayUntilStopped boolean
---@param PlayTime float
function UKernelBpLib:StartLoadingScreen(WorldContextObject, bPlayUntilStopped, PlayTime) end
---@param WorldContextObject UObject
---@param BfAssetPath FString
---@param BmdAssetPath FString
---@param ProcNo int32
---@param LatentInfo FLatentActionInfo
---@param Result int32
function UKernelBpLib:StartBfPath(WorldContextObject, BfAssetPath, BmdAssetPath, ProcNo, LatentInfo, Result) end
---@param WorldContextObject UObject
---@param InBfAsset TSoftObjectPtr<UBfAsset>
---@param InBmdAsset TSoftObjectPtr<UBmdAsset>
---@param ProcNo int32
---@param PlayerStop boolean
---@param BmdSearchOff boolean
---@param LatentInfo FLatentActionInfo
---@param Result int32
function UKernelBpLib:StartBfEx(WorldContextObject, InBfAsset, InBmdAsset, ProcNo, PlayerStop, BmdSearchOff, LatentInfo, Result) end
---@param WorldContextObject UObject
---@param InAsset TSoftObjectPtr<UBfAsset>
---@param ProcNo int32
---@param PlayerStop boolean
---@param BmdSearchOff boolean
---@param LatentInfo FLatentActionInfo
---@param Result int32
function UKernelBpLib:StartBf(WorldContextObject, InAsset, ProcNo, PlayerStop, BmdSearchOff, LatentInfo, Result) end
---@param WorldContextObject UObject
---@param Location FTransform
function UKernelBpLib:SetTestMap(WorldContextObject, Location) end
---@param WorldContextObject UObject
---@param In TSubclassOf<ACharacter>
---@param Location FTransform
function UKernelBpLib:SetTestCharacter(WorldContextObject, In, Location) end
---@return boolean
function UKernelBpLib:IsInEditor() end


---@class UKernelResource : UGameInstanceSubsystem
---@field _Font TArray<UFont>
---@field _DevelopmentFont UFont
---@field _RenderTarget TArray<UTextureRenderTarget2D>
---@field _LoadHandle UAssetLoader
local UKernelResource = {}



---@class UKernelWidget : UUserWidget
local UKernelWidget = {}


---@class ULeaderBoardManager : UObject
local ULeaderBoardManager = {}


---@class ULipsyncAppObserverSpeakWatcher : UObject
---@field LipsyncAppObserverSubsystem TWeakObjectPtr<ULipsyncAppObserverSubsystem>
local ULipsyncAppObserverSpeakWatcher = {}



---@class ULipsyncAppObserverSubsystem : UGameInstanceSubsystem
---@field LipsyncAppObserveDelegate FLipsyncAppObserverSubsystemLipsyncAppObserveDelegate
---@field SpeakCharacterMap TMap<uint32, FLipsyncAppListener>
---@field SpeakWatcher ULipsyncAppObserverSpeakWatcher
local ULipsyncAppObserverSubsystem = {}

function ULipsyncAppObserverSubsystem:StopAllSpeakCharacter() end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param SoundMajorID int32
---@param SoundMinorID int32
---@param bOverride boolean
function ULipsyncAppObserverSubsystem:StartSpeakCharacter(CharcterCategoryType, CharaIndexID, SoundMajorID, SoundMinorID, bOverride) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@return boolean
function ULipsyncAppObserverSubsystem:IsSpeakingCharacter(CharcterCategoryType, CharaIndexID) end
---@param SoundMajorID int32
---@param SoundMinorID int32
---@return FCriLipsMorphTargetBlendAmountAsJapanese
function ULipsyncAppObserverSubsystem:getLipsyncLiveInfo(SoundMajorID, SoundMinorID) end
---@param SoundMajorID int32
---@param SoundMinorID int32
function ULipsyncAppObserverSubsystem:FinishSpeakCharacterFromSoundID(SoundMajorID, SoundMinorID) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
function ULipsyncAppObserverSubsystem:FinishSpeakCharacter(CharcterCategoryType, CharaIndexID) end


---@class ULoading : UObject
---@field pLoadingDraw ALoadingDraw
---@field LoadingDrawClass TSubclassOf<ALoadingDraw>
---@field pAssetLoader UAssetLoader
local ULoading = {}

---@param Time ECldTimeZone
function ULoading:Start(Time) end
---@param LoadingDraw ALoadingDraw
function ULoading:SpawnDrawActor(LoadingDraw) end
function ULoading:End() end


---@class UMailIncomingDataAsset : UAppMultiDataAsset
---@field Data TMap<int32, FMailIncomingItem>
local UMailIncomingDataAsset = {}



---@class UMaterialItemListTable : UAppDataAsset
---@field Data TArray<FMaterialItemList>
local UMaterialItemListTable = {}



---@class UMessageDialog : UObject
local UMessageDialog = {}


---@class UMiniMapAssetLoader : UObject
---@field pAssetLoader UAssetLoader
---@field bLoadedFlag boolean
---@field pMapTex UTexture
---@field pFldMiniMapIconTable UMiniMapIconListTable
---@field pMapParts UTexture
---@field pWallTex UTexture
---@field pPartMaskSpr USprAsset
---@field EFldType EFldType
local UMiniMapAssetLoader = {}

---@return UTexture
function UMiniMapAssetLoader:GetWallTex() end
---@param Index int32
---@return TMap<int32, int32>
function UMiniMapAssetLoader:GetTartarusMapPartIndexList(Index) end
---@return USprAsset
function UMiniMapAssetLoader:GetPartMaskSpr() end
---@param Index int32
---@return TArray<uint8>
function UMiniMapAssetLoader:GetPartList(Index) end
---@return UTexture
function UMiniMapAssetLoader:GetMapTexture() end
---@return UTexture
function UMiniMapAssetLoader:GetMapTex() end
---@param Index int32
---@return UTexture
function UMiniMapAssetLoader:GetMapParts(Index) end
---@return EFldType
function UMiniMapAssetLoader:GetFldType() end
---@return UMiniMapIconListTable
function UMiniMapAssetLoader:GetFldMiniMapIconTable() end
---@return UAssetLoader
function UMiniMapAssetLoader:GetAssetLoader() end


---@class UMiniMapIconListTable : UAppDataAsset
---@field Data TArray<FMiniMapIconList>
local UMiniMapIconListTable = {}



---@class UMiniMapInfoDataAsset : UAppDataAsset
---@field Data TArray<FMiniMapInfoTable>
local UMiniMapInfoDataAsset = {}



---@class UMiniMapOffsetDataAsset : UAppDataAsset
---@field Data TArray<FMiniMapOffsetTable>
local UMiniMapOffsetDataAsset = {}



---@class UModelCaptureLayoutDataAsset : UAppDataAsset
---@field Environment FModelCaptureEnvironment
---@field Data TArray<FModelCaptureLayoutItem>
local UModelCaptureLayoutDataAsset = {}



---@class UModelTestComp : UActorComponent
---@field mpDebugMenu UDebugMenu
---@field mCharClass TSubclassOf<ACharacter>
---@field mpTestSpr USprAsset
---@field mpTestMaterial UMaterial
---@field mpTestMID UMaterialInstanceDynamic
---@field mMatPushPopArray TArray<UMaterialInterface>
---@field mMatArray TArray<UMaterialInstanceDynamic>
---@field mpAnimController UAnimController
---@field mpTestSpawnCharacter ACharacter
---@field mTestAnimSeqArray TArray<UAnimSequence>
---@field mAiCharArray TArray<ACharacter>
---@field mpCamera ACineCameraActor
---@field mpSceneCaptureComp USceneCaptureComponent2D
---@field mpCollisionActor UCollisionActor
---@field mpAttachTestSphere USphereComponent
---@field mpMeshComp UStaticMeshComponent
---@field mpLight APointLight
---@field mpAssetLoader UAssetLoader
---@field mpPostProcessVolume APostProcessVolume
---@field mpCaptureDrawMat UMaterial
---@field mTestMatArray TArray<UMaterial>
---@field mTestMidArray TArray<UMaterialInstanceDynamic>
---@field mpDrawTestSpr USprAsset
---@field mTestComponent UTestActorComponent
---@field InputActivate boolean
local UModelTestComp = {}



---@class UMoonAgeProbabilityDataAsset : UAppDataAsset
---@field Data TArray<FMoonAgeProbabilityItem>
local UMoonAgeProbabilityDataAsset = {}



---@class UMovieCuePointFunction : UBlueprintFunctionLibrary
local UMovieCuePointFunction = {}

---@param ManaComponent UManaComponent
function UMovieCuePointFunction:MovieSetMetaDataWorkAllocator(ManaComponent) end
function UMovieCuePointFunction:MovieLoadAssetStart() end
---@param ManaComponent UManaComponent
function UMovieCuePointFunction:MovieLoadAssetForCuePoint(ManaComponent) end
---@return boolean
function UMovieCuePointFunction:MovieIsLoadedAssetForCuePoint() end
---@return int32
function UMovieCuePointFunction:MovieGetLanguageTrack() end
---@param ManaComponent UManaComponent
---@param trackId int32
---@return int32
function UMovieCuePointFunction:MovieCheckTrackId(ManaComponent, trackId) end
---@param ManaComponent UManaComponent
function UMovieCuePointFunction:MovieBindCuePointFunction(ManaComponent) end


---@class UMovieCuePointManager : UObject
---@field AssetLoader UAssetLoader
---@field BmdAsset UBmdAsset
local UMovieCuePointManager = {}



---@class UMoviePanel : UActorComponent
---@field MovieMaterial UMaterialInterface
---@field bEnable boolean
---@field OTType int32
local UMoviePanel = {}

---@param OT int32
function UMoviePanel:SetOT(OT) end


---@class UMovieSceneEvtAdxSoundFadeSection : UMovieSceneSection
---@field EventData FMovieSceneEvtAdxSoundFadeSectionData
local UMovieSceneEvtAdxSoundFadeSection = {}



---@class UMovieSceneEvtAdxSoundFadeTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtAdxSoundFadeTrack = {}



---@class UMovieSceneEvtAdxSoundManageSection : UMovieSceneSection
---@field EventData FMovieSceneEvtAdxSoundManageSectionData
local UMovieSceneEvtAdxSoundManageSection = {}



---@class UMovieSceneEvtAdxSoundManageTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtAdxSoundManageTrack = {}



---@class UMovieSceneEvtAdxSoundSection : UMovieSceneSection
---@field EventData FMovieSceneEvtAdxSoundSectionData
local UMovieSceneEvtAdxSoundSection = {}



---@class UMovieSceneEvtAdxSoundTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtAdxSoundTrack = {}



---@class UMovieSceneEvtCharaAnimationSection : UMovieSceneSection
---@field Events FNameCurve
---@field EventData FMovieSceneEvtCharaAnimationSectionData
local UMovieSceneEvtCharaAnimationSection = {}



---@class UMovieSceneEvtCharaAnimationTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventPosition EAtlCharaAnimFireEventsAtPosition
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaAnimationTrack = {}



---@class UMovieSceneEvtCharaHandwritingSection : UMovieSceneSection
---@field EventData FMovieSceneEvtCharaHandwritingSectionData
local UMovieSceneEvtCharaHandwritingSection = {}



---@class UMovieSceneEvtCharaHandwritingTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaHandwritingTrack = {}



---@class UMovieSceneEvtCharaOperationControllerSection : UMovieSceneSection
---@field EventData FMovieSceneEvtCharaOperationControllerSectionData
local UMovieSceneEvtCharaOperationControllerSection = {}



---@class UMovieSceneEvtCharaOperationControllerTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaOperationControllerTrack = {}



---@class UMovieSceneEvtCharaPackAnimationSection : UMovieSceneSection
---@field EventData FMovieSceneEvtCharaPackAnimationSectionData
local UMovieSceneEvtCharaPackAnimationSection = {}



---@class UMovieSceneEvtCharaPackAnimationTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaPackAnimationTrack = {}



---@class UMovieSceneEvtCharaPackFaceAnimationSection : UMovieSceneSection
---@field Events FNameCurve
---@field EventData FMovieSceneEvtCharaPackFaceAnimationSectionData
local UMovieSceneEvtCharaPackFaceAnimationSection = {}



---@class UMovieSceneEvtCharaPackFaceAnimationTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventPosition EAtlCharaFaceAnimFireEventsAtPosition
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaPackFaceAnimationTrack = {}



---@class UMovieSceneEvtCharaPropAttachSection : UMovieSceneSection
---@field EventData FMovieSceneEvtCharaPropAttachSectionData
local UMovieSceneEvtCharaPropAttachSection = {}



---@class UMovieSceneEvtCharaPropAttachTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtCharaPropAttachTrack = {}



---@class UMovieSceneEvtConditionalBranchTrack : UMovieSceneNameableTrack
---@field CondBranchData FMovieSceneEvtConditionalBranchData
local UMovieSceneEvtConditionalBranchTrack = {}



---@class UMovieSceneEvtDialogueOptionsSection : UMovieSceneSection
---@field Events FNameCurve
---@field EventData FMovieSceneEvtDialogueOptionsSectionData
local UMovieSceneEvtDialogueOptionsSection = {}



---@class UMovieSceneEvtDialogueOptionsTrack : UMovieSceneNameableTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventPosition EFireEventsAtPositionggg
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtDialogueOptionsTrack = {}



---@class UMovieSceneEvtDialogueSection : UMovieSceneSection
---@field EventData FMovieSceneEvtDialogueSectionData
---@field Events FNameCurve
local UMovieSceneEvtDialogueSection = {}



---@class UMovieSceneEvtDialogueTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtDialogueTrack = {}



---@class UMovieSceneEvtFadeScreenSection : UMovieSceneSection
---@field EventData FMovieSceneEvtFadeScreenSectionData
local UMovieSceneEvtFadeScreenSection = {}



---@class UMovieSceneEvtFadeScreenTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtFadeScreenTrack = {}



---@class UMovieSceneEvtFieldAnimationSection : UMovieSceneSection
---@field EventData FMovieSceneEvtFieldAnimationSectionData
local UMovieSceneEvtFieldAnimationSection = {}



---@class UMovieSceneEvtFieldAnimationTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtFieldAnimationTrack = {}



---@class UMovieSceneEvtMessageSubtitleSection : UMovieSceneSection
---@field EventData FMovieSceneEvtMessageSubtitleSectionData
local UMovieSceneEvtMessageSubtitleSection = {}



---@class UMovieSceneEvtMessageSubtitleTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtMessageSubtitleTrack = {}



---@class UMovieSceneEvtMovieSection : UMovieSceneSection
---@field EventData FMovieSceneEvtMovieSectionData
local UMovieSceneEvtMovieSection = {}



---@class UMovieSceneEvtMovieTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtMovieTrack = {}



---@class UMovieSceneEvtScriptSection : UMovieSceneSection
---@field EventData FMovieSceneEvtScriptSectionData
local UMovieSceneEvtScriptSection = {}



---@class UMovieSceneEvtScriptTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtScriptTrack = {}



---@class UMovieSceneEvtSeqControllerSection : UMovieSceneSection
---@field EventData FMovieSceneEvtSeqControllerSectionData
local UMovieSceneEvtSeqControllerSection = {}



---@class UMovieSceneEvtSeqControllerTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtSeqControllerTrack = {}



---@class UMovieSceneEvtSeqTimeJumpControllerSection : UMovieSceneSection
---@field EventData FMovieSceneEvtSeqTimeJumpControllerSectionData
local UMovieSceneEvtSeqTimeJumpControllerSection = {}



---@class UMovieSceneEvtSeqTimeJumpControllerTrack : UMovieSceneEvtConditionalBranchTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneEvtSeqTimeJumpControllerTrack = {}



---@class UMoviesEventDataAsset : UAppDataAsset
---@field Table TArray<FMoviesEventData>
local UMoviesEventDataAsset = {}



---@class UMsgAssist : UMsgItem
local UMsgAssist = {}


---@class UMsgDLC : UMsgItem
local UMsgDLC = {}


---@class UMsgDictionary : UMsgItem
local UMsgDictionary = {}


---@class UMsgItem : UObject
---@field MssageList TArray<FMsgItemInfo>
---@field SpeakerList TArray<FMsgItemInfo>
---@field mpMsgProcWindow UMsgProcWindowBase
local UMsgItem = {}



---@class UMsgManager : UObject
---@field ProcList TArray<UMsgProcItem>
---@field MsgReleaseList TArray<UMsgItem>
---@field Simple_LayoutData UDataTable
---@field SelectSimple_LayoutData UDataTable
---@field CS_A_LayoutData UDataTable
---@field CS_A_LayoutDataTable UUILayoutDataTable
---@field AssistLayoutDataTextCol UDataTable
---@field AssistLayoutData UDataTable
---@field BacklogLayoutDataTextCol UDataTable
---@field AssistTextColLayoutDataTable UUILayoutDataTable
---@field AssistLayoutDataTable UUILayoutDataTable
---@field BacklogTextColLayoutDataTable UUILayoutDataTable
---@field Mind_LayoutData UDataTable
---@field pAssetLoader UAssetLoader
---@field pCSAssetLoader UAssetLoader
local UMsgManager = {}



---@class UMsgMessage : UMsgItem
local UMsgMessage = {}


---@class UMsgMind : UMsgItem
local UMsgMind = {}


---@class UMsgMindSubtitles : UMsgItem
---@field pTexture UTexture
---@field pAssetLoader UAssetLoader
local UMsgMindSubtitles = {}



---@class UMsgPerformance : UMsgItem
local UMsgPerformance = {}


---@class UMsgProcItem : UObject
---@field pMsgItem UMsgItem
---@field pSelItem USelItem
local UMsgProcItem = {}



---@class UMsgProcWindowBase : UObject
---@field pMsgWork UMsgItem
---@field pTutorialManager UTutorialManager
local UMsgProcWindowBase = {}



---@class UMsgProcWindow_Assist : UMsgProcWindowBase
---@field Loader_ UAssetLoader
---@field MsgSpr_ USprAsset
---@field SupportPos TArray<FVector>
local UMsgProcWindow_Assist = {}



---@class UMsgProcWindow_Mind : UMsgProcWindowBase
---@field Loader_ UAssetLoader
---@field ReadMat_ UMaterial
---@field ReadaddMat_ UMaterial
---@field ReadblurMat_ UMaterial
---@field ReadlineMat_ UMaterial
---@field ReadMatInst_ UMaterialInstanceDynamic
---@field ReadaddMatInst_ UMaterialInstanceDynamic
---@field ReadblurMatInst_ UMaterialInstanceDynamic
---@field ReadlineMatInst_ UMaterialInstanceDynamic
---@field _readSpr USprAsset
---@field MsgPlg_ UPlgAsset
---@field LayoutDataTable UUILayoutDataTable
local UMsgProcWindow_Mind = {}



---@class UMsgProcWindow_Performance : UMsgProcWindowBase
---@field m_pPerformanceLoader UAssetLoader
---@field PerformanceDrawClass TSubclassOf<AitfMsgProgWindow_TUTRIALDraw>
---@field pPerformanceDraw AitfMsgProgWindow_TUTRIALDraw
---@field TextColDataTable UDataTable
---@field TextColLayoutDataTable UUILayoutDataTable
---@field OkNextLayoutData UDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutData UDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
local UMsgProcWindow_Performance = {}



---@class UMsgProcWindow_Select : UMsgProcWindowBase
---@field pSelWork USelItem
local UMsgProcWindow_Select = {}



---@class UMsgProcWindow_Select_Mind : UMsgProcWindow_Select
---@field BustupObject_ UBustupObject
---@field MsgSpr_ USprAsset
---@field MsgPlg_ UPlgAsset
---@field Loader_ UAssetLoader
---@field LayoutDataTable UUILayoutDataTable
---@field MsgPlgExt_ UPlgAsset
---@field ReadInactiveMat_ UMaterial
---@field ReadAddBaseMat_ UMaterial
---@field ReadBaseMat_ UMaterial
---@field ReadlineMat_ UMaterial
---@field ReadInactiveMatInst_ UMaterialInstanceDynamic
---@field ReadAddBaseMatInst_ UMaterialInstanceDynamic
---@field ReadBaseMatInst_ UMaterialInstanceDynamic
---@field ReadlineMatInst_ UMaterialInstanceDynamic
---@field ReadLineUnderMatInst_ UMaterialInstanceDynamic
local UMsgProcWindow_Select_Mind = {}



---@class UMsgProcWindow_Select_Simple : UMsgProcWindow_Select
---@field BustupObject_ UBustupObject
---@field MsgSpr_ USprAsset
---@field MsgPlg_ UPlgAsset
---@field LayoutDataTable UUILayoutDataTable
local UMsgProcWindow_Select_Simple = {}



---@class UMsgProcWindow_Simple : UMsgProcWindowBase
---@field Loader_ UAssetLoader
---@field MsgSpr_ USprAsset
---@field MsgPlg_ UPlgAsset
---@field LayoutDataTable UUILayoutDataTable
local UMsgProcWindow_Simple = {}



---@class UMsgProcWindow_System : UMsgProcWindowBase
---@field m_pSystemLoader UAssetLoader
---@field SystemDrawClass TSubclassOf<AitfMsgProgWindow_TUTRIALDraw>
---@field pSystemDraw AitfMsgProgWindow_TUTRIALDraw
---@field TextColDataTable UDataTable
---@field TextColLayoutDataTable UUILayoutDataTable
---@field OkNextLayoutData UDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutData UDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
local UMsgProcWindow_System = {}



---@class UMsgProcWindow_Tutorial : UMsgProcWindowBase
---@field m_pTutrialLoader UAssetLoader
---@field TutrialDrawClass TSubclassOf<AitfMsgProgWindow_TUTRIALDraw>
---@field pTutrialDraw AitfMsgProgWindow_TUTRIALDraw
---@field TextColDataTable UDataTable
---@field TextColLayoutDataTable UUILayoutDataTable
---@field OkNextLayoutData UDataTable
---@field OkNextLayoutDataTable UUILayoutDataTable
---@field OkNextMaskLayoutData UDataTable
---@field OkNextMaskLayoutDataTable UUILayoutDataTable
local UMsgProcWindow_Tutorial = {}



---@class UMsgSubtitles : UMsgItem
local UMsgSubtitles = {}


---@class UMsgSystem : UMsgItem
local UMsgSystem = {}


---@class UMsgTutorial : UMsgItem
local UMsgTutorial = {}


---@class UMsgWork : UObject
---@field pMsgManager UMsgManager
---@field pTutorialManager UTutorialManager
local UMsgWork = {}



---@class UMyBlueprintFunctionLibrary : UBlueprintFunctionLibrary
local UMyBlueprintFunctionLibrary = {}


---@class UNameEntryCnvCharDataAsset : UAppDataAsset
---@field Data TMap<uint32, FString>
local UNameEntryCnvCharDataAsset = {}



---@class UNiagaraCameraAttachComponent : USceneComponent
---@field NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field SpawnLocation FVector
---@field bAutoDestroy boolean
---@field bAsyncSystemLoad boolean
---@field SpawnNiagaraSystem UNiagaraSystem
---@field bIsAutoAttachCam boolean
---@field bIsAutPlay boolean
---@field ParticleComponent UNiagaraComponent
local UNiagaraCameraAttachComponent = {}

---@param Parent USceneComponent
function UNiagaraCameraAttachComponent:SetAttachCam(Parent) end
function UNiagaraCameraAttachComponent:PlayEffect() end
function UNiagaraCameraAttachComponent:OnLoadSystem() end
---@param PSystem UNiagaraComponent
function UNiagaraCameraAttachComponent:OnComplete(PSystem) end
---@return boolean
function UNiagaraCameraAttachComponent:IsCallDestroy() end
---@return boolean
function UNiagaraCameraAttachComponent:IsAssetLoaded() end
---@return UNiagaraComponent
function UNiagaraCameraAttachComponent:GetParticleComponent() end


---@class UNormalSpreadDataAsset : UAppDataAsset
---@field Data TArray<FNormalSpreadItem>
local UNormalSpreadDataAsset = {}



---@class UPadRumble : UObject
---@field haveRumble UForceFeedbackEffect
---@field haveRumble2 UForceFeedbackEffect
---@field ProgramEffect UForceFeedbackEffect
local UPadRumble = {}



---@class UPartyPanelRecoveryEffect : UObject
---@field m_pSpr USprAsset
---@field m_curveRecoveryEffect FCurveLinearColorAnimation
local UPartyPanelRecoveryEffect = {}



---@class UPauseUserWidget : UUserWidget
---@field bTickEvenWhenPaused boolean
local UPauseUserWidget = {}

---@param bTickableWhenPaused boolean
function UPauseUserWidget:SetTickableWhenPaused(bTickableWhenPaused) end
---@return boolean
function UPauseUserWidget:GetTickableWhenPaused() end


---@class UPersonaConfigDataAsset : UAppDataAsset
---@field Data TArray<FPersonaConfigItem>
local UPersonaConfigDataAsset = {}



---@class UPersonaLiftDataAsset : UAppDataAsset
---@field Data TArray<FPersonaLiftItem>
local UPersonaLiftDataAsset = {}



---@class UPersonaStatusChangeSkillSeq : UPersonaStatusSeq
---@field SkillHelpSequence_ UPersonaStatusSkillHelpSeq
local UPersonaStatusChangeSkillSeq = {}



---@class UPersonaStatusCommentarySeq : UPersonaStatusSeq
local UPersonaStatusCommentarySeq = {}


---@class UPersonaStatusLvUpSeq : UPersonaStatusSeq
---@field SkillHelpSequence_ UPersonaStatusSkillHelpSeq
---@field SelectSkillSequence_ UPersonaStatusSelectSkillSeq
---@field ChangeSkillSequence_ UPersonaStatusChangeSkillSeq
---@field CombineCalc_ UUICombineCalc
local UPersonaStatusLvUpSeq = {}



---@class UPersonaStatusParamUpSeq : UPersonaStatusSeq
---@field SkillHelpSequence_ UPersonaStatusSkillHelpSeq
local UPersonaStatusParamUpSeq = {}



---@class UPersonaStatusRememberSkillSeq : UPersonaStatusSeq
local UPersonaStatusRememberSkillSeq = {}


---@class UPersonaStatusSelectSkillSeq : UPersonaStatusSeq
local UPersonaStatusSelectSkillSeq = {}


---@class UPersonaStatusSeq : UObject
local UPersonaStatusSeq = {}


---@class UPersonaStatusSkillCardSeq : UPersonaStatusSeq
---@field SkillHelpSequence_ UPersonaStatusSkillHelpSeq
---@field SelectSkillSequence_ UPersonaStatusSelectSkillSeq
local UPersonaStatusSkillCardSeq = {}



---@class UPersonaStatusSkillHelpSeq : UPersonaStatusSeq
local UPersonaStatusSkillHelpSeq = {}


---@class UPersonaStatusSkillInfoSeq : UPersonaStatusSeq
local UPersonaStatusSkillInfoSeq = {}


---@class UPersonaStatusSkillListSeq : UPersonaStatusSeq
local UPersonaStatusSkillListSeq = {}


---@class UPlatformFunctionLibrary : UBlueprintFunctionLibrary
local UPlatformFunctionLibrary = {}

---@return EPlatformName
function UPlatformFunctionLibrary:Platform() end
---@param OutProductId FString
function UPlatformFunctionLibrary:GetStoreProductInfo(OutProductId) end
---@param InIsTrial boolean
---@param InIsBackward boolean
---@param OutTitleId FString
---@param OutFingerprint FString
function UPlatformFunctionLibrary:GetProductInfo(InIsTrial, InIsBackward, OutTitleId, OutFingerprint) end
---@return float
function UPlatformFunctionLibrary:GetFPS() end


---@class UPrgssCommonData : UObject
---@field mActor_ APrgssCmnDataActor
---@field mData_ UAstreaProgressDataAsset
local UPrgssCommonData = {}



---@class UQuestDisappearList : UUIScene
---@field Context_ AUICmpQuest
local UQuestDisappearList = {}



---@class UQuestElizMessage : UObject
local UQuestElizMessage = {}


---@class UQuestElizRequest : UUIScene
---@field Context_ AUICmpQuest
---@field ElizMessage_ UQuestElizMessage
local UQuestElizRequest = {}



---@class USeedLotteryDataAsset : UAppDataAsset
---@field Data TArray<FSeedLotteryTableItem>
local USeedLotteryDataAsset = {}



---@class USelAEventTypeA : USelItem
---@field pSprAsset USprAsset
---@field pAssetLoader UAssetLoader
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
local USelAEventTypeA = {}



---@class USelAEventTypeB : USelItem
---@field pSprAsset USprAsset
---@field pTexture UTexture
---@field pAssetLoader UAssetLoader
---@field pCineCamera UCineCameraComponent
---@field pParamLayoutData UDataTable
---@field pLayoutDataTable UUILayoutDataTable
local USelAEventTypeB = {}



---@class USelFukaSuport : USelItem
local USelFukaSuport = {}


---@class USelItem : UObject
---@field mpSelProcWindow UMsgProcWindow_Select
local USelItem = {}



---@class USelMessage : USelItem
local USelMessage = {}


---@class USelMind : USelItem
local USelMind = {}


---@class USeqBpFuncLib : UBlueprintFunctionLibrary
local USeqBpFuncLib = {}

function USeqBpFuncLib:StartGameSequence() end
function USeqBpFuncLib:GoToTartarus() end
---@param CheckProgress int32
---@return boolean
function USeqBpFuncLib:CheckAstreaProgressOver(CheckProgress) end
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function USeqBpFuncLib:CallWeaponShop(WorldContextObject, LatentInfo) end
function USeqBpFuncLib:CallTitle() end
---@param FieldMajor int32
---@param FieldMinor int32
---@param KeyfreeEventID int32
---@param PlayerStartID int32
function USeqBpFuncLib:CallKeyfreeEvent(FieldMajor, FieldMinor, KeyfreeEventID, PlayerStartID) end
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function USeqBpFuncLib:CallItemShop(WorldContextObject, LatentInfo) end
---@param FieldMajor int32
---@param FieldMinor int32
---@param PlayerStartID int32
function USeqBpFuncLib:CallField(FieldMajor, FieldMinor, PlayerStartID) end
---@param EventMajor int32
---@param EventMinor int32
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function USeqBpFuncLib:CallEventCmm(EventMajor, EventMinor, WorldContextObject, LatentInfo) end
---@param EventMajor int32
---@param EventMinor int32
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function USeqBpFuncLib:CallEvent(EventMajor, EventMinor, WorldContextObject, LatentInfo) end
function USeqBpFuncLib:CallCalendar() end
---@param EncountID int32
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function USeqBpFuncLib:CallBattle(EncountID, WorldContextObject, LatentInfo) end
function USeqBpFuncLib:CallAstreaProgress() end


---@class USequence : UObject
local USequence = {}


---@class UShdParameter : UObject
local UShdParameter = {}


---@class UShoesItemListTable : UAppDataAsset
---@field Data TArray<FShoesItemList>
local UShoesItemListTable = {}



---@class USignedInDialog : UObject
local USignedInDialog = {}


---@class USimpleShopDataAsset : UAppMultiDataAsset
---@field Data TArray<FSimpleShopData>
local USimpleShopDataAsset = {}



---@class USkillAffinityDataAsset : UAppDataAsset
---@field Data TArray<FSkillAffinityItem>
local USkillAffinityDataAsset = {}



---@class USkillChangeDataAsset : UAppDataAsset
---@field Data TArray<FSkillChangeItem>
local USkillChangeDataAsset = {}



---@class USkillLimitDataAsset : UAppDataAsset
---@field Data TArray<FSkillLimitItem>
local USkillLimitDataAsset = {}



---@class USkillPackDataAsset : UAppDataAsset
---@field Data TArray<FSkillPackItems>
local USkillPackDataAsset = {}



---@class USkillPowerUpDataAsset : UAppDataAsset
---@field Data TArray<FSkillPowerUpItem>
local USkillPowerUpDataAsset = {}



---@class USkillcardItemListTable : UAppDataAsset
---@field Data TArray<FSkillcardItemList>
local USkillcardItemListTable = {}



---@class USoundApp : UObject
local USoundApp = {}

---@param CueId int32
function USoundApp:StopSingleVoice(CueId) end
---@param CharaIndexID int32
---@param UseAttenuator boolean
---@param BankNum int32
function USoundApp:StopFacilityVoice(CharaIndexID, UseAttenuator, BankNum) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param BankNum int32
function USoundApp:StopEventVoiceWithLipSync(CharcterCategoryType, CharaIndexID, BankNum) end
---@param BankNum int32
function USoundApp:StopEventVoice(BankNum) end
---@param CueId int32
---@param BankNum int32
function USoundApp:StopEventSE(CueId, BankNum) end
---@param CueId int32
function USoundApp:StopComSE(CueId) end
function USoundApp:StopBGM_IMD() end
function USoundApp:StopBGM() end
---@param BankNum int32
function USoundApp:StopBattleEventVoice(BankNum) end
---@param BankNum int32
function USoundApp:StopBackLogVoice(BankNum) end
---@param bPause boolean
function USoundApp:SetSystemPausePlayerAll(bPause) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param Selector FString
---@param Label FString
function USoundApp:SetSelectorLabel(PlayerMajorID, PlayerMinorID, Selector, Label) end
---@param bPause boolean
function USoundApp:SetPausePlayerAll(bPause) end
---@param majorId int32
---@param minorId int32
---@param bPause boolean
function USoundApp:SetPausePlayer(majorId, minorId, bPause) end
---@param ControlValue float
function USoundApp:SetAisacByNameVOICE(ControlValue) end
---@param ControlValue float
function USoundApp:SetAisacByNameSE(ControlValue) end
---@param ControlValue float
function USoundApp:SetAisacByNameBGM(ControlValue) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
function USoundApp:ResetSelectorLabel(PlayerMajorID, PlayerMinorID) end
---@param Filename FString
---@param BankNum int32
---@return boolean
function USoundApp:ReqReadFacilityVoiceData(Filename, BankNum) end
---@param Filename FString
---@param BankNum int32
---@return boolean
function USoundApp:ReqReadEventVoiceData(Filename, BankNum) end
---@param Filename FString
---@param BankNum int32
---@param UseLipsync boolean
---@return boolean
function USoundApp:ReqReadBattleEventVoiceData(Filename, BankNum, UseLipsync) end
---@param Filename FString
---@param BankNum int32
---@return boolean
function USoundApp:ReqReadBackLogVoiceData(Filename, BankNum) end
---@param GameInst UGameInstance
---@param BankNum int32
---@return boolean
function USoundApp:ReleaseFacilityVoiceData(GameInst, BankNum) end
---@param GameInst UGameInstance
---@param BankNum int32
---@return boolean
function USoundApp:ReleaseEventVoiceData(GameInst, BankNum) end
---@param GameInst UGameInstance
---@param BankNum int32
---@return boolean
function USoundApp:ReleaseBattleEventVoiceData(GameInst, BankNum) end
---@param GameInst UGameInstance
---@param BankNum int32
---@return boolean
function USoundApp:ReleaseBackLogVoiceData(GameInst, BankNum) end
---@param SimpleLipsParam FCharacterSimpleLipsAnimAppParam
---@param CueId int32
---@param SoundMajorID int32
---@param BankNum int32
function USoundApp:PlayVoiceWithSimpleLipCustomParam(SimpleLipsParam, CueId, SoundMajorID, BankNum) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param CueId int32
---@param SoundMajorID int32
---@param BankNum int32
function USoundApp:PlayVoiceWithLipsync(CharcterCategoryType, CharaIndexID, CueId, SoundMajorID, BankNum) end
---@param CueId int32
function USoundApp:PlaySingleVoice(CueId) end
---@param CueId int32
---@param CharaIndexID int32
---@param UseAttenuator boolean
---@param BankNum int32
---@param UseLips boolean
function USoundApp:PlayFacilityVoice(CueId, CharaIndexID, UseAttenuator, BankNum, UseLips) end
---@param SimpleLipsParam FCharacterSimpleLipsAnimAppParam
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayEventVoiceWithSimpleLipCustomParam(SimpleLipsParam, CueId, BankNum) end
---@param CharcterCategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayEventVoiceWithLipsync(CharcterCategoryType, CharaIndexID, CueId, BankNum) end
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayEventVoice(CueId, BankNum) end
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayEventSE(CueId, BankNum) end
---@param CueId int32
function USoundApp:PlayComSE(CueId) end
---@param CueId int32
---@param isForcePlay boolean
function USoundApp:PlayBGM(CueId, isForcePlay) end
---@param CategoryType EAppCharCategoryType
---@param CharaIndexID int32
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayBattleEventVoiceWithLipsync(CategoryType, CharaIndexID, CueId, BankNum) end
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayBattleEventVoice(CueId, BankNum) end
---@param CueId int32
function USoundApp:PlayBattleBGM(CueId) end
---@param CueId int32
---@param BankNum int32
function USoundApp:PlayBackLogVoice(CueId, BankNum) end
---@param BankNum int32
---@param bPause boolean
function USoundApp:PauseEventVoice(BankNum, bPause) end
---@param BankNum int32
---@return boolean
function USoundApp:IsSetupEndFacilityVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsSetupEndEventVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsSetupEndBattleEventVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsSetupEndBackLogVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingSingleVoice(BankNum) end
---@param UseAttenuator boolean
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingFacilityVoice(UseAttenuator, BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingEventVoice(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingComSE(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingBattleEventVoice(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsPlayingBackLogVoice(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsActiveFacilityVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsActiveEventVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsActiveBattleEventVoiceData(BankNum) end
---@param BankNum int32
---@return boolean
function USoundApp:IsActiveBackLogVoiceData(BankNum) end
function USoundApp:Init() end
---@param majorId int32
---@param minorId int32
---@return float
function USoundApp:GetTime(majorId, minorId) end
---@return int32
function USoundApp:GetNowPlayBGMQueID() end
---@param BankNum int32
---@return FCriLipsMorphTargetBlendAmountAsJapanese
function USoundApp:getLipsyncLiveInfo(BankNum) end
---@param majorId int32
---@param minorId int32
---@param CueId int32
---@return float
function USoundApp:GetLength(majorId, minorId, CueId) end
---@return FString
function USoundApp:GetCurrentAppliedSnapshot() end
---@param FadeOutFrame int32
function USoundApp:FadeOutComSE(FadeOutFrame) end
---@param FadeOutFrame int32
---@param fadeOutVolume float
function USoundApp:FadeOutCategoryBGM(FadeOutFrame, fadeOutVolume) end
---@param FadeOutFrame int32
function USoundApp:FadeoutBGM(FadeOutFrame) end
---@param FadeInFrame int32
---@param fadeOutVolume float
function USoundApp:FadeInCategoryBGM(FadeInFrame, fadeOutVolume) end
---@param FadeOutFrame int32
function USoundApp:FadeInBGM(FadeOutFrame) end
function USoundApp:DetachDspBusSetting() end
---@param BankNum int32
---@return boolean
function USoundApp:CheckPauseEventVoice(BankNum) end
---@param SettingName FString
function USoundApp:AttachDspBusSetting(SettingName) end
---@param SnapshotName FString
---@param Millisecond int32
function USoundApp:ApplyDspBusSnapshot(SnapshotName, Millisecond) end


---@class USoundDataAssets : UObject
---@field pAssetLoader UAssetLoader
---@field pDlcBgm UDataAsset
local USoundDataAssets = {}



---@class USoundMonitorACBReadAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FSoundMonitorACBReadAsyncFunctionCompleted
local USoundMonitorACBReadAsyncFunction = {}

---@param WorldContextObject UObject
---@param acbBankID int32
---@return USoundMonitorACBReadAsyncFunction
function USoundMonitorACBReadAsyncFunction:SoundMonitorACBReadAsyncFunction(WorldContextObject, acbBankID) end


---@class USoundMonitorReadyAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FSoundMonitorReadyAsyncFunctionCompleted
local USoundMonitorReadyAsyncFunction = {}

---@param WorldContextObject UObject
---@return USoundMonitorReadyAsyncFunction
function USoundMonitorReadyAsyncFunction:SoundMonitorReadyAsyncFunction(WorldContextObject) end


---@class USoundTableTypes : UObject
local USoundTableTypes = {}


---@class USpecialSpreadDataAsset : UAppDataAsset
---@field Data TArray<FSpecialSpreadItem>
local USpecialSpreadDataAsset = {}



---@class UStaffRollDataAsset : UAppDataAsset
---@field Data TArray<FStaffRollTableData>
local UStaffRollDataAsset = {}



---@class USteamInputLibrary : UBlueprintFunctionLibrary
local USteamInputLibrary = {}

---@return boolean
function USteamInputLibrary:SteamInputPadPress_RightUp() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_RightRight() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_RightLeft() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_RightDown() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_R3() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_R2() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_R1() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_LeftUp() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_LeftRight() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_LeftLeft() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_LeftDown() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_L3() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_L2() end
---@return boolean
function USteamInputLibrary:SteamInputPadPress_L1() end
---@return boolean
function USteamInputLibrary:SteamInputInitialize() end
function USteamInputLibrary:SteamInitializeLanguage() end
---@param nIndex int32
---@return ESteamControllerType
function USteamInputLibrary:GetInputTypeName(nIndex) end


---@class USuggestionListTable : UAppDataAsset
---@field Data TArray<FSuggestionList>
local USuggestionListTable = {}



---@class USuggestionTextListTable : UAppDataAsset
---@field Data TArray<FSuggestionTextList>
local USuggestionTextListTable = {}



---@class USummerFestivalEventDataAsset : UAppDataAsset
---@field Table TArray<FSummerFestivalEventData>
local USummerFestivalEventDataAsset = {}



---@class USupportBustupDataAsset : UAppDataAsset
---@field Data TArray<FSupportBustupParam>
local USupportBustupDataAsset = {}



---@class UTCSSaveData : UObject
local UTCSSaveData = {}


---@class UTestActorComponent : UActorComponent
---@field OnTestEventDispatcher FTestActorComponentOnTestEventDispatcher
---@field OnTestEventDispatcher2 FTestActorComponentOnTestEventDispatcher2
local UTestActorComponent = {}



---@class UTestAnimInst : UAnimInstance
---@field LookatPosition2 FVector
---@field LookatAlpha2 float
---@field ExpressionTrig int32
---@field AnimSeq0 UAnimSequence
---@field AnimSeq1 UAnimSequence
local UTestAnimInst = {}

---@param Type int32
---@param Param int32
function UTestAnimInst:TestFunction(Type, Param) end
---@param Type int32
---@param Param int32
function UTestAnimInst:AnimChange(Type, Param) end


---@class UTestIguchiFuncLib : UBlueprintFunctionLibrary
local UTestIguchiFuncLib = {}

function UTestIguchiFuncLib:StartReplaceCostumeID() end


---@class UTestNishidaDataAsset : UAppDataAsset
---@field Data TArray<FTestNishidaDataTable>
local UTestNishidaDataAsset = {}



---@class UTestNishidaResource : UObject
---@field m_pTexture UTexture
---@field m_pSoftTexture TSoftObjectPtr<UTexture>
local UTestNishidaResource = {}



---@class UTestPauseSoundClass : UObject
local UTestPauseSoundClass = {}

---@param flag boolean
function UTestPauseSoundClass:testPauseSoundPasue(flag) end


---@class UTextInputWidget : UUserWidget
local UTextInputWidget = {}

---@param Text FText
function UTextInputWidget:SetText(Text) end
---@param InText FText
function UTextInputWidget:SetBaseText(InText) end
---@return boolean
function UTextInputWidget:IsDrawLetterBoxDirHeight() end
---@return boolean
function UTextInputWidget:IsChangeScreenSize() end
---@return FText
function UTextInputWidget:GetText() end
function UTextInputWidget:Decide() end
function UTextInputWidget:ChangeInputTextPositionRight() end
function UTextInputWidget:ChangeInputTextPositionLeft() end
---@return float
function UTextInputWidget:CalcScreenScale() end
---@param InTmpScreenSize float
---@return float
function UTextInputWidget:CalcLetterBoxSize(InTmpScreenSize) end


---@class UTitleStateBase : UObject
---@field TitleActor ATitleActor
local UTitleStateBase = {}



---@class UTitleStateCaution : UTitleStateBase
local UTitleStateCaution = {}


---@class UTitleStateComeBackLoad : UTitleStateBase
local UTitleStateComeBackLoad = {}


---@class UTitleStateConfig : UTitleStateBase
local UTitleStateConfig = {}


---@class UTitleStateDebugScript : UTitleStateBase
local UTitleStateDebugScript = {}


---@class UTitleStateExit : UTitleStateBase
local UTitleStateExit = {}


---@class UTitleStateLoadGame : UTitleStateBase
---@field SaveLoadUI AUISaveLoad
local UTitleStateLoadGame = {}



---@class UTitleStateLogo : UTitleStateBase
---@field AssetLoader UAssetLoader
---@field AtlusLogoMat UMaterial
---@field AtlusLogoMID UMaterialInstanceDynamic
---@field P_StudioLogoMat UMaterial
---@field P_StudioLogoMID UMaterialInstanceDynamic
---@field UE4AndCRILogoMat UMaterial
---@field UE4AndCRILogoMID UMaterialInstanceDynamic
---@field CurveAtlusLogoAnimation FCurveVectorAnimation
---@field CurveAtlusLogoColorAnimation FCurveLinearColorAnimation
local UTitleStateLogo = {}

function UTitleStateLogo:OnLoadedHolder() end


---@class UTitleStateNetworkCheck : UTitleStateBase
---@field NetWaitDialog AUISystemMsgActor
local UTitleStateNetworkCheck = {}



---@class UTitleStateNewGame : UTitleStateBase
---@field AddContentCheck UAddContent
---@field Loader UAssetLoader
---@field DifficultySelection ADifficultySelectionActor
---@field DifficultySelectionSC TSubclassOf<ADifficultySelectionActor>
local UTitleStateNewGame = {}

function UTitleStateNewGame:OnCloseDifficultySelection() end
function UTitleStateNewGame:OnCanselDifficultySelection() end


---@class UTitleStateOP : UTitleStateBase
---@field MovieActor AMoviePlayActor
local UTitleStateOP = {}



---@class UTitleStateOP_Astrea : UTitleStateBase
---@field MovieActor AMoviePlayActor
local UTitleStateOP_Astrea = {}



---@class UTitleStatePhotosensitiveCaution : UTitleStateBase
local UTitleStatePhotosensitiveCaution = {}


---@class UTitleStatePressWait : UTitleStateBase
local UTitleStatePressWait = {}


---@class UTitleStatePressWait_Astrea : UTitleStateBase
local UTitleStatePressWait_Astrea = {}


---@class UTitleStateResidentReload : UTitleStateBase
---@field PAstreaAssetLoader UAssetLoader
local UTitleStateResidentReload = {}



---@class UTitleStateSelect : UTitleStateBase
---@field KeyHelpUI AUIKeyHelpDraw
---@field AddContentCheck UAddContent
local UTitleStateSelect = {}



---@class UTitleStateSelect_Astrea : UTitleStateBase
---@field KeyHelpUI AUIKeyHelpDraw
local UTitleStateSelect_Astrea = {}



---@class UTitleStateWaitGamerTag : UTitleStateBase
local UTitleStateWaitGamerTag = {}


---@class UTownMapDetailTextDataAsset : UAppDataAsset
---@field Data TArray<FTownMapDetailTextTable>
local UTownMapDetailTextDataAsset = {}



---@class UTownMapInfoDataAsset : UAppDataAsset
---@field Data TArray<FTownMapInfoTable>
local UTownMapInfoDataAsset = {}



---@class UTownMapInfoNameDataAsset : UAppDataAsset
---@field Data TArray<FTownMapInfoNameTable>
local UTownMapInfoNameDataAsset = {}



---@class UTownMapRestrictionsDataAsset : UAppDataAsset
---@field Data TArray<FTownMapRestrictionsTable>
local UTownMapRestrictionsDataAsset = {}



---@class UTownMapTimeDataAsset : UAppDataAsset
---@field Data TArray<FTownMapTimeTable>
local UTownMapTimeDataAsset = {}



---@class UTrophyManager : UObject
local UTrophyManager = {}


---@class UTutorialManager : UObject
---@field pAssetLoader UAssetLoader
---@field pBmdAsset UBmdAsset
---@field Textures TArray<UTexture>
---@field Paths TArray<FString>
local UTutorialManager = {}



---@class UTutorialTableDataAsset : UAppMultiDataAsset
---@field Table TArray<FTutorialTables>
local UTutorialTableDataAsset = {}



---@class UUIAssist : UObject
---@field MessageData_ UBmdAsset
---@field Sprites_ FAssistSpriteItem
---@field Loader_ UAssetLoader
local UUIAssist = {}



---@class UUICalc : UObject
local UUICalc = {}


---@class UUICmpCalendarDraw : UObject
---@field pBackgroundMaterialInstance UMaterialInstance
---@field pBackgroundMaterialDaynamic UMaterialInstanceDynamic
---@field pEditParameterDataTable UDataTable
---@field pMonthTable UDataTable
---@field pDayTable UDataTable
---@field pWeekTable UDataTable
---@field pAssetLoader UAssetLoader
---@field pMainActor ACmpMainActor
local UUICmpCalendarDraw = {}



---@class UUICmpStatus : UObject
---@field SceneFSM_ UUISceneFSM
---@field Scenes_ TMap<int32, UUIScene>
---@field PSStatusActor_ APersonaStatus
---@field SingleDialog_ AUIDialogSingle
---@field CharaListDraw_ UCmpStatusCharacterListDraw
---@field CharaStatusDraw_ UCmpCharacterStatusDraw
---@field pMainActor ACmpMainActor
---@field pParent UCmpStatus
local UUICmpStatus = {}



---@class UUICombine : UObject
---@field m_pOwner UUIVelvetRoomOwner
---@field pAssetLoader UAssetLoader
---@field pBPPersonaBaseCore TSubclassOf<AUIPersonaModelActor>
---@field pPersonaBaseCore AActor
---@field pAppPropsCardContainer AAppPropsCardContainer
local UUICombine = {}

function UUICombine:StreamLevelCountDecrement() end


---@class UUICombineCalc : UObject
---@field Loader_ UAssetLoader
---@field NormalSpread_ UNormalSpreadDataAsset
---@field SpecialSpread_ USpecialSpreadDataAsset
---@field PersonaLift_ UPersonaLiftDataAsset
---@field SkillAffinity_ USkillAffinityDataAsset
---@field SkillLimit_ USkillLimitDataAsset
---@field PersonaConfig_ UPersonaConfigDataAsset
---@field CommunityRank_ UCommunityRankDataAsset
---@field MoonAgeProbability_ UMoonAgeProbabilityDataAsset
---@field CombineCounter_ UCombineCounterDataAsset
---@field SkillChange_ USkillChangeDataAsset
---@field SkillPack_ USkillPackDataAsset
---@field SkillPowerUp_ USkillPowerUpDataAsset
---@field CombineMisc_ UCombineMiscDataAsset
---@field BPCombineCalc_ UObject
---@field CombineCalcFunction_ UUICombineCalcFunction
---@field DLCPersonaCombineBirth_ UDLCPersonaCombineBirthDataAsset
---@field WordSortDataAsset_ UWordSortDataAsset
local UUICombineCalc = {}



---@class UUICombineCalcFunction : UObject
local UUICombineCalcFunction = {}

---@param IncenseParam int32
---@param SuccessionParam int32
---@param Num int32
---@return int32
function UUICombineCalcFunction:GetSuccessionIncense(IncenseParam, SuccessionParam, Num) end
---@param LevelA int32
---@param LevelB int32
---@return int32
function UUICombineCalcFunction:GetNormalSpreadLevel(LevelA, LevelB) end
---@param PlayerLevel int32
---@return int32
function UUICombineCalcFunction:GetFoolAccidentLevel(PlayerLevel) end
---@param power int32
---@param Magic int32
---@param Endurance int32
---@param Quick int32
---@param Luck int32
---@param CommuLevel int32
---@param MaxSkillLevel int32
---@return int32
function UUICombineCalcFunction:GetBookDrawOut(power, Magic, Endurance, Quick, Luck, CommuLevel, MaxSkillLevel) end


---@class UUICompleteBook : UObject
---@field m_pOwner UUIVelvetRoomOwner
local UUICompleteBook = {}



---@class UUICompleteBookRegist : UObject
---@field m_pOwner UUIVelvetRoomOwner
---@field m_pLoader UAssetLoader
---@field m_pSpr USprAsset
local UUICompleteBookRegist = {}



---@class UUIContactManager : UGameInstanceSubsystem
---@field m_pUIActorList TArray<AAppActor>
local UUIContactManager = {}



---@class UUIDataAsset : UAppDataAsset
---@field Assets TArray<UObject>
local UUIDataAsset = {}



---@class UUIDataAssets : UObject
local UUIDataAssets = {}


---@class UUIDrawGamerTag : UUserWidget
local UUIDrawGamerTag = {}

---@param Scale float
function UUIDrawGamerTag:SetScale(Scale) end
---@param nameText FString
function UUIDrawGamerTag:SetNameText(nameText) end
function UUIDrawGamerTag:DebugOnDestroy() end


---@class UUIDungeonTransferData : UObject
---@field ContentNum int32
---@field FloorListPosWhen2_4 FVector
---@field FloorListPosWhen5_8 FVector
---@field FloorListScale FVector
---@field FloorListInterval float
---@field FloorListColorV0 FVector
---@field FloorListColorV1 FVector
---@field FloorListColorV2 FVector
---@field FloorListColorV3 FVector
---@field FloorListLightPosDif FVector
---@field FloorListLightScale FVector
---@field FloorListLightColor FVector
---@field ScrollBarPosDif FVector
---@field ScrollBarEnableY float
---@field ScrollBarMinmamSize FVector
---@field TarminalIconPosDif FVector
---@field ListHeadPosDif FVector
---@field FMarkPosDif FVector
---@field FloorListSelectedColor FVector
---@field FloorListNotSelectedColor FVector
---@field FloorNumWhen1PosDif FVector
---@field FloorNumDigit1PosDif FVector
---@field FloorNumDigit2PosDif FVector
---@field FloorNumDigit3PosDif FVector
---@field FloorEntrancePosDif FVector
---@field CurrentIconPosDif FVector
---@field CurrentIconSelectedColor FVector
---@field CurrentIconNotSelectedColor FVector
---@field DoorIconPosDif FVector
---@field HorizonPosDif FVector
---@field HorizonScale FVector
---@field HorizonAlpha float
---@field WhiteCursorPosDif FVector
---@field WhiteCursorScale FVector
---@field WhiteCursorColor FVector
---@field GreenCursorPosDif FVector
---@field GreenCursorScale FVector
---@field GreenCursorColor FVector
---@field InfoPlatePos FVector
---@field InfoPlateScale FVector
---@field InfoPlateScaleWhenEntrance FVector
---@field InfoPlateColor FVector
---@field InfoBlockNamePosDiff FVector
---@field InfoBlockHeadPosDiff FVector
---@field InfoBlockHeadAlpha float
---@field InfoBlockNumPosDiff FVector
---@field InfoBlockNumColorDarkColor FVector
---@field InfoBlockNumColorLightColor FVector
---@field InfoBlockNumColorLightAlpha float
---@field InfoBlockNumMaskPosDiff FVector
---@field InfoBlockNumMaskScale FVector
---@field InfoNameEntrancePosDiff FVector
---@field InfoNameFloor1PosDiff FVector
---@field InfoNameFloor2PosDiff FVector
---@field InfoNameFloor3PosDiff FVector
---@field InfoNameFloor4PosDiff FVector
---@field InfoNameFloor5PosDiff FVector
---@field InfoNameFloor6PosDiff FVector
---@field InfoNameColorDark FVector
---@field InfoNameColorLight FVector
---@field InfoMissHeadPos FVector
---@field InfoMissUnitPosDiff FVector
---@field InfoMissNumPosDiff FVector
---@field InfoMiss0Color FVector
---@field InfoTrianglePosDiff FVector
---@field InfoTriangleAlpha float
---@field InfoTriangleOutPosDiff FVector
---@field InfoTriangleOutAlpha float
---@field InfoExclamationPosDiff FVector
---@field CursorInAnimeMove FVector
---@field CursorInAnimeFrame int32
---@field FloorNameAnimeMoveUp FVector
---@field FloorNameAnimeMoveDown FVector
---@field FloorNameAnimeFrame int32
---@field InfoMissTriangleRotationSecond float
---@field FloorNameFadeInFrame float
---@field FloorNameFadeOutFrame float
---@field BackGroundPos TArray<FVector>
---@field BackGroundSelectUpY float
---@field BackGroundSelectDownY float
---@field BackGroundNotSelectUpY float
---@field BackGroundNotSelectDownY float
---@field DistantviewFrontSpeed float
---@field DistantviewBackSpeed float
---@field DistantviewInterval float
---@field DistantviewLoopXFront int32
---@field DistantviewLoopXBack int32
---@field DistantviewPos TArray<float>
---@field moonPos TArray<FVector>
---@field MoonScale TArray<float>
---@field ColorMoonCloud FVector
---@field TowerDownPos FVector
---@field TowerMidPos FVector
---@field TowerUpPos FVector
---@field TowerTownPos FVector
---@field TowerColorDark FVector
---@field TowerColorLight FVector
---@field TowerTownMoveRation float
---@field WindowPos TArray<FVector>
---@field WomdowAlpha float
---@field CloudFloor1 TArray<FUIDungeonTransferCloudParam>
---@field CloudFloor2 TArray<FUIDungeonTransferCloudParam>
---@field CloudFloor3 TArray<FUIDungeonTransferCloudParam>
---@field CloudFloor4 TArray<FUIDungeonTransferCloudParam>
---@field CloudFloor5 TArray<FUIDungeonTransferCloudParam>
---@field CloudFloor6 TArray<FUIDungeonTransferCloudParam>
---@field CloudLoopDistance float
---@field HazeParam TArray<FUIDungeonTransferHazeParam>
---@field HazeFadeInSecond float
---@field HazeAppearSecond float
---@field HazeWaitSecond float
---@field HazeVanishSecondMin float
---@field HazeVanishSecondMax float
---@field HazeAppearSecondMin float
---@field HazeAppearSecondMax float
---@field HazeAllRotationMin float
---@field HazeAllRotationMax float
---@field HazeInitRMax float
---@field HazeMoveMin float
---@field HazeMoveMax float
---@field HazeInitScaleMin float
---@field HazeInitScaleMax float
---@field HazeInitAlphaMin float
---@field HazeInitAlphaMax float
---@field HazeHiddenPosUpY float
---@field HazeHiddenPosDownY float
---@field RedHazePos TArray<FVector>
---@field RedHazeWholeTime float
---@field RedHazeSprMin int32
---@field RedHazeSprMax int32
---@field RedHazeNumMin int32
---@field RedHazeNumMax int32
---@field RedHazeInitRMax float
---@field RedHazeInitScaleMin float
---@field RedHazeInitScaleMax float
---@field RedHazeAddNumMin int32
---@field RedHazeAddNumMax int32
---@field RedHazeAddInitRMax float
---@field RedHazeAddInitScaleMin float
---@field RedHazeAddInitScaleMax float
---@field RedHazeAddInitRationStart TArray<float>
---@field RedHazeAddInitRationEnd TArray<float>
---@field RedHazeFadeSecond float
---@field BGAnimChangeWholeFrame int32
---@field BGAnimChangeDistantviewFrame int32
---@field BGAnimChangeMoonFrame int32
---@field BGAnimChangeCloudFadeOutFrame int32
---@field BGAnimChangeCloudFadeInFrame int32
---@field ScreenFadeInFrame int32
---@field ScreenFadeOutFrame int32
---@field ScreenFadeOutCancelFrame int32
local UUIDungeonTransferData = {}



---@class UUIFieldType : UObject
local UUIFieldType = {}


---@class UUIGenericSelectCharacter : UObject
local UUIGenericSelectCharacter = {}


---@class UUILayoutDataTable : UObject
---@field LayoutTable UDataTable
local UUILayoutDataTable = {}



---@class UUILocationSelect : UObject
---@field m_pMiniMapSpr USprAsset
---@field m_pLoader UAssetLoader
---@field m_tagUip FGetUIParameter
---@field m_aShortcutList TArray<FShortcutItem>
---@field m_pLayoutData UDataTable
---@field m_pLayoutDataTable UUILayoutDataTable
---@field m_pLayoutData2 UDataTable
---@field m_pLayoutDataTable2 UUILayoutDataTable
local UUILocationSelect = {}



---@class UUIMiniMapDraw : UObject
---@field m_pMiniMapIcon00Spr USprAsset
---@field m_pMiniMapIcon01Spr USprAsset
---@field m_pMiniMapIcon00SprAstrea USprAsset
---@field m_pMiniMapIcon01SprAstrea USprAsset
---@field m_pPartMaskSpr USprAsset
---@field m_pNoiseSpr USprAsset
---@field m_pMapTex UTexture
---@field m_pPrevMapTex1 UTexture
---@field m_pPrevMapTex2 UTexture
---@field m_pPrevMapTex3 UTexture
---@field m_pVelvetRoomIconMat UMaterial
---@field m_pVelvetRoomIconMID UMaterialInstanceDynamic
---@field m_pFldMiniMapIconTable UMiniMapIconListTable
---@field m_pIconLoader UAssetLoader
---@field m_pMapLoader UAssetLoader
---@field m_pMapLoaders TArray<UMiniMapAssetLoader>
---@field m_GoalIconOffsetParam FGetUIParameter
---@field m_pMapParts UTexture
---@field m_pWallTex UTexture
---@field m_pPartVariationDataAsset UFldDungeonPartVariationDataAsset
---@field m_pSchoolUpDownLayoutData UDataTable
---@field m_pSchoolUpDownLayoutDataTable UUILayoutDataTable
---@field m_pDormitoryUpDownLayoutData UDataTable
---@field m_pDormitoryUpDownLayoutDataTable UUILayoutDataTable
---@field m_pArcadeUpDownLayoutData UDataTable
---@field m_pArcadeUpDownLayoutDataTable UUILayoutDataTable
---@field m_pMallUpDownLayoutData UDataTable
---@field m_pMallUpDownLayoutDataTable UUILayoutDataTable
---@field m_pClubUpDownLayoutData UDataTable
---@field m_pClubUpDownLayoutDataTable UUILayoutDataTable
---@field m_pRyokanUpDownLayoutData UDataTable
---@field m_pRyokanUpDownLayoutDataTable UUILayoutDataTable
---@field m_pHotelUpDownLayoutData UDataTable
---@field m_pHotelUpDownLayoutDataTable UUILayoutDataTable
---@field m_pDungeonUpDownLayoutData UDataTable
---@field m_pDungeonUpDownLayoutDataTable UUILayoutDataTable
---@field m_pDungeonUpDownLayoutDataAstrea TArray<UDataTable>
---@field m_pDungeonUpDownLayoutDataTableAstrea TArray<UUILayoutDataTable>
---@field m_pIconLayoutData UDataTable
---@field m_pIconLayoutDataTable UUILayoutDataTable
local UUIMiniMapDraw = {}

function UUIMiniMapDraw:Completed() end


---@class UUIMiscSpecialKeyhelp : UObject
---@field m_pLoader UAssetLoader
---@field m_pSpecialKeyHelpSpr USprAsset
---@field m_pSpecialKeyHelpTextSpr USprAsset
---@field m_pDataTable UDataTable
local UUIMiscSpecialKeyhelp = {}



---@class UUIMissingPerson : UObject
---@field pSpr_ USprAsset
---@field pLoader_ UAssetLoader
---@field m_pBGMat UMaterialInterface
---@field m_pBGMatInst UMaterialInstanceDynamic
---@field m_pDT UDataTable
---@field ParamDT FMissingParamTableRow
---@field pRefWorld_ UWorld
---@field LayoutData UUILayoutDataTable
---@field TextColLayoutData UUILayoutDataTable
---@field TextPosLayoutData UUILayoutDataTable
---@field DateLayoutData UUILayoutDataTable
local UUIMissingPerson = {}



---@class UUIParameterAsset : UObject
---@field UIParameters TArray<FUIParameter>
local UUIParameterAsset = {}



---@class UUIPoetryDataAsset : UAppDataAsset
---@field Data TArray<FPoetryParamTable>
local UUIPoetryDataAsset = {}



---@class UUIPoetryRippleDataAsset : UAppDataAsset
---@field Data TArray<FPoetryRipplesParam>
local UUIPoetryRippleDataAsset = {}



---@class UUIRenderWidget : UAppActorComponent
---@field RenderTarget UTextureRenderTarget2D
---@field RenderWidget UUserWidget
local UUIRenderWidget = {}

---@param inPause boolean
function UUIRenderWidget:SetPause(inPause) end
---@return boolean
function UUIRenderWidget:IsPause() end
---@param inRenderTarget UTextureRenderTarget2D
---@param inRenderWidget UUserWidget
---@param DrawSize FVector2D
---@param inUseGamma boolean
---@param inClearTarget boolean
---@param inFilter TextureFilter
---@return boolean
function UUIRenderWidget:Initialize(inRenderTarget, inRenderWidget, DrawSize, inUseGamma, inClearTarget, inFilter) end
function UUIRenderWidget:DrawToRenderTarget() end


---@class UUIRequest : UObject
---@field m_pLoader UAssetLoader
---@field m_pScrActor AScrActor
---@field m_pBfAsset UBfAsset
---@field m_pBmdAsset UBmdAsset
---@field m_pRefWorld UWorld
---@field m_pCampSpr USprAsset
---@field m_pCampPlg UPlgAsset
---@field m_pBGMat UMaterialInterface
---@field m_pBGMatInst UMaterialInstanceDynamic
---@field m_pRequestDT UDataTable
---@field LayoutData UUILayoutDataTable
---@field TextColLayoutData UUILayoutDataTable
---@field TextPosLayoutData UUILayoutDataTable
---@field TextPosLayoutDataAstrea UUILayoutDataTable
---@field TextColLayoutDataAstrea UUILayoutDataTable
---@field DateLayoutData UUILayoutDataTable
local UUIRequest = {}

---@param ExitType int32
function UUIRequest:OnFinishedScr(ExitType) end


---@class UUIResources : UGameInstanceSubsystem
---@field Loader_ UAssetLoader
---@field Assets_ TArray<UObject>
---@field PreLoadSystemMsg_ UMsgProcWindow_System
---@field HandwritingLayoutData_ UDataTable
---@field FontStyleAsset_ UFontStyleAsset
---@field SystemFont_ UFont
local UUIResources = {}



---@class UUIScene : UObject
local UUIScene = {}


---@class UUISceneFSM : UObject
---@field SceneStack_ TArray<UUIScene>
local UUISceneFSM = {}



---@class UUISoundManager : UGameInstanceSubsystem
local UUISoundManager = {}


---@class UUISubsystem : UGameInstanceSubsystem
---@field ShopActor_ AActor
---@field TempActor_ TWeakObjectPtr<AActor>
---@field Assist_ UUIAssist
---@field FadePlayer_ UFadePlayer
local UUISubsystem = {}

function UUISubsystem:NotifyLevelLoadedShop() end


---@class UUITableTypes : UObject
local UUITableTypes = {}


---@class UUITextDataAsset : UAppDataAsset
---@field Data TArray<FUITextTable>
local UUITextDataAsset = {}



---@class UUITheurgia : UObject
---@field m_pLoader UAssetLoader
---@field m_pRefWorld UWorld
---@field m_pTheurgiaSpr USprAsset
---@field m_pTheurgiaSpr_Astrea USprAsset
---@field m_pTheurgiaPlg UPlgAsset
---@field m_pBGMat UMaterialInterface
---@field m_pBGMatInst UMaterialInstanceDynamic
---@field m_pCampSpr USprAsset
---@field m_pCampPlg UPlgAsset
---@field m_pTheurgiaUIDT UDataTable
---@field m_pMiscSpecialKeyhelp UUIMiscSpecialKeyhelp
---@field m_curveCurrentCursorAlways_Light FCurveFloatAnimation
---@field m_curveCurrentCursorAlways_Persona FCurveFloatAnimation
---@field m_curveCurrentCursorAlways_ChangeTiming FCurveFloatAnimation
---@field m_curveStart_CursorRate FCurveFloatAnimation
---@field m_curveEnd_CursorRate FCurveFloatAnimation
---@field m_curveCtrlCursorIn_Rate FCurveFloatAnimation
---@field m_curveCtrlCursorOut_Rate FCurveFloatAnimation
---@field m_curveStart_CursorListRate FCurveFloatAnimation
---@field m_curveStart_LRCursorListRate FCurveFloatAnimation
---@field m_curveStart_LRCursorListAlpha FCurveFloatAnimation
---@field m_curveEnd_LRCursorListRate FCurveFloatAnimation
---@field m_curveEnd_LRCursorListAlpha FCurveFloatAnimation
---@field m_curve_LRCursorListWaveRate FCurveFloatAnimation
---@field m_curveEnd_SkillRate FCurveFloatAnimation
---@field m_curveStart_DetailTextIn FCurveFloatAnimation
---@field m_curveStart_TheurgiaText FCurveFloatAnimation
---@field m_curveStart_SkillHelpText FCurveFloatAnimation
---@field m_curveStart_StatusTab FCurveVectorAnimation
---@field m_curveEnd_StatusTab FCurveVectorAnimation
---@field m_curveDetailStart_CirclePos FCurveFloatAnimation
---@field m_curveDetailStart_CircleScale FCurveFloatAnimation
---@field m_curveDetailEnd_CirclePos FCurveFloatAnimation
---@field m_curveDetailEnd_CircleScale FCurveFloatAnimation
---@field m_curveDetailStart_DetailAddText FCurveFloatAnimation
---@field m_curveDetailEnd_DetailAddText FCurveFloatAnimation
---@field m_curveDetailStart_PersonalityRate FCurveFloatAnimation
---@field m_curveDetailStart_NormalPersonalityRate FCurveFloatAnimation
---@field m_curveDetailEnd_NormalPersonalityRate FCurveFloatAnimation
---@field m_curveDetailStart_MovementRate FCurveFloatAnimation
---@field m_curveDetailEnd_MovementRate FCurveFloatAnimation
---@field m_curveDetailStart_Kira FCurveVectorAnimation
---@field m_curveCurrentCursorLineFirst_Rate FCurveFloatAnimation
---@field m_curveCurrentCursorLineLoop_Rate FCurveFloatAnimation
---@field m_curveFade_YellowKira FCurveFloatAnimation
---@field m_curveMove_YellowKira FCurveVectorAnimation
---@field m_curveMove_YellowKiraPowerUp FCurveVectorAnimation
---@field m_curveRotateAndScale_YellowKira FCurveVectorAnimation
---@field m_curveRotateAndScale_YellowKira_PowerUp FCurveVectorAnimation
---@field m_curveFade_YellowPersonality FCurveFloatAnimation
---@field m_curveFade_BlackBG_In FCurveFloatAnimation
---@field m_curveMove_YellowPersonality FCurveFloatAnimation
---@field m_curveFlickering_AfterYellowKira1 FCurveFloatAnimation
---@field m_curveFlickering_AfterYellowKira2 FCurveFloatAnimation
---@field m_curveFlickering_Text FCurveFloatAnimation
---@field m_curveRotate_AfterYellowKira1 FCurveFloatAnimation
---@field m_curveRotate_AfterYellowKira2 FCurveFloatAnimation
---@field m_curveMove_MovePassiveTextRatio FCurveFloatAnimation
---@field m_curveFade_YellowPersonalityPlate FCurveFloatAnimation
---@field m_curveFade_BlackBG_Out FCurveFloatAnimation
---@field m_curveFade_BlackBG_In_Obtain FCurveFloatAnimation
---@field m_curveFade_BlackBG_Out_Obtain FCurveFloatAnimation
---@field m_curveFade_YellowPersonalityPlate_Obtain FCurveFloatAnimation
---@field m_curveMove_YellowPersonality_Obtain FCurveFloatAnimation
---@field m_curveFade_YellowPersonality_Obtain FCurveFloatAnimation
---@field m_curveRipple_ObtainCursor FCurveVectorAnimation
---@field m_curveFlickering_ObtainSkillText FCurveFloatAnimation
---@field m_curveMove_ObtainSkillTextRatio FCurveFloatAnimation
---@field LayoutData UDataTable
---@field LayoutDataTable UUILayoutDataTable
---@field TextLayoutData UDataTable
---@field TextLayoutDataTable UUILayoutDataTable
---@field TextPosLayoutData UDataTable
---@field TextPosLayoutDataTable UUILayoutDataTable
---@field TextRowLayoutData UDataTable
---@field TexRowLayoutDataTable UUILayoutDataTable
local UUITheurgia = {}



---@class UUITownMapSymbolComponent : UAppActorComponent
---@field FldAnimObj_ AFldAnimObj
---@field SkinnedComponent_ USkinnedMeshComponent
local UUITownMapSymbolComponent = {}

---@param FldAnimObj AFldAnimObj
---@param SkinnedComponent USkinnedMeshComponent
---@param TownType ETownType
function UUITownMapSymbolComponent:Initialize(FldAnimObj, SkinnedComponent, TownType) end


---@class UUIVelvetRoomMca : UObject
---@field pWorld UWorld
---@field pCamera ACameraActor
local UUIVelvetRoomMca = {}



---@class UUIVelvetRoomOwner : UObject
---@field m_pLoader UAssetLoader
---@field m_pScrActor AScrActor
---@field m_pBfAsset UBfAsset
---@field m_pBmdAsset UBmdAsset
---@field m_pPersonaStatusActor APersonaStatus
---@field m_pCombineCalc UUICombineCalc
---@field m_pCombineStateTex UTexture
---@field m_pVelvetRoomDraw AUIVelvetRoomDraw
---@field m_pVelvetRoomDrawClass TSubclassOf<AUIVelvetRoomDraw>
---@field CommonLayoutDataTable UUILayoutDataTable
---@field CompendiumLayoutDataTable UUILayoutDataTable
---@field SearchLayoutDataTable UUILayoutDataTable
---@field SpreadLayoutDataTable UUILayoutDataTable
---@field SpecialLayoutDataTable UUILayoutDataTable
---@field SummonLayoutDataTable UUILayoutDataTable
---@field CommonTextLayoutDataTable UUILayoutDataTable
---@field HelpLayoutDataTable UUILayoutDataTable
---@field AstreaLayoutDataTable UUILayoutDataTable
---@field pParamLayoutDataCommon UDataTable
---@field pParamLayoutDataCompendium UDataTable
---@field pParamLayoutDataSearch UDataTable
---@field pParamLayoutDataSpread UDataTable
---@field pParamLayoutDataSpecial UDataTable
---@field pParamLayoutDataSummon UDataTable
---@field pParamLayoutDataCommonText UDataTable
---@field pParamLayoutDataHelp UDataTable
---@field pParamLayoutDataAstrea UDataTable
local UUIVelvetRoomOwner = {}

---@param ExitType int32
function UUIVelvetRoomOwner:OnFinishedScr(ExitType) end


---@class UUIVelvetRoomUimCard : UObject
---@field pWorld UWorld
---@field pCamera ACameraActor
local UUIVelvetRoomUimCard = {}



---@class UUmgDebugLogWidget : UUserWidget
local UUmgDebugLogWidget = {}

---@param InText FText
function UUmgDebugLogWidget:SetText(InText) end


---@class UUmgDialog : UUserWidget
local UUmgDialog = {}

---@param InText FText
function UUmgDialog:SetText(InText) end
function UUmgDialog:SetEndFlag() end
---@return boolean
function UUmgDialog:IsStreamingTouch() end
---@return boolean
function UUmgDialog:IsInputBlocked() end
---@return boolean
function UUmgDialog:IsChangeScreenSize() end
---@return float
function UUmgDialog:CalcScreenScale() end


---@class UUtlBpObj : UUtlBpObjCore
local UUtlBpObj = {}

---@param Type int32
---@param LatentInfo FLatentActionInfo
function UUtlBpObj:SyncFade(Type, LatentInfo) end
---@param InAsset TSoftObjectPtr<UBfAsset>
---@param ProcNo int32
---@param LatentInfo FLatentActionInfo
---@param Result int32
function UUtlBpObj:StartScript(InAsset, ProcNo, LatentInfo, Result) end
---@param Type int32
---@param Frame int32
function UUtlBpObj:StartFadeOUT(Type, Frame) end
---@param Type int32
---@param Frame int32
function UUtlBpObj:StartFadeIN(Type, Frame) end


---@class UUtlBpObjCore : UObject
---@field mEndDelegate_ FUtlBpObjCoreEndDelegate_
local UUtlBpObjCore = {}

---@param LevelName FName
---@param LatentInfo FLatentActionInfo
function UUtlBpObjCore:UnloadLevel(LevelName, LatentInfo) end
function UUtlBpObjCore:StartProc() end
function UUtlBpObjCore:ReturnField() end
function UUtlBpObjCore:Return() end
---@param LevelName FName
---@param LatentInfo FLatentActionInfo
function UUtlBpObjCore:LoadLevel(LevelName, LatentInfo) end
---@param LevelName FName
function UUtlBpObjCore:CallOpenLevel(LevelName) end


---@class UUtlBpObjManager : UGameInstanceSubsystem
---@field mObject_ UUtlBpObjCore
local UUtlBpObjManager = {}

function UUtlBpObjManager:SetEventEnd() end
---@param BpObjCore UUtlBpObjCore
function UUtlBpObjManager:SetBluePrint(BpObjCore) end
---@param ObjectClass UClass
---@return UUtlBpObjCore
function UUtlBpObjManager:CreateBluePrint(ObjectClass) end


---@class UUtlProcManager : UGameInstanceSubsystem
---@field mNowActor_ AUtlProcActor
local UUtlProcManager = {}



---@class UVelvetRoomCardDataAsset : UAppDataAsset
---@field TextureDataAsset TArray<UVelvetRoomCardTextureDataAsset>
---@field UnimDataAsset TArray<UVelvetRoomUnimDataAsset>
local UVelvetRoomCardDataAsset = {}



---@class UVelvetRoomCardTextureDataAsset : UAppDataAsset
---@field Textures TArray<UTexture>
local UVelvetRoomCardTextureDataAsset = {}



---@class UVelvetRoomMcaDataAsset : UAppDataAsset
---@field Asset TArray<UMcaAsset>
local UVelvetRoomMcaDataAsset = {}



---@class UVelvetRoomQuestDataAsset : UAppDataAsset
---@field Data TArray<FVelvetRoomQuestItem>
local UVelvetRoomQuestDataAsset = {}



---@class UVelvetRoomUnimDataAsset : UAppDataAsset
---@field Asset TArray<UUimAsset>
local UVelvetRoomUnimDataAsset = {}



---@class UVeveWork : UObject
---@field pTable UDataTable
local UVeveWork = {}



---@class UWeaponItemListTable : UAppDataAsset
---@field Data TArray<FWeaponItemList>
local UWeaponItemListTable = {}



---@class UWeaponShopAwardDataAsset : UAppDataAsset
---@field Data TMap<uint16, FWeaponShopAwardData>
local UWeaponShopAwardDataAsset = {}



---@class UWeaponShopDrawCommon : UObject
---@field _pCloudCursor AUICloudCursorDraw
local UWeaponShopDrawCommon = {}



---@class UWeaponShopLineUpListTable : UAppDataAsset
---@field Data TArray<FWeaponShopLineUpList>
local UWeaponShopLineUpListTable = {}



---@class UWordSortDataAsset : UAppDataAsset
---@field Data TArray<FWordSortTable>
local UWordSortDataAsset = {}



---@class UXRD777SaveGame : USaveGame
---@field SaveDataHeadder FSaveGameHeadder
---@field SaveDataArea uint32
local UXRD777SaveGame = {}



---@class UXrd777AssetManager : UAssetManager
local UXrd777AssetManager = {}


---@class UXrd777PrimaryAssetLabel : UPrimaryAssetLabel
---@field PlatformRules TMap<FString, FPrimaryAssetRules>
local UXrd777PrimaryAssetLabel = {}



---@class UXrd777SaveManager : UObject
---@field TCSSaveData UTCSSaveData
---@field NetworkSaveInstance UXRD777SaveGame
---@field DemoSaveCache TMap<FString, FDemoSaveCache>
---@field MigrateSaveSuccessSlot TArray<FString>
local UXrd777SaveManager = {}



---@class UsoundTestGameInstance : UGameInstance
---@field m_PlayAdxControl UPlayAdxControl
local UsoundTestGameInstance = {}

---@return UPlayAdxControl
function UsoundTestGameInstance:GetPlayAdxControl() end
---@return UPakFileManagerControl
function UsoundTestGameInstance:GetFileManagerControl() end


