---@meta

---@class ABP_BtlTargetInfo_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field ScaleTimeline_SupportAlpha_55C54B1A4C16E891C17A8D87D103B9A4 float
---@field ScaleTimeline_SupportScale_55C54B1A4C16E891C17A8D87D103B9A4 float
---@field ScaleTimeline__Direction_55C54B1A4C16E891C17A8D87D103B9A4 ETimelineDirection::Type
---@field ScaleTimeline UTimelineComponent
---@field LoopAnimation_Alpha_2235C0FD4DE8D8B60A110FA89BA86637 float
---@field LoopAnimation__Direction_2235C0FD4DE8D8B60A110FA89BA86637 ETimelineDirection::Type
---@field LoopAnimation UTimelineComponent
---@field OutTimeline_Rate_FE6C90E64EEA68934A5CEB83A81EAC9D float
---@field OutTimeline__Direction_FE6C90E64EEA68934A5CEB83A81EAC9D ETimelineDirection::Type
---@field OutTimeline UTimelineComponent
---@field InTimeline_SupportAlpha_A89C7E4444030D23563D6A8A48BEE41A float
---@field InTimeline_SupportRate_A89C7E4444030D23563D6A8A48BEE41A float
---@field InTimeline_BadStatusMovement_A89C7E4444030D23563D6A8A48BEE41A float
---@field InTimeline_Rate_A89C7E4444030D23563D6A8A48BEE41A float
---@field InTimeline__Direction_A89C7E4444030D23563D6A8A48BEE41A ETimelineDirection::Type
---@field InTimeline UTimelineComponent
---@field RootPosition FVector2D
---@field BackPanel1 UBtlGuiDrawObjectPlg
---@field BackPanel2 UBtlGuiDrawObjectPlg
---@field ShadowOffset FVector2D
---@field IconShadow TArray<UBtlGuiDrawObjectSprite>
---@field IconIn TArray<UBtlGuiDrawObjectSprite>
---@field IconFrame TArray<UBtlGuiDrawObjectSprite>
---@field IconTextShadow TArray<UBtlGuiDrawObjectSprite>
---@field IconText TArray<UBtlGuiDrawObjectSprite>
---@field AddIcon TArray<UBtlGuiDrawObjectSprite>
---@field IconBadStatus TArray<UBtlGuiDrawObjectSprite>
---@field ObjectCraeted boolean
---@field TargetName UBtlGuiDrawObjectText
---@field UseSupport boolean
---@field DoubleReflect boolean
---@field IsUp TArray<boolean>
---@field IsBATKx2 boolean
---@field IsMATKx2 boolean
---@field AttackPosOffset FVector2D
---@field IsLastTurn TArray<boolean>
---@field BadStatusOffset TArray<EBtlDataBadStatus>
---@field AllIconOffset TArray<FVector2D>
---@field AllIconAlpha TArray<float>
---@field MovementPos float
---@field Alpha float
---@field MovementOutPos float
---@field Scale float
---@field BadStatusMovePos FVector2D
---@field ['Support Rate'] float
---@field AttackPos1 FVector2D
---@field AttackPos2 FVector2D
---@field UpAlpha float
---@field ColorFlag boolean
---@field MainColor TArray<FColor>
---@field SubColor TArray<FColor>
---@field ParamScale TArray<float>
---@field ParamAlpha TArray<float>
---@field isBadStatus boolean
---@field Character ABtlActor
---@field SupportAlpha float
---@field BackPanelList TArray<UBtlGuiDrawObjectCore>
---@field AnimationFlag boolean
local ABP_BtlTargetInfo_C = {}

function ABP_BtlTargetInfo_C:RefrectLocalizeLayout() end
function ABP_BtlTargetInfo_C:UpdateAnimation() end
---@param Index int32
---@param NewParam boolean
function ABP_BtlTargetInfo_C:GetNowSupport(Index, NewParam) end
---@param IsMATK boolean
function ABP_BtlTargetInfo_C:ChangeColor(IsMATK) end
---@param Actor ABtlActor
---@param NoDuplicationCheck boolean
function ABP_BtlTargetInfo_C:SetParam(Actor, NoDuplicationCheck) end
function ABP_BtlTargetInfo_C:InTimeline__FinishedFunc() end
function ABP_BtlTargetInfo_C:InTimeline__UpdateFunc() end
function ABP_BtlTargetInfo_C:OutTimeline__FinishedFunc() end
function ABP_BtlTargetInfo_C:OutTimeline__UpdateFunc() end
function ABP_BtlTargetInfo_C:LoopAnimation__FinishedFunc() end
function ABP_BtlTargetInfo_C:LoopAnimation__UpdateFunc() end
function ABP_BtlTargetInfo_C:ScaleTimeline__FinishedFunc() end
function ABP_BtlTargetInfo_C:ScaleTimeline__UpdateFunc() end
---@param NoAnimation boolean
---@param upportAnime boolean
function ABP_BtlTargetInfo_C:StartAnimation(NoAnimation, upportAnime) end
---@param NoAnimation boolean
function ABP_BtlTargetInfo_C:EndAnimation(NoAnimation) end
function ABP_BtlTargetInfo_C:MakeUObject() end
function ABP_BtlTargetInfo_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlTargetInfo_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlTargetInfo_C:ExecuteUbergraph_BP_BtlTargetInfo(EntryPoint) end


