---@meta

---@class ACameraRig_Crane : AActor
---@field CranePitch float
---@field CraneYaw float
---@field CraneArmLength float
---@field bLockMountPitch boolean
---@field bLockMountYaw boolean
---@field TransformComponent USceneComponent
---@field CraneYawControl USceneComponent
---@field CranePitchControl USceneComponent
---@field CraneCameraMount USceneComponent
local ACameraRig_Crane = {}



---@class ACameraRig_Rail : AActor
---@field CurrentPositionOnRail float
---@field bLockOrientationToRail boolean
---@field TransformComponent USceneComponent
---@field RailSplineComponent USplineComponent
---@field RailCameraMount USceneComponent
local ACameraRig_Rail = {}

---@return USplineComponent
function ACameraRig_Rail:GetRailSplineComponent() end


---@class ACineCameraActor : ACameraActor
---@field LookatTrackingSettings FCameraLookatTrackingSettings
local ACineCameraActor = {}

---@return UCineCameraComponent
function ACineCameraActor:GetCineCameraComponent() end


---@class FCameraFilmbackSettings
---@field SensorWidth float
---@field SensorHeight float
---@field SensorAspectRatio float
local FCameraFilmbackSettings = {}



---@class FCameraFocusSettings
---@field FocusMethod ECameraFocusMethod
---@field ManualFocusDistance float
---@field TrackingFocusSettings FCameraTrackingFocusSettings
---@field bDrawDebugFocusPlane boolean
---@field DebugFocusPlaneColor FColor
---@field bSmoothFocusChanges boolean
---@field FocusSmoothingInterpSpeed float
---@field FocusOffset float
local FCameraFocusSettings = {}



---@class FCameraLensSettings
---@field MinFocalLength float
---@field MaxFocalLength float
---@field MinFStop float
---@field MaxFStop float
---@field MinimumFocusDistance float
---@field DiaphragmBladeCount int32
local FCameraLensSettings = {}



---@class FCameraLookatTrackingSettings
---@field bEnableLookAtTracking boolean
---@field bDrawDebugLookAtTrackingPosition boolean
---@field LookAtTrackingInterpSpeed float
---@field ActorToTrack TSoftObjectPtr<AActor>
---@field RelativeOffset FVector
---@field bAllowRoll boolean
local FCameraLookatTrackingSettings = {}



---@class FCameraTrackingFocusSettings
---@field ActorToTrack TSoftObjectPtr<AActor>
---@field RelativeOffset FVector
---@field bDrawDebugTrackingFocusPoint boolean
local FCameraTrackingFocusSettings = {}



---@class FNamedFilmbackPreset
---@field Name FString
---@field FilmbackSettings FCameraFilmbackSettings
local FNamedFilmbackPreset = {}



---@class FNamedLensPreset
---@field Name FString
---@field LensSettings FCameraLensSettings
local FNamedLensPreset = {}



---@class UCineCameraComponent : UCameraComponent
---@field FilmbackSettings FCameraFilmbackSettings
---@field Filmback FCameraFilmbackSettings
---@field LensSettings FCameraLensSettings
---@field FocusSettings FCameraFocusSettings
---@field CurrentFocalLength float
---@field CurrentAperture float
---@field CurrentFocusDistance float
---@field FilmbackPresets TArray<FNamedFilmbackPreset>
---@field LensPresets TArray<FNamedLensPreset>
---@field DefaultFilmbackPresetName FString
---@field DefaultFilmbackPreset FString
---@field DefaultLensPresetName FString
---@field DefaultLensFocalLength float
---@field DefaultLensFStop float
local UCineCameraComponent = {}

---@param InPresetName FString
function UCineCameraComponent:SetLensPresetByName(InPresetName) end
---@param InPresetName FString
function UCineCameraComponent:SetFilmbackPresetByName(InPresetName) end
---@param InFocalLength float
function UCineCameraComponent:SetCurrentFocalLength(InFocalLength) end
---@return float
function UCineCameraComponent:GetVerticalFieldOfView() end
---@return TArray<FNamedLensPreset>
function UCineCameraComponent:GetLensPresetsCopy() end
---@return FString
function UCineCameraComponent:GetLensPresetName() end
---@return float
function UCineCameraComponent:GetHorizontalFieldOfView() end
---@return TArray<FNamedFilmbackPreset>
function UCineCameraComponent:GetFilmbackPresetsCopy() end
---@return FString
function UCineCameraComponent:GetFilmbackPresetName() end
---@return FString
function UCineCameraComponent:GetDefaultFilmbackPresetName() end


