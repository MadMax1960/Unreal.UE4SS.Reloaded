---@meta

---@class ABP_MainCharaBase_C : ABP_HumanBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_MainCharaBase_C = {}

function ABP_MainCharaBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_MainCharaBase_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_MainCharaBase_C:ExecuteUbergraph_BP_MainCharaBase(EntryPoint) end


