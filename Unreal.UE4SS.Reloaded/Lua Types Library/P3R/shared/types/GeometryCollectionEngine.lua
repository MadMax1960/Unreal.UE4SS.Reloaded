---@meta

---@class AGeometryCollectionActor : AActor
---@field GeometryCollectionComponent UGeometryCollectionComponent
---@field GeometryCollectionDebugDrawComponent UGeometryCollectionDebugDrawComponent
local AGeometryCollectionActor = {}

---@param Start FVector
---@param End FVector
---@param OutHit FHitResult
---@return boolean
function AGeometryCollectionActor:RaycastSingle(Start, End, OutHit) end


---@class AGeometryCollectionDebugDrawActor : AActor
---@field WarningMessage FGeometryCollectionDebugDrawWarningMessage
---@field SelectedRigidBody FGeometryCollectionDebugDrawActorSelectedRigidBody
---@field bDebugDrawWholeCollection boolean
---@field bDebugDrawHierarchy boolean
---@field bDebugDrawClustering boolean
---@field HideGeometry EGeometryCollectionDebugDrawActorHideGeometry
---@field bShowRigidBodyId boolean
---@field bShowRigidBodyCollision boolean
---@field bCollisionAtOrigin boolean
---@field bShowRigidBodyTransform boolean
---@field bShowRigidBodyInertia boolean
---@field bShowRigidBodyVelocity boolean
---@field bShowRigidBodyForce boolean
---@field bShowRigidBodyInfos boolean
---@field bShowTransformIndex boolean
---@field bShowTransform boolean
---@field bShowParent boolean
---@field bShowLevel boolean
---@field bShowConnectivityEdges boolean
---@field bShowGeometryIndex boolean
---@field bShowGeometryTransform boolean
---@field bShowBoundingBox boolean
---@field bShowFaces boolean
---@field bShowFaceIndices boolean
---@field bShowFaceNormals boolean
---@field bShowSingleFace boolean
---@field SingleFaceIndex int32
---@field bShowVertices boolean
---@field bShowVertexIndices boolean
---@field bShowVertexNormals boolean
---@field bUseActiveVisualization boolean
---@field PointThickness float
---@field LineThickness float
---@field bTextShadow boolean
---@field TextScale float
---@field NormalScale float
---@field AxisScale float
---@field ArrowScale float
---@field RigidBodyIdColor FColor
---@field RigidBodyTransformScale float
---@field RigidBodyCollisionColor FColor
---@field RigidBodyInertiaColor FColor
---@field RigidBodyVelocityColor FColor
---@field RigidBodyForceColor FColor
---@field RigidBodyInfoColor FColor
---@field TransformIndexColor FColor
---@field TransformScale float
---@field LevelColor FColor
---@field ParentColor FColor
---@field ConnectivityEdgeThickness float
---@field GeometryIndexColor FColor
---@field GeometryTransformScale float
---@field BoundingBoxColor FColor
---@field FaceColor FColor
---@field FaceIndexColor FColor
---@field FaceNormalColor FColor
---@field SingleFaceColor FColor
---@field VertexColor FColor
---@field VertexIndexColor FColor
---@field VertexNormalColor FColor
---@field SpriteComponent UBillboardComponent
local AGeometryCollectionDebugDrawActor = {}



---@class AGeometryCollectionRenderLevelSetActor : AActor
---@field TargetVolumeTexture UVolumeTexture
---@field RayMarchMaterial UMaterial
---@field SurfaceTolerance float
---@field Isovalue float
---@field Enabled boolean
---@field RenderVolumeBoundingBox boolean
local AGeometryCollectionRenderLevelSetActor = {}



---@class FChaosBreakingEventData
---@field Location FVector
---@field Velocity FVector
---@field Mass float
local FChaosBreakingEventData = {}



---@class FChaosBreakingEventRequestSettings
---@field MaxNumberOfResults int32
---@field MinRadius float
---@field MinSpeed float
---@field MinMass float
---@field MaxDistance float
---@field SortMethod EChaosBreakingSortMethod
local FChaosBreakingEventRequestSettings = {}



---@class FChaosCollisionEventData
---@field Location FVector
---@field Normal FVector
---@field Velocity1 FVector
---@field Velocity2 FVector
---@field Mass1 float
---@field Mass2 float
---@field Impulse FVector
local FChaosCollisionEventData = {}



