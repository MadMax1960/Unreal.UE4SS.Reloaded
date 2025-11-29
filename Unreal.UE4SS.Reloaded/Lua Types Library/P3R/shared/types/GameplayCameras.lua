---@meta

---@class FFOscillator
---@field Amplitude float
---@field Frequency float
---@field InitialOffset EInitialOscillatorOffset
---@field Waveform EOscillatorWaveform
local FFOscillator = {}



---@class FPerlinNoiseShaker
---@field Amplitude float
---@field Frequency float
local FPerlinNoiseShaker = {}



---@class FROscillator
---@field Pitch FFOscillator
---@field Yaw FFOscillator
---@field Roll FFOscillator
local FROscillator = {}



---@class FVOscillator
---@field X FFOscillator
---@field Y FFOscillator
---@field Z FFOscillator
local FVOscillator = {}



---@class FWaveOscillator
---@field Amplitude float
---@field Frequency float
---@field InitialOffsetType EInitialWaveOscillatorOffsetType
local FWaveOscillator = {}



---@class UCompositeCameraShakePattern : UCameraShakePattern
---@field ChildPatterns TArray<UCameraShakePattern>
local UCompositeCameraShakePattern = {}



---@class UConstantCameraShakePattern : USimpleCameraShakePattern
---@field LocationOffset FVector
---@field RotationOffset FRotator
local UConstantCameraShakePattern = {}



---@class UDefaultCameraShakeBase : UCameraShakeBase
local UDefaultCameraShakeBase = {}


---@class UMatineeCameraShake : UCameraShakeBase
---@field OscillationDuration float
---@field OscillationBlendInTime float
---@field OscillationBlendOutTime float
---@field RotOscillation FROscillator
---@field LocOscillation FVOscillator
---@field FOVOscillation FFOscillator
---@field AnimPlayRate float
---@field AnimScale float
---@field AnimBlendInTime float
---@field AnimBlendOutTime float
---@field RandomAnimSegmentDuration float
---@field Anim UCameraAnim
---@field AnimSequence UCameraAnimationSequence
---@field bRandomAnimSegment boolean
---@field OscillatorTimeRemaining float
---@field AnimInst UCameraAnimInst
---@field SequenceShakePattern USequenceCameraShakePattern
local UMatineeCameraShake = {}

---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf<UMatineeCameraShake>
---@param SourceComponent UCameraShakeSourceComponent
---@param Scale float
---@param PlaySpace ECameraShakePlaySpace
---@param UserPlaySpaceRot FRotator
---@return UMatineeCameraShake
function UMatineeCameraShake:StartMatineeCameraShakeFromSource(PlayerCameraManager, ShakeClass, SourceComponent, Scale, PlaySpace, UserPlaySpaceRot) end
---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf<UMatineeCameraShake>
---@param Scale float
---@param PlaySpace ECameraShakePlaySpace
---@param UserPlaySpaceRot FRotator
---@return UMatineeCameraShake
function UMatineeCameraShake:StartMatineeCameraShake(PlayerCameraManager, ShakeClass, Scale, PlaySpace, UserPlaySpaceRot) end
---@param bImmediately boolean
function UMatineeCameraShake:ReceiveStopShake(bImmediately) end
---@param Scale float
function UMatineeCameraShake:ReceivePlayShake(Scale) end
---@return boolean
function UMatineeCameraShake:ReceiveIsFinished() end
---@param DeltaTime float
---@param Alpha float
---@param POV FMinimalViewInfo
---@param ModifiedPOV FMinimalViewInfo
function UMatineeCameraShake:BlueprintUpdateCameraShake(DeltaTime, Alpha, POV, ModifiedPOV) end


---@class UMatineeCameraShakeFunctionLibrary : UBlueprintFunctionLibrary
local UMatineeCameraShakeFunctionLibrary = {}

---@param CameraShake UCameraShakeBase
---@return UMatineeCameraShake
function UMatineeCameraShakeFunctionLibrary:Conv_MatineeCameraShake(CameraShake) end


---@class UMatineeCameraShakePattern : UCameraShakePattern
local UMatineeCameraShakePattern = {}


---@class UMovieSceneMatineeCameraShakeEvaluator : UMovieSceneCameraShakeEvaluator
local UMovieSceneMatineeCameraShakeEvaluator = {}


---@class UPerlinNoiseCameraShakePattern : USimpleCameraShakePattern
---@field LocationAmplitudeMultiplier float
---@field LocationFrequencyMultiplier float
---@field X FPerlinNoiseShaker
---@field Y FPerlinNoiseShaker
---@field Z FPerlinNoiseShaker
---@field RotationAmplitudeMultiplier float
---@field RotationFrequencyMultiplier float
---@field Pitch FPerlinNoiseShaker
---@field Yaw FPerlinNoiseShaker
---@field Roll FPerlinNoiseShaker
---@field FOV FPerlinNoiseShaker
local UPerlinNoiseCameraShakePattern = {}



---@class USimpleCameraShakePattern : UCameraShakePattern
---@field Duration float
---@field BlendInTime float
---@field BlendOutTime float
local USimpleCameraShakePattern = {}



---@class UTestCameraShake : UCameraShakeBase
local UTestCameraShake = {}


---@class UWaveOscillatorCameraShakePattern : USimpleCameraShakePattern
---@field LocationAmplitudeMultiplier float
---@field LocationFrequencyMultiplier float
---@field X FWaveOscillator
---@field Y FWaveOscillator
---@field Z FWaveOscillator
---@field RotationAmplitudeMultiplier float
---@field RotationFrequencyMultiplier float
---@field Pitch FWaveOscillator
---@field Yaw FWaveOscillator
---@field Roll FWaveOscillator
---@field FOV FWaveOscillator
local UWaveOscillatorCameraShakePattern = {}



