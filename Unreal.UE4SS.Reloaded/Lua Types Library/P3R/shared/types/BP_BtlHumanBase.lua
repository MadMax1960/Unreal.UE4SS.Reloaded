---@meta

---@class ABP_BtlHumanBase_C : ABP_BtlCharacterBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChildActorSummonGun UChildActorComponent
---@field Character_Hiding_Power_30D42FCD4CBBEB04AE6ADDA092F52FA9 float
---@field Character_Hiding__Direction_30D42FCD4CBBEB04AE6ADDA092F52FA9 ETimelineDirection::Type
---@field ['Character Hiding'] UTimelineComponent
---@field EscapeFadeOut_Ratio_0D48F6BF4389BDD8DDD64E857F7B7FD9 float
---@field EscapeFadeOut__Direction_0D48F6BF4389BDD8DDD64E857F7B7FD9 ETimelineDirection::Type
---@field EscapeFadeOut UTimelineComponent
---@field ['Command Sequence Actor'] ALevelSequenceActor
---@field ['Perfomance Sequence Ator'] ALevelSequenceActor
---@field CharacterLoading boolean
---@field CharacterLoaded boolean
---@field SummonGun ABP_BtlSummonGun_C
---@field SummonEffect UNiagaraComponent
---@field ['Summon Camera'] ALevelSequenceActor
---@field SceneAnimMontage TSoftObjectPtr<UAnimMontage>
---@field CostumeID int32
---@field HumanMID TArray<UMaterialInstanceDynamic>
---@field LoadedShiftSeq boolean
---@field LoadedShiftStuff boolean
---@field ['LS Summon Camera'] ULevelSequence
---@field TheurgiaController ABP_BtlTheurgiaController_C
---@field TheurgiaStuffLoaded boolean
---@field TheurgiaPersonaLoaded boolean
---@field ['Initial Visibility Based Anim Tick Option'] EVisibilityBasedAnimTickOption
---@field GunAttachSocket FName
---@field TakeoverCameraActor ALevelSequenceActor
---@field LoadedShiftSeqA boolean
---@field LoadedShiftSeqB boolean
---@field ['LS Critical Camera'] ULevelSequence
---@field ['LS Critical Actor'] ALevelSequenceActor
---@field AppCharCategory EAppCharCategoryType
---@field ['Weapon Type'] EAppCharWeaponType
---@field FaceAnimTable UDataTable
---@field ['App Koromaru'] ABP_AppKoromaru_C
---@field isEscaping boolean
---@field IsNeedToDelayBeforeShift boolean
---@field ['BP Fuka For Theurgia'] ABP_BtlCharacterBase_C
---@field SummonShellEX UNiagaraSystem
---@field LatestPlayedSceneAnim EBtlSceneAnimationType
---@field PreSkillCamDuration float
---@field WeaponVisibleTable UDataTable
---@field SecName FName
---@field ['LS FirstSummonScene'] TSoftObjectPtr<ULevelSequence>
---@field FirstSummonSceneActor ALevelSequenceActor
---@field isNeedFirstSummonScene boolean
---@field isPlayingFirstSummonScene boolean
---@field ['As Level Sequence'] ULevelSequence
---@field LoadedFirstSummonScene boolean
---@field NSSummonEffect UNiagaraSystem
---@field NSPersonaAuraEffect UNiagaraSystem
---@field NSPersonaAuraShineEffect UNiagaraSystem
---@field isHiding boolean
---@field AnimMontageSceneData UAnimMontage
---@field IsSummonEffectEmergingScene boolean
local ABP_BtlHumanBase_C = {}

