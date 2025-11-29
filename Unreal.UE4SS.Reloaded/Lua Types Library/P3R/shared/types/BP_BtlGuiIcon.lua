---@meta

---@class ABP_BtlGuiIcon_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field BP_BtlGuiIconComponent UBP_BtlGuiIconComponent_C
---@field SpeedLinesTimeline_Blur_16B3B37D4F23B54D5526769A6E0C5333 float
---@field SpeedLinesTimeline_Alpha_16B3B37D4F23B54D5526769A6E0C5333 float
---@field SpeedLinesTimeline__Direction_16B3B37D4F23B54D5526769A6E0C5333 ETimelineDirection::Type
---@field SpeedLinesTimeline UTimelineComponent
---@field JyokyoHelpList TArray<ABP_BtlGuiJyokyoHelp_C>
---@field TargetPanelList TArray<ABP_BtlTargetPanel_C>
---@field IsCallDelegate boolean
---@field OutScale float
---@field InScale float
---@field Angle float
---@field DamageLifeBarList TMap<ABP_BtlCharacterBase_C, ABP_BtlGuiLifeBar_C>
---@field IsShiftMode boolean
---@field IsShiftEnable boolean
---@field IsWeakSkill boolean
---@field DamagePanelList TMap<ABP_BtlCharacterBase_C, ABP_BtlGuiDamage2_C>
---@field flipflop boolean
---@field TargetInfo ABP_BtlTargetInfo_C
---@field DamageDefaultPos TMap<ABP_BtlCharacterBase_C, FVector2D>
---@field PotionPatamMap TMap<ABP_BtlCharacterBase_C, int32>
---@field Rush ABP_BtlGuiRush_C
---@field Capture ABP_BtlGuiBaseActor_C
---@field SillhoetteMaterial UMaterialInstanceDynamic
---@field ReserStensil boolean
---@field CameraActoList TArray<ACineCameraActor>
---@field ['LocalizeDebug BP Btl Gui Damage 2'] ABP_BtlGuiDamage2_C
---@field ['LocalizeDebug BP Btl Skill Name Panel'] ABP_BtlSkillNamePanel_C
---@field ['LocalizeDebug BP Btl Gui JyokyoHelp'] ABP_BtlGuiJyokyoHelp_C
local ABP_BtlGuiIcon_C = {}

---@param Damage int32
function ABP_BtlGuiIcon_C:CreateAllAddDamage(Damage) end
function ABP_BtlGuiIcon_C:ClearDamagePanel() end
---@param Actor ABtlActor
function ABP_BtlGuiIcon_C:SupportOffTargetInfo(Actor) end
---@param Visible boolean
---@param BtlCore UBtlCoreComponent
function ABP_BtlGuiIcon_C:KeyhelpVisible(Visible, BtlCore) end
---@param NoAnimation boolean
function ABP_BtlGuiIcon_C:ReleaseTargetInfo(NoAnimation) end
---@param Actor ABtlActor
---@param NoAnimation boolean
function ABP_BtlGuiIcon_C:SetTargetInfo(Actor, NoAnimation) end
---@param Hit EBtlGuiIconHit
---@param Damage int32
---@param DamageSP int32
---@param IsDamage boolean
function ABP_BtlGuiIcon_C:CheckMiss(Hit, Damage, DamageSP, IsDamage) end
---@param Target ABP_BtlCharacterBase_C
function ABP_BtlGuiIcon_C:DeleteLifeBar(Target) end
---@param ActionList TArray<ABtlActor>
---@param SkipMovingAnimation boolean
function ABP_BtlGuiIcon_C:UpdateTargetListAnim(ActionList, SkipMovingAnimation) end
function ABP_BtlGuiIcon_C:CreateTargetSilhouette() end
function ABP_BtlGuiIcon_C:UpdateTargetSillhouette() end
---@param PlayerAdvantage boolean
---@param LifeTime float
function ABP_BtlGuiIcon_C:CreateEncountPanel(PlayerAdvantage, LifeTime) end
---@param IsEnemy boolean
---@param LifeTime float
function ABP_BtlGuiIcon_C:CreateOneMorePanel(IsEnemy, LifeTime) end
---@param ActionList TArray<ABtlActor>
function ABP_BtlGuiIcon_C:UpdateTargetList(ActionList) end
function ABP_BtlGuiIcon_C:ClearTargetList() end
---@param ActionList TArray<ABtlActor>
---@param IsHPBar boolean
---@param IsSillhouetteOnly boolean
---@param IsStencilEnemyOnly boolean
function ABP_BtlGuiIcon_C:CreateTargetList(ActionList, IsHPBar, IsSillhouetteOnly, IsStencilEnemyOnly) end
function ABP_BtlGuiIcon_C:ClearJyokyoHelp() end
---@param genus int32
---@param ID int32
---@param msgNo int32
---@param var1 int32
---@param var2 int32
---@param renderTime float
---@param DelayTime float
---@param flags int32
function ABP_BtlGuiIcon_C:CreateJyokyoHelp(genus, ID, msgNo, var1, var2, renderTime, DelayTime, flags) end
---@param Bisible boolean
function ABP_BtlGuiIcon_C:PartyPanelVisible(Bisible) end
---@param Visible boolean
function ABP_BtlGuiIcon_C:UIPanelVisible(Visible) end
---@param Target ABP_BtlCharacterBase_C
---@param Damage int32
---@param DamageSP int32
---@param Hit EBtlGuiIconHit
---@param DamageType EBtlGuiIconDamageType
---@param portionDamage boolean
---@param isBadStatus boolean
---@param isBadStatusRecovery boolean
---@param isEndure boolean
---@param EndureRadio float
---@param DelayParamHP int32
---@param DelayParamSP int32
function ABP_BtlGuiIcon_C:CreateDamage(Target, Damage, DamageSP, Hit, DamageType, portionDamage, isBadStatus, isBadStatusRecovery, isEndure, EndureRadio, DelayParamHP, DelayParamSP) end
function ABP_BtlGuiIcon_C:SpeedLinesTimeline__FinishedFunc() end
function ABP_BtlGuiIcon_C:SpeedLinesTimeline__UpdateFunc() end
function ABP_BtlGuiIcon_C:CreateSillhouette() end
function ABP_BtlGuiIcon_C:StartSpeedLines() end
function ABP_BtlGuiIcon_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlGuiIcon_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiIcon_C:OnVisibleEvent() end
function ABP_BtlGuiIcon_C:OnHiddenEvent() end
function ABP_BtlGuiIcon_C:GuiActorEncountStart() end
function ABP_BtlGuiIcon_C:GuiActorEncountEnd() end
---@param EntryPoint int32
function ABP_BtlGuiIcon_C:ExecuteUbergraph_BP_BtlGuiIcon(EntryPoint) end


