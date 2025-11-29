---@meta

---@class UBP_BtlCameraManagerComponent_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MainCamera ACineCameraActor
---@field MainCharacter ABP_BtlCharacterBase_C
---@field SequenceRoot AActor
---@field PlayingSequenceActor ALevelSequenceActor
---@field SystemCamera ACineCameraActor
---@field ChracterList TArray<ABP_BtlCharacterBase_C>
---@field CameraBefore FTransform
---@field CameraAfter FTransform
---@field IsCameraAnim boolean
---@field CharaCameraRoot AActor
---@field ['Targets Manager'] UBP_BtlTargetManager_C
---@field ['Btl Core'] UBtlCoreComponent
---@field SkillCameraStart FTransform
---@field SkillCameraGoal FTransform
---@field HideOtherCharactersMode boolean
---@field CameraParam UDataTable
---@field ShowCameraCollisionMode boolean
---@field AnimTime float
---@field ElapsedAnimTime float
---@field CameraCalc UBP_BtlCameraCalc_C
---@field HideOtherCharactersModeEnchanterOnly boolean
---@field UICamera UBP_BtlUICameraComponent_C
---@field HideOtherCharactersWeakly boolean
---@field HideOtherCharactersRapidly boolean
---@field isRelocationRequest boolean
---@field RelocationMainCharacter ABtlActor
---@field isRelocationTurntableForceReset boolean
---@field ['Except Command Chara'] boolean
---@field CurrentSequenceCamera ACineCameraActor
---@field SeqCamDefaultFOV float
---@field SysCamDefaultFOV float
---@field isFadeinRequest boolean
---@field isRestoreCharaCameraRootWhenCamChange boolean
---@field CameraParam_Astrea UDataTable
local UBP_BtlCameraManagerComponent_C = {}

