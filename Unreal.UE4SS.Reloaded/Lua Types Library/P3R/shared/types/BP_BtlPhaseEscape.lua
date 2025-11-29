---@meta

---@class ABP_BtlPhaseEscape_C : ABP_BtlPhaseBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReadyForExit boolean
---@field ElapsedTime float
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field EventAssistant ABP_BtlEventAssistant_C
---@field BtlCore UBtlCoreComponent
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field escapeCount int32
---@field escapeNum int32
---@field isEscapeSkillMode boolean
local ABP_BtlPhaseEscape_C = {}

function ABP_BtlPhaseEscape_C:HideAllEnemies() end
ABP_BtlPhaseEscape_C['Setup All Members Visibility'] = function(self, ) end
function ABP_BtlPhaseEscape_C:AllocateMembers() end
function ABP_BtlPhaseEscape_C:Setup() end
---@return boolean
function ABP_BtlPhaseEscape_C:CheckProgressNextPhaseInBP() end
---@return ABtlPhase
function ABP_BtlPhaseEscape_C:GetNextPhaseInBP() end
function ABP_BtlPhaseEscape_C:UserConstructionScript() end
function ABP_BtlPhaseEscape_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlPhaseEscape_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlPhaseEscape_C:ReceiveDestroyed() end
ABP_BtlPhaseEscape_C['On Fadeout BGM'] = function(self, ) end
ABP_BtlPhaseEscape_C['Has Finished Performance'] = function(self, ) end
ABP_BtlPhaseEscape_C['On Progress Next'] = function(self, ) end
ABP_BtlPhaseEscape_C['Has Finished a character Escaping'] = function(self, ) end
ABP_BtlPhaseEscape_C['Has Finished Escape Skill'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPhaseEscape_C:ExecuteUbergraph_BP_BtlPhaseEscape(EntryPoint) end


