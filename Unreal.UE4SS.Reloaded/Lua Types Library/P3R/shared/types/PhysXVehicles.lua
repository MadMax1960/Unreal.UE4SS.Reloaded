---@meta

---@class AWheeledVehicle : APawn
---@field Mesh USkeletalMeshComponent
---@field VehicleMovement UWheeledVehicleMovementComponent
local AWheeledVehicle = {}



---@class FAnimNode_WheelHandler : FAnimNode_SkeletalControlBase
local FAnimNode_WheelHandler = {}


---@class FReplicatedVehicleState
---@field SteeringInput float
---@field ThrottleInput float
---@field BrakeInput float
---@field HandbrakeInput float
---@field CurrentGear int32
local FReplicatedVehicleState = {}



---@class FTireConfigMaterialFriction
---@field PhysicalMaterial UPhysicalMaterial
---@field FrictionScale float
local FTireConfigMaterialFriction = {}



---@class FVehicleAnimInstanceProxy : FAnimInstanceProxy
local FVehicleAnimInstanceProxy = {}


---@class FVehicleDifferential4WData
---@field DifferentialType EVehicleDifferential4W::Type
---@field FrontRearSplit float
---@field FrontLeftRightSplit float
---@field RearLeftRightSplit float
---@field CentreBias float
---@field FrontBias float
---@field RearBias float
local FVehicleDifferential4WData = {}



---@class FVehicleEngineData
---@field TorqueCurve FRuntimeFloatCurve
---@field MaxRPM float
---@field MOI float
---@field DampingRateFullThrottle float
---@field DampingRateZeroThrottleClutchEngaged float
---@field DampingRateZeroThrottleClutchDisengaged float
local FVehicleEngineData = {}



---@class FVehicleGearData
---@field Ratio float
---@field DownRatio float
---@field UpRatio float
local FVehicleGearData = {}



---@class FVehicleInputRate
---@field RiseRate float
---@field FallRate float
local FVehicleInputRate = {}



---@class FVehicleTransmissionData
---@field bUseGearAutoBox boolean
---@field GearSwitchTime float
---@field GearAutoBoxLatency float
---@field FinalRatio float
---@field ForwardGears TArray<FVehicleGearData>
---@field ReverseGearRatio float
---@field NeutralGearUpRatio float
---@field ClutchStrength float
local FVehicleTransmissionData = {}



---@class FWheelSetup
---@field WheelClass TSubclassOf<UVehicleWheel>
---@field BoneName FName
---@field AdditionalOffset FVector
---@field bDisableSteering boolean
local FWheelSetup = {}



---@class USimpleWheeledVehicleMovementComponent : UWheeledVehicleMovementComponent
local USimpleWheeledVehicleMovementComponent = {}

---@param SteerAngle float
---@param WheelIndex int32
function USimpleWheeledVehicleMovementComponent:SetSteerAngle(SteerAngle, WheelIndex) end
---@param DriveTorque float
---@param WheelIndex int32
function USimpleWheeledVehicleMovementComponent:SetDriveTorque(DriveTorque, WheelIndex) end
---@param BrakeTorque float
---@param WheelIndex int32
function USimpleWheeledVehicleMovementComponent:SetBrakeTorque(BrakeTorque, WheelIndex) end


---@class UTireConfig : UDataAsset
---@field FrictionScale float
---@field TireFrictionScales TArray<FTireConfigMaterialFriction>
local UTireConfig = {}



---@class UVehicleAnimInstance : UAnimInstance
---@field WheeledVehicleMovementComponent UWheeledVehicleMovementComponent
local UVehicleAnimInstance = {}

---@return AWheeledVehicle
function UVehicleAnimInstance:GetVehicle() end


---@class UVehicleWheel : UObject
---@field CollisionMesh UStaticMesh
---@field bDontCreateShape boolean
---@field bAutoAdjustCollisionSize boolean
---@field Offset FVector
---@field ShapeRadius float
---@field ShapeWidth float
---@field Mass float
---@field DampingRate float
---@field SteerAngle float
---@field bAffectedByHandbrake boolean
---@field TireType UTireType
---@field TireConfig UTireConfig
---@field LatStiffMaxLoad float
---@field LatStiffValue float
---@field LongStiffValue float
---@field SuspensionForceOffset float
---@field SuspensionMaxRaise float
---@field SuspensionMaxDrop float
---@field SuspensionNaturalFrequency float
---@field SuspensionDampingRatio float
---@field SweepType EWheelSweepType
---@field MaxBrakeTorque float
---@field MaxHandBrakeTorque float
---@field VehicleSim UWheeledVehicleMovementComponent
---@field WheelIndex int32
---@field DebugLongSlip float
---@field DebugLatSlip float
---@field DebugNormalizedTireLoad float
---@field DebugWheelTorque float
---@field DebugLongForce float
---@field DebugLatForce float
---@field Location FVector
---@field OldLocation FVector
---@field Velocity FVector
local UVehicleWheel = {}

---@return boolean
function UVehicleWheel:IsInAir() end
---@return float
function UVehicleWheel:GetSuspensionOffset() end
---@return float
function UVehicleWheel:GetSteerAngle() end
---@return float
function UVehicleWheel:GetRotationAngle() end


