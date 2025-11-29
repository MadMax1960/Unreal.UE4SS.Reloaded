---@meta

---@class ABP_BtlGuiCore_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlInput UBtlInputComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field PlayCameraExParamTimeline___Track_0_0C6C53014A6D486EB6E52EB01CB738CF FVector
---@field PlayCameraExParamTimeline__Direction_0C6C53014A6D486EB6E52EB01CB738CF ETimelineDirection::Type
---@field PlayCameraExParamTimeline UTimelineComponent
---@field DebugToggle int32
---@field NewVar_0_0 UMaterialInstanceDynamic
---@field Text FString
---@field GuiIcon ABP_BtlGuiIcon_C
---@field CameraExParam FVector
---@field attachCompleted boolean
---@field AsyncLoadMaxCount int32
---@field AsyncloadCount int32
---@field AsyncLoadNum int32
---@field ResidentMontage TArray<UAnimMontage>
---@field ResidentNiagara TArray<UNiagaraSystem>
---@field DrawEnable boolean
local ABP_BtlGuiCore_C = {}

---@param skillId int32
---@param IsEnemy boolean
---@param Time float
function ABP_BtlGuiCore_C:CreateSkillNameWithTime(skillId, IsEnemy, Time) end
---@param Completed boolean
function ABP_BtlGuiCore_C:CheckAttachComplered(Completed) end
function ABP_BtlGuiCore_C:ClearDamagePanel() end
---@param Visible boolean
function ABP_BtlGuiCore_C:VisibleKeyHelp(Visible) end
---@param Action ABtlActor
---@param skillId int32
function ABP_BtlGuiCore_C:UpdateParamPartyPanel(Action, skillId) end
---@param Actor ABtlActor
function ABP_BtlGuiCore_C:SupportOffTargetInfo(Actor) end
---@param IsRush boolean
---@param PushButton boolean
function ABP_BtlGuiCore_C:SetRushVisible(IsRush, PushButton) end
---@param NoAnimation boolean
function ABP_BtlGuiCore_C:ReleaseTargetInfo(NoAnimation) end
---@param Actor ABtlActor
---@param NoAnimation boolean
function ABP_BtlGuiCore_C:SetTargetInfo(Actor, NoAnimation) end
function ABP_BtlGuiCore_C:CallAddLoadPersona() end
---@param IsEnemy boolean
function ABP_BtlGuiCore_C:CreateSummonText(IsEnemy) end
---@param ItemId int32
---@param IsEnemy boolean
function ABP_BtlGuiCore_C:SetItemName(ItemId, IsEnemy) end
function ABP_BtlGuiCore_C:ClearSkillName() end
---@param Key int32
---@param IsEnemy boolean
function ABP_BtlGuiCore_C:CreateCommonText(Key, IsEnemy) end
---@param skillId int32
---@param IsEnemy boolean
function ABP_BtlGuiCore_C:CreateSkillName(skillId, IsEnemy) end
function ABP_BtlGuiCore_C:ClearKeyHelpOffset() end
---@param vidible boolean
function ABP_BtlGuiCore_C:SetPartyPanelVisible(vidible) end
---@param IsUIColor boolean
function ABP_BtlGuiCore_C:SwitchUIColorSilluette(IsUIColor) end
---@param ActionList TArray<ABtlActor>
---@param SkipMovingAnimation boolean
function ABP_BtlGuiCore_C:UpdateTargetListAnim(ActionList, SkipMovingAnimation) end
function ABP_BtlGuiCore_C:ClearTargetList() end
---@param ActionList TArray<ABtlActor>
function ABP_BtlGuiCore_C:UpdateTargetList(ActionList) end
---@param ActionList TArray<ABtlActor>
---@param IsHPBar boolean
---@param IsSillhouetteOnly boolean
---@param IsStencilEnemyOnly boolean
function ABP_BtlGuiCore_C:CreateTargetList(ActionList, IsHPBar, IsSillhouetteOnly, IsStencilEnemyOnly) end
---@param PromiseTpye uint8
function ABP_BtlGuiCore_C:SetPromiseType(PromiseTpye) end
---@param ActiveActor ABtlActor
function ABP_BtlGuiCore_C:SetupPartyPanelActiveActor(ActiveActor) end
---@param Enable boolean
function ABP_BtlGuiCore_C:SetCaptureEnable(Enable) end
---@param Visible boolean
function ABP_BtlGuiCore_C:UIPanelVisible(Visible) end
---@param Visible boolean
function ABP_BtlGuiCore_C:PartyPanelVisible(Visible) end
function ABP_BtlGuiCore_C:ClearKeyHelp() end
function ABP_BtlGuiCore_C:UpdateCapture() end
---@param DeltaTime float
function ABP_BtlGuiCore_C:UpdateDraw(DeltaTime) end
---@param Visible boolean
function ABP_BtlGuiCore_C:silhouetteBisible(Visible) end
---@param Visible boolean
function ABP_BtlGuiCore_C:TopUIBisible(Visible) end
function ABP_BtlGuiCore_C:PlayCameraExParamTimeline__FinishedFunc() end
function ABP_BtlGuiCore_C:PlayCameraExParamTimeline__UpdateFunc() end
function ABP_BtlGuiCore_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlGuiCore_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiCore_C:StartCameraExParam() end
---@param DeltaSeconds float
function ABP_BtlGuiCore_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_BtlGuiCore_C:ExecuteUbergraph_BP_BtlGuiCore(EntryPoint) end