---@class FChaosCollisionEventRequestSettings
---@field MaxNumberResults int32
---@field MinMass float
---@field MinSpeed float
---@field MinImpulse float
---@field MaxDistance float
---@field SortMethod EChaosCollisionSortMethod
local FChaosCollisionEventRequestSettings = {}



---@class FChaosTrailingEventData
---@field Location FVector
---@field Velocity FVector
---@field AngularVelocity FVector
---@field Mass float
---@field ParticleIndex int32
local FChaosTrailingEventData = {}



---@class FChaosTrailingEventRequestSettings
---@field MaxNumberOfResults int32
---@field MinMass float
---@field MinSpeed float
---@field MinAngularSpeed float
---@field MaxDistance float
---@field SortMethod EChaosTrailingSortMethod
local FChaosTrailingEventRequestSettings = {}



---@class FGeomComponentCacheParameters
---@field CacheMode EGeometryCollectionCacheType
---@field TargetCache UGeometryCollectionCache
---@field ReverseCacheBeginTime float
---@field SaveCollisionData boolean
---@field DoGenerateCollisionData boolean
---@field CollisionDataSizeMax int32
---@field DoCollisionDataSpatialHash boolean
---@field CollisionDataSpatialHashRadius float
---@field MaxCollisionPerCell int32
---@field SaveBreakingData boolean
---@field DoGenerateBreakingData boolean
---@field BreakingDataSizeMax int32
---@field DoBreakingDataSpatialHash boolean
---@field BreakingDataSpatialHashRadius float
---@field MaxBreakingPerCell int32
---@field SaveTrailingData boolean
---@field DoGenerateTrailingData boolean
---@field TrailingDataSizeMax int32
---@field TrailingMinSpeedThreshold float
---@field TrailingMinVolumeThreshold float
local FGeomComponentCacheParameters = {}



---@class FGeometryCollectionDebugDrawActorSelectedRigidBody
---@field ID int32
---@field Solver AChaosSolverActor
---@field GeometryCollection AGeometryCollectionActor
local FGeometryCollectionDebugDrawActorSelectedRigidBody = {}



---@class FGeometryCollectionDebugDrawWarningMessage
local FGeometryCollectionDebugDrawWarningMessage = {}


---@class FGeometryCollectionRepData
local FGeometryCollectionRepData = {}


---@class FGeometryCollectionSizeSpecificData
---@field MaxSize float
---@field CollisionType ECollisionTypeEnum
---@field ImplicitType EImplicitTypeEnum
---@field MinLevelSetResolution int32
---@field MaxLevelSetResolution int32
---@field MinClusterLevelSetResolution int32
---@field MaxClusterLevelSetResolution int32
---@field CollisionObjectReductionPercentage int32
---@field CollisionParticlesFraction float
---@field MaximumCollisionParticles int32
local FGeometryCollectionSizeSpecificData = {}



---@class FGeometryCollectionSource
---@field SourceGeometryObject FSoftObjectPath
---@field LocalTransform FTransform
---@field SourceMaterial TArray<UMaterialInterface>
local FGeometryCollectionSource = {}



---@class UChaosDestructionListener : USceneComponent
---@field bIsCollisionEventListeningEnabled boolean
---@field bIsBreakingEventListeningEnabled boolean
---@field bIsTrailingEventListeningEnabled boolean
---@field CollisionEventRequestSettings FChaosCollisionEventRequestSettings
---@field BreakingEventRequestSettings FChaosBreakingEventRequestSettings
---@field TrailingEventRequestSettings FChaosTrailingEventRequestSettings
---@field ChaosSolverActors TSet<AChaosSolverActor>
---@field GeometryCollectionActors TSet<AGeometryCollectionActor>
---@field OnCollisionEvents FChaosDestructionListenerOnCollisionEvents
---@field OnBreakingEvents FChaosDestructionListenerOnBreakingEvents
---@field OnTrailingEvents FChaosDestructionListenerOnTrailingEvents
local UChaosDestructionListener = {}

