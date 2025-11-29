---@meta

---@class ABP_BtlGuiLifeBar_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field Shake0Timeline_GauseAnim_6326DA5C46066CDE7B7A1BBEB568230F float
---@field Shake0Timeline_RanbleRate_6326DA5C46066CDE7B7A1BBEB568230F float
---@field Shake0Timeline__Direction_6326DA5C46066CDE7B7A1BBEB568230F ETimelineDirection::Type
---@field Shake0Timeline UTimelineComponent
---@field ShakeTimeline_RanbleRate_8F772C024BF6C6F2BB00B08EFCFC1B67 float
---@field ShakeTimeline__Direction_8F772C024BF6C6F2BB00B08EFCFC1B67 ETimelineDirection::Type
---@field ShakeTimeline UTimelineComponent
---@field PosOffset FVector2D
---@field HPBarMask UBtlGuiDrawObjectRect
---@field IsHPBar boolean
---@field Character ABP_BtlCharacterBase_C
---@field BarPosOffset FVector2D
---@field BarMaxParam int32
---@field BarParam int32
---@field UnderHPBarMask UBtlGuiDrawObjectRect
---@field BarStartParam int32
---@field UnderColor UBtlGuiDrawObjectSprite
---@field ShakePos FVector2D
---@field ['Endure Radio'] float
---@field UnderBase UBtlGuiDrawObjectSprite
---@field FrameBase UBtlGuiDrawObjectSprite
---@field Gauge0Anim float
---@field ['Party Panel Visible'] boolean
local ABP_BtlGuiLifeBar_C = {}

function ABP_BtlGuiLifeBar_C:UpdatePosition() end
function ABP_BtlGuiLifeBar_C:ShakeTimeline__FinishedFunc() end
function ABP_BtlGuiLifeBar_C:ShakeTimeline__UpdateFunc() end
function ABP_BtlGuiLifeBar_C:Shake0Timeline__FinishedFunc() end
function ABP_BtlGuiLifeBar_C:Shake0Timeline__UpdateFunc() end
function ABP_BtlGuiLifeBar_C:StartShake() end
---@param Character ABP_BtlCharacterBase_C
---@param Hp int32
---@param Sp int32
---@param IsHPBar boolean
---@param isEndure boolean
---@param DefaultParam int32
---@param EndureRadio float
---@param DelayHP int32
---@param DelaySP int32
---@param PartyPanelVisible boolean
function ABP_BtlGuiLifeBar_C:Start(Character, Hp, Sp, IsHPBar, isEndure, DefaultParam, EndureRadio, DelayHP, DelaySP, PartyPanelVisible) end
---@param DeltaTime float
function ABP_BtlGuiLifeBar_C:GuiActorUpdate(DeltaTime) end
---@param Hp int32
---@param Sp int32
---@param isEndure boolean
---@param EndureRadio float
function ABP_BtlGuiLifeBar_C:ParamUpdate(Hp, Sp, isEndure, EndureRadio) end
---@param EntryPoint int32
function ABP_BtlGuiLifeBar_C:ExecuteUbergraph_BP_BtlGuiLifeBar(EntryPoint) end


