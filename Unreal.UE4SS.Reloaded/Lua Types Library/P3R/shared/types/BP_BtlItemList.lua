---@meta

---@class ABP_BtlItemList_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiDrawCanvas2 UBtlGuiDrawComponent
---@field BtlGuiDrawCanvas1 UBtlGuiDrawComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiList UBtlGuiListComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field OutAnimeTimeline_3__Alpha_Silluette_52C3B6D244BC107A1DAF0199B4F6B926 float
---@field OutAnimeTimeline___1______52C3B6D244BC107A1DAF0199B4F6B926 float
---@field OutAnimeTimeline____52C3B6D244BC107A1DAF0199B4F6B926 float
---@field OutAnimeTimeline__Direction_52C3B6D244BC107A1DAF0199B4F6B926 ETimelineDirection::Type
---@field OutAnimeTimeline UTimelineComponent
---@field InAnimeTimeline_8_MoveWhite_93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline_7_MoveRedCursor_93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline_6_Alpha_Cursor_93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline________1_____93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline_______________1_____93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline________1______93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline_________93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline_________93B7E4184EADFB17BD9BF1B1DB462458 float
---@field InAnimeTimeline__Direction_93B7E4184EADFB17BD9BF1B1DB462458 ETimelineDirection::Type
---@field InAnimeTimeline UTimelineComponent
---@field ListDtawMax int32
---@field ItemList TArray<FBtlItemData>
---@field CursorIndex int32
---@field TopIndex int32
---@field CurrentIndex int32
---@field ForIndex int32
---@field ItemNameStr FString
---@field ItemNumStr FString
---@field ItemHelp UBtlGuiDrawObjectMsg
---@field PosA FVector2D
---@field ['3Size'] FVector2D
---@field PosB FVector2D
---@field PosC FVector2D
---@field PosD FVector2D
---@field Pose FVector2D
---@field posF FVector2D
---@field Caustics UMaterialInstanceDynamic
---@field RedCursor UBtlGuiDrawObjectRoundRect
---@field WhiteCursor UBtlGuiDrawObjectRoundRect
---@field NowListMax int32
---@field ['Detal Title'] UBtlGuiDrawObjectSprite
---@field DetaiMsg1 UBtlGuiDrawObjectMsg
---@field ENoList int32
---@field charaRote float
---@field ScrollbarBlack UBtlGuiDrawObjectPrimitive
---@field ScrollbarWhilte UBtlGuiDrawObjectPrimitive
---@field PrevPositionFrame float
---@field PrevPositionFrameBack float
---@field PositionWork FVector2D
---@field PrevPositionWorkBack FVector2D
---@field PrevPositionWork FVector2D
---@field ItemTitlePlg UBtlGuiDrawObjectPlg
---@field TitleRotation float
---@field BGRectBack UBtlGuiDrawObjectRoundRect
---@field BGRectFront UBtlGuiDrawObjectRoundRect
---@field BGRectAncherPos FVector2D
---@field BGRectRotaition float
---@field TitleAlpha float
---@field ItemListFrame int32
---@field itemListIntervalFrame float
---@field InanimeListFrame int32
---@field StartInAnimeItemList boolean
---@field HelpAnime float
---@field InAnimeDetailFrame int32
---@field HelpSprite UBtlGuiDrawObjectSprite
---@field TitleAnchor float
---@field InanimeTitleAnchor FVector2D
---@field OutAnimeTItleAncher FVector2D
---@field ['Item Titlte line'] UBtlGuiDrawObjectPlg
---@field MainAlpha float
---@field NoItemSpr UBtlGuiDrawObjectSprite
---@field NoItemText UBtlGuiDrawObjectText
---@field DetaiMsg2 UBtlGuiDrawObjectMsg
---@field DetaiMsg3 UBtlGuiDrawObjectMsg
---@field HelpTitlePos FVector2D
---@field CharaSilhouetteColorDark FColor
---@field CharaSilhouetteColorLight FColor
---@field SilhouettePos FVector2D
---@field SilhouetteImage UBtlGuiDrawObjectImage
---@field isStateChangeToTarget boolean
---@field EndOutAnime FBP_BtlItemList_CEndOutAnime
---@field IsPlayingAnimation boolean
---@field BeforeCoursorIndexFromTop int32
---@field isSameCursor boolean
---@field AnimeAlphaCursor float
---@field AnimeRedMove float
---@field AnimeWhiteMove float
---@field AnimeAlphaSilluette float
---@field BtlActor ABtlActor
---@field ScrollBarSliderMouseCollision UBtlGuiDrawObjectRect
---@field ScrollBarMouseCollision UBtlGuiDrawObjectRect
---@field MouseCollisionList TArray<UBtlGuiDrawObjectRect>
local ABP_BtlItemList_C = {}

