---@meta

---@class ABP_BtlTopUI_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiDrawFuka UBtlGuiDrawComponent
---@field BtlGuiDrawRT UBtlGuiDrawComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiPersonaStatus UBtlGuiPersonaStatusComponent
---@field BtlGuiListPersona UBtlGuiListComponent
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field FukaCutinTimeline_FukaScale_A184887442952267BA1FEE9AF3A64D01 FVector
---@field FukaCutinTimeline_FukaBkaclOutRate_A184887442952267BA1FEE9AF3A64D01 float
---@field FukaCutinTimeline_FukaAngle_A184887442952267BA1FEE9AF3A64D01 float
---@field FukaCutinTimeline_FukaOpenRate_A184887442952267BA1FEE9AF3A64D01 float
---@field FukaCutinTimeline_FukaMoveRate_A184887442952267BA1FEE9AF3A64D01 float
---@field FukaCutinTimeline__Direction_A184887442952267BA1FEE9AF3A64D01 ETimelineDirection::Type
---@field FukaCutinTimeline UTimelineComponent
---@field FukaBlackOutTimeline_FukaBlackoutRate_03BD57A848389BCBEFDCFA8F06DA025E float
---@field FukaBlackOutTimeline__Direction_03BD57A848389BCBEFDCFA8F06DA025E ETimelineDirection::Type
---@field FukaBlackOutTimeline UTimelineComponent
---@field SillhouetteTimeline_Sillhouette_01BEE83744D2000015CC9ABDB6D3CE1B float
---@field SillhouetteTimeline__Direction_01BEE83744D2000015CC9ABDB6D3CE1B ETimelineDirection::Type
---@field SillhouetteTimeline UTimelineComponent
---@field OracleTimeline_TextRate_A1A5BBC94716AF4874D035B490AC6055 float
---@field OracleTimeline_PadRate_A1A5BBC94716AF4874D035B490AC6055 float
---@field OracleTimeline_PosLate_A1A5BBC94716AF4874D035B490AC6055 float
---@field OracleTimeline_Alpha_A1A5BBC94716AF4874D035B490AC6055 float
---@field OracleTimeline__Direction_A1A5BBC94716AF4874D035B490AC6055 ETimelineDirection::Type
---@field OracleTimeline UTimelineComponent
---@field TheurgiaTimeline_TextAlpha_964CF91B41AB85FB4C1199A282E9147F float
---@field TheurgiaTimeline_Alpha_964CF91B41AB85FB4C1199A282E9147F float
---@field TheurgiaTimeline_lerp_964CF91B41AB85FB4C1199A282E9147F float
---@field TheurgiaTimeline__Direction_964CF91B41AB85FB4C1199A282E9147F ETimelineDirection::Type
---@field TheurgiaTimeline UTimelineComponent
---@field Object7Timeline_TextAlpha_1F756AA04610ADD163455E9EE3108475 float
---@field Object7Timeline_UnderAlpha_1F756AA04610ADD163455E9EE3108475 float
---@field Object7Timeline__Direction_1F756AA04610ADD163455E9EE3108475 ETimelineDirection::Type
---@field Object7Timeline UTimelineComponent
---@field Object4Timeline_CommandUnder_8C0B861F4C5A7315E5DABE834AF2C613 FVector
---@field Object4Timeline_CommandButton_8C0B861F4C5A7315E5DABE834AF2C613 float
---@field Object4Timeline_CommandOpen_8C0B861F4C5A7315E5DABE834AF2C613 float
---@field Object4Timeline__Direction_8C0B861F4C5A7315E5DABE834AF2C613 ETimelineDirection::Type
---@field Object4Timeline UTimelineComponent
---@field Object2Timeline_Scale_0C65DF4647BD537447E50A8D98164A32 float
---@field Object2Timeline__Direction_0C65DF4647BD537447E50A8D98164A32 ETimelineDirection::Type
---@field Object2Timeline UTimelineComponent
---@field Object1Timeline_ShiftText_5B9C8381467F3BAF3707759C692145BC float
---@field Object1Timeline_shift_5B9C8381467F3BAF3707759C692145BC float
---@field Object1Timeline_BackMoonMask_5B9C8381467F3BAF3707759C692145BC float
---@field Object1Timeline_BackMoon_5B9C8381467F3BAF3707759C692145BC float
---@field Object1Timeline__Direction_5B9C8381467F3BAF3707759C692145BC ETimelineDirection::Type
---@field Object1Timeline UTimelineComponent
---@field IsOneMore boolean
---@field PlayerList TArray<ABtlActor>
---@field selectIdx int32
---@field PossibleTakeOverList TArray<boolean>
---@field TakeOverCurID int32
---@field TopOffset FVector2D
---@field CommandOffset FVector2D
---@field QUADOffset FVector2D
---@field TRIANGLEOffset FVector2D
---@field CIRCLEOffset FVector2D
---@field XROSSOffset FVector2D
---@field R2Offset FVector2D
---@field IsPersonaStatusOpen boolean
---@field PossibleTakeOverCount int32
---@field CommandObject TArray<UBtlGuiDrawObjectSprite>
---@field TheurgiaObject TArray<UBtlGuiDrawObjectSprite>
---@field BackMoonObject TArray<UBtlGuiDrawObjectSprite>
---@field ObjectList1 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList2 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList3 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList4 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList5 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList6 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList7 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList8 TArray<UBtlGuiDrawObjectCore>
---@field ObjectList9 TArray<UBtlGuiDrawObjectCore>
---@field countWork int32
---@field PlayerScreenPos FVector2D
---@field commandScale float
---@field TopScale float
---@field ObjectListKeyCtrl TArray<UBtlGuiDrawObjectCore>
---@field KeyControl TArray<boolean>
---@field Object ABP_BtlGuiBaseActor_C
---@field TheurgiaUseable boolean
---@field ['Back Moon'] float
---@field ['Back Moon Mask'] float
---@field Shift float
---@field ['Shift Text'] float
---@field Silhouette float
---@field Vector2DWork FVector2D
---@field floatWork float
---@field Scale float
---@field ['Command Under'] FVector
---@field ['Command Button'] float
---@field ['Command Open'] float
---@field ['Under Alpha'] float
---@field ['Text Alpha'] float
---@field Lerp float
---@field Alpha float
---@field ['Pos Late'] float
---@field ['Pad Rate'] float
---@field TopLocalOffset FVector2D
---@field CommandLocalOffset FVector2D
---@field OracleLocalOffset FVector2D
---@field CameraLengthLocalOffset float
---@field LengthRate float
---@field SillhouetteCallFlag boolean
---@field FukaCutinObj TArray<UBtlGuiDrawObjectCore>
---@field FukaMoveRate float
---@field ['Fuka Open Rate'] float
---@field ['Fuka Scale'] FVector2D
---@field ['Fuka Angle'] float
---@field FukaCutinStep int32
---@field FukaMoviePlayer AMoviePlayActorBattle
---@field FukaBlackout UBtlGuiDrawObjectRect
---@field FukaBlackoutRate float
---@field FukaEffect UBtlGuiDrawObjectSprite
---@field FukaEffectSprNo int32
---@field FukaEffectAlpha float
---@field FukaMovieTexture UBtlGuiDrawObjectImage
---@field ['Text Rate'] float
---@field CommandVoiseTime float
---@field DelayWait boolean
---@field CommandPos FVector2D
---@field ItemPos FVector2D
---@field PersonaPos FVector2D
---@field GuardPos FVector2D
---@field AttackPos FVector2D
---@field ShiftPos FVector2D
---@field BtlTopUIParamTable UDataTable
local ABP_BtlTopUI_C = {}

