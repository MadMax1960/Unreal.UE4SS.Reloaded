---@meta

---@class ABP_HumanBase_C : ABP_CharacterBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FaceMesh USkeletalMeshComponent
---@field HairMesh USkeletalMeshComponent
---@field CostumeMesh USkeletalMeshComponent
---@field MantleTimeline_BlendIn_A9C55A224C848693D0EF239AEA6C7A41 float
---@field MantleTimeline__Direction_A9C55A224C848693D0EF239AEA6C7A41 ETimelineDirection::Type
---@field MantleTimeline UTimelineComponent
---@field MovementState ALS_MovementState::Type
---@field PrevMovementState ALS_MovementState::Type
---@field DesiredRotationMode ALS_RotationMode::Type
---@field MovementAction ALS_MovementAction::Type
---@field RotationMode ALS_RotationMode::Type
---@field DesiredGait ALS_Gait::Type
---@field Gait ALS_Gait::Type
---@field Stance ALS_Stance::Type
---@field ViewMode ALS_ViewMode::Type
---@field PreviousVelocity FVector
---@field Acceleration FVector
---@field IsMoving boolean
---@field HasMovementInput boolean
---@field LastVelocityRotation FRotator
---@field LastMovementInputRotation FRotator
---@field Speed float
---@field MovementInputAmount float
---@field PreviousAimYaw float
---@field TargetRotation FRotator
---@field InAirRotation FRotator
---@field YawOffset float
---@field MovementModel FDataTableRowHandle
---@field MovementData FMovementSettings_State
---@field CurrentMovementSettings FMovementSettings
---@field MantleParams FMantle_Params
---@field MantleLedgeLS FALS_ComponentAndTransform
---@field MantleTarget FTransform
---@field MantleActualStartOffset FTransform
---@field MantleAnimatedStartOffset FTransform
---@field GroundedTraceSettings FMantle_TraceSettings
---@field AutomaticTraceSettings FMantle_TraceSettings
---@field FallingTraceSettings FMantle_TraceSettings
---@field DesiredStance ALS_Stance::Type
---@field ['LookUp/DownRate'] float
---@field LookLeftRightRate float
---@field AimYawRate float
---@field OverlayState ALS_OverlayState::Type
---@field TimesPressedStance int32
---@field BreakFall boolean
---@field SprintHeld boolean
---@field RagdollOnGround boolean
---@field RagdollFaceUp boolean
---@field LastRagdollVelocity FVector
---@field ThirdPersonFOV float
---@field FirstPersonFOV float
---@field RightShoulder boolean
---@field MainAnimInstance UAnimInstance
local ABP_HumanBase_C = {}

