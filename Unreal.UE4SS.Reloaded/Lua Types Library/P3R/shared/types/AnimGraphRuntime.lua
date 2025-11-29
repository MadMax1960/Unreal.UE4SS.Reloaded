---@meta

---@class FAngularRangeLimit
---@field LimitMin FVector
---@field LimitMax FVector
---@field Bone FBoneReference
local FAngularRangeLimit = {}



---@class FAnimLegIKData
local FAnimLegIKData = {}


---@class FAnimLegIKDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb int32
---@field MinRotationAngle float
---@field FootBoneForwardAxis EAxis::Type
---@field HingeRotationAxis EAxis::Type
---@field bEnableRotationLimit boolean
---@field bEnableKneeTwistCorrection boolean
local FAnimLegIKDefinition = {}



---@class FAnimNode_AimOffsetLookAt : FAnimNode_BlendSpacePlayer
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field SourceSocketName FName
---@field PivotSocketName FName
---@field LookAtLocation FVector
---@field SocketAxis FVector
---@field Alpha float
local FAnimNode_AimOffsetLookAt = {}



---@class FAnimNode_AnimDynamics : FAnimNode_SkeletalControlBase
---@field LinearDampingOverride float
---@field AngularDampingOverride float
---@field RelativeSpaceBone FBoneReference
---@field BoundBone FBoneReference
---@field ChainEnd FBoneReference
---@field BoxExtents FVector
---@field LocalJointOffset FVector
---@field GravityScale float
---@field GravityOverride FVector
---@field LinearSpringConstant float
---@field AngularSpringConstant float
---@field WindScale float
---@field ComponentLinearAccScale FVector
---@field ComponentLinearVelScale FVector
---@field ComponentAppliedLinearAccClamp FVector
---@field AngularBiasOverride float
---@field NumSolverIterationsPreUpdate int32
---@field NumSolverIterationsPostUpdate int32
---@field ConstraintSetup FAnimPhysConstraintSetup
---@field SphericalLimits TArray<FAnimPhysSphericalLimit>
---@field SphereCollisionRadius float
---@field ExternalForce FVector
---@field PlanarLimits TArray<FAnimPhysPlanarLimit>
---@field CollisionType AnimPhysCollisionType
---@field SimulationSpace AnimPhysSimSpaceType
---@field bUseSphericalLimits boolean
---@field bUsePlanarLimit boolean
---@field bDoUpdate boolean
---@field bDoEval boolean
---@field bOverrideLinearDamping boolean
---@field bOverrideAngularBias boolean
---@field bOverrideAngularDamping boolean
---@field bEnableWind boolean
---@field bUseGravityOverride boolean
---@field bLinearSpring boolean
---@field bAngularSpring boolean
---@field bChain boolean
---@field RetargetingSettings FRotationRetargetingInfo
local FAnimNode_AnimDynamics = {}



---@class FAnimNode_ApplyAdditive : FAnimNode_Base
---@field Base FPoseLink
---@field Additive FPoseLink
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field LODThreshold int32
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
local FAnimNode_ApplyAdditive = {}



---@class FAnimNode_ApplyLimits : FAnimNode_SkeletalControlBase
---@field AngularRangeLimits TArray<FAngularRangeLimit>
---@field AngularOffsets TArray<FVector>
local FAnimNode_ApplyLimits = {}



---@class FAnimNode_BlendBoneByChannel : FAnimNode_Base
---@field A FPoseLink
---@field B FPoseLink
---@field BoneDefinitions TArray<FBlendBoneByChannelEntry>
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field TransformsSpace EBoneControlSpace
local FAnimNode_BlendBoneByChannel = {}



---@class FAnimNode_BlendListBase : FAnimNode_Base
---@field BlendPose TArray<FPoseLink>
---@field BlendTime TArray<float>
---@field TransitionType EBlendListTransitionType
---@field BlendType EAlphaBlendOption
---@field bResetChildOnActivation boolean
---@field CustomBlendCurve UCurveFloat
---@field BlendProfile UBlendProfile
local FAnimNode_BlendListBase = {}



