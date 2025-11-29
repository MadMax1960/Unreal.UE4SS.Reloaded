---@meta

---@class ABP_F001_Route_C : AFldAnimObj
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SK_F001_SymbolRoute USkeletalMeshComponent
local ABP_F001_Route_C = {}

function ABP_F001_Route_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_F001_Route_C:ExecuteUbergraph_BP_F001_Route(EntryPoint) end


