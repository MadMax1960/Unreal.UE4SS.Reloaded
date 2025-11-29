---@meta

---@class AAtomAreaSoundVolume : AVolume
---@field Priority float
---@field bEnabled boolean
---@field CollisionProfile FName
---@field SoundStopDistance float
---@field bIsEnableAtomCompoentPack boolean
---@field bIsAutoPlaySound boolean
---@field bIsDeterminationFromVolumeBoundaryPlane boolean
---@field AtomComponents TArray<UAtomComponent>
---@field Sounds TArray<USoundAtomCue>
local AAtomAreaSoundVolume = {}

---@param NewPriority float
function AAtomAreaSoundVolume:SetPriority(NewPriority) end
---@param bNewEnabled boolean
function AAtomAreaSoundVolume:SetEnabled(bNewEnabled) end
function AAtomAreaSoundVolume:OnRep_bEnabled() end
---@return float
function AAtomAreaSoundVolume:GetPriority() end
---@return boolean
function AAtomAreaSoundVolume:GetEnabled() end
function AAtomAreaSoundVolume:DestroySounds() end
---@param listener_location FVector
---@return TArray<UAtomComponent>
function AAtomAreaSoundVolume:CreateSounds(listener_location) end


---@class AAtomAudioVolume : AVolume
---@field Priority float
---@field bEnabled boolean
---@field CollisionProfile FName
---@field bAutoSettingEntranceVolume boolean
---@field bAutoSettingNeighbourAudioVolumeToEntranceVolume boolean
---@field AudioVolumeTags TArray<FName>
---@field bOverrideAtomAudioVolume boolean
---@field AtomAudioVolumeSettings UAtomAudioVolumeSettings
---@field AtomAudioVolumeSettingsOverrides FAtomAudioVolumeParameters
---@field EntranceVolumes TArray<AAtomEntranceVolume>
local AAtomAudioVolume = {}

---@param NewReverbSettings FSnapshotSwitchSettings
function AAtomAudioVolume:SetReverbSettings(NewReverbSettings) end
---@param NewPriority float
function AAtomAudioVolume:SetPriority(NewPriority) end
---@param bNewEnabled boolean
function AAtomAudioVolume:SetEnabled(bNewEnabled) end
function AAtomAudioVolume:OnRep_bEnabled() end
---@return float
function AAtomAudioVolume:GetPriority() end
---@return boolean
function AAtomAudioVolume:GetEnabled() end
---@param bEnable boolean
function AAtomAudioVolume:EnableAllAudioVolume(bEnable) end


---@class AAtomDisposer : AActor
local AAtomDisposer = {}


---@class AAtomEntranceVolume : AVolume
---@field Priority float
---@field bEnabled boolean
---@field NeighbourhoodAudioVolumeArray TArray<TWeakObjectPtr<AAtomAudioVolume>>
local AAtomEntranceVolume = {}

---@param NewPriority float
function AAtomEntranceVolume:SetPriority(NewPriority) end
---@param bNewEnabled boolean
function AAtomEntranceVolume:SetEnabled(bNewEnabled) end
function AAtomEntranceVolume:OnRep_bEnabled() end
---@return float
function AAtomEntranceVolume:GetPriority() end
---@return boolean
function AAtomEntranceVolume:GetEnabled() end


---@class AAtomSound : AActor
---@field AtomComponent UAtomComponent
local AAtomSound = {}



---@class AAtomSoundData : AActor
---@field CueSheet USoundAtomCueSheet
local AAtomSoundData = {}



---@class ACriFsLoader : AActor
---@field LoaderComponent UCriFsLoaderComponent
local ACriFsLoader = {}



---@class FAcfDataTable : FAtomConfigDataTable
local FAcfDataTable = {}


---@class FAisacControlInterpolationSettings
---@field AisacControlID int32
---@field AisacControlName FString
---@field AisacControlValueForInside float
---@field AisacControlValueForOutside float
---@field Width float
local FAisacControlInterpolationSettings = {}



---@class FAtomAisacControlParam
---@field Name FString
---@field Value float
local FAtomAisacControlParam = {}



---@class FAtomAisacControlSettingsParam
---@field ID int32
---@field Name FString
local FAtomAisacControlSettingsParam = {}



---@class FAtomAisacInfo
---@field Name FString
---@field DefaultControlFlag boolean
---@field DefaultControlValue float
---@field ControlId int32
---@field ControlName FString
local FAtomAisacInfo = {}



---@class FAtomAsrRackConfig
---@field SoundRendererType int32
---@field ElementID int32
local FAtomAsrRackConfig = {}



---@class FAtomAsrRackConfigUI
---@field SoundRendererTypeUI EAtomSoundRendererType::Type
---@field ElementID int32
local FAtomAsrRackConfigUI = {}



---@class FAtomAttenuationDistanceParam
---@field MinDistance float
---@field MaxDistance float
local FAtomAttenuationDistanceParam = {}



---@class FAtomAudioVolumeParameters
---@field bUseSnapshotSettings boolean
---@field bUseBusSendSettings boolean
---@field bUseAisacControlSettings boolean
---@field MaxDistanceForEntranceVolume float
---@field bSwitchIntepolationInsideForBus boolean
---@field bSwitchIntepolationInsideForAisac boolean
---@field SnapshotSwitchSettings TArray<FSnapshotSwitchSettings>
---@field BusSendInterpolateSettings TArray<FBusSendInterpolationSettings>
---@field AisacControlInterpolateSettings TArray<FAisacControlInterpolationSettings>
local FAtomAudioVolumeParameters = {}



---@class FAtomBeatSyncInfo
local FAtomBeatSyncInfo = {}


---@class FAtomCategoryInfoParam
---@field Name FString
---@field category_id int32
---@field group_no int32
---@field Volume float
---@field IsPaused boolean
local FAtomCategoryInfoParam = {}



---@class FAtomCategoryParam
---@field ID int32
---@field Name FString
---@field Group FString
---@field Volume float
local FAtomCategoryParam = {}



---@class FAtomComponentParams
---@field DefaultVolume float
---@field DefaultPitchMultiplier float
---@field StartTime float
---@field bEnableMultipleSoundPlayback boolean
---@field bUsePlaylist boolean
---@field bIsMovable boolean
---@field bCanStraddleAudioVolume boolean
---@field bUseAudioVolume boolean
---@field bUseAreaSoundVolume boolean
---@field SoundObject UAtomSoundObject
---@field AttenuationSettings USoundAttenuation
---@field DefaultBlockIndex int32
---@field DefaultAisacControl TArray<FAtomAisacControlParam>
---@field DefaultSelectorLabel TArray<FAtomSelectorParam>
---@field LoopSetting EAtomLoopSetting
---@field Rotation FRotator
local FAtomComponentParams = {}



---@class FAtomConfigDataTable : FTableRowBase
---@field BuildDate FString
---@field NumCategoriesPerPlayback int32
---@field NumCategories int32
---@field NumAisacControls int32
---@field NumGlobalAisacs int32
---@field NumVoiceLimitGroups int32
---@field NumDspBusSettings int32
---@field NumDspBusSettingSnapshots int32
---@field NumDspBus int32
---@field NumGameVariables int32
---@field NumSelectors int32
---@field NumReacts int32
---@field Selector TArray<FAtomSelectorSettingsParam>
---@field AisacControl TArray<FAtomAisacControlSettingsParam>
---@field GameVariable TArray<FAtomGameVariableParam>
---@field GlobalAisac TArray<FAtomGlobalAisacSettingsParam>
---@field Category TArray<FAtomCategoryParam>
---@field DspBusSettings TArray<FAtomDspBusSettingsParam>
---@field React TArray<FAtomStringWithComment>
local FAtomConfigDataTable = {}



---@class FAtomCueInfo
---@field ID int32
---@field HeaderVisibility boolean
---@field Name FString
---@field Duration FTimespan
---@field UserData FString
---@field CategoryNames TArray<FString>
---@field AisacControlNames TArray<FString>
---@field AttenuationDistance FAtomAttenuationDistanceParam
---@field bLooping boolean
---@field bIsParameterPalletAssigned boolean
local FAtomCueInfo = {}



---@class FAtomCueInfoAttachedAisacControlParam
---@field Name FString
---@field ID int32
local FAtomCueInfoAttachedAisacControlParam = {}



---@class FAtomCueInfoAttachedSelectorParam
---@field Name FString
local FAtomCueInfoAttachedSelectorParam = {}



---@class FAtomCueInfoBlocksParam
---@field Name FString
---@field StartPosition int32
---@field Length int32
local FAtomCueInfoBlocksParam = {}



---@class FAtomCueInfoBusSendParam
---@field Name FString
---@field Enable boolean
---@field Level float
local FAtomCueInfoBusSendParam = {}



---@class FAtomCueInfoCategoryParam
---@field Name FString
local FAtomCueInfoCategoryParam = {}



