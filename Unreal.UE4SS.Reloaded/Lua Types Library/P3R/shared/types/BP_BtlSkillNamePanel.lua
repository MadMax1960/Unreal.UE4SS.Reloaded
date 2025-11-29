---@meta

---@class ABP_BtlSkillNamePanel_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlDataBase UBtlDataBaseComponent
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field FadeOutAnimTimeline_alpha_88381D5F4852060E9A6C14AAAD572D33 float
---@field FadeOutAnimTimeline_pos_88381D5F4852060E9A6C14AAAD572D33 float
---@field FadeOutAnimTimeline__Direction_88381D5F4852060E9A6C14AAAD572D33 ETimelineDirection::Type
---@field FadeOutAnimTimeline UTimelineComponent
---@field FadeInAnimTimeline_angle_18891BC84691F4B9E25A09B381C9CA71 float
---@field FadeInAnimTimeline_alpha_18891BC84691F4B9E25A09B381C9CA71 float
---@field FadeInAnimTimeline_Pos_18891BC84691F4B9E25A09B381C9CA71 float
---@field FadeInAnimTimeline__Direction_18891BC84691F4B9E25A09B381C9CA71 ETimelineDirection::Type
---@field FadeInAnimTimeline UTimelineComponent
---@field Text FString
---@field IsEnemy boolean
---@field CurrentPos FVector2D
---@field Time float
---@field IsStart boolean
---@field IsFadeInEnd boolean
---@field AnimPos float
---@field AnimAlpha float
---@field AnimAngle float
---@field plg1 UBtlGuiDrawObjectPlg
---@field StartAngle float
---@field Rect1 UBtlGuiDrawObjectRect
---@field text1 UBtlGuiDrawObjectText
---@field ['Skill ID'] int32
---@field DebugSkillID int32
local ABP_BtlSkillNamePanel_C = {}

---@param DebugSkillID int32
ABP_BtlSkillNamePanel_C['Set Debug Param'] = function(self, DebugSkillID) end
---@param ItemId int32
---@param IsEnemy boolean
---@param Time float
function ABP_BtlSkillNamePanel_C:SetItemName(ItemId, IsEnemy, Time) end
---@param Key int32
---@param IsEnemy boolean
---@param Time float
function ABP_BtlSkillNamePanel_C:SetCommonText(Key, IsEnemy, Time) end
---@param skillId int32
---@param IsEnemy boolean
---@param Time float
function ABP_BtlSkillNamePanel_C:SetSkillID(skillId, IsEnemy, Time) end
function ABP_BtlSkillNamePanel_C:FadeInAnimTimeline__FinishedFunc() end
function ABP_BtlSkillNamePanel_C:FadeInAnimTimeline__UpdateFunc() end
function ABP_BtlSkillNamePanel_C:FadeOutAnimTimeline__FinishedFunc() end
function ABP_BtlSkillNamePanel_C:FadeOutAnimTimeline__UpdateFunc() end
function ABP_BtlSkillNamePanel_C:StartFadeIN() end
function ABP_BtlSkillNamePanel_C:StartFadeOUT() end
function ABP_BtlSkillNamePanel_C:Start() end
---@param DeltaTime float
function ABP_BtlSkillNamePanel_C:GuiActorUpdate(DeltaTime) end
---@param EntryPoint int32
function ABP_BtlSkillNamePanel_C:ExecuteUbergraph_BP_BtlSkillNamePanel(EntryPoint) end


