---@meta

---@class ABP_BtlCharacterBase_C : ABtlActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CharacterRoot USceneComponent
---@field BP_BtlResidentDataComp UBP_BtlResidentDataComp_C
---@field BP_BtlCharacterTidy UBP_BtlCharacterTidy_C
---@field CylinderCommon UCapsuleComponent
---@field BtlSkillGenerator UBtlSkillGeneratorComponent
---@field DefaultSceneRoot USceneComponent
---@field TL_Body_Shake_MoveY_B29803974D53F6B7A872D0B55DF2F8E5 float
---@field TL_Body_Shake__Direction_B29803974D53F6B7A872D0B55DF2F8E5 ETimelineDirection::Type
---@field ['TL Body Shake'] UTimelineComponent
---@field ['On End Action Turn'] FBP_BtlCharacterBase_COn End Action Turn
---@field SkillData ABP_BtlSkillBase_C
---@field BtlCameraManager UBP_BtlCameraManagerComponent_C
---@field BtlTargetsManager UBP_BtlTargetManager_C
---@field IsActiveTurnCharacter boolean
---@field ['Btl Core'] UBtlCoreComponent
---@field LoadedSkill boolean
---@field FinishedPersonaSkillCamera boolean
---@field ['Persona Skill Camera'] ALevelSequenceActor
---@field AppCharacter ABP_AppCharacter_C
---@field isPlayer boolean
---@field ['Anim Montage'] UAnimMontage
---@field ['Anim Section'] FName
---@field PersonaLoaded boolean
---@field CutinLoaded boolean
---@field CutinController ABP_BtlCutinController_C
---@field PlayingCutin boolean
---@field IsCutinPerformance boolean
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field AttackAnimFinished boolean
---@field AttackEffectFinished boolean
---@field HitEffectTrans FTransform
---@field DynamicSkillCamMode boolean
---@field LatestPlayedAnim EBtlAnimationType
---@field BtlGui UBP_BtlGuiComponent_C
---@field NotifiedHit boolean
---@field IsPersonaSummoner boolean
---@field CylinderTable UDataTable
---@field BtlActionManager UBP_BtlActionManager_C
---@field CallShadowSkillShot boolean
---@field VisualTable UDataTable
---@field CallShadowSkillCamChange boolean
---@field CallShadowSkillChantFinish boolean
---@field SummonSkill boolean
---@field SummonSkill_DataLoaded boolean
---@field KeepHidingMode boolean
---@field PlayedSkillCamera boolean
---@field InitialBlendIN float
---@field InitialBlendOut float
---@field FinishPersonaSummon boolean
---@field ['Anim Section Latest'] FName
---@field LSTakeover TSoftObjectPtr<ULevelSequence>
---@field TakeoverActor ALevelSequenceActor
---@field BtlEvent UBP_BtlEvent_C
---@field ['Anim Section Previous Frame'] FName
---@field ['Anim Section Current Frame'] FName
---@field ShakeAddPos FVector
---@field OnCallWeaponVisibility FBP_BtlCharacterBase_COnCallWeaponVisibility
---@field OnCallGunVisibility FBP_BtlCharacterBase_COnCallGunVisibility
---@field LocRunStart FVector
---@field LocRunGoal FVector
---@field IsAttackRunning boolean
---@field Run_CMpS float
---@field RunCurrentMoveLen float
---@field RunGoalMoveLen float
---@field RunMaxLenForAttack float
---@field IsAttacking boolean
---@field Selection EBtlAnimationType
---@field RunElapsedTime float
---@field LocBackstepStart FVector
---@field LocBackstepGoal FVector
---@field IsBackstepping boolean
---@field BackstepElapsedTime float
---@field BackstepGoalMoveLen float
---@field BackstepCurrentMoveLen float
---@field Backstep_CMpS float
---@field BackstepMaxLen float
---@field IsBackstepLanding boolean
---@field RequestPlaySkill boolean
---@field OnEscapeFinish FBP_BtlCharacterBase_COnEscapeFinish
---@field ['App Character Comp'] UAppCharacterComp
---@field DeadAnimSync boolean
---@field IsNeedToDelayBeforeCutin boolean
---@field IsNeedToDelayBeforeSkill boolean
---@field ['Is Force Show Weapon'] boolean
---@field RunDelayTime float
---@field ['Is Force Hide Weapon'] boolean
---@field CalledSkillShotEnd boolean
---@field IsKeepAnimWhenInvisible boolean
---@field isFirstSummonCutin boolean
---@field AnimChangeDetectorRemainingWaitTime float
---@field IsInMontageUpdate boolean
---@field InitialForcedLOD int32
---@field IgnoreCoordinatingAnimSpeed boolean
---@field isLastRequestChantAnimation boolean
---@field IsSkillShotDelayed boolean
local ABP_BtlCharacterBase_C = {}

