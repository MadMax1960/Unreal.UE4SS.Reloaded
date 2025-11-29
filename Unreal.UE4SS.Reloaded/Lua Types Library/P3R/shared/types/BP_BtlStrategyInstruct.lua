---@meta

---@class ABP_BtlStrategyInstruct_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiDrawCaustics UBtlGuiDrawComponent
---@field BtlGuiDraw1 UBtlGuiDrawComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiList2 UBtlGuiListComponent
---@field BtlGuiList1 UBtlGuiListComponent
---@field BtlGuiList UBtlGuiListComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field AlreadyEscapeAnimation_AlreadyEscape_F994A1B04698C41041ADD890AA9FDE70 float
---@field AlreadyEscapeAnimation__Direction_F994A1B04698C41041ADD890AA9FDE70 ETimelineDirection::Type
---@field AlreadyEscapeAnimation UTimelineComponent
---@field List2Check2Animation_Scale_191B92D74A9E8024C2105F85F018EE9E float
---@field List2Check2Animation__Direction_191B92D74A9E8024C2105F85F018EE9E ETimelineDirection::Type
---@field List2Check2Animation UTimelineComponent
---@field List2Animation_CircleOpen_30188D6344C2C6C2007865A986A6FE88 FVector
---@field List2Animation__Direction_30188D6344C2C6C2007865A986A6FE88 ETimelineDirection::Type
---@field List2Animation UTimelineComponent
---@field List1Animation_List1CursorFadein_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation_ListFadein_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation_TitleMoveRate_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation_BaclCircleRate_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation_BackPanelRate_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation_CursorRate_D8042E6848C957067D431995CEFFD5EC float
---@field List1Animation__Direction_D8042E6848C957067D431995CEFFD5EC ETimelineDirection::Type
---@field List1Animation UTimelineComponent
---@field OutAnimation_illhouetteRate_DE8166754F1662BE4AF79F8C853961E7 float
---@field OutAnimation_PanelRate_DE8166754F1662BE4AF79F8C853961E7 float
---@field OutAnimation_OutTitleRate_DE8166754F1662BE4AF79F8C853961E7 float
---@field OutAnimation_CursorRate_DE8166754F1662BE4AF79F8C853961E7 float
---@field OutAnimation__Direction_DE8166754F1662BE4AF79F8C853961E7 ETimelineDirection::Type
---@field OutAnimation UTimelineComponent
---@field CursorLoop_CursorScale_BA31B6D541FCBC581AE4288A44B6933E float
---@field CursorLoop__Direction_BA31B6D541FCBC581AE4288A44B6933E ETimelineDirection::Type
---@field CursorLoop UTimelineComponent
---@field CursorUpdate_CursorRate_DC80B6D542202BEECC9502BBF49BDDED float
---@field CursorUpdate__Direction_DC80B6D542202BEECC9502BBF49BDDED ETimelineDirection::Type
---@field CursorUpdate UTimelineComponent
---@field InAnimation_SillhouetteRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_MainListRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_AlreadyEscapeRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_TitleHelp_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_CursorRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_TitleRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation_BackPanelRate_5C7FC2A743E4B87EDE57AEAA8AF61EBA float
---@field InAnimation__Direction_5C7FC2A743E4B87EDE57AEAA8AF61EBA ETimelineDirection::Type
---@field InAnimation UTimelineComponent
---@field CursorIndex TArray<int32>
---@field TopIndex TArray<int32>
---@field CurrentIndex TArray<int32>
---@field ForIndex int32
---@field PlayerList TArray<ABtlActor>
---@field EnableStrategyChange boolean
---@field Lise1Enable TArray<boolean>
---@field inputState int32
---@field OperationNameList TArray<FString>
---@field OffsetA FVector2D
---@field OffsetB FVector2D
---@field OffsetC FVector2D
---@field ['Back Panel Rate'] float
---@field BackPanel UBtlGuiDrawObjectRoundRect
---@field ['Title Rate'] float
---@field Title TArray<UBtlGuiDrawObjectPlg>
---@field ['Cursor Rate'] float
---@field Cursor TArray<UBtlGuiDrawObjectPrimitive>
---@field MainList TArray<UBtlGuiDrawObjectSprite>
---@field ['Title Help'] float
---@field TitleHelp TArray<UBtlGuiDrawObjectSprite>
---@field AlreadyEscape TArray<UBtlGuiDrawObjectCore>
---@field ['Already Escape Rate'] float
---@field MainListPos TArray<FVector2D>
---@field AlreadyEscapePos TArray<FVector2D>
---@field PrevMainCursor int32
---@field ['Cursor Movement'] float
---@field ['Cursor Scale'] float
---@field ['Main List Rate'] float
---@field OutCursorRate float
---@field ['Out Title Rate'] float
---@field ['OutPanel Rate'] float
---@field sillhouette UBtlGuiDrawObjectRect
---@field ['Sillhouette Rate'] float
---@field OutTitleHelpRate float
---@field ['OutBack Panel Rate'] float
---@field OffsetA2 FVector2D
---@field BaclCircle UBtlGuiDrawObjectPrimitive
---@field ['Back Circle Rate'] float
---@field List1TitleRate float
---@field OffsetD FVector2D
---@field FullMenber UBtlGuiDrawObjectSprite
---@field List1Name TArray<UBtlGuiDrawObjectText>
---@field BackStrategy TArray<UBtlGuiDrawObjectRoundRect>
---@field Strategy TArray<UBtlGuiDrawObjectText>
---@field List1Pos TArray<FVector2D>
---@field List1PrevPos FVector2D
---@field List1PrevPosBack FVector2D
---@field List1PrevFrame int32
---@field List1PrevFrameBack int32
---@field List1CursorBack UBtlGuiDrawObjectRoundRect
---@field List1Cursor UBtlGuiDrawObjectRoundRect
---@field ['List FadeinRate'] float
---@field ['List 1Cursor Fadein'] float
---@field OffsetC2 FVector2D
---@field ['Btl Gui Draw 1'] UBtlGuiDrawComponent
---@field List2CircleBlack float
---@field List2Circle float
---@field List2LircleBack UBtlGuiDrawObjectPrimitive
---@field List2CircleMask UBtlGuiDrawObjectPrimitive
---@field List2Pos TArray<FVector2D>
---@field List2Name UBtlGuiDrawObjectText
---@field List2FullMenber UBtlGuiDrawObjectSprite
---@field List2CursorBack UBtlGuiDrawObjectRoundRect
---@field List2Cursor UBtlGuiDrawObjectRoundRect
---@field List2PrevPos FVector2D
---@field List2PrevPosBack FVector2D
---@field List2PrevFrame int32
---@field List2PrevFrameBack int32
---@field List2Operation TArray<UBtlGuiDrawObjectText>
---@field List2Check UBtlGuiDrawObjectSprite
---@field numWork int32
---@field List2CheckScale float
---@field permissionEscape boolean
---@field KeyBindCompleted boolean
---@field Caustics UMaterialInstanceDynamic
---@field ['Out Item'] UBtlGuiDrawObjectImage
---@field MouseCollisionList1 TArray<UBtlGuiDrawObjectRect>
---@field MouseCollisionList2 TArray<UBtlGuiDrawObjectRect>
local ABP_BtlStrategyInstruct_C = {}

