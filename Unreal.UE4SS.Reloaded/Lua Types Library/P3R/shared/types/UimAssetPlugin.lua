---@meta

---@class FUim2DVertCol
---@field X float
---@field Y float
---@field Color uint32
local FUim2DVertCol = {}



---@class FUim2DVertColUV
---@field X float
---@field Y float
---@field Color uint32
---@field U0 float
---@field V0 float
local FUim2DVertColUV = {}



---@class FUim2DVertUV
---@field X float
---@field Y float
---@field U0 float
---@field V0 float
local FUim2DVertUV = {}



---@class FUim2DVertex
---@field X float
---@field Y float
local FUim2DVertex = {}



---@class FUim3DVertCol
---@field X float
---@field Y float
---@field Z float
---@field Color uint32
local FUim3DVertCol = {}



---@class FUim3DVertColUV
---@field X float
---@field Y float
---@field Z float
---@field Color uint32
---@field U0 float
---@field V0 float
local FUim3DVertColUV = {}



---@class FUim3DVertUV
---@field X float
---@field Y float
---@field Z float
---@field U0 float
---@field V0 float
local FUim3DVertUV = {}



---@class FUim3DVertex
---@field X float
---@field Y float
---@field Z float
local FUim3DVertex = {}



---@class FUimData
---@field frameSkip uint32
---@field frameNum int32
---@field vertexNum int32
---@field polygonNum int32
---@field indexNum int32
---@field coordinate int32
---@field geomFormat int32
---@field animFormat int32
---@field p2DGeomVertex TArray<FUim2DVertex>
---@field p2DGeomVertCol TArray<FUim2DVertCol>
---@field p2DGeomVertColUV TArray<FUim2DVertColUV>
---@field p2DGeomVertUV TArray<FUim2DVertUV>
---@field p2DAnimVertex TArray<FUim2DVertex>
---@field p2DAnimVertCol TArray<FUim2DVertCol>
---@field p2DAnimVertColUV TArray<FUim2DVertColUV>
---@field p2DAnimVertUV TArray<FUim2DVertUV>
---@field p3DGeomVertex TArray<FUim3DVertex>
---@field p3DGeomVertCol TArray<FUim3DVertCol>
---@field p3DGeomVertColUV TArray<FUim3DVertColUV>
---@field p3DGeomVertUV TArray<FUim3DVertUV>
---@field p3DAnimVertex TArray<FUim3DVertex>
---@field p3DAnimVertCol TArray<FUim3DVertCol>
---@field p3DAnimVertColUV TArray<FUim3DVertColUV>
---@field p3DAnimVertUV TArray<FUim3DVertUV>
---@field Indices TArray<uint16>
local FUimData = {}



---@class UUimAsset : UObject
---@field UimData FUimData
local UUimAsset = {}



