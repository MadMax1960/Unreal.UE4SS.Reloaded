---@meta

---@class FSequencerBindingProxy
---@field BindingID FGuid
---@field Sequence UMovieSceneSequence
local FSequencerBindingProxy = {}



---@class FSequencerScriptingRange
---@field bHasStart boolean
---@field bHasEnd boolean
---@field InclusiveStart int32
---@field ExclusiveEnd int32
---@field InternalRate FFrameRate
local FSequencerScriptingRange = {}



---@class UMovieSceneBindingExtensions : UBlueprintFunctionLibrary
local UMovieSceneBindingExtensions = {}

---@param InBinding FSequencerBindingProxy
---@param InParentBinding FSequencerBindingProxy
function UMovieSceneBindingExtensions:SetParent(InBinding, InParentBinding) end
---@param InBinding FSequencerBindingProxy
---@param InName FString
function UMovieSceneBindingExtensions:SetName(InBinding, InName) end
---@param InBinding FSequencerBindingProxy
---@param InDisplayName FText
function UMovieSceneBindingExtensions:SetDisplayName(InBinding, InDisplayName) end
---@param InBinding FSequencerBindingProxy
---@param TrackToRemove UMovieSceneTrack
function UMovieSceneBindingExtensions:RemoveTrack(InBinding, TrackToRemove) end
---@param InBinding FSequencerBindingProxy
function UMovieSceneBindingExtensions:Remove(InBinding) end
---@param SourceBindingId FSequencerBindingProxy
---@param DestinationBindingId FSequencerBindingProxy
function UMovieSceneBindingExtensions:MoveBindingContents(SourceBindingId, DestinationBindingId) end
---@param InBinding FSequencerBindingProxy
---@return boolean
function UMovieSceneBindingExtensions:IsValid(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return TArray<UMovieSceneTrack>
function UMovieSceneBindingExtensions:GetTracks(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return UClass
function UMovieSceneBindingExtensions:GetPossessedObjectClass(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return FSequencerBindingProxy
function UMovieSceneBindingExtensions:GetParent(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return UObject
function UMovieSceneBindingExtensions:GetObjectTemplate(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return FString
function UMovieSceneBindingExtensions:GetName(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return FGuid
function UMovieSceneBindingExtensions:GetId(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return FText
function UMovieSceneBindingExtensions:GetDisplayName(InBinding) end
---@param InBinding FSequencerBindingProxy
---@return TArray<FSequencerBindingProxy>
function UMovieSceneBindingExtensions:GetChildPossessables(InBinding) end
---@param InBinding FSequencerBindingProxy
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return TArray<UMovieSceneTrack>
function UMovieSceneBindingExtensions:FindTracksByType(InBinding, TrackType) end
---@param InBinding FSequencerBindingProxy
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return TArray<UMovieSceneTrack>
function UMovieSceneBindingExtensions:FindTracksByExactType(InBinding, TrackType) end
---@param InBinding FSequencerBindingProxy
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return UMovieSceneTrack
function UMovieSceneBindingExtensions:AddTrack(InBinding, TrackType) end


---@class UMovieSceneEventTrackExtensions : UBlueprintFunctionLibrary
local UMovieSceneEventTrackExtensions = {}

---@param InTrack UMovieSceneEventTrack
---@return UMovieSceneEventTriggerSection
function UMovieSceneEventTrackExtensions:AddEventTriggerSection(InTrack) end
---@param InTrack UMovieSceneEventTrack
---@return UMovieSceneEventRepeaterSection
function UMovieSceneEventTrackExtensions:AddEventRepeaterSection(InTrack) end


---@class UMovieSceneFolderExtensions : UBlueprintFunctionLibrary
local UMovieSceneFolderExtensions = {}

---@param Folder UMovieSceneFolder
---@param InFolderName FName
---@return boolean
function UMovieSceneFolderExtensions:SetFolderName(Folder, InFolderName) end
---@param Folder UMovieSceneFolder
---@param InFolderColor FColor
---@return boolean
function UMovieSceneFolderExtensions:SetFolderColor(Folder, InFolderColor) end
---@param Folder UMovieSceneFolder
---@param InObjectBinding FSequencerBindingProxy
---@return boolean
function UMovieSceneFolderExtensions:RemoveChildObjectBinding(Folder, InObjectBinding) end
---@param Folder UMovieSceneFolder
---@param InMasterTrack UMovieSceneTrack
---@return boolean
function UMovieSceneFolderExtensions:RemoveChildMasterTrack(Folder, InMasterTrack) end
---@param TargetFolder UMovieSceneFolder
---@param FolderToRemove UMovieSceneFolder
---@return boolean
function UMovieSceneFolderExtensions:RemoveChildFolder(TargetFolder, FolderToRemove) end
---@param Folder UMovieSceneFolder
---@return FName
function UMovieSceneFolderExtensions:GetFolderName(Folder) end
---@param Folder UMovieSceneFolder
---@return FColor
function UMovieSceneFolderExtensions:GetFolderColor(Folder) end
---@param Folder UMovieSceneFolder
---@return TArray<FSequencerBindingProxy>
function UMovieSceneFolderExtensions:GetChildObjectBindings(Folder) end
---@param Folder UMovieSceneFolder
---@return TArray<UMovieSceneTrack>
function UMovieSceneFolderExtensions:GetChildMasterTracks(Folder) end
---@param Folder UMovieSceneFolder
---@return TArray<UMovieSceneFolder>
function UMovieSceneFolderExtensions:GetChildFolders(Folder) end
---@param Folder UMovieSceneFolder
---@param InObjectBinding FSequencerBindingProxy
---@return boolean
function UMovieSceneFolderExtensions:AddChildObjectBinding(Folder, InObjectBinding) end
---@param Folder UMovieSceneFolder
---@param InMasterTrack UMovieSceneTrack
---@return boolean
function UMovieSceneFolderExtensions:AddChildMasterTrack(Folder, InMasterTrack) end
---@param TargetFolder UMovieSceneFolder
---@param FolderToAdd UMovieSceneFolder
---@return boolean
function UMovieSceneFolderExtensions:AddChildFolder(TargetFolder, FolderToAdd) end


---@class UMovieScenePropertyTrackExtensions : UBlueprintFunctionLibrary
local UMovieScenePropertyTrackExtensions = {}

---@param Track UMovieScenePropertyTrack
---@param InPropertyName FName
---@param InPropertyPath FString
function UMovieScenePropertyTrackExtensions:SetPropertyNameAndPath(Track, InPropertyName, InPropertyPath) end
---@param Track UMovieSceneObjectPropertyTrack
---@param PropertyClass UClass
function UMovieScenePropertyTrackExtensions:SetObjectPropertyClass(Track, PropertyClass) end
---@param Track UMovieScenePropertyTrack
---@return FName
function UMovieScenePropertyTrackExtensions:GetUniqueTrackName(Track) end
---@param Track UMovieScenePropertyTrack
---@return FString
function UMovieScenePropertyTrackExtensions:GetPropertyPath(Track) end
---@param Track UMovieScenePropertyTrack
---@return FName
function UMovieScenePropertyTrackExtensions:GetPropertyName(Track) end
---@param Track UMovieSceneObjectPropertyTrack
---@return UClass
function UMovieScenePropertyTrackExtensions:GetObjectPropertyClass(Track) end


---@class UMovieSceneScriptingActorReferenceChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingActorReferenceChannel = {}

---@param InDefaultValue FMovieSceneObjectBindingID
function UMovieSceneScriptingActorReferenceChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingActorReferenceChannel:RemoveKey(Key) end
function UMovieSceneScriptingActorReferenceChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingActorReferenceChannel:HasDefault() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingActorReferenceChannel:GetKeys() end
---@return FMovieSceneObjectBindingID
function UMovieSceneScriptingActorReferenceChannel:GetDefault() end
---@param InTime FFrameNumber
---@param NewValue FMovieSceneObjectBindingID
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingActorReferenceKey
function UMovieSceneScriptingActorReferenceChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingActorReferenceKey : UMovieSceneScriptingKey
local UMovieSceneScriptingActorReferenceKey = {}

---@param InNewValue FMovieSceneObjectBindingID
function UMovieSceneScriptingActorReferenceKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingActorReferenceKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return FMovieSceneObjectBindingID
function UMovieSceneScriptingActorReferenceKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingActorReferenceKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingBoolChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingBoolChannel = {}

---@param InDefaultValue boolean
function UMovieSceneScriptingBoolChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingBoolChannel:RemoveKey(Key) end
function UMovieSceneScriptingBoolChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingBoolChannel:HasDefault() end
---@return int32
function UMovieSceneScriptingBoolChannel:GetNumKeys() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingBoolChannel:GetKeys() end
---@return boolean
function UMovieSceneScriptingBoolChannel:GetDefault() end
---@param Range FSequencerScriptingRange
---@param FrameRate FFrameRate
---@return TArray<boolean>
function UMovieSceneScriptingBoolChannel:EvaluateKeys(Range, FrameRate) end
---@return FSequencerScriptingRange
function UMovieSceneScriptingBoolChannel:ComputeEffectiveRange() end
---@param InTime FFrameNumber
---@param NewValue boolean
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingBoolKey
function UMovieSceneScriptingBoolChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingBoolKey : UMovieSceneScriptingKey
local UMovieSceneScriptingBoolKey = {}

---@param InNewValue boolean
function UMovieSceneScriptingBoolKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingBoolKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return boolean
function UMovieSceneScriptingBoolKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingBoolKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingByteChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingByteChannel = {}

---@param InDefaultValue uint8
function UMovieSceneScriptingByteChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingByteChannel:RemoveKey(Key) end
function UMovieSceneScriptingByteChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingByteChannel:HasDefault() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingByteChannel:GetKeys() end
---@return uint8
function UMovieSceneScriptingByteChannel:GetDefault() end
---@param InTime FFrameNumber
---@param NewValue uint8
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@param InInterpolation EMovieSceneKeyInterpolation
---@return UMovieSceneScriptingByteKey
function UMovieSceneScriptingByteChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit, InInterpolation) end


---@class UMovieSceneScriptingByteKey : UMovieSceneScriptingKey
local UMovieSceneScriptingByteKey = {}

---@param InNewValue uint8
function UMovieSceneScriptingByteKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingByteKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return uint8
function UMovieSceneScriptingByteKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingByteKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingChannel : UObject
---@field ChannelName FName
local UMovieSceneScriptingChannel = {}



---@class UMovieSceneScriptingEventChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingEventChannel = {}

---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingEventChannel:RemoveKey(Key) end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingEventChannel:GetKeys() end
---@param InTime FFrameNumber
---@param NewValue FMovieSceneEvent
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingEventKey
function UMovieSceneScriptingEventChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingEventKey : UMovieSceneScriptingKey
local UMovieSceneScriptingEventKey = {}

---@param InNewValue FMovieSceneEvent
function UMovieSceneScriptingEventKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingEventKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return FMovieSceneEvent
function UMovieSceneScriptingEventKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingEventKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingFloatChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingFloatChannel = {}

---@param InExtrapolation ERichCurveExtrapolation
function UMovieSceneScriptingFloatChannel:SetPreInfinityExtrapolation(InExtrapolation) end
---@param InExtrapolation ERichCurveExtrapolation
function UMovieSceneScriptingFloatChannel:SetPostInfinityExtrapolation(InExtrapolation) end
---@param InDefaultValue float
function UMovieSceneScriptingFloatChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingFloatChannel:RemoveKey(Key) end
function UMovieSceneScriptingFloatChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingFloatChannel:HasDefault() end
---@return ERichCurveExtrapolation
function UMovieSceneScriptingFloatChannel:GetPreInfinityExtrapolation() end
---@return ERichCurveExtrapolation
function UMovieSceneScriptingFloatChannel:GetPostInfinityExtrapolation() end
---@return int32
function UMovieSceneScriptingFloatChannel:GetNumKeys() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingFloatChannel:GetKeys() end
---@return float
function UMovieSceneScriptingFloatChannel:GetDefault() end
---@param Range FSequencerScriptingRange
---@param FrameRate FFrameRate
---@return TArray<float>
function UMovieSceneScriptingFloatChannel:EvaluateKeys(Range, FrameRate) end
---@return FSequencerScriptingRange
function UMovieSceneScriptingFloatChannel:ComputeEffectiveRange() end
---@param InTime FFrameNumber
---@param NewValue float
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@param InInterpolation EMovieSceneKeyInterpolation
---@return UMovieSceneScriptingFloatKey
function UMovieSceneScriptingFloatChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit, InInterpolation) end


---@class UMovieSceneScriptingFloatKey : UMovieSceneScriptingKey
local UMovieSceneScriptingFloatKey = {}

---@param InNewValue float
function UMovieSceneScriptingFloatKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingFloatKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@param InNewValue ERichCurveTangentWeightMode
function UMovieSceneScriptingFloatKey:SetTangentWeightMode(InNewValue) end
---@param InNewValue ERichCurveTangentMode
function UMovieSceneScriptingFloatKey:SetTangentMode(InNewValue) end
---@param InNewValue float
function UMovieSceneScriptingFloatKey:SetLeaveTangentWeight(InNewValue) end
---@param InNewValue float
function UMovieSceneScriptingFloatKey:SetLeaveTangent(InNewValue) end
---@param InNewValue ERichCurveInterpMode
function UMovieSceneScriptingFloatKey:SetInterpolationMode(InNewValue) end
---@param InNewValue float
function UMovieSceneScriptingFloatKey:SetArriveTangentWeight(InNewValue) end
---@param InNewValue float
function UMovieSceneScriptingFloatKey:SetArriveTangent(InNewValue) end
---@return float
function UMovieSceneScriptingFloatKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingFloatKey:GetTime(TimeUnit) end
---@return ERichCurveTangentWeightMode
function UMovieSceneScriptingFloatKey:GetTangentWeightMode() end
---@return ERichCurveTangentMode
function UMovieSceneScriptingFloatKey:GetTangentMode() end
---@return float
function UMovieSceneScriptingFloatKey:GetLeaveTangentWeight() end
---@return float
function UMovieSceneScriptingFloatKey:GetLeaveTangent() end
---@return ERichCurveInterpMode
function UMovieSceneScriptingFloatKey:GetInterpolationMode() end
---@return float
function UMovieSceneScriptingFloatKey:GetArriveTangentWeight() end
---@return float
function UMovieSceneScriptingFloatKey:GetArriveTangent() end


---@class UMovieSceneScriptingIntegerChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingIntegerChannel = {}

---@param InDefaultValue int32
function UMovieSceneScriptingIntegerChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingIntegerChannel:RemoveKey(Key) end
function UMovieSceneScriptingIntegerChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingIntegerChannel:HasDefault() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingIntegerChannel:GetKeys() end
---@return int32
function UMovieSceneScriptingIntegerChannel:GetDefault() end
---@param InTime FFrameNumber
---@param NewValue int32
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingIntegerKey
function UMovieSceneScriptingIntegerChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingIntegerKey : UMovieSceneScriptingKey
local UMovieSceneScriptingIntegerKey = {}

---@param InNewValue int32
function UMovieSceneScriptingIntegerKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingIntegerKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return int32
function UMovieSceneScriptingIntegerKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingIntegerKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingKey : UObject
local UMovieSceneScriptingKey = {}


---@class UMovieSceneScriptingObjectPathChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingObjectPathChannel = {}

---@param InDefaultValue UObject
function UMovieSceneScriptingObjectPathChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingObjectPathChannel:RemoveKey(Key) end
function UMovieSceneScriptingObjectPathChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingObjectPathChannel:HasDefault() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingObjectPathChannel:GetKeys() end
---@return UObject
function UMovieSceneScriptingObjectPathChannel:GetDefault() end
---@param InTime FFrameNumber
---@param NewValue UObject
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingObjectPathKey
function UMovieSceneScriptingObjectPathChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingObjectPathKey : UMovieSceneScriptingKey
local UMovieSceneScriptingObjectPathKey = {}

---@param InNewValue UObject
function UMovieSceneScriptingObjectPathKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingObjectPathKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return UObject
function UMovieSceneScriptingObjectPathKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingObjectPathKey:GetTime(TimeUnit) end


---@class UMovieSceneScriptingStringChannel : UMovieSceneScriptingChannel
local UMovieSceneScriptingStringChannel = {}

---@param InDefaultValue FString
function UMovieSceneScriptingStringChannel:SetDefault(InDefaultValue) end
---@param Key UMovieSceneScriptingKey
function UMovieSceneScriptingStringChannel:RemoveKey(Key) end
function UMovieSceneScriptingStringChannel:RemoveDefault() end
---@return boolean
function UMovieSceneScriptingStringChannel:HasDefault() end
---@return TArray<UMovieSceneScriptingKey>
function UMovieSceneScriptingStringChannel:GetKeys() end
---@return FString
function UMovieSceneScriptingStringChannel:GetDefault() end
---@param InTime FFrameNumber
---@param NewValue FString
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
---@return UMovieSceneScriptingStringKey
function UMovieSceneScriptingStringChannel:AddKey(InTime, NewValue, SubFrame, TimeUnit) end


---@class UMovieSceneScriptingStringKey : UMovieSceneScriptingKey
local UMovieSceneScriptingStringKey = {}

---@param InNewValue FString
function UMovieSceneScriptingStringKey:SetValue(InNewValue) end
---@param NewFrameNumber FFrameNumber
---@param SubFrame float
---@param TimeUnit ESequenceTimeUnit
function UMovieSceneScriptingStringKey:SetTime(NewFrameNumber, SubFrame, TimeUnit) end
---@return FString
function UMovieSceneScriptingStringKey:GetValue() end
---@param TimeUnit ESequenceTimeUnit
---@return FFrameTime
function UMovieSceneScriptingStringKey:GetTime(TimeUnit) end


---@class UMovieSceneSectionExtensions : UBlueprintFunctionLibrary
local UMovieSceneSectionExtensions = {}

---@param Section UMovieSceneSection
---@param StartTime float
function UMovieSceneSectionExtensions:SetStartFrameSeconds(Section, StartTime) end
---@param Section UMovieSceneSection
---@param bIsBounded boolean
function UMovieSceneSectionExtensions:SetStartFrameBounded(Section, bIsBounded) end
---@param Section UMovieSceneSection
---@param StartFrame int32
function UMovieSceneSectionExtensions:SetStartFrame(Section, StartFrame) end
---@param Section UMovieSceneSection
---@param StartTime float
---@param EndTime float
function UMovieSceneSectionExtensions:SetRangeSeconds(Section, StartTime, EndTime) end
---@param Section UMovieSceneSection
---@param StartFrame int32
---@param EndFrame int32
function UMovieSceneSectionExtensions:SetRange(Section, StartFrame, EndFrame) end
---@param Section UMovieSceneSection
---@param EndTime float
function UMovieSceneSectionExtensions:SetEndFrameSeconds(Section, EndTime) end
---@param Section UMovieSceneSection
---@param bIsBounded boolean
function UMovieSceneSectionExtensions:SetEndFrameBounded(Section, bIsBounded) end
---@param Section UMovieSceneSection
---@param EndFrame int32
function UMovieSceneSectionExtensions:SetEndFrame(Section, EndFrame) end
---@param Section UMovieSceneSection
---@return boolean
function UMovieSceneSectionExtensions:HasStartFrame(Section) end
---@param Section UMovieSceneSection
---@return boolean
function UMovieSceneSectionExtensions:HasEndFrame(Section) end
---@param Section UMovieSceneSection
---@return float
function UMovieSceneSectionExtensions:GetStartFrameSeconds(Section) end
---@param Section UMovieSceneSection
---@return int32
function UMovieSceneSectionExtensions:GetStartFrame(Section) end
---@param Section UMovieSceneSubSection
---@param InFrame int32
---@param ParentSequence UMovieSceneSequence
---@return int32
function UMovieSceneSectionExtensions:GetParentSequenceFrame(Section, InFrame, ParentSequence) end
---@param Section UMovieSceneSection
---@return float
function UMovieSceneSectionExtensions:GetEndFrameSeconds(Section) end
---@param Section UMovieSceneSection
---@return int32
function UMovieSceneSectionExtensions:GetEndFrame(Section) end
---@param Section UMovieSceneSection
---@return TArray<UMovieSceneScriptingChannel>
function UMovieSceneSectionExtensions:GetChannels(Section) end
---@param Section UMovieSceneSection
---@param ChannelType TSubclassOf<UMovieSceneScriptingChannel>
---@return TArray<UMovieSceneScriptingChannel>
function UMovieSceneSectionExtensions:FindChannelsByType(Section, ChannelType) end


---@class UMovieSceneSequenceExtensions : UBlueprintFunctionLibrary
local UMovieSceneSequenceExtensions = {}

---@param Sequence UMovieSceneSequence
function UMovieSceneSequenceExtensions:SortMarkedFrames(Sequence) end
---@param InSequence UMovieSceneSequence
---@param StartTimeInSeconds float
function UMovieSceneSequenceExtensions:SetWorkRangeStart(InSequence, StartTimeInSeconds) end
---@param InSequence UMovieSceneSequence
---@param EndTimeInSeconds float
function UMovieSceneSequenceExtensions:SetWorkRangeEnd(InSequence, EndTimeInSeconds) end
---@param InSequence UMovieSceneSequence
---@param StartTimeInSeconds float
function UMovieSceneSequenceExtensions:SetViewRangeStart(InSequence, StartTimeInSeconds) end
---@param InSequence UMovieSceneSequence
---@param EndTimeInSeconds float
function UMovieSceneSequenceExtensions:SetViewRangeEnd(InSequence, EndTimeInSeconds) end
---@param Sequence UMovieSceneSequence
---@param TickResolution FFrameRate
function UMovieSceneSequenceExtensions:SetTickResolutionDirectly(Sequence, TickResolution) end
---@param Sequence UMovieSceneSequence
---@param TickResolution FFrameRate
function UMovieSceneSequenceExtensions:SetTickResolution(Sequence, TickResolution) end
---@param Sequence UMovieSceneSequence
---@param bInReadOnly boolean
function UMovieSceneSequenceExtensions:SetReadOnly(Sequence, bInReadOnly) end
---@param Sequence UMovieSceneSequence
---@param StartTime float
function UMovieSceneSequenceExtensions:SetPlaybackStartSeconds(Sequence, StartTime) end
---@param Sequence UMovieSceneSequence
---@param StartFrame int32
function UMovieSceneSequenceExtensions:SetPlaybackStart(Sequence, StartFrame) end
---@param Sequence UMovieSceneSequence
---@param EndTime float
function UMovieSceneSequenceExtensions:SetPlaybackEndSeconds(Sequence, EndTime) end
---@param Sequence UMovieSceneSequence
---@param EndFrame int32
function UMovieSceneSequenceExtensions:SetPlaybackEnd(Sequence, EndFrame) end
---@param Sequence UMovieSceneSequence
---@param InMarkIndex int32
---@param InFrameNumber FFrameNumber
function UMovieSceneSequenceExtensions:SetMarkedFrame(Sequence, InMarkIndex, InFrameNumber) end
---@param InSequence UMovieSceneSequence
---@param InEvaluationType EMovieSceneEvaluationType
function UMovieSceneSequenceExtensions:SetEvaluationType(InSequence, InEvaluationType) end
---@param Sequence UMovieSceneSequence
---@param DisplayRate FFrameRate
function UMovieSceneSequenceExtensions:SetDisplayRate(Sequence, DisplayRate) end
---@param InSequence UMovieSceneSequence
---@param InClockSource EUpdateClockSource
function UMovieSceneSequenceExtensions:SetClockSource(InSequence, InClockSource) end
---@param MasterSequence UMovieSceneSequence
---@param InObjectBindingID FMovieSceneObjectBindingID
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:ResolveBindingID(MasterSequence, InObjectBindingID) end
---@param Sequence UMovieSceneSequence
---@param MasterTrack UMovieSceneTrack
---@return boolean
function UMovieSceneSequenceExtensions:RemoveMasterTrack(Sequence, MasterTrack) end
---@param Sequence UMovieSceneSequence
---@param StartTime float
---@param Duration float
---@return FSequencerScriptingRange
function UMovieSceneSequenceExtensions:MakeRangeSeconds(Sequence, StartTime, Duration) end
---@param Sequence UMovieSceneSequence
---@param StartFrame int32
---@param Duration int32
---@return FSequencerScriptingRange
function UMovieSceneSequenceExtensions:MakeRange(Sequence, StartFrame, Duration) end
---@param MasterSequence UMovieSceneSequence
---@param InBinding FSequencerBindingProxy
---@param Space EMovieSceneObjectBindingSpace
---@return FMovieSceneObjectBindingID
function UMovieSceneSequenceExtensions:MakeBindingID(MasterSequence, InBinding, Space) end
---@param Sequence UMovieSceneSequence
---@param InBinding FSequencerBindingProxy
---@param Context UObject
---@return TArray<UObject>
function UMovieSceneSequenceExtensions:LocateBoundObjects(Sequence, InBinding, Context) end
---@param Sequence UMovieSceneSequence
---@return boolean
function UMovieSceneSequenceExtensions:IsReadOnly(Sequence) end
---@param InSequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetWorkRangeStart(InSequence) end
---@param InSequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetWorkRangeEnd(InSequence) end
---@param InSequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetViewRangeStart(InSequence) end
---@param InSequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetViewRangeEnd(InSequence) end
---@param Sequence UMovieSceneSequence
---@return FTimecode
function UMovieSceneSequenceExtensions:GetTimecodeSource(Sequence) end
---@param Sequence UMovieSceneSequence
---@return FFrameRate
function UMovieSceneSequenceExtensions:GetTickResolution(Sequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<FSequencerBindingProxy>
function UMovieSceneSequenceExtensions:GetSpawnables(Sequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<UMovieSceneFolder>
function UMovieSceneSequenceExtensions:GetRootFoldersInSequence(Sequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<FSequencerBindingProxy>
function UMovieSceneSequenceExtensions:GetPossessables(Sequence) end
---@param MasterSequence UMovieSceneSequence
---@param DestinationSequence UMovieSceneSequence
---@param InBinding FSequencerBindingProxy
---@return FMovieSceneObjectBindingID
function UMovieSceneSequenceExtensions:GetPortableBindingID(MasterSequence, DestinationSequence, InBinding) end
---@param Sequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetPlaybackStartSeconds(Sequence) end
---@param Sequence UMovieSceneSequence
---@return int32
function UMovieSceneSequenceExtensions:GetPlaybackStart(Sequence) end
---@param Sequence UMovieSceneSequence
---@return FSequencerScriptingRange
function UMovieSceneSequenceExtensions:GetPlaybackRange(Sequence) end
---@param Sequence UMovieSceneSequence
---@return float
function UMovieSceneSequenceExtensions:GetPlaybackEndSeconds(Sequence) end
---@param Sequence UMovieSceneSequence
---@return int32
function UMovieSceneSequenceExtensions:GetPlaybackEnd(Sequence) end
---@param Sequence UMovieSceneSequence
---@return UMovieScene
function UMovieSceneSequenceExtensions:GetMovieScene(Sequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<UMovieSceneTrack>
function UMovieSceneSequenceExtensions:GetMasterTracks(Sequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<FMovieSceneMarkedFrame>
function UMovieSceneSequenceExtensions:GetMarkedFrames(Sequence) end
---@param InSequence UMovieSceneSequence
---@return EMovieSceneEvaluationType
function UMovieSceneSequenceExtensions:GetEvaluationType(InSequence) end
---@param Sequence UMovieSceneSequence
---@return FFrameRate
function UMovieSceneSequenceExtensions:GetDisplayRate(Sequence) end
---@param InSequence UMovieSceneSequence
---@return EUpdateClockSource
function UMovieSceneSequenceExtensions:GetClockSource(InSequence) end
---@param Sequence UMovieSceneSequence
---@return TArray<FSequencerBindingProxy>
function UMovieSceneSequenceExtensions:GetBindings(Sequence) end
---@param InBinding FSequencerBindingProxy
---@return FMovieSceneObjectBindingID
function UMovieSceneSequenceExtensions:GetBindingID(InBinding) end
---@param Sequence UMovieSceneSequence
---@param InFrameNumber FFrameNumber
---@param bForward boolean
---@return int32
function UMovieSceneSequenceExtensions:FindNextMarkedFrame(Sequence, InFrameNumber, bForward) end
---@param Sequence UMovieSceneSequence
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return TArray<UMovieSceneTrack>
function UMovieSceneSequenceExtensions:FindMasterTracksByType(Sequence, TrackType) end
---@param Sequence UMovieSceneSequence
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return TArray<UMovieSceneTrack>
function UMovieSceneSequenceExtensions:FindMasterTracksByExactType(Sequence, TrackType) end
---@param Sequence UMovieSceneSequence
---@param InLabel FString
---@return int32
function UMovieSceneSequenceExtensions:FindMarkedFrameByLabel(Sequence, InLabel) end
---@param Sequence UMovieSceneSequence
---@param InFrameNumber FFrameNumber
---@return int32
function UMovieSceneSequenceExtensions:FindMarkedFrameByFrameNumber(Sequence, InFrameNumber) end
---@param Sequence UMovieSceneSequence
---@param Name FString
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:FindBindingByName(Sequence, Name) end
---@param Sequence UMovieSceneSequence
---@param BindingID FGuid
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:FindBindingById(Sequence, BindingID) end
---@param Sequence UMovieSceneSequence
function UMovieSceneSequenceExtensions:DeleteMarkedFrames(Sequence) end
---@param Sequence UMovieSceneSequence
---@param DeleteIndex int32
function UMovieSceneSequenceExtensions:DeleteMarkedFrame(Sequence, DeleteIndex) end
---@param Sequence UMovieSceneSequence
---@param ObjectToSpawn UObject
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:AddSpawnableFromInstance(Sequence, ObjectToSpawn) end
---@param Sequence UMovieSceneSequence
---@param ClassToSpawn UClass
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:AddSpawnableFromClass(Sequence, ClassToSpawn) end
---@param Sequence UMovieSceneSequence
---@param NewFolderName FString
---@return UMovieSceneFolder
function UMovieSceneSequenceExtensions:AddRootFolderToSequence(Sequence, NewFolderName) end
---@param Sequence UMovieSceneSequence
---@param ObjectToPossess UObject
---@return FSequencerBindingProxy
function UMovieSceneSequenceExtensions:AddPossessable(Sequence, ObjectToPossess) end
---@param Sequence UMovieSceneSequence
---@param TrackType TSubclassOf<UMovieSceneTrack>
---@return UMovieSceneTrack
function UMovieSceneSequenceExtensions:AddMasterTrack(Sequence, TrackType) end
---@param Sequence UMovieSceneSequence
---@param InMarkedFrame FMovieSceneMarkedFrame
---@return int32
function UMovieSceneSequenceExtensions:AddMarkedFrame(Sequence, InMarkedFrame) end


---@class UMovieSceneTrackExtensions : UBlueprintFunctionLibrary
local UMovieSceneTrackExtensions = {}

---@param Track UMovieSceneTrack
---@param SortingOrder int32
function UMovieSceneTrackExtensions:SetSortingOrder(Track, SortingOrder) end
---@param Track UMovieSceneTrack
---@param Section UMovieSceneSection
function UMovieSceneTrackExtensions:SetSectionToKey(Track, Section) end
---@param Track UMovieSceneTrack
---@param InName FText
function UMovieSceneTrackExtensions:SetDisplayName(Track, InName) end
---@param Track UMovieSceneTrack
---@param ColorTint FColor
function UMovieSceneTrackExtensions:SetColorTint(Track, ColorTint) end
---@param Track UMovieSceneTrack
---@param Section UMovieSceneSection
function UMovieSceneTrackExtensions:RemoveSection(Track, Section) end
---@param Track UMovieSceneTrack
---@return int32
function UMovieSceneTrackExtensions:GetSortingOrder(Track) end
---@param Track UMovieSceneTrack
---@return UMovieSceneSection
function UMovieSceneTrackExtensions:GetSectionToKey(Track) end
---@param Track UMovieSceneTrack
---@return TArray<UMovieSceneSection>
function UMovieSceneTrackExtensions:GetSections(Track) end
---@param Track UMovieSceneTrack
---@return FText
function UMovieSceneTrackExtensions:GetDisplayName(Track) end
---@param Track UMovieSceneTrack
---@return FColor
function UMovieSceneTrackExtensions:GetColorTint(Track) end
---@param Track UMovieSceneTrack
---@return UMovieSceneSection
function UMovieSceneTrackExtensions:AddSection(Track) end


---@class UMovieSceneVectorTrackExtensions : UBlueprintFunctionLibrary
local UMovieSceneVectorTrackExtensions = {}

---@param Track UMovieSceneVectorTrack
---@param InNumChannelsUsed int32
function UMovieSceneVectorTrackExtensions:SetNumChannelsUsed(Track, InNumChannelsUsed) end
---@param Track UMovieSceneVectorTrack
---@return int32
function UMovieSceneVectorTrackExtensions:GetNumChannelsUsed(Track) end


---@class USequencerScriptingRangeExtensions : UBlueprintFunctionLibrary
local USequencerScriptingRangeExtensions = {}

---@param Range FSequencerScriptingRange
---@param Start float
function USequencerScriptingRangeExtensions:SetStartSeconds(Range, Start) end
---@param Range FSequencerScriptingRange
---@param Start int32
function USequencerScriptingRangeExtensions:SetStartFrame(Range, Start) end
---@param Range FSequencerScriptingRange
---@param End float
function USequencerScriptingRangeExtensions:SetEndSeconds(Range, End) end
---@param Range FSequencerScriptingRange
---@param End int32
function USequencerScriptingRangeExtensions:SetEndFrame(Range, End) end
---@param Range FSequencerScriptingRange
function USequencerScriptingRangeExtensions:RemoveStart(Range) end
---@param Range FSequencerScriptingRange
function USequencerScriptingRangeExtensions:RemoveEnd(Range) end
---@param Range FSequencerScriptingRange
---@return boolean
function USequencerScriptingRangeExtensions:HasStart(Range) end
---@param Range FSequencerScriptingRange
---@return boolean
function USequencerScriptingRangeExtensions:HasEnd(Range) end
---@param Range FSequencerScriptingRange
---@return float
function USequencerScriptingRangeExtensions:GetStartSeconds(Range) end
---@param Range FSequencerScriptingRange
---@return int32
function USequencerScriptingRangeExtensions:GetStartFrame(Range) end
---@param Range FSequencerScriptingRange
---@return float
function USequencerScriptingRangeExtensions:GetEndSeconds(Range) end
---@param Range FSequencerScriptingRange
---@return int32
function USequencerScriptingRangeExtensions:GetEndFrame(Range) end