---@class FAnimNode_BlendListByBool : FAnimNode_BlendListBase
---@field bActiveValue boolean
local FAnimNode_BlendListByBool = {}



---@class FAnimNode_BlendListByEnum : FAnimNode_BlendListBase
---@field EnumToPoseIndex TArray<int32>
---@field ActiveEnumValue uint8
local FAnimNode_BlendListByEnum = {}



---@class FAnimNode_BlendListByInt : FAnimNode_BlendListBase
---@field ActiveChildIndex int32
local FAnimNode_BlendListByInt = {}



---@class FAnimNode_BlendSpaceEvaluator : FAnimNode_BlendSpacePlayer
---@field NormalizedTime float
local FAnimNode_BlendSpaceEvaluator = {}



---@class FAnimNode_BlendSpacePlayer : FAnimNode_AssetPlayerBase
---@field X float
---@field Y float
---@field Z float
---@field PlayRate float
---@field bLoop boolean
---@field bResetPlayTimeWhenBlendSpaceChanges boolean
---@field StartPosition float
---@field BlendSpace UBlendSpaceBase
---@field PreviousBlendSpace UBlendSpaceBase
local FAnimNode_BlendSpacePlayer = {}



---@class FAnimNode_BoneDrivenController : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field DrivingCurve UCurveFloat
---@field Multiplier float
---@field RangeMin float
---@field RangeMax float
---@field RemappedMin float
---@field RemappedMax float
---@field ParameterName FName
---@field TargetBone FBoneReference
---@field DestinationMode EDrivenDestinationMode
---@field ModificationMode EDrivenBoneModificationMode
---@field SourceComponent EComponentType::Type
---@field bUseRange boolean
---@field bAffectTargetTranslationX boolean
---@field bAffectTargetTranslationY boolean
---@field bAffectTargetTranslationZ boolean
---@field bAffectTargetRotationX boolean
---@field bAffectTargetRotationY boolean
---@field bAffectTargetRotationZ boolean
---@field bAffectTargetScaleX boolean
---@field bAffectTargetScaleY boolean
---@field bAffectTargetScaleZ boolean
local FAnimNode_BoneDrivenController = {}



---@class FAnimNode_CCDIK : FAnimNode_SkeletalControlBase
---@field EffectorLocation FVector
---@field EffectorLocationSpace EBoneControlSpace
---@field EffectorTarget FBoneSocketTarget
---@field TipBone FBoneReference
---@field RootBone FBoneReference
---@field Precision float
---@field MaxIterations int32
---@field bStartFromTail boolean
---@field bEnableRotationLimit boolean
---@field RotationLimitPerJoints TArray<float>
local FAnimNode_CCDIK = {}



---@class FAnimNode_Constraint : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field ConstraintSetup TArray<FConstraint>
---@field ConstraintWeights TArray<float>
local FAnimNode_Constraint = {}



---@class FAnimNode_CopyBone : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bCopyTranslation boolean
---@field bCopyRotation boolean
---@field bCopyScale boolean
---@field ControlSpace EBoneControlSpace
local FAnimNode_CopyBone = {}



---@class FAnimNode_CopyBoneDelta : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bCopyTranslation boolean
---@field bCopyRotation boolean
---@field bCopyScale boolean
---@field CopyMode CopyBoneDeltaMode
---@field TranslationMultiplier float
---@field RotationMultiplier float
---@field ScaleMultiplier float
local FAnimNode_CopyBoneDelta = {}



---@class FAnimNode_CopyPoseFromMesh : FAnimNode_Base
---@field SourceMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field bUseAttachedParent boolean
---@field bCopyCurves boolean
---@field bCopyCustomAttributes boolean
---@field bUseMeshPose boolean
---@field RootBoneToCopy FName
local FAnimNode_CopyPoseFromMesh = {}



---@class FAnimNode_CurveSource : FAnimNode_Base
---@field SourcePose FPoseLink
---@field SourceBinding FName
---@field Alpha float
---@field CurveSource TScriptInterface<ICurveSourceInterface>
local FAnimNode_CurveSource = {}



