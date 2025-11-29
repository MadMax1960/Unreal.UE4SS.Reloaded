---@meta

---@class ABP_BtlGuiBaseActor_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field InVisible boolean
---@field OnEntryVisivle FBP_BtlGuiBaseActor_COnEntryVisivle
---@field OnEntryHidden FBP_BtlGuiBaseActor_COnEntryHidden
---@field State EBtlGuiState
---@field OnChangeState FBP_BtlGuiBaseActor_COnChangeState
---@field OnAlwaysVisible FBP_BtlGuiBaseActor_COnAlwaysVisible
---@field OnAlwaysHidden FBP_BtlGuiBaseActor_COnAlwaysHidden
---@field isCallBeginPlay boolean
---@field ParentActor ABP_BtlGuiBaseActor_C
---@field NameKey FName
---@field BtlGui UBP_BtlGuiComponent_C
---@field isStateInit boolean
---@field MainState EBtlGuiState
---@field GuiBaseNameList TArray<FName>
---@field GuiBaseItemList TArray<ABP_BtlGuiBaseActor_C>
---@field AlwaysUpdate boolean
---@field OnChangeStateParam FBP_BtlGuiBaseActor_COnChangeStateParam
---@field BindTimer float
---@field BindFlag boolean
local ABP_BtlGuiBaseActor_C = {}

---@param Key FName
function ABP_BtlGuiBaseActor_C:RemoveActorsByKey(Key) end
function ABP_BtlGuiBaseActor_C:RemoveDrawAllItem() end
function ABP_BtlGuiBaseActor_C:BeginPlayOnlyAll() end
---@param BtlGui UBP_BtlGuiComponent_C
function ABP_BtlGuiBaseActor_C:CoreSetRetry(BtlGui) end
---@param BindTimer float
function ABP_BtlGuiBaseActor_C:SetBindTimer(BindTimer) end
---@param State EBtlGuiState
---@param flag boolean
---@param Number int32
function ABP_BtlGuiBaseActor_C:ChangeState(State, flag, Number) end
---@param AlwaysUpdate boolean
function ABP_BtlGuiBaseActor_C:SetAlwaysUpdate(AlwaysUpdate) end
---@param Conpleted boolean
function ABP_BtlGuiBaseActor_C:isReadyAll(Conpleted) end
function ABP_BtlGuiBaseActor_C:BeginPlayAll() end
---@param State EBtlGuiState
ABP_BtlGuiBaseActor_C['Set Personal State'] = function(self, State) end
function ABP_BtlGuiBaseActor_C:RemoveActor() end
function ABP_BtlGuiBaseActor_C:DrawAllItem() end
---@param DeltaTime float
function ABP_BtlGuiBaseActor_C:UpdateAll(DeltaTime) end
---@param Name FName
---@param GuiActor ABP_BtlGuiBaseActor_C
---@param Sucsess boolean
function ABP_BtlGuiBaseActor_C:FindGuiActorByName(Name, GuiActor, Sucsess) end
---@param IsVisible boolean
function ABP_BtlGuiBaseActor_C:SetVisible(IsVisible) end
---@param Child TSubclassOf<AActor>
---@param Name FName
---@param Object ABP_BtlGuiBaseActor_C
---@param Sucsess boolean
function ABP_BtlGuiBaseActor_C:AttachChild(Child, Name, Object, Sucsess) end
---@param DeltaTime float
function ABP_BtlGuiBaseActor_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiBaseActor_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlGuiBaseActor_C:GuiActorStateInit(flag, Param) end
function ABP_BtlGuiBaseActor_C:GuiActorStateExit() end
function ABP_BtlGuiBaseActor_C:GuiActorBeginDestroy() end
function ABP_BtlGuiBaseActor_C:GuiActorBindAction() end
function ABP_BtlGuiBaseActor_C:GuiActorUnbindAction() end
function ABP_BtlGuiBaseActor_C:GuiActorEncountStart() end
function ABP_BtlGuiBaseActor_C:GuiActorEncountEnd() end
function ABP_BtlGuiBaseActor_C:ReceiveDestroyed() end
function ABP_BtlGuiBaseActor_C:GUIBindActionWrap() end
---@param EntryPoint int32
function ABP_BtlGuiBaseActor_C:ExecuteUbergraph_BP_BtlGuiBaseActor(EntryPoint) end
---@param flag boolean
---@param Number int32
function ABP_BtlGuiBaseActor_C:OnChangeStateParam__DelegateSignature(flag, Number) end
function ABP_BtlGuiBaseActor_C:OnAlwaysHidden__DelegateSignature() end
function ABP_BtlGuiBaseActor_C:OnAlwaysVisible__DelegateSignature() end
function ABP_BtlGuiBaseActor_C:OnChangeState__DelegateSignature() end
function ABP_BtlGuiBaseActor_C:OnEntryHidden__DelegateSignature() end
function ABP_BtlGuiBaseActor_C:OnEntryVisivle__DelegateSignature() end