function UBP_BtlCameraManagerComponent_C:ResetCalcCamera() end
---@param BCD_Camera ACineCameraActor
function UBP_BtlCameraManagerComponent_C:GetCriticalAttackUpshotCamera(BCD_Camera) end
function UBP_BtlCameraManagerComponent_C:RequestFadeinWhenCamChange() end
function UBP_BtlCameraManagerComponent_C:ProcFadein() end
function UBP_BtlCameraManagerComponent_C:CallEnemiesFinalizeSummonFadeinProc() end
---@param CompletlyHide boolean
---@param Rapid boolean
---@param WeaklyHide boolean
function UBP_BtlCameraManagerComponent_C:HideEnemiesWithoutEnchanter(CompletlyHide, Rapid, WeaklyHide) end
---@param Sequence_Actor ALevelSequenceActor
---@param Playing_Transform FTransform
---@param Loop boolean
---@param UsingOtherMainCamera ACineCameraActor
function UBP_BtlCameraManagerComponent_C:PlaySequenceCameraWithBaseTrans(Sequence_Actor, Playing_Transform, Loop, UsingOtherMainCamera) end
function UBP_BtlCameraManagerComponent_C:ClearHidingMode() end
UBP_BtlCameraManagerComponent_C['Coordinate Backshot Persona Hiding '] = function(self, ) end
---@param Targets UBP_BtlTargetManager_C
---@param InitialCamera boolean
---@param PlayFromLeft boolean
function UBP_BtlCameraManagerComponent_C:PlayAnalyzeCamera(Targets, InitialCamera, PlayFromLeft) end
function UBP_BtlCameraManagerComponent_C:SyncEventCamToSystemCam() end
function UBP_BtlCameraManagerComponent_C:RestoreToDefaultParam() end
function UBP_BtlCameraManagerComponent_C:SaveDefaultParam() end
function UBP_BtlCameraManagerComponent_C:ResetRelocationRequest() end
---@param BtlCore UBtlCoreComponent
---@param MainCharacter ABtlActor
---@param TurntableForceReset boolean
function UBP_BtlCameraManagerComponent_C:RequestRelocationWhenCamChange(BtlCore, MainCharacter, TurntableForceReset) end
function UBP_BtlCameraManagerComponent_C:ProcWithCamChange() end
---@param Target UBP_BtlTargetManager_C
---@param Cut int32
function UBP_BtlCameraManagerComponent_C:PlayAttackCharaCamera(Target, Cut) end
function UBP_BtlCameraManagerComponent_C:PlayPlayerEscapeCamera() end
function UBP_BtlCameraManagerComponent_C:PlayPlayerWholeCamera() end
function UBP_BtlCameraManagerComponent_C:HidingProcess() end
function UBP_BtlCameraManagerComponent_C:HideAllPlayers() end
---@param CameraTrans FTransform
---@param BtlTargets UBtlTargetsManagerComponent
function UBP_BtlCameraManagerComponent_C:HidePlayerInCameraEnchanterCircle(CameraTrans, BtlTargets) end
---@param CompletlyHide boolean
---@param Rapid boolean
---@param WeaklyHide boolean
function UBP_BtlCameraManagerComponent_C:HideAllEnemies(CompletlyHide, Rapid, WeaklyHide) end
---@param TargetsManager UBtlTargetsManagerComponent
---@param Enemy boolean
UBP_BtlCameraManagerComponent_C['Check Target Is Enemy Boss'] = function(self, TargetsManager, Enemy) end
---@param Targets UBtlTargetsManagerComponent
---@param Enemy boolean
UBP_BtlCameraManagerComponent_C['Check Target Is Enemy'] = function(self, Targets, Enemy) end
---@param TargetManager UBtlTargetsManagerComponent
---@param ShortRange boolean
function UBP_BtlCameraManagerComponent_C:CheckAttackShortRange(TargetManager, ShortRange) end
---@param TargetManager UBP_BtlTargetManager_C
---@param HideStrong boolean
---@param HideRapid boolean
function UBP_BtlCameraManagerComponent_C:HideOthersInPerformanceLine(TargetManager, HideStrong, HideRapid) end
---@param disable boolean
function UBP_BtlCameraManagerComponent_C:CheckBackshotDisableTargets(disable) end
---@param CharaCameraRoot AActor
function UBP_BtlCameraManagerComponent_C:GetCharaCameraRoot(CharaCameraRoot) end
UBP_BtlCameraManagerComponent_C['Show Hidden Character'] = function(self, ) end
function UBP_BtlCameraManagerComponent_C:PlayPlayerAllSelectCamera() end
function UBP_BtlCameraManagerComponent_C:PlayPlayerSelectCamera() end
function UBP_BtlCameraManagerComponent_C:StopCameraAnimation() end
function UBP_BtlCameraManagerComponent_C:PlayEnemyEscapeCam() end
---@param Btl_Targets UBtlTargetsManagerComponent
function UBP_BtlCameraManagerComponent_C:PlayItemUsingCamera(Btl_Targets) end
---@param useAllTargetsSkill boolean
function UBP_BtlCameraManagerComponent_C:CheckUseAllTargetsCam(useAllTargetsSkill) end
---@param Targets UBP_BtlTargetManager_C
function UBP_BtlCameraManagerComponent_C:PlayHoldupCamera(Targets) end
---@param Targets UBP_BtlTargetManager_C
function UBP_BtlCameraManagerComponent_C:PlayAlloutDamageCamera(Targets) end
function UBP_BtlCameraManagerComponent_C:PlayStandbyCamera() end
---@param TargetMG UBP_BtlTargetManager_C
function UBP_BtlCameraManagerComponent_C:PlaySummonCamera(TargetMG) end
---@param Location FVector
---@param Size float
---@param HideStrong boolean
---@param HideIncludesTargets boolean
function UBP_BtlCameraManagerComponent_C:HideInSphereTrace(Location, Size, HideStrong, HideIncludesTargets) end
---@param CompletlyHide boolean
---@param HideExcludesTargets boolean
function UBP_BtlCameraManagerComponent_C:HideOtherPlayers(CompletlyHide, HideExcludesTargets) end
---@param CompletlyHide boolean
---@param Rapid boolean
---@param WeaklyHide boolean
function UBP_BtlCameraManagerComponent_C:HideOtherEnemiesWithoutBoss(CompletlyHide, Rapid, WeaklyHide) end
---@param CompletlyHide boolean
---@param Rapid boolean
---@param WeaklyHide boolean
function UBP_BtlCameraManagerComponent_C:HideOtherEnemies(CompletlyHide, Rapid, WeaklyHide) end
---@param Characters TArray<ABtlActor>
---@param Enchanter ABtlActor
---@param Targets TArray<ABtlActor>
---@param CompletlyHide boolean
---@param Rapid boolean
---@param WeaklyHide boolean
---@param ExceptBoss boolean
UBP_BtlCameraManagerComponent_C['Hide Characters for Action'] = function(self, Characters, Enchanter, Targets, CompletlyHide, Rapid, WeaklyHide, ExceptBoss) end
---@param Result boolean
---@param useWholeSkill boolean
function UBP_BtlCameraManagerComponent_C:CheckUseGroupCam(Result, useWholeSkill) end
---@param Backshot boolean
function UBP_BtlCameraManagerComponent_C:UseBackShotWholeCamera(Backshot) end
---@param Backshot boolean
function UBP_BtlCameraManagerComponent_C:UseBackShotCamera(Backshot) end
function UBP_BtlCameraManagerComponent_C:RefleshAnim() end
---@param Btl_Targets UBtlTargetsManagerComponent
UBP_BtlCameraManagerComponent_C['Play Enemy Pre Act Cam'] = function(self, Btl_Targets) end
---@param trans FTransform
UBP_BtlCameraManagerComponent_C['Set View Camera '] = function(self, trans) end
---@param DownContinuedCamera boolean
function UBP_BtlCameraManagerComponent_C:PlayEnemyStandbyCam(DownContinuedCamera) end
---@param AnimTime float
UBP_BtlCameraManagerComponent_C['Setup Camera Anim'] = function(self, AnimTime) end
---@param DeltaTime float
function UBP_BtlCameraManagerComponent_C:AnimProcess(DeltaTime) end
---@param Alpha float
function UBP_BtlCameraManagerComponent_C:AnimCamera(Alpha) end
function UBP_BtlCameraManagerComponent_C:ToggleShowingCameraCollision() end
---@param Ratio float
UBP_BtlCameraManagerComponent_C['Get Hide Other Cylinder Ratio'] = function(self, Ratio) end
---@param Enable boolean
---@param CheckEnchanterOnly boolean
---@param HideWeakly boolean
---@param HideRapidly boolean
function UBP_BtlCameraManagerComponent_C:SetHideOthersMode(Enable, CheckEnchanterOnly, HideWeakly, HideRapidly) end
---@param Start FVector
---@param End FVector
---@param Size float
---@param HideStrong boolean
---@param HideRapid boolean
function UBP_BtlCameraManagerComponent_C:HideInBoxTrace(Start, End, Size, HideStrong, HideRapid) end
---@param HideWeak boolean
UBP_BtlCameraManagerComponent_C['Hide Obstacle Character'] = function(self, HideWeak) end
---@param Targets_Manager UBP_BtlTargetManager_C
---@param Transform FTransform
function UBP_BtlCameraManagerComponent_C:CalcAttackCamera(Targets_Manager, Transform) end
---@param Targets UBP_BtlTargetManager_C
---@param EnemyCamera boolean
function UBP_BtlCameraManagerComponent_C:PlayAttackCamera(Targets, EnemyCamera) end
---@param trans FTransform
UBP_BtlCameraManagerComponent_C['Set Camera Transform'] = function(self, trans) end
---@param InterpTime float
function UBP_BtlCameraManagerComponent_C:LookAtTarget(InterpTime) end
---@param Time float
function UBP_BtlCameraManagerComponent_C:SetViewTargetToMainCamera(Time) end
function UBP_BtlCameraManagerComponent_C:InitializeCharaCameraRootTransform() end
function UBP_BtlCameraManagerComponent_C:InitializeRootTransform() end
---@param CharacterTransform FTransform
function UBP_BtlCameraManagerComponent_C:PlayCommandCamera(CharacterTransform) end
---@param SkillData ABP_BtlSkillBase_C
---@param Enchanter ABtlActor
function UBP_BtlCameraManagerComponent_C:PlayEffectSkillCamera(SkillData, Enchanter) end
---@param Btl_Targets UBtlTargetsManagerComponent
---@param NeedHidingOthersProc boolean
function UBP_BtlCameraManagerComponent_C:PlayCalculateSkillCamera(Btl_Targets, NeedHidingOthersProc) end
---@param Btl_Targets UBtlTargetsManagerComponent
---@param TypeName FName
---@param NotInitialShowHidingCharacter boolean
---@param Transform FTransform
UBP_BtlCameraManagerComponent_C['Play Calc Camera'] = function(self, Btl_Targets, TypeName, NotInitialShowHidingCharacter, Transform) end
function UBP_BtlCameraManagerComponent_C:ClearSequenceCamera() end
---@param Sequence_Actor ALevelSequenceActor
---@param TransformBaseActor ABtlActor
---@param Loop boolean
---@param UsingOtherMainCamera ACineCameraActor
function UBP_BtlCameraManagerComponent_C:PlaySequenceCamera(Sequence_Actor, TransformBaseActor, Loop, UsingOtherMainCamera) end
---@param Enchanter ABP_BtlCharacterBase_C
function UBP_BtlCameraManagerComponent_C:SetActCharacter(Enchanter) end
---@param Scene_Component USceneComponent
function UBP_BtlCameraManagerComponent_C:GetMainCameraRoot(Scene_Component) end
---@param BtlTargets UBtlTargetsManagerComponent
---@param SkillData ABP_BtlSkillBase_C
---@param CameraType EBtlSkillCameraType
UBP_BtlCameraManagerComponent_C['On Play Skill Camera'] = function(self, BtlTargets, SkillData, CameraType) end
---@param DeltaSeconds float
function UBP_BtlCameraManagerComponent_C:ReceiveTick(DeltaSeconds) end
UBP_BtlCameraManagerComponent_C['On Play Camera Animation'] = function(self, ) end
UBP_BtlCameraManagerComponent_C['Has Finished Sequence Camera'] = function(self, ) end
---@param EntryPoint int32
function UBP_BtlCameraManagerComponent_C:ExecuteUbergraph_BP_BtlCameraManagerComponent(EntryPoint) end