---@class FAnimNode_Fabrik : FAnimNode_SkeletalControlBase
---@field EffectorTransform FTransform
---@field EffectorTarget FBoneSocketTarget
---@field TipBone FBoneReference
---@field RootBone FBoneReference
---@field Precision float
---@field MaxIterations int32
---@field EffectorTransformSpace EBoneControlSpace
---@field EffectorRotationSource EBoneRotationSource
local FAnimNode_Fabrik = {}



---@class FAnimNode_HandIKRetargeting : FAnimNode_SkeletalControlBase
---@field RightHandFK FBoneReference
---@field LeftHandFK FBoneReference
---@field RightHandIK FBoneReference
---@field LeftHandIK FBoneReference
---@field IKBonesToMove TArray<FBoneReference>
---@field HandFKWeight float
local FAnimNode_HandIKRetargeting = {}



---@class FAnimNode_LayeredBoneBlend : FAnimNode_Base
---@field BasePose FPoseLink
---@field BlendPoses TArray<FPoseLink>
---@field LayerSetup TArray<FInputBlendPose>
---@field BlendWeights TArray<float>
---@field bMeshSpaceRotationBlend boolean
---@field bMeshSpaceScaleBlend boolean
---@field CurveBlendOption ECurveBlendOption::Type
---@field bBlendRootMotionBasedOnRootBone boolean
---@field LODThreshold int32
---@field PerBoneBlendWeights TArray<FPerBoneBlendWeight>
---@field SkeletonGuid FGuid
---@field VirtualBoneGuid FGuid
local FAnimNode_LayeredBoneBlend = {}



---@class FAnimNode_LegIK : FAnimNode_SkeletalControlBase
---@field ReachPrecision float
---@field MaxIterations int32
---@field LegsDefinition TArray<FAnimLegIKDefinition>
local FAnimNode_LegIK = {}



---@class FAnimNode_LookAt : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field LookAtTarget FBoneSocketTarget
---@field LookAtLocation FVector
---@field LookAt_Axis FAxis
---@field bUseLookUpAxis boolean
---@field InterpolationType EInterpolationBlend::Type
---@field LookUp_Axis FAxis
---@field LookAtClamp float
---@field InterpolationTime float
---@field InterpolationTriggerThreashold float
local FAnimNode_LookAt = {}



---@class FAnimNode_MakeDynamicAdditive : FAnimNode_Base
---@field Base FPoseLink
---@field Additive FPoseLink
---@field bMeshSpaceAdditive boolean
local FAnimNode_MakeDynamicAdditive = {}



---@class FAnimNode_MeshSpaceRefPose : FAnimNode_Base
local FAnimNode_MeshSpaceRefPose = {}


---@class FAnimNode_ModifyBone : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field Translation FVector
---@field Rotation FRotator
---@field Scale FVector
---@field TranslationMode EBoneModificationMode
---@field RotationMode EBoneModificationMode
---@field ScaleMode EBoneModificationMode
---@field TranslationSpace EBoneControlSpace
---@field RotationSpace EBoneControlSpace
---@field ScaleSpace EBoneControlSpace
local FAnimNode_ModifyBone = {}



---@class FAnimNode_ModifyCurve : FAnimNode_Base
---@field SourcePose FPoseLink
---@field CurveValues TArray<float>
---@field CurveNames TArray<FName>
---@field Alpha float
---@field ApplyMode EModifyCurveApplyMode
local FAnimNode_ModifyCurve = {}



---@class FAnimNode_MultiWayBlend : FAnimNode_Base
---@field Poses TArray<FPoseLink>
---@field DesiredAlphas TArray<float>
---@field AlphaScaleBias FInputScaleBias
---@field bAdditiveNode boolean
---@field bNormalizeAlpha boolean
local FAnimNode_MultiWayBlend = {}



---@class FAnimNode_ObserveBone : FAnimNode_SkeletalControlBase
---@field BoneToObserve FBoneReference
---@field DisplaySpace EBoneControlSpace
---@field bRelativeToRefPose boolean
---@field Translation FVector
---@field Rotation FRotator
---@field Scale FVector
local FAnimNode_ObserveBone = {}