---@class FAtomCueInfoDataTable : FTableRowBase
---@field Name FString
---@field CueId int32
---@field CueTypeIndex int32
---@field CueType FString
---@field DefaultSelectorLabel FAtomCueInfoSelectorParam
---@field Volume float
---@field Public boolean
---@field CategoryCuePriority int32
---@field CategoryCuePriorityType FString
---@field CategoryCuePriorityTypeIndex int32
---@field CuePriorityType FString
---@field CuePriorityTypeIndex int32
---@field EnableCueLimit boolean
---@field NumCueLimits int32
---@field Probability int32
---@field Length int32
---@field Category TArray<FAtomCueInfoCategoryParam>
---@field Track TArray<FAtomCueInfoTrackParam>
---@field BusSend TArray<FAtomCueInfoBusSendParam>
---@field Blocks TArray<FAtomCueInfoBlocksParam>
---@field AttachedSelector TArray<FAtomCueInfoAttachedSelectorParam>
---@field AttachedAisacControl TArray<FAtomCueInfoAttachedAisacControlParam>
local FAtomCueInfoDataTable = {}



---@class FAtomCueInfoSelectorParam
---@field Name FString
---@field Label FString
local FAtomCueInfoSelectorParam = {}



---@class FAtomCueInfoTrackParam
---@field Volume float
---@field Name FString
---@field Selector FAtomCueInfoSelectorParam
local FAtomCueInfoTrackParam = {}



---@class FAtomCueSheetDataTable : FTableRowBase
---@field Name FString
---@field BuildDate FString
---@field WorkUnit FString
---@field Volume float
---@field EnableCueLimit boolean
---@field NumCueLimits int32
---@field PriorityType FString
---@field PriorityTypeIndex int32
---@field Cue TArray<FAtomCueInfoDataTable>
local FAtomCueSheetDataTable = {}



---@class FAtomDspBusSettingsParam
---@field BusSettingsName FString
---@field Snapshot TArray<FAtomStringWithComment>
---@field Bus TArray<FAtomStringWithComment>
local FAtomDspBusSettingsParam = {}



---@class FAtomGameVariableParam
---@field Name FString
---@field Value float
local FAtomGameVariableParam = {}



---@class FAtomGlobalAisacSettingsParam
---@field AisacControl FString
local FAtomGlobalAisacSettingsParam = {}



---@class FAtomListenerFocusPointInfo
---@field TargetActor AActor
---@field TargetComponent USceneComponent
---@field DistanceLevel float
---@field DirectionLevel float
local FAtomListenerFocusPointInfo = {}



---@class FAtomProfileItem
---@field AtomComponentID int32
---@field AtomCueName FString
---@field AtomComponentLocation FVector
---@field DistanceFromListener float
---@field PlayingTime float
---@field PlayerState FString
---@field NumSounds int32
---@field ConcurrencyName FString
local FAtomProfileItem = {}



---@class FAtomSelectorParam
---@field Selector FString
---@field Label FString
local FAtomSelectorParam = {}



---@class FAtomSelectorSettingsParam
---@field Name FString
---@field DefaultSelectorLabel FString
---@field Labels TArray<FAtomStringWithComment>
local FAtomSelectorSettingsParam = {}



---@class FAtomSequenceInfo
local FAtomSequenceInfo = {}


---@class FAtomSoundManager
local FAtomSoundManager = {}


---@class FAtomStringWithComment
---@field Name FString
local FAtomStringWithComment = {}



---@class FAtomTriggerRow : FTableRowBase
---@field Time float
---@field Bone FName
---@field Cue USoundAtomCue
local FAtomTriggerRow = {}



---@class FAtomWaveInfo
---@field Format EAtomFormat
---@field SamplingRate int32
---@field NumChannels int32
---@field NumSamples int32
---@field bIsStreamed boolean
local FAtomWaveInfo = {}



---@class FBusSendInterpolationSettings
---@field DspBusSettingsID int32
---@field DspBusSettingsName FString
---@field BusId int32
---@field BusName FString
---@field BusSendLevelForInside float
---@field BusSendLevelForOutside float
---@field Width float
local FBusSendInterpolationSettings = {}



---@class FCriWareErrorInfo
---@field ErrorID FString
---@field ErrorType ECriWareErrorType
---@field Message FString
local FCriWareErrorInfo = {}



---@class FManaAudioTrackInfo
---@field NumChannels int32
---@field SamplingRate int32
---@field TotalSamples int32
---@field bIsAmbisonics boolean
---@field Type EManaSoundType
local FManaAudioTrackInfo = {}



---@class FManaEventPointInfo
---@field Name FString
---@field Time float
---@field Type int32
---@field Parameter FString
local FManaEventPointInfo = {}



---@class FManaPlayerOptions
---@field Tracks FManaPlayerTrackOptions
---@field SeekTime FTimespan
---@field PlayOnOpen EManaPlayerOptionBooleanOverride
---@field Loop EManaPlayerOptionBooleanOverride
---@field PlaybackTimer EManaPlaybackTimer
---@field MaxFrameDrop EManaMaxFrameDrop
---@field EndFrameAction EManaFrameAction
---@field TimeSyncedSource UAtomComponent
local FManaPlayerOptions = {}



---@class FManaPlayerTrackOptions
---@field Audio int32
---@field SubAudio int32
---@field ExtraAudio int32
---@field Subtitle int32
---@field Video int32
---@field Alpha int32
local FManaPlayerTrackOptions = {}



---@class FManaVideoTrackInfo
---@field TextureDimensions FIntPoint
---@field DisplayDimensions FIntPoint
---@field FrameRate float
---@field TotalFrames int32
---@field bIsAlpha boolean
---@field Type EManaMovieType
local FManaVideoTrackInfo = {}



---@class FSnapshotSwitchSettings
---@field ASRRackID int32
---@field DspBusSettingsID int32
---@field DspBusSettingsName FString
---@field SnapshotID int32
---@field SnapshotName FString
---@field FadeTime float
local FSnapshotSwitchSettings = {}



---@class IAtomCallback : IInterface
local IAtomCallback = {}


---@class UAtom3dRegion : UObject
---@field Handle UAtom3dRegionHandle
local UAtom3dRegion = {}

---@param InHandle UAtom3dRegionHandle
function UAtom3dRegion:SetHandle(InHandle) end
---@return UAtom3dRegionHandle
function UAtom3dRegion:GetHandle() end


---@class UAtom3dRegionHandle : UObject
local UAtom3dRegionHandle = {}


---@class UAtom3dSourceBaseComponent : USceneComponent
---@field DefaultOutputVolumeScale float
---@field DefaultRegion UAtom3dRegion
---@field bIsAttenuationDistanceDebugSpheresVisible boolean
---@field DefaultMinAttenuationDistance float
---@field DefaultMaxAttenuationDistance float
---@field bIsOutputInteriorPanFieldDebugSpheresVisible boolean
---@field DefaultSourceRadius float
---@field DefaultInteriorDistance float
---@field DefaultDistanceAisacControls TArray<FString>
---@field DefaultOutputBasedAzimuthAngleAisacControls TArray<FString>
---@field DefaultOutputBasedElevationAngleAisacControls TArray<FString>
---@field DefaultListenerBasedAzimuthAngleAisacControls TArray<FString>
---@field DefaultListenerBasedElevationAngleAisacControls TArray<FString>
---@field bIsDebugStringsForDetailsVisible boolean
local UAtom3dSourceBaseComponent = {}

---@param InRegion UAtom3dRegion
function UAtom3dSourceBaseComponent:SetRegion(InRegion) end


---@class UAtom3dTransceiverComponent : UAtom3dSourceBaseComponent
---@field InputPoint AActor
---@field DefaultGlobalAisacs TArray<FString>
---@field bIsInputCrossfadeFieldDebugSpheresVisible boolean
---@field DefaultDirectAudioRadius float
---@field DefaultCrossfadeDistance float
local UAtom3dTransceiverComponent = {}



---@class UAtomAsrRack : UObject
---@field RackId int32
local UAtomAsrRack = {}

---@param BusName FString
---@param EffectName FString
---@param Bypasses boolean
function UAtomAsrRack:SetEffectBypass(BusName, EffectName, Bypasses) end
---@param BusName FString
---@param Volume float
function UAtomAsrRack:SetBusVolumeByName(BusName, Volume) end
---@param SourceBusName FString
---@param DestBusName FString
---@param Level float
function UAtomAsrRack:SetBusSendLevelByName(SourceBusName, DestBusName, Level) end
---@return UAtomAsrRack
function UAtomAsrRack:GetDefaultAsrRack() end
---@param ASRRackID int32
---@return FString
function UAtomAsrRack:GetCurrentAppliedSnapshot(ASRRackID) end
---@param DspBusName FString
---@param num_channels int32
---@param rms_levels TArray<float>
---@param peak_levels TArray<float>
---@param peak_hold_levels TArray<float>
---@return boolean
function UAtomAsrRack:GetBusAnalyzerInfo(DspBusName, num_channels, rms_levels, peak_levels, peak_hold_levels) end
---@param ASRRackID int32
---@return UAtomAsrRack
function UAtomAsrRack:GetAsrRack(ASRRackID) end
function UAtomAsrRack:DetachDspBusSetting() end
---@param UserIndex int32
function UAtomAsrRack:ConnectToPadVibrator(UserIndex) end
---@param UserIndex int32
function UAtomAsrRack:ConnectToPadSpeaker(UserIndex) end
---@param SettingName FString
function UAtomAsrRack:AttachDspBusSetting(SettingName) end
---@param SnapshotName FString
---@param Milliseconds int32
function UAtomAsrRack:ApplyDspBusSnapshot(SnapshotName, Milliseconds) end


