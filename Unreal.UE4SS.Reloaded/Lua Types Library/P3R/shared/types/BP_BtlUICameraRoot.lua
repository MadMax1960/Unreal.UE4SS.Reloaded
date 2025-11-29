---@meta

---@class ABP_BtlUICameraRoot_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field TidyAnimation___Track_0_9001B44A4E14D23A40EF6B8FD41245CB FVector
---@field TidyAnimation__Direction_9001B44A4E14D23A40EF6B8FD41245CB ETimelineDirection::Type
---@field TidyAnimation UTimelineComponent
---@field Camera ACameraActor
---@field UIPosZ float
---@field UIRotX float
---@field UIRotZ float
---@field UICranePitch float
---@field UICraneYaw float
---@field UICraneLength float
---@field SilPosZ float
---@field SilRotX float
---@field SilRotZ float
---@field SilCranePitch float
---@field SilCraneYaw float
---@field SilCraneLength float
---@field SilCamera ACameraActor
---@field UI0 AActor
---@field EncountID FName
---@field Yaw float
---@field Pitch float
---@field UI1 AActor
---@field ['Root Component'] USceneComponent
---@field UI2 AActor
---@field Sil0 AActor
---@field Sil1 AActor
---@field Sil2 AActor
---@field lerpYaw float
---@field lerpPitch float
---@field TidyPos FVector
---@field LerpTidyPos FVector
---@field UI3 AActor
---@field Sil3 AActor
---@field RotZLerp float
---@field RotZParam float
---@field BtlCommandTheurgiaNoUseCameraTable UDataTable
---@field BtlCommandTheurgiaCameraTable UDataTable
---@field BtlCommandItemCameraTable UDataTable
---@field BtlCommandCameraTable UDataTable
local ABP_BtlUICameraRoot_C = {}

---@param InputPin float
---@return float
function ABP_BtlUICameraRoot_C:CalcLoopAngle(InputPin) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToTargetSelect(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToStrategy(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToTheurgia(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToGuard(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveToTop(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToItem(Actor, Lerp) end
---@param Actor ABtlActor
---@param Lerp float
function ABP_BtlUICameraRoot_C:MoveTopToSkill(Actor, Lerp) end
---@param Actor ABtlActor
ABP_BtlUICameraRoot_C['Set Default Param'] = function(self, Actor) end
function ABP_BtlUICameraRoot_C:UICameraUpdate() end
function ABP_BtlUICameraRoot_C:DestroyCamera() end
function ABP_BtlUICameraRoot_C:TidyAnimation__FinishedFunc() end
function ABP_BtlUICameraRoot_C:TidyAnimation__UpdateFunc() end
function ABP_BtlUICameraRoot_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_BtlUICameraRoot_C:ExecuteUbergraph_BP_BtlUICameraRoot(EntryPoint) end


