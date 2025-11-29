---@enum EInsetPolygonsMode
local EInsetPolygonsMode = {
    All = 0,
    CenterPolygonOnly = 1,
    SidePolygonsOnly = 2,
    EInsetPolygonsMode_MAX = 3,
}

---@enum EMeshElementAttributeType
local EMeshElementAttributeType = {
    None = 0,
    FVector4 = 1,
    FVector = 2,
    FVector2D = 3,
    Float = 4,
    Int = 5,
    Bool = 6,
    FName = 7,
    EMeshElementAttributeType_MAX = 8,
}

---@enum EMeshModificationType
local EMeshModificationType = {
    FirstInterim = 0,
    Interim = 1,
    Final = 2,
    EMeshModificationType_MAX = 3,
}

---@enum EMeshTopologyChange
local EMeshTopologyChange = {
    NoTopologyChange = 0,
    TopologyChange = 1,
    EMeshTopologyChange_MAX = 2,
}

---@enum EPolygonEdgeHardness
local EPolygonEdgeHardness = {
    NewEdgesSoft = 0,
    NewEdgesHard = 1,
    AllEdgesSoft = 2,
    AllEdgesHard = 3,
    EPolygonEdgeHardness_MAX = 4,
}

---@enum ETriangleTessellationMode
local ETriangleTessellationMode = {
    ThreeTriangles = 0,
    FourTriangles = 1,
    ETriangleTessellationMode_MAX = 2,
}

