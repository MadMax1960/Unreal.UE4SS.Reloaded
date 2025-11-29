---@meta

---@class ABP_BtlMainConductor_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_BtlTargetManager UBP_BtlTargetManager_C
---@field BP_BtlCoreComponent UBP_BtlCoreComponent_C
---@field BP_BtlCameraCalc UBP_BtlCameraCalc_C
---@field BtlUICamera UBP_BtlUICameraComponent_C
---@field BP_BtlEnvironment UBP_BtlEnvironment_C
---@field BP_BtlResidentDataComp UBP_BtlResidentDataComp_C
---@field BP_BtlActionManager UBP_BtlActionManager_C
---@field BtlEvent UBP_BtlEvent_C
---@field BtlInput UBtlInputComponent
---@field BtlCameraManager UBP_BtlCameraManagerComponent_C
---@field BtlGui UBP_BtlGuiComponent_C
---@field BtlAIManager UBtlAIManagerComponent
---@field DefaultSceneRoot USceneComponent
---@field ['Encount Parameter'] FBtlEncountParam
---@field ['On Finish Battle'] FBP_BtlMainConductor_COn Finish Battle
---@field UsingLevelNames TArray<FName>
---@field LoadingIndex int32
---@field LoadedPerformer boolean
---@field LoadedLevels boolean
---@field CheckCharacterReady boolean
---@field NotReadyCharacter boolean
---@field BtlFIghting ABP_BtlPhaseFighting_C
---@field LoadFinshedCount int32
---@field LoadedStuff boolean
---@field IsSerialEncount boolean
---@field ['On Finish Load For Serial Encount'] FBP_BtlMainConductor_COn Finish Load For Serial Encount
---@field SpawnedActorParent ABP_BtlSpawnedActorParent_C
---@field LoadedCount int32
---@field LoadedEnemy boolean
---@field StartedLoadingAlongWithBattleStart boolean
---@field isRequestedBGM boolean
local ABP_BtlMainConductor_C = {}

---@param major FString
---@param Minor FString
---@return FString
function ABP_BtlMainConductor_C:GetEnvLevelPath(major, Minor) end
---@param major FString
---@param Minor FString
---@return FString
function ABP_BtlMainConductor_C:GetLevelPath(major, Minor) end
function ABP_BtlMainConductor_C:SetBattleCompToBtlCore() end
function ABP_BtlMainConductor_C:SetBattleCameraToViewTarget() end
function ABP_BtlMainConductor_C:RequestFightingBGM() end
function ABP_BtlMainConductor_C:SetupBtlCoreToAllChara() end
ABP_BtlMainConductor_C['Start Loading Along With Battle Start'] = function(self, ) end
function ABP_BtlMainConductor_C:SetFormationData() end
function ABP_BtlMainConductor_C:RestoreEnvironment() end
function ABP_BtlMainConductor_C:AttachPlayersToAnchor() end
---@param Ready boolean
function ABP_BtlMainConductor_C:CheckReadyPerformerData(Ready) end
function ABP_BtlMainConductor_C:SetupBattle() end
function ABP_BtlMainConductor_C:WaitAllCharacter() end
function ABP_BtlMainConductor_C:AttachEnemiesToAnchor() end
function ABP_BtlMainConductor_C:MakeLoadLevelName() end
function ABP_BtlMainConductor_C:EliminateAllEnemies() end
ABP_BtlMainConductor_C['Setup Battle Stuff'] = function(self, ) end
function ABP_BtlMainConductor_C:SetBGLevelReference() end
ABP_BtlMainConductor_C['Event Encount '] = function(self, ) end
---@param Visible boolean
---@param NotAffectGuest boolean
function ABP_BtlMainConductor_C:SetAllCharacterVisible(Visible, NotAffectGuest) end
---@param HERO ABP_BtlCharacterBase_C
function ABP_BtlMainConductor_C:GetHero(HERO) end
---@param Event_Assistant ABP_BtlEventAssistant_C
function ABP_BtlMainConductor_C:GetEventControl(Event_Assistant) end
ABP_BtlMainConductor_C['Setup Battle Event'] = function(self, ) end
ABP_BtlMainConductor_C['Setup Battle Camera'] = function(self, ) end
---@param Btl_Character_Base ABP_BtlCharacterBase_C
function ABP_BtlMainConductor_C:GetMainAction(Btl_Character_Base) end
---@param TargetsManager UBP_BtlTargetManager_C
function ABP_BtlMainConductor_C:GetTargetsManager(TargetsManager) end
---@param BtlCore UBP_BtlCoreComponent_C
function ABP_BtlMainConductor_C:GetBtlCore(BtlCore) end
function ABP_BtlMainConductor_C:MarkAsBtlCoreIsReady() end
ABP_BtlMainConductor_C['On Load Serial Encount'] = function(self, ) end
ABP_BtlMainConductor_C['Has Finished Serial Encount Enemy'] = function(self, ) end
ABP_BtlMainConductor_C['On Start Turn Battle'] = function(self, ) end
function ABP_BtlMainConductor_C:HasFinishedWipe() end
ABP_BtlMainConductor_C['On Retry Battle'] = function(self, ) end
ABP_BtlMainConductor_C['On Load Residential Data'] = function(self, ) end
ABP_BtlMainConductor_C['On Load'] = function(self, ) end
ABP_BtlMainConductor_C['On Finish Data Load'] = function(self, ) end
---@param DeltaSeconds float
function ABP_BtlMainConductor_C:ReceiveTick(DeltaSeconds) end
ABP_BtlMainConductor_C['On Finish Loading Levels'] = function(self, ) end
ABP_BtlMainConductor_C['On Finished Stuff Load'] = function(self, ) end
ABP_BtlMainConductor_C['On Start Battle From Serial Encount'] = function(self, ) end
ABP_BtlMainConductor_C['On Start Loading GUI Models'] = function(self, ) end
ABP_BtlMainConductor_C['Has Finished All Loading Events'] = function(self, ) end
ABP_BtlMainConductor_C['On Finish Enemy Load'] = function(self, ) end
ABP_BtlMainConductor_C['Has Finished Load Enemy For Quick Enc Mode'] = function(self, ) end
ABP_BtlMainConductor_C['On Load Levels'] = function(self, ) end
ABP_BtlMainConductor_C['On Unload Levels'] = function(self, ) end
ABP_BtlMainConductor_C['On Destroy Battle '] = function(self, ) end
---@param Encount_Param FBtlEncountParam
ABP_BtlMainConductor_C['On Encount'] = function(self, Encount_Param) end
ABP_BtlMainConductor_C['On Exit Battle'] = function(self, ) end
ABP_BtlMainConductor_C['On Initialize Battle'] = function(self, ) end
ABP_BtlMainConductor_C['On Debug Kill'] = function(self, ) end
ABP_BtlMainConductor_C['On Finish Unloading Levels'] = function(self, ) end
ABP_BtlMainConductor_C['Has Finished Encount Event'] = function(self, ) end
ABP_BtlMainConductor_C['Sync Encount Event Camera'] = function(self, ) end
function ABP_BtlMainConductor_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_BtlMainConductor_C:ExecuteUbergraph_BP_BtlMainConductor(EntryPoint) end
ABP_BtlMainConductor_C['On Finish Load For Serial Encount__DelegateSignature'] = function(self, ) end
ABP_BtlMainConductor_C['On Finish Battle__DelegateSignature'] = function(self, ) end


