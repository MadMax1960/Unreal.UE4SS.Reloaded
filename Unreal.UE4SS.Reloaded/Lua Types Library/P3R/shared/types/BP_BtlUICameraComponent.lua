---@meta

---@class UBP_BtlUICameraComponent_C : UAppActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlCameraManager UBP_BtlCameraManagerComponent_C
---@field UICameraRoot ABP_BtlUICameraRoot_C
---@field UICamera ACameraActor
---@field BtlTargetsManager UBtlTargetsManagerComponent
---@field RotateLerpParam float
---@field IsCallSetCamera boolean
---@field CheckPlayer boolean
---@field MathCameraRoot ABP_BtlUICameraRoot_C
---@field MathCamera ACameraActor
---@field SwingCoefficient float
---@field LerpTime float
---@field lerpSpeed float
---@field guardCurve UCurveFloat
---@field strategyCurve UCurveFloat
---@field DefaultMoveToTop boolean
local UBP_BtlUICameraComponent_C = {}

---@param Action ABtlActor
function UBP_BtlUICameraComponent_C:PlayUICommandCamera(Action) end
---@param Yaw float
---@param Pitch float
---@param Root ABP_BtlUICameraRoot_C
---@param Lerp float
function UBP_BtlUICameraComponent_C:SetPitchYaw(Yaw, Pitch, Root, Lerp) end
---@param vector1 FVector
---@param vector2 FVector
---@param Pitch float
function UBP_BtlUICameraComponent_C:GetCranePitch(vector1, vector2, Pitch) end
function UBP_BtlUICameraComponent_C:SetEncountID() end
---@param Action ABtlActor
---@param TargetManager UBtlTargetsManagerComponent
---@param Transform FTransform
function UBP_BtlUICameraComponent_C:GetCommandCameraTransform(Action, TargetManager, Transform) end
---@param Lerp float
---@param Action ABtlActor
---@param CameraRoot ABP_BtlUICameraRoot_C
---@param RotateExParam FVector
function UBP_BtlUICameraComponent_C:UpdateActorTransform(Lerp, Action, CameraRoot, RotateExParam) end
---@param MainCharacter ABtlActor
---@param TargetManager UBtlTargetsManagerComponent
---@param BossBattle boolean
UBP_BtlUICameraComponent_C['Setup Look At Rot'] = function(self, MainCharacter, TargetManager, BossBattle) end
---@param TargetListCenterPos FVector
function UBP_BtlUICameraComponent_C:MakeTargetListCenterPos(TargetListCenterPos) end
---@param EnemyListCenterPos FVector
function UBP_BtlUICameraComponent_C:MakeEnemyListCenterPos(EnemyListCenterPos) end
---@param Lerp float
---@param Action ABtlActor
---@param CameraRoot ABP_BtlUICameraRoot_C
---@param State EBtlGuiState
---@param BossBattle boolean
---@param DeltaTime float
function UBP_BtlUICameraComponent_C:UpdateCraneParam(Lerp, Action, CameraRoot, State, BossBattle, DeltaTime) end
---@param BtlTargetsManager UBtlTargetsManagerComponent
---@param State EBtlGuiState
---@param BossBattle boolean
---@param RotateExParam FVector
UBP_BtlUICameraComponent_C['UILook At Target'] = function(self, BtlTargetsManager, State, BossBattle, RotateExParam) end
function UBP_BtlUICameraComponent_C:ReceiveBeginPlay() end
---@param EndPlayReason EEndPlayReason::Type
function UBP_BtlUICameraComponent_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function UBP_BtlUICameraComponent_C:ExecuteUbergraph_BP_BtlUICameraComponent(EntryPoint) end


