---@meta

---@class ABP_BtlSkillBase_C : ABtlSkill
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Camera UCameraComponent
---@field DefaultSceneRoot USceneComponent
---@field ElapsedTime float
---@field IsPlay boolean
---@field SkillControl TArray<FFBtlSkillControl>
---@field SkillRequests TArray<FFBtlSkillRequest>
---@field DeltaTime float
---@field ['Skill End'] FBP_BtlSkillBase_CSkill End
---@field ['Target Manager'] UBP_BtlTargetManager_C
---@field UseSkillCamera boolean
---@field ['Level Sequence'] ULevelSequence
---@field ['Effect Camera '] ACineCameraActor
---@field SkillCamera ALevelSequenceActor
---@field PlayWithSequence boolean
---@field ArrangedDestroyTime float
---@field CameraSnapToCharaRoot boolean
local ABP_BtlSkillBase_C = {}

---@param Character ABP_BtlCharacterBase_C
function ABP_BtlSkillBase_C:GetEnchanter(Character) end
---@param Skill_Paramater FBtlSkillParam
---@param Targets TArray<ABtlActor>
ABP_BtlSkillBase_C['Request VFX to Target Group'] = function(self, Skill_Paramater, Targets) end
---@param Target ABtlActor
---@param Direction EBtlSkillDirectionTargetType
---@param TargetType EBtlSkillTargetType
---@param trans FVector
---@param Rotate FRotator
ABP_BtlSkillBase_C['Calc Additional Location'] = function(self, Target, Direction, TargetType, trans, Rotate) end
function ABP_BtlSkillBase_C:CalcDestroyTime() end
---@param CharaList TArray<ABP_BtlCharacterBase_C>
function ABP_BtlSkillBase_C:GetTargets(CharaList) end
---@param BtlEnv UBP_BtlEnvironment_C
function ABP_BtlSkillBase_C:TurningEnvironment(BtlEnv) end
---@param Btl_Actor ABtlActor
---@param Height_Type EBtlSkillPositionHeightType
---@param trans FTransform
function ABP_BtlSkillBase_C:CalcCylinderLocation(Btl_Actor, Height_Type, trans) end
---@param Btl_Actor TArray<ABtlActor>
---@param Target_Type EBtlSkillTargetType
---@param Position_Type EBtlSkillPositionTargetType
---@param Position_Height_Type EBtlSkillPositionHeightType
---@param Direction EBtlSkillDirectionTargetType
---@param Location FVector
---@param Rotation FRotator
function ABP_BtlSkillBase_C:CalcLocation(Btl_Actor, Target_Type, Position_Type, Position_Height_Type, Direction, Location, Rotation) end
---@param SkillParameter FBtlSkillParam
---@param TargetsPackage UBtlTargetsManagerComponent
ABP_BtlSkillBase_C['Request VFX to field'] = function(self, SkillParameter, TargetsPackage) end
function ABP_BtlSkillBase_C:RefleshRequests() end
function ABP_BtlSkillBase_C:MonitorRequests() end
---@param SkillParameter FBtlSkillParam
---@param Enchanter ABtlActor
ABP_BtlSkillBase_C['Request VFX to Enchanter'] = function(self, SkillParameter, Enchanter) end
---@param Skill_Paramater FBtlSkillParam
---@param Targets TArray<ABtlActor>
ABP_BtlSkillBase_C['Request VFX to Targets'] = function(self, Skill_Paramater, Targets) end
function ABP_BtlSkillBase_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_BtlSkillBase_C:ReceiveTick(DeltaSeconds) end
---@param Target_Manager UBP_BtlTargetManager_C
---@param BtlEnv UBP_BtlEnvironment_C
ABP_BtlSkillBase_C['On Skill Play'] = function(self, Target_Manager, BtlEnv) end
ABP_BtlSkillBase_C['Skill Destroy'] = function(self, ) end
ABP_BtlSkillBase_C['On Destroy'] = function(self, ) end
---@param TargetManager UBP_BtlTargetManager_C
ABP_BtlSkillBase_C['On Skill Play For Test Mode'] = function(self, TargetManager) end
function ABP_BtlSkillBase_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_BtlSkillBase_C:ExecuteUbergraph_BP_BtlSkillBase(EntryPoint) end
ABP_BtlSkillBase_C['Skill End__DelegateSignature'] = function(self, ) end


