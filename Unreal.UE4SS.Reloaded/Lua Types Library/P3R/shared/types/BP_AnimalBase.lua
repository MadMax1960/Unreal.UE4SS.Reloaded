---@meta

---@class ABP_AnimalBase_C : ABP_CharacterBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FaceMesh USkeletalMeshComponent
---@field CostumeMesh USkeletalMeshComponent
---@field Acceleration FVector
---@field PreviousVelocity FVector
---@field PreviousAimYaw float
---@field IsMoving boolean
---@field Speed float
---@field AimYawRate float
---@field MovementInputAmount float
---@field HasMovementInput boolean
local ABP_AnimalBase_C = {}

---@param PawnMovementMode EMovementMode
---@param MovementState ALS_MovementState::Type
---@param PrevMovementState ALS_MovementState::Type
---@param MovementAction ALS_MovementAction::Type
---@param RotationMode ALS_RotationMode::Type
---@param ActualGait ALS_Gait::Type
---@param ActualStance ALS_Stance::Type
---@param ViewMode ALS_ViewMode::Type
---@param OverlayState ALS_OverlayState::Type
function ABP_AnimalBase_C:BPI_Get_CurrentStates(PawnMovementMode, MovementState, PrevMovementState, MovementAction, RotationMode, ActualGait, ActualStance, ViewMode, OverlayState) end
---@param Velocity FVector
---@param Acceleration FVector
---@param MovementInput FVector
---@param IsMoving boolean
---@param HasMovementInput boolean
---@param Speed float
---@param MovementInputAmount float
---@param AimingRotation FRotator
---@param AimYawRate float
function ABP_AnimalBase_C:BPI_Get_EssentialValues(Velocity, Acceleration, MovementInput, IsMoving, HasMovementInput, Speed, MovementInputAmount, AimingRotation, AimYawRate) end
ABP_AnimalBase_C['Cache Values'] = function(self, ) end
---@return FVector
ABP_AnimalBase_C['Calculate Acceleration'] = function(self, ) end
ABP_AnimalBase_C['Set Essential Values'] = function(self, ) end
function ABP_AnimalBase_C:UserConstructionScript() end
---@param NewMovementState ALS_MovementState::Type
function ABP_AnimalBase_C:BPI_Set_MovementState(NewMovementState) end
---@param NewMovementAction ALS_MovementAction::Type
function ABP_AnimalBase_C:BPI_Set_MovementAction(NewMovementAction) end
---@param NewRotationMode ALS_RotationMode::Type
function ABP_AnimalBase_C:BPI_Set_RotationMode(NewRotationMode) end
---@param NewGait ALS_Gait::Type
function ABP_AnimalBase_C:BPI_Set_Gait(NewGait) end
---@param NewViewMode ALS_ViewMode::Type
function ABP_AnimalBase_C:BPI_Set_ViewMode(NewViewMode) end
---@param NewOverlayState ALS_OverlayState::Type
function ABP_AnimalBase_C:BPI_Set_OverlayState(NewOverlayState) end
---@param DeltaSeconds float
function ABP_AnimalBase_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_AnimalBase_C:ExecuteUbergraph_BP_AnimalBase(EntryPoint) end


