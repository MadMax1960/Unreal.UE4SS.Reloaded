---@meta

---@class ABP_BtlTheurgiaController_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field SeqTable UDataTable
---@field HasFinishedLoading FBP_BtlTheurgiaController_CHasFinishedLoading
---@field SeqToPlay ULevelSequence
---@field SeqToPlaySound ULevelSequence
---@field ['LS Actor'] ALevelSequenceActor
---@field ['LS Actor Sound'] ALevelSequenceActor
---@field skillId int32
---@field Item FFBtlTheurgiaSeq
---@field EventAssistant ABP_BtlEventAssistant_C
---@field MainCharacter ABP_BtlCharacterBase_C
---@field HasFinishedSequence FBP_BtlTheurgiaController_CHasFinishedSequence
---@field BtlCore UBtlCoreComponent
---@field Enchanter ABP_BtlCharacterBase_C
---@field OffsetTable UDataTable
---@field OriginalEnemyLocation FVector
---@field OriginalEnemyScale FVector
---@field IsTurningEnemy boolean
---@field IsLoadedSeq boolean
---@field IsLoadedSoundSeq boolean
local ABP_BtlTheurgiaController_C = {}

---@param InRotate FRotator
---@param AdjustedRotate FRotator
function ABP_BtlTheurgiaController_C:AdjustEnemyTeammatesRotate(InRotate, AdjustedRotate) end
function ABP_BtlTheurgiaController_C:RestoreCharacter() end
function ABP_BtlTheurgiaController_C:RestoreEnemy() end
function ABP_BtlTheurgiaController_C:TurningCharacter() end
function ABP_BtlTheurgiaController_C:SetEquipVisible() end
---@param SequenceToPlay TSoftObjectPtr<ULevelSequence>
ABP_BtlTheurgiaController_C['Choice Seq to Play'] = function(self, SequenceToPlay) end
function ABP_BtlTheurgiaController_C:SetupTheurgiaSkillPerformance() end
function ABP_BtlTheurgiaController_C:RestoreBGM() end
function ABP_BtlTheurgiaController_C:SetupBGM() end
function ABP_BtlTheurgiaController_C:RestoreTheurgia() end
function ABP_BtlTheurgiaController_C:RestorePersona() end
function ABP_BtlTheurgiaController_C:TurnigPersona() end
function ABP_BtlTheurgiaController_C:LocateStartPosition() end
---@param XOffset float
---@param OutTrans FTransform
function ABP_BtlTheurgiaController_C:GetRootTrans(XOffset, OutTrans) end
function ABP_BtlTheurgiaController_C:HideOtherCharacters() end
function ABP_BtlTheurgiaController_C:Clear() end
function ABP_BtlTheurgiaController_C:PlayTheurgia() end
function ABP_BtlTheurgiaController_C:AllocateMembers() end
function ABP_BtlTheurgiaController_C:Setup() end
---@param Loaded UObject
function ABP_BtlTheurgiaController_C:OnLoaded_48C72DAE4B6AFD3C5C57A5A22F41F554(Loaded) end
---@param Loaded UObject
function ABP_BtlTheurgiaController_C:OnLoaded_419743374F851E2A1AB942B6DA4C7D5F(Loaded) end
function ABP_BtlTheurgiaController_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlTheurgiaController_C:ReceiveTick(DeltaSeconds) end
ABP_BtlTheurgiaController_C['On Load Resource'] = function(self, ) end
ABP_BtlTheurgiaController_C['Has Finished Sequence'] = function(self, ) end
ABP_BtlTheurgiaController_C['On Play Sequence'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlTheurgiaController_C:ExecuteUbergraph_BP_BtlTheurgiaController(EntryPoint) end
function ABP_BtlTheurgiaController_C:HasFinishedSequence__DelegateSignature() end
function ABP_BtlTheurgiaController_C:HasFinishedLoading__DelegateSignature() end


