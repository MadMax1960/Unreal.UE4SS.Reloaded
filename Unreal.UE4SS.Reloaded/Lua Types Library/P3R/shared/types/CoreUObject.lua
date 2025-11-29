---@meta

---@class FARFilter
---@field PackageNames TArray<FName>
---@field PackagePaths TArray<FName>
---@field ObjectPaths TArray<FName>
---@field ClassNames TArray<FName>
---@field RecursiveClassesExclusionSet TSet<FName>
---@field bRecursivePaths boolean
---@field bRecursiveClasses boolean
---@field bIncludeOnlyOnDiskAssets boolean
local FARFilter = {}



---@class FAssetBundleData
---@field Bundles TArray<FAssetBundleEntry>
local FAssetBundleData = {}



---@class FAssetBundleEntry
---@field BundleName FName
---@field BundleAssets TArray<FSoftObjectPath>
local FAssetBundleEntry = {}



---@class FAssetData
---@field ObjectPath FName
---@field PackageName FName
---@field PackagePath FName
---@field AssetName FName
---@field AssetClass FName
local FAssetData = {}



---@class FAutomationEvent
---@field Type EAutomationEventType
---@field Message FString
---@field Context FString
---@field Artifact FGuid
local FAutomationEvent = {}



---@class FAutomationExecutionEntry
---@field Event FAutomationEvent
---@field Filename FString
---@field LineNumber int32
---@field Timestamp FDateTime
local FAutomationExecutionEntry = {}



---@class FBox
---@field Min FVector
---@field Max FVector
---@field IsValid uint8
local FBox = {}



---@class FBox2D
---@field Min FVector2D
---@field Max FVector2D
---@field bIsValid uint8
local FBox2D = {}



---@class FBoxSphereBounds
---@field Origin FVector
---@field BoxExtent FVector
---@field SphereRadius float
local FBoxSphereBounds = {}



---@class FColor
---@field B uint8
---@field G uint8
---@field R uint8
---@field A uint8
local FColor = {}



---@class FDateTime
local FDateTime = {}


---@class FDefault__ScriptStruct
local FDefault__ScriptStruct = {}


---@class FFallbackStruct
local FFallbackStruct = {}


---@class FFloatInterval
---@field Min float
---@field Max float
local FFloatInterval = {}



---@class FFloatRange
---@field LowerBound FFloatRangeBound
---@field UpperBound FFloatRangeBound
local FFloatRange = {}



---@class FFloatRangeBound
---@field Type ERangeBoundTypes::Type
---@field Value float
local FFloatRangeBound = {}



---@class FFrameNumber
---@field Value int32
local FFrameNumber = {}



---@class FFrameNumberRange
---@field LowerBound FFrameNumberRangeBound
---@field UpperBound FFrameNumberRangeBound
local FFrameNumberRange = {}



---@class FFrameNumberRangeBound
---@field Type ERangeBoundTypes::Type
---@field Value FFrameNumber
local FFrameNumberRangeBound = {}



---@class FFrameRate
---@field Numerator int32
---@field Denominator int32
local FFrameRate = {}



---@class FFrameTime
---@field FrameNumber FFrameNumber
---@field SubFrame float
local FFrameTime = {}



---@class FGuid
---@field A int32
---@field B int32
---@field C int32
---@field D int32
local FGuid = {}



---@class FInt32Interval
---@field Min int32
---@field Max int32
local FInt32Interval = {}



---@class FInt32Range
---@field LowerBound FInt32RangeBound
---@field UpperBound FInt32RangeBound
local FInt32Range = {}



---@class FInt32RangeBound
---@field Type ERangeBoundTypes::Type
---@field Value int32
local FInt32RangeBound = {}



---@class FIntPoint
---@field X int32
---@field Y int32
local FIntPoint = {}



---@class FIntVector
---@field X int32
---@field Y int32
---@field Z int32
local FIntVector = {}



---@class FInterpCurveFloat
---@field Points TArray<FInterpCurvePointFloat>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveFloat = {}



---@class FInterpCurveLinearColor
---@field Points TArray<FInterpCurvePointLinearColor>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveLinearColor = {}



---@class FInterpCurvePointFloat
---@field InVal float
---@field OutVal float
---@field ArriveTangent float
---@field LeaveTangent float
---@field InterpMode EInterpCurveMode
local FInterpCurvePointFloat = {}



---@class FInterpCurvePointLinearColor
---@field InVal float
---@field OutVal FLinearColor
---@field ArriveTangent FLinearColor
---@field LeaveTangent FLinearColor
---@field InterpMode EInterpCurveMode
local FInterpCurvePointLinearColor = {}



---@class FInterpCurvePointQuat
---@field InVal float
---@field OutVal FQuat
---@field ArriveTangent FQuat
---@field LeaveTangent FQuat
---@field InterpMode EInterpCurveMode
local FInterpCurvePointQuat = {}