---@class FAnimNode_PoseBlendNode : FAnimNode_PoseHandler
---@field SourcePose FPoseLink
---@field BlendOption EAlphaBlendOption
---@field CustomCurve UCurveFloat
local FAnimNode_PoseBlendNode = {}



---@class FAnimNode_PoseByName : FAnimNode_PoseHandler
---@field PoseName FName
---@field PoseWeight float
local FAnimNode_PoseByName = {}



---@class FAnimNode_PoseDriver : FAnimNode_PoseHandler
---@field SourcePose FPoseLink
---@field SourceBones TArray<FBoneReference>
---@field OnlyDriveBones TArray<FBoneReference>
---@field PoseTargets TArray<FPoseDriverTarget>
---@field EvalSpaceBone FBoneReference
---@field RBFParams FRBFParams
---@field DriveSource EPoseDriverSource
---@field DriveOutput EPoseDriverOutput
---@field bOnlyDriveSelectedBones boolean
---@field LODThreshold int32
local FAnimNode_PoseDriver = {}



---@class FAnimNode_PoseHandler : FAnimNode_AssetPlayerBase
---@field PoseAsset UPoseAsset
local FAnimNode_PoseHandler = {}



---@class FAnimNode_PoseSnapshot : FAnimNode_Base
---@field SnapshotName FName
---@field Snapshot FPoseSnapshot
---@field Mode ESnapshotSourceMode
local FAnimNode_PoseSnapshot = {}



---@class FAnimNode_RandomPlayer : FAnimNode_Base
---@field Entries TArray<FRandomPlayerSequenceEntry>
---@field bShuffleMode boolean
local FAnimNode_RandomPlayer = {}



---@class FAnimNode_RefPose : FAnimNode_Base
---@field RefPoseType ERefPoseType
local FAnimNode_RefPose = {}



---@class FAnimNode_ResetRoot : FAnimNode_SkeletalControlBase
local FAnimNode_ResetRoot = {}


---@class FAnimNode_RigidBody : FAnimNode_SkeletalControlBase
---@field OverridePhysicsAsset UPhysicsAsset
---@field OverrideWorldGravity FVector
---@field ExternalForce FVector
---@field ComponentLinearAccScale FVector
---@field ComponentLinearVelScale FVector
---@field ComponentAppliedLinearAccClamp FVector
---@field SimSpaceSettings FSimSpaceSettings
---@field CachedBoundsScale float
---@field BaseBoneRef FBoneReference
---@field OverlapChannel ECollisionChannel
---@field SimulationSpace ESimulationSpace
---@field bForceDisableCollisionBetweenConstraintBodies boolean
---@field bEnableWorldGeometry boolean
---@field bOverrideWorldGravity boolean
---@field bTransferBoneVelocities boolean
---@field bFreezeIncomingPoseOnStart boolean
---@field bClampLinearTranslationLimitToRefPose boolean
---@field WorldSpaceMinimumScale float
---@field EvaluationResetTime float
local FAnimNode_RigidBody = {}



---@class FAnimNode_RotateRootBone : FAnimNode_Base
---@field BasePose FPoseLink
---@field Pitch float
---@field Yaw float
---@field PitchScaleBiasClamp FInputScaleBiasClamp
---@field YawScaleBiasClamp FInputScaleBiasClamp
---@field MeshToComponent FRotator
local FAnimNode_RotateRootBone = {}



---@class FAnimNode_RotationMultiplier : FAnimNode_SkeletalControlBase
---@field TargetBone FBoneReference
---@field SourceBone FBoneReference
---@field Multiplier float
---@field RotationAxisToRefer EBoneAxis
---@field bIsAdditive boolean
local FAnimNode_RotationMultiplier = {}



---@class FAnimNode_RotationOffsetBlendSpace : FAnimNode_BlendSpacePlayer
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
local FAnimNode_RotationOffsetBlendSpace = {}



