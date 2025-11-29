---@meta

---@class ABP_BtlGuiPersonaStatus_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiList UBtlGuiListComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field BtlGuiPersonaStatus UBtlGuiPersonaStatusComponent
---@field IsCommentaryOpen boolean
---@field IsSkillHelpOpen boolean
---@field IsStrategy boolean
---@field IsUpdateEnable boolean
---@field BindTime float
local ABP_BtlGuiPersonaStatus_C = {}

function ABP_BtlGuiPersonaStatus_C:GuiActorBindAction() end
function ABP_BtlGuiPersonaStatus_C:GuiActorUnbindAction() end
function ABP_BtlGuiPersonaStatus_C:PushCancel() end
function ABP_BtlGuiPersonaStatus_C:PushRL() end
function ABP_BtlGuiPersonaStatus_C:PushOk() end
function ABP_BtlGuiPersonaStatus_C:PushL1() end
function ABP_BtlGuiPersonaStatus_C:PushR1() end
function ABP_BtlGuiPersonaStatus_C:pushL2() end
function ABP_BtlGuiPersonaStatus_C:GuiActorBeginDestroy() end
---@param flag boolean
---@param Param int32
function ABP_BtlGuiPersonaStatus_C:GuiActorStateInit(flag, Param) end
function ABP_BtlGuiPersonaStatus_C:GuiActorStateExit() end
---@param DeltaTime float
function ABP_BtlGuiPersonaStatus_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiPersonaStatus_C:GuiActorEncountStart() end
function ABP_BtlGuiPersonaStatus_C:GuiActorEncountEnd() end
---@param EntryPoint int32
function ABP_BtlGuiPersonaStatus_C:ExecuteUbergraph_BP_BtlGuiPersonaStatus(EntryPoint) end