---@param DelayTime float
ABP_BtlHumanBase_C['Play Pre Skill Cutin Astrea'] = function(self, DelayTime) end
---@param Duration float
ABP_BtlHumanBase_C['Get Pre Skill Cam Time'] = function(self, Duration) end
function ABP_BtlHumanBase_C:SetDefaultPose() end
function ABP_BtlHumanBase_C:PlaySkillEndAnim() end
---@param Opacity float
---@param ControlWithVisible boolean
function ABP_BtlHumanBase_C:SetOpacity(Opacity, ControlWithVisible) end
function ABP_BtlHumanBase_C:RestoreCharaPointLights() end
function ABP_BtlHumanBase_C:CollectCharaPointLights() end
---@param Enable boolean
function ABP_BtlHumanBase_C:SetSaccade(Enable) end
---@param UsePhisicalProc boolean
function ABP_BtlHumanBase_C:CheckPlayPhysicalSkillPerformance(UsePhisicalProc) end
---@param Finished boolean
ABP_BtlHumanBase_C['Check First Summon Scene Finished'] = function(self, Finished) end
---@param Effect TSoftObjectPtr<UNiagaraSystem>
function ABP_BtlHumanBase_C:GetTheurgiaSummonEffect(Effect) end
---@param SectionName FName
function ABP_BtlHumanBase_C:SetEquipVisibilityAuto(SectionName) end
---@param Type EAppCharFaceAnimID
---@param BlendIn float
---@param BlendOut float
---@param ForceNoBlink boolean
function ABP_BtlHumanBase_C:PlayFaceAnimation(Type, BlendIn, BlendOut, ForceNoBlink) end
---@param Enable boolean
function ABP_BtlHumanBase_C:SetBlink(Enable) end
---@param AnimType EBtlSceneAnimationType
---@param SceneAnimMontage UAnimMontage
function ABP_BtlHumanBase_C:GetSceneMontage(AnimType, SceneAnimMontage) end
---@param DonePreSkillCamera boolean
function ABP_BtlHumanBase_C:ProcPreSkill(DonePreSkillCamera) end
function ABP_BtlHumanBase_C:StopFaceAnimation() end
---@param TheurgiaToTurnEnd boolean
function ABP_BtlHumanBase_C:ShowTheurgiaGun(TheurgiaToTurnEnd) end
---@param RelativeLocation FVector
function ABP_BtlHumanBase_C:SetHeadLookatWorldForTopUI(RelativeLocation) end
---@param Type EBtlAnimNotifyHitEffect
---@param SENo int32
function ABP_BtlHumanBase_C:GetHitSENo(Type, SENo) end
---@param toDestroy boolean
function ABP_BtlHumanBase_C:CheckNeedToDestroyPersonaForEvent(toDestroy) end
function ABP_BtlHumanBase_C:UpdateStatus() end
---@param LS ULevelSequence
function ABP_BtlHumanBase_C:GetCriticalAttackCamera(LS) end
function ABP_BtlHumanBase_C:RegisterPersonaOwnerForFukaTheurgia() end
---@param MainChara ABP_BtlCharacterBase_C
function ABP_BtlHumanBase_C:LoadTheurgia(MainChara) end
---@param Character ABP_CharacterBase_C
function ABP_BtlHumanBase_C:GetAppCharacterActor(Character) end
---@param Section FName
function ABP_BtlHumanBase_C:PlayFaceAnimationFromBodyAnim(Section) end
---@return EBtlSizeCategoryType
function ABP_BtlHumanBase_C:GetSizeCategory() end
---@param show boolean
function ABP_BtlHumanBase_C:CheckTheurgiaPersonaKeepShowing(show) end
---@param ForceHeadReset boolean
function ABP_BtlHumanBase_C:DisableHeadLookat(ForceHeadReset) end
---@param LookAtTarget ABtlActor
---@param TargetSocket FString
function ABP_BtlHumanBase_C:SetHeadLookatForTopUI(LookAtTarget, TargetSocket) end
---@param PlayerId int32
---@param ConvPlayerID int32
function ABP_BtlHumanBase_C:ConvPlayerID(PlayerId, ConvPlayerID) end
---@param AppCharaCompBase UAppCharBaseComp
---@param CharacterCategory EAppCharCategoryType
---@param characterId int32
---@param CostumeID int32
---@param WeaponType EAppCharWeaponType
function ABP_BtlHumanBase_C:CreateAppCharacter(AppCharaCompBase, CharacterCategory, characterId, CostumeID, WeaponType) end
function ABP_BtlHumanBase_C:PlayCriticalAttackCamera() end
---@param bNewVisibility boolean
function ABP_BtlHumanBase_C:SetVisibleSummonEffect(bNewVisibility) end
---@return boolean
ABP_BtlHumanBase_C['Check Theurgia Need Common Skill Scene'] = function(self, ) end
---@param need boolean
function ABP_BtlHumanBase_C:CheckNeedToAttachGun(need) end
function ABP_BtlHumanBase_C:InitAfterCreateAppCharacter() end
---@param Enable boolean
function ABP_BtlHumanBase_C:SetupEventAnimation(Enable) end
function ABP_BtlHumanBase_C:GetMeshList() end
---@param valid boolean
function ABP_BtlHumanBase_C:DebugCheckTheurgiaValid(valid) end
function ABP_BtlHumanBase_C:FinalizeTheurgiaSequence() end
function ABP_BtlHumanBase_C:DestroyPersonaWithStuff() end
---@param MainCharacter ABP_BtlCharacterBase_C
function ABP_BtlHumanBase_C:SetupTheurgia(MainCharacter) end
function ABP_BtlHumanBase_C:ShiftTheurgia() end
function ABP_BtlHumanBase_C:CreateMID() end
---@param MaterialInstance TArray<UMaterialInstanceDynamic>
function ABP_BtlHumanBase_C:GetMaterials(MaterialInstance) end
function ABP_BtlHumanBase_C:ShiftItemPhase() end
---@param persona ABP_BtlPersonaBase_C
---@param LS ULevelSequence
function ABP_BtlHumanBase_C:GetPersonaSkillCamera(persona, LS) end
function ABP_BtlHumanBase_C:ShowExistingSummonEffect() end
---@param SummonEffect UNiagaraComponent
function ABP_BtlHumanBase_C:GetSummonEffect(SummonEffect) end
---@param Hide boolean
function ABP_BtlHumanBase_C:CreateSummonEffect(Hide) end
---@param Visible boolean
function ABP_BtlHumanBase_C:SetGunVisible(Visible) end
---@param Visible boolean
function ABP_BtlHumanBase_C:SetWeaponVisible(Visible) end
---@param NewParam FName
function ABP_BtlHumanBase_C:GetWeaponAttachSocketName(NewParam) end
function ABP_BtlHumanBase_C:AdjustLocation() end
function ABP_BtlHumanBase_C:AttachEquipment() end
function ABP_BtlHumanBase_C:DestroyPersonaSummonCamera() end
function ABP_BtlHumanBase_C:DestroySkillCamera() end
function ABP_BtlHumanBase_C:DestroyPersonaSkillCamera() end
function ABP_BtlHumanBase_C:PlayPersonaSkillCamera() end
function ABP_BtlHumanBase_C:ShowSummonActEffect() end
ABP_BtlHumanBase_C['Finalize Skill Phase'] = function(self, ) end
---@param IsAfterCutin boolean
function ABP_BtlHumanBase_C:StartPersonaSkillAnim(IsAfterCutin) end
ABP_BtlHumanBase_C['Standby Persona'] = function(self, ) end
ABP_BtlHumanBase_C['Shift Skill Phase'] = function(self, ) end
function ABP_BtlHumanBase_C:SetupAfterCutin() end
function ABP_BtlHumanBase_C:DeleteSummonEffect() end
ABP_BtlHumanBase_C['Destroy Cutin'] = function(self, ) end
ABP_BtlHumanBase_C['Standby Cutin'] = function(self, ) end
---@param isTheurgiaSummon boolean
function ABP_BtlHumanBase_C:ShowSummonEffect(isTheurgiaSummon) end
function ABP_BtlHumanBase_C:PlayPersonaSummon() end
---@param Gun ABP_BtlSummonGun_C
function ABP_BtlHumanBase_C:GetSummonGunBP(Gun) end
---@param AsBP_Btl_Summon_Gun ABP_BtlSummonGun_C
function ABP_BtlHumanBase_C:GetSummonGun(AsBP_Btl_Summon_Gun) end
---@param AnimSection FName
---@param ForceHide boolean
---@param ForceShowWeapon boolean
---@param ForceHideWeapon boolean
function ABP_BtlHumanBase_C:SetEquipVisibility(AnimSection, ForceHide, ForceShowWeapon, ForceHideWeapon) end
function ABP_BtlHumanBase_C:DestroyCharacter() end
---@return boolean
function ABP_BtlHumanBase_C:CheckReadyCharacterBP() end
---@param PlayerId int32
function ABP_BtlHumanBase_C:CreateCharacter(PlayerId) end
---@param Sequence_Actor ALevelSequenceActor
---@param Sequence_Root AActor
---@param Sequence_Camera ACineCameraActor
---@param Loop boolean
---@param Blend_Time_Sec float
function ABP_BtlHumanBase_C:SetupSequenceCamera(Sequence_Actor, Sequence_Root, Sequence_Camera, Loop, Blend_Time_Sec) end
function ABP_BtlHumanBase_C:UserConstructionScript() end
function ABP_BtlHumanBase_C:EscapeFadeOut__FinishedFunc() end
function ABP_BtlHumanBase_C:EscapeFadeOut__UpdateFunc() end
ABP_BtlHumanBase_C['Character Hiding__FinishedFunc'] = function(self, ) end
ABP_BtlHumanBase_C['Character Hiding__UpdateFunc'] = function(self, ) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_B9DF62C147F2F3F56F19DB98E259B881(Loaded) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyEnd_61411224401ADF8B4648E68664820763(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyBegin_61411224401ADF8B4648E68664820763(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnInterrupted_61411224401ADF8B4648E68664820763(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnBlendOut_61411224401ADF8B4648E68664820763(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnCompleted_61411224401ADF8B4648E68664820763(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyEnd_61411224401ADF8B4648E686E3B9AB8E(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyBegin_61411224401ADF8B4648E686E3B9AB8E(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnInterrupted_61411224401ADF8B4648E686E3B9AB8E(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnBlendOut_61411224401ADF8B4648E686E3B9AB8E(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnCompleted_61411224401ADF8B4648E686E3B9AB8E(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyEnd_61411224401ADF8B4648E6865C8C331A(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyBegin_61411224401ADF8B4648E6865C8C331A(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnInterrupted_61411224401ADF8B4648E6865C8C331A(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnBlendOut_61411224401ADF8B4648E6865C8C331A(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnCompleted_61411224401ADF8B4648E6865C8C331A(NotifyName) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_8FD473CC4F8621DE7DFD9A81895B9A45(Loaded) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyEnd_61411224401ADF8B4648E68625998B92(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnNotifyBegin_61411224401ADF8B4648E68625998B92(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnInterrupted_61411224401ADF8B4648E68625998B92(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnBlendOut_61411224401ADF8B4648E68625998B92(NotifyName) end
---@param NotifyName FName
function ABP_BtlHumanBase_C:OnCompleted_61411224401ADF8B4648E68625998B92(NotifyName) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_11E5446D479BE331AD47C49D6E50B257(Loaded) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_F113DF37497B013814369485A8D3119A(Loaded) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_7F54C18F4A1DDEE0300C7F825E27F00D(Loaded) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_62BAAE974A7FECD02D7AAD99953F99E8(Loaded) end
---@param Loaded UObject
function ABP_BtlHumanBase_C:OnLoaded_39703C644BB8B7F1591CD194C587EC2C(Loaded) end
ABP_BtlHumanBase_C['On Play Summon Effect'] = function(self, ) end
ABP_BtlHumanBase_C['On Play Therugia Summon Effect'] = function(self, ) end
---@param Hide boolean
ABP_BtlHumanBase_C['On Play Summon Effect For Cutin'] = function(self, Hide) end
ABP_BtlHumanBase_C['On Character Escaping'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Theurgia Loading'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finsied Theurgia Sequence'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Theurgia Persona Loading'] = function(self, ) end
ABP_BtlHumanBase_C['On Finish Theurgia All Action'] = function(self, ) end
ABP_BtlHumanBase_C['On Play Theurgia Skill Cut'] = function(self, ) end
ABP_BtlHumanBase_C['On Load Fuka For Theurgia'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Fuka For Theurgia Load'] = function(self, ) end
ABP_BtlHumanBase_C['On Start Theurgia Sequence'] = function(self, ) end
ABP_BtlHumanBase_C['On Start Takeover'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Shift Seq Load'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Shift Event'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Shift Stuff Load'] = function(self, ) end
---@param Type EBtlSceneAnimationType
---@param Next EBtlSceneAnimationType
ABP_BtlHumanBase_C['Request Scene Animation'] = function(self, Type, Next) end
---@param Type EBtlSceneAnimationType
---@param Blend float
---@param WithForceUpdate boolean
ABP_BtlHumanBase_C['Request Scene Animation Blend'] = function(self, Type, Blend, WithForceUpdate) end
ABP_BtlHumanBase_C['On Summon Persona'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Persona Summon'] = function(self, ) end
ABP_BtlHumanBase_C['On Destroy Persona Called From Relocation'] = function(self, ) end
ABP_BtlHumanBase_C['On Play Special Action Skill'] = function(self, ) end
ABP_BtlHumanBase_C['On Destroy Persona For Event'] = function(self, ) end
ABP_BtlHumanBase_C['On Call Theurgia Skill Scene'] = function(self, ) end
ABP_BtlHumanBase_C['On Call Theurgia Skill Scene to Skill End'] = function(self, ) end
ABP_BtlHumanBase_C['Standby First Summon Scene'] = function(self, ) end
ABP_BtlHumanBase_C['On Play First Summon Scene'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished First Summon Scene'] = function(self, ) end
function ABP_BtlHumanBase_C:DestroyPersonaBeforeCreatePersona() end
ABP_BtlHumanBase_C['On Prepare Standby Cutin'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Critical Attack Camera'] = function(self, ) end
ABP_BtlHumanBase_C['On Clear Sequence Camera'] = function(self, ) end
function ABP_BtlHumanBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlHumanBase_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlHumanBase_C:ReceiveDestroyed() end
ABP_BtlHumanBase_C['On Finalize Cutin'] = function(self, ) end
ABP_BtlHumanBase_C['Has Finished Cutin Finalize Fade'] = function(self, ) end
---@param CriticalHindrance boolean
---@param Rapid boolean
---@param HalfMode boolean
function ABP_BtlHumanBase_C:HideForOtherAction(CriticalHindrance, Rapid, HalfMode) end
function ABP_BtlHumanBase_C:CharacterDestroy() end
---@param Enable boolean
function ABP_BtlHumanBase_C:SetupForEventMode(Enable) end
function ABP_BtlHumanBase_C:ShowFromHiding() end
ABP_BtlHumanBase_C['On Load Non Resident Assets'] = function(self, ) end
function ABP_BtlHumanBase_C:SummonGunTurnToTheurgiaMode() end
---@param EntryPoint int32
function ABP_BtlHumanBase_C:ExecuteUbergraph_BP_BtlHumanBase(EntryPoint) end


