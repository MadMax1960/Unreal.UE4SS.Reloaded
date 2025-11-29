---@meta

---@class ABP_BtlAlloutController_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Env UBP_BtlEnvironment_C
---@field MainCharacter ABP_BtlCharacterBase_C
---@field HERO ABP_BtlCharacterBase_C
---@field PartyCharacters TArray<ABP_BtlCharacterBase_C>
---@field ['Has Finished Loading'] FBP_BtlAlloutController_CHas Finished Loading
---@field ['Has Finished Unloading'] FBP_BtlAlloutController_CHas Finished Unloading
---@field SequenceCommon TSoftObjectPtr<ULevelSequence>
---@field LoadedLevels boolean
---@field LoadedSequence boolean
---@field ['LS Start'] ULevelSequence
---@field ['Has Finished Startup Sequence'] FBP_BtlAlloutController_CHas Finished Startup Sequence
---@field ['LS Start Actor'] ALevelSequenceActor
---@field EventAssistant ABP_BtlEventAssistant_C
---@field SequenceToBattleEnd_A TArray<TSoftObjectPtr<ULevelSequence>>
---@field SequenceToBattleEnd_B TArray<TSoftObjectPtr<ULevelSequence>>
---@field ['LS Before Shuffle'] ULevelSequence
---@field ['LS After Shuffle'] ULevelSequence
---@field ['LS Before Shuffle Actor'] ALevelSequenceActor
---@field ['Has Finished Before Shuffle Sequence'] FBP_BtlAlloutController_CHas Finished Before Shuffle Sequence
---@field ['Has Finished After Shuffle Sequence'] FBP_BtlAlloutController_CHas Finished After Shuffle Sequence
---@field ['LS After Shuffle Actor'] ALevelSequenceActor
---@field AllowProceedShuffleSequence boolean
---@field LoadedStartLS boolean
---@field LoadedBeforeShuffleLS boolean
---@field LoadedAfterShuffleLS boolean
---@field LoadedFinalTex boolean
---@field AlloutSequenceTable UDataTable
---@field FinishTexActor ABP_BtlAlloutFinishActor_C
---@field LoadCharacterModels boolean
local ABP_BtlAlloutController_C = {}

function ABP_BtlAlloutController_C:DestroySequence() end
function ABP_BtlAlloutController_C:PlayVoiceRunIntoEnemy() end
function ABP_BtlAlloutController_C:SetupMembersForAllout() end
ABP_BtlAlloutController_C['Load Character Specific Model For Allout'] = function(self, ) end
---@param IsLoadEnded boolean
ABP_BtlAlloutController_C['Check Model Load Finished'] = function(self, IsLoadEnded) end
function ABP_BtlAlloutController_C:PlayAlloutFinish() end
---@param Enable boolean
function ABP_BtlAlloutController_C:SetupMembersEventMode(Enable) end
---@param Target ALevelSequenceActor
function ABP_BtlAlloutController_C:StopASequence(Target) end
function ABP_BtlAlloutController_C:StopAllSequence() end
---@param Start TSoftObjectPtr<ULevelSequence>
---@param BeforeShuffle TSoftObjectPtr<ULevelSequence>
---@param AfterShuffle TSoftObjectPtr<ULevelSequence>
function ABP_BtlAlloutController_C:ChoiceSequence(Start, BeforeShuffle, AfterShuffle) end
function ABP_BtlAlloutController_C:ClearAlloutAttack() end
function ABP_BtlAlloutController_C:AllocateMembers() end
function ABP_BtlAlloutController_C:Setup() end
function ABP_BtlAlloutController_C:PlayAllout3rdSequence() end
function ABP_BtlAlloutController_C:PlayAllout2ndSequence() end
function ABP_BtlAlloutController_C:PlayAlloutStartupSequence() end
---@param LevelName FName
function ABP_BtlAlloutController_C:GetAlloutLevelName(LevelName) end
---@param Loaded UObject
function ABP_BtlAlloutController_C:OnLoaded_A90C9119438CAE6B812937BD67180638(Loaded) end
---@param Loaded UObject
function ABP_BtlAlloutController_C:OnLoaded_B41915304C41D101349591ABD3C3600E(Loaded) end
---@param Loaded UObject
function ABP_BtlAlloutController_C:OnLoaded_8A46DB4444D35F946B17A2966A1BE30A(Loaded) end
ABP_BtlAlloutController_C['On Load Resource'] = function(self, ) end
ABP_BtlAlloutController_C['On Unload Resource'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Loading Level'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Loading Stuff'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Playing Start Seq'] = function(self, ) end
ABP_BtlAlloutController_C['On Finished Single Performance'] = function(self, ) end
ABP_BtlAlloutController_C['On Finished Sequence Before Shuffle'] = function(self, ) end
ABP_BtlAlloutController_C['On Finished Sequence After Shuffle'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Loading tex'] = function(self, ) end
function ABP_BtlAlloutController_C:ReceiveBeginPlay() end
---@param EndPlayReason EEndPlayReason::Type
function ABP_BtlAlloutController_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_BtlAlloutController_C:ExecuteUbergraph_BP_BtlAlloutController(EntryPoint) end
ABP_BtlAlloutController_C['Has Finished After Shuffle Sequence__DelegateSignature'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Before Shuffle Sequence__DelegateSignature'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Startup Sequence__DelegateSignature'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Unloading__DelegateSignature'] = function(self, ) end
ABP_BtlAlloutController_C['Has Finished Loading__DelegateSignature'] = function(self, ) end