---@param Out_foot_r boolean
---@param Out_foot_l boolean
function ABP_HumanBase_C:Get_Enable_FootIK(Out_foot_r, Out_foot_l) end
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
function ABP_HumanBase_C:Get_ABP_CH_MeshBaseVariable(LookAtHorizontal, LookAtVertical, Out_Interp_LookatHair_H, Out_Interp_LookatHair_V, PhysicsAlpha_Out, PhysicsAlpha_Upperbody_Out, PhysicsAlpha_Lowerbody_Out, PhysicsAlpha_Hair_Out, PhysicsAlpha_Jacket_Out, PhysicsAlpha_Skirt_Out) end
---@param Return UAnimInstance
function ABP_HumanBase_C:Get_AnimBP(Return) end
---@param PawnMovementMode EMovementMode
---@param MovementState ALS_MovementState::Type
---@param PrevMovementState ALS_MovementState::Type
---@param MovementAction ALS_MovementAction::Type
---@param RotationMode ALS_RotationMode::Type
---@param ActualGait ALS_Gait::Type
---@param ActualStance ALS_Stance::Type
---@param ViewMode ALS_ViewMode::Type
---@param OverlayState ALS_OverlayState::Type
function ABP_HumanBase_C:BPI_Get_CurrentStates(PawnMovementMode, MovementState, PrevMovementState, MovementAction, RotationMode, ActualGait, ActualStance, ViewMode, OverlayState) end
---@param Velocity FVector
---@param Acceleration FVector
---@param MovementInput FVector
---@param IsMoving boolean
---@param HasMovementInput boolean
---@param Speed float
---@param MovementInputAmount float
---@param AimingRotation FRotator
---@param AimYawRate float
function ABP_HumanBase_C:BPI_Get_EssentialValues(Velocity, Acceleration, MovementInput, IsMoving, HasMovementInput, Speed, MovementInputAmount, AimingRotation, AimYawRate) end
---@param RagdollFaceUp boolean
---@return UAnimMontage
function ABP_HumanBase_C:GetGetUpAnimation(RagdollFaceUp) end
---@return UAnimMontage
function ABP_HumanBase_C:GetRollAnimation() end
---@return float
function ABP_HumanBase_C:GetMappedSpeed() end
---@return boolean
function ABP_HumanBase_C:CanUpdateMovingRotation() end
---@param NewOverlayState ALS_OverlayState::Type
function ABP_HumanBase_C:OnOverlayStateChanged(NewOverlayState) end
---@param NewViewMode ALS_ViewMode::Type
function ABP_HumanBase_C:OnViewModeChanged(NewViewMode) end
---@param NewActualGait ALS_Gait::Type
function ABP_HumanBase_C:OnGaitChanged(NewActualGait) end
---@param NewRotationMode ALS_RotationMode::Type
function ABP_HumanBase_C:OnRotationModeChanged(NewRotationMode) end
---@param NewStance ALS_Stance::Type
function ABP_HumanBase_C:OnStanceChanged(NewStance) end
---@param NewMovementAction ALS_MovementAction::Type
function ABP_HumanBase_C:OnMovementActionChanged(NewMovementAction) end
---@param NewMovementState ALS_MovementState::Type
function ABP_HumanBase_C:OnMovementStateChanged(NewMovementState) end
---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode uint8
---@param NewCustomMode uint8
function ABP_HumanBase_C:OnCharacterMovementModeChanged(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end
ABP_HumanBase_C['On Begin Play'] = function(self, ) end
---@param CurveName FName
---@return float
function ABP_HumanBase_C:GetAnimCurveValue(CurveName) end
---@param ShowTraceType EDrawDebugTrace::Type
---@return EDrawDebugTrace::Type
function ABP_HumanBase_C:GetTraceDebugType(ShowTraceType) end
function ABP_HumanBase_C:SetActorLocationDuringRagdoll() end
function ABP_HumanBase_C:RagdollUpdate() end
function ABP_HumanBase_C:RagdollEnd() end
function ABP_HumanBase_C:RagdollStart() end
---@return FVector
function ABP_HumanBase_C:CalculateAcceleration() end
---@param BaseLocation FVector
---@param ZOffset float
---@return FVector
function ABP_HumanBase_C:GetCapsuleLocationFromBase(BaseLocation, ZOffset) end
---@param ZOffset float
---@return FVector
function ABP_HumanBase_C:GetCalpsuleBaseLocation(ZOffset) end
---@param ForwardVector FVector
---@param RightVector FVector
ABP_HumanBase_C['GetControlForward/RightVector'] = function(self, ForwardVector, RightVector) end
---@param MantleType MantleType::Type
---@return FMantle_Asset
function ABP_HumanBase_C:GetMantleAsset(MantleType) end
---@param Capsule UCapsuleComponent
---@param TargetLocation FVector
---@param HeightOffset float
---@param RadiusOffset float
---@param DebugType EDrawDebugTrace::Type
---@param HasRoom boolean
function ABP_HumanBase_C:CapsuleHasRoomCheck(Capsule, TargetLocation, HeightOffset, RadiusOffset, DebugType, HasRoom) end
---@param BlendIn float
function ABP_HumanBase_C:MantleUpdate(BlendIn) end
function ABP_HumanBase_C:MantleEnd() end
---@param MantleHeight float
---@param MantleLedgeWS FALS_ComponentAndTransform
---@param MantleType MantleType::Type
function ABP_HumanBase_C:MantleStart(MantleHeight, MantleLedgeWS, MantleType) end
function ABP_HumanBase_C:DrawDebugShapes() end
---@param Y_in float
---@param X_in float
---@param Y_Out float
---@param X_Out float
function ABP_HumanBase_C:FixDiagonalGamepadValues(Y_in, X_in, Y_Out, X_Out) end
---@return FVector
function ABP_HumanBase_C:GetPlayerMovementInput() end
---@param Trace_Settings FMantle_TraceSettings
---@param DebugType EDrawDebugTrace::Type
---@param CanClimb_Vault boolean
function ABP_HumanBase_C:MantleCheck(Trace_Settings, DebugType, CanClimb_Vault) end
---@return float
function ABP_HumanBase_C:CalculateGroundedRotationRate() end
---@param NewLocation FVector
---@param NewRotation FRotator
---@param bSweep boolean
---@param bTeleport boolean
---@param SweepHitResult FHitResult
---@return boolean
ABP_HumanBase_C['SetActorLocationAndRotation(UpdateTarget)'] = function(self, NewLocation, NewRotation, bSweep, bTeleport, SweepHitResult) end
---@param AimYawMin float
---@param AimYawMax float
---@param InterpSpeed float
function ABP_HumanBase_C:LimitRotation(AimYawMin, AimYawMax, InterpSpeed) end
---@param DeltaRotation FRotator
function ABP_HumanBase_C:AddToCharacterRotation(DeltaRotation) end
---@param CanSprint boolean
function ABP_HumanBase_C:CanSprint(CanSprint) end
---@param AllowedGait ALS_Gait::Type
---@param ActualGait ALS_Gait::Type
function ABP_HumanBase_C:GetActualGait(AllowedGait, ActualGait) end
---@param AllowedGait ALS_Gait::Type
function ABP_HumanBase_C:GetAllowedGait(AllowedGait) end
---@param MovementSettings FMovementSettings
function ABP_HumanBase_C:GetTargetMovementSettings(MovementSettings) end
---@param AllowedGait ALS_Gait::Type
function ABP_HumanBase_C:UpdateDynamicMovementSettings(AllowedGait) end
function ABP_HumanBase_C:UpdateCharacterMovement() end
function ABP_HumanBase_C:SetMovementModel() end
---@param Target FRotator
---@param TargetInterpSpeed_Const_ float
---@param ActorInterpSpeed_Smooth_ float
function ABP_HumanBase_C:SmoothCharacterRotation(Target, TargetInterpSpeed_Const_, ActorInterpSpeed_Smooth_) end
function ABP_HumanBase_C:UpdateInAirRotation() end
function ABP_HumanBase_C:UpdateGroudedRotation() end
function ABP_HumanBase_C:CacheValues() end
function ABP_HumanBase_C:SetEssentialValues() end
---@param IsForwardAxis boolean
function ABP_HumanBase_C:PlayerMovementInput(IsForwardAxis) end
function ABP_HumanBase_C:UserConstructionScript() end
function ABP_HumanBase_C:MantleTimeline__FinishedFunc() end
function ABP_HumanBase_C:MantleTimeline__UpdateFunc() end
---@param DeltaSeconds float
function ABP_HumanBase_C:ReceiveTick(DeltaSeconds) end
function ABP_HumanBase_C:ReceiveBeginPlay() end
---@param HalfHeightAdjust float
---@param ScaledHalfHeightAdjust float
function ABP_HumanBase_C:K2_OnStartCrouch(HalfHeightAdjust, ScaledHalfHeightAdjust) end
---@param HalfHeightAdjust float
---@param ScaledHalfHeightAdjust float
function ABP_HumanBase_C:K2_OnEndCrouch(HalfHeightAdjust, ScaledHalfHeightAdjust) end
---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode uint8
---@param NewCustomMode uint8
function ABP_HumanBase_C:K2_OnMovementModeChanged(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end
function ABP_HumanBase_C:OnJumped() end
---@param Hit FHitResult
function ABP_HumanBase_C:OnLanded(Hit) end
ABP_HumanBase_C['Breakfall Event'] = function(self, ) end
ABP_HumanBase_C['Roll Event'] = function(self, ) end
---@param NewMovementState ALS_MovementState::Type
function ABP_HumanBase_C:BPI_Set_MovementState(NewMovementState) end
---@param NewMovementAction ALS_MovementAction::Type
function ABP_HumanBase_C:BPI_Set_MovementAction(NewMovementAction) end
---@param NewRotationMode ALS_RotationMode::Type
function ABP_HumanBase_C:BPI_Set_RotationMode(NewRotationMode) end
---@param NewGait ALS_Gait::Type
function ABP_HumanBase_C:BPI_Set_Gait(NewGait) end
---@param NewViewMode ALS_ViewMode::Type
function ABP_HumanBase_C:BPI_Set_ViewMode(NewViewMode) end
---@param NewOverlayState ALS_OverlayState::Type
function ABP_HumanBase_C:BPI_Set_OverlayState(NewOverlayState) end
---@param AxisValue float
function ABP_HumanBase_C:InpAxisEvt_PM_AxisLX_K2Node_InputAxisEvent_1(AxisValue) end
---@param AxisValue float
function ABP_HumanBase_C:InpAxisEvt_PM_AxisLY_K2Node_InputAxisEvent_0(AxisValue) end
---@param EntryPoint int32
function ABP_HumanBase_C:ExecuteUbergraph_BP_HumanBase(EntryPoint) end


