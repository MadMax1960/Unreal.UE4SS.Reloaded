---@meta

---@class ABP_FldPlayerDUNGEON_C : ABP_FldPlayer_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SizeCheck UStaticMeshComponent
---@field DashAttackArea UChildActorComponent
---@field ObjectAutoDestroyArea UChildActorComponent
---@field TargetDetectAreaLongRange UChildActorComponent
---@field AttackAreaLongRange UChildActorComponent
---@field SearchArea UChildActorComponent
---@field PostProcess UPostProcessComponent
---@field FldPartnerStartPointComp2 UFldPartnerStartPointComp
---@field FldPartnerStartPointComp1 UFldPartnerStartPointComp
---@field FldPartnerStartPointComp0 UFldPartnerStartPointComp
---@field FldPartnerPointComp5 UFldPartnerPointComp
---@field FldPartnerPointComp4 UFldPartnerPointComp
---@field FldPartnerPointComp3 UFldPartnerPointComp
---@field FldPartnerPointComp2 UFldPartnerPointComp
---@field FldPartnerPointComp1 UFldPartnerPointComp
---@field FldPartnerPointComp UFldPartnerPointComp
---@field FldPlayerDungeonComp UFldPlayerDungeonComp
---@field AttackArea UChildActorComponent
local ABP_FldPlayerDUNGEON_C = {}

function ABP_FldPlayerDUNGEON_C:SetSpeedThreshold() end
function ABP_FldPlayerDUNGEON_C:ReceiveBeginPlay() end
function ABP_FldPlayerDUNGEON_C:SetSpeedThreshold_Event() end
function ABP_FldPlayerDUNGEON_C:EnableForceWaitPose_Event() end
function ABP_FldPlayerDUNGEON_C:DisableForceWaitPose_Event() end
function ABP_FldPlayerDUNGEON_C:EnableIsTurned_Event() end
---@param EntryPoint int32
function ABP_FldPlayerDUNGEON_C:ExecuteUbergraph_BP_FldPlayerDUNGEON(EntryPoint) end


