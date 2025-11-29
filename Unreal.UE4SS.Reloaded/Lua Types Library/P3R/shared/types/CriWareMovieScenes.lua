---@meta

---@class FMovieSceneAtomSectionTemplate : FMovieSceneEvalTemplate
---@field AtomSection UMovieSceneAtomSection
local FMovieSceneAtomSectionTemplate = {}



---@class FMovieSceneManaSectionParams
---@field AtomComponent UAtomComponent
---@field ManaSource UManaSource
---@field ManaTexture UManaTexture
---@field ManaPlayer UManaPlayer
---@field SectionStartFrame FFrameNumber
---@field SectionEndFrame FFrameNumber
---@field bLooping boolean
---@field StartFrameOffset FFrameNumber
local FMovieSceneManaSectionParams = {}



---@class FMovieSceneManaSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneManaSectionParams
local FMovieSceneManaSectionTemplate = {}



---@class UMovieSceneAtomSection : UMovieSceneSection
---@field Sound USoundAtomCue
---@field StartFrameOffset FFrameNumber
---@field SoundVolume FMovieSceneFloatChannel
---@field PitchMultiplier FMovieSceneFloatChannel
---@field AttachActorData FMovieSceneActorReferenceData
---@field ScalarParameterNamesAndCurves TArray<FScalarParameterNameAndCurve>
---@field bSuppressSubtitles boolean
---@field bOverrideAttenuation boolean
---@field AttenuationSettings USoundAttenuation
---@field bContinueSoundWhenSequenceIsEnd boolean
---@field AsrRackIDs TArray<int32>
---@field SelectorLabels TArray<FAtomSelectorParam>
---@field bLooping boolean
local UMovieSceneAtomSection = {}

---@param InStartOffset FFrameNumber
function UMovieSceneAtomSection:SetStartOffset(InStartOffset) end
---@return boolean
function UMovieSceneAtomSection:IsLooping() end
---@return FFrameNumber
function UMovieSceneAtomSection:GetStartOffset() end


---@class UMovieSceneAtomTrack : UMovieSceneNameableTrack
---@field AtomSections TArray<UMovieSceneSection>
local UMovieSceneAtomTrack = {}



---@class UMovieSceneManaSection : UMovieSceneSection
---@field ManaSource UManaSource
---@field bLooping boolean
---@field StartFrameOffset FFrameNumber
---@field ManaTexture UManaTexture
---@field AtomComponent UAtomComponent
---@field bUseExternalManaPlayer boolean
---@field ExternalManaPlayer UManaPlayer
local UMovieSceneManaSection = {}



---@class UMovieSceneManaTrack : UMovieSceneNameableTrack
---@field ManaSections TArray<UMovieSceneSection>
---@field SyncedAtomTrack TSoftObjectPtr<UMovieSceneAtomTrack>
local UMovieSceneManaTrack = {}



