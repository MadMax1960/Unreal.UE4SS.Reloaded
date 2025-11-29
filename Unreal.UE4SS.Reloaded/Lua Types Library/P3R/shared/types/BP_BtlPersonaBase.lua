---@meta

---@class ABP_BtlPersonaBase_C : ABP_BtlCharacterBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PersonaCharaBP UChildActorComponent
---@field Timeline_0_NewTrack_0_EEBCA0924DFD4D36883767AF424FB406 float
---@field Timeline_0__Direction_EEBCA0924DFD4D36883767AF424FB406 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PersonaVisual UDataTable
---@field SkillCameraPhysics ULevelSequence
---@field SkillCameraMagic ULevelSequence
---@field NotifySkillPlay FBP_BtlPersonaBase_CNotifySkillPlay
---@field NotifySkillCameraPlay FBP_BtlPersonaBase_CNotifySkillCameraPlay
---@field RequestSkillCameraPlay boolean
---@field RequestSkillPlay boolean
---@field PersonaDIM TArray<UMaterialInstanceDynamic>
---@field ['Curve Summon Alpha'] UCurveFloat
---@field ['Curve Alpha'] UCurveFloat
---@field PersonaSummonLoopEffect UNiagaraComponent
---@field RequestAnim EBtlPersonaAnimationType
---@field PersonaOwner ABP_BtlCharacterBase_C
---@field SkillCameraMagicList TArray<ULevelSequence>
---@field PersonaAppCharacter ABP_PersonaBase_C
---@field DefaultScale FVector
---@field ['Visibility Based Anim Tick Option'] EVisibilityBasedAnimTickOption
---@field SceneAnimMontage UAnimMontage
---@field IsFading boolean
---@field FadeTime float
---@field FadeElapsedTime float
---@field SkillAnimAfterCutinMode boolean
---@field isMonitoringSkillAnimFromCutin boolean
local ABP_BtlPersonaBase_C = {}

