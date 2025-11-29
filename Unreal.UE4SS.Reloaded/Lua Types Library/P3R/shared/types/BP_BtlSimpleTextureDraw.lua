---@meta

---@class ABP_BtlSimpleTextureDraw_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field DefaultSceneRoot USceneComponent
---@field Obj UBtlGuiDrawObjectImage
---@field Texture UTexture
---@field OT EBtlGuiOT
local ABP_BtlSimpleTextureDraw_C = {}

function ABP_BtlSimpleTextureDraw_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlSimpleTextureDraw_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_BtlSimpleTextureDraw_C:ExecuteUbergraph_BP_BtlSimpleTextureDraw(EntryPoint) end


