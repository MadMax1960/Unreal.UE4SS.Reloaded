---@meta

---@class UBP_BtlMontageNotifyHuman_C : UAnimNotify_BtlPlayMontageNotify
---@field ['Notify Type'] EBtlAnimNotify
---@field ['Notify Value'] int32
---@field ['Hit Effect Type'] EBtlAnimNotifyHitEffect
local UBP_BtlMontageNotifyHuman_C = {}

---@param HitType EBtlAnimNotifyHitEffect
---@param str FString
function UBP_BtlMontageNotifyHuman_C:GetHitStrFromNotify(HitType, str) end
---@return FName
function UBP_BtlMontageNotifyHuman_C:GetBattleNotifyName() end
---@return FString
function UBP_BtlMontageNotifyHuman_C:GetNotifyName() end


