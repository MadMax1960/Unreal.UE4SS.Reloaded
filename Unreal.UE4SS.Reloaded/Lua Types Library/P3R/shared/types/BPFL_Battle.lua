---@meta

---@class UBPFL_Battle_C : UBlueprintFunctionLibrary
local UBPFL_Battle_C = {}

---@param HitTypeName FString
---@param __WorldContext UObject
---@param Notify_Name EBtlAnimNotifyHitEffect
UBPFL_Battle_C['Get Hit Notify From Name'] = function(self, HitTypeName, __WorldContext, Notify_Name) end
---@param Selection EBtlAnimNotifyHitEffect
---@param __WorldContext UObject
---@param Notify_Name FName
UBPFL_Battle_C['Get Hit Notify Name'] = function(self, Selection, __WorldContext, Notify_Name) end
---@param targetList TArray<ABtlActor>
---@param UseCommonCylinder boolean
---@param __WorldContext UObject
---@param CylinderCenter FVector
---@param SizeWeightingCenter FVector
function UBPFL_Battle_C:CalcCylinderCenter(targetList, UseCommonCylinder, __WorldContext, CylinderCenter, SizeWeightingCenter) end
---@param BtlCore UBtlCoreComponent
---@param DependsOnEnemyTarget boolean
---@param __WorldContext UObject
UBPFL_Battle_C['Battle Coordinate Close Formation'] = function(self, BtlCore, DependsOnEnemyTarget, __WorldContext) end
---@param LS_Actor ALevelSequenceActor
---@param __WorldContext UObject
---@param AnimTime float
function UBPFL_Battle_C:CalcLevelSequencePlayTime(LS_Actor, __WorldContext, AnimTime) end
---@param BtlCore UBtlCoreComponent
---@param MainCharacter ABtlActor
---@param __WorldContext UObject
function UBPFL_Battle_C:BtlRotateEnemiesLookatMainChara(BtlCore, MainCharacter, __WorldContext) end
---@param BtlCore UBtlCoreComponent
---@param MainCharacter ABtlActor
---@param TurntableForceReset boolean
---@param __WorldContext UObject
function UBPFL_Battle_C:BtlRotateTurningTableRequest(BtlCore, MainCharacter, TurntableForceReset, __WorldContext) end
---@param BtlCore UBtlCoreComponent
---@param MainCharacter ABtlActor
---@param TurntableForceReset boolean
---@param __WorldContext UObject
function UBPFL_Battle_C:BtlRotateTurningTable(BtlCore, MainCharacter, TurntableForceReset, __WorldContext) end
---@param Character ABP_BtlCharacterBase_C
---@param LookAtLocation FVector
---@param __WorldContext UObject
---@return FRotator
function UBPFL_Battle_C:BtlFindLookAtPosRotationFlat(Character, LookAtLocation, __WorldContext) end
---@param vec0 FVector
---@param vec1 FVector
---@param Alpha float
---@param __WorldContext UObject
---@param Vec FVector
function UBPFL_Battle_C:VectorAnim(vec0, vec1, Alpha, __WorldContext, Vec) end
---@param Selection EBtlAnimNotifyShadow
---@param DefaultNotifyName FName
---@param __WorldContext UObject
---@param Notify_Name FName
UBPFL_Battle_C['Get Shadow Notify'] = function(self, Selection, DefaultNotifyName, __WorldContext, Notify_Name) end
---@param Selection EBtlAnimNotifyPersona
---@param DefaultNotifyName FName
---@param __WorldContext UObject
---@param Notify_Name FName
UBPFL_Battle_C['Get Persona Notify'] = function(self, Selection, DefaultNotifyName, __WorldContext, Notify_Name) end
---@param Selection EBtlAnimNotify
---@param DefaultNotifyName FName
---@param __WorldContext UObject
---@param Notify_Name FName
UBPFL_Battle_C['Get Human Notify'] = function(self, Selection, DefaultNotifyName, __WorldContext, Notify_Name) end
---@param Character ABP_BtlCharacterBase_C
---@param LookatCharacter ABP_BtlCharacterBase_C
---@param __WorldContext UObject
---@return FRotator
function UBPFL_Battle_C:BtlFindLookAtRotationFlat(Character, LookatCharacter, __WorldContext) end
---@param String FString
---@param __WorldContext UObject
UBPFL_Battle_C['Battle Print Log'] = function(self, String, __WorldContext) end
---@param Value int32
---@param Max int32
---@param __WorldContext UObject
---@param LoopIndex int32
function UBPFL_Battle_C:CalcLoopIndex(Value, Max, __WorldContext, LoopIndex) end
---@param Character_List TArray<ABP_BtlCharacterBase_C>
---@param Radius_Ratio float
---@param Height_Ratio float
---@param Rotate_Degree float
---@param Use_Common_Cylinder boolean
---@param __WorldContext UObject
---@param Location FVector
function UBPFL_Battle_C:CalculateCylinderLocation(Character_List, Radius_Ratio, Height_Ratio, Rotate_Degree, Use_Common_Cylinder, __WorldContext, Location) end
---@param String FString
---@param __WorldContext UObject
UBPFL_Battle_C['Battle Print Note String'] = function(self, String, __WorldContext) end
---@param String FString
---@param __WorldContext UObject
UBPFL_Battle_C['Battle Print Warning String'] = function(self, String, __WorldContext) end
---@param String FString
---@param __WorldContext UObject
UBPFL_Battle_C['Battle Print Error String'] = function(self, String, __WorldContext) end
---@param Location FVector
---@param __WorldContext UObject
---@param String FString
UBPFL_Battle_C['Conv Vec to CSV string'] = function(self, Location, __WorldContext, String) end
---@param Value float
---@param AddValue float
---@param __WorldContext UObject
function UBPFL_Battle_C:AddFloat(Value, AddValue, __WorldContext) end
---@param Value int32
---@param Add_Value int32
---@param __WorldContext UObject
function UBPFL_Battle_C:AddInt(Value, Add_Value, __WorldContext) end
---@param __WorldContext UObject
---@param trans FTransform
function UBPFL_Battle_C:GetInitialTransform(__WorldContext, trans) end
---@param Targets TArray<ABtlActor>
---@param UseCommonCylinder boolean
---@param ModeSizeWeightingCylinder boolean
---@param __WorldContext UObject
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
function UBPFL_Battle_C:MakeCylinder(Targets, UseCommonCylinder, ModeSizeWeightingCylinder, __WorldContext, Bottom_Center, Radius, Height) end


