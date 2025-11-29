---@meta

---@class ABP_PersonaStatusDraw_C : APersonaStatusDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['Background Material Instance'] UMaterialInstance
local ABP_PersonaStatusDraw_C = {}

ABP_PersonaStatusDraw_C['Scene Registry'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene Drawer'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene Skill Card'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene ParameterUp'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene LevelUp'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene Combine'] = function(self, ) end
ABP_PersonaStatusDraw_C['Scene Main'] = function(self, ) end
function ABP_PersonaStatusDraw_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_PersonaStatusDraw_C:ReceiveTick(DeltaSeconds) end
---@param Param1 float
function ABP_PersonaStatusDraw_C:OnSkillSelectListEvent(Param1) end
---@param Param1 float
function ABP_PersonaStatusDraw_C:OnSetCausticsRectMaskScaleEvent(Param1) end
---@param Param1 float
---@param Param2 float
function ABP_PersonaStatusDraw_C:OnSetCausticsSlideEvent(Param1, Param2) end
---@param Param1 float
function ABP_PersonaStatusDraw_C:OnSetBackgroundAlphaEvent(Param1) end
---@param EntryPoint int32
function ABP_PersonaStatusDraw_C:ExecuteUbergraph_BP_PersonaStatusDraw(EntryPoint) end