---@class FAnimNode_ScaleChainLength : FAnimNode_Base
---@field InputPose FPoseLink
---@field DefaultChainLength float
---@field ChainStartBone FBoneReference
---@field ChainEndBone FBoneReference
---@field TargetLocation FVector
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field ChainInitialLength EScaleChainInitialLength
local FAnimNode_ScaleChainLength = {}



---@class FAnimNode_SequenceEvaluator : FAnimNode_AssetPlayerBase
---@field Sequence UAnimSequenceBase
---@field ExplicitTime float
---@field bShouldLoop boolean
---@field bTeleportToExplicitTime boolean
---@field ReinitializationBehavior ESequenceEvalReinit::Type
---@field StartPosition float
local FAnimNode_SequenceEvaluator = {}



---@class FAnimNode_SkeletalControlBase : FAnimNode_Base
---@field ComponentPose FComponentSpacePoseLink
---@field LODThreshold int32
---@field ActualAlpha float
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
local FAnimNode_SkeletalControlBase = {}



---@class FAnimNode_Slot : FAnimNode_Base
---@field Source FPoseLink
---@field SlotName FName
---@field bAlwaysUpdateSourcePose boolean
local FAnimNode_Slot = {}



---@class FAnimNode_SplineIK : FAnimNode_SkeletalControlBase
---@field StartBone FBoneReference
---@field EndBone FBoneReference
---@field BoneAxis ESplineBoneAxis
---@field bAutoCalculateSpline boolean
---@field PointCount int32
---@field ControlPoints TArray<FTransform>
---@field Roll float
---@field TwistStart float
---@field TwistEnd float
---@field TwistBlend FAlphaBlend
---@field Stretch float
---@field Offset float
local FAnimNode_SplineIK = {}



---@class FAnimNode_SpringBone : FAnimNode_SkeletalControlBase
---@field SpringBone FBoneReference
---@field MaxDisplacement float
---@field SpringStiffness float
---@field SpringDamping float
---@field ErrorResetThresh float
---@field bLimitDisplacement boolean
---@field bTranslateX boolean
---@field bTranslateY boolean
---@field bTranslateZ boolean
---@field bRotateX boolean
---@field bRotateY boolean
---@field bRotateZ boolean
local FAnimNode_SpringBone = {}



---@class FAnimNode_StateResult : FAnimNode_Root
local FAnimNode_StateResult = {}


---@class FAnimNode_Trail : FAnimNode_SkeletalControlBase
---@field TrailBone FBoneReference
---@field ChainLength int32
---@field ChainBoneAxis EAxis::Type
---@field bInvertChainBoneAxis boolean
---@field bLimitStretch boolean
---@field bLimitRotation boolean
---@field bUsePlanarLimit boolean
---@field bActorSpaceFakeVel boolean
---@field bReorientParentToChild boolean
---@field MaxDeltaTime float
---@field RelaxationSpeedScale float
---@field TrailRelaxationSpeed FRuntimeFloatCurve
---@field RelaxationSpeedScaleInputProcessor FInputScaleBiasClamp
---@field RotationLimits TArray<FRotationLimit>
---@field RotationOffsets TArray<FVector>
---@field PlanarLimits TArray<FAnimPhysPlanarLimit>
---@field StretchLimit float
---@field FakeVelocity FVector
---@field BaseJoint FBoneReference
---@field LastBoneRotationAnimAlphaBlend float
local FAnimNode_Trail = {}



---@class FAnimNode_TwistCorrectiveNode : FAnimNode_SkeletalControlBase
---@field BaseFrame FReferenceBoneFrame
---@field TwistFrame FReferenceBoneFrame
---@field TwistPlaneNormalAxis FAxis
---@field RangeMax float
---@field RemappedMin float
---@field RemappedMax float
---@field Curve FAnimCurveParam
local FAnimNode_TwistCorrectiveNode = {}



