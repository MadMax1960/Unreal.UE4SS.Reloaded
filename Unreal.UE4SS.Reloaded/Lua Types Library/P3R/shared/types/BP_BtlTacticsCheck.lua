---@meta

---@class ABP_BtlTacticsCheck_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Next UStaticMeshComponent
---@field Enemy5 UStaticMeshComponent
---@field Enemy4 UStaticMeshComponent
---@field Enemy3 UStaticMeshComponent
---@field Enemy2 UStaticMeshComponent
---@field Enemy1 UStaticMeshComponent
---@field Player4 UStaticMeshComponent
---@field Player3 UStaticMeshComponent
---@field Player2 UStaticMeshComponent
---@field Player1 UStaticMeshComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field NextCursorTimeline_Speed_C2032995481B3F794095B580EAAB8D38 float
---@field NextCursorTimeline__Direction_C2032995481B3F794095B580EAAB8D38 ETimelineDirection::Type
---@field NextCursorTimeline UTimelineComponent
---@field EndTimeline_butonScale_55957B444DA81E3708E3DEB240AD8888 float
---@field EndTimeline_Rate_55957B444DA81E3708E3DEB240AD8888 float
---@field EndTimeline__Direction_55957B444DA81E3708E3DEB240AD8888 ETimelineDirection::Type
---@field EndTimeline UTimelineComponent
---@field StartTimeline_Scale_098BFDA24326A6E40B104D959DA6BD14 float
---@field StartTimeline_Rate_098BFDA24326A6E40B104D959DA6BD14 float
---@field StartTimeline__Direction_098BFDA24326A6E40B104D959DA6BD14 ETimelineDirection::Type
---@field StartTimeline UTimelineComponent
---@field TempList TArray<ABtlActor>
---@field targetList TArray<ABtlActor>
---@field ListMoveAhead boolean
---@field TargetIndexTemp int32
---@field NextTextObj UBtlGuiDrawObjectText
---@field PartyPanelEnable boolean
---@field TargetIndex int32
---@field PosB FVector2D
---@field PosA FVector2D
---@field LeftUpList TArray<FVector2D>
---@field RightDownList TArray<FVector2D>
---@field Rate float
---@field TextObjList TArray<UBtlGuiDrawObjectPlg>
---@field RateList TArray<float>
---@field TextRate float
---@field RateListTemp TArray<float>
---@field AutoAngle float
---@field ['3DCkale'] float
---@field Speed float
---@field Update3DAnimation boolean
---@field OpenTheurgiaWindow boolean
---@field KeyhelpTypeEnemy boolean
---@field PlayerTargetList TArray<ABtlActor>
---@field EnemyTargetList TArray<ABtlActor>
---@field IsEnemyTargetList boolean
---@field IsEnemyNextTarget boolean
---@field CursorList TArray<ABtlActor>
---@field nextTargetIdx int32
---@field DebugPosCursor TArray<FVector>
---@field DebugPos2DCursor TArray<FVector2D>
---@field isShowDebug boolean
---@field BackCapture ABP_BtlSimpleTextureDraw_C
---@field isMoveCursor boolean
local ABP_BtlTacticsCheck_C = {}

---@param Start FVector
---@param End FVector
ABP_BtlTacticsCheck_C['Cal MovePosOffsetVec'] = function(self, Start, End) end
---@param Pres boolean
---@param Rep boolean
---@param Out boolean
function ABP_BtlTacticsCheck_C:ChecPushkCursor(Pres, Rep, Out) end
---@param vec1 FVector2D
---@param vec2 FVector2D
---@param vec1Length float
---@param vec2Length float
---@return float
ABP_BtlTacticsCheck_C['Cal Degree 2Vec'] = function(self, vec1, vec2, vec1Length, vec2Length) end
---@param In TArray<FVector2D>
function ABP_BtlTacticsCheck_C:DebugShowPosCursor(In) end
---@param In TArray<ABtlActor>
---@param Out TArray<FVector2D>
function ABP_BtlTacticsCheck_C:MakePosCursor(In, Out) end
---@param In ABtlActor
function ABP_BtlTacticsCheck_C:moveCursor(In) end
function ABP_BtlTacticsCheck_C:CreateAllTargetList() end
function ABP_BtlTacticsCheck_C:ToggleTargetList() end
function ABP_BtlTacticsCheck_C:SetTargetCursor() end
function ABP_BtlTacticsCheck_C:CreateEnemyTargetList() end
function ABP_BtlTacticsCheck_C:CreatePlayerTargetList() end
---@param A float
function ABP_BtlTacticsCheck_C:Update3D(A) end
---@param Actor ABtlActor
---@param Size float
function ABP_BtlTacticsCheck_C:GetNextSize(Actor, Size) end
---@param Actor ABtlActor
---@param Size float
function ABP_BtlTacticsCheck_C:GetSize(Actor, Size) end
---@param plg UPlgAsset
---@param NewItem float
function ABP_BtlTacticsCheck_C:MakeText(plg, NewItem) end
---@param Actor TArray<ABtlActor>
---@param bool boolean
function ABP_BtlTacticsCheck_C:CheckTargetInTopUI(Actor, bool) end
function ABP_BtlTacticsCheck_C:StartTimeline__FinishedFunc() end
function ABP_BtlTacticsCheck_C:StartTimeline__UpdateFunc() end
function ABP_BtlTacticsCheck_C:EndTimeline__FinishedFunc() end
function ABP_BtlTacticsCheck_C:EndTimeline__UpdateFunc() end
function ABP_BtlTacticsCheck_C:NextCursorTimeline__FinishedFunc() end
function ABP_BtlTacticsCheck_C:NextCursorTimeline__UpdateFunc() end
function ABP_BtlTacticsCheck_C:CallEndTimeline() end
function ABP_BtlTacticsCheck_C:CallStartTimeline() end
function ABP_BtlTacticsCheck_C:CallNextTimeline() end
function ABP_BtlTacticsCheck_C:PushOk() end
function ABP_BtlTacticsCheck_C:PushCancel() end
function ABP_BtlTacticsCheck_C:GuiActorBindAction() end
function ABP_BtlTacticsCheck_C:GuiActorUnbindAction() end
function ABP_BtlTacticsCheck_C:PushL1() end
function ABP_BtlTacticsCheck_C:PushLL() end
function ABP_BtlTacticsCheck_C:PushLR() end
function ABP_BtlTacticsCheck_C:PushRL() end
function ABP_BtlTacticsCheck_C:PushR2() end
function ABP_BtlTacticsCheck_C:PushLU() end
function ABP_BtlTacticsCheck_C:PushLD() end
---@param InputKey FBtlInputKey
ABP_BtlTacticsCheck_C['カスタムイベント_0'] = function(self, InputKey) end
function ABP_BtlTacticsCheck_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlTacticsCheck_C:GuiActorStateInit(flag, Param) end
function ABP_BtlTacticsCheck_C:GuiActorStateExit() end
---@param DeltaTime float
function ABP_BtlTacticsCheck_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlTacticsCheck_C:SetDebugKill() end
---@param EntryPoint int32
function ABP_BtlTacticsCheck_C:ExecuteUbergraph_BP_BtlTacticsCheck(EntryPoint) end


