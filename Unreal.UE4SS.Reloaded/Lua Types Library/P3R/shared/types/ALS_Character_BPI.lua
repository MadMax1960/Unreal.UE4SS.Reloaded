---@meta

---@class IALS_Character_BPI_C : IInterface
local IALS_Character_BPI_C = {}

---@param NewOverlayState ALS_OverlayState::Type
function IALS_Character_BPI_C:BPI_Set_OverlayState(NewOverlayState) end
---@param NewViewMode ALS_ViewMode::Type
function IALS_Character_BPI_C:BPI_Set_ViewMode(NewViewMode) end
---@param NewGait ALS_Gait::Type
function IALS_Character_BPI_C:BPI_Set_Gait(NewGait) end
---@param NewRotationMode ALS_RotationMode::Type
function IALS_Character_BPI_C:BPI_Set_RotationMode(NewRotationMode) end
---@param NewMovementAction ALS_MovementAction::Type
function IALS_Character_BPI_C:BPI_Set_MovementAction(NewMovementAction) end
---@param NewMovementState ALS_MovementState::Type
function IALS_Character_BPI_C:BPI_Set_MovementState(NewMovementState) end
---@param Velocity FVector
---@param Acceleration FVector
---@param MovementInput FVector
---@param IsMoving boolean
---@param HasMovementInput boolean
---@param Speed float
---@param MovementInputAmount float
---@param AimingRotation FRotator
---@param AimYawRate float
function IALS_Character_BPI_C:BPI_Get_EssentialValues(Velocity, Acceleration, MovementInput, IsMoving, HasMovementInput, Speed, MovementInputAmount, AimingRotation, AimYawRate) end
---@param PawnMovementMode EMovementMode
---@param MovementState ALS_MovementState::Type
---@param PrevMovementState ALS_MovementState::Type
---@param MovementAction ALS_MovementAction::Type
---@param RotationMode ALS_RotationMode::Type
---@param ActualGait ALS_Gait::Type
---@param ActualStance ALS_Stance::Type
---@param ViewMode ALS_ViewMode::Type
---@param OverlayState ALS_OverlayState::Type
function IALS_Character_BPI_C:BPI_Get_CurrentStates(PawnMovementMode, MovementState, PrevMovementState, MovementAction, RotationMode, ActualGait, ActualStance, ViewMode, OverlayState) end


