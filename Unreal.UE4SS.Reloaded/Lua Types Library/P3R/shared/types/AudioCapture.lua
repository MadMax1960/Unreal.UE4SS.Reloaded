---@meta

---@class FAudioCaptureDeviceInfo
---@field DeviceName FName
---@field NumInputChannels int32
---@field SampleRate int32
local FAudioCaptureDeviceInfo = {}



---@class UAudioCapture : UAudioGenerator
local UAudioCapture = {}

function UAudioCapture:StopCapturingAudio() end
function UAudioCapture:StartCapturingAudio() end
---@return boolean
function UAudioCapture:IsCapturingAudio() end
---@param OutInfo FAudioCaptureDeviceInfo
---@return boolean
function UAudioCapture:GetAudioCaptureDeviceInfo(OutInfo) end


---@class UAudioCaptureComponent : USynthComponent
---@field JitterLatencyFrames int32
local UAudioCaptureComponent = {}



---@class UAudioCaptureFunctionLibrary : UBlueprintFunctionLibrary
local UAudioCaptureFunctionLibrary = {}

---@return UAudioCapture
function UAudioCaptureFunctionLibrary:CreateAudioCapture() end


