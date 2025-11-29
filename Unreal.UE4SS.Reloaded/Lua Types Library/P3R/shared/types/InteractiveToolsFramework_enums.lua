---@enum EInputCaptureRequestType
local EInputCaptureRequestType = {
    Begin = 1,
    Ignore = 2,
    EInputCaptureRequestType_MAX = 3,
}

---@enum EInputCaptureSide
local EInputCaptureSide = {
    None = 0,
    Left = 1,
    Right = 2,
    Both = 3,
    Any = 99,
    EInputCaptureSide_MAX = 100,
}

---@enum EInputCaptureState
local EInputCaptureState = {
    Begin = 1,
    Continue = 2,
    End = 3,
    Ignore = 4,
    EInputCaptureState_MAX = 5,
}

---@enum EInputDevices
local EInputDevices = {
    None = 0,
    Keyboard = 1,
    Mouse = 2,
    Gamepad = 4,
    OculusTouch = 8,
    HTCViveWands = 16,
    AnySpatialDevice = 24,
    TabletFingers = 1024,
    EInputDevices_MAX = 1025,
}

---@enum ESceneSnapQueryTargetType
local ESceneSnapQueryTargetType = {
    None = 0,
    MeshVertex = 1,
    MeshEdge = 2,
    Grid = 4,
    All = 7,
    ESceneSnapQueryTargetType_MAX = 8,
}

---@enum ESceneSnapQueryType
local ESceneSnapQueryType = {
    Position = 1,
    Rotation = 2,
    ESceneSnapQueryType_MAX = 3,
}

---@enum ESelectedObjectsModificationType
local ESelectedObjectsModificationType = {
    Replace = 0,
    Add = 1,
    Remove = 2,
    Clear = 3,
    ESelectedObjectsModificationType_MAX = 4,
}

---@enum EStandardToolContextMaterials
local EStandardToolContextMaterials = {
    VertexColorMaterial = 1,
    EStandardToolContextMaterials_MAX = 2,
}

---@enum EToolChangeTrackingMode
local EToolChangeTrackingMode = {
    NoChangeTracking = 1,
    UndoToExit = 2,
    FullUndoRedo = 3,
    EToolChangeTrackingMode_MAX = 4,
}

---@enum EToolContextCoordinateSystem
local EToolContextCoordinateSystem = {
    World = 0,
    Local = 1,
    EToolContextCoordinateSystem_MAX = 2,
}

---@enum EToolMessageLevel
local EToolMessageLevel = {
    Internal = 0,
    UserMessage = 1,
    UserNotification = 2,
    UserWarning = 3,
    UserError = 4,
    EToolMessageLevel_MAX = 5,
}

---@enum EToolSide
local EToolSide = {
    Left = 1,
    Mouse = 1,
    Right = 2,
    EToolSide_MAX = 3,
}

---@enum ETransformGizmoSubElements
local ETransformGizmoSubElements = {
    None = 0,
    TranslateAxisX = 2,
    TranslateAxisY = 4,
    TranslateAxisZ = 8,
    TranslateAllAxes = 14,
    TranslatePlaneXY = 16,
    TranslatePlaneXZ = 32,
    TranslatePlaneYZ = 64,
    TranslateAllPlanes = 112,
    RotateAxisX = 128,
    RotateAxisY = 256,
    RotateAxisZ = 512,
    RotateAllAxes = 896,
    ScaleAxisX = 1024,
    ScaleAxisY = 2048,
    ScaleAxisZ = 4096,
    ScaleAllAxes = 7168,
    ScalePlaneYZ = 8192,
    ScalePlaneXZ = 16384,
    ScalePlaneXY = 32768,
    ScaleAllPlanes = 57344,
    ScaleUniform = 65536,
    StandardTranslateRotate = 1022,
    TranslateRotateUniformScale = 66558,
    FullTranslateRotateScale = 131070,
    ETransformGizmoSubElements_MAX = 131071,
}

---@enum EViewInteractionState
local EViewInteractionState = {
    None = 0,
    Hovered = 1,
    Focused = 2,
    EViewInteractionState_MAX = 3,
}