---@class FAnimNode_TwoBoneIK : FAnimNode_SkeletalControlBase
---@field IKBone FBoneReference
---@field StartStretchRatio float
---@field MaxStretchScale float
---@field EffectorLocation FVector
---@field EffectorTarget FBoneSocketTarget
---@field JointTargetLocation FVector
---@field JointTarget FBoneSocketTarget
---@field TwistAxis FAxis
---@field EffectorLocationSpace EBoneControlSpace
---@field JointTargetLocationSpace EBoneControlSpace
---@field bAllowStretching boolean
---@field bTakeRotationFromEffectorSpace boolean
---@field bMaintainEffectorRelRot boolean
---@field bAllowTwist boolean
local FAnimNode_TwoBoneIK = {}



---@class FAnimNode_TwoWayBlend : FAnimNode_Base
---@field A FPoseLink
---@field B FPoseLink
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field bResetChildOnActivation boolean
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
local FAnimNode_TwoWayBlend = {}



---@class FAnimPhysConstraintSetup
---@field LinearXLimitType AnimPhysLinearConstraintType
---@field LinearYLimitType AnimPhysLinearConstraintType
---@field LinearZLimitType AnimPhysLinearConstraintType
---@field LinearAxesMin FVector
---@field LinearAxesMax FVector
---@field AngularConstraintType AnimPhysAngularConstraintType
---@field TwistAxis AnimPhysTwistAxis
---@field AngularTargetAxis AnimPhysTwistAxis
---@field ConeAngle float
---@field AngularLimitsMin FVector
---@field AngularLimitsMax FVector
---@field AngularTarget FVector
local FAnimPhysConstraintSetup = {}



---@class FAnimPhysPlanarLimit
---@field DrivingBone FBoneReference
---@field PlaneTransform FTransform
local FAnimPhysPlanarLimit = {}



---@class FAnimPhysSphericalLimit
---@field DrivingBone FBoneReference
---@field SphereLocalOffset FVector
---@field LimitRadius float
---@field LimitType ESphericalLimitType
local FAnimPhysSphericalLimit = {}



---@class FAnimSequencerInstanceProxy : FAnimInstanceProxy
local FAnimSequencerInstanceProxy = {}


---@class FBlendBoneByChannelEntry
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bBlendTranslation boolean
---@field bBlendRotation boolean
---@field bBlendScale boolean
local FBlendBoneByChannelEntry = {}



---@class FBoneSocketTarget
---@field bUseSocket boolean
---@field BoneReference FBoneReference
---@field SocketReference FSocketReference
local FBoneSocketTarget = {}



---@class FConstraint
---@field TargetBone FBoneReference
---@field OffsetOption EConstraintOffsetOption
---@field TransformType ETransformConstraintType
---@field PerAxis FFilterOptionPerAxis
local FConstraint = {}



---@class FIKChain
local FIKChain = {}


---@class FIKChainLink
local FIKChainLink = {}


---@class FPoseDriverTarget
---@field BoneTransforms TArray<FPoseDriverTransform>
---@field TargetRotation FRotator
---@field TargetScale float
---@field DistanceMethod ERBFDistanceMethod
---@field FunctionType ERBFFunctionType
---@field bApplyCustomCurve boolean
---@field CustomCurve FRichCurve
---@field DrivenName FName
---@field bIsHidden boolean
local FPoseDriverTarget = {}



---@class FPoseDriverTransform
---@field TargetTranslation FVector
---@field TargetRotation FRotator
local FPoseDriverTransform = {}



---@class FPositionHistory
---@field Positions TArray<FVector>
---@field Range float
local FPositionHistory = {}



---@class FRBFEntry
---@field Values TArray<float>
local FRBFEntry = {}



---@class FRBFParams
---@field TargetDimensions int32
---@field SolverType ERBFSolverType
---@field Radius float
---@field bAutomaticRadius boolean
---@field Function ERBFFunctionType
---@field DistanceMethod ERBFDistanceMethod
---@field TwistAxis EBoneAxis
---@field WeightThreshold float
---@field NormalizeMethod ERBFNormalizeMethod
---@field MedianReference FVector
---@field MedianMin float
---@field MedianMax float
local FRBFParams = {}



