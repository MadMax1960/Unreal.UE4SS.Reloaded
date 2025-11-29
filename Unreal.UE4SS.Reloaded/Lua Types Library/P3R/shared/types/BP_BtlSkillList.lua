---@meta

---@class ABP_BtlSkillList_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw1 UBtlGuiDrawComponent
---@field BtlGuiPersonaStatus UBtlGuiPersonaStatusComponent
---@field BtlGuiListPersona UBtlGuiListComponent
---@field BP_BtlDataBase UBP_BtlDataBase_C
---@field BtlGuiList UBtlGuiListComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field OutAnimTimeline_CharaAlpha_9D88AFB844EA16132BE3418E97D3FBF3 float
---@field OutAnimTimeline_OutAlpha_9D88AFB844EA16132BE3418E97D3FBF3 float
---@field OutAnimTimeline_TitleAngle_9D88AFB844EA16132BE3418E97D3FBF3 float
---@field OutAnimTimeline__Direction_9D88AFB844EA16132BE3418E97D3FBF3 ETimelineDirection::Type
---@field OutAnimTimeline UTimelineComponent
---@field EquipIconTimeline_EquipIconAlpha_E4182B0148BED84D8615C4A21F220FB5 float
---@field EquipIconTimeline_EquipIconAngle_E4182B0148BED84D8615C4A21F220FB5 float
---@field EquipIconTimeline_EquipIconScale_E4182B0148BED84D8615C4A21F220FB5 float
---@field EquipIconTimeline__Direction_E4182B0148BED84D8615C4A21F220FB5 ETimelineDirection::Type
---@field EquipIconTimeline UTimelineComponent
---@field LiR1Timeline_L1R1Rate_3A3BB4094FD98ACF06196CB1EFE793CA float
---@field LiR1Timeline__Direction_3A3BB4094FD98ACF06196CB1EFE793CA ETimelineDirection::Type
---@field LiR1Timeline UTimelineComponent
---@field PresonaChangeTimeline_PersonaRate_752BEFB64E10A8CDCE9D7CB5FF8D64C8 float
---@field PresonaChangeTimeline__Direction_752BEFB64E10A8CDCE9D7CB5FF8D64C8 ETimelineDirection::Type
---@field PresonaChangeTimeline UTimelineComponent
---@field InAnimTimeline_CurcorRate_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_ListRate_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_WindowHelpRate_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_SkillHelpRate_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_TabRale_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_BackPanelRate_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline_TitleAngle_441558904117FA9353FD379C2D207B08 float
---@field InAnimTimeline__Direction_441558904117FA9353FD379C2D207B08 ETimelineDirection::Type
---@field InAnimTimeline UTimelineComponent
---@field CaustikTimeline_caustik_9C3BCE06445282D8528CF68FC1141FCA float
---@field CaustikTimeline__Direction_9C3BCE06445282D8528CF68FC1141FCA ETimelineDirection::Type
---@field CaustikTimeline UTimelineComponent
---@field SelectCursor int32
---@field ListDrawMax int32
---@field ListNameWork FString
---@field CursorPosWork TArray<FVector2D>
---@field PositionWork FVector2D
---@field ForIndex int32
---@field isShowName boolean
---@field NumTemp int32
---@field SkillIDList TArray<int32>
---@field CursorIndex int32
---@field TopIndex int32
---@field IsChangingPersona boolean
---@field ChangingPersonaIndex int32
---@field PersonaListWork TArray<int32>
---@field MajorSkillList TArray<int32>
---@field IsOneMore boolean
---@field TabPosOffset FVector2D
---@field PersonaName UBtlGuiDrawObjectText
---@field CursorPrimitive UBtlGuiDrawObjectPrimitive
---@field CursorRect UBtlGuiDrawObjectRoundRect
---@field ColorWork FColor
---@field NumTemp2 int32
---@field SkillHelp UBtlGuiDrawObjectMsg
---@field caustikRate float
---@field Caustics UMaterialInstanceDynamic
---@field MajorPersonaList TArray<int32>
---@field LRTabList TArray<UBtlGuiDrawObjectCore>
---@field IsFirstCreate boolean
---@field CursorRectBack UBtlGuiDrawObjectRoundRect
---@field PrevPositionWorkBack FVector2D
---@field PrevPositionFrameBack float
---@field PrevPositionFrame float
---@field PrevPositionWork FVector2D
---@field PersonaShilluette TArray<UBtlGuiDrawObjectImage>
---@field TitlePos FVector2D
---@field ['Title Angle'] float
---@field BackPanelPos FVector2D
---@field BackPanelMaskPos FVector2D
---@field ['Back Panel Rate'] float
---@field TabPosList TArray<FVector2D>
---@field ['Tab Rale'] float
---@field skillHelpList TArray<FVector2D>
---@field ['Skill Help Rate'] float
---@field SkillHelpListAlpha TArray<float>
---@field WindowHelp UBtlGuiDrawObjectSprite
---@field ['Window Help Rate'] float
---@field ListRate TArray<float>
---@field ListRateMax float
---@field ['List Rate'] float
---@field floatWork float
---@field floatWork2 float
---@field ['Persona Rate'] float
---@field PersonaShilluettePos TArray<FVector2D>
---@field L1R1Rate float
---@field MaskList TArray<UBtlGuiDrawObjectCore>
---@field EquipIconEffect UBtlGuiDrawObjectSprite
---@field ['Equip Icon Scale'] float
---@field ['Equip Icon Angle'] float
---@field PersonaSlideInPos float
---@field ['Curcor Rate'] float
---@field OutAlpha float
---@field TitleLogoPos FVector2D
---@field TitleLogoRate float
---@field charaSilluette UBtlGuiDrawObjectImage
---@field CharaSilluetteAlpha float
---@field WorkBool boolean
---@field NyxBattle boolean
---@field isGrayOut boolean
---@field PersonaChangeFlag boolean
---@field EquipItem UBtlGuiDrawObjectSprite
---@field IsTutorialSkillList boolean
---@field IsNoSkill boolean
---@field NoItemList TArray<UBtlGuiDrawObjectCore>
---@field ['Equip Icon Alpha'] float
---@field CharaSillhouette2 UBtlGuiDrawObjectImage
---@field ['SkillHelp 1'] UBtlGuiDrawObjectMsg
---@field ['SkillHelp 2'] UBtlGuiDrawObjectMsg
---@field ['SkillHelp 3'] UBtlGuiDrawObjectMsg
---@field MouseCollisionList TArray<UBtlGuiDrawObjectRect>
local ABP_BtlSkillList_C = {}

