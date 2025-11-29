---@meta

---@class ABP_BtlPhaseDead_C : ABP_BtlPhaseBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReadyForExit boolean
---@field ElapsedTime float
---@field DeadSequence ULevelSequencePlayer
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field BtlCore UBtlCoreComponent
---@field ['LS Actor'] ALevelSequenceActor
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field ['LS After Dicision Retry'] ALevelSequenceActor
---@field isRetry boolean
---@field EventAssistant ABP_BtlEventAssistant_C
---@field BtlGui UBP_BtlGuiComponent_C
local ABP_BtlPhaseDead_C = {}

function ABP_BtlPhaseDead_C:CoordinateFogCenter() end
function ABP_BtlPhaseDead_C:AllocateHeroToInvoke() end
function ABP_BtlPhaseDead_C:HideOtherCharacters() end
function ABP_BtlPhaseDead_C:HideAllEnemies() end
---@param isRetry boolean
function ABP_BtlPhaseDead_C:InitEvent(isRetry) end
---@param Btl_CameraManager UBP_BtlCameraManagerComponent_C
function ABP_BtlPhaseDead_C:Setup(Btl_CameraManager) end
---@return boolean
function ABP_BtlPhaseDead_C:CheckProgressNextPhaseInBP() end
---@return ABtlPhase
function ABP_BtlPhaseDead_C:GetNextPhaseInBP() end
function ABP_BtlPhaseDead_C:UserConstructionScript() end
---@param Loaded UObject
function ABP_BtlPhaseDead_C:OnLoaded_BFD3285142E23A9177B8069FB03A6A4A(Loaded) end
---@param Loaded UObject
function ABP_BtlPhaseDead_C:OnLoaded_AF8919F940C1409C2B2923937150EE2F(Loaded) end
---@param Loaded UObject
function ABP_BtlPhaseDead_C:OnLoaded_F299919840F6E357EA79F088AFEB262D(Loaded) end
---@param Loaded UObject
function ABP_BtlPhaseDead_C:OnLoaded_5A6DB0FE4E63032DCE533BA4AC55607D(Loaded) end
function ABP_BtlPhaseDead_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPhaseDead_C:ReceiveTick(DeltaSeconds) end
ABP_BtlPhaseDead_C['Has Finished Finale Camera'] = function(self, ) end
function ABP_BtlPhaseDead_C:ReceiveDestroyed() end
ABP_BtlPhaseDead_C['On Play Sequence'] = function(self, ) end
ABP_BtlPhaseDead_C['Has Finished Retry LS'] = function(self, ) end
ABP_BtlPhaseDead_C['Has Finished Retry Selection'] = function(self, ) end
ABP_BtlPhaseDead_C['Has Finished LS ahead of Retry Selection'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPhaseDead_C:ExecuteUbergraph_BP_BtlPhaseDead(EntryPoint) end