---@class UAtomAudioVolumeSettings : UObject
---@field AtomAudioVolumeParameters FAtomAudioVolumeParameters
local UAtomAudioVolumeSettings = {}



---@class UAtomBusSampler : UObject
---@field OnRecordingStarted FAtomBusSamplerOnRecordingStarted
---@field OnRecordingFinished FAtomBusSamplerOnRecordingFinished
local UAtomBusSampler = {}

function UAtomBusSampler:StopRecordedSound() end
---@param InExpectedDuration float
---@param InAsrRack int32
---@param InBusName FString
---@param BusOutput boolean
function UAtomBusSampler:StartRecording(InExpectedDuration, InAsrRack, InBusName, BusOutput) end
function UAtomBusSampler:PlayRecordedSound() end
---@param bPause boolean
function UAtomBusSampler:PauseRecordedSound(bPause) end
function UAtomBusSampler:OnRecordingStarted__DelegateSignature() end
function UAtomBusSampler:OnRecordingFinished__DelegateSignature() end
---@return boolean
function UAtomBusSampler:IsRecording() end
---@return boolean
function UAtomBusSampler:IsPlayingRecordedSound() end
---@return boolean
function UAtomBusSampler:IsPausedRecordedSound() end
function UAtomBusSampler:FinishRecording() end
---@return boolean
function UAtomBusSampler:CanRecord() end
---@return boolean
function UAtomBusSampler:CanPlayRecordedSound() end


---@class UAtomCallbackManager : UObject
local UAtomCallbackManager = {}

---@param SequenceInfo FAtomSequenceInfo
---@param Time float
---@param TagName FString
---@param EventType EAtomSequenceEventType
---@param CallbackID int32
function UAtomCallbackManager:NativeBreakAtomSequenceInfo(SequenceInfo, Time, TagName, EventType, CallbackID) end
---@param BeatSyncInfo FAtomBeatSyncInfo
---@param BarCnt int32
---@param BeatCnt int32
---@param BeatProgress float
---@param Bpm float
---@param Offset int32
---@param NumBeats int32
function UAtomCallbackManager:NativeBreakAtomBeatSyncInfo(BeatSyncInfo, BarCnt, BeatCnt, BeatProgress, Bpm, Offset, NumBeats) end


---@class UAtomCategory : UBlueprintFunctionLibrary
local UAtomCategory = {}

---@param CategoryName FString
function UAtomCategory:StopByName(CategoryName) end
---@param CategoryName FString
---@param Volume float
function UAtomCategory:SetVolumeByName(CategoryName, Volume) end
---@param CategoryName FString
---@param AisacName FString
---@param Value float
function UAtomCategory:SetAisacControlByName(CategoryName, AisacName, Value) end
---@param CategoryName FString
---@return boolean
function UAtomCategory:ResetAllAisacControlByName(CategoryName) end
---@param CategoryID int32
---@return boolean
function UAtomCategory:ResetAllAisacControlById(CategoryID) end
---@param CategoryName FString
---@param bPause boolean
function UAtomCategory:PauseByName(CategoryName, bPause) end
---@param CategoryName FString
---@return boolean
function UAtomCategory:IsPausedByName(CategoryName) end
---@param CategoryName FString
---@return float
function UAtomCategory:GetVolumeByName(CategoryName) end
---@param CategoryName FString
---@return int32
function UAtomCategory:GetNumAttachedAisacsByName(CategoryName) end
---@param CategoryID int32
---@return int32
function UAtomCategory:GetNumAttachedAisacsById(CategoryID) end
---@param CategoryName FString
---@param AisacControlName FString
---@return float
function UAtomCategory:GetCurrentAisacControlValueByName(CategoryName, AisacControlName) end
---@param CategoryID int32
---@param AisacControlID int32
---@return float
function UAtomCategory:GetCurrentAisacControlValueById(CategoryID, AisacControlID) end
---@param CategoryName FString
---@param AisacAttachedIndex int32
---@param IsSuccess boolean
---@param AisacInfo FAtomAisacInfo
function UAtomCategory:GetAttachedAisacInfoByName(CategoryName, AisacAttachedIndex, IsSuccess, AisacInfo) end
---@param CategoryID int32
---@param AisacAttachedIndex int32
---@param IsSuccess boolean
---@param AisacInfo FAtomAisacInfo
function UAtomCategory:GetAttachedAisacInfoById(CategoryID, AisacAttachedIndex, IsSuccess, AisacInfo) end


---@class UAtomComponent : USceneComponent
---@field Sound USoundAtomCue
---@field Region UAtom3dRegion
---@field bAutoDestroy boolean
---@field bPersistAcrossLevelTransition boolean
---@field bStopWhenOwnerDestroyed boolean
---@field bIsUISound boolean
---@field DefaultVolume float
---@field bEnableMultipleSoundPlayback boolean
---@field bUsePlaylist boolean
---@field bIsMovable boolean
---@field bCanStraddleAudioVolume boolean
---@field bUseAudioVolume boolean
---@field bUseAreaSoundVolume boolean
---@field SoundObject UAtomSoundObject
---@field DefaultBlockIndex int32
---@field DefaultAisacControl TArray<FAtomAisacControlParam>
---@field DefaultSelectorLabel TArray<FAtomSelectorParam>
---@field LoopSetting EAtomLoopSetting
---@field bOnly2DSound boolean
---@field OnStatusChanged FAtomComponentOnStatusChanged
---@field OnAudioVolumeChanged FAtomComponentOnAudioVolumeChanged
---@field OnAudioFinished FAtomComponentOnAudioFinished
---@field PlayWorld UWorld
---@field GameViewport UGameViewportClient
---@field DefaultSoundObject UAtomSoundObject
---@field bOverrideAttenuation boolean
---@field AttenuationSettings USoundAttenuation
---@field AttenuationOverrides FSoundAttenuationSettings
---@field CueSheet USoundAtomCueSheet
---@field AppliedSoundObject UAtomSoundObject
---@field OnAtomBeatSyncCallback FAtomComponentOnAtomBeatSyncCallback
---@field OnAtomSequenceCallback FAtomComponentOnAtomSequenceCallback
local UAtomComponent = {}

