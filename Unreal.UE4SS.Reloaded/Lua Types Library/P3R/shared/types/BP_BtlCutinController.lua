---@meta

---@class ABP_BtlCutinController_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ReadyForPlay FBP_BtlCutinController_CReadyForPlay
---@field CutinFinished FBP_BtlCutinController_CCutinFinished
---@field LoadingCutin FBP_BtlCutinController_CLoadingCutin
---@field BtlEventAssistance ABP_BtlEventAssistant_C
---@field Chara ABP_BtlCharacterBase_C
---@field persona ABP_BtlPersonaBase_C
---@field PersonaManequinne ABP_BtlCutinMannequin_C
---@field GroundMannequin ABP_BtlCutinMannequin_C
---@field BackGroundMannequin ABP_BtlCutinMannequin_C
---@field VideoMannequine ABP_BtlCutinVideo_C
---@field SkyLightsColors TArray<FLinearColor>
---@field SpotLightsColors TArray<FLinearColor>
---@field ['On End Fade In'] FBP_BtlCutinController_COn End Fade In
---@field BtlGui UBP_BtlGuiComponent_C
---@field StageMajorID int32
---@field StageMinorID int32
---@field NormalMaterial UMaterialInstanceConstant
---@field BreakMaterial UMaterialInstanceConstant
---@field BackGroundMaterial UMaterialInstance
---@field ['On End Load Asset'] FBP_BtlCutinController_COn End Load Asset
---@field isEndLoadVideoMaterial boolean
---@field isEndBackGroundMaterial boolean
---@field isEndLoadMediaPlayer boolean
---@field isPrepareSOFDECVideo boolean
---@field isWaitLoadSOFDECVideo boolean
---@field CatinBGDataTable UDataTable
---@field ['On End Load MovieActor'] FBP_BtlCutinController_COn End Load MovieActor
---@field isLoadStartMoviePlayer boolean
---@field isLoadEndMoviePlayer boolean
---@field MoviePlayerBattle AMoviePlayActorBattle
---@field isError boolean
---@field BtlActorCharacterID int32
---@field BtlActorID int32
local ABP_BtlCutinController_C = {}

---@param ID int32
function ABP_BtlCutinController_C:GetId(ID) end
ABP_BtlCutinController_C['Load Assets'] = function(self, ) end
ABP_BtlCutinController_C['Load Level Sequence'] = function(self, ) end
function ABP_BtlCutinController_C:LoadBackGroundMaterial() end
---@param majorId int32
---@param minorId int32
function ABP_BtlCutinController_C:SetStageID(majorId, minorId) end
---@param Effect UNiagaraComponent
ABP_BtlCutinController_C['Set PersonaSpawnEffect'] = function(self, Effect) end
---@param persona ABP_BtlPersonaBase_C
ABP_BtlCutinController_C['Set Persona'] = function(self, persona) end
ABP_BtlCutinController_C['End Fade In'] = function(self, ) end
---@param timeSecond float
ABP_BtlCutinController_C['Start Fade In'] = function(self, timeSecond) end
ABP_BtlCutinController_C['Restore Lights'] = function(self, ) end
ABP_BtlCutinController_C['Init Lights'] = function(self, ) end
---@param SizeId int32
ABP_BtlCutinController_C['Get Persona Size'] = function(self, SizeId) end
---@param ID int32
ABP_BtlCutinController_C['Get Stage ID'] = function(self, ID) end
---@param ID int32
ABP_BtlCutinController_C['Get Character ID'] = function(self, ID) end
ABP_BtlCutinController_C['Show Other Actor'] = function(self, ) end
function ABP_BtlCutinController_C:InitVideo() end
ABP_BtlCutinController_C['Init Character'] = function(self, ) end
function ABP_BtlCutinController_C:InitPersona() end
ABP_BtlCutinController_C['Init Ground'] = function(self, ) end
ABP_BtlCutinController_C['Init Back Ground'] = function(self, ) end
function ABP_BtlCutinController_C:InitManequine() end
ABP_BtlCutinController_C['Load MovieActor'] = function(self, ) end
function ABP_BtlCutinController_C:InitPosition() end
---@param Performer ABP_BtlCharacterBase_C
function ABP_BtlCutinController_C:LoadStuff(Performer) end
---@param Loaded UObject
function ABP_BtlCutinController_C:OnLoaded_1DA76FE6431CA392BE04B5BAEF80ABA4(Loaded) end
---@param Loaded UObject
function ABP_BtlCutinController_C:OnLoaded_15F298D54142CC35EB9E838E04FBE109(Loaded) end
---@param Loaded UObject
function ABP_BtlCutinController_C:OnLoaded_110309BD4006E4C58D53CB82411DB748(Loaded) end
---@param Loaded UObject
function ABP_BtlCutinController_C:OnLoaded_A0642F974397FA9F1D4DC6B362317BF8(Loaded) end
ABP_BtlCutinController_C['One Load End'] = function(self, ) end
ABP_BtlCutinController_C['Load Async Start'] = function(self, ) end
---@param NormalMaterial TSoftObjectPtr<UMaterialInstanceConstant>
---@param BreakMaterial TSoftObjectPtr<UMaterialInstanceConstant>
---@param MovieID int32
function ABP_BtlCutinController_C:LoadOneVideoMaterial(NormalMaterial, BreakMaterial, MovieID) end
ABP_BtlCutinController_C['Load BackGroundMaterial'] = function(self, ) end
ABP_BtlCutinController_C['Load Video Material'] = function(self, ) end
function ABP_BtlCutinController_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlCutinController_C:ReceiveTick(DeltaSeconds) end
ABP_BtlCutinController_C['Has Finished Loading'] = function(self, ) end
ABP_BtlCutinController_C['On Play Cutin'] = function(self, ) end
ABP_BtlCutinController_C['On Fade Start'] = function(self, ) end
ABP_BtlCutinController_C['Cutin Start'] = function(self, ) end
ABP_BtlCutinController_C['On End Event'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlCutinController_C:ExecuteUbergraph_BP_BtlCutinController(EntryPoint) end
ABP_BtlCutinController_C['On End Load MovieActor__DelegateSignature'] = function(self, ) end
ABP_BtlCutinController_C['On End Load Asset__DelegateSignature'] = function(self, ) end
ABP_BtlCutinController_C['On End Fade In__DelegateSignature'] = function(self, ) end
function ABP_BtlCutinController_C:LoadingCutin__DelegateSignature() end
function ABP_BtlCutinController_C:CutinFinished__DelegateSignature() end
function ABP_BtlCutinController_C:ReadyForPlay__DelegateSignature() end


