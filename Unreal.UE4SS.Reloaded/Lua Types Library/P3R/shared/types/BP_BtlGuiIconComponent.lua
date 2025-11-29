---@meta

---@class UBP_BtlGuiIconComponent_C : UBtlGuiIconComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field tempHP int32
---@field tempSP int32
---@field tempTarget ABtlActor
---@field tempDamage int32
---@field tempDamageSP int32
---@field tempHit EBtlGuiIconHit
---@field tempDamageType EBtlGuiIconDamageType
---@field tempIsPotionDamage boolean
---@field tempIsBadStatus boolean
---@field tempIsBadStatusRecovery boolean
---@field tempIsEndure boolean
---@field tempStepEndureRadio float
local UBP_BtlGuiIconComponent_C = {}

---@param Data FBtlGuiIconDamage
function UBP_BtlGuiIconComponent_C:CreateDamagePanelForBP(Data) end
---@param genus int32
---@param ID int32
---@param msgNo int32
---@param var1 int32
---@param var2 int32
---@param renderTime float
---@param DelayTime float
---@param forceOverride boolean
---@param flags int32
function UBP_BtlGuiIconComponent_C:RequestJyokyoHelpForBP(genus, ID, msgNo, var1, var2, renderTime, DelayTime, forceOverride, flags) end
function UBP_BtlGuiIconComponent_C:CancelJyokyoHelpForBP() end
---@param Cmd EBtlCommandType
---@param ID int32
---@param IsEnemy boolean
---@param Time float
function UBP_BtlGuiIconComponent_C:CreateSkillNamePanelForBP(Cmd, ID, IsEnemy, Time) end
---@param IsEnemy boolean
---@param Time float
function UBP_BtlGuiIconComponent_C:Start1MoreEffectForBP(IsEnemy, Time) end
---@param IsPlayerAdvantage boolean
---@param Time float
function UBP_BtlGuiIconComponent_C:StartEncountEffectForBP(IsPlayerAdvantage, Time) end
function UBP_BtlGuiIconComponent_C:ClearDamagePanelForBP() end
---@param Damage int32
function UBP_BtlGuiIconComponent_C:CreateTotalDamagePanelForBP(Damage) end
function UBP_BtlGuiIconComponent_C:ClearSkillNamePanelForBP() end
function UBP_BtlGuiIconComponent_C:CreateDamagePanelDelay() end
---@param EntryPoint int32
function UBP_BtlGuiIconComponent_C:ExecuteUbergraph_BP_BtlGuiIconComponent(EntryPoint) end