function UAtomComponent:StopWithoutReleaseTime() end
function UAtomComponent:Stop() end
---@param Volume float
function UAtomComponent:SetVolume(Volume) end
---@param InSoundObject UAtomSoundObject
function UAtomComponent:SetSoundObject(InSoundObject) end
---@param NewSound USoundAtomCue
function UAtomComponent:SetSound(NewSound) end
---@param Selector FString
---@param Label FString
function UAtomComponent:SetSelectorLabel(Selector, Label) end
---@param InRegion UAtom3dRegion
function UAtomComponent:SetRegion(InRegion) end
---@param NewPitchMultiplier float
function UAtomComponent:SetPitchMultiplier(NewPitchMultiplier) end
---@param Pitch float
function UAtomComponent:SetPitch(Pitch) end
---@param BlockIndex int32
function UAtomComponent:SetNextBlockIndex(BlockIndex) end
---@param bEnable boolean
function UAtomComponent:SetDefaultAttenuationEnable(bEnable) end
---@param BusName FString
---@param LevelOffset float
function UAtomComponent:SetBusSendLevelOffsetByName(BusName, LevelOffset) end
---@param BusId int32
---@param LevelOffset float
function UAtomComponent:SetBusSendLevelOffset(BusId, LevelOffset) end
---@param BusName FString
---@param Level float
function UAtomComponent:SetBusSendLevelByName(BusName, Level) end
---@param BusId int32
---@param Level float
function UAtomComponent:SetBusSendLevel(BusId, Level) end
---@param AsrRackIDs TArray<int32>
function UAtomComponent:SetAsrRackIdArray(AsrRackIDs) end
---@param asr_rack_id int32
function UAtomComponent:SetAsrRackID(asr_rack_id) end
---@param ControlName FString
---@param ControlValue float
function UAtomComponent:SetAisacByName(ControlName, ControlValue) end
---@param StartTime float
function UAtomComponent:Play(StartTime) end
---@param bPause boolean
function UAtomComponent:Pause(bPause) end
---@param Status EAtomComponentStatus
---@param AtomComponent UAtomComponent
function UAtomComponent:OnStatusChanged__DelegateSignature(Status, AtomComponent) end
---@param Type EAtomAudioVolumeType
---@param AtomAudioVolume AAtomAudioVolume
---@param bIsCalledFromTick boolean
function UAtomComponent:OnAudioVolumeChanged__DelegateSignature(Type, AtomAudioVolume, bIsCalledFromTick) end
function UAtomComponent:OnAudioFinished__DelegateSignature() end
---@return boolean
function UAtomComponent:IsReducingTickFrequency() end
---@return boolean
function UAtomComponent:IsPlaying() end
---@return boolean
function UAtomComponent:IsPaused() end
---@return boolean
function UAtomComponent:IsLoop() end
---@return boolean
function UAtomComponent:HasBeenEconomicTick() end
---@return float
function UAtomComponent:GetVolume() end
---@return FVector
function UAtomComponent:GetVelocity() end
---@return float
function UAtomComponent:GetTime() end
---@return EAtomComponentStatus
function UAtomComponent:GetStatus() end
---@return float
function UAtomComponent:GetSequencePosition() end
---@return int32
function UAtomComponent:GetNumQueuedSounds() end
---@return float
function UAtomComponent:GetMaxAttenuationDistance() end
---@return float
function UAtomComponent:GetEconomicTickFrequency() end
---@return float
function UAtomComponent:GetEconomicTickDistanceMargin() end
---@return float
function UAtomComponent:GetEconomicTickDistance() end
---@return boolean
function UAtomComponent:GetDefaultAttenuationEnable() end
---@return float
function UAtomComponent:GetCurrentMaxAttenuationDistance() end
---@return float
function UAtomComponent:GetCurrentEconomicTickMarginDistance() end
---@return float
function UAtomComponent:GetCurrentEconomicTickFrequency() end
---@return float
function UAtomComponent:GetCurrentEconomicTickBoundaryDistance() end
---@return float
function UAtomComponent:GetCurrentCullingMarginDistance() end
---@return float
function UAtomComponent:GetCurrentCullingBoundaryDistance() end
---@param Type EAtomAudioVolumeType
---@param IsNeighbor boolean
---@return AAtomAudioVolume
function UAtomComponent:GetCurrentBelongingAudioVolume(Type, IsNeighbor) end
---@return float
function UAtomComponent:GetCullDistanceMargin() end
---@return float
function UAtomComponent:GetCullDistance() end
---@return FString
function UAtomComponent:GetCueName() end
---@param Type EAtomAudioVolumeType
---@return TMap<FString, float>
function UAtomComponent:GetAudioVolumeValueMap(Type) end
---@return int32
function UAtomComponent:GetAtomComponentID() end
---@param TargetID int32
---@return UAtomComponent
function UAtomComponent:GetAtomComponentFromID(TargetID) end
---@param FadeOutDuration float
---@param FadeVolumeLevel float
function UAtomComponent:FadeOut(FadeOutDuration, FadeVolumeLevel) end
---@param FadeInDuration float
---@param FadeVolumeLevel float
---@param StartTime float
function UAtomComponent:FadeIn(FadeInDuration, FadeVolumeLevel, StartTime) end
---@param NewSound USoundAtomCue
function UAtomComponent:EnqueueSound(NewSound) end
---@param TargetID int32
function UAtomComponent:DestroyComponentByID(TargetID) end
function UAtomComponent:ClearSelectorLabels() end
---@param OutAttenuationSettings FSoundAttenuationSettings
---@return boolean
function UAtomComponent:BP_GetAttenuationSettingsToApply(OutAttenuationSettings) end
---@param sound_shape_volume AAtomAreaSoundVolume
function UAtomComponent:AttachAreaSoundVolume(sound_shape_volume) end
---@param AtomComponent UAtomComponent
---@param SequenceInfo FAtomSequenceInfo
function UAtomComponent:AtomSequenceCallbackDelegate__DelegateSignature(AtomComponent, SequenceInfo) end
---@param AtomComponent UAtomComponent
---@param BeatSyncInfo FAtomBeatSyncInfo
function UAtomComponent:AtomBeatSyncCallbackDelegate__DelegateSignature(AtomComponent, BeatSyncInfo) end
---@param InAttenuationSettings FSoundAttenuationSettings
function UAtomComponent:AdjustAttenuation(InAttenuationSettings) end


---@class UAtomComponentPool : UObject
---@field Pool TArray<UAtomComponent>
local UAtomComponentPool = {}



---@class UAtomCueSheetLoaderComponent : USceneComponent
---@field CueSheetReference FSoftObjectPath
---@field BinderComponent UCriFsBinderComponent
---@field OnLoadCompleted FAtomCueSheetLoaderComponentOnLoadCompleted
---@field OnLoadError FAtomCueSheetLoaderComponentOnLoadError
---@field CueSheet USoundAtomCueSheet
local UAtomCueSheetLoaderComponent = {}

function UAtomCueSheetLoaderComponent:OnLoadError__DelegateSignature() end
function UAtomCueSheetLoaderComponent:OnLoadCompleted__DelegateSignature() end
---@param Loaded USoundAtomCueSheet
function UAtomCueSheetLoaderComponent:OnAtomCueSheetLoaded__DelegateSignature(Loaded) end
---@param WorldContextObject UObject
---@param Asset TSoftObjectPtr<USoundAtomCueSheet>
---@param OnLoaded FLoadAtomCueSheetOnLoaded
---@param LatentInfo FLatentActionInfo
function UAtomCueSheetLoaderComponent:LoadAtomCueSheet(WorldContextObject, Asset, OnLoaded, LatentInfo) end
function UAtomCueSheetLoaderComponent:Load() end
---@return EAtomCueSheetLoaderComponentStatus
function UAtomCueSheetLoaderComponent:GetStatus() end
---@return USoundAtomCueSheet
function UAtomCueSheetLoaderComponent:GetAtomCueSheet() end


---@class UAtomDeviceWatcher : UObject
---@field OnDeviceUpdated FAtomDeviceWatcherOnDeviceUpdated
local UAtomDeviceWatcher = {}

function UAtomDeviceWatcher:OnDeviceUpdated__DelegateSignature() end
---@param ASRRackID int32
---@return EAtomDeviceType
function UAtomDeviceWatcher:GetDeviceType(ASRRackID) end
---@return FString
function UAtomDeviceWatcher:GetDeviceName() end
---@param ASRRackID int32
---@return int32
function UAtomDeviceWatcher:GetDeviceChannelCount(ASRRackID) end


---@class UAtomListenerFocusPoint : USceneComponent
---@field DistanceFocusLevel float
---@field DirectionFocusLevel float
local UAtomListenerFocusPoint = {}



---@class UAtomParameterComponent : UActorComponent
---@field SoundObject UAtomSoundObject
---@field Region UAtom3dRegion
local UAtomParameterComponent = {}



---@class UAtomProfileData : UBlueprintFunctionLibrary
local UAtomProfileData = {}

---@param WorldContextObject UObject
---@return TArray<FAtomProfileItem>
function UAtomProfileData:CriWareAdx2ProfileDataUpdate(WorldContextObject) end
---@param original_item TArray<FAtomProfileItem>
---@param sort_type EAtomProfileSortType
---@param order_type EAtomSortOrderType
---@param sorted_item TArray<FAtomProfileItem>
function UAtomProfileData:CriWareAdx2ProfileDataSort(original_item, sort_type, order_type, sorted_item) end


---@class UAtomSoundObject : UDataAsset
---@field EnableVoiceLimitScope boolean
---@field EnableCategoryCueLimitScope boolean
local UAtomSoundObject = {}



---@class UAtomSpectrumAnalyzer : UBlueprintFunctionLibrary
local UAtomSpectrumAnalyzer = {}

---@param display_range float
---@param spectra TArray<float>
function UAtomSpectrumAnalyzer:GetLevelsDB(display_range, spectra) end
---@param spectra TArray<float>
function UAtomSpectrumAnalyzer:GetLevels(spectra) end
---@param asr_rack UAtomAsrRack
---@param bus_name FString
---@param num_bands int32
function UAtomSpectrumAnalyzer:CreateDspSpectra(asr_rack, bus_name, num_bands) end


---@class UAtomStatics : UBlueprintFunctionLibrary
local UAtomStatics = {}

