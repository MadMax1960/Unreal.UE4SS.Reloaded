---@meta

---@class ABP_BtlGuiNavigation_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlDataBase UBtlDataBaseComponent
---@field targetList TArray<ABtlActor>
local ABP_BtlGuiNavigation_C = {}

function ABP_BtlGuiNavigation_C:StartSillhouetteAnimation() end
function ABP_BtlGuiNavigation_C:Completed() end
function ABP_BtlGuiNavigation_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlGuiNavigation_C:GuiActorStateInit(flag, Param) end
function ABP_BtlGuiNavigation_C:CompletedNavigation() end
---@param EntryPoint int32
function ABP_BtlGuiNavigation_C:ExecuteUbergraph_BP_BtlGuiNavigation(EntryPoint) end


