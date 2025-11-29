---@meta

---@class ABP_BtlShadowBase_C : ABP_BtlCharacterBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShadowCharaBP UChildActorComponent
---@field Timeline_HideCurrentToComplete_Power_2F3904D947272065EFD0D09B8DC45827 float
---@field Timeline_HideCurrentToComplete__Direction_2F3904D947272065EFD0D09B8DC45827 ETimelineDirection::Type
---@field Timeline_HideCurrentToComplete UTimelineComponent
---@field TL_RunAway_RunVec_2234AC0448FCBB8630FFA68B847A99FF FVector
---@field TL_RunAway__Direction_2234AC0448FCBB8630FFA68B847A99FF ETimelineDirection::Type
---@field TL_RunAway UTimelineComponent
---@field TL_EscapeFadeout_Ratio_97058E864087A87725A7D7AB82EE81F9 float
---@field TL_EscapeFadeout__Direction_97058E864087A87725A7D7AB82EE81F9 ETimelineDirection::Type
---@field TL_EscapeFadeout UTimelineComponent
---@field Timeline_0_Power_51DF8F87491797F6ADF13893774D68BA float
---@field Timeline_0__Direction_51DF8F87491797F6ADF13893774D68BA ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Timeline_Hide_Power_6F2EFCA74A2F8947D54C8D8935A5202B float
---@field Timeline_Hide__Direction_6F2EFCA74A2F8947D54C8D8935A5202B ETimelineDirection::Type
---@field Timeline_Hide UTimelineComponent
---@field Timeline_DeadPerformance_Power_8F80E7DB4B27129A155BFDBA21F3A200 float
---@field Timeline_DeadPerformance__Direction_8F80E7DB4B27129A155BFDBA21F3A200 ETimelineDirection::Type
---@field Timeline_DeadPerformance UTimelineComponent
---@field ['Size Category'] EBtlSizeCategoryType
---@field EnemyCharaBP ABP_ShadowBase_C
---@field CharacterLoaded boolean
---@field EnemyMID TArray<UMaterialInstanceDynamic>
---@field CrvEnemyDead UCurveFloat
---@field Hiding boolean
---@field StrongHiding boolean
---@field CrvEnemyDeadShort UCurveFloat
---@field DeadEffect UNiagaraComponent
---@field Opacity float
---@field ['LS Cut1'] ULevelSequence
---@field ['Chant Seq Actor'] ALevelSequenceActor
---@field ['LS Skill Shot EX'] ULevelSequence
---@field SkillShotCamActor ALevelSequenceActor
---@field isEmerge boolean
---@field finishedSummonFadein boolean
local ABP_BtlShadowBase_C = {}

