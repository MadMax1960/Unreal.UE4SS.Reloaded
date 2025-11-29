---@meta

---@class ABP_BtlSequencerObserve_C : ABtlSequencerObserve
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field LevelSequenceActor ALevelSequenceActor
---@field BtlEventAssistant ABP_BtlEventAssistant_C
---@field IsStartObserve boolean
local ABP_BtlSequencerObserve_C = {}

---@param SequenceActor ALevelSequenceActor
---@param IsStart boolean
ABP_BtlSequencerObserve_C['Set Paramater'] = function(self, SequenceActor, IsStart) end
function ABP_BtlSequencerObserve_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlSequencerObserve_C:ReceiveTick(DeltaSeconds) end
---@param InSequenceActor ALevelSequenceActor
---@param InStart boolean
function ABP_BtlSequencerObserve_C:SetParam(InSequenceActor, InStart) end
---@param EntryPoint int32
function ABP_BtlSequencerObserve_C:ExecuteUbergraph_BP_BtlSequencerObserve(EntryPoint) end


