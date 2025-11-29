---@meta

---@class FPlgData
---@field PlgDatas TArray<FPlgPrimitiveData>
local FPlgData = {}



---@class FPlgPrimitiveData
---@field Vertices TArray<FVector>
---@field Indices TArray<uint16>
---@field Colors TArray<uint32>
---@field Name FName
---@field MinX float
---@field MinY float
---@field MaxX float
---@field MaxY float
local FPlgPrimitiveData = {}



---@class UPlgAsset : UObject
---@field PlgData FPlgData
local UPlgAsset = {}



---@class UPlgPrimitiveComponent : UMeshComponent
---@field PlgAsset UPlgAsset
---@field PlgPrimitiveNo int32
local UPlgPrimitiveComponent = {}