function ABP_BtlShadowBase_C:MarkAsVanished() end
function ABP_BtlShadowBase_C:SaveLODParam() end
function ABP_BtlShadowBase_C:RestoreLOD() end
function ABP_BtlShadowBase_C:DisableLOD() end
function ABP_BtlShadowBase_C:TellEnemySpawnedToFadeManager() end
---@param Scale FVector
function ABP_BtlShadowBase_C:GetDeadFloorEffectScale(Scale) end
---@param SummonEmergeEffect TSoftObjectPtr<UNiagaraSystem>
function ABP_BtlShadowBase_C:GetSummonEmergeEffect(SummonEmergeEffect) end
---@param Enable boolean
function ABP_BtlShadowBase_C:SetupEventAnimation(Enable) end
function ABP_BtlShadowBase_C:PlaySkillShotCam() end
---@param Opacity float
function ABP_BtlShadowBase_C:GetOpacity(Opacity) end
---@param Visible boolean
---@param KeepAnim boolean
function ABP_BtlShadowBase_C:SetVisible(Visible, KeepAnim) end
---@param Opacity float
function ABP_BtlShadowBase_C:SetCharacterEffectOpacity(Opacity) end
---@param InTime float
---@param ShortMode boolean
---@return float
function ABP_BtlShadowBase_C:GetDeadCurveValue(InTime, ShortMode) end
---@param MaterialInstance TArray<UMaterialInstanceDynamic>
function ABP_BtlShadowBase_C:GetMaterials(MaterialInstance) end
---@param Color FColor
---@param power float
ABP_BtlShadowBase_C['Set Color'] = function(self, Color, power) end
ABP_BtlShadowBase_C['Shift Summon Skill Phase'] = function(self, ) end
---@param Scale FVector
function ABP_BtlShadowBase_C:GetCharacterScale(Scale) end
---@param power float
---@param ControlWithVisible boolean
function ABP_BtlShadowBase_C:SetOpacity(power, ControlWithVisible) end
ABP_BtlShadowBase_C['Finalize Skill Phase'] = function(self, ) end
function ABP_BtlShadowBase_C:PlaySkillEnchantAnim() end
ABP_BtlShadowBase_C['Shift Skill Phase'] = function(self, ) end
---@param IsDown boolean
function ABP_BtlShadowBase_C:BeginDeadPhase(IsDown) end
---@param power float
function ABP_BtlShadowBase_C:SetDeadBubblePower(power) end
function ABP_BtlShadowBase_C:CreateMID() end
---@param attack FName
function ABP_BtlShadowBase_C:GetAttackMontageName(attack) end
---@return boolean
function ABP_BtlShadowBase_C:CheckReadyCharacterBP() end
---@param SkeletalMesh USkeletalMeshComponent
function ABP_BtlShadowBase_C:GetSkeletalMesh(SkeletalMesh) end
---@param Showing_Actor AActor
function ABP_BtlShadowBase_C:GetShowActor(Showing_Actor) end
---@param Scene USceneComponent
function ABP_BtlShadowBase_C:GetCharacterRoot(Scene) end
function ABP_BtlShadowBase_C:CreateCharacter() end
---@return EBtlSizeCategoryType
function ABP_BtlShadowBase_C:GetSizeCategory() end
function ABP_BtlShadowBase_C:UserConstructionScript() end
function ABP_BtlShadowBase_C:TL_EscapeFadeout__FinishedFunc() end
function ABP_BtlShadowBase_C:TL_EscapeFadeout__UpdateFunc() end
function ABP_BtlShadowBase_C:TL_RunAway__FinishedFunc() end
function ABP_BtlShadowBase_C:TL_RunAway__UpdateFunc() end
function ABP_BtlShadowBase_C:Timeline_DeadPerformance__FinishedFunc() end
function ABP_BtlShadowBase_C:Timeline_DeadPerformance__UpdateFunc() end
function ABP_BtlShadowBase_C:Timeline_Hide__FinishedFunc() end
function ABP_BtlShadowBase_C:Timeline_Hide__UpdateFunc() end
function ABP_BtlShadowBase_C:Timeline_0__FinishedFunc() end
function ABP_BtlShadowBase_C:Timeline_0__UpdateFunc() end
function ABP_BtlShadowBase_C:Timeline_HideCurrentToComplete__FinishedFunc() end
function ABP_BtlShadowBase_C:Timeline_HideCurrentToComplete__UpdateFunc() end
---@param Loaded UObject
function ABP_BtlShadowBase_C:OnLoaded_323D325F4FDCD44EFD2EFBB62B30685F(Loaded) end
ABP_BtlShadowBase_C['On Character Escaping'] = function(self, ) end
ABP_BtlShadowBase_C['Has Finished Skill Load'] = function(self, ) end
ABP_BtlShadowBase_C['Has Finished Summon Data Load'] = function(self, ) end
ABP_BtlShadowBase_C['Has Notified Play Summon Camera '] = function(self, ) end
ABP_BtlShadowBase_C['Has Notified Summon'] = function(self, ) end
ABP_BtlShadowBase_C['On Summon Emerge'] = function(self, ) end
function ABP_BtlShadowBase_C:PlayEnemySummonEffect() end
ABP_BtlShadowBase_C['On Play Chant Camera Sequence'] = function(self, ) end
---@param EmergeIndex int32
ABP_BtlShadowBase_C['On Summon Emerge With Index'] = function(self, EmergeIndex) end
function ABP_BtlShadowBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlShadowBase_C:ReceiveTick(DeltaSeconds) end
---@param initialHiding boolean
function ABP_BtlShadowBase_C:SpawnCharacterBP(initialHiding) end
function ABP_BtlShadowBase_C:ReceiveDestroyed() end
---@param ShortMode boolean
ABP_BtlShadowBase_C['On Play Dead Performance'] = function(self, ShortMode) end
---@param CriticalHindrance boolean
---@param Rapid boolean
---@param HalfMode boolean
function ABP_BtlShadowBase_C:HideForOtherAction(CriticalHindrance, Rapid, HalfMode) end
function ABP_BtlShadowBase_C:ShowFromHiding() end
ABP_BtlShadowBase_C['Show Summon Fadein'] = function(self, ) end
ABP_BtlShadowBase_C['On Ready to Destroy'] = function(self, ) end
---@param IsDown boolean
ABP_BtlShadowBase_C['On Play Dead Effect'] = function(self, IsDown) end
ABP_BtlShadowBase_C['On Emerge Shadow'] = function(self, ) end
---@param Effect UNiagaraSystem
ABP_BtlShadowBase_C['On Emerge Effect Play'] = function(self, Effect) end
ABP_BtlShadowBase_C['On Show from Hiding From Fortune Invisible Mode'] = function(self, ) end
ABP_BtlShadowBase_C['On Force Finalize Summon Fadein'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlShadowBase_C:ExecuteUbergraph_BP_BtlShadowBase(EntryPoint) end


