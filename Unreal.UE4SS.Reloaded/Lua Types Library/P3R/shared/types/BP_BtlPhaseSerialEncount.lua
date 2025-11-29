---@meta

---@class ABP_BtlPhaseSerialEncount_C : ABP_BtlPhaseBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlCore UBtlCoreComponent
---@field ['LS Encount'] ULevelSequence
---@field ['LS Actor'] ALevelSequenceActor
---@field isLoadedEnemies boolean
---@field isFinishedSequence boolean
---@field isFinishedSummon boolean
---@field BtlMainConductor ABP_BtlMainConductor_C
---@field isSyncToEventCamera boolean
local ABP_BtlPhaseSerialEncount_C = {}

function ABP_BtlPhaseSerialEncount_C:SyncEventCamera() end
function ABP_BtlPhaseSerialEncount_C:CoordinateVisibility() end
---@param BtlCore UBtlCoreComponent
function ABP_BtlPhaseSerialEncount_C:SetSerialEncountParameter(BtlCore) end
---@param phase EBtlPhaseType
---@return ABtlPhase
function ABP_BtlPhaseSerialEncount_C:CreateNextPhase(phase) end
---@return boolean
function ABP_BtlPhaseSerialEncount_C:CheckProgressNextPhaseInBP() end
function ABP_BtlPhaseSerialEncount_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPhaseSerialEncount_C:ReceiveTick(DeltaSeconds) end
ABP_BtlPhaseSerialEncount_C['Has Finished Loading Enemies'] = function(self, ) end
ABP_BtlPhaseSerialEncount_C['On Play Camera til Finish Loading'] = function(self, ) end
function ABP_BtlPhaseSerialEncount_C:ReceiveDestroyed() end
ABP_BtlPhaseSerialEncount_C['Has Finished Serial Encout Sequence'] = function(self, ) end
ABP_BtlPhaseSerialEncount_C['On Summon Enemies'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPhaseSerialEncount_C:ExecuteUbergraph_BP_BtlPhaseSerialEncount(EntryPoint) end


