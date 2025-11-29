---@meta

---@class ABP_BtlGuiEncountAlert_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field EncountTimeline_pos_2480F7FC401336A032F69CBD6AA3DC09 FVector
---@field EncountTimeline_Alpha_2480F7FC401336A032F69CBD6AA3DC09 float
---@field EncountTimeline_Scale_2480F7FC401336A032F69CBD6AA3DC09 float
---@field EncountTimeline__Direction_2480F7FC401336A032F69CBD6AA3DC09 ETimelineDirection::Type
---@field EncountTimeline UTimelineComponent
---@field Image UBtlGuiDrawObjectImage
---@field PlayerAdvantage boolean
---@field Pos FVector
---@field LifeTime float
---@field Scale float
---@field Alpha float
local ABP_BtlGuiEncountAlert_C = {}

---@param PlayerAdvantage boolean
---@param LifeTime float
function ABP_BtlGuiEncountAlert_C:SetParam(PlayerAdvantage, LifeTime) end
function ABP_BtlGuiEncountAlert_C:EncountTimeline__FinishedFunc() end
function ABP_BtlGuiEncountAlert_C:EncountTimeline__UpdateFunc() end
function ABP_BtlGuiEncountAlert_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlGuiEncountAlert_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlGuiEncountAlert_C:ExecuteUbergraph_BP_BtlGuiEncountAlert(EntryPoint) end