---@param TrailingEvents TArray<FChaosTrailingEventData>
---@param SortMethod EChaosTrailingSortMethod
function UChaosDestructionListener:SortTrailingEvents(TrailingEvents, SortMethod) end
---@param CollisionEvents TArray<FChaosCollisionEventData>
---@param SortMethod EChaosCollisionSortMethod
function UChaosDestructionListener:SortCollisionEvents(CollisionEvents, SortMethod) end
---@param BreakingEvents TArray<FChaosBreakingEventData>
---@param SortMethod EChaosBreakingSortMethod
function UChaosDestructionListener:SortBreakingEvents(BreakingEvents, SortMethod) end
---@param InSettings FChaosTrailingEventRequestSettings
function UChaosDestructionListener:SetTrailingEventRequestSettings(InSettings) end
---@param bIsEnabled boolean
function UChaosDestructionListener:SetTrailingEventEnabled(bIsEnabled) end
---@param InSettings FChaosCollisionEventRequestSettings
function UChaosDestructionListener:SetCollisionEventRequestSettings(InSettings) end
---@param bIsEnabled boolean
function UChaosDestructionListener:SetCollisionEventEnabled(bIsEnabled) end
---@param InSettings FChaosBreakingEventRequestSettings
function UChaosDestructionListener:SetBreakingEventRequestSettings(InSettings) end
---@param bIsEnabled boolean
function UChaosDestructionListener:SetBreakingEventEnabled(bIsEnabled) end
---@param GeometryCollectionActor AGeometryCollectionActor
function UChaosDestructionListener:RemoveGeometryCollectionActor(GeometryCollectionActor) end
---@param ChaosSolverActor AChaosSolverActor
function UChaosDestructionListener:RemoveChaosSolverActor(ChaosSolverActor) end
---@return boolean
function UChaosDestructionListener:IsEventListening() end
---@param GeometryCollectionActor AGeometryCollectionActor
function UChaosDestructionListener:AddGeometryCollectionActor(GeometryCollectionActor) end
---@param ChaosSolverActor AChaosSolverActor
function UChaosDestructionListener:AddChaosSolverActor(ChaosSolverActor) end


---@class UGeometryCollection : UObject
---@field EnableClustering boolean
---@field ClusterGroupIndex int32
---@field MaxClusterLevel int32
---@field DamageThreshold TArray<float>
---@field ClusterConnectionType EClusterConnectionTypeEnum
---@field GeometrySource TArray<FGeometryCollectionSource>
---@field Materials TArray<UMaterialInterface>
---@field CollisionType ECollisionTypeEnum
---@field ImplicitType EImplicitTypeEnum
---@field MinLevelSetResolution int32
---@field MaxLevelSetResolution int32
---@field MinClusterLevelSetResolution int32
---@field MaxClusterLevelSetResolution int32
---@field CollisionObjectReductionPercentage float
---@field bMassAsDensity boolean
---@field Mass float
---@field MinimumMassClamp float
---@field CollisionParticlesFraction float
---@field MaximumCollisionParticles int32
---@field SizeSpecificData TArray<FGeometryCollectionSizeSpecificData>
---@field EnableRemovePiecesOnFracture boolean
---@field RemoveOnFractureMaterials TArray<UMaterialInterface>
---@field PersistentGuid FGuid
---@field StateGuid FGuid
---@field BoneSelectedMaterialIndex int32
local UGeometryCollection = {}



---@class UGeometryCollectionCache : UObject
---@field RecordedData FRecordedTransformTrack
---@field SupportedCollection UGeometryCollection
---@field CompatibleCollectionState FGuid
local UGeometryCollectionCache = {}



---@class UGeometryCollectionComponent : UMeshComponent
---@field ChaosSolverActor AChaosSolverActor
---@field RestCollection UGeometryCollection
---@field InitializationFields TArray<AFieldSystemActor>
---@field Simulating boolean
---@field ObjectType EObjectStateTypeEnum
---@field EnableClustering boolean
---@field ClusterGroupIndex int32
---@field MaxClusterLevel int32
---@field DamageThreshold TArray<float>
---@field ClusterConnectionType EClusterConnectionTypeEnum
---@field CollisionGroup int32
---@field CollisionSampleFraction float
---@field LinearEtherDrag float
---@field AngularEtherDrag float
---@field PhysicalMaterial UChaosPhysicalMaterial
---@field InitialVelocityType EInitialVelocityTypeEnum
---@field InitialLinearVelocity FVector
---@field InitialAngularVelocity FVector
---@field PhysicalMaterialOverride UPhysicalMaterial
---@field CacheParameters FGeomComponentCacheParameters
---@field NotifyGeometryCollectionPhysicsStateChange FGeometryCollectionComponentNotifyGeometryCollectionPhysicsStateChange
---@field NotifyGeometryCollectionPhysicsLoadingStateChange FGeometryCollectionComponentNotifyGeometryCollectionPhysicsLoadingStateChange
---@field OnChaosBreakEvent FGeometryCollectionComponentOnChaosBreakEvent
---@field DesiredCacheTime float
---@field CachePlayback boolean
---@field OnChaosPhysicsCollision FGeometryCollectionComponentOnChaosPhysicsCollision
---@field bNotifyBreaks boolean
---@field bNotifyCollisions boolean
---@field bEnableReplication boolean
---@field bEnableAbandonAfterLevel boolean
---@field ReplicationAbandonClusterLevel int32
---@field RepData FGeometryCollectionRepData
---@field DummyBodySetup UBodySetup
local UGeometryCollectionComponent = {}

