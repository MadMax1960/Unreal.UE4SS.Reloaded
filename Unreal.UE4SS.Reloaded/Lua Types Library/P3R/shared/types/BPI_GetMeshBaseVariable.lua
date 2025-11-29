---@meta

---@class IBPI_GetMeshBaseVariable_C : IInterface
local IBPI_GetMeshBaseVariable_C = {}

---@param Out_foot_r boolean
---@param Out_foot_l boolean
function IBPI_GetMeshBaseVariable_C:Get_Enable_FootIK(Out_foot_r, Out_foot_l) end
---@param Return UAnimInstance
function IBPI_GetMeshBaseVariable_C:Get_AnimBP(Return) end
---@param LookAtHorizontal float
---@param LookAtVertical float
---@param Out_Interp_LookatHair_H float
---@param Out_Interp_LookatHair_V float
---@param PhysicsAlpha_Out float
---@param PhysicsAlpha_Upperbody_Out float
---@param PhysicsAlpha_Lowerbody_Out float
---@param PhysicsAlpha_Hair_Out float
---@param PhysicsAlpha_Jacket_Out float
---@param PhysicsAlpha_Skirt_Out float
function IBPI_GetMeshBaseVariable_C:Get_ABP_CH_MeshBaseVariable(LookAtHorizontal, LookAtVertical, Out_Interp_LookatHair_H, Out_Interp_LookatHair_V, PhysicsAlpha_Out, PhysicsAlpha_Upperbody_Out, PhysicsAlpha_Lowerbody_Out, PhysicsAlpha_Hair_Out, PhysicsAlpha_Jacket_Out, PhysicsAlpha_Skirt_Out) end


