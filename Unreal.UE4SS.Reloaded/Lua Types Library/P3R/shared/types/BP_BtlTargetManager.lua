---@meta

---@class UBP_BtlTargetManager_C : UBtlTargetsManagerComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetsList TArray<ABP_BtlCharacterBase_C>
local UBP_BtlTargetManager_C = {}

---@param CheckChara ABP_BtlCharacterBase_C
---@param OtherCharacter boolean
function UBP_BtlTargetManager_C:IsEnchantCharacter(CheckChara, OtherCharacter) end
---@param OutResult TArray<ABtlActor>
---@param OutResult2 TArray<ABtlActor>
function UBP_BtlTargetManager_C:GetMainAndTargets(OutResult, OutResult2) end
---@param Result boolean
function UBP_BtlTargetManager_C:CheckTargetsIncludePlayerAndEnemy(Result) end
---@param Result boolean
function UBP_BtlTargetManager_C:CheckTargetsIncludeSelf(Result) end
---@param Result boolean
function UBP_BtlTargetManager_C:CheckTargetSelfOnly(Result) end
---@param Character TArray<ABP_BtlCharacterBase_C>
function UBP_BtlTargetManager_C:GetMainWithPersona(Character) end
---@param UseCommonCylinder boolean
---@param ExceptPersonaCylinder boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
---@param Cylinder_Center FVector
function UBP_BtlTargetManager_C:GetCombineCylinder(UseCommonCylinder, ExceptPersonaCylinder, Bottom_Center, Radius, Height, Cylinder_Center) end
---@param CheckChara ABP_BtlCharacterBase_C
---@param OtherCharacter boolean
function UBP_BtlTargetManager_C:IsOtherCharacter(CheckChara, OtherCharacter) end
---@param UseCommonCylinder boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
---@param Cylinder_Center FVector
function UBP_BtlTargetManager_C:GetTargetsCylinder(UseCommonCylinder, Bottom_Center, Radius, Height, Cylinder_Center) end
---@param UseCommonCylinder boolean
---@param ExceptPersona boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
---@param Cylinder_Center FVector
function UBP_BtlTargetManager_C:GetMainCharacterCylinder(UseCommonCylinder, ExceptPersona, Bottom_Center, Radius, Height, Cylinder_Center) end
---@param Characters TArray<ABP_BtlCharacterBase_C>
function UBP_BtlTargetManager_C:GetEffectTargetsCharacters(Characters) end
---@param Character ABP_BtlCharacterBase_C
function UBP_BtlTargetManager_C:GetMain(Character) end
---@param Characters TArray<ABP_BtlCharacterBase_C>
function UBP_BtlTargetManager_C:GetTargetsCharacters(Characters) end
function UBP_BtlTargetManager_C:ClearForBP() end
---@param EntryPoint int32
function UBP_BtlTargetManager_C:ExecuteUbergraph_BP_BtlTargetManager(EntryPoint) end


