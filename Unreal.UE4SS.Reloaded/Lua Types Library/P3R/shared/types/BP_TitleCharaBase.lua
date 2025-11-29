---@meta

---@class ABP_TitleCharaBase_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
local ABP_TitleCharaBase_C = {}

function ABP_TitleCharaBase_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_TitleCharaBase_C:ExecuteUbergraph_BP_TitleCharaBase(EntryPoint) end


