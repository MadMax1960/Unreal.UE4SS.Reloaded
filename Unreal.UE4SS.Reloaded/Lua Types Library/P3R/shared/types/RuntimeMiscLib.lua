---@meta

---@class AML_SplineActor : AActor
---@field _SplineComponent UML_SplineComponent
---@field _TargetMarkerComponent UML_TargetMarkerComponent
local AML_SplineActor = {}

---@param Visibility boolean
function AML_SplineActor:SetMarkerVisibility(Visibility) end
---@param Index int32
---@param Position FVector
function AML_SplineActor:SetMarkerPosition(Index, Position) end


---@class UML_MontageUtility : UBlueprintFunctionLibrary
local UML_MontageUtility = {}

---@param AnimMontage UAnimMontage
---@param Time float
function UML_MontageUtility:SetBlendOut(AnimMontage, Time) end
---@param SkeletalMeshComp USkeletalMeshComponent
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param DecreaseBlendTime float
---@return boolean
function UML_MontageUtility:SetBlendInOutAutoWithParam(SkeletalMeshComp, AnimMontage, SectionName, DecreaseBlendTime) end
---@param SkeletalMeshComp USkeletalMeshComponent
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@return boolean
function UML_MontageUtility:SetBlendInAuto(SkeletalMeshComp, AnimMontage, SectionName) end
---@param AnimMontage UAnimMontage
---@param Time float
function UML_MontageUtility:SetBlendIn(AnimMontage, Time) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param Success boolean
---@return FName
function UML_MontageUtility:GetNextSectionName(AnimMontage, SectionName, Success) end
---@param AnimMontage UAnimMontage
---@return float
function UML_MontageUtility:GetBlendOut(AnimMontage) end
---@param AnimMontage UAnimMontage
---@return float
function UML_MontageUtility:GetBlendIn(AnimMontage) end
---@param AnimMontage UAnimMontage
---@param SlotName FName
---@param SectionName FName
---@param AnimSequence UAnimSequenceBase
---@return boolean
function UML_MontageUtility:GetAnimationSequence(AnimMontage, SlotName, SectionName, AnimSequence) end


---@class UML_SplineComponent : USplineComponent
local UML_SplineComponent = {}


---@class UML_TargetMarkerComponent : UPrimitiveComponent
local UML_TargetMarkerComponent = {}


