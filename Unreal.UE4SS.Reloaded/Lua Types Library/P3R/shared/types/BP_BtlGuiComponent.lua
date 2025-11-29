---@meta

---@class UBP_BtlGuiComponent_C : UAppActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['List Move Ahead'] boolean
---@field EnemyList TArray<ABtlActor>
---@field ['Target Index'] int32
---@field ActionManager UBP_BtlActionManager_C
---@field TargetsManager UBP_BtlTargetManager_C
---@field BtlCore UBtlCoreComponent
---@field CharaCameraRoot AActor
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field BtlInput UBtlInputComponent
---@field GuiCore ABP_BtlGuiCore_C
---@field IsCompleteInitation boolean
---@field CommandID int32
---@field OnDebugKill FBP_BtlGuiComponent_COnDebugKill
---@field StateManager ABtlGuiStateManager
---@field UICamera UBP_BtlUICameraComponent_C
---@field PremCommandID int32
---@field prevTargetList TArray<ABtlActor>
---@field PrevCommandType EBtlCommandType
---@field PrevActiveActor ABtlActor
---@field IsCreateEnemyList boolean
---@field OnPromiseOK FBP_BtlGuiComponent_COnPromiseOK
---@field OnPromiseCANCEL FBP_BtlGuiComponent_COnPromiseCANCEL
---@field IsFirstCreateSkillList boolean
---@field IsFirstCreateItemList boolean
---@field NaviActionID int32
---@field NaviPersonaID int32
---@field NaviTarget ABtlActor
---@field AgeingSkillList TArray<int32>
---@field AgeingTargetList TArray<ABtlActor>
---@field StockIndexList TArray<int32>
---@field UIColorModelList TArray<ABP_BtlUIColorModel_C>
---@field MPC_LineStream UMaterialParameterCollection
---@field isLifeStreamSet boolean
---@field onCallCutinModde FBP_BtlGuiComponent_COnCallCutinModde
---@field MPC_RadialBlurHLSL UMaterialParameterCollection
---@field MPC_SpeedLines UMaterialParameterCollection
---@field PC_RadialBlurHLSL FName
---@field PC_SpeedLines FName
---@field DefaultRadialBlur float
---@field DefaultSpeedLines float
---@field OnAsyncLoadCompleted FBP_BtlGuiComponent_COnAsyncLoadCompleted
---@field isBtlResourceCompleted boolean
---@field EnemyPremCommandID int32
---@field EnemyprevTargetList TArray<ABtlActor>
---@field EnemyPrevCommandType EBtlCommandType
---@field EnemyPrevActiveActor ABtlActor
---@field PushOptionButton boolean
---@field FirstTopUIMove boolean
---@field AttrWork EBtlDataAttr
---@field PersonaStatusClosing boolean
---@field FukaCutinPlaying boolean
---@field TopUIDelayFrame int32
---@field SetupCompleted boolean
---@field IsAsyncLoadCompleted boolean
---@field IsRequestTutorial boolean
---@field DelayCreateTargetList boolean
local UBP_BtlGuiComponent_C = {}

