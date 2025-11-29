---@meta

---@class ABP_BtlTargetSelect_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiPersonaStatus UBtlGuiPersonaStatusComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field LerpTimeline_param_26FDEEA840A6F03CE8437BBE96C2EC57 float
---@field LerpTimeline__Direction_26FDEEA840A6F03CE8437BBE96C2EC57 ETimelineDirection::Type
---@field LerpTimeline UTimelineComponent
---@field TempList TArray<ABtlActor>
---@field targetList TArray<ABtlActor>
---@field ListMoveAhead boolean
---@field TargetIndex int32
---@field TargetType EBtlDataTargetType
---@field targetrule uint8
---@field targetarea EBtlDataTargetArea
---@field EnemyNameID int32
---@field IsCreateTargetList boolean
---@field TargetRule2 FBtlDataTargetRule
---@field CheckPlayer boolean
---@field FrameVisible int32
---@field StringWork FString
---@field AttrText FString
---@field IsHP boolean
---@field damageHP boolean
---@field DamageSP boolean
---@field RecoveryHP boolean
---@field RecoverySP boolean
---@field IsCharge boolean
---@field IsSupport boolean
---@field Action ABtlActor
---@field isBadStatus boolean
---@field TargetInfoVisible boolean
---@field FirstSceneInit boolean
---@field help EBtlGuiIconKeyHelp
---@field IsOracle boolean
---@field CheckEnemy boolean
---@field HelpDisableParam boolean
---@field Sillhouette1 UBtlGuiDrawObjectImage
---@field Sillhouette2 UBtlGuiDrawObjectImage
---@field LerpParam float
local ABP_BtlTargetSelect_C = {}

---@param inList TArray<ABtlActor>
---@param OutList TArray<ABtlActor>
function ABP_BtlTargetSelect_C:SortTargetEnemyList(inList, OutList) end
---@param Effecary boolean
function ABP_BtlTargetSelect_C:CheckEffecary(Effecary) end
---@param ID int32
---@param skillId int32
function ABP_BtlTargetSelect_C:CheckItemID(ID, skillId) end
function ABP_BtlTargetSelect_C:LerpTimeline__FinishedFunc() end
function ABP_BtlTargetSelect_C:LerpTimeline__UpdateFunc() end
function ABP_BtlTargetSelect_C:PushOk() end
function ABP_BtlTargetSelect_C:PushCancel() end
function ABP_BtlTargetSelect_C:GuiActorBindAction() end
function ABP_BtlTargetSelect_C:GuiActorUnbindAction() end
function ABP_BtlTargetSelect_C:OnAnalyze() end
function ABP_BtlTargetSelect_C:PushTouch() end
---@param InputKey FBtlInputKey
function ABP_BtlTargetSelect_C:RepInput(InputKey) end
function ABP_BtlTargetSelect_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlTargetSelect_C:GuiActorStateInit(flag, Param) end
function ABP_BtlTargetSelect_C:ChangeStateTargetSelect() end
ABP_BtlTargetSelect_C['On Select Next Target'] = function(self, ) end
ABP_BtlTargetSelect_C['On Select Behind Target'] = function(self, ) end
function ABP_BtlTargetSelect_C:SceneInit() end
function ABP_BtlTargetSelect_C:GuiActorStateExit() end
---@param DeltaTime float
function ABP_BtlTargetSelect_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlTargetSelect_C:StartLerpTimeline() end
---@param EntryPoint int32
function ABP_BtlTargetSelect_C:ExecuteUbergraph_BP_BtlTargetSelect(EntryPoint) end


