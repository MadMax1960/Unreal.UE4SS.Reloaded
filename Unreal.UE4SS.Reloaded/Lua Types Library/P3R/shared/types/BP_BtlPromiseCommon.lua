---@meta

---@class ABP_BtlPromiseCommon_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiPromise UBtlGuiPromiseComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field InAnime_7__Move_DecoE_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_6__Move_DecoD_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_5__Move_DecoC_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_4__Move_DecoB_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_3__Move_DecoA_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_2__IcomsMove_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime_1__FrameMove_D333EF394107C49F9849A7A0790C13C5 float
---@field InAnime__Direction_D333EF394107C49F9849A7A0790C13C5 ETimelineDirection::Type
---@field InAnime UTimelineComponent
---@field OutAnime_3__Cancel_Icon_Scale_F1AF48B645A7B2D06DFF999B026E4BC1 float
---@field OutAnime_2__Icons_Move_F1AF48B645A7B2D06DFF999B026E4BC1 float
---@field OutAnime_1_FrameMove_F1AF48B645A7B2D06DFF999B026E4BC1 float
---@field OutAnime__Direction_F1AF48B645A7B2D06DFF999B026E4BC1 ETimelineDirection::Type
---@field outAnime UTimelineComponent
---@field OutAnimeDecide_1_Decide_Icon_Scale_79DD18AB4766FF1CEC498BA2DD854C49 float
---@field OutAnimeDecide__Direction_79DD18AB4766FF1CEC498BA2DD854C49 ETimelineDirection::Type
---@field OutAnimeDecide UTimelineComponent
---@field PromiseTpye uint8
---@field PosBaseA FVector2D
---@field vertex TArray<FBtlGuiVertex>
---@field TextPos FVector2D
---@field TextPLG UBtlGuiDrawObjectPlg
---@field InAnimeTextRation float
---@field RectBackOld UBtlGuiDrawObjectPrimitive
---@field RectBlack UBtlGuiDrawObjectPrimitive
---@field InAnimeIconMove float
---@field CircleIconDif FVector2D
---@field CrosslIconDif FVector2D
---@field CancelTextOffset FVector2D
---@field OkTextOffset FVector2D
---@field SpriteCircleIcon UBtlGuiDrawObjectSprite
---@field SpriteCrossIcon UBtlGuiDrawObjectSprite
---@field SpriteOKText UBtlGuiDrawObjectSprite
---@field SpriteCancelText UBtlGuiDrawObjectSprite
---@field CancelIconScaleValue float
---@field IconGroupPosDif FVector2D
---@field isStartAnimation boolean
---@field isFastInput boolean
---@field isUnableCancel boolean
---@field ColorCancelIcon FColor
---@field ColorCancelText FColor
---@field SprAlloutMsg1 UBtlGuiDrawObjectSprite
---@field SprAlloutMsg2 UBtlGuiDrawObjectSprite
---@field PrimiDecoA UBtlGuiDrawObjectPrimitive
---@field PrimiDecoB UBtlGuiDrawObjectPrimitive
---@field PtimiDecoC UBtlGuiDrawObjectPrimitive
---@field PrimiDecoD UBtlGuiDrawObjectPrimitive
---@field PrimiDecoE UBtlGuiDrawObjectPrimitive
---@field TextMaskPLG UBtlGuiDrawObjectPlg
---@field RectBack2 UBtlGuiDrawObjectPrimitive
---@field ScaleBaseCrossButton float
---@field ScaleBaseText float
---@field ParamScaleRationCancel float
---@field ScaleBaseCircleButton float
---@field MoveVec FVector2D
---@field DecideIconScaleValue float
---@field AlphaPlate float
---@field AnimeMoveRationDecoA float
---@field AnimeMoveRationDecoB float
---@field AnimeMoveRationDecoC float
---@field AnimeMoveRationDecoD float
---@field AnimeMoveRationDecoE float
---@field isCanKeyInput boolean
---@field SprCancelHeight float
---@field SprOkHeight float
local ABP_BtlPromiseCommon_C = {}

function ABP_BtlPromiseCommon_C:RefrectLocalizeData() end
function ABP_BtlPromiseCommon_C:ActionDecide() end
function ABP_BtlPromiseCommon_C:EnableKeyInput() end
---@param From FVector2D
---@param To FVector2D
---@param Value float
---@param Out FVector2D
ABP_BtlPromiseCommon_C['Lerp Vector 2D'] = function(self, From, To, Value, Out) end
function ABP_BtlPromiseCommon_C:ActionEnd() end
function ABP_BtlPromiseCommon_C:InitCancelAvaialble() end
function ABP_BtlPromiseCommon_C:ChangeColorButton() end
function ABP_BtlPromiseCommon_C:UpdateAnimation() end
---@param Size FVector2D
---@param Color FColor
---@param NewParam TArray<FBtlGuiVertex>
function ABP_BtlPromiseCommon_C:CreateRectPrimitive(Size, Color, NewParam) end
function ABP_BtlPromiseCommon_C:UnbindAllAction() end
function ABP_BtlPromiseCommon_C:InAnime__FinishedFunc() end
function ABP_BtlPromiseCommon_C:InAnime__UpdateFunc() end
ABP_BtlPromiseCommon_C['InAnime__8. KeyStart__EventFunc'] = function(self, ) end
function ABP_BtlPromiseCommon_C:OutAnime__FinishedFunc() end
function ABP_BtlPromiseCommon_C:OutAnime__UpdateFunc() end
function ABP_BtlPromiseCommon_C:OutAnimeDecide__FinishedFunc() end
function ABP_BtlPromiseCommon_C:OutAnimeDecide__UpdateFunc() end
ABP_BtlPromiseCommon_C['Start In Anime'] = function(self, ) end
ABP_BtlPromiseCommon_C['Start OutAnime'] = function(self, ) end
ABP_BtlPromiseCommon_C['Start OutAnime Decide'] = function(self, ) end
function ABP_BtlPromiseCommon_C:GuiActorBeginPlay() end
function ABP_BtlPromiseCommon_C:ChangeStatePromice() end
function ABP_BtlPromiseCommon_C:CallOK() end
function ABP_BtlPromiseCommon_C:CallCANCEL() end
---@param flag boolean
---@param Param int32
function ABP_BtlPromiseCommon_C:GuiActorStateInit(flag, Param) end
function ABP_BtlPromiseCommon_C:GuiActorBindAction() end
function ABP_BtlPromiseCommon_C:GuiActorUnbindAction() end
---@param DeltaTime float
function ABP_BtlPromiseCommon_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlPromiseCommon_C:DebugInAnime() end
function ABP_BtlPromiseCommon_C:DebugOutAnime() end
function ABP_BtlPromiseCommon_C:GuiActorEncountStart() end
---@param EntryPoint int32
function ABP_BtlPromiseCommon_C:ExecuteUbergraph_BP_BtlPromiseCommon(EntryPoint) end


