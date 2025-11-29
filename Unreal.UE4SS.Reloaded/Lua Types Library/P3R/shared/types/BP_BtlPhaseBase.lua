---@meta

---@class ABP_BtlPhaseBase_C : ABtlPhase
---@field DefaultSceneRoot USceneComponent
local ABP_BtlPhaseBase_C = {}

---@param Class TSubclassOf<AActor>
function ABP_BtlPhaseBase_C:SpawnPhase(Class) end
---@param phase EBtlPhaseType
---@return ABtlPhase
function ABP_BtlPhaseBase_C:CreateNextPhase(phase) end