---@class FRBFTarget : FRBFEntry
---@field ScaleFactor float
---@field bApplyCustomCurve boolean
---@field CustomCurve FRichCurve
---@field DistanceMethod ERBFDistanceMethod
---@field FunctionType ERBFFunctionType
local FRBFTarget = {}



---@class FRandomPlayerSequenceEntry
---@field Sequence UAnimSequence
---@field ChanceToPlay float
---@field MinLoopCount int32
---@field MaxLoopCount int32
---@field MinPlayRate float
---@field MaxPlayRate float
---@field BlendIn FAlphaBlend
local FRandomPlayerSequenceEntry = {}



---@class FReferenceBoneFrame
---@field Bone FBoneReference
---@field Axis FAxis
local FReferenceBoneFrame = {}



---@class FRotationLimit
---@field LimitMin FVector
---@field LimitMax FVector
local FRotationLimit = {}



---@class FRotationRetargetingInfo
---@field bEnabled boolean
---@field Source FTransform
---@field Target FTransform
---@field RotationComponent ERotationComponent
---@field TwistAxis FVector
---@field bUseAbsoluteAngle boolean
---@field SourceMinimum float
---@field SourceMaximum float
---@field TargetMinimum float
---@field TargetMaximum float
---@field EasingType EEasingFuncType
---@field CustomCurve FRuntimeFloatCurve
---@field bFlipEasing boolean
---@field EasingWeight float
---@field bClamp boolean
local FRotationRetargetingInfo = {}



---@class FSimSpaceSettings
---@field MasterAlpha float
---@field VelocityScaleZ float
---@field MaxLinearVelocity float
---@field MaxAngularVelocity float
---@field MaxLinearAcceleration float
---@field MaxAngularAcceleration float
---@field ExternalLinearDrag float
---@field ExternalLinearDragV FVector
---@field ExternalLinearVelocity FVector
---@field ExternalAngularVelocity FVector
local FSimSpaceSettings = {}



---@class FSocketReference
---@field SocketName FName
local FSocketReference = {}



---@class FSplineIKCachedBoneData
---@field Bone FBoneReference
---@field RefSkeletonIndex int32
local FSplineIKCachedBoneData = {}



---@class ISequencerAnimationSupport : IInterface
local ISequencerAnimationSupport = {}


---@class UAnimNotify_PlayMontageNotify : UAnimNotify
---@field NotifyName FName
local UAnimNotify_PlayMontageNotify = {}



---@class UAnimNotify_PlayMontageNotifyWindow : UAnimNotifyState
---@field NotifyName FName
local UAnimNotify_PlayMontageNotifyWindow = {}



---@class UAnimSequencerInstance : UAnimInstance
local UAnimSequencerInstance = {}


---@class UKismetAnimationLibrary : UBlueprintFunctionLibrary
local UKismetAnimationLibrary = {}

