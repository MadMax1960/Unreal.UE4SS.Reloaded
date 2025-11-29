---@meta

---@class FMcaCamData
---@field tx float
---@field ty float
---@field tz float
---@field rx float
---@field ry float
---@field rz float
---@field fovX float
---@field fovY float
local FMcaCamData = {}



---@class FMcaData
---@field frameSkip uint32
---@field frameNum int32
---@field dataFormat int32
---@field pCamData TArray<FMcaCamData>
local FMcaData = {}



---@class UMcaAsset : UObject
---@field McaData FMcaData
local UMcaAsset = {}



