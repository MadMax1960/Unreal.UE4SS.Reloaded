---@meta

---@class APreviewWorldUpdater : AActor
---@field PreviewWorld UWorld
---@field CameraPosition FVector
---@field CameraOffset FVector
---@field CameraAngle FRotator
---@field CameraPosBoneName FString
---@field FOV float
---@field IsGazeMode boolean
---@field PointOfGazeOffset FVector
---@field GazeOffsetBoneName FString
---@field CameraTransform FTransform
---@field TargetActor TWeakObjectPtr<AActor>
---@field SceneCaptureActor TWeakObjectPtr<ASceneCapture2D>
---@field Niagaras TArray<UNiagaraComponent>
---@field OneShotEffect UNiagaraComponent
---@field SpawnPendingActorClass TSubclassOf<AActor>
---@field OnSetTargetActor FPreviewWorldUpdaterOnSetTargetActor
---@field bIsAntialias boolean
---@field bIsTAA boolean
---@field bIsToneCurves boolean
---@field bIsBloom boolean
---@field bIsMotionBlur boolean
---@field bIsExposure boolean
local APreviewWorldUpdater = {}

---@param ActorClass TSubclassOf<AActor>
---@return AActor
function APreviewWorldUpdater:SpawnAttachedActor(ActorClass) end
---@param ActorClass TSubclassOf<AActor>
---@param IsResetCamera boolean
---@return AActor
function APreviewWorldUpdater:SetTargetActor(ActorClass, IsResetCamera) end
---@param NewGazeOffsetBoneName FString
function APreviewWorldUpdater:SetGazeOffsetBoneName(NewGazeOffsetBoneName) end
---@param NewGazeOffset FVector
function APreviewWorldUpdater:SetGazeOffset(NewGazeOffset) end
---@param NewGazeMode boolean
function APreviewWorldUpdater:SetGazeMode(NewGazeMode) end
---@param NewFOV float
function APreviewWorldUpdater:SetFoV(NewFOV) end
---@param NewCameraTransform FTransform
function APreviewWorldUpdater:SetCameraTransform(NewCameraTransform) end
---@param NewCameraPosition FVector
function APreviewWorldUpdater:SetCameraPosition(NewCameraPosition) end
---@param NewCameraPosBoneName FString
function APreviewWorldUpdater:SetCameraPosBoneName(NewCameraPosBoneName) end
---@param NewCameraAngle FRotator
function APreviewWorldUpdater:SetCameraAngle(NewCameraAngle) end
---@param Actor AActor
function APreviewWorldUpdater:OnSetTargetActor__DelegateSignature(Actor) end
---@return AActor
function APreviewWorldUpdater:GetTargetActor() end
---@return ASceneCapture2D
function APreviewWorldUpdater:GetSceneCaptureActor() end
---@return UWorld
function APreviewWorldUpdater:GetPreviewWorld() end
function APreviewWorldUpdater:Cleanup() end


