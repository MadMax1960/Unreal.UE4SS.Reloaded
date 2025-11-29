---@meta

---@class USequenceDirector_C : ULevelSequenceDirector
---@field UberGraphFrame FPointerToUberGraphFrame
local USequenceDirector_C = {}

---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_2(BP_BtlEncountAssistant) end
---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_1(BP_BtlEncountAssistant) end
---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_0(BP_BtlEncountAssistant) end
---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:HeroRunStop(BP_BtlEncountAssistant) end
---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:RequestSummonEnemy(BP_BtlEncountAssistant) end
---@param BP_BtlEncountAssistant ABP_BtlEncountAssistant_C
function USequenceDirector_C:RequestSequenceEvent1(BP_BtlEncountAssistant) end
---@param EntryPoint int32
function USequenceDirector_C:ExecuteUbergraph_SequenceDirector(EntryPoint) end


