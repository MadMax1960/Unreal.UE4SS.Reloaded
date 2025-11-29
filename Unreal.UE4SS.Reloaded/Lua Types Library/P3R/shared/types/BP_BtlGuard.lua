---@meta

---@class ABP_BtlGuard_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiDraw1 UBtlGuiDrawComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field EndTimeline_butonScale_585C45794638CE0A0C72A88BDF1B757B float
---@field EndTimeline_Rate_585C45794638CE0A0C72A88BDF1B757B float
---@field EndTimeline__Direction_585C45794638CE0A0C72A88BDF1B757B ETimelineDirection::Type
---@field EndTimeline UTimelineComponent
---@field StartTimeline_TextSpeed_085BD9854548134D1EA41C80FDBE783E float
---@field StartTimeline_Rate_085BD9854548134D1EA41C80FDBE783E float
---@field StartTimeline__Direction_085BD9854548134D1EA41C80FDBE783E ETimelineDirection::Type
---@field StartTimeline UTimelineComponent
---@field B FVector2D
---@field A FVector2D
---@field Caustics UMaterialInstanceDynamic
---@field LeftUpList TArray<FVector2D>
---@field RightDownList TArray<FVector2D>
---@field Rate float
---@field Triangle1ObjList TArray<UBtlGuiDrawObjectCore>
---@field Triangle2ObjList TArray<UBtlGuiDrawObjectCore>
---@field Float float
---@field Triangle1Rate TArray<float>
---@field Triangle2Rate TArray<float>
---@field Normal float
---@field ['Buton Scale'] float
---@field DecideKeyCross boolean
---@field CrossObj UBtlGuiDrawObjectSprite
---@field CircleObj UBtlGuiDrawObjectSprite
---@field IsOK boolean
---@field ['Text Speed'] float
---@field GebugType int32
---@field Triangle1ObjListask TArray<UBtlGuiDrawObjectCore>
---@field Triangle2ObjListMask TArray<UBtlGuiDrawObjectCore>
local ABP_BtlGuard_C = {}

---@param Vec FVector2D
function ABP_BtlGuard_C:CalcTriangle2OffsetVec(Vec) end
---@param Vec FVector2D
function ABP_BtlGuard_C:CalcTriangle1OffsetVec(Vec) end
function ABP_BtlGuard_C:UnbindAllAction() end
function ABP_BtlGuard_C:StartTimeline__FinishedFunc() end
function ABP_BtlGuard_C:StartTimeline__UpdateFunc() end
function ABP_BtlGuard_C:EndTimeline__FinishedFunc() end
function ABP_BtlGuard_C:EndTimeline__UpdateFunc() end
function ABP_BtlGuard_C:CallStartTimeline() end
function ABP_BtlGuard_C:CallEndTimeline() end
function ABP_BtlGuard_C:CallOK() end
function ABP_BtlGuard_C:CallCANCEL() end
function ABP_BtlGuard_C:GuiActorBindAction() end
function ABP_BtlGuard_C:GuiActorUnbindAction() end
function ABP_BtlGuard_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlGuard_C:GuiActorStateInit(flag, Param) end
---@param DeltaTime float
function ABP_BtlGuard_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlGuard_C:ExecuteUbergraph_BP_BtlGuard(EntryPoint) end


