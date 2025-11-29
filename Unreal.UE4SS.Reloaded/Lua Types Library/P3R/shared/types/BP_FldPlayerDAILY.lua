---@meta

---@class ABP_FldPlayerDAILY_C : ABP_FldPlayer_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FldPlayerDailyComp UFldPlayerDailyComp
---@field FollowerPoint_Single UFldFollowerPointComp
---@field FollowerPoint_03 UFldFollowerPointComp
---@field FollowerPoint_02 UFldFollowerPointComp
---@field FollowerPoint_01 UFldFollowerPointComp
local ABP_FldPlayerDAILY_C = {}

function ABP_FldPlayerDAILY_C:SetSpeedThreshold() end
function ABP_FldPlayerDAILY_C:ReceiveBeginPlay() end
function ABP_FldPlayerDAILY_C:SetSpeedThresholdDelegate_Event() end
function ABP_FldPlayerDAILY_C:EnableForceWaitPose_Event() end
function ABP_FldPlayerDAILY_C:DisableForceWaitPose_Event() end
function ABP_FldPlayerDAILY_C:EnableIsTurned_Event() end
---@param EntryPoint int32
function ABP_FldPlayerDAILY_C:ExecuteUbergraph_BP_FldPlayerDAILY(EntryPoint) end


