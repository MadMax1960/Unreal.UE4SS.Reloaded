---@meta

---@class UABP_PC0001_C : UABP_CH_MeshBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IsEventABP boolean
---@field IsDungeonABP boolean
---@field Is_PlayingDefault boolean
---@field Is_PlayingArm_L boolean
---@field Is_PlayingBattle boolean
---@field SkeletalMesh USkeletalMesh
---@field ForceAttachPocket boolean
---@field Montage_OutPocket UAnimMontage
---@field Montage_InPocket UAnimMontage
---@field OverrideForceAttachPocket boolean
---@field Anim_MoveToMain UAnimSequence
---@field Anim_WalkInPocket UAnimSequence
---@field Curve_Running UCurveFloat
---@field Is_AttachedTravelBag boolean
---@field NotUpdate_AttachPocket boolean
---@field IsTurned boolean
---@field AttachPocket_L_Alpha float
---@field AttachPocket_R_Alpha float
---@field Is_PlayMoveToMain boolean
---@field ACL_AttachPocket TSubclassOf<UAnimInstance>
---@field Disable_ForceAttachPocket_InEventHaveBag boolean
---@field Event_NoAttach_Pocket_L boolean
local UABP_PC0001_C = {}

---@param Out_AttachPocket_L_Alpha float
---@param Out_AttachPocket_R_Alpha float
function UABP_PC0001_C:Get_AttachPocketAlpha(Out_AttachPocket_L_Alpha, Out_AttachPocket_R_Alpha) end
---@param Out_NotUpdateEnableAttachPocket boolean
function UABP_PC0001_C:Get_NotUpdateAttachPocket(Out_NotUpdateEnableAttachPocket) end
---@param Out_IsAttachedBostonBag boolean
function UABP_PC0001_C:Get_IsAttachedBostonBag(Out_IsAttachedBostonBag) end
---@param Out_ForceAttachPocket boolean
function UABP_PC0001_C:Get_ForceAttachPocket(Out_ForceAttachPocket) end
---@param Out_Result boolean
function UABP_PC0001_C:Is_EventPlayAndHaveBag(Out_Result) end
---@param Out_IsDungeon boolean
---@param Out_IsEvent boolean
UABP_PC0001_C['Get Is Dungeon And Event'] = function(self, Out_IsDungeon, Out_IsEvent) end
---@param IsLink boolean
function UABP_PC0001_C:Link_AttachPocket(IsLink) end
function UABP_PC0001_C:Disable_FnAttachPocket() end
function UABP_PC0001_C:Set_IsTurned() end
function UABP_PC0001_C:Set_AttachPocketAlpha() end
UABP_PC0001_C['Set Not Update Enable Attach Pocket'] = function(self, ) end
function UABP_PC0001_C:Set_NoCopyAttachShoulder() end
function UABP_PC0001_C:Set_DisableUpperBodyLayer() end
function UABP_PC0001_C:Modify_LocomotionState() end
function UABP_PC0001_C:Set_MeandelingOffset() end
function UABP_PC0001_C:Set_IsInPocket() end
function UABP_PC0001_C:Set_ForceAttachPocket() end
function UABP_PC0001_C:Disable_ForceAttachPocket() end
---@return boolean
UABP_PC0001_C['Is Walk and in Pocket'] = function(self, ) end
---@param OutIsInPocketWalking boolean
function UABP_PC0001_C:IsInPocketWalking(OutIsInPocketWalking) end
---@param DeltaTimeX float
function UABP_PC0001_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_PC0001_C:LoadEnd_ABP() end
function UABP_PC0001_C:ResetStopAnimation() end
function UABP_PC0001_C:AnimNotify_EnterMoving() end
function UABP_PC0001_C:PlayMoveToMain() end
function UABP_PC0001_C:PlayMainToMove() end
function UABP_PC0001_C:LinkPhysics() end
function UABP_PC0001_C:UnlinkPhysics() end
function UABP_PC0001_C:BlueprintInitializeAnimation() end
---@param EntryPoint int32
function UABP_PC0001_C:ExecuteUbergraph_ABP_PC0001(EntryPoint) end