---@param RootPos FVector
---@param JointPos FVector
---@param EndPos FVector
---@param JointTarget FVector
---@param Effector FVector
---@param OutJointPos FVector
---@param OutEndPos FVector
---@param bAllowStretching boolean
---@param StartStretchRatio float
---@param MaxStretchScale float
function UKismetAnimationLibrary:K2_TwoBoneIK(RootPos, JointPos, EndPos, JointTarget, Effector, OutJointPos, OutEndPos, bAllowStretching, StartStretchRatio, MaxStretchScale) end
function UKismetAnimationLibrary:K2_StartProfilingTimer() end
---@param X float
---@param Y float
---@param Z float
---@param RangeOutMinX float
---@param RangeOutMaxX float
---@param RangeOutMinY float
---@param RangeOutMaxY float
---@param RangeOutMinZ float
---@param RangeOutMaxZ float
---@return FVector
function UKismetAnimationLibrary:K2_MakePerlinNoiseVectorAndRemap(X, Y, Z, RangeOutMinX, RangeOutMaxX, RangeOutMinY, RangeOutMaxY, RangeOutMinZ, RangeOutMaxZ) end
---@param Value float
---@param RangeOutMin float
---@param RangeOutMax float
---@return float
function UKismetAnimationLibrary:K2_MakePerlinNoiseAndRemap(Value, RangeOutMin, RangeOutMax) end
---@param CurrentTransform FTransform
---@param TargetPosition FVector
---@param LookAtVector FVector
---@param bUseUpVector boolean
---@param UpVector FVector
---@param ClampConeInDegree float
---@return FTransform
function UKismetAnimationLibrary:K2_LookAt(CurrentTransform, TargetPosition, LookAtVector, bUseUpVector, UpVector, ClampConeInDegree) end
---@param bLog boolean
---@param LogPrefix FString
---@return float
function UKismetAnimationLibrary:K2_EndProfilingTimer(bLog, LogPrefix) end
---@param Component USkeletalMeshComponent
---@param SocketOrBoneNameA FName
---@param SocketSpaceA ERelativeTransformSpace
---@param SocketOrBoneNameB FName
---@param SocketSpaceB ERelativeTransformSpace
---@param bRemapRange boolean
---@param InRangeMin float
---@param InRangeMax float
---@param OutRangeMin float
---@param OutRangeMax float
---@return float
function UKismetAnimationLibrary:K2_DistanceBetweenTwoSocketsAndMapRange(Component, SocketOrBoneNameA, SocketSpaceA, SocketOrBoneNameB, SocketSpaceB, bRemapRange, InRangeMin, InRangeMax, OutRangeMin, OutRangeMax) end
---@param Component USkeletalMeshComponent
---@param SocketOrBoneNameFrom FName
---@param SocketOrBoneNameTo FName
---@return FVector
function UKismetAnimationLibrary:K2_DirectionBetweenSockets(Component, SocketOrBoneNameFrom, SocketOrBoneNameTo) end
---@param DeltaSeconds float
---@param Component USkeletalMeshComponent
---@param SocketOrBoneName FName
---@param ReferenceSocketOrBone FName
---@param SocketSpace ERelativeTransformSpace
---@param OffsetInBoneSpace FVector
---@param History FPositionHistory
---@param NumberOfSamples int32
---@param VelocityMin float
---@param VelocityMax float
---@param EasingType EEasingFuncType
---@param CustomCurve FRuntimeFloatCurve
---@return float
function UKismetAnimationLibrary:K2_CalculateVelocityFromSockets(DeltaSeconds, Component, SocketOrBoneName, ReferenceSocketOrBone, SocketSpace, OffsetInBoneSpace, History, NumberOfSamples, VelocityMin, VelocityMax, EasingType, CustomCurve) end
---@param DeltaSeconds float
---@param Position FVector
---@param History FPositionHistory
---@param NumberOfSamples int32
---@param VelocityMin float
---@param VelocityMax float
---@return float
function UKismetAnimationLibrary:K2_CalculateVelocityFromPositionHistory(DeltaSeconds, Position, History, NumberOfSamples, VelocityMin, VelocityMax) end


---@class UPlayMontageCallbackProxy : UObject
---@field OnCompleted FPlayMontageCallbackProxyOnCompleted
---@field OnBlendOut FPlayMontageCallbackProxyOnBlendOut
---@field OnInterrupted FPlayMontageCallbackProxyOnInterrupted
---@field OnNotifyBegin FPlayMontageCallbackProxyOnNotifyBegin
---@field OnNotifyEnd FPlayMontageCallbackProxyOnNotifyEnd
local UPlayMontageCallbackProxy = {}

---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyEndReceived(NotifyName, BranchingPointNotifyPayload) end
---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyBeginReceived(NotifyName, BranchingPointNotifyPayload) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageEnded(Montage, bInterrupted) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageBlendingOut(Montage, bInterrupted) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param MontageToPlay UAnimMontage
---@param PlayRate float
---@param startingPosition float
---@param StartingSection FName
---@return UPlayMontageCallbackProxy
function UPlayMontageCallbackProxy:CreateProxyObjectForPlayMontage(InSkeletalMeshComponent, MontageToPlay, PlayRate, startingPosition, StartingSection) end