---@param DelayTime float
function ABP_BtlCharacterBase_C:SkillShotDelay(DelayTime) end
---@param DelayTime float
function ABP_BtlCharacterBase_C:GetSkillShotDelayTime(DelayTime) end
---@param A EBtlAnimationType
function ABP_BtlCharacterBase_C:AnimRequestCheck(A) end
---@param AnimSectionNameToPlay FName
function ABP_BtlCharacterBase_C:RearrangeAnimSectionLatestName(AnimSectionNameToPlay) end
function ABP_BtlCharacterBase_C:FinalizeAttackRun() end
function ABP_BtlCharacterBase_C:StopAnimation() end
function ABP_BtlCharacterBase_C:RestoreLOD() end
function ABP_BtlCharacterBase_C:DisableLOD() end
function ABP_BtlCharacterBase_C:SaveLODParam() end
---@param Type EBtlAnimNotifyHitEffect
---@param Found boolean
---@return UNiagaraSystem
ABP_BtlCharacterBase_C['Get Hit Resident Effect'] = function(self, Type, Found) end
function ABP_BtlCharacterBase_C:CoordinateRequestAnimPose() end
---@param Through boolean
function ABP_BtlCharacterBase_C:MonitorLoopAnimThrough(Through) end
---@param Anim_Section_New FName
function ABP_BtlCharacterBase_C:SetupAnimRequestInfo(Anim_Section_New) end
function ABP_BtlCharacterBase_C:ProcBeforeSwitchEachAction() end
---@return boolean
function ABP_BtlCharacterBase_C:CheckShakingWhenDownDamage() end
function ABP_BtlCharacterBase_C:PlaySkillEndAnim() end
ABP_BtlCharacterBase_C['Hide Persona with effect'] = function(self, ) end
---@param SocketName FName
---@return FTransform
function ABP_BtlCharacterBase_C:GetSocketTransformFromCpp(SocketName) end
---@param AddWorldPos FVector
function ABP_BtlCharacterBase_C:GetFrontToCamEffectAdditionalPos(AddWorldPos) end
---@param Seconds float
function ABP_BtlCharacterBase_C:GetEnemyAttackWaitTime(Seconds) end
---@param BP_Btl_Persona ABP_BtlPersonaBase_C
function ABP_BtlCharacterBase_C:GetPersonaBP(BP_Btl_Persona) end
---@param show boolean
function ABP_BtlCharacterBase_C:CheckNeedToShowPersonaAtSummonShot(show) end
function ABP_BtlCharacterBase_C:PlaySkillActEffect() end
---@return UBtlTargetsManagerComponent
function ABP_BtlCharacterBase_C:GetTargetsManager() end
---@param show boolean
ABP_BtlCharacterBase_C['Check Need To Show Action Name With Action'] = function(self, show) end
---@param Finished boolean
ABP_BtlCharacterBase_C['Check First Summon Scene Finished'] = function(self, Finished) end
function ABP_BtlCharacterBase_C:PlayFirstSummonScene() end
---@param Type AppCharWeaponAnimType
---@param BlendInTime float
---@param BlendOutTime float
function ABP_BtlCharacterBase_C:PlayWeaponAnimFromType(Type, BlendInTime, BlendOutTime) end
---@param SectionName FName
function ABP_BtlCharacterBase_C:SetEquipVisibilityAuto(SectionName) end
---@param Type EAppCharFaceAnimID
---@param BlendIn float
---@param BlendOut float
---@param ForceNoBlink boolean
function ABP_BtlCharacterBase_C:PlayFaceAnimation(Type, BlendIn, BlendOut, ForceNoBlink) end
---@param attr EBtlDataAttr
---@param VFX TSoftObjectPtr<UNiagaraSystem>
function ABP_BtlCharacterBase_C:GetHitAttrAdditonalEffect(attr, VFX) end
---@param Delay float
function ABP_BtlCharacterBase_C:CalcAttackDelayTime(Delay) end
---@param finazlie boolean
ABP_BtlCharacterBase_C['Check Need to Finailze Attack Turn'] = function(self, finazlie) end
---@param Length float
function ABP_BtlCharacterBase_C:GetMaxRunLenForAttack(Length) end
ABP_BtlCharacterBase_C['Play Specific Attack Camera'] = function(self, ) end
function ABP_BtlCharacterBase_C:StopFaceAnimation() end
---@param Anim_Montage UAnimMontage
function ABP_BtlCharacterBase_C:GetAnimMontage(Anim_Montage) end
function ABP_BtlCharacterBase_C:OtherEnemiesLookAt() end
---@param TheurgiaToTurnEnd boolean
function ABP_BtlCharacterBase_C:ShowTheurgiaGun(TheurgiaToTurnEnd) end
---@param HitType EBtlAnimNotifyHitEffect
---@param VFX TSoftObjectPtr<UNiagaraSystem>
function ABP_BtlCharacterBase_C:GetHitEffectEX(HitType, VFX) end
---@param Type EBtlAnimNotifyHitEffect
---@param se int32
function ABP_BtlCharacterBase_C:CoordinateAttackSE(Type, se) end
---@param pCore UBtlCoreComponent
---@param Pos FVector
---@param standRange float
---@param coordinateFromEnemyCenter boolean
---@return FVector
function ABP_BtlCharacterBase_C:CalcClosedStandLocation(pCore, Pos, standRange, coordinateFromEnemyCenter) end
---@param Type EBtlAnimNotifyHitEffect
---@param SENo int32
function ABP_BtlCharacterBase_C:GetHitSENo(Type, SENo) end
function ABP_BtlCharacterBase_C:PlaySkillShotCam() end
---@param Type EBtlAnimationType
---@param ConvedType EBtlAnimationType
ABP_BtlCharacterBase_C['Conv Attack Section'] = function(self, Type, ConvedType) end
---@return UAppCharBaseComp
function ABP_BtlCharacterBase_C:GetCharaBPFromCode() end
---@param CutNumber int32
function ABP_BtlCharacterBase_C:PlayAttackCharaCutCamera(CutNumber) end
function ABP_BtlCharacterBase_C:PlayCriticalAttackCamera() end
function ABP_BtlCharacterBase_C:PlayAttackCamera() end
---@param Visible boolean
---@param KeepAnim boolean
function ABP_BtlCharacterBase_C:SetVisibleExceptPersona(Visible, KeepAnim) end
---@param NewVisibility boolean
function ABP_BtlCharacterBase_C:SetVisibleEuqipFunc(NewVisibility) end
---@param Dead boolean
function ABP_BtlCharacterBase_C:SyncDeadAnim(Dead) end
---@param Character ABP_CharacterBase_C
function ABP_BtlCharacterBase_C:GetAppCharacterActor(Character) end
---@param App_Character_Comp UAppCharacterComp
function ABP_BtlCharacterBase_C:GetAppCharacterComp(App_Character_Comp) end
---@param Section FName
function ABP_BtlCharacterBase_C:PlayFaceAnimationFromBodyAnim(Section) end
---@param ForceHeadReset boolean
function ABP_BtlCharacterBase_C:DisableHeadLookat(ForceHeadReset) end
---@param LookAtTarget ABtlActor
---@param TargetSocket FString
function ABP_BtlCharacterBase_C:SetHeadLookatForTopUI(LookAtTarget, TargetSocket) end
---@param Key EBtlAnimationType
---@param Value FName
---@return boolean
function ABP_BtlCharacterBase_C:ConvAnimTypeToName(Key, Value) end
function ABP_BtlCharacterBase_C:HidePersonaBySkillScene() end
---@return FTransform
function ABP_BtlCharacterBase_C:GetBustupSocket() end
---@param trans FTransform
function ABP_BtlCharacterBase_C:MakeAttackHitTransform(trans) end
function ABP_BtlCharacterBase_C:CoordinateAnimationSpeed() end
---@param Weapon TArray<AAppCharWeaponBase>
function ABP_BtlCharacterBase_C:GetWeaponList(Weapon) end
---@param LocAttackRunStart FVector
function ABP_BtlCharacterBase_C:GetBackstepStartLocation(LocAttackRunStart) end
---@param Opacity float
function ABP_BtlCharacterBase_C:GetOpacity(Opacity) end
---@param UseCustomBlend boolean
---@param Blend float
function ABP_BtlCharacterBase_C:ArrangeAnimBlendOut(UseCustomBlend, Blend) end
---@param need boolean
ABP_BtlCharacterBase_C['Check Need To Attack Anim Blendout'] = function(self, need) end
---@param AttackWithMove boolean
function ABP_BtlCharacterBase_C:CheckAttackWithMove(AttackWithMove) end
---@param ElapsedTime float
---@param SpeedCmpS float
function ABP_BtlCharacterBase_C:CalcBackstepSpeed(ElapsedTime, SpeedCmpS) end
ABP_BtlCharacterBase_C['Start Backstep Loop'] = function(self, ) end
ABP_BtlCharacterBase_C['Coordinate Backstep From Attack'] = function(self, ) end
---@param Visible boolean
function ABP_BtlCharacterBase_C:CheckVisible(Visible) end
function ABP_BtlCharacterBase_C:ShiftFailureWait() end
---@param Section_Name FName
---@param Found boolean
function ABP_BtlCharacterBase_C:GetSkillShotSectionName(Section_Name, Found) end
function ABP_BtlCharacterBase_C:AttackerAndTargetsLookAtEachOther() end
---@param ElapsedTime float
---@param DelayTime float
---@param SpeedCmpS float
function ABP_BtlCharacterBase_C:CalcAttackRunSpeed(ElapsedTime, DelayTime, SpeedCmpS) end
---@param HitType FString
function ABP_BtlCharacterBase_C:PlayAttackHitEffect(HitType) end
---@param AnimType EBtlAnimationType
function ABP_BtlCharacterBase_C:ChoiceAttackSection(AnimType) end
function ABP_BtlCharacterBase_C:StartRun() end
ABP_BtlCharacterBase_C['Coordinate Run for Attack'] = function(self, ) end
ABP_BtlCharacterBase_C['Setup Attack Performance Situation'] = function(self, ) end
function ABP_BtlCharacterBase_C:PlayAttackHitSequence() end
---@param attr EBtlDataAttr
function ABP_BtlCharacterBase_C:PlayAttackAdditionalSE(attr) end
---@param VisualTable FBtlCharacterVisual
function ABP_BtlCharacterBase_C:GetVisualTable(VisualTable) end
---@param Enable boolean
function ABP_BtlCharacterBase_C:SetupEventAnimation(Enable) end
---@param Anim_Sequence UAnimSequenceBase
ABP_BtlCharacterBase_C['Play Weapon Animation'] = function(self, Anim_Sequence) end
---@param UseCustomBlend boolean
---@param Blend float
function ABP_BtlCharacterBase_C:ArrangeAnimBlend(UseCustomBlend, Blend) end
function ABP_BtlCharacterBase_C:ShiftTheurgia() end
function ABP_BtlCharacterBase_C:SetupActCommand() end
---@param Target ABP_BtlCharacterBase_C
---@return FTransform
ABP_BtlCharacterBase_C['Get Hit Effect Transform'] = function(self, Target) end
---@param AddWorldPos FVector
function ABP_BtlCharacterBase_C:GetFrontEffectAdditionalPos(AddWorldPos) end
---@param Type EBtlAnimNotifyHitEffect
function ABP_BtlCharacterBase_C:PlayAttackSE(Type) end
---@param Type EBtlAnimationType
function ABP_BtlCharacterBase_C:PlayWeaponAttackAnim(Type) end
function ABP_BtlCharacterBase_C:OtherEnemiesLookAtTarget() end
function ABP_BtlCharacterBase_C:ShiftEscape() end
---@param Type EBtlBadStatusIcon
---@param SocketName FName
function ABP_BtlCharacterBase_C:GetBadStatusSocket(Type, SocketName) end
---@param Color FColor
function ABP_BtlCharacterBase_C:SetBodyColor(Color) end
---@param Type EBtlBadStatusIcon
ABP_BtlCharacterBase_C['Proc BadStatus Effect'] = function(self, Type) end
---@return EBtlAnimationType
function ABP_BtlCharacterBase_C:GetCurrentAnimation() end
function ABP_BtlCharacterBase_C:ShiftItemPhase() end
function ABP_BtlCharacterBase_C:ProcPersonaSummonFinish() end
---@param Color FColor
---@param Alpha float
function ABP_BtlCharacterBase_C:SetUIColor(Color, Alpha) end
---@param MaterialInstance TArray<UMaterialInstanceDynamic>
function ABP_BtlCharacterBase_C:GetMaterials(MaterialInstance) end
---@param Result boolean
function ABP_BtlCharacterBase_C:CheckInAllout(Result) end
function ABP_BtlCharacterBase_C:Initialize() end
function ABP_BtlCharacterBase_C:ShiftWait() end
function ABP_BtlCharacterBase_C:InitStartTurn() end
ABP_BtlCharacterBase_C['Shift Summon Skill Phase'] = function(self, ) end
ABP_BtlCharacterBase_C['Standby Summon Skill'] = function(self, ) end
function ABP_BtlCharacterBase_C:RegisterPersonaOwner() end
---@param Enable boolean
function ABP_BtlCharacterBase_C:CheckEnableBackShotCamera(Enable) end
function ABP_BtlCharacterBase_C:RotateSkillPhase() end
function ABP_BtlCharacterBase_C:RotateLookAtTargetsCenter() end
---@param Lookat FVector
function ABP_BtlCharacterBase_C:RotateCharacterAt(Lookat) end
---@param Visible boolean
---@param TargetOnlyOpponent boolean
function ABP_BtlCharacterBase_C:SetOtherCharacterVisible(Visible, TargetOnlyOpponent) end
---@param Scale float
function ABP_BtlCharacterBase_C:GetCharacterScaleFloat(Scale) end
---@param Scale FVector
function ABP_BtlCharacterBase_C:GetCharacterScale(Scale) end
function ABP_BtlCharacterBase_C:SetupCylinderCollision() end
---@param UseCommon boolean
---@param Name FName
function ABP_BtlCharacterBase_C:GetCylinderTypeName(UseCommon, Name) end
function ABP_BtlCharacterBase_C:ShiftTakeover() end
function ABP_BtlCharacterBase_C:ShiftGuardPhase() end
---@param Niagara UNiagaraComponent
function ABP_BtlCharacterBase_C:RegisterUtensilEffect(Niagara) end
---@param Socket FName
function ABP_BtlCharacterBase_C:RootSocketName(Socket) end
---@param Visible boolean
function ABP_BtlCharacterBase_C:SetGunVisible(Visible) end
---@param Visible boolean
function ABP_BtlCharacterBase_C:SetWeaponVisible(Visible) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:AutoNotifyProcess(NotifyName) end
---@param SystemTemplate UNiagaraSystem
---@param SocketName FName
---@param Parent ABP_BtlEffectIcon_C
---@param NiagaraEffect UNiagaraComponent
function ABP_BtlCharacterBase_C:CreateEffectAtSocket(SystemTemplate, SocketName, Parent, NiagaraEffect) end
---@param Type EBtlAnimationType
ABP_BtlCharacterBase_C['Proc Down Effect'] = function(self, Type) end
---@return UBtlActionManagerComponent
function ABP_BtlCharacterBase_C:GetActionManager() end
function ABP_BtlCharacterBase_C:DestroySkillCamera() end
---@param ScaleValue float
function ABP_BtlCharacterBase_C:GetCharacterEffectScale(ScaleValue) end
---@param InSocketName FName
---@return FTransform
function ABP_BtlCharacterBase_C:GetSocketTransform(InSocketName) end
---@param IsDown boolean
function ABP_BtlCharacterBase_C:BeginDeadPhase(IsDown) end
function ABP_BtlCharacterBase_C:SetupAttackingEnemyVisual() end
---@return boolean
function ABP_BtlCharacterBase_C:CheckSkillCameraAnimation() end
---@param Type EBtlSkillCameraType
function ABP_BtlCharacterBase_C:GetSkillCameraType(Type) end
---@param LookatCharacter ABP_BtlCharacterBase_C
function ABP_BtlCharacterBase_C:RotateCharacter(LookatCharacter) end
function ABP_BtlCharacterBase_C:HaltCameraAnimation() end
---@param attack FName
function ABP_BtlCharacterBase_C:GetAttackMontageName(attack) end
---@param Gun ABP_BtlSummonGun_C
function ABP_BtlCharacterBase_C:GetSummonGunBP(Gun) end
---@param AnimSection FName
---@param ForceHide boolean
---@param ForceShowWeapon boolean
---@param ForceHideWeapon boolean
function ABP_BtlCharacterBase_C:SetEquipVisibility(AnimSection, ForceHide, ForceShowWeapon, ForceHideWeapon) end
---@param Target ABP_BtlCharacterBase_C
---@return FTransform
ABP_BtlCharacterBase_C['Get Attack Effect Transform'] = function(self, Target) end
---@param HitType EBtlAnimNotifyHitEffect
---@param HitEffect UNiagaraSystem
function ABP_BtlCharacterBase_C:GetHitEffect(HitType, HitEffect) end
function ABP_BtlCharacterBase_C:ShiftAttackPhase() end
function ABP_BtlCharacterBase_C:SetupSkillData() end
function ABP_BtlCharacterBase_C:ShowSummonActEffect() end
---@return boolean
function ABP_BtlCharacterBase_C:CheckReadyCharacterBP() end
ABP_BtlCharacterBase_C['Shift Skill Phase'] = function(self, ) end
---@param SkeletalMesh USkeletalMeshComponent
function ABP_BtlCharacterBase_C:GetSkeletalMesh(SkeletalMesh) end
---@param Showing_Actor AActor
function ABP_BtlCharacterBase_C:GetShowActor(Showing_Actor) end
---@param Scene USceneComponent
function ABP_BtlCharacterBase_C:GetCharacterRoot(Scene) end
ABP_BtlCharacterBase_C['Finalize Skill Phase'] = function(self, ) end
---@param Visible boolean
---@param KeepAnim boolean
function ABP_BtlCharacterBase_C:SetVisible(Visible, KeepAnim) end
---@param UseCommonCylinder boolean
---@param CenterBottom FVector
---@param Radius float
---@param Height float
---@param CenterCylinder FVector
---@param LocalCylinderLocation FVector
function ABP_BtlCharacterBase_C:GetCylinderCommon(UseCommonCylinder, CenterBottom, Radius, Height, CenterCylinder, LocalCylinderLocation) end
ABP_BtlCharacterBase_C['Standby Skill'] = function(self, ) end
ABP_BtlCharacterBase_C['TL Body Shake__FinishedFunc'] = function(self, ) end
ABP_BtlCharacterBase_C['TL Body Shake__UpdateFunc'] = function(self, ) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE6C29F8BD(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE6C29F8BD(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE6C29F8BD(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE6C29F8BD(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE6C29F8BD(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE11F3A4AF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE11F3A4AF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE11F3A4AF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE11F3A4AF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE11F3A4AF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE12425A80(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE12425A80(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE12425A80(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE12425A80(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE12425A80(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE0C9DA657(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE0C9DA657(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE0C9DA657(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE0C9DA657(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE0C9DA657(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEAE0D0B31(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEAE0D0B31(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEAE0D0B31(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEAE0D0B31(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEAE0D0B31(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE4A3D7C4B(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE4A3D7C4B(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE4A3D7C4B(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE4A3D7C4B(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE4A3D7C4B(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE2561F0D0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE2561F0D0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE2561F0D0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE2561F0D0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE2561F0D0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE98C34F75(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE98C34F75(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE98C34F75(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE98C34F75(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE98C34F75(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE7D6DF3EA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE7D6DF3EA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE7D6DF3EA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE7D6DF3EA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE7D6DF3EA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE1445DF49(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE1445DF49(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE1445DF49(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE1445DF49(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE1445DF49(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEADF90FAF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEADF90FAF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEADF90FAF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEADF90FAF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEADF90FAF(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEB1172878(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEB1172878(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEB1172878(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEB1172878(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEB1172878(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE6BEA06BA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE6BEA06BA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE6BEA06BA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE6BEA06BA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE6BEA06BA(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE99B84275(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE99B84275(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE99B84275(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE99B84275(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE99B84275(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE275C7628(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE275C7628(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE275C7628(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE275C7628(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE275C7628(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEBD46534F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEBD46534F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEBD46534F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEBD46534F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEBD46534F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE26D8D2CE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE26D8D2CE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE26D8D2CE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE26D8D2CE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE26D8D2CE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEACF678DE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEACF678DE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEACF678DE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEACF678DE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEACF678DE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE3CCDCEB1(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE3CCDCEB1(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE3CCDCEB1(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE3CCDCEB1(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE3CCDCEB1(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE1CBC4401(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE1CBC4401(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE1CBC4401(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE1CBC4401(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE1CBC4401(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEF644ECEB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEF644ECEB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEF644ECEB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEF644ECEB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEF644ECEB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE085463A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE085463A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE085463A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE085463A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE085463A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEC93DA035(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEC93DA035(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEC93DA035(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEC93DA035(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEC93DA035(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE52ED0CCE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE52ED0CCE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE52ED0CCE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE52ED0CCE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE52ED0CCE(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEB4A5C246(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEB4A5C246(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEB4A5C246(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEB4A5C246(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEB4A5C246(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE3568FB09(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE3568FB09(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE3568FB09(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE3568FB09(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE3568FB09(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE36E3EACB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE36E3EACB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE36E3EACB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE36E3EACB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE36E3EACB(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEC2B102C7(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEC2B102C7(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEC2B102C7(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEC2B102C7(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEC2B102C7(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE4233FF67(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE4233FF67(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE4233FF67(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE4233FF67(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE4233FF67(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE6487059F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE6487059F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE6487059F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE6487059F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE6487059F(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEBE111C78(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEBE111C78(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEBE111C78(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEBE111C78(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEBE111C78(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE2BFB25E5(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE2BFB25E5(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE2BFB25E5(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE2BFB25E5(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE2BFB25E5(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BEB4660BD0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BEB4660BD0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BEB4660BD0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BEB4660BD0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BEB4660BD0(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyEnd_D5F10E1C4A2F3D29069CB1BE959A7C6C(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnNotifyBegin_D5F10E1C4A2F3D29069CB1BE959A7C6C(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnInterrupted_D5F10E1C4A2F3D29069CB1BE959A7C6C(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnBlendOut_D5F10E1C4A2F3D29069CB1BE959A7C6C(NotifyName) end
---@param NotifyName FName
function ABP_BtlCharacterBase_C:OnCompleted_D5F10E1C4A2F3D29069CB1BE959A7C6C(NotifyName) end
ABP_BtlCharacterBase_C['On Overheat'] = function(self, ) end
ABP_BtlCharacterBase_C['On Failure Wait'] = function(self, ) end
ABP_BtlCharacterBase_C['On Escape'] = function(self, ) end
ABP_BtlCharacterBase_C['On Character Escaping'] = function(self, ) end
ABP_BtlCharacterBase_C['On Escape Affect'] = function(self, ) end
ABP_BtlCharacterBase_C['On Escape From Command'] = function(self, ) end
function ABP_BtlCharacterBase_C:RequestHidePlayersForEspaceSkill() end
---@param Type EBtlBadStatusIcon
function ABP_BtlCharacterBase_C:RequestAddStatusEffect(Type) end
ABP_BtlCharacterBase_C['On BadStatus Damage Scene'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Summon Data Load'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Notified Summon'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Notified Play Summon Camera '] = function(self, ) end
ABP_BtlCharacterBase_C['Show Summon Fadein'] = function(self, ) end
ABP_BtlCharacterBase_C['On Start Takeover'] = function(self, ) end
ABP_BtlCharacterBase_C['On Start Guard'] = function(self, ) end
---@param ShortMode boolean
ABP_BtlCharacterBase_C['On Play Dead Performance'] = function(self, ShortMode) end
function ABP_BtlCharacterBase_C:RequestDamageAndDeadPerformance() end
---@param HitType FString
ABP_BtlCharacterBase_C['On Play Attack Hit'] = function(self, HitType) end
ABP_BtlCharacterBase_C['Has Finished Attack Anim'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Attack Effect'] = function(self, ) end
ABP_BtlCharacterBase_C['On Interrupt Attack'] = function(self, ) end
ABP_BtlCharacterBase_C['On Play Attack Performance'] = function(self, ) end
---@param DeltaTime float
ABP_BtlCharacterBase_C['Update Run For Attack'] = function(self, DeltaTime) end
---@param DeltaTime float
ABP_BtlCharacterBase_C['Update Backstep From Attack'] = function(self, DeltaTime) end
ABP_BtlCharacterBase_C['Has Finished Attack From Event'] = function(self, ) end
---@param AnimType EBtlAnimationType
---@param startingPosition float
---@param UseBlendSetting boolean
---@param Blend float
function ABP_BtlCharacterBase_C:RequestAnimation(AnimType, startingPosition, UseBlendSetting, Blend) end
---@param AnimType EBtlAnimationType
---@param animNextType EBtlAnimationType
function ABP_BtlCharacterBase_C:RequestAnimationWithNext(AnimType, animNextType) end
ABP_BtlCharacterBase_C['On Request Summon Act Animation'] = function(self, ) end
---@param NotPlayWeaponAnim boolean
ABP_BtlCharacterBase_C['On Request Attack Animation'] = function(self, NotPlayWeaponAnim) end
ABP_BtlCharacterBase_C['On Request Shadow Skill Shot'] = function(self, ) end
ABP_BtlCharacterBase_C['On Request Shadow Skill Chant'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Persona Summon'] = function(self, ) end
ABP_BtlCharacterBase_C['On Play Item Use Animation'] = function(self, ) end
function ABP_BtlCharacterBase_C:PlayShakeAnim() end
function ABP_BtlCharacterBase_C:StopShakeAnim() end
function ABP_BtlCharacterBase_C:RequestPersonalAnimation() end
---@param UseManualBlend boolean
---@param Blend float
---@param UseAutoBlend boolean
---@param ForceToPlay boolean
ABP_BtlCharacterBase_C['Request Wait Animation'] = function(self, UseManualBlend, Blend, UseAutoBlend, ForceToPlay) end
ABP_BtlCharacterBase_C['On Play Skill Without Persona'] = function(self, ) end
ABP_BtlCharacterBase_C['On Request Attack From Event '] = function(self, ) end
---@param UseAutoBlend boolean
---@param ForceToPlay boolean
ABP_BtlCharacterBase_C['Play Command Wait Loop Animation'] = function(self, UseAutoBlend, ForceToPlay) end
ABP_BtlCharacterBase_C['Has Finished Persona Loading For Cutin'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Cutin Loading'] = function(self, ) end
ABP_BtlCharacterBase_C['On Chant Skill'] = function(self, ) end
ABP_BtlCharacterBase_C['On Prepare Skill'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Skill Effect'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Skill Load'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Persona Skill Camera'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Cutin'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Notified Shift Show Skill'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Notified Play Skill Camera'] = function(self, ) end
ABP_BtlCharacterBase_C['On Finalize Cutin'] = function(self, ) end
ABP_BtlCharacterBase_C['On Play Skill Camera From Item'] = function(self, ) end
ABP_BtlCharacterBase_C['On Play Skill Camera From Theurgia'] = function(self, ) end
ABP_BtlCharacterBase_C['On Prepare Skill Delayed'] = function(self, ) end
ABP_BtlCharacterBase_C['On Play Skill Camera From Special Action'] = function(self, ) end
ABP_BtlCharacterBase_C['On Character Act Command'] = function(self, ) end
ABP_BtlCharacterBase_C['On Prepare Initiate Turn'] = function(self, ) end
ABP_BtlCharacterBase_C['Has Finished Act Start Event'] = function(self, ) end
function ABP_BtlCharacterBase_C:ReceiveBeginPlay() end
ABP_BtlCharacterBase_C['On Receive Act Command'] = function(self, ) end
ABP_BtlCharacterBase_C['On Finish Act Turn'] = function(self, ) end
---@param pNiagara UNiagaraComponent
function ABP_BtlCharacterBase_C:DestroyEffect(pNiagara) end
function ABP_BtlCharacterBase_C:ToEndTurn() end
---@param CriticalHindrance boolean
---@param Rapid boolean
---@param HalfMode boolean
function ABP_BtlCharacterBase_C:HideForOtherAction(CriticalHindrance, Rapid, HalfMode) end
function ABP_BtlCharacterBase_C:ShowFromHiding() end
function ABP_BtlCharacterBase_C:EndWaitTurn() end
---@param Color FColor
function ABP_BtlCharacterBase_C:SetStatusColor(Color) end
function ABP_BtlCharacterBase_C:PlayReflectionEffect() end
function ABP_BtlCharacterBase_C:PlayAbsorptionEffect() end
---@param DeltaSeconds float
function ABP_BtlCharacterBase_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlCharacterBase_C:ResetAlongWithRelocation() end
---@param Visible boolean
function ABP_BtlCharacterBase_C:SetVisibleFromCode(Visible) end
---@param Enable boolean
function ABP_BtlCharacterBase_C:SetupForEventMode(Enable) end
ABP_BtlCharacterBase_C['On Finish Act Turn to End Proc'] = function(self, ) end
function ABP_BtlCharacterBase_C:EnemiesLookatThisCharacter() end
ABP_BtlCharacterBase_C['Has Finished Bad Status Damage Scene'] = function(self, ) end
---@param startingPosition float
---@param UseBlendSetting boolean
---@param Blend float
---@param IgnoreWhenSamePose boolean
function ABP_BtlCharacterBase_C:PlayWaitAnimation(startingPosition, UseBlendSetting, Blend, IgnoreWhenSamePose) end
---@param EntryPoint int32
function ABP_BtlCharacterBase_C:ExecuteUbergraph_BP_BtlCharacterBase(EntryPoint) end
function ABP_BtlCharacterBase_C:OnEscapeFinish__DelegateSignature() end
---@param Visible boolean
function ABP_BtlCharacterBase_C:OnCallGunVisibility__DelegateSignature(Visible) end
---@param Visible boolean
function ABP_BtlCharacterBase_C:OnCallWeaponVisibility__DelegateSignature(Visible) end
ABP_BtlCharacterBase_C['On End Action Turn__DelegateSignature'] = function(self, ) end


