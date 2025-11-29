---@meta

---@class FStructSerializerArrayTestStruct
---@field Int32Array TArray<int32>
---@field ByteArray TArray<uint8>
---@field StaticSingleElement int32
---@field StaticInt32Array int32
---@field StaticFloatArray float
---@field VectorArray TArray<FVector>
---@field StructArray TArray<FStructSerializerBuiltinTestStruct>
local FStructSerializerArrayTestStruct = {}



---@class FStructSerializerBooleanTestStruct
---@field BoolFalse boolean
---@field BoolTrue boolean
---@field Bitfield0 boolean
---@field Bitfield1 boolean
---@field Bitfield2Set boolean
---@field Bitfield3 boolean
---@field Bitfield4Set boolean
---@field Bitfield5Set boolean
---@field Bitfield6 boolean
---@field Bitfield7Set boolean
local FStructSerializerBooleanTestStruct = {}



---@class FStructSerializerBuiltinTestStruct
---@field Guid FGuid
---@field Name FName
---@field String FString
---@field Text FText
---@field Vector FVector
---@field Vector4 FVector4
---@field Rotator FRotator
---@field Quat FQuat
---@field Color FColor
local FStructSerializerBuiltinTestStruct = {}



---@class FStructSerializerByteArray
---@field Dummy1 int32
---@field ByteArray TArray<uint8>
---@field Dummy2 int32
---@field Int8Array TArray<int8>
---@field Dummy3 int32
local FStructSerializerByteArray = {}



---@class FStructSerializerMapTestStruct
---@field IntToStr TMap<int32, FString>
---@field StrToStr TMap<FString, FString>
---@field StrToVec TMap<FString, FVector>
---@field StrToStruct TMap<FString, FStructSerializerBuiltinTestStruct>
local FStructSerializerMapTestStruct = {}



---@class FStructSerializerNumericTestStruct
---@field Int8 int8
---@field Int16 int16
---@field Int32 int32
---@field Int64 int64
---@field UInt8 uint8
---@field UInt16 uint16
---@field UInt32 uint32
---@field UInt64 uint64
---@field Float float
---@field Double double
local FStructSerializerNumericTestStruct = {}



---@class FStructSerializerObjectTestStruct
---@field Class UClass
---@field SubClass TSubclassOf<UMetaData>
---@field SoftClass TSoftClassPtr<UMetaData>
---@field Object UObject
---@field WeakObject TWeakObjectPtr<UMetaData>
---@field SoftObject TSoftObjectPtr<UMetaData>
---@field ClassPath FSoftClassPath
---@field ObjectPath FSoftObjectPath
local FStructSerializerObjectTestStruct = {}



---@class FStructSerializerSetTestStruct
---@field StrSet TSet<FString>
---@field IntSet TSet<int32>
---@field NameSet TSet<FName>
---@field StructSet TSet<FStructSerializerBuiltinTestStruct>
local FStructSerializerSetTestStruct = {}



---@class FStructSerializerTestStruct
---@field Numerics FStructSerializerNumericTestStruct
---@field Booleans FStructSerializerBooleanTestStruct
---@field objects FStructSerializerObjectTestStruct
---@field Builtins FStructSerializerBuiltinTestStruct
---@field Arrays FStructSerializerArrayTestStruct
---@field Maps FStructSerializerMapTestStruct
---@field Sets FStructSerializerSetTestStruct
local FStructSerializerTestStruct = {}



