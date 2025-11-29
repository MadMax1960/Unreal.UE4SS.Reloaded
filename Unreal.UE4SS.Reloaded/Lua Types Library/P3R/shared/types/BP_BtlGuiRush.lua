---@meta

---@class ABP_BtlGuiRush_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field OutAnim_TextRate_4935DD2241021810CD6538807D443E80 float
---@field OutAnim_KeyRate_4935DD2241021810CD6538807D443E80 float
---@field OutAnim_PanelRate_4935DD2241021810CD6538807D443E80 float
---@field OutAnim__Direction_4935DD2241021810CD6538807D443E80 ETimelineDirection::Type
---@field OutAnim UTimelineComponent
---@field PushButtonAnim_Scale_2CAF45054277C8361BC77A96225FCBF6 float
---@field PushButtonAnim__Direction_2CAF45054277C8361BC77A96225FCBF6 ETimelineDirection::Type
---@field PushButtonAnim UTimelineComponent
---@field LoopAnim_MaskRate_F73671B84F3C5D3C140FFE9F7DED1131 float
---@field LoopAnim__Direction_F73671B84F3C5D3C140FFE9F7DED1131 ETimelineDirection::Type
---@field LoopAnim UTimelineComponent
---@field InAnim_TextRate_6225638949D6B1B2949E13BCA65059B0 float
---@field InAnim_KeyRate_6225638949D6B1B2949E13BCA65059B0 float
---@field InAnim_PanelRate_6225638949D6B1B2949E13BCA65059B0 float
---@field InAnim__Direction_6225638949D6B1B2949E13BCA65059B0 ETimelineDirection::Type
---@field InAnim UTimelineComponent
---@field OffsetA FVector2D
---@field OffsetB FVector2D
---@field Pos1List TArray<FVector2D>
---@field Pos2List TArray<FVector2D>
---@field ['Panel Rate'] float
---@field IsRushMode boolean
---@field KeyHelp UBtlGuiDrawObjectSprite
---@field KeyRate float
---@field TextRate float
---@field AlpfaList TArray<float>
---@field ['Mask Rate'] float
---@field Scale float
---@field BP_Rush ABtlGuiRushEffect
---@field IsDebugRushMode boolean
---@field OnDebugStopMaskNoAlphaBlend boolean
---@field MaskLengthOffsetX float
---@field OnMaskLoopAnim boolean
---@field MaskLoopAnimTime float
---@field OnDebugStopMaskAnimationPause boolean
local ABP_BtlGuiRush_C = {}

---@param IsDebugRush boolean
---@param OnDebugStopMaskNoAlpha boolean
---@param OnDebugStopMaskAnimPause boolean
function ABP_BtlGuiRush_C:SetDebugRushMode(IsDebugRush, OnDebugStopMaskNoAlpha, OnDebugStopMaskAnimPause) end
---@param IsRush boolean
---@param PushButton boolean
function ABP_BtlGuiRush_C:SetRushMode(IsRush, PushButton) end
function ABP_BtlGuiRush_C:InAnim__FinishedFunc() end
function ABP_BtlGuiRush_C:InAnim__UpdateFunc() end
function ABP_BtlGuiRush_C:LoopAnim__FinishedFunc() end
function ABP_BtlGuiRush_C:LoopAnim__UpdateFunc() end
function ABP_BtlGuiRush_C:PushButtonAnim__FinishedFunc() end
function ABP_BtlGuiRush_C:PushButtonAnim__UpdateFunc() end
function ABP_BtlGuiRush_C:OutAnim__FinishedFunc() end
function ABP_BtlGuiRush_C:OutAnim__UpdateFunc() end
function ABP_BtlGuiRush_C:StartInAnimation() end
function ABP_BtlGuiRush_C:StartOutAnimation() end
function ABP_BtlGuiRush_C:StartOutAnimationNoPush() end
function ABP_BtlGuiRush_C:GuiActorBeginPlay() end
---@param DeltaTime float
function ABP_BtlGuiRush_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiRush_C:GuiActorBeginDestroy() end
---@param EntryPoint int32
function ABP_BtlGuiRush_C:ExecuteUbergraph_BP_BtlGuiRush(EntryPoint) end