---@param _____ ABtlActor
---@param bIsVisible boolean
function ABP_BtlSkillList_C:IsVisibleEquipIcon(_____, bIsVisible) end
function ABP_BtlSkillList_C:RefrectLocalizeData() end
function ABP_BtlSkillList_C:LoadPersonaAsset() end
---@param Enable boolean
function ABP_BtlSkillList_C:BackGroundDrawEnable(Enable) end
---@param cost int32
---@param IsHandred1 boolean
---@param HandredNum1 int32
---@param HandredPos1 FVector2D
---@param isTen1 boolean
---@param tenNum1 int32
---@param TenPos1 FVector2D
---@param isNum_1 boolean
---@param Num1 int32
---@param Pos1 FVector2D
function ABP_BtlSkillList_C:setCostNumParam(cost, IsHandred1, HandredNum1, HandredPos1, isTen1, tenNum1, TenPos1, isNum_1, Num1, Pos1) end
---@param skillId int32
---@param OutString FString
function ABP_BtlSkillList_C:GetParamNText(skillId, OutString) end
---@param Index int32
---@param CursorIndex int32
---@param Pos FVector2D
function ABP_BtlSkillList_C:SetupPosition(Index, CursorIndex, Pos) end
---@param skillId int32
---@param OutString FString
function ABP_BtlSkillList_C:GetSkillName(skillId, OutString) end
function ABP_BtlSkillList_C:CaustikTimeline__FinishedFunc() end
function ABP_BtlSkillList_C:CaustikTimeline__UpdateFunc() end
function ABP_BtlSkillList_C:InAnimTimeline__FinishedFunc() end
function ABP_BtlSkillList_C:InAnimTimeline__UpdateFunc() end
function ABP_BtlSkillList_C:PresonaChangeTimeline__FinishedFunc() end
function ABP_BtlSkillList_C:PresonaChangeTimeline__UpdateFunc() end
function ABP_BtlSkillList_C:LiR1Timeline__FinishedFunc() end
function ABP_BtlSkillList_C:LiR1Timeline__UpdateFunc() end
function ABP_BtlSkillList_C:EquipIconTimeline__FinishedFunc() end
function ABP_BtlSkillList_C:EquipIconTimeline__UpdateFunc() end
function ABP_BtlSkillList_C:OutAnimTimeline__FinishedFunc() end
function ABP_BtlSkillList_C:OutAnimTimeline__UpdateFunc() end
function ABP_BtlSkillList_C:StartInTimeline() end
function ABP_BtlSkillList_C:StartPersonaChangeTimeline() end
function ABP_BtlSkillList_C:StartOutTimeline() end
---@param DeltaTime float
function ABP_BtlSkillList_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlSkillList_C:CallCursorUpdate() end
function ABP_BtlSkillList_C:CursorSetup() end
function ABP_BtlSkillList_C:PushCancel() end
function ABP_BtlSkillList_C:PushOk() end
function ABP_BtlSkillList_C:GuiActorBindAction() end
function ABP_BtlSkillList_C:GuiActorUnbindAction() end
function ABP_BtlSkillList_C:ChangePersonaRight() end
function ABP_BtlSkillList_C:ChangePersonaLeft() end
function ABP_BtlSkillList_C:JumpMajorSkill() end
function ABP_BtlSkillList_C:OpenPersonaStatus() end
---@param InputKey FBtlInputKey
ABP_BtlSkillList_C['カスタムイベント_0'] = function(self, InputKey) end
function ABP_BtlSkillList_C:EntryChangeState() end
function ABP_BtlSkillList_C:GuiActorBeginPlay() end
---@param flag boolean
---@param Param int32
function ABP_BtlSkillList_C:GuiActorStateInit(flag, Param) end
function ABP_BtlSkillList_C:GuiActorStateExit() end
function ABP_BtlSkillList_C:PlayCursorSE() end
function ABP_BtlSkillList_C:SetAddResources() end
function ABP_BtlSkillList_C:GuiActorEncountStart() end
---@param EntryPoint int32
function ABP_BtlSkillList_C:ExecuteUbergraph_BP_BtlSkillList(EntryPoint) end


