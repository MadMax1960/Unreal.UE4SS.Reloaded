---@meta

---@class UWBP_EventSkipWidget_C : UEventSkipWidgetDelegate
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Spawn Transform'] FTransform
---@field EventSkipEffect ABtlGuiRushEffect
---@field OtNum int32
---@field ['ターゲット'] UEventSkipWidgetDelegate
local UWBP_EventSkipWidget_C = {}

function UWBP_EventSkipWidget_C:Destruct() end
---@param bSetEffect boolean
function UWBP_EventSkipWidget_C:OnEventDispatcher(bSetEffect) end
---@param MyGeometry FGeometry
---@param inDeltaTime float
function UWBP_EventSkipWidget_C:Tick(MyGeometry, inDeltaTime) end
function UWBP_EventSkipWidget_C:Construct() end
---@param EntryPoint int32
function UWBP_EventSkipWidget_C:ExecuteUbergraph_WBP_EventSkipWidget(EntryPoint) end


