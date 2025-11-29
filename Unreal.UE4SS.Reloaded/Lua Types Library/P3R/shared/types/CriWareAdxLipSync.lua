---@meta

---@class FCriLipsMorphTargetBlendAmountAsJapanese
---@field A float
---@field I float
---@field U float
---@field E float
---@field O float
local FCriLipsMorphTargetBlendAmountAsJapanese = {}



---@class FCriLipsMouthInfo
---@field LipWidth float
---@field LipHeight float
---@field TonguePosition float
---@field IsLipWidthReleased boolean
---@field IsLipHeightReleased boolean
---@field IsTonguePositionReleased boolean
local FCriLipsMouthInfo = {}



---@class ULipsAnalyzerBase : UObject
local ULipsAnalyzerBase = {}

---@param VolumeDb float
function ULipsAnalyzerBase:SetSilenceThreshold(VolumeDb) end
---@param SamplingRateHz int32
function ULipsAnalyzerBase:SetSamplingRate(SamplingRateHz) end
---@return boolean
function ULipsAnalyzerBase:IsAtSilence() end
---@param MaxInputSamplingRate int32
function ULipsAnalyzerBase:Init(MaxInputSamplingRate) end
---@return float
function ULipsAnalyzerBase:GetVolume() end
---@return float
function ULipsAnalyzerBase:GetSilenceThreshold() end
---@return FCriLipsMorphTargetBlendAmountAsJapanese
function ULipsAnalyzerBase:GetMorphTargetBlendAmountAsJapanese() end
---@return FCriLipsMouthInfo
function ULipsAnalyzerBase:GetInfoAtSilence() end
---@return FCriLipsMouthInfo
function ULipsAnalyzerBase:GetInfo() end


---@class ULipsAtomAnalyzer : ULipsAnalyzerBase
---@field AtomComponent UAtomComponent
local ULipsAtomAnalyzer = {}

function ULipsAtomAnalyzer:Detach() end
---@param InAtomComponent UAtomComponent
function ULipsAtomAnalyzer:Attach(InAtomComponent) end


