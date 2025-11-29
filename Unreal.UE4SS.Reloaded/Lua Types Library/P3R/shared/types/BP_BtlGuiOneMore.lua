---@meta

---@class ABP_BtlGuiOneMore_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field OnemoreTimeline_Triangle4_183F66EE4C9887FB0BA401B86442E94A FVector
---@field OnemoreTimeline_Triangle5_183F66EE4C9887FB0BA401B86442E94A FVector
---@field OnemoreTimeline_Line_183F66EE4C9887FB0BA401B86442E94A float
---@field OnemoreTimeline_Text_183F66EE4C9887FB0BA401B86442E94A float
---@field OnemoreTimeline_riangle6_183F66EE4C9887FB0BA401B86442E94A float
---@field OnemoreTimeline_PointB_183F66EE4C9887FB0BA401B86442E94A float
---@field OnemoreTimeline__Direction_183F66EE4C9887FB0BA401B86442E94A ETimelineDirection::Type
---@field OnemoreTimeline UTimelineComponent
---@field IsEnemy boolean
---@field LifeTime float
---@field pointA FVector2D
---@field pointB FVector2D
---@field Triangle6 FVector2D
---@field obj5 UBtlGuiDrawObjectPlg
---@field Triangle5 FVector2D
---@field Obj4 UBtlGuiDrawObjectPlg
---@field ['Point B'] float
---@field ['Riangle 6'] float
---@field ['Triangle 5'] FVector
---@field ['Triangle 4'] FVector
---@field Obj3 UBtlGuiDrawObjectPlg
---@field Obj2 UBtlGuiDrawObjectPlg
---@field Text float
---@field Obj1 UBtlGuiDrawObjectPanel
---@field Line float
---@field TextSize FVector2D
---@field Triangle5Size FVector2D
local ABP_BtlGuiOneMore_C = {}

---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateLine(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTTextScale(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle4Pos(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle4Angle(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle4Scale(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle5Angle(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle5Scale(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdateTriangle6(Rate) end
---@param Rate float
function ABP_BtlGuiOneMore_C:UpdatePointB(Rate) end
---@param IsEnemy boolean
---@param LifeTime float
function ABP_BtlGuiOneMore_C:SetParam(IsEnemy, LifeTime) end
function ABP_BtlGuiOneMore_C:OnemoreTimeline__FinishedFunc() end
function ABP_BtlGuiOneMore_C:OnemoreTimeline__UpdateFunc() end
function ABP_BtlGuiOneMore_C:TimelineStart() end
function ABP_BtlGuiOneMore_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlGuiOneMore_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlGuiOneMore_C:ExecuteUbergraph_BP_BtlGuiOneMore(EntryPoint) end