---@param bOut boolean
UBP_BtlGuiComponent_C['Is Delay Create Target List'] = function(self, bOut) end
---@param CommandPos FVector2D
---@param BoundaryPos FVector2D
function UBP_BtlGuiComponent_C:GetTuoUICommandPosOffset(CommandPos, BoundaryPos) end
---@param Visible boolean
function UBP_BtlGuiComponent_C:SetWeaponVisibleSilluette(Visible) end
function UBP_BtlGuiComponent_C:ProcDebugKill() end
function UBP_BtlGuiComponent_C:SillhouetteModelDestroy() end
---@param BtlCore UBtlCoreComponent
function UBP_BtlGuiComponent_C:ModelAsyncLoadStartMainCharacter(BtlCore) end
---@param Completed boolean
function UBP_BtlGuiComponent_C:ModelChkAsyncLoad(Completed) end
---@param BtlCore UBtlCoreComponent
function UBP_BtlGuiComponent_C:ModelAsyncLoadStart(BtlCore) end
function UBP_BtlGuiComponent_C:ClearDamagePanel() end
function UBP_BtlGuiComponent_C:ClearKeyHelp() end
---@param Visible boolean
function UBP_BtlGuiComponent_C:KeyhelpVisible(Visible) end
---@param help EBtlGuiIconKeyHelp
---@param disableParam boolean
function UBP_BtlGuiComponent_C:SetKeyHelp(help, disableParam) end
---@param Actor ABtlActor
function UBP_BtlGuiComponent_C:SupportOffTargetInfo(Actor) end
---@param skillId int32
---@param Type EBtlCommandType
---@param SendCorrespondList TArray<ABtlActor>
---@param Useable boolean
function UBP_BtlGuiComponent_C:CheckSkillUseableUserList(skillId, Type, SendCorrespondList, Useable) end
---@param skillId int32
---@param Type EBtlCommandType
---@param CostCheckOnly boolean
---@param Useable boolean
function UBP_BtlGuiComponent_C:CheckSkillUseable(skillId, Type, CostCheckOnly, Useable) end
---@param Lock boolean
function UBP_BtlGuiComponent_C:CheckSillhouetteLock(Lock) end
---@param SilCamera ACameraActor
function UBP_BtlGuiComponent_C:GetSillhouetteCamera(SilCamera) end
---@param IsTheurgiaGun boolean
function UBP_BtlGuiComponent_C:SetSilluetteTheutgiaGun(IsTheurgiaGun) end
---@param NoAnimation boolean
function UBP_BtlGuiComponent_C:ReleaseTargetInfo(NoAnimation) end
---@param Actor ABtlActor
---@param NoAnimation boolean
function UBP_BtlGuiComponent_C:SetTargetInfo(Actor, NoAnimation) end
---@param ColorA FLinearColor
---@param ColorB FLinearColor
---@param Visible boolean
function UBP_BtlGuiComponent_C:SetColorSilluetteGun(ColorA, ColorB, Visible) end
---@param LerpTime float
function UBP_BtlGuiComponent_C:SetUICameraLerpTime(LerpTime) end
---@param Completed boolean
function UBP_BtlGuiComponent_C:ChkAsyncLoad(Completed) end
---@param BtlCore UBtlCoreComponent
function UBP_BtlGuiComponent_C:AsyncLoadStart(BtlCore) end
---@param Name FName
---@param GuiActor ABP_BtlGuiBaseActor_C
---@param Sucsess boolean
function UBP_BtlGuiComponent_C:FindGUIActor(Name, GuiActor, Sucsess) end
---@param RadialBlur float
---@param SpeedLines float
function UBP_BtlGuiComponent_C:SetSpeedLinePostProsess(RadialBlur, SpeedLines) end
---@param DeltaTime float
function UBP_BtlGuiComponent_C:UpdateLineStream(DeltaTime) end
---@param Model ABP_BtlUIColorModel_C
function UBP_BtlGuiComponent_C:GetUIColorModel(Model) end
---@param vidible boolean
function UBP_BtlGuiComponent_C:SetPartyPanelVisible(vidible) end
---@return TArray<ABtlActor>
function UBP_BtlGuiComponent_C:GetTargetEnemyList() end
---@param Index int32
function UBP_BtlGuiComponent_C:GetTargetIndex(Index) end
---@param ColorA FLinearColor
---@param ColorB FLinearColor
function UBP_BtlGuiComponent_C:SetColorSilluette(ColorA, ColorB) end
---@param IsUIColor boolean
UBP_BtlGuiComponent_C['SwitchUIColor Silluette'] = function(self, IsUIColor) end
---@param ActorList1 TArray<AActor>
function UBP_BtlGuiComponent_C:GetUIColorModelShowActor(ActorList1) end
---@param ActionList TArray<ABtlActor>
---@param SkipMovingAnimation boolean
function UBP_BtlGuiComponent_C:UpdateTargetListAnim(ActionList, SkipMovingAnimation) end
---@param Array TArray<ABtlActor>
---@param Output_Get int32
function UBP_BtlGuiComponent_C:SetTargetIndex(Array, Output_Get) end
---@param targetList TArray<ABtlActor>
---@param RecoveryHP boolean
---@param RecoverySP boolean
---@param Efficary boolean
function UBP_BtlGuiComponent_C:CheckIsEfficary(targetList, RecoveryHP, RecoverySP, Efficary) end
---@param BtlActor ABtlActor
function UBP_BtlGuiComponent_C:BindOnActCommand(BtlActor) end
function UBP_BtlGuiComponent_C:RefleshEventMode() end
function UBP_BtlGuiComponent_C:StartEventMode() end
---@param IsHPBar boolean
---@param NoAnimation boolean
function UBP_BtlGuiComponent_C:CreateTargetListWrap(IsHPBar, NoAnimation) end
function UBP_BtlGuiComponent_C:ClearTargetList() end
---@param ActionList TArray<ABtlActor>
function UBP_BtlGuiComponent_C:UpdateTargetList(ActionList) end
---@param ActionList TArray<ABtlActor>
---@param IsHPBar boolean
---@param NoAnimation boolean
---@param IsSillhouetteOnly boolean
---@param IsStencilEnemyOnly boolean
function UBP_BtlGuiComponent_C:CreateTargetList(ActionList, IsHPBar, NoAnimation, IsSillhouetteOnly, IsStencilEnemyOnly) end
---@param PromiseType EBtlGuiPromise
function UBP_BtlGuiComponent_C:CallPromise(PromiseType) end
---@param ActiveActor ABtlActor
function UBP_BtlGuiComponent_C:SetupPartyPanelActiveActor(ActiveActor) end
---@param inList TArray<ABtlActor>
---@param OutList TArray<ABtlActor>
function UBP_BtlGuiComponent_C:SortByList(inList, OutList) end
---@param BtlCore UBtlCoreComponent
---@param BtlInput UBtlInputComponent
UBP_BtlGuiComponent_C['On Gui Setup'] = function(self, BtlCore, BtlInput) end
---@param Input_pin boolean
function UBP_BtlGuiComponent_C:SetEnemyVisible(Input_pin) end
---@param InputPin boolean
function UBP_BtlGuiComponent_C:SetUICaptureEnable(InputPin) end
---@param Input_pin boolean
function UBP_BtlGuiComponent_C:SetPlayerVisible(Input_pin) end
---@param InputPin boolean
function UBP_BtlGuiComponent_C:SetBGVisible(InputPin) end
---@param isEnable boolean
function UBP_BtlGuiComponent_C:SetUIVisivle(isEnable) end
---@param NewParam boolean
function UBP_BtlGuiComponent_C:BP_BtlGuiComponent_AutoGenFunc(NewParam) end
function UBP_BtlGuiComponent_C:RefleshCutinMode() end
function UBP_BtlGuiComponent_C:StartCutinMode() end
function UBP_BtlGuiComponent_C:CheckKeyboardInput() end
function UBP_BtlGuiComponent_C:SetCommandCamera() end
---@param Btl_Core UBtlCoreComponent
---@param Btl_Targets UBP_BtlTargetManager_C
---@param Btl_Action UBP_BtlActionManager_C
---@param Btl_Camera UBP_BtlCameraManagerComponent_C
---@param Btl_Input UBtlInputComponent
---@param BtlUICamera UBP_BtlUICameraComponent_C
function UBP_BtlGuiComponent_C:Initiation(Btl_Core, Btl_Targets, Btl_Action, Btl_Camera, Btl_Input, BtlUICamera) end
function UBP_BtlGuiComponent_C:OnRush() end
function UBP_BtlGuiComponent_C:OnUseItem() end
UBP_BtlGuiComponent_C['On TakeOver'] = function(self, ) end
function UBP_BtlGuiComponent_C:OnRequestPrevAction() end
function UBP_BtlGuiComponent_C:OnRequestSkillAgeing() end
function UBP_BtlGuiComponent_C:OnGuard() end
UBP_BtlGuiComponent_C['On Bind Input'] = function(self, ) end
function UBP_BtlGuiComponent_C:CallDebugKill() end
function UBP_BtlGuiComponent_C:OnBindCommandInfo() end
function UBP_BtlGuiComponent_C:ChangeRush() end
---@param InputKey FBtlInputKey
function UBP_BtlGuiComponent_C:CallInputDelegate(InputKey) end
function UBP_BtlGuiComponent_C:DisableRush() end
function UBP_BtlGuiComponent_C:SetEnemyVisibleOFF() end
function UBP_BtlGuiComponent_C:SetUICaptureOFF() end
function UBP_BtlGuiComponent_C:SetPlayerVisibleOFF() end
function UBP_BtlGuiComponent_C:SetBGViibleOFF() end
function UBP_BtlGuiComponent_C:SetUIVisibleOFF() end
function UBP_BtlGuiComponent_C:SetEnemyVisibleON() end
function UBP_BtlGuiComponent_C:SetUICaptureON() end
function UBP_BtlGuiComponent_C:SetPlayerVisibleON() end
function UBP_BtlGuiComponent_C:SetBGVisibleON() end
function UBP_BtlGuiComponent_C:SetUIVisibleON() end
UBP_BtlGuiComponent_C['On Enchant Skill'] = function(self, ) end
UBP_BtlGuiComponent_C['On Attack Melee Weapon'] = function(self, ) end
---@param DeltaSeconds float
function UBP_BtlGuiComponent_C:ReceiveTick(DeltaSeconds) end
UBP_BtlGuiComponent_C['On Initiate Gui'] = function(self, ) end
UBP_BtlGuiComponent_C['On Select Next Target'] = function(self, ) end
UBP_BtlGuiComponent_C['On Select Behind Target'] = function(self, ) end
function UBP_BtlGuiComponent_C:OnGUIDestroyed() end
---@param flag boolean
---@param Number int32
function UBP_BtlGuiComponent_C:OnBindGuiState(flag, Number) end
function UBP_BtlGuiComponent_C:CallPrevState() end
function UBP_BtlGuiComponent_C:CallClearState() end
function UBP_BtlGuiComponent_C:UpdateUICamera() end
---@param EntryPoint int32
function UBP_BtlGuiComponent_C:ExecuteUbergraph_BP_BtlGuiComponent(EntryPoint) end
function UBP_BtlGuiComponent_C:OnAsyncLoadCompleted__DelegateSignature() end
---@param IsCutinMode boolean
function UBP_BtlGuiComponent_C:onCallCutinModde__DelegateSignature(IsCutinMode) end
function UBP_BtlGuiComponent_C:OnPromiseCANCEL__DelegateSignature() end
function UBP_BtlGuiComponent_C:OnPromiseOK__DelegateSignature() end
function UBP_BtlGuiComponent_C:OnDebugKill__DelegateSignature() end


