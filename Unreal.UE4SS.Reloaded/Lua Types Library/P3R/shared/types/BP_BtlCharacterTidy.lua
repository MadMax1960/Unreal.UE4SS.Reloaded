---@meta

---@class UBP_BtlCharacterTidy_C : UAppActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CRV_CharaTargetShake UCurveVector
---@field IsShake boolean
---@field ShakeTime float
local UBP_BtlCharacterTidy_C = {}

---@param Positon FVector
function UBP_BtlCharacterTidy_C:GetTargetShakePos(Positon) end
function UBP_BtlCharacterTidy_C:StartTargetShake() end
---@param DeltaSeconds float
function UBP_BtlCharacterTidy_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function UBP_BtlCharacterTidy_C:ExecuteUbergraph_BP_BtlCharacterTidy(EntryPoint) end