---@param CommandPos FVector2D
---@param BoundaryPos FVector2D
function ABP_BtlTopUI_C:GetCommandPosOffset(CommandPos, BoundaryPos) end
function ABP_BtlTopUI_C:StartFukaCutin() end
function ABP_BtlTopUI_C:InitAnimationParam() end
---@param Condition boolean
function ABP_BtlTopUI_C:SetTheurgiaSkillUseable(Condition) end
function ABP_BtlTopUI_C:AllAnimationStop() end
---@param Alpha float
---@param Pos FVector2D
function ABP_BtlTopUI_C:ObjectList10Update2(Alpha, Pos) end
---@param Alpha float
---@param Pos FVector2D
---@param PadRate float
---@param TextRate float
function ABP_BtlTopUI_C:ObjectList10Update(Alpha, Pos, PadRate, TextRate) end
---@param Alpha float
function ABP_BtlTopUI_C:ObjectList9Update(Alpha) end
---@param Pos FVector2D
---@param Alpha float
---@param Scale float
function ABP_BtlTopUI_C:ObjectList8Update(Pos, Alpha, Scale) end
---@param Pos FVector2D
---@param Alpha float
---@param textAlpha float
---@param Scale float
function ABP_BtlTopUI_C:ObjectList7Update(Pos, Alpha, textAlpha, Scale) end
---@param Alpha float
---@param Scale float
---@param Pos FVector2D
function ABP_BtlTopUI_C:ObjectList6Update(Alpha, Scale, Pos) end
---@param Pos FVector2D
---@param ancle float
---@param Alpha float
---@param Scale float
function ABP_BtlTopUI_C:ObjectList5Update(Pos, ancle, Alpha, Scale) end
---@param Pos FVector2D
---@param Pos2 FVector2D
---@param Alpha float
---@param Scale float
function ABP_BtlTopUI_C:ObjectList4Update(Pos, Pos2, Alpha, Scale) end
---@param Pos FVector2D
---@param Scale float
---@param Alpha float
---@param Scale2 float
function ABP_BtlTopUI_C:ObjectList3Update(Pos, Scale, Alpha, Scale2) end
---@param Pos FVector2D
---@param Scale float
function ABP_BtlTopUI_C:ObjectList2Update(Pos, Scale) end
---@param Pos FVector2D
---@param Angle float
---@param Scale float
function ABP_BtlTopUI_C:ObjectList1Update(Pos, Angle, Scale) end
---@param anchor FVector2D
---@param Scale float
---@param TheurgiaUse boolean
function ABP_BtlTopUI_C:SetTheurgiaOffset(anchor, Scale, TheurgiaUse) end
---@param NewParam FVector2D
---@param Scale float
function ABP_BtlTopUI_C:SetCommandOffset(NewParam, Scale) end
---@param Visible boolean
function ABP_BtlTopUI_C:ShiftVisible(Visible) end
function ABP_BtlTopUI_C:Object1Timeline__FinishedFunc() end
function ABP_BtlTopUI_C:Object1Timeline__UpdateFunc() end
function ABP_BtlTopUI_C:Object2Timeline__FinishedFunc() end
function ABP_BtlTopUI_C:Object2Timeline__UpdateFunc() end
function ABP_BtlTopUI_C:Object4Timeline__FinishedFunc() end
function ABP_BtlTopUI_C:Object4Timeline__UpdateFunc() end
function ABP_BtlTopUI_C:Object4Timeline__PlaySound__EventFunc() end
function ABP_BtlTopUI_C:Object4Timeline__CallTheurgiaUse__EventFunc() end
function ABP_BtlTopUI_C:Object7Timeline__FinishedFunc() end
function ABP_BtlTopUI_C:Object7Timeline__UpdateFunc() end
function ABP_BtlTopUI_C:TheurgiaTimeline__FinishedFunc() end
function ABP_BtlTopUI_C:TheurgiaTimeline__UpdateFunc() end
function ABP_BtlTopUI_C:OracleTimeline__FinishedFunc() end
function ABP_BtlTopUI_C:OracleTimeline__UpdateFunc() end
function ABP_BtlTopUI_C:SillhouetteTimeline__FinishedFunc() end
function ABP_BtlTopUI_C:SillhouetteTimeline__UpdateFunc() end
function ABP_BtlTopUI_C:FukaCutinTimeline__FinishedFunc() end
function ABP_BtlTopUI_C:FukaCutinTimeline__UpdateFunc() end
function ABP_BtlTopUI_C:FukaBlackOutTimeline__FinishedFunc() end
function ABP_BtlTopUI_C:FukaBlackOutTimeline__UpdateFunc() end
---@param DeltaTime float
function ABP_BtlTopUI_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlTopUI_C:StartObject1Anim() end
function ABP_BtlTopUI_C:StartObject4Anim() end
function ABP_BtlTopUI_C:StartFukaBlackoutTimeline() end
function ABP_BtlTopUI_C:StartFukaCutinTimeline() end
function ABP_BtlTopUI_C:StartOracleTimeline() end
function ABP_BtlTopUI_C:ChangeSkillList() end
function ABP_BtlTopUI_C:GuiActorBindAction() end
function ABP_BtlTopUI_C:GuiActorUnbindAction() end
function ABP_BtlTopUI_C:AgingInput() end
function ABP_BtlTopUI_C:ChangePromise() end
function ABP_BtlTopUI_C:OnTakeOver() end
function ABP_BtlTopUI_C:OnAttack() end
function ABP_BtlTopUI_C:ChangeItemList() end
function ABP_BtlTopUI_C:BehindTarget() end
function ABP_BtlTopUI_C:NextTarget() end
function ABP_BtlTopUI_C:OnAnalyze() end
function ABP_BtlTopUI_C:PushR1() end
function ABP_BtlTopUI_C:PushLD() end
function ABP_BtlTopUI_C:PushLU() end
function ABP_BtlTopUI_C:PushR2() end
function ABP_BtlTopUI_C:PushOPTION() end
function ABP_BtlTopUI_C:PushL3() end
function ABP_BtlTopUI_C:PushTouch() end
---@param InputKey FBtlInputKey
function ABP_BtlTopUI_C:RepInput(InputKey) end
function ABP_BtlTopUI_C:ChangeStateTopUI() end
function ABP_BtlTopUI_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlTopUI_C:GuiActorStateInit(flag, Param) end
function ABP_BtlTopUI_C:GuiActorStateExit() end
---@param Visible boolean
function ABP_BtlTopUI_C:SetupVisible(Visible) end
function ABP_BtlTopUI_C:GuiActorEncountStart() end
---@param EntryPoint int32
function ABP_BtlTopUI_C:ExecuteUbergraph_BP_BtlTopUI(EntryPoint) end