---@param PersonaOwner ABtlActor
---@return FTransform
function ABP_BtlPersonaBase_C:GetPersonaTransformFromSkillCondition(PersonaOwner) end
function ABP_BtlPersonaBase_C:StartMonitoringSkillAnimAfterCutin() end
function ABP_BtlPersonaBase_C:MonitorSkillAnimAfterCutin() end
---@param AnimType EBtlPersonaAnimationType
---@param IsAfterCutin boolean
---@param Position float
function ABP_BtlPersonaBase_C:CalcSkillAnimStartingPosition(AnimType, IsAfterCutin, Position) end
---@param Caustics FLinearColor
---@param SummonRim FLinearColor
---@param Opacity float
function ABP_BtlPersonaBase_C:SetPersonaVisual(Caustics, SummonRim, Opacity) end
function ABP_BtlPersonaBase_C:InitAfterCreateAppCharacter() end
---@param Enable boolean
function ABP_BtlPersonaBase_C:SetupEventAnimation(Enable) end
function ABP_BtlPersonaBase_C:RestoreTheurgiaSituation() end
---@param Scale FVector
function ABP_BtlPersonaBase_C:SetupTheurgiaSituation(Scale) end
function ABP_BtlPersonaBase_C:SetPersonaBP() end
function ABP_BtlPersonaBase_C:SetupPhysicsLocation() end
function ABP_BtlPersonaBase_C:SetupMagicLocation() end
---@return FTransform
function ABP_BtlPersonaBase_C:GetPersonaTransformPhysics() end
---@return FTransform
function ABP_BtlPersonaBase_C:GetPersonaTransformMagic() end
---@param Scale FVector
function ABP_BtlPersonaBase_C:GetCharacterScale(Scale) end
---@param Visible boolean
---@param KeepAnim boolean
function ABP_BtlPersonaBase_C:SetVisible(Visible, KeepAnim) end
---@param PersonaSummonLoopEffect UNiagaraComponent
function ABP_BtlPersonaBase_C:GetEmergeEffect(PersonaSummonLoopEffect) end
function ABP_BtlPersonaBase_C:DestroyEmergeEffect() end
---@param LoopEffectOnly boolean
function ABP_BtlPersonaBase_C:ShowEmergeEffectInternal(LoopEffectOnly) end
---@param LoopEffectOnly boolean
function ABP_BtlPersonaBase_C:ShowEmergeEffect(LoopEffectOnly) end
---@param Value float
function ABP_BtlPersonaBase_C:SetPersonaOpacity(Value) end
---@param Value float
function ABP_BtlPersonaBase_C:SetPersonaSummonAlpha(Value) end
function ABP_BtlPersonaBase_C:CreateDIM() end
---@param SkeletalMesh USkeletalMeshComponent
function ABP_BtlPersonaBase_C:GetSkeletalMesh(SkeletalMesh) end
---@param ForCutin boolean
---@return FTransform
function ABP_BtlPersonaBase_C:GetPersonaTransform(ForCutin) end
function ABP_BtlPersonaBase_C:Timeline_0__FinishedFunc() end
function ABP_BtlPersonaBase_C:Timeline_0__UpdateFunc() end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyEnd_0F563E704A8F70393E6FEB831A9E4DC5(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyBegin_0F563E704A8F70393E6FEB831A9E4DC5(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnInterrupted_0F563E704A8F70393E6FEB831A9E4DC5(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnBlendOut_0F563E704A8F70393E6FEB831A9E4DC5(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnCompleted_0F563E704A8F70393E6FEB831A9E4DC5(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyEnd_0F563E704A8F70393E6FEB836877B9A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyBegin_0F563E704A8F70393E6FEB836877B9A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnInterrupted_0F563E704A8F70393E6FEB836877B9A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnBlendOut_0F563E704A8F70393E6FEB836877B9A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnCompleted_0F563E704A8F70393E6FEB836877B9A4(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyEnd_00B369494CAD1145A2628791C978A870(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnNotifyBegin_00B369494CAD1145A2628791C978A870(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnInterrupted_00B369494CAD1145A2628791C978A870(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnBlendOut_00B369494CAD1145A2628791C978A870(NotifyName) end
---@param NotifyName FName
function ABP_BtlPersonaBase_C:OnCompleted_00B369494CAD1145A2628791C978A870(NotifyName) end
---@param LoopEffectOnly boolean
ABP_BtlPersonaBase_C['On Ready Showing Emerge Effect'] = function(self, LoopEffectOnly) end
ABP_BtlPersonaBase_C['On Anim Emerge'] = function(self, ) end
function ABP_BtlPersonaBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPersonaBase_C:ReceiveTick(DeltaSeconds) end
---@param Type EBtlPersonaAnimationType
---@param UseCustomBlend boolean
---@param Blend float
ABP_BtlPersonaBase_C['Request Persona Animation'] = function(self, Type, UseCustomBlend, Blend) end
---@param IsAfterCutin boolean
ABP_BtlPersonaBase_C['Request Magic Skill Animation'] = function(self, IsAfterCutin) end
function ABP_BtlPersonaBase_C:ReceiveDestroyed() end
---@param IsAfterCutin boolean
ABP_BtlPersonaBase_C['Request Phisical Skill Animation'] = function(self, IsAfterCutin) end
---@param Type EBtlPersonaSceneAnimationType
---@param UseCustomBlend boolean
---@param Blend float
ABP_BtlPersonaBase_C['Request Persona Scene Animation'] = function(self, Type, UseCustomBlend, Blend) end
ABP_BtlPersonaBase_C['Request Fadeout'] = function(self, ) end
---@param PersonaOwner ABtlActor
function ABP_BtlPersonaBase_C:SetPersonaOwner(PersonaOwner) end
ABP_BtlPersonaBase_C['On Play Summon Effect'] = function(self, ) end
ABP_BtlPersonaBase_C['On Call Skill Shot From Cutin'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPersonaBase_C:ExecuteUbergraph_BP_BtlPersonaBase(EntryPoint) end
function ABP_BtlPersonaBase_C:NotifySkillCameraPlay__DelegateSignature() end
function ABP_BtlPersonaBase_C:NotifySkillPlay__DelegateSignature() end