---@class UWheeledVehicleMovementComponent : UPawnMovementComponent
---@field bDeprecatedSpringOffsetMode boolean
---@field bReverseAsBrake boolean
---@field bUseRVOAvoidance boolean
---@field bRawHandbrakeInput boolean
---@field bRawGearUpInput boolean
---@field bRawGearDownInput boolean
---@field bWasAvoidanceUpdated boolean
---@field Mass float
---@field WheelSetups TArray<FWheelSetup>
---@field DragCoefficient float
---@field ChassisWidth float
---@field ChassisHeight float
---@field DragArea float
---@field EstimatedMaxEngineSpeed float
---@field MaxEngineRPM float
---@field DebugDragMagnitude float
---@field InertiaTensorScale FVector
---@field MinNormalizedTireLoad float
---@field MinNormalizedTireLoadFiltered float
---@field MaxNormalizedTireLoad float
---@field MaxNormalizedTireLoadFiltered float
---@field ThresholdLongitudinalSpeed float
---@field LowForwardSpeedSubStepCount int32
---@field HighForwardSpeedSubStepCount int32
---@field Wheels TArray<UVehicleWheel>
---@field RVOAvoidanceRadius float
---@field RVOAvoidanceHeight float
---@field AvoidanceConsiderationRadius float
---@field RVOSteeringStep float
---@field RVOThrottleStep float
---@field AvoidanceUID int32
---@field AvoidanceGroup FNavAvoidanceMask
---@field GroupsToAvoid FNavAvoidanceMask
---@field GroupsToIgnore FNavAvoidanceMask
---@field AvoidanceWeight float
---@field PendingLaunchVelocity FVector
---@field ReplicatedState FReplicatedVehicleState
---@field RawSteeringInput float
---@field RawThrottleInput float
---@field RawBrakeInput float
---@field SteeringInput float
---@field ThrottleInput float
---@field BrakeInput float
---@field HandbrakeInput float
---@field IdleBrakeInput float
---@field StopThreshold float
---@field WrongDirectionThreshold float
---@field ThrottleInputRate FVehicleInputRate
---@field BrakeInputRate FVehicleInputRate
---@field HandbrakeInputRate FVehicleInputRate
---@field SteeringInputRate FVehicleInputRate
---@field OverrideController AController
local UWheeledVehicleMovementComponent = {}

---@param bUseAuto boolean
function UWheeledVehicleMovementComponent:SetUseAutoGears(bUseAuto) end
---@param Throttle float
function UWheeledVehicleMovementComponent:SetThrottleInput(Throttle) end
---@param GearNum int32
---@param bImmediate boolean
function UWheeledVehicleMovementComponent:SetTargetGear(GearNum, bImmediate) end
---@param Steering float
function UWheeledVehicleMovementComponent:SetSteeringInput(Steering) end
---@param bNewHandbrake boolean
function UWheeledVehicleMovementComponent:SetHandbrakeInput(bNewHandbrake) end
---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetGroupsToIgnoreMask(GroupMask) end
---@param GroupFlags int32
function UWheeledVehicleMovementComponent:SetGroupsToIgnore(GroupFlags) end
---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetGroupsToAvoidMask(GroupMask) end
---@param GroupFlags int32
function UWheeledVehicleMovementComponent:SetGroupsToAvoid(GroupFlags) end
---@param bNewGearUp boolean
function UWheeledVehicleMovementComponent:SetGearUp(bNewGearUp) end
---@param bNewGearDown boolean
function UWheeledVehicleMovementComponent:SetGearDown(bNewGearDown) end
---@param Brake float
function UWheeledVehicleMovementComponent:SetBrakeInput(Brake) end
---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetAvoidanceGroupMask(GroupMask) end
---@param GroupFlags int32
function UWheeledVehicleMovementComponent:SetAvoidanceGroup(GroupFlags) end
---@param bEnable boolean
function UWheeledVehicleMovementComponent:SetAvoidanceEnabled(bEnable) end
---@param InSteeringInput float
---@param InThrottleInput float
---@param InBrakeInput float
---@param InHandbrakeInput float
---@param CurrentGear int32
function UWheeledVehicleMovementComponent:ServerUpdateState(InSteeringInput, InThrottleInput, InBrakeInput, InHandbrakeInput, CurrentGear) end
---@return boolean
function UWheeledVehicleMovementComponent:GetUseAutoGears() end
---@return int32
function UWheeledVehicleMovementComponent:GetTargetGear() end
---@return float
function UWheeledVehicleMovementComponent:GetForwardSpeed() end
---@return float
function UWheeledVehicleMovementComponent:GetEngineRotationSpeed() end
---@return float
function UWheeledVehicleMovementComponent:GetEngineMaxRotationSpeed() end
---@return int32
function UWheeledVehicleMovementComponent:GetCurrentGear() end


---@class UWheeledVehicleMovementComponent4W : UWheeledVehicleMovementComponent
---@field EngineSetup FVehicleEngineData
---@field DifferentialSetup FVehicleDifferential4WData
---@field AckermannAccuracy float
---@field TransmissionSetup FVehicleTransmissionData
---@field SteeringCurve FRuntimeFloatCurve
local UWheeledVehicleMovementComponent4W = {}



