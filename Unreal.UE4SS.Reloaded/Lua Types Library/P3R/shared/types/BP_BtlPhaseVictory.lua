---@meta

---@class ABP_BtlPhaseVictory_C : ABP_BtlPhaseBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReadyForExit boolean
---@field ElapsedTime float
---@field FinaleCamera ULevelSequencePlayer
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field ['LS Actor'] ALevelSequenceActor
---@field EventAssistant ABP_BtlEventAssistant_C
---@field BtlCore UBtlCoreComponent
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field BtlEvent UBP_BtlEvent_C
---@field SubLocationList TMap<int32, ABtlActor>
---@field DebugList TArray<int32>
---@field LS boolean
---@field SequenceTable UDataTable
---@field Table FFBtlResultSequence
---@field SequenceToPlay ULevelSequence
---@field SequenceMain ULevelSequence
---@field ['LS Actor Master'] ALevelSequenceActor
---@field IsRequestedBGMFadeout boolean
---@field isResultStart boolean
---@field ['On Request Victory Result'] FBP_BtlPhaseVictory_COn Request Victory Result
---@field OnRequestSkipResult FBP_BtlPhaseVictory_COnRequestSkipResult
---@field OnRequestReleaseResource FBP_BtlPhaseVictory_COnRequestReleaseResource
local ABP_BtlPhaseVictory_C = {}

function ABP_BtlPhaseVictory_C:HideOtherPlayers() end
---@param Chara ABtlActor
---@param LocationNum int32
function ABP_BtlPhaseVictory_C:LotStandIndex(Chara, LocationNum) end
function ABP_BtlPhaseVictory_C:HideAllEnemies() end
ABP_BtlPhaseVictory_C['Setup All Members Visibility'] = function(self, ) end
function ABP_BtlPhaseVictory_C:AllocateMembers() end
function ABP_BtlPhaseVictory_C:Setup() end
---@return boolean
function ABP_BtlPhaseVictory_C:CheckProgressNextPhaseInBP() end
---@return ABtlPhase
function ABP_BtlPhaseVictory_C:GetNextPhaseInBP() end
function ABP_BtlPhaseVictory_C:UserConstructionScript() end
---@param Loaded UObject
function ABP_BtlPhaseVictory_C:OnLoaded_3CB60A6146F2A8322AC92DA1BE9C51E4(Loaded) end
---@param Loaded UObject
function ABP_BtlPhaseVictory_C:OnLoaded_D2CA3309431FABD600D3B0B1F69A7505(Loaded) end
function ABP_BtlPhaseVictory_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPhaseVictory_C:ReceiveTick(DeltaSeconds) end
ABP_BtlPhaseVictory_C['Has Finished Finale Camera'] = function(self, ) end
function ABP_BtlPhaseVictory_C:ReceiveDestroyed() end
ABP_BtlPhaseVictory_C['On Fadeout BGM'] = function(self, ) end
ABP_BtlPhaseVictory_C['Has Finished Battle End Event'] = function(self, ) end
ABP_BtlPhaseVictory_C['On Progress Next'] = function(self, ) end
function ABP_BtlPhaseVictory_C:Init() end
ABP_BtlPhaseVictory_C['Request Result'] = function(self, ) end
function ABP_BtlPhaseVictory_C:StartPhaseInBP() end
---@param EntryPoint int32
function ABP_BtlPhaseVictory_C:ExecuteUbergraph_BP_BtlPhaseVictory(EntryPoint) end
function ABP_BtlPhaseVictory_C:OnRequestReleaseResource__DelegateSignature() end
function ABP_BtlPhaseVictory_C:OnRequestSkipResult__DelegateSignature() end
ABP_BtlPhaseVictory_C['On Request Victory Result__DelegateSignature'] = function(self, ) end


