---@meta

---@class FGrainTableEntry
---@field SampleIndex int32
---@field RPM float
local FGrainTableEntry = {}



---@class FMotoSynthRuntimeSettings
---@field bSynthToneEnabled boolean
---@field SynthToneVolume float
---@field SynthToneFilterFrequency float
---@field SynthOctaveShift int32
---@field bGranularEngineEnabled boolean
---@field GranularEngineVolume float
---@field GranularEnginePitchScale float
---@field NumSamplesToCrossfadeBetweenGrains int32
---@field NumGrainTableEntriesPerGrain int32
---@field GrainTableRandomOffsetForConstantRPMs int32
---@field GrainCrossfadeSamplesForConstantRPMs int32
---@field AccelerationSource UMotoSynthSource
---@field DecelerationSource UMotoSynthSource
---@field bStereoWidenerEnabled boolean
---@field StereoDelayMsec float
---@field StereoFeedback float
---@field StereoWidenerWetlevel float
---@field StereoWidenerDryLevel float
---@field StereoWidenerDelayRatio float
---@field bStereoWidenerFilterEnabled boolean
---@field StereoWidenerFilterFrequency float
---@field StereoWidenerFilterQ float
local FMotoSynthRuntimeSettings = {}



---@class UMotoSynthPreset : UObject
---@field Settings FMotoSynthRuntimeSettings
local UMotoSynthPreset = {}



---@class UMotoSynthSource : UObject
---@field bConvertTo8Bit boolean
---@field DownSampleFactor float
---@field RPMCurve FRuntimeFloatCurve
---@field SourceData TArray<float>
---@field SourceDataPCM TArray<int16>
---@field SourceSampleRate int32
---@field GrainTable TArray<FGrainTableEntry>
local UMotoSynthSource = {}



---@class USynthComponentMoto : USynthComponent
---@field MotoSynthPreset UMotoSynthPreset
---@field RPM float
local USynthComponentMoto = {}

---@param InSettings FMotoSynthRuntimeSettings
function USynthComponentMoto:SetSettings(InSettings) end
---@param InRPM float
---@param InTimeSec float
function USynthComponentMoto:SetRPM(InRPM, InTimeSec) end
---@return boolean
function USynthComponentMoto:IsEnabled() end
---@param OutMinRPM float
---@param OutMaxRPM float
function USynthComponentMoto:GetRPMRange(OutMinRPM, OutMaxRPM) end


