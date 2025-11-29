---@meta

---@class ABP_CampCharaModel_C : ACharacter
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FaceMesh USkeletalMeshComponent
---@field HairMesh USkeletalMeshComponent
---@field CostumeMesh USkeletalMeshComponent
local ABP_CampCharaModel_C = {}

function ABP_CampCharaModel_C:UserConstructionScript() end
function ABP_CampCharaModel_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_CampCharaModel_C:ExecuteUbergraph_BP_CampCharaModel(EntryPoint) end