---@class FInterpCurvePointTwoVectors
---@field InVal float
---@field OutVal FTwoVectors
---@field ArriveTangent FTwoVectors
---@field LeaveTangent FTwoVectors
---@field InterpMode EInterpCurveMode
local FInterpCurvePointTwoVectors = {}



---@class FInterpCurvePointVector
---@field InVal float
---@field OutVal FVector
---@field ArriveTangent FVector
---@field LeaveTangent FVector
---@field InterpMode EInterpCurveMode
local FInterpCurvePointVector = {}



---@class FInterpCurvePointVector2D
---@field InVal float
---@field OutVal FVector2D
---@field ArriveTangent FVector2D
---@field LeaveTangent FVector2D
---@field InterpMode EInterpCurveMode
local FInterpCurvePointVector2D = {}



---@class FInterpCurveQuat
---@field Points TArray<FInterpCurvePointQuat>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveQuat = {}



---@class FInterpCurveTwoVectors
---@field Points TArray<FInterpCurvePointTwoVectors>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveTwoVectors = {}



---@class FInterpCurveVector
---@field Points TArray<FInterpCurvePointVector>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveVector = {}



---@class FInterpCurveVector2D
---@field Points TArray<FInterpCurvePointVector2D>
---@field bIsLooped boolean
---@field LoopKeyOffset float
local FInterpCurveVector2D = {}



---@class FJoinabilitySettings
---@field SessionName FName
---@field bPublicSearchable boolean
---@field bAllowInvites boolean
---@field bJoinViaPresence boolean
---@field bJoinViaPresenceFriendsOnly boolean
---@field MaxPlayers int32
---@field MaxPartySize int32
local FJoinabilitySettings = {}



---@class FLinearColor
---@field R float
---@field G float
---@field B float
---@field A float
local FLinearColor = {}



---@class FMatrix
---@field XPlane FPlane
---@field YPlane FPlane
---@field ZPlane FPlane
---@field WPlane FPlane
local FMatrix = {}



---@class FOrientedBox
---@field Center FVector
---@field AxisX FVector
---@field AxisY FVector
---@field AxisZ FVector
---@field ExtentX float
---@field ExtentY float
---@field ExtentZ float
local FOrientedBox = {}



---@class FPackedNormal
---@field X uint8
---@field Y uint8
---@field Z uint8
---@field W uint8
local FPackedNormal = {}



---@class FPackedRGB10A2N
---@field Packed int32
local FPackedRGB10A2N = {}



---@class FPackedRGBA16N
---@field XY int32
---@field ZW int32
local FPackedRGBA16N = {}



---@class FPlane : FVector
---@field W float
local FPlane = {}



---@class FPolyglotTextData
---@field Category ELocalizedTextSourceCategory
---@field NativeCulture FString
---@field Namespace FString
---@field Key FString
---@field NativeString FString
---@field LocalizedStrings TMap<FString, FString>
---@field bIsMinimalPatch boolean
---@field CachedText FText
local FPolyglotTextData = {}



---@class FPrimaryAssetId
---@field PrimaryAssetType FPrimaryAssetType
---@field PrimaryAssetName FName
local FPrimaryAssetId = {}



---@class FPrimaryAssetType
---@field Name FName
local FPrimaryAssetType = {}



---@class FQualifiedFrameTime
---@field Time FFrameTime
---@field Rate FFrameRate
local FQualifiedFrameTime = {}



---@class FQuat
---@field X float
---@field Y float
---@field Z float
---@field W float
local FQuat = {}



---@class FRandomStream
---@field InitialSeed int32
---@field Seed int32
local FRandomStream = {}



---@class FRotator
---@field Pitch float
---@field Yaw float
---@field Roll float
local FRotator = {}



---@class FSoftClassPath : FSoftObjectPath
local FSoftClassPath = {}


---@class FSoftObjectPath
---@field AssetPathName FName
---@field SubPathString FString
local FSoftObjectPath = {}



---@class FTestUninitializedScriptStructMembersTest
---@field UninitializedObjectReference UObject
---@field InitializedObjectReference UObject
---@field UnusedValue float
local FTestUninitializedScriptStructMembersTest = {}



---@class FTimecode
---@field Hours int32
---@field Minutes int32
---@field Seconds int32
---@field Frames int32
---@field bDropFrameFormat boolean
local FTimecode = {}



---@class FTimespan
local FTimespan = {}


---@class FTransform
---@field Rotation FQuat
---@field Translation FVector
---@field Scale3D FVector
local FTransform = {}



---@class FTwoVectors
---@field v1 FVector
---@field v2 FVector
local FTwoVectors = {}



---@class FUniqueNetIdWrapper
local FUniqueNetIdWrapper = {}


