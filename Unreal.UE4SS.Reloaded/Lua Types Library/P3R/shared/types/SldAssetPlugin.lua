---@meta

---@class FDrawebleUVPos
---@field U0 float
---@field U1 float
---@field V0 float
---@field v1 float
local FDrawebleUVPos = {}



---@class FDrawebleVertexPos
---@field V00 FPVectore
---@field V01 FPVectore
---@field V10 FPVectore
---@field V11 FPVectore
local FDrawebleVertexPos = {}



---@class FPVectore
---@field X float
---@field Y float
local FPVectore = {}



---@class FSprLayoutDrawItem
---@field _uniqueID uint32
---@field _transform FMatrix
---@field _color FLinearColor
---@field _imageSize FPVectore
---@field _uv FDrawebleUVPos
---@field _vertexPos FDrawebleVertexPos
---@field _texture UTexture
---@field _offset FVector2D
local FSprLayoutDrawItem = {}



---@class FSprLayoutEditGroup
---@field Name FName
---@field DrawItems TArray<FSprLayoutDrawItem>
local FSprLayoutEditGroup = {}



---@class FSprLayoutEditResources
---@field Type ESLDResTypes
---@field Resources UObject
local FSprLayoutEditResources = {}



---@class FSprLayoutEditScene
---@field Name FName
---@field Groups TArray<FSprLayoutEditGroup>
local FSprLayoutEditScene = {}



---@class USldAsset : UObject
---@field TargetResources TArray<FSprLayoutEditResources>
---@field SceneDatas TArray<FSprLayoutEditScene>
local USldAsset = {}



