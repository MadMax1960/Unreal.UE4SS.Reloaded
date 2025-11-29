---@meta

---@class IBPI_Get_PC0001_Variables_C : IInterface
local IBPI_Get_PC0001_Variables_C = {}

---@param Out_AttachPocket_L_Alpha float
---@param Out_AttachPocket_R_Alpha float
function IBPI_Get_PC0001_Variables_C:Get_AttachPocketAlpha(Out_AttachPocket_L_Alpha, Out_AttachPocket_R_Alpha) end
---@param Out_NotUpdateEnableAttachPocket boolean
function IBPI_Get_PC0001_Variables_C:Get_NotUpdateAttachPocket(Out_NotUpdateEnableAttachPocket) end
---@param Out_IsAttachedBostonBag boolean
function IBPI_Get_PC0001_Variables_C:Get_IsAttachedBostonBag(Out_IsAttachedBostonBag) end
---@param Out_ForceAttachPocket boolean
function IBPI_Get_PC0001_Variables_C:Get_ForceAttachPocket(Out_ForceAttachPocket) end
---@param Out_Result boolean
function IBPI_Get_PC0001_Variables_C:Is_EventPlayAndHaveBag(Out_Result) end


