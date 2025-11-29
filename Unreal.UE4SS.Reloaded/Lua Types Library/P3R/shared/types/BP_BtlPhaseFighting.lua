---@meta

---@class ABP_BtlPhaseFighting_C : ABP_BtlPhaseBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_BtlCameraCalc UBP_BtlCameraCalc_C
---@field AIManager UBtlAIManagerComponent
---@field ActionManager UBP_BtlActionManager_C
---@field BtlGui UBP_BtlGuiComponent_C
---@field BtlCore UBtlCoreComponent
---@field TargetManager UBP_BtlTargetManager_C
---@field CameraManager UBP_BtlCameraManagerComponent_C
---@field BtlInput UBtlInputComponent
---@field ReadyForExit boolean
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field UICamera UBP_BtlUICameraComponent_C
---@field NonePreAct boolean
---@field AlloutController ABP_BtlAlloutController_C
---@field MainChara ABP_BtlCharacterBase_C
---@field ReadyForExitFromAllout boolean
---@field ShuffleTimeMonitor ABtlEventAlloutShuffleMonitor
---@field BtlEvent UBP_BtlEvent_C
---@field EndStartWipe boolean
---@field EndStartup boolean
---@field EnableInterruptProgress boolean
---@field RequestSerialEncount boolean
---@field IsRetryStart boolean
---@field AlloutDamageEffect UNiagaraSystem
---@field isSwitchedAlloutCut3 boolean
local ABP_BtlPhaseFighting_C = {}

function ABP_BtlPhaseFighting_C:FinalizeAlloutAnnihilation() end
function ABP_BtlPhaseFighting_C:RestoreSpecificModelsFromAllout() end
---@return boolean
function ABP_BtlPhaseFighting_C:SyncProgressTimingInBP() end
---@param MainCharacter ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:DoAttackByRush(MainCharacter) end
ABP_BtlPhaseFighting_C['Proc Switch to Rush'] = function(self, ) end
ABP_BtlPhaseFighting_C['Proc Before Command Select'] = function(self, ) end
function ABP_BtlPhaseFighting_C:ProcAutoSkillRecovery() end
function ABP_BtlPhaseFighting_C:HideDeadPlayer() end
function ABP_BtlPhaseFighting_C:RotateHeroToCenter() end
function ABP_BtlPhaseFighting_C:HideExceptAlloutParticipants() end
---@param Visible boolean
function ABP_BtlPhaseFighting_C:SetAllCharacterVisible(Visible) end
function ABP_BtlPhaseFighting_C:SetupTargetsForAllout() end
function ABP_BtlPhaseFighting_C:RotateEnemyAnchorForAllout() end
---@param MainCharacter ABP_BtlCharacterBase_C
---@param HERO ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:SetupAlloutAttack(MainCharacter, HERO) end
---@param OtherMembers TArray<ABP_BtlCharacterBase_C>
function ABP_BtlPhaseFighting_C:MakeOtherAlloutMember(OtherMembers) end
function ABP_BtlPhaseFighting_C:PlayPreActCamera() end
function ABP_BtlPhaseFighting_C:PreActRelocation() end
function ABP_BtlPhaseFighting_C:ProcPreAct() end
---@param phase EBtlPhaseType
---@return ABtlPhase
function ABP_BtlPhaseFighting_C:CreateNextPhase(phase) end
function ABP_BtlPhaseFighting_C:SetupAllCharacter() end
function ABP_BtlPhaseFighting_C:SwitchEachInitiateProc() end
---@param MainChara ABtlActor
function ABP_BtlPhaseFighting_C:SetupParyPanel(MainChara) end
ABP_BtlPhaseFighting_C['Wait Dying Anim Alive Enemies For Allout Damage'] = function(self, ) end
function ABP_BtlPhaseFighting_C:WaitAnimAllEnemies() end
---@param NoBlend boolean
function ABP_BtlPhaseFighting_C:WaitAnimAllPlayer(NoBlend) end
---@param NextCharacter ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:SetupFormation(NextCharacter) end
function ABP_BtlPhaseFighting_C:SetExitReady() end
---@return boolean
function ABP_BtlPhaseFighting_C:CheckProgressNextPhaseInBP() end
---@param AIManager UBtlAIManagerComponent
---@param ActionManager UBP_BtlActionManager_C
---@param BtlGui UBP_BtlGuiComponent_C
---@param BtlCore UBtlCoreComponent
---@param TargetManager UBP_BtlTargetManager_C
---@param CameraManager UBP_BtlCameraManagerComponent_C
---@param BtlInput UBtlInputComponent
---@param BtlEnvironment UBP_BtlEnvironment_C
---@param UICamera UBP_BtlUICameraComponent_C
---@param BtlEvent UBP_BtlEvent_C
function ABP_BtlPhaseFighting_C:Setup(AIManager, ActionManager, BtlGui, BtlCore, TargetManager, CameraManager, BtlInput, BtlEnvironment, UICamera, BtlEvent) end
---@param Character ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:PrepareTurnStart(Character) end
---@param EventMainChara ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:GetEventMainAction(EventMainChara) end
---@param MainCharacter ABP_BtlCharacterBase_C
function ABP_BtlPhaseFighting_C:GetMainAction(MainCharacter) end
---@return ABtlPhase
function ABP_BtlPhaseFighting_C:GetNextPhaseInBP() end
function ABP_BtlPhaseFighting_C:UserConstructionScript() end
---@param Loaded UObject
function ABP_BtlPhaseFighting_C:OnLoaded_89C338DF41743B3A060FCBAB8ED6F29A(Loaded) end
---@param Loaded UObject
function ABP_BtlPhaseFighting_C:OnLoaded_BEF8F5C44FEAA533FABD21BFFF755582(Loaded) end
ABP_BtlPhaseFighting_C['On Allout Shuffle BGM Switch'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Start Holdup'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Shift General Attack'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Cancel Holdup'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Play General Attack'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Switch Allout Cut 2'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Switch Shuffle'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Switch Allout cut 3'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Shift Result'] = function(self, ) end
ABP_BtlPhaseFighting_C['Has Finished Shuffle Time'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Process Expire Support'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Process Recover Bad Status'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Process Act Bad Status'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Process Pre Act'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Start Action Turn'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Progress Next Turn'] = function(self, ) end
function ABP_BtlPhaseFighting_C:StartPhaseInBP() end
function ABP_BtlPhaseFighting_C:FinalizePhaseInBP() end
ABP_BtlPhaseFighting_C['On Process Select Command'] = function(self, ) end
ABP_BtlPhaseFighting_C['Has Finished AI Start'] = function(self, ) end
ABP_BtlPhaseFighting_C['Has Finished Turn End Event'] = function(self, ) end
function ABP_BtlPhaseFighting_C:HasFinishedWipePerformance() end
ABP_BtlPhaseFighting_C['On Retry'] = function(self, ) end
ABP_BtlPhaseFighting_C['On Progress Next Turn From Retry'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlPhaseFighting_C:ExecuteUbergraph_BP_BtlPhaseFighting(EntryPoint) end