function ABP_BtlItemList_C:RefrectLocalizeData() end
---@param isUsable boolean
---@param isSelect boolean
---@param Out FColor
function ABP_BtlItemList_C:CalcColorCostString(isUsable, isSelect, Out) end
---@param isUsable boolean
---@param isSelect boolean
---@param Out FColor
---@param blendState FBtlBlendState
function ABP_BtlItemList_C:CalcColorItemIcon(isUsable, isSelect, Out, blendState) end
---@param isUsable boolean
---@param isSelect boolean
---@param Out FColor
function ABP_BtlItemList_C:CalcColorItemString(isUsable, isSelect, Out) end
---@param In FColor
---@param Value float
---@param Out FColor
function ABP_BtlItemList_C:CalcAlphaColor(In, Value, Out) end
---@param ItemId int32
function ABP_BtlItemList_C:JumpCursorItemID(ItemId) end
---@param Alpha int32
---@return uint8
ABP_BtlItemList_C['Calc Alpha'] = function(self, Alpha) end
---@param DeltaTime float
function ABP_BtlItemList_C:Update(DeltaTime) end
---@param objectPos FVector2D
---@param ancherPos FVector2D
---@param degree float
---@return FVector2D
ABP_BtlItemList_C['Ancher Get Pos'] = function(self, objectPos, ancherPos, degree) end
ABP_BtlItemList_C['Update BackGround'] = function(self, ) end
ABP_BtlItemList_C['Update Scrolbar'] = function(self, ) end
ABP_BtlItemList_C['Update NoItem'] = function(self, ) end
---@param Text FString
ABP_BtlItemList_C['Update Detail Text'] = function(self, Text) end
---@param DeltaTime float
ABP_BtlItemList_C['Update Cursor'] = function(self, DeltaTime) end
---@param Num int32
---@param _1keta UBtlGuiDrawObjectSprite
---@param _2ketaL UBtlGuiDrawObjectSprite
---@param _2ketaR UBtlGuiDrawObjectSprite
ABP_BtlItemList_C['Update Item Num'] = function(self, Num, _1keta, _2ketaL, _2ketaR) end
ABP_BtlItemList_C['Update ItemList'] = function(self, ) end
---@param Component UBtlGuiDrawComponent
function ABP_BtlItemList_C:ClearAplha(Component) end
ABP_BtlItemList_C['Draw Caustics'] = function(self, ) end
---@param Size FVector2D
---@param Color FColor
---@param NewParam TArray<FBtlGuiVertex>
function ABP_BtlItemList_C:CreateRectPrimitive(Size, Color, NewParam) end
function ABP_BtlItemList_C:InAnimeTimeline__FinishedFunc() end
function ABP_BtlItemList_C:InAnimeTimeline__UpdateFunc() end
function ABP_BtlItemList_C:OutAnimeTimeline__FinishedFunc() end
function ABP_BtlItemList_C:OutAnimeTimeline__UpdateFunc() end
function ABP_BtlItemList_C:ChangeCursor() end
function ABP_BtlItemList_C:InAnime() end
function ABP_BtlItemList_C:outAnime() end
function ABP_BtlItemList_C:GuiActorBindAction() end
function ABP_BtlItemList_C:GuiActorUnbindAction() end
function ABP_BtlItemList_C:CallOK() end
function ABP_BtlItemList_C:CallCANCEL() end
function ABP_BtlItemList_C:DebugInAnime() end
function ABP_BtlItemList_C:DebugOutAnime() end
function ABP_BtlItemList_C:StateChangeTop() end
function ABP_BtlItemList_C:StateChangeTargetSelect() end
---@param flag boolean
---@param Param int32
function ABP_BtlItemList_C:GuiActorStateInit(flag, Param) end
function ABP_BtlItemList_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlItemList_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlItemList_C:EntryChangeState() end
function ABP_BtlItemList_C:PlsyCursorSE() end
function ABP_BtlItemList_C:GuiActorStateExit() end
---@param EntryPoint int32
function ABP_BtlItemList_C:ExecuteUbergraph_BP_BtlItemList(EntryPoint) end
function ABP_BtlItemList_C:EndOutAnime__DelegateSignature() end


