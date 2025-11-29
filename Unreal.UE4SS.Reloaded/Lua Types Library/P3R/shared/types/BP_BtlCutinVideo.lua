---@meta

---@class ABP_BtlCutinVideo_C : ABP_BtlCutinMannequin_C
---@field BreakScreen USkeletalMeshComponent
---@field ['skeletal mesh component'] USkeletalMeshComponent
local ABP_BtlCutinVideo_C = {}

ABP_BtlCutinVideo_C['BCD_Init Video Break Animation'] = function(self, ) end
ABP_BtlCutinVideo_C['BCD Play Video Break Animation'] = function(self, ) end
---@param NormalMaterial UMaterialInstanceConstant
---@param BreakMaterial UMaterialInstanceConstant
ABP_BtlCutinVideo_C['Set Material'] = function(self, NormalMaterial, BreakMaterial) end
ABP_BtlCutinVideo_C['Delete Video Screen'] = function(self, ) end
function ABP_BtlCutinVideo_C:InitActor() end


