---@meta

---@class UPlayAtomCue_C : UAnimNotify
---@field Sound USoundAtomCue
---@field Bone FName
---@field follow boolean
---@field VolumeMultiplier float
---@field PitchMultiplier float
local UPlayAtomCue_C = {}

---@return FString
function UPlayAtomCue_C:GetNotifyName() end
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return boolean
function UPlayAtomCue_C:Received_Notify(MeshComp, Animation) end