---@param bNewNotifyBreaks boolean
function UGeometryCollectionComponent:SetNotifyBreaks(bNewNotifyBreaks) end
---@param CollisionInfo FChaosPhysicsCollisionInfo
function UGeometryCollectionComponent:ReceivePhysicsCollision(CollisionInfo) end
---@param OldData FGeometryCollectionRepData
function UGeometryCollectionComponent:OnRep_RepData(OldData) end
---@param FracturedComponent UGeometryCollectionComponent
function UGeometryCollectionComponent:NotifyGeometryCollectionPhysicsStateChange__DelegateSignature(FracturedComponent) end
---@param FracturedComponent UGeometryCollectionComponent
function UGeometryCollectionComponent:NotifyGeometryCollectionPhysicsLoadingStateChange__DelegateSignature(FracturedComponent) end
---@param TransformIndex int32
function UGeometryCollectionComponent:NetAbandonCluster(TransformIndex) end
---@param Enabled boolean
---@param Target EGeometryCollectionPhysicsTypeEnum
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UGeometryCollectionComponent:ApplyPhysicsField(Enabled, Target, MetaData, Field) end
---@param Radius float
---@param Position FVector
function UGeometryCollectionComponent:ApplyKinematicField(Radius, Position) end


---@class UGeometryCollectionDebugDrawComponent : UActorComponent
---@field GeometryCollectionDebugDrawActor AGeometryCollectionDebugDrawActor
---@field GeometryCollectionRenderLevelSetActor AGeometryCollectionRenderLevelSetActor
local UGeometryCollectionDebugDrawComponent = {}



---@class USkeletalMeshSimulationComponent : UActorComponent
---@field PhysicalMaterial UChaosPhysicalMaterial
---@field ChaosSolverActor AChaosSolverActor
---@field OverridePhysicsAsset UPhysicsAsset
---@field bSimulating boolean
---@field bNotifyCollisions boolean
---@field ObjectType EObjectStateTypeEnum
---@field Density float
---@field MinMass float
---@field MaxMass float
---@field CollisionType ECollisionTypeEnum
---@field ImplicitShapeParticlesPerUnitArea float
---@field ImplicitShapeMinNumParticles int32
---@field ImplicitShapeMaxNumParticles int32
---@field MinLevelSetResolution int32
---@field MaxLevelSetResolution int32
---@field CollisionGroup int32
---@field InitialVelocityType EInitialVelocityTypeEnum
---@field InitialLinearVelocity FVector
---@field InitialAngularVelocity FVector
---@field OnChaosPhysicsCollision FSkeletalMeshSimulationComponentOnChaosPhysicsCollision
local USkeletalMeshSimulationComponent = {}

---@param CollisionInfo FChaosPhysicsCollisionInfo
function USkeletalMeshSimulationComponent:ReceivePhysicsCollision(CollisionInfo) end


---@class UStaticMeshSimulationComponent : UActorComponent
---@field Simulating boolean
---@field bNotifyCollisions boolean
---@field ObjectType EObjectStateTypeEnum
---@field Mass float
---@field CollisionType ECollisionTypeEnum
---@field ImplicitType EImplicitTypeEnum
---@field MinLevelSetResolution int32
---@field MaxLevelSetResolution int32
---@field InitialVelocityType EInitialVelocityTypeEnum
---@field InitialLinearVelocity FVector
---@field InitialAngularVelocity FVector
---@field DamageThreshold float
---@field PhysicalMaterial UChaosPhysicalMaterial
---@field ChaosSolverActor AChaosSolverActor
---@field OnChaosPhysicsCollision FStaticMeshSimulationComponentOnChaosPhysicsCollision
---@field SimulatedComponents TArray<UPrimitiveComponent>
local UStaticMeshSimulationComponent = {}

---@param CollisionInfo FChaosPhysicsCollisionInfo
function UStaticMeshSimulationComponent:ReceivePhysicsCollision(CollisionInfo) end
function UStaticMeshSimulationComponent:ForceRecreatePhysicsState() end


