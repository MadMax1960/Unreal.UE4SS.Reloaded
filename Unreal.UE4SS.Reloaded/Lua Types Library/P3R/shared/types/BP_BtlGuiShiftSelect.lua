---@meta

---@class ABP_BtlGuiShiftSelect_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field MainCharacter ABtlActor
---@field PlayerList TArray<ABtlActor>
---@field TargetIndex int32
---@field ListMoveAhead boolean
---@field IsCreateTargetList boolean
---@field TargetListTemp TArray<ABtlActor>
---@field targetTemp ABtlActor
local ABP_BtlGuiShiftSelect_C = {}

---@param NoAnimation boolean
function ABP_BtlGuiShiftSelect_C:UpdateTargets(NoAnimation) end
---@param InputPin ABtlActor
function ABP_BtlGuiShiftSelect_C:CheckCurcorType(InputPin) end
function ABP_BtlGuiShiftSelect_C:PushCancel() end
function ABP_BtlGuiShiftSelect_C:GuiActorBindAction() end
function ABP_BtlGuiShiftSelect_C:GuiActorUnbindAction() end
function ABP_BtlGuiShiftSelect_C:PushLR() end
function ABP_BtlGuiShiftSelect_C:PushLL() end
function ABP_BtlGuiShiftSelect_C:PushOk() end
function ABP_BtlGuiShiftSelect_C:PushRL() end
function ABP_BtlGuiShiftSelect_C:GuiActorBeginPlay() end
function ABP_BtlGuiShiftSelect_C:ChangeStateShiftSelect() end
---@param flag boolean
---@param Param int32
function ABP_BtlGuiShiftSelect_C:GuiActorStateInit(flag, Param) end
function ABP_BtlGuiShiftSelect_C:GuiActorStateExit() end
---@param EntryPoint int32
function ABP_BtlGuiShiftSelect_C:ExecuteUbergraph_BP_BtlGuiShiftSelect(EntryPoint) end


