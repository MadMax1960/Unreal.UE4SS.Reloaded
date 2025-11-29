---@meta

---@class FSprData
---@field Width float
---@field Height float
---@field U0 float
---@field V0 float
---@field U1 float
---@field v1 float
---@field Texture UTexture
---@field RGBA uint32
---@field StretchLen int16
---@field ScalingSize uint32
local FSprData = {}



---@class FSprDataArray
---@field SprDatas TArray<FSprData>
local FSprDataArray = {}



---@class USprAsset : UObject
---@field mTexArray TArray<UTexture>
---@field SprDatas TMap<uint32, FSprDataArray>
local USprAsset = {}



