---@meta

---@class UBP_AtlEvtActorComponent_C : UAtlEvtActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
local UBP_AtlEvtActorComponent_C = {}

function UBP_AtlEvtActorComponent_C:ResetEvtLocomotionParams() end
function UBP_AtlEvtActorComponent_C:ResetVelocitySimulateParam() end
---@param EntryPoint int32
function UBP_AtlEvtActorComponent_C:ExecuteUbergraph_BP_AtlEvtActorComponent(EntryPoint) end


