---@meta

---@class UBP_BtlEvent_C : UBtlEventController
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Event Assistant'] ABP_BtlEventAssistant_C
---@field ['On End Event'] FBP_BtlEvent_COn End Event
---@field BtlEnvironment UBP_BtlEnvironment_C
local UBP_BtlEvent_C = {}

---@param Has_Event boolean
function UBP_BtlEvent_C:HasEvent(Has_Event) end
---@param Btl_Core UBtlCoreComponent
---@param BtlEnvironment UBP_BtlEnvironment_C
function UBP_BtlEvent_C:SetBtlComponent(Btl_Core, BtlEnvironment) end
function UBP_BtlEvent_C:ReceiveBeginPlay() end
UBP_BtlEvent_C['On Setup'] = function(self, ) end
UBP_BtlEvent_C['On Dispach End Event'] = function(self, ) end
---@param Actor ABtlActor
---@param Type EBtlEventAreaType
function UBP_BtlEvent_C:SetPerformer(Actor, Type) end
function UBP_BtlEvent_C:ResetAllPerformer() end
---@param EntryPoint int32
function UBP_BtlEvent_C:ExecuteUbergraph_BP_BtlEvent(EntryPoint) end
UBP_BtlEvent_C['On End Event__DelegateSignature'] = function(self, ) end