---@class FVector
---@field X float
---@field Y float
---@field Z float
local FVector = {}



---@class FVector2D
---@field X float
---@field Y float
local FVector2D = {}



---@class FVector4
---@field X float
---@field Y float
---@field Z float
---@field W float
local FVector4 = {}



---@class IInterface : UObject
local IInterface = {}


---@class UArrayProperty : UProperty
local UArrayProperty = {}


---@class UBoolProperty : UProperty
local UBoolProperty = {}


---@class UByteProperty : UNumericProperty
local UByteProperty = {}


---@class UClass : UStruct
local UClass = {}


---@class UClassProperty : UObjectProperty
local UClassProperty = {}


---@class UDefault__Class
local UDefault__Class = {}


---@class UDefault__DynamicClass
local UDefault__DynamicClass = {}


---@class UDefault__LinkerPlaceholderClass
local UDefault__LinkerPlaceholderClass = {}


---@class UDelegateFunction : UFunction
local UDelegateFunction = {}


---@class UDelegateProperty : UProperty
local UDelegateProperty = {}


---@class UDoubleProperty : UNumericProperty
local UDoubleProperty = {}


---@class UDynamicClass : UClass
local UDynamicClass = {}


---@class UEnum : UField
local UEnum = {}


---@class UEnumProperty : UProperty
local UEnumProperty = {}


---@class UField : UObject
local UField = {}


---@class UFloatProperty : UNumericProperty
local UFloatProperty = {}


---@class UFunction : UStruct
local UFunction = {}


---@class UGCObjectReferencer : UObject
local UGCObjectReferencer = {}


---@class UInt16Property : UNumericProperty
local UInt16Property = {}


---@class UInt64Property : UNumericProperty
local UInt64Property = {}


---@class UInt8Property : UNumericProperty
local UInt8Property = {}


---@class UIntProperty : UNumericProperty
local UIntProperty = {}


---@class UInterfaceProperty : UProperty
local UInterfaceProperty = {}


---@class ULazyObjectProperty : UObjectPropertyBase
local ULazyObjectProperty = {}


---@class ULinkerPlaceholderClass : UClass
local ULinkerPlaceholderClass = {}


---@class ULinkerPlaceholderExportObject : UObject
local ULinkerPlaceholderExportObject = {}


---@class ULinkerPlaceholderFunction : UFunction
local ULinkerPlaceholderFunction = {}


---@class UMapProperty : UProperty
local UMapProperty = {}


---@class UMetaData : UObject
local UMetaData = {}


---@class UMulticastDelegateProperty : UProperty
local UMulticastDelegateProperty = {}


---@class UMulticastDelegatePropertyWrapper : UPropertyWrapper
local UMulticastDelegatePropertyWrapper = {}


---@class UMulticastInlineDelegateProperty : UMulticastDelegateProperty
local UMulticastInlineDelegateProperty = {}


---@class UMulticastInlineDelegatePropertyWrapper : UMulticastDelegatePropertyWrapper
local UMulticastInlineDelegatePropertyWrapper = {}


---@class UMulticastSparseDelegateProperty : UMulticastDelegateProperty
local UMulticastSparseDelegateProperty = {}


---@class UNameProperty : UProperty
local UNameProperty = {}


---@class UNumericProperty : UProperty
local UNumericProperty = {}


---@class UObjectProperty : UObjectPropertyBase
local UObjectProperty = {}


---@class UObjectPropertyBase : UProperty
local UObjectPropertyBase = {}


---@class UObjectRedirector : UObject
local UObjectRedirector = {}


---@class UPackage : UObject
local UPackage = {}


---@class UPackageMap : UObject
local UPackageMap = {}


---@class UProperty : UField
local UProperty = {}


---@class UPropertyWrapper : UObject
local UPropertyWrapper = {}


---@class UScriptStruct : UStruct
local UScriptStruct = {}


---@class USetProperty : UProperty
local USetProperty = {}


---@class USoftClassProperty : USoftObjectProperty
local USoftClassProperty = {}


---@class USoftObjectProperty : UObjectPropertyBase
local USoftObjectProperty = {}


---@class USparseDelegateFunction : UDelegateFunction
local USparseDelegateFunction = {}


---@class UStrProperty : UProperty
local UStrProperty = {}


---@class UStruct : UField
local UStruct = {}


---@class UStructProperty : UProperty
local UStructProperty = {}


---@class UTextBuffer : UObject
local UTextBuffer = {}


---@class UTextProperty : UProperty
local UTextProperty = {}


---@class UUInt16Property : UNumericProperty
local UUInt16Property = {}


---@class UUInt32Property : UNumericProperty
local UUInt32Property = {}


---@class UUInt64Property : UNumericProperty
local UUInt64Property = {}


---@class UWeakObjectProperty : UObjectPropertyBase
local UWeakObjectProperty = {}


