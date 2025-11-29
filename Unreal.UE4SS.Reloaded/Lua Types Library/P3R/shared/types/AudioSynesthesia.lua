---@meta

---@class UAudioSynesthesiaNRT : UAudioAnalyzerNRT
local UAudioSynesthesiaNRT = {}


---@class UAudioSynesthesiaNRTSettings : UAudioAnalyzerNRTSettings
local UAudioSynesthesiaNRTSettings = {}


---@class UConstantQNRT : UAudioSynesthesiaNRT
---@field Settings UConstantQNRTSettings
local UConstantQNRT = {}

---@param InSeconds float
---@param InChannel int32
---@param OutConstantQ TArray<float>
function UConstantQNRT:GetNormalizedChannelConstantQAtTime(InSeconds, InChannel, OutConstantQ) end
---@param InSeconds float
---@param InChannel int32
---@param OutConstantQ TArray<float>
function UConstantQNRT:GetChannelConstantQAtTime(InSeconds, InChannel, OutConstantQ) end


---@class UConstantQNRTSettings : UAudioSynesthesiaNRTSettings
---@field StartingFrequency float
---@field NumBands int32
---@field NumBandsPerOctave float
---@field AnalysisPeriod float
---@field bDownmixToMono boolean
---@field FFTSize EConstantQFFTSizeEnum
---@field WindowType EFFTWindowType
---@field SpectrumType EAudioSpectrumType
---@field BandWidthStretch float
---@field CQTNormalization EConstantQNormalizationEnum
---@field NoiseFloorDb float
local UConstantQNRTSettings = {}



---@class ULoudnessNRT : UAudioSynesthesiaNRT
---@field Settings ULoudnessNRTSettings
local ULoudnessNRT = {}

---@param InSeconds float
---@param OutLoudness float
function ULoudnessNRT:GetNormalizedLoudnessAtTime(InSeconds, OutLoudness) end
---@param InSeconds float
---@param InChannel int32
---@param OutLoudness float
function ULoudnessNRT:GetNormalizedChannelLoudnessAtTime(InSeconds, InChannel, OutLoudness) end
---@param InSeconds float
---@param OutLoudness float
function ULoudnessNRT:GetLoudnessAtTime(InSeconds, OutLoudness) end
---@param InSeconds float
---@param InChannel int32
---@param OutLoudness float
function ULoudnessNRT:GetChannelLoudnessAtTime(InSeconds, InChannel, OutLoudness) end


---@class ULoudnessNRTSettings : UAudioSynesthesiaNRTSettings
---@field AnalysisPeriod float
---@field MinimumFrequency float
---@field MaximumFrequency float
---@field CurveType ELoudnessNRTCurveTypeEnum
---@field NoiseFloorDb float
local ULoudnessNRTSettings = {}



---@class UOnsetNRT : UAudioSynesthesiaNRT
---@field Settings UOnsetNRTSettings
local UOnsetNRT = {}

---@param InStartSeconds float
---@param InEndSeconds float
---@param InChannel int32
---@param OutOnsetTimestamps TArray<float>
---@param OutOnsetStrengths TArray<float>
function UOnsetNRT:GetNormalizedChannelOnsetsBetweenTimes(InStartSeconds, InEndSeconds, InChannel, OutOnsetTimestamps, OutOnsetStrengths) end
---@param InStartSeconds float
---@param InEndSeconds float
---@param InChannel int32
---@param OutOnsetTimestamps TArray<float>
---@param OutOnsetStrengths TArray<float>
function UOnsetNRT:GetChannelOnsetsBetweenTimes(InStartSeconds, InEndSeconds, InChannel, OutOnsetTimestamps, OutOnsetStrengths) end


---@class UOnsetNRTSettings : UAudioSynesthesiaNRTSettings
---@field bDownmixToMono boolean
---@field GranularityInSeconds float
---@field Sensitivity float
---@field MinimumFrequency float
---@field MaximumFrequency float
local UOnsetNRTSettings = {}



