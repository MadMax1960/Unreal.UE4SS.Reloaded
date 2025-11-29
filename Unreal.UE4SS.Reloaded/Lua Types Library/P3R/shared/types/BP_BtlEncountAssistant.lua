---@meta

---@class ABP_BtlEncountAssistant_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field BtlCore UBtlCoreComponent
---@field ['Level Sequence Actor'] ALevelSequenceActor
---@field ['Level Sequence'] ULevelSequence
---@field ['Visibility Based Anim Tick Option'] EVisibilityBasedAnimTickOption
---@field OnSequenceEnd FBP_BtlEncountAssistant_COnSequenceEnd
---@field OnSequenceEvent1 FBP_BtlEncountAssistant_COnSequenceEvent1
---@field Binding FMovieSceneObjectBindingID
---@field isWaitForEnd boolean
---@field isEndSequence boolean
---@field isReadyToEndFromWaitMode boolean
---@field SavingCurrentCamera AActor
---@field OnSequenceEvent2 FBP_BtlEncountAssistant_COnSequenceEvent2
local ABP_BtlEncountAssistant_C = {}

function ABP_BtlEncountAssistant_C:ReflectBattleCamera() end
function ABP_BtlEncountAssistant_C:CollectWhenBattleCamera() end
function ABP_BtlEncountAssistant_C:EndSequence() end
function ABP_BtlEncountAssistant_C:HeroRunStop() end
function ABP_BtlEncountAssistant_C:RequestSummonEnemy() end
---@param BtlCore UBtlCoreComponent
function ABP_BtlEncountAssistant_C:StartSequence(BtlCore) end
function ABP_BtlEncountAssistant_C:RequestSequenceEvent1() end
---@param BtlCore UBtlCoreComponent
function ABP_BtlEncountAssistant_C:StartFirstSequence(BtlCore) end
---@param BtlCore UBtlCoreComponent
function ABP_BtlEncountAssistant_C:StartChanceSequence(BtlCore) end
---@param CueId int32
function ABP_BtlEncountAssistant_C:PlaySE(CueId) end
ABP_BtlEncountAssistant_C['Has Finished Enemy Spawn'] = function(self, ) end
function ABP_BtlEncountAssistant_C:RequestSequenceEvent2() end
function ABP_BtlEncountAssistant_C:ActorDestroyed() end
function ABP_BtlEncountAssistant_C:SequenceDestroy() end
---@param EntryPoint int32
function ABP_BtlEncountAssistant_C:ExecuteUbergraph_BP_BtlEncountAssistant(EntryPoint) end
function ABP_BtlEncountAssistant_C:OnSequenceEvent2__DelegateSignature() end
function ABP_BtlEncountAssistant_C:OnSequenceEvent1__DelegateSignature() end
function ABP_BtlEncountAssistant_C:OnSequenceEnd__DelegateSignature() end


