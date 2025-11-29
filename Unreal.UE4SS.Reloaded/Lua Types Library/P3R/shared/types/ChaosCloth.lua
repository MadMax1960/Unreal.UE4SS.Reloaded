---@meta

---@class FChaosClothWeightedValue
---@field Low float
---@field High float
local FChaosClothWeightedValue = {}



---@class UChaosClothConfig : UClothConfigCommon
---@field MassMode EClothMassMode
---@field UniformMass float
---@field TotalMass float
---@field Density float
---@field MinPerParticleMass float
---@field EdgeStiffness float
---@field BendingStiffness float
---@field bUseBendingElements boolean
---@field AreaStiffness float
---@field VolumeStiffness float
---@field TetherStiffness FChaosClothWeightedValue
---@field LimitScale float
---@field bUseGeodesicDistance boolean
---@field ShapeTargetStiffness float
---@field CollisionThickness float
---@field FrictionCoefficient float
---@field bUseCCD boolean
---@field bUseSelfCollisions boolean
---@field SelfCollisionThickness float
---@field bUseLegacyBackstop boolean
---@field DampingCoefficient float
---@field bUsePointBasedWindModel boolean
---@field DragCoefficient float
---@field LiftCoefficient float
---@field bUseGravityOverride boolean
---@field GravityScale float
---@field Gravity FVector
---@field AnimDriveStiffness FChaosClothWeightedValue
---@field AnimDriveDamping FChaosClothWeightedValue
---@field LinearVelocityScale FVector
---@field AngularVelocityScale float
---@field FictitiousAngularScale float
---@field bUseTetrahedralConstraints boolean
---@field bUseThinShellVolumeConstraints boolean
---@field bUseContinuousCollisionDetection boolean
local UChaosClothConfig = {}



---@class UChaosClothSharedSimConfig : UClothSharedConfigCommon
---@field IterationCount int32
---@field SubdivisionCount int32
---@field bUseLocalSpaceSimulation boolean
---@field bUseXPBDConstraints boolean
local UChaosClothSharedSimConfig = {}



---@class UChaosClothingInteractor : UClothingInteractor
local UChaosClothingInteractor = {}

---@param LinearVelocityScale FVector
---@param AngularVelocityScale float
---@param FictitiousAngularScale float
function UChaosClothingInteractor:SetVelocityScale(LinearVelocityScale, AngularVelocityScale, FictitiousAngularScale) end
---@param EdgeStiffness float
---@param BendingStiffness float
---@param AreaStiffness float
function UChaosClothingInteractor:SetMaterialLinear(EdgeStiffness, BendingStiffness, AreaStiffness) end
---@param TetherStiffness float
function UChaosClothingInteractor:SetLongRangeAttachmentLinear(TetherStiffness) end
---@param TetherStiffness FVector2D
function UChaosClothingInteractor:SetLongRangeAttachment(TetherStiffness) end
---@param GravityScale float
---@param bIsGravityOverridden boolean
---@param GravityOverride FVector
function UChaosClothingInteractor:SetGravity(GravityScale, bIsGravityOverridden, GravityOverride) end
---@param DampingCoefficient float
function UChaosClothingInteractor:SetDamping(DampingCoefficient) end
---@param CollisionThickness float
---@param FrictionCoefficient float
---@param bUseCCD boolean
---@param SelfCollisionThickness float
function UChaosClothingInteractor:SetCollision(CollisionThickness, FrictionCoefficient, bUseCCD, SelfCollisionThickness) end
---@param AnimDriveStiffness float
function UChaosClothingInteractor:SetAnimDriveLinear(AnimDriveStiffness) end
---@param AnimDriveStiffness FVector2D
---@param AnimDriveDamping FVector2D
function UChaosClothingInteractor:SetAnimDrive(AnimDriveStiffness, AnimDriveDamping) end
---@param DragCoefficient float
---@param LiftCoefficient float
---@param WindVelocity FVector
function UChaosClothingInteractor:SetAerodynamics(DragCoefficient, LiftCoefficient, WindVelocity) end
---@param bReset boolean
---@param bTeleport boolean
function UChaosClothingInteractor:ResetAndTeleport(bReset, bTeleport) end


---@class UChaosClothingSimulationFactory : UClothingSimulationFactory
local UChaosClothingSimulationFactory = {}


---@class UChaosClothingSimulationInteractor : UClothingSimulationInteractor
local UChaosClothingSimulationInteractor = {}


