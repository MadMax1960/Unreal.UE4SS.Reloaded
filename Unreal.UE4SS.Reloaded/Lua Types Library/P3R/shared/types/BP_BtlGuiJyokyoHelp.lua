---@meta

---@class ABP_BtlGuiJyokyoHelp_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field Fade_out________1_____28DCAE3644AC3194CB1499B59D02D1F7 float
---@field Fade_out_________X_28DCAE3644AC3194CB1499B59D02D1F7 float
---@field Fade_out__Direction_28DCAE3644AC3194CB1499B59D02D1F7 ETimelineDirection::Type
---@field ['Fade out'] UTimelineComponent
---@field Fade_In________1_____4248CC4443EE052690AF929A1C2BEE38 float
---@field Fade_In_________X_4248CC4443EE052690AF929A1C2BEE38 float
---@field Fade_In__Direction_4248CC4443EE052690AF929A1C2BEE38 ETimelineDirection::Type
---@field ['Fade In'] UTimelineComponent
---@field IsStart boolean
---@field renderTime float
---@field DelayTime float
---@field var1 int32
---@field BtlGuiIcon ABP_BtlGuiIcon_C
---@field msgNo int32
---@field genus int32
---@field ID int32
---@field var2 int32
---@field flags int32
---@field PosA FVector2D
---@field GradationScaleW float
---@field TextNum int32
---@field TextLine int32
---@field TextMinimumNum int32
---@field TextMaxNum int32
---@field GradationScaleMin float
---@field GradationScaleMax float
---@field OutRectObject UBtlGuiDrawObjectPrimitive
---@field InRectOjbject UBtlGuiDrawObjectPrimitive
---@field GradationSpriteObj UBtlGuiDrawObjectSprite
---@field PlateAlphaObj UBtlGuiDrawObjectSprite
---@field PlateDrawObj UBtlGuiDrawObjectSprite
---@field WindowWidth float
---@field WindowHeight float
---@field WindowDiag float
---@field AnimMoveX float
---@field ANIMFADE float
---@field MsgObj UBtlGuiDrawObjectMsg
---@field isStartFadeOut boolean
---@field ['Text Height'] float
---@field TextWidth float
---@field GradationScaleH float
---@field ['Gradation Sprite Mask Obj'] UBtlGuiDrawObjectSprite
---@field ['Out Rect Mask Object'] UBtlGuiDrawObjectPrimitive
---@field ThresholdTextWidth float
---@field ThresholdTextHeight float
---@field MaxWindowWidth float
---@field MinWindowWidth float
---@field MsgObj2 UBtlGuiDrawObjectMsg
---@field PosDif2LineMsg FVector2D
---@field PosDifMsg FVector2D
---@field ColorWindowOut FColor
---@field ColorWindowIn FColor
---@field ColorGradation FColor
---@field ColorPlate FColor
---@field isCenterMsg boolean
---@field AnimeFadeOut float
---@field InRectMaskObj UBtlGuiDrawObjectPrimitive
---@field OutRectAlphaObject UBtlGuiDrawObjectPrimitive
---@field ColorText FColor
local ABP_BtlGuiJyokyoHelp_C = {}

---@param In FColor
---@param fadeParam float
---@param Out FColor
ABP_BtlGuiJyokyoHelp_C['Calc Alpha by Color'] = function(self, In, fadeParam, Out) end
---@param Alpha float
---@param fadeParam float
---@param calcedAlpha uint8
function ABP_BtlGuiJyokyoHelp_C:CalcAlpha(Alpha, fadeParam, calcedAlpha) end
function ABP_BtlGuiJyokyoHelp_C:ChangeWindow() end
function ABP_BtlGuiJyokyoHelp_C:ClearAlpha() end
function ABP_BtlGuiJyokyoHelp_C:Update() end
---@param BtlGuiIcon ABP_BtlGuiIcon_C
---@param genus int32
---@param ID int32
---@param msgNo int32
---@param var1 int32
---@param var2 int32
---@param renderTime float
---@param DelayTime float
---@param flags int32
function ABP_BtlGuiJyokyoHelp_C:SetParam(BtlGuiIcon, genus, ID, msgNo, var1, var2, renderTime, DelayTime, flags) end
ABP_BtlGuiJyokyoHelp_C['Fade In__FinishedFunc'] = function(self, ) end
ABP_BtlGuiJyokyoHelp_C['Fade In__UpdateFunc'] = function(self, ) end
ABP_BtlGuiJyokyoHelp_C['Fade out__FinishedFunc'] = function(self, ) end
ABP_BtlGuiJyokyoHelp_C['Fade out__UpdateFunc'] = function(self, ) end
ABP_BtlGuiJyokyoHelp_C['Start Fade In'] = function(self, ) end
function ABP_BtlGuiJyokyoHelp_C:StartFadeOUT() end
---@param DeltaTime float
function ABP_BtlGuiJyokyoHelp_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiJyokyoHelp_C:Start() end
---@param EntryPoint int32
function ABP_BtlGuiJyokyoHelp_C:ExecuteUbergraph_BP_BtlGuiJyokyoHelp(EntryPoint) end


