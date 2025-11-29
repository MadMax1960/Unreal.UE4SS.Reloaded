---@meta

---@class ABP_StaffRollDraw_C : AStaffRollDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['StaffRoll Data'] FStaffRollTableData
local ABP_StaffRollDraw_C = {}

function ABP_StaffRollDraw_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_StaffRollDraw_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_StaffRollDraw_C:ExecuteUbergraph_BP_StaffRollDraw(EntryPoint) end


