---@meta

---@class ABP_BtlPhaseResult_C : ABtlPhaseResult
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field BtlEnviroment UBP_BtlEnvironment_C
---@field BtlEvent UBP_BtlEvent_C
---@field Core UBtlCoreComponent
local ABP_BtlPhaseResult_C = {}

---@return boolean
function ABP_BtlPhaseResult_C:CheckProgressNextPhaseInBP() end
---@return ABtlPhase
function ABP_BtlPhaseResult_C:GetNextPhaseInBP() end
---@param CameraManager UBP_BtlCameraManagerComponent_C
---@param BtlCore UBtlCoreComponent
---@param enviroment UBP_BtlEnvironment_C
---@param Event UBP_BtlEvent_C
function ABP_BtlPhaseResult_C:SetVictoryParameter(CameraManager, BtlCore, enviroment, Event) end
function ABP_BtlPhaseResult_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPhaseResult_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlPhaseResult_C:CreatePhaseVictory() end
ABP_BtlPhaseResult_C['OnRequestSkipResult_イベント_0'] = function(self, ) end
ABP_BtlPhaseResult_C['OnRequestReleaseResource_イベント_0'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPhaseResult_C:ExecuteUbergraph_BP_BtlPhaseResult(EntryPoint) end