---@param Num int32
---@param OnVisible boolean
function ABP_BtlStrategyInstruct_C:SetMouseCollisionVisible(Num, OnVisible) end
function ABP_BtlStrategyInstruct_C:RefrectLocalizeData() end
function ABP_BtlStrategyInstruct_C:AllParamInit() end
function ABP_BtlStrategyInstruct_C:UpdateList2Cursor() end
function ABP_BtlStrategyInstruct_C:UpdateList1Cursor() end
---@param Cursor int32
---@param prevCursor int32
---@param Lerp float
---@param ReturnValue1 FVector2D
---@param ReturnValue2 TArray<FBtlGuiVertex>
---@return FVector2D
function ABP_BtlStrategyInstruct_C:LerpMainCursor(Cursor, prevCursor, Lerp, ReturnValue1, ReturnValue2) end
function ABP_BtlStrategyInstruct_C:InAnimation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:InAnimation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:CursorUpdate__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:CursorUpdate__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:CursorLoop__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:CursorLoop__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:OutAnimation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:OutAnimation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:OutAnimation__MoveTorUI__EventFunc() end
function ABP_BtlStrategyInstruct_C:List1Animation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:List1Animation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:List2Animation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:List2Animation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:List2Check2Animation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:List2Check2Animation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:AlreadyEscapeAnimation__FinishedFunc() end
function ABP_BtlStrategyInstruct_C:AlreadyEscapeAnimation__UpdateFunc() end
function ABP_BtlStrategyInstruct_C:StartInAnimation() end
function ABP_BtlStrategyInstruct_C:StartCursorMovement() end
function ABP_BtlStrategyInstruct_C:StartOutAnimation() end
function ABP_BtlStrategyInstruct_C:StartList1Animation() end
function ABP_BtlStrategyInstruct_C:EndList1Animation() end
function ABP_BtlStrategyInstruct_C:StartList2Animation() end
function ABP_BtlStrategyInstruct_C:EndList2Animation() end
function ABP_BtlStrategyInstruct_C:StartCheckAnimation() end
function ABP_BtlStrategyInstruct_C:EndList2AnimationSlow() end
function ABP_BtlStrategyInstruct_C:StartAlreadyEscape() end
function ABP_BtlStrategyInstruct_C:UpdateAnimation() end
function ABP_BtlStrategyInstruct_C:CallList1CursorUpdate() end
function ABP_BtlStrategyInstruct_C:List1CursorSetup() end
function ABP_BtlStrategyInstruct_C:CallList2CursorUpdate() end
function ABP_BtlStrategyInstruct_C:List2CursorSetup() end
function ABP_BtlStrategyInstruct_C:MainCursorUpdate() end
---@param DeltaTime float
function ABP_BtlStrategyInstruct_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlStrategyInstruct_C:GuiActorBindAction() end
function ABP_BtlStrategyInstruct_C:GuiActorUnbindAction() end
function ABP_BtlStrategyInstruct_C:CallOK() end
function ABP_BtlStrategyInstruct_C:CallCANCEL() end
---@param flag boolean
---@param Param int32
function ABP_BtlStrategyInstruct_C:GuiActorStateInit(flag, Param) end
function ABP_BtlStrategyInstruct_C:GuiActorBeginPlay() end
function ABP_BtlStrategyInstruct_C:CursorUpdate1() end
function ABP_BtlStrategyInstruct_C:CursorUpdate2() end
function ABP_BtlStrategyInstruct_C:CursorUpdate3() end
---@param EntryPoint int32
function ABP_BtlStrategyInstruct_C:ExecuteUbergraph_BP_BtlStrategyInstruct(EntryPoint) end