---@param ArgDistanceFactor float
function UAtomStatics:UpdateDistanceFactorForAllSounds(ArgDistanceFactor) end
---@param AtomPlayGateRef UObject
---@param SkeltalMeshComponentRef UObject
function UAtomStatics:StopAllSoundsForKeyFromAtomComponentIds(AtomPlayGateRef, SkeltalMeshComponentRef) end
function UAtomStatics:StopAllSounds() end
---@param Sound USoundAtomCue
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param Rotation FRotator
---@param LocationType EAttachLocation::Type
---@param bStopWhenAttachedToDestroyed boolean
---@param VolumeMultiplier float
---@param PitchMultiplier float
---@param StartTime float
---@param AttenuationSettings USoundAttenuation
---@param ConcurrencySettings USoundConcurrency
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnSoundAttached(Sound, AttachToComponent, AttachPointName, Location, Rotation, LocationType, bStopWhenAttachedToDestroyed, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings, ConcurrencySettings, bAutoDestroy) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param Location FVector
---@param Rotation FRotator
---@param VolumeMultiplier float
---@param PitchMultiplier float
---@param StartTime float
---@param AttenuationSettings USoundAttenuation
---@param ConcurrencySettings USoundConcurrency
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnSoundAtLocation(WorldContextObject, Sound, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings, ConcurrencySettings, bAutoDestroy) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param PitchMultiplier float
---@param StartTime float
---@param bPersistAcrossLevelTransition boolean
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnSound2D(WorldContextObject, Sound, PitchMultiplier, StartTime, bPersistAcrossLevelTransition, bAutoDestroy) end
---@param CueSheet USoundAtomCueSheet
---@param CueName FString
---@param AttachToComponent USceneComponent
---@param Params FAtomComponentParams
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@param bStopWhenAttachedToDestroyed boolean
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSoundAttachedByName(CueSheet, CueName, AttachToComponent, Params, AttachPointName, Location, LocationType, bStopWhenAttachedToDestroyed, bAutoDestroy) end
---@param Sound USoundAtomCue
---@param AttachToComponent USceneComponent
---@param Params FAtomComponentParams
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@param bStopWhenAttachedToDestroyed boolean
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSoundAttached(Sound, AttachToComponent, Params, AttachPointName, Location, LocationType, bStopWhenAttachedToDestroyed, bAutoDestroy) end
---@param WorldContextObject UObject
---@param CueSheet USoundAtomCueSheet
---@param CueName FString
---@param Location FVector
---@param Params FAtomComponentParams
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSoundAtLocationByName(WorldContextObject, CueSheet, CueName, Location, Params, bAutoDestroy) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param Location FVector
---@param Params FAtomComponentParams
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSoundAtLocation(WorldContextObject, Sound, Location, Params, bAutoDestroy) end
---@param WorldContextObject UObject
---@param CueSheet USoundAtomCueSheet
---@param CueName FString
---@param Params FAtomComponentParams
---@param bPersistAcrossLevelTransition boolean
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSound2DByName(WorldContextObject, CueSheet, CueName, Params, bPersistAcrossLevelTransition, bAutoDestroy) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param Params FAtomComponentParams
---@param bPersistAcrossLevelTransition boolean
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:SpawnAtomSound2D(WorldContextObject, Sound, Params, bPersistAcrossLevelTransition, bAutoDestroy) end
---@param Region UAtom3dRegion
---@param PlayerIndex int32
function UAtomStatics:SetListenerRegion(Region, PlayerIndex) end
---@param TargetComponent USceneComponent
---@param PlayerIndex int32
function UAtomStatics:SetListenerFocusPointTargetComponent(TargetComponent, PlayerIndex) end
---@param TargetActor AActor
---@param PlayerIndex int32
function UAtomStatics:SetListenerFocusPointTargetActor(TargetActor, PlayerIndex) end
---@param FocusPointInfo FAtomListenerFocusPointInfo
---@param PlayerIndex int32
function UAtomStatics:SetListenerFocusPointInfo(FocusPointInfo, PlayerIndex) end
---@param DistanceLevel float
---@param PlayerIndex int32
function UAtomStatics:SetListenerFocusPointDistanceLevel(DistanceLevel, PlayerIndex) end
---@param DirectionLevel float
---@param PlayerIndex int32
function UAtomStatics:SetListenerFocusPointDirectionLevel(DirectionLevel, PlayerIndex) end
---@param GameVariableName FString
---@param Value float
function UAtomStatics:SetAtomGameVariable(GameVariableName, Value) end
---@param Sound USoundAtomCue
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param bStopWhenAttachedToDestroyed boolean
---@param VolumeMultiplier float
---@param PitchMultiplier float
---@param StartTime float
---@param AttenuationSettings USoundAttenuation
---@param bFollow boolean
---@return UAtomComponent
function UAtomStatics:PlaySoundForAnimNotify(Sound, AttachToComponent, AttachPointName, Location, bStopWhenAttachedToDestroyed, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings, bFollow) end
---@param Sound USoundAtomCue
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param bStopWhenAttachedToDestroyed boolean
---@param VolumeMultiplier float
---@param PitchMultiplier float
---@param StartTime float
---@param AttenuationSettings USoundAttenuation
---@return UAtomComponent
function UAtomStatics:PlaySoundAttached(Sound, AttachToComponent, AttachPointName, Location, bStopWhenAttachedToDestroyed, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param Location FVector
---@param Rotation FRotator
---@param VolumeMultiplier float
---@param PitchMultiplier float
---@param StartTime float
---@param AttenuationSettings USoundAttenuation
---@param ConcurrencySettings USoundConcurrency
function UAtomStatics:PlaySoundAtLocation(WorldContextObject, Sound, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings, ConcurrencySettings) end
---@param WorldContextObject UObject
---@param CueSheet USoundAtomCueSheet
---@param CueName FString
---@param Location FVector
---@param Params FAtomComponentParams
function UAtomStatics:PlayAtomSoundAtLocationByName(WorldContextObject, CueSheet, CueName, Location, Params) end
---@param WorldContextObject UObject
---@param Sound USoundAtomCue
---@param Location FVector
---@param Params FAtomComponentParams
function UAtomStatics:PlayAtomSoundAtLocation(WorldContextObject, Sound, Location, Params) end
---@param bPause boolean
function UAtomStatics:PauseAudioOutput(bPause) end
---@param AcfObject USoundAtomConfig
---@return boolean
function UAtomStatics:LoadAtomConfig(AcfObject) end
---@param PlayerIndex int32
---@return FVector
function UAtomStatics:GetListeningPoint(PlayerIndex) end
---@param PlayerIndex int32
---@return UAtom3dRegion
function UAtomStatics:GetListenerRegion(PlayerIndex) end
---@param PlayerIndex int32
---@return FAtomListenerFocusPointInfo
function UAtomStatics:GetListenerFocusPointInfo(PlayerIndex) end
---@param PlayerIndex int32
---@param TypeNum EAtomAudioVolumeType
---@return AAtomAudioVolume
function UAtomStatics:GetAudioVolumeAffectingListener(PlayerIndex, TypeNum) end
---@param GameVariableName FString
---@return float
function UAtomStatics:GetAtomGameVariable(GameVariableName) end
---@param WorldContextObject UObject
---@param bAutoDestroy boolean
---@return UAtomComponent
function UAtomStatics:CreateRootedAtomComponent(WorldContextObject, bAutoDestroy) end
---@param AtomPlayGateRef UObject
---@param SkeltalMeshComponentRef UObject
---@param AtomComponentID int32
function UAtomStatics:AddToAtomComponentIds(AtomPlayGateRef, SkeltalMeshComponentRef, AtomComponentID) end


---@class UAtomTriggerTableFunctionLibrary : UBlueprintFunctionLibrary
local UAtomTriggerTableFunctionLibrary = {}

---@param Table UDataTable
---@param RowName FName
---@param OutRow FAtomTriggerRow
---@return boolean
function UAtomTriggerTableFunctionLibrary:GetDataTableRowFromName(Table, RowName, OutRow) end


---@class UAtomUnrealSoundRenderer : USoundWaveProcedural
local UAtomUnrealSoundRenderer = {}


---@class UAtomWavePlayer : UObject
---@field bIsUISound boolean
---@field OnWaveFinished FAtomWavePlayerOnWaveFinished
---@field OnWavePlaybackPercent FAtomWavePlayerOnWavePlaybackPercent
---@field SoundAtomCue USoundAtomCue
---@field WaveInfo FAtomWaveInfo
---@field bLoop boolean
local UAtomWavePlayer = {}

---@param DelayTime float
function UAtomWavePlayer:StopDelayed(DelayTime) end
function UAtomWavePlayer:Stop() end
---@param InCue USoundAtomCue
function UAtomWavePlayer:SetWave(InCue) end
---@param bPause boolean
function UAtomWavePlayer:SetPaused(bPause) end
---@param Looping boolean
---@return boolean
function UAtomWavePlayer:SetLooping(Looping) end
---@param StartTime float
function UAtomWavePlayer:Play(StartTime) end
---@return boolean
function UAtomWavePlayer:IsPlaying() end
---@return boolean
function UAtomWavePlayer:IsPaused() end
---@return boolean
function UAtomWavePlayer:IsLooping() end
---@return boolean
function UAtomWavePlayer:HasError() end
---@return FAtomWaveInfo
function UAtomWavePlayer:GetWaveInfo() end
---@return FTimespan
function UAtomWavePlayer:GetTime() end
---@return EAtomWavePlayState
function UAtomWavePlayer:GetPlayState() end
---@return USoundAtomCue
function UAtomWavePlayer:GetCue() end
---@param AdjustVolumeDuration float
---@param AdjustVolumeLevel float
function UAtomWavePlayer:AdjustVolume(AdjustVolumeDuration, AdjustVolumeLevel) end


---@class UCriFsBinderComponent : USceneComponent
---@field FilePath FString
---@field OnBindCompleted FCriFsBinderComponentOnBindCompleted
---@field OnBindError FCriFsBinderComponentOnBindError
local UCriFsBinderComponent = {}

function UCriFsBinderComponent:Stop() end
function UCriFsBinderComponent:OnBindError__DelegateSignature() end
function UCriFsBinderComponent:OnBindCompleted__DelegateSignature() end
---@return ECriFsBinderStatus
function UCriFsBinderComponent:GetStatus() end
function UCriFsBinderComponent:Bind() end


---@class UCriFsLoaderComponent : USceneComponent
---@field FilePath FString
---@field OnLoadCompleted FCriFsLoaderComponentOnLoadCompleted
---@field OnLoadError FCriFsLoaderComponentOnLoadError
local UCriFsLoaderComponent = {}

function UCriFsLoaderComponent:OnLoadError__DelegateSignature() end
function UCriFsLoaderComponent:OnLoadCompleted__DelegateSignature() end
function UCriFsLoaderComponent:Load() end
---@return ECriFsLoaderStatus
function UCriFsLoaderComponent:GetStatus() end
---@return TArray<uint8>
function UCriFsLoaderComponent:GetDataArray() end


---@class UCriWareError : UObject
---@field OnCriWareError FCriWareErrorOnCriWareError
local UCriWareError = {}

---@param ErrorInfo FCriWareErrorInfo
function UCriWareError:OnCriWareError__DelegateSignature(ErrorInfo) end
---@return UCriWareError
function UCriWareError:GetCriWareError() end


---@class UCriWareFunctionLibrary : UBlueprintFunctionLibrary
local UCriWareFunctionLibrary = {}

---@param SpeakerSystem ECriWareSpeakerSystem
---@param Angles TArray<float>
function UCriWareFunctionLibrary:SetSpeakerAngleArray(SpeakerSystem, Angles) end
---@param SelectorName FString
---@param LabelName FString
function UCriWareFunctionLibrary:SetGlobalLabelToSelectorByName(SelectorName, LabelName) end
---@param GameVariableName FString
---@param Value float
function UCriWareFunctionLibrary:SetGameVariableByName(GameVariableName, Value) end


---@class UCriWareInitializer : UObject
local UCriWareInitializer = {}


---@class UCriWarePluginSettings : UObject
---@field bNoExistCriWareIni boolean
---@field bEditableCriWareAdxLipSyncSetting boolean
---@field NonAssetContentDir FDirectoryPath
---@field ContentDir FString
---@field NumBinders int32
---@field MaxBinds int32
---@field NumLoaders int32
---@field MaxPath int32
---@field OutputsLogFileSystem boolean
---@field PS4_FileAccessThreadAffinityMask int32
---@field PS4_DataDecompressionThreadAffinityMask int32
---@field PS4_MemoryFileSystemThreadAffinityMask int32
---@field PS4_FileAccessThreadPriority int32
---@field PS4_DataDecompressionThreadPriority int32
---@field PS4_MemoryFileSystemThreadPriority int32
---@field AutomaticallyCreateCueAsset boolean
---@field UsesInGamePreview boolean
---@field OutputsLogAtom boolean
---@field AwbRootDirectory FDirectoryPath
---@field AwbRoot FString
---@field MonitorCommunicationBufferSize int32
---@field MaxPitch int32
---@field AsrOutputChannels int32
---@field MaxVirtualVoices int32
---@field NumStandardMemoryVoices int32
---@field StandardMemoryVoiceNumChannels int32
---@field StandardMemoryVoiceSamplingRate int32
---@field NumStandardStreamingVoices int32
---@field StandardStreamingVoiceNumChannels int32
---@field StandardStreamingVoiceSamplingRate int32
---@field PoolAtomComponent boolean
---@field AtomConfig FSoftObjectPath
---@field AcfFileName FString
---@field AtomConfigDataTable FSoftObjectPath
---@field DistanceFactor float
---@field SoundRendererTypeUI EAtomSoundRendererType::Type
---@field SoundRendererType int32
---@field AsrRackConfigUI TArray<FAtomAsrRackConfigUI>
---@field AsrRackConfig TArray<FAtomAsrRackConfig>
---@field Hardware1 FString
---@field Hardware2 FString
---@field Hardware3 FString
---@field Hardware4 FString
---@field EconomicTickMarginDistance float
---@field EconomicTickFrequency int32
---@field CullingMarginDistance float
---@field HcaMxVoiceSamplingRate int32
---@field NumHcaMxMemoryVoices int32
---@field HcaMxMemoryVoiceNumChannels int32
---@field NumHcaMxStreamingVoices int32
---@field HcaMxStreamingVoiceNumChannels int32
---@field WASAPI_IsExclusive boolean
---@field WASAPI_BitsPerSample int32
---@field WASAPI_SamplingRate int32
---@field WASAPI_NumChannels int32
---@field UseUnrealSoundRenderer boolean
---@field SmartPhone_UseSonicSYNC boolean
---@field PS4_ServerThreadAffinityMask int32
---@field PS4_OutputThreadAffinityMask int32
---@field PS4_ServerThreadPriority int32
---@field PS4_OutputThreadPriority int32
---@field PS4_UseAudio3d boolean
---@field PS4_NumberOfAudio3dMemoryVoices int32
---@field PS4_SamplingRateOfAudio3dMemoryVoices int32
---@field PS4_NumberOfAudio3dStreamingVoices int32
---@field PS4_SamplingRateOfAudio3dStreamingVoices int32
---@field Switch_NumOpusMemoryVoices int32
---@field Switch_OpusMemoryVoiceNumChannels int32
---@field Switch_OpusMemoryVoiceSamplingRate int32
---@field Switch_NumOpusStreamingVoices int32
---@field Switch_OpusStreamingVoiceNumChannels int32
---@field Switch_OpusStreamingVoiceSamplingRate int32
---@field InitializeMana boolean
---@field EnableDecodeSkip boolean
---@field MaxDecoderHandles int32
---@field MaxManaBPS int32
---@field MaxManaStreams int32
---@field UseH264Decoder boolean
---@field InitializeAdxLipSync boolean
---@field MaxNumAnalyzerHandles int32
---@field bUseManaStartupMovies boolean
---@field bWaitForMoviesToComplete boolean
---@field bMoviesAreSkippable boolean
---@field StartupMovies TArray<FString>
local UCriWarePluginSettings = {}



---@class UDEPRECATED_MaterialExpressionManaMovieFormatSwitch : UMaterialExpression
---@field Inputs FExpressionInput
local UDEPRECATED_MaterialExpressionManaMovieFormatSwitch = {}



---@class UDataManaMovie : UManaMovie
local UDataManaMovie = {}

---@param InDataArray TArray<uint8>
function UDataManaMovie:SetDataArray(InDataArray) end
---@return TArray<uint8>
function UDataManaMovie:GetDataArray() end


---@class UFileManaMovie : UManaMovie
---@field bPrecacheFile boolean
---@field FilePath FString
local UFileManaMovie = {}

---@param Path FString
function UFileManaMovie:SetFilePath(Path) end


---@class UManaComponent : UActorComponent
---@field Movie UManaTexture
---@field OnEventPoint FManaComponentOnEventPoint
---@field OnSubtitleChanged FManaComponentOnSubtitleChanged
---@field OnStatusChanged FManaComponentOnStatusChanged
---@field OnMovieChanged FManaComponentOnMovieChanged
---@field OnSeekCompleted FManaComponentOnSeekCompleted
---@field OnTrackChanged FManaComponentOnTrackChanged
---@field OnFrameOnTime FManaComponentOnFrameOnTime
---@field OnPlayerDestroyed FManaComponentOnPlayerDestroyed
---@field OnRequestData FManaComponentOnRequestData
---@field Playlist UManaPlaylist
---@field PlaylistIndex int32
---@field bLoop boolean
---@field AlphaTrack int32
---@field AudioTrack int32
---@field SubAudioTrack int32
---@field ExtraAudioTrack int32
---@field AudioCategoryName FString
---@field SubAudioCategoryName FString
---@field ExtraAudioCategoryName FString
---@field bSubtitlesEnabled boolean
---@field SubtitlesChannel int32
---@field SubtitlesEncoding EManaSubtitlesEncoding
---@field EndFrameAction EManaFrameAction
---@field PlaybackTimer EManaPlaybackTimer
---@field MaxFrameDrop EManaMaxFrameDrop
local UManaComponent = {}

---@param Index int32
---@return boolean
function UManaComponent:ToIndex(Index) end
function UManaComponent:Stop() end
---@param Volume float
function UManaComponent:SetVolume(Volume) end
---@param Texture UManaTexture
function UManaComponent:SetTexture(Texture) end
---@param Volume float
function UManaComponent:SetSubVolume(Volume) end
---@param Track int32
function UManaComponent:SetSubAudioTrack(Track) end
---@param Channel int32
---@param SpeakerId EAtomSpeakerID
---@param Volume float
function UManaComponent:SetSubAudioSendLevel(Channel, SpeakerId, Volume) end
---@param CategoryName FString
function UManaComponent:SetSubAudioCategory(CategoryName) end
---@param InPlaybackTimer EManaPlaybackTimer
function UManaComponent:SetPlaybackTimer(InPlaybackTimer) end
---@param InMovie UManaMovie
function UManaComponent:SetMovie(InMovie) end
---@param InMaxDropFrames EManaMaxFrameDrop
function UManaComponent:SetMaxDropFrames(InMaxDropFrames) end
---@param MovieFilePath FString
function UManaComponent:SetFile(MovieFilePath) end
---@param Volume float
function UManaComponent:SetExtraVolume(Volume) end
---@param Track int32
function UManaComponent:SetExtraAudioTrack(Track) end
---@param CategoryName FString
function UManaComponent:SetExtraAudioCategory(CategoryName) end
---@param InFrameAction EManaFrameAction
function UManaComponent:SetEndFrameAction(InFrameAction) end
---@param Track int32
function UManaComponent:SetAudioTrack(Track) end
---@param CategoryName FString
function UManaComponent:SetAudioCategory(CategoryName) end
---@param Track int32
function UManaComponent:SetAlphaTrack(Track) end
---@param FrameNumber int32
function UManaComponent:SeekToPosition(FrameNumber) end
---@param Time FTimespan
function UManaComponent:Seek(Time) end
function UManaComponent:RemoveSubAudioCategory() end
function UManaComponent:RemoveExtraAudioCategory() end
function UManaComponent:RemoveAudioCategory() end
---@return boolean
function UManaComponent:Previous() end
---@param Index int32
function UManaComponent:PreparePlaylistIndex(Index) end
function UManaComponent:Prepare() end
function UManaComponent:Play() end
---@param bPause boolean
function UManaComponent:Pause(bPause) end
---@param TrackNumber int32
---@param ManaComponent UManaComponent
function UManaComponent:OnTrackChanged__DelegateSignature(TrackNumber, ManaComponent) end
---@param Subtitle FText
function UManaComponent:OnSubtitleChanged__DelegateSignature(Subtitle) end
---@param Status EManaComponentStatus
---@param ManaComponent UManaComponent
function UManaComponent:OnStatusChanged__DelegateSignature(Status, ManaComponent) end
---@param FrameNumber int32
---@param ManaComponent UManaComponent
function UManaComponent:OnSeekCompleted__DelegateSignature(FrameNumber, ManaComponent) end
---@param ManaComponent UManaComponent
function UManaComponent:OnRequestData__DelegateSignature(ManaComponent) end
---@param ManaComponent UManaComponent
function UManaComponent:OnPlayerDestroyed__DelegateSignature(ManaComponent) end
---@param Movie UManaMovie
---@param ManaComponent UManaComponent
function UManaComponent:OnMovieChanged__DelegateSignature(Movie, ManaComponent) end
---@param FrameNumber int32
---@param ManaComponent UManaComponent
function UManaComponent:OnFrameOnTime__DelegateSignature(FrameNumber, ManaComponent) end
---@param EventPointInfo FManaEventPointInfo
function UManaComponent:OnEventPoint__DelegateSignature(EventPointInfo) end
---@return boolean
function UManaComponent:Next() end
---@param bInLoop boolean
function UManaComponent:Loop(bInLoop) end
---@return boolean
function UManaComponent:IsReady() end
---@return boolean
function UManaComponent:IsPreparing() end
---@return boolean
function UManaComponent:IsPlaying() end
---@return boolean
function UManaComponent:IsPaused() end
---@return boolean
function UManaComponent:IsLooping() end
---@return float
function UManaComponent:GetVolume() end
---@return FTimespan
function UManaComponent:GetTime() end
---@return UManaTexture
function UManaComponent:GetTexture() end
---@return float
function UManaComponent:GetSubVolume() end
---@return EManaComponentStatus
function UManaComponent:GetStatus() end
---@return UManaMovie
function UManaComponent:GetSource() end
---@return int32
function UManaComponent:GetPosition() end
---@return FTimespan
function UManaComponent:GetMovieTime() end
---@return int32
function UManaComponent:GetFrameNumber() end
---@return float
function UManaComponent:GetExtraVolume() end
---@param bEnable boolean
function UManaComponent:EnableSubtitles(bEnable) end
---@param bEnable boolean
function UManaComponent:EnableSeamless(bEnable) end
---@param Encoding EManaSubtitlesEncoding
function UManaComponent:ChangeSubtitlesEncoding(Encoding) end
---@param Channel int32
function UManaComponent:ChangeSubtitlesChannel(Channel) end
---@param DeltaTime FTimespan
function UManaComponent:AdvanceTime(DeltaTime) end


---@class UManaComponentTexture : UTexture
---@field SizeX int32
---@field SizeY int32
---@field Format EPixelFormat
---@field ComponentType EManaComponentTextureType
---@field AddressX TextureAddress
---@field AddressY TextureAddress
local UManaComponentTexture = {}



---@class UManaMovie : UManaSource
---@field VideoTracks TArray<FManaVideoTrackInfo>
---@field AlphaTracks TArray<FManaVideoTrackInfo>
---@field AudioTracks TArray<FManaAudioTrackInfo>
---@field EventPoints TArray<FManaEventPointInfo>
---@field NumSubtitleChannels int32
---@field MaxSubtitleSize int32
---@field bIsAlpha boolean
local UManaMovie = {}

---@return boolean
function UManaMovie:Validate() end
---@return FString
function UManaMovie:GetUrl() end


---@class UManaPlayer : UObject
---@field PlayOnOpen boolean
---@field Loop boolean
---@field MaxFrameDrop EManaMaxFrameDrop
---@field OnEndReached FManaPlayerOnEndReached
---@field OnMovieClosed FManaPlayerOnMovieClosed
---@field OnMovieOpened FManaPlayerOnMovieOpened
---@field OnMovieOpenFailed FManaPlayerOnMovieOpenFailed
---@field OnPlaybackResumed FManaPlayerOnPlaybackResumed
---@field OnPlaybackSuspended FManaPlayerOnPlaybackSuspended
---@field OnSeekCompleted FManaPlayerOnSeekCompleted
---@field OnTracksChanged FManaPlayerOnTracksChanged
---@field ManaTexture UManaTexture
---@field ManaMovie UManaMovie
---@field Playlist UManaPlaylist
---@field PlaylistIndex int32
---@field ManaComponent UManaComponent
local UManaPlayer = {}

---@param Volume float
---@param TrackType EManaPlayerTrack
---@return boolean
function UManaPlayer:SetVolume(Volume, TrackType) end
---@param SyncedSource UAtomComponent
function UManaPlayer:SetTimeSyncedSource(SyncedSource) end
---@param InManaTexture UManaTexture
function UManaPlayer:SetTexture(InManaTexture) end
---@param Rate float
---@return boolean
function UManaPlayer:SetRate(Rate) end
---@param Looping boolean
---@return boolean
function UManaPlayer:SetLooping(Looping) end
---@param TrackType EManaPlayerTrack
---@param TrackIndex int32
---@return boolean
function UManaPlayer:SelectTrack(TrackType, TrackIndex) end
---@param Time FTimespan
---@return boolean
function UManaPlayer:Seek(Time) end
---@return boolean
function UManaPlayer:Rewind() end
---@return boolean
function UManaPlayer:Reopen() end
---@return boolean
function UManaPlayer:Previous() end
function UManaPlayer:PlayAndSeek() end
---@return boolean
function UManaPlayer:Play() end
---@return boolean
function UManaPlayer:Pause() end
---@param ManaSource UManaSource
---@param PlayerOptions FManaPlayerOptions
---@return boolean
function UManaPlayer:OpenSourceWithOptions(ManaSource, PlayerOptions) end
---@param InPlaylist UManaPlaylist
---@param Index int32
---@return boolean
function UManaPlayer:OpenPlaylistIndex(InPlaylist, Index) end
---@param InPlaylist UManaPlaylist
---@return boolean
function UManaPlayer:OpenPlaylist(InPlaylist) end
---@param InManaMovie UManaMovie
function UManaPlayer:OpenMovieSource(InManaMovie) end
---@param FrameNumber int32
function UManaPlayer:OnFrameUpdatedDelegate__DelegateSignature(FrameNumber) end
---@return boolean
function UManaPlayer:Next() end
---@return boolean
function UManaPlayer:IsSeeking() end
---@return boolean
function UManaPlayer:IsReady() end
---@return boolean
function UManaPlayer:IsPreparing() end
---@return boolean
function UManaPlayer:IsPlaying() end
---@return boolean
function UManaPlayer:IsPaused() end
---@return boolean
function UManaPlayer:IsLooping() end
---@return boolean
function UManaPlayer:IsClosed() end
---@return boolean
function UManaPlayer:HasError() end
---@param Status EManaComponentStatus
---@param InManaComponent UManaComponent
function UManaPlayer:HandleManaComponentStatusChanged(Status, InManaComponent) end
---@param InFrameNumber int32
---@param InManaComponent UManaComponent
function UManaPlayer:HandleManaComponentSeekCompleted(InFrameNumber, InManaComponent) end
---@param InManaComponent UManaComponent
function UManaPlayer:HandleManaComponentPlayerDestroyed(InManaComponent) end
---@param InManaMovie UManaMovie
---@param InManaComponent UManaComponent
function UManaPlayer:HandleManaComponentMovieChanged(InManaMovie, InManaComponent) end
---@param InFrameNumber int32
---@param InManaComponent UManaComponent
function UManaPlayer:HandleManaComponentFrameOnTime(InFrameNumber, InManaComponent) end
---@param TrackType EManaPlayerTrack
---@return float
function UManaPlayer:GetVolume(TrackType) end
---@return FTimespan
function UManaPlayer:GetTime() end
---@return UManaTexture
function UManaPlayer:GetTexture() end
---@return EManaComponentStatus
function UManaPlayer:GetStatus() end
---@return float
function UManaPlayer:GetRate() end
---@return int32
function UManaPlayer:GetPlaylistIndex() end
---@return FTimespan
function UManaPlayer:GetMovieTime() end
---@return UManaMovie
function UManaPlayer:GetMovieSource() end
---@return int32
function UManaPlayer:GetMovieFrames() end
---@return int32
function UManaPlayer:GetFrames() end
---@return FTimespan
function UManaPlayer:GetDuration() end
---@param TrackType EManaPlayerTrack
---@return boolean
function UManaPlayer:DisableTrack(TrackType) end
function UManaPlayer:Close() end
---@param Event FBindOnFrameUpdatedEvent
function UManaPlayer:BindOnFrameUpdated(Event) end


---@class UManaPlaylist : UManaSource
---@field Movies TArray<UManaMovie>
---@field bIsAlpha boolean
---@field bIsMixedTypes boolean
---@field bIsSeamless boolean
local UManaPlaylist = {}

---@param Index int32
function UManaPlaylist:RemoveAt(Index) end
---@param ManaMovie UManaMovie
function UManaPlaylist:Remove(ManaMovie) end
---@return int32
function UManaPlaylist:Num() end
---@return boolean
function UManaPlaylist:IsSeamless() end
---@return boolean
function UManaPlaylist:IsMixedTypes() end
---@return boolean
function UManaPlaylist:IsAlpha() end
---@param ManaMovie UManaMovie
---@param Index int32
function UManaPlaylist:Insert(ManaMovie, Index) end
---@param InOutIndex int32
---@return UManaMovie
function UManaPlaylist:GetRandom(InOutIndex) end
---@param InOutIndex int32
---@return UManaMovie
function UManaPlaylist:GetPrevious(InOutIndex) end
---@param InOutIndex int32
---@return UManaMovie
function UManaPlaylist:GetNext(InOutIndex) end
---@param Index int32
---@return UManaMovie
function UManaPlaylist:Get(Index) end
---@param ManaMovie UManaMovie
function UManaPlaylist:Add(ManaMovie) end


---@class UManaSource : UObject
local UManaSource = {}


---@class UManaTexture : UTexture
---@field MovieSource UManaSource
---@field MovieFilePath FString
---@field bRenderToTexture boolean
---@field TargetGamma float
---@field bHDR boolean
---@field AddressX TextureAddress
---@field AddressY TextureAddress
---@field ClearColor FLinearColor
---@field bOverrideDimensions boolean
---@field TargetDimensions FIntPoint
---@field OverrideFormat EPixelFormat
---@field OnTextureUpdated FManaTextureOnTextureUpdated
---@field ComponentTextures TArray<UManaComponentTexture>
---@field AlphaComponentTextures TArray<UManaComponentTexture>
---@field ManaPlayer UManaComponent
local UManaTexture = {}

---@param InSource UManaSource
function UManaTexture:SetMovieSource(InSource) end
---@param ManaTexture UManaTexture
function UManaTexture:OnTextureUpdated__DelegateSignature(ManaTexture) end


---@class UMaterialExpressionManaColorSpaceConverter : UMaterialExpression
---@field Luma FExpressionInput
---@field ChromaB FExpressionInput
---@field ChromaR FExpressionInput
---@field Alpha FExpressionInput
---@field Gamma FExpressionInput
---@field bH264 boolean
---@field MovieType EManaMovieType
---@field ColorSpace EManaColorSpace
---@field bUseGammaExponent boolean
---@field ConstGamma float
local UMaterialExpressionManaColorSpaceConverter = {}



---@class UPlatformManaMovie : UManaMovie
---@field ManaMovie UManaMovie
local UPlatformManaMovie = {}



---@class USoundAtomConfig : UObject
---@field AcfFilePath FString
local USoundAtomConfig = {}

---@return TArray<FAtomCategoryInfoParam>
function USoundAtomConfig:GetCategoryInfoArray() end


---@class USoundAtomCue : UObject
---@field CueSheet USoundAtomCueSheet
---@field CueName FString
---@field LoopSetting EAtomLoopSetting
---@field bApplyAtomParameter boolean
---@field Duration float
---@field FirstWaveDuration float
---@field AttenuationSettings USoundAttenuation
---@field bEnableAudioVolume boolean
---@field bIsMovable boolean
---@field bCanStraddleAudioVolume boolean
---@field bUseDistanceToEnableAudioVolume boolean
---@field MinDistanceToEnableAudioVolume float
---@field bUseAreaSoundVolume boolean
---@field UpdateRateForFrame int32
---@field Region UAtom3dRegion
---@field bEconomicTick boolean
---@field bOverrideEconomicTickSettings boolean
---@field EconomicTickDistanceMargin float
---@field EconomicTickFrequency int32
---@field bEnableDistanceCulling boolean
---@field bOverrideCullSettings boolean
---@field CullDistanceMargin float
---@field EconomicTickMarginDistance float
---@field bLoopSettingByAtomCraft boolean
---@field bCullingSoundPlayingProcessByDistance boolean
---@field bUseLegacyCullingSettings boolean
---@field MaxProcessDistance float
---@field bOverrideCullingSettings boolean
---@field CullingMarginDistance float
---@field bLoop boolean
---@field DefaultAttenuation USoundAttenuation
local USoundAtomCue = {}

---@return boolean
function USoundAtomCue:Validate() end
---@return boolean
function USoundAtomCue:IsLooping() end
---@return boolean
function USoundAtomCue:IsEconomicTickEnabled() end
---@return float
function USoundAtomCue:GetMaxAttenuationDistanceToUse() end
---@return float
function USoundAtomCue:GetMaxAttenuationDistanceToApply() end
---@return float
function USoundAtomCue:GetEconomicTickMarginDistanceToUse() end
---@return float
function USoundAtomCue:GetEconomicTickFrequencyToUse() end
---@return float
function USoundAtomCue:GetEconomicTickFrequencyToApply() end
---@return float
function USoundAtomCue:GetEconomicTickDistanceMarginToApply() end
---@return float
function USoundAtomCue:GetEconomicTickDistance() end
---@return float
function USoundAtomCue:GetEconomicTickBoundaryDistanceToUse() end
---@return float
function USoundAtomCue:GetCullingMarginDistanceToUse() end
---@return float
function USoundAtomCue:GetCullingBoundaryDistanceToUse() end
---@return float
function USoundAtomCue:GetCullDistanceMarginToApply() end
---@return float
function USoundAtomCue:GetCullDistance() end
---@param CueInfo FAtomCueInfo
---@return boolean
function USoundAtomCue:BP_GetCueInfo(CueInfo) end


---@class USoundAtomCueSheet : UObject
---@field Contains boolean
---@field AcbFilePath FString
---@field CueSheetName FString
---@field NumSlots int32
---@field bOverrideAwbDirectory boolean
---@field AwbDirectory FDirectoryPath
---@field AdditionalData UDataTable
---@field CueInfos TArray<FAtomCueInfo>
local USoundAtomCueSheet = {}

---@param AcbName FName
function USoundAtomCueSheet:ReleaseAcb(AcbName) end
---@param CueSheet USoundAtomCueSheet
---@param bAddToLevel boolean
---@return USoundAtomCueSheet
function USoundAtomCueSheet:LoadAtomCueSheet(CueSheet, bAddToLevel) end
---@param AcbName FName
---@param bAddToLevel boolean
---@return USoundAtomCueSheet
function USoundAtomCueSheet:LoadAcb(AcbName, bAddToLevel) end
---@return boolean
function USoundAtomCueSheet:IsLoaded() end
---@return int32
function USoundAtomCueSheet:GetNumCues() end
---@param CueName FString
---@return USoundAtomCue
function USoundAtomCueSheet:GetAtomCueByName(CueName) end
---@param CueIndex int32
---@return USoundAtomCue
function USoundAtomCueSheet:GetAtomCueByIndex(CueIndex) end
---@param CueId int32
---@return USoundAtomCue
function USoundAtomCueSheet:GetAtomCueById(CueId) end
function USoundAtomCueSheet:DetachDspBusSetting() end
---@param Name FString
---@param CueInfo FAtomCueInfo
---@return boolean
function USoundAtomCueSheet:BP_GetCueInfoFromName(Name, CueInfo) end
---@param Index int32
---@param CueInfo FAtomCueInfo
---@return boolean
function USoundAtomCueSheet:BP_GetCueInfoFromIndex(Index, CueInfo) end
---@param ID int32
---@param CueInfo FAtomCueInfo
---@return boolean
function USoundAtomCueSheet:BP_GetCueInfoFromId(ID, CueInfo) end
---@param SettingName FString
function USoundAtomCueSheet:AttachDspBusSetting(SettingName) end
---@param SnapshotName FString
---@param Milliseconds int32
function USoundAtomCueSheet:ApplyDspBusSnapshot(SnapshotName, Milliseconds) end


---@class UStreamManaMovie : UManaMovie
---@field StreamUrl FString
local UStreamManaMovie = {}



