---@meta

---@class ABP_BtlEventAssistant_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlBCDMoveCamera UBtlBCDMoveCameraComponent
---@field BtlBCDCharaCamera UBtlBCDCharaCameraComponent
---@field DefaultSceneRoot USceneComponent
---@field BtlCore UBtlCoreComponent
---@field Invoke ABP_BtlPerformer_C
---@field PartyMember1 ABP_BtlPerformer_C
---@field PartyMember2 ABP_BtlPerformer_C
---@field PartyMember3 ABP_BtlPerformer_C
---@field Target1 ABP_BtlPerformer_C
---@field PerformerList TArray<ABP_BtlPerformer_C>
---@field HasLoadedEvent FBP_BtlEventAssistant_CHasLoadedEvent
---@field LevelSequenceActor ALevelSequenceActor
---@field LevelSequencePlayer ULevelSequence
---@field ['On End Event'] FBP_BtlEventAssistant_COn End Event
---@field CameraList TArray<ACineCameraActor>
---@field MainCameraIndex int32
---@field UsingCamera ACineCameraActor
---@field CutinWidget UUserWidget
---@field CutinPersona ABP_BtlPerformer_C
---@field CutinBackGround ABP_BtlPerformer_C
---@field CutinGround ABP_BtlPerformer_C
---@field MediaPlayer UMediaPlayer
---@field NiagaraEffectsArray TMap<FString, UNiagaraComponent>
---@field BtlEnvironment UBP_BtlEnvironment_C
---@field BtlGui UBP_BtlGuiComponent_C
---@field ['On End FadeIn'] FBP_BtlEventAssistant_COn End FadeIn
---@field ['On End FadeOut'] FBP_BtlEventAssistant_COn End FadeOut
---@field ['On End Prepare Play Video'] FBP_BtlEventAssistant_COn End Prepare Play Video
---@field ['On End Open MediaPlayer'] FBP_BtlEventAssistant_COn End Open MediaPlayer
---@field EffectPersonaSpawn UNiagaraComponent
---@field ['Sky Lights Colors'] TArray<FLinearColor>
---@field ['Spot Lights Colors'] TArray<FLinearColor>
---@field EnemyDeadPower float
---@field EnableEnemyDead boolean
---@field ['On Request Shuffle Time Start'] FBP_BtlEventAssistant_COn Request Shuffle Time Start
---@field LsSfihtRecieve ULevelSequence
---@field HasFinisedShiftLoad FBP_BtlEventAssistant_CHasFinisedShiftLoad
---@field LsSfihtRecieveActor ALevelSequenceActor
---@field BtlCamera UBP_BtlCameraManagerComponent_C
---@field CameraMode EBtlCutsceneEditorMode
---@field NiagaraStoreList TArray<UNiagaraComponent>
---@field AlloutController ABP_BtlAlloutController_C
---@field ShiftRecieveSeq TMap<int32, TSoftObjectPtr<ULevelSequence>>
---@field BattleTimeDilation float
---@field SequenceTimeDilation float
---@field ['On Request Result Start'] FBP_BtlEventAssistant_COn Request Result Start
---@field EventAttachPoint ABP_BtlEventAttachPoint_C
---@field ['On Request Summon Enemies For Serial Encount'] FBP_BtlEventAssistant_COn Request Summon Enemies For Serial Encount
---@field NiagaraListForDelete TArray<UNiagaraComponent>
---@field EnemyStencilChangedList TArray<USkeletalMeshComponent>
---@field bEnemyTeammateTheurgia boolean
local ABP_BtlEventAssistant_C = {}

function ABP_BtlEventAssistant_C:UpdateEnemyTeammateTheurgia() end
ABP_BtlEventAssistant_C['Relocation Characters for Command'] = function(self, ) end
---@param HERO ABP_BtlCharacterBase_C
function ABP_BtlEventAssistant_C:GetHero(HERO) end
function ABP_BtlEventAssistant_C:SetupStuff() end
---@param Visible boolean
function ABP_BtlEventAssistant_C:SetVisibleOthers(Visible) end
function ABP_BtlEventAssistant_C:UpdateTimes() end
---@param Niagara ANiagaraActor
function ABP_BtlEventAssistant_C:ShowFieldEffect(Niagara) end
---@param Transform FTransform
function ABP_BtlEventAssistant_C:SetSequenceCharaRoot(Transform) end
function ABP_BtlEventAssistant_C:Clear() end
---@param Transform FTransform
function ABP_BtlEventAssistant_C:ConvertTransformFromCharaCylinder(Transform) end
function ABP_BtlEventAssistant_C:BCDMoveCameraTick() end
function ABP_BtlEventAssistant_C:BCDCharaCameraTick() end
function ABP_BtlEventAssistant_C:BCDCameraTick() end
---@param AreaType EBtlEventAreaType
---@param Performer ABP_BtlPerformer_C
function ABP_BtlEventAssistant_C:GetTargetPerfomerCutscene(AreaType, Performer) end
---@param Transform FTransform
---@param InterpTime float
---@param BlendType EBtlCutsceneBlendType
---@param BlendExp float
function ABP_BtlEventAssistant_C:SetCameraViewAdvance(Transform, InterpTime, BlendType, BlendExp) end
function ABP_BtlEventAssistant_C:ClearAllMembers() end
---@param Others TArray<ABP_BtlCharacterBase_C>
function ABP_BtlEventAssistant_C:SetupPartyMembers(Others) end
---@param Output ACineCameraActor
function ABP_BtlEventAssistant_C:GetBCDCamera(Output) end
---@param Location FTransform
function ABP_BtlEventAssistant_C:ExtractLocation(Location) end
function ABP_BtlEventAssistant_C:SetupEnemyDeadPower() end
---@return TArray<ABtlActor>
function ABP_BtlEventAssistant_C:GetEnemyList() end
---@param Participants TArray<ABP_BtlCharacterBase_C>
function ABP_BtlEventAssistant_C:SetMembers(Participants) end
---@param Visible boolean
ABP_BtlEventAssistant_C['Set BG Visible'] = function(self, Visible) end
ABP_BtlEventAssistant_C['Init Lights'] = function(self, ) end
ABP_BtlEventAssistant_C['Restore Lights'] = function(self, ) end
---@param Effect UNiagaraComponent
ABP_BtlEventAssistant_C['Set PersonaSpawnEffect'] = function(self, Effect) end
---@param OpenedUrl FString
ABP_BtlEventAssistant_C['Call End Open MediaPlayer'] = function(self, OpenedUrl) end
function ABP_BtlEventAssistant_C:CleanUpVideo() end
function ABP_BtlEventAssistant_C:PreparePlayVideo() end
function ABP_BtlEventAssistant_C:PauseVideo() end
---@param MediaPlayer UMediaPlayer
---@param MediaSource UBaseMediaSource
function ABP_BtlEventAssistant_C:LoadMediaPlayer(MediaPlayer, MediaSource) end
ABP_BtlEventAssistant_C['Call End FadeOut'] = function(self, ) end
ABP_BtlEventAssistant_C['Call End FadeIn'] = function(self, ) end
---@param Second float
function ABP_BtlEventAssistant_C:FadeInBySecond(Second) end
---@param Second float
function ABP_BtlEventAssistant_C:FadeOutBySecond(Second) end
ABP_BtlEventAssistant_C['Relocation Characters'] = function(self, ) end
---@param NewParam UBP_BtlGuiComponent_C
function ABP_BtlEventAssistant_C:SetBtlGui(NewParam) end
function ABP_BtlEventAssistant_C:SetFadeBind() end
---@param Visible boolean
---@param NotAffectGuest boolean
ABP_BtlEventAssistant_C['Set All Character Visible'] = function(self, Visible, NotAffectGuest) end
function ABP_BtlEventAssistant_C:SetupBtlEnvironment() end
---@param TargetType EBtlEventAreaType
---@param Performer ABP_BtlPerformer_C
function ABP_BtlEventAssistant_C:GetTargetPerformer(TargetType, Performer) end
---@param Character ABP_BtlCharacterBase_C
function ABP_BtlEventAssistant_C:LookatCharacter(Character) end
---@param Camera ACineCameraActor
ABP_BtlEventAssistant_C['Arrange Target Camera'] = function(self, Camera) end
---@param Transform FTransform
---@param Interp_Time float
function ABP_BtlEventAssistant_C:SetCameraView(Transform, Interp_Time) end
function ABP_BtlEventAssistant_C:SetupCamera() end
---@param Transform FTransform
---@param InterpTime float
ABP_BtlEventAssistant_C['Play Camera'] = function(self, Transform, InterpTime) end
function ABP_BtlEventAssistant_C:LinkAssistantToPerformer() end
---@param AreaType EBtlEventAreaType
---@return FTransform
function ABP_BtlEventAssistant_C:GetTransformFromArea(AreaType) end
---@param Niagara UNiagaraSystem
---@param Transform FTransform
---@param Auto_Destroy boolean
---@param UseLocationOnly boolean
---@return UNiagaraComponent
function ABP_BtlEventAssistant_C:SpawnEffect(Niagara, Transform, Auto_Destroy, UseLocationOnly) end
---@param SearchCharacter ABP_BtlCharacterBase_C
---@param Found boolean
function ABP_BtlEventAssistant_C:SearchPerformer(SearchCharacter, Found) end
function ABP_BtlEventAssistant_C:InitializePerformer() end
ABP_BtlEventAssistant_C['Setup Mannequin'] = function(self, ) end
---@param Loaded UObject
function ABP_BtlEventAssistant_C:OnLoaded_EAEC04644E0DEDCEA74F079822A00578(Loaded) end
---@param Loaded UObject
function ABP_BtlEventAssistant_C:OnLoaded_691412D54C4C232F9A57179F9A7D72FA(Loaded) end
---@param Loaded UObject
function ABP_BtlEventAssistant_C:OnLoaded_AC88E505430191437A26DAAA3C28A967(Loaded) end
---@param Type EBtlJyokyohelpType
ABP_BtlEventAssistant_C['BCD Call Jyokyohelp'] = function(self, Type) end
---@param skillId int32
---@param IsEnemy boolean
---@param Time float
ABP_BtlEventAssistant_C['BCD ShowSkillName'] = function(self, skillId, IsEnemy, Time) end
---@param IsVisible boolean
ABP_BtlEventAssistant_C['BCD SetPartyPanelVisible'] = function(self, IsVisible) end
ABP_BtlEventAssistant_C['BCD Show Monorail Rush Effect'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Show NyxAvatar Feather Effect'] = function(self, ) end
---@param CharaFrom ABtlActor
---@param CharaTo ABtlActor
ABP_BtlEventAssistant_C['On Load Shift Stuff'] = function(self, CharaFrom, CharaTo) end
ABP_BtlEventAssistant_C['On Unload Shift Stuff'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Shift Play Catch Sequence'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Start Shuffle Time'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Result Capture'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Play Allout Finish Tex'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Allout Play Voice Run into Enemy'] = function(self, ) end
---@param Anim EBtlAnimationType
---@param Anim_Next EBtlAnimationType
ABP_BtlEventAssistant_C['BCD All Enemy Play Animation'] = function(self, Anim, Anim_Next) end
ABP_BtlEventAssistant_C['BCD All Enemy Play Allout Dead'] = function(self, ) end
---@param Color FColor
---@param Alpha float
ABP_BtlEventAssistant_C['BCD All Enemy Color'] = function(self, Color, Alpha) end
---@param FX UNiagaraSystem
---@param SocketName FName
---@param UseLocationOnly boolean
---@param SENo int32
ABP_BtlEventAssistant_C['BCD All Enemy Play Effect'] = function(self, FX, SocketName, UseLocationOnly, SENo) end
---@param Visible boolean
---@param WithDeadChara boolean
ABP_BtlEventAssistant_C['BCD All Enemy Visible'] = function(self, Visible, WithDeadChara) end
---@param NewRotation FRotator
ABP_BtlEventAssistant_C['BCD All Enemy Rotate'] = function(self, NewRotation) end
---@param FX UNiagaraSystem
---@param SocketName FName
---@param UseLocationOnly boolean
---@param SpawnFrontPosition boolean
---@param SENo int32
ABP_BtlEventAssistant_C['BCD Targets Play Effect'] = function(self, FX, SocketName, UseLocationOnly, SpawnFrontPosition, SENo) end
ABP_BtlEventAssistant_C['BCD All Enemy Summon For Serial Encount'] = function(self, ) end
---@param Visible boolean
---@param WithDeadChara boolean
ABP_BtlEventAssistant_C['BCD Target Enemy Visible'] = function(self, Visible, WithDeadChara) end
ABP_BtlEventAssistant_C['BCD Target Enemy Set Stencil'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Target Enemy Reset Stencil'] = function(self, ) end
---@param Time float
function ABP_BtlEventAssistant_C:BCD_FadeOut(Time) end
---@param Time float
function ABP_BtlEventAssistant_C:BCD_FadeIn(Time) end
---@param Type EBtlFadeType
---@param Frame int32
ABP_BtlEventAssistant_C['BCD FadeOUT Wipe'] = function(self, Type, Frame) end
---@param Type EBtlFadeType
---@param Frame int32
ABP_BtlEventAssistant_C['BCD FadeIN Wipe'] = function(self, Type, Frame) end
ABP_BtlEventAssistant_C['BCD Show WBP'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Close WBP'] = function(self, ) end
ABP_BtlEventAssistant_C['BCD Play Video'] = function(self, ) end
---@param InterpTime float
---@param Radium_Ration float
---@param Height_Ration float
---@param Rotate_Degree float
---@param TargetType EBtlEventAreaType
---@param Socket_Name FName
---@param BlendType EBtlCutsceneBlendType
---@param BlendExp float
---@param Pan float
---@param Roll float
---@param UseCommonCylinder boolean
ABP_BtlEventAssistant_C['BCD Set Chara Camera'] = function(self, InterpTime, Radium_Ration, Height_Ration, Rotate_Degree, TargetType, Socket_Name, BlendType, BlendExp, Pan, Roll, UseCommonCylinder) end
---@param InterpTime float
---@param X float
---@param Y float
---@param Z float
---@param Roll float
---@param Pitch float
---@param Yaw float
---@param BlendType EBtlCutsceneBlendType
---@param BlendExp float
ABP_BtlEventAssistant_C['BCD Set Camera'] = function(self, InterpTime, X, Y, Z, Roll, Pitch, Yaw, BlendType, BlendExp) end
---@param Niagara UNiagaraSystem
---@param Transform FTransform
---@param EffectName FString
---@param life_Seconds float
---@param CueId int32
ABP_BtlEventAssistant_C['BCD Effect World'] = function(self, Niagara, Transform, EffectName, life_Seconds, CueId) end
---@param Niagara UNiagaraSystem
---@param Area_Type EBtlEventAreaType
---@param EffectName FString
---@param life_Seconds float
ABP_BtlEventAssistant_C['BCD Effect At Chara'] = function(self, Niagara, Area_Type, EffectName, life_Seconds) end
---@param EffectName FString
ABP_BtlEventAssistant_C['BCD Stop Effect'] = function(self, EffectName) end
function ABP_BtlEventAssistant_C:CustomEvent_0() end
function ABP_BtlEventAssistant_C:CustomEvent_1() end
---@param Niagara UNiagaraSystem
---@param Socket_Name FName
---@param Effect_Name FString
---@param Area_Type EBtlEventAreaType
ABP_BtlEventAssistant_C['BCD Effect At Socket'] = function(self, Niagara, Socket_Name, Effect_Name, Area_Type) end
---@param Visible boolean
ABP_BtlEventAssistant_C['BCD Set Vislble Persona Spawn Effect'] = function(self, Visible) end
---@param Transform FTransform
ABP_BtlEventAssistant_C['BCD Set Transform Persona Spawn Effect'] = function(self, Transform) end
---@param NewParam EBtlEventAreaType
ABP_BtlEventAssistant_C['BCD Set Transform at Character Persona Spawn Effect'] = function(self, NewParam) end
---@param Niagara UNiagaraSystem
---@param Socket_Name FName
---@param Effect_Name FString
---@param Area_Type EBtlEventAreaType
ABP_BtlEventAssistant_C['BCD Effect At Weapon Socket'] = function(self, Niagara, Socket_Name, Effect_Name, Area_Type) end
---@param Niagara UNiagaraSystem
---@param SocketName FName
---@param EffectName FString
---@param Area EBtlEventAreaType
---@param trans FTransform
---@param NotAttach boolean
ABP_BtlEventAssistant_C['BCD Effect At Socket Transform'] = function(self, Niagara, SocketName, EffectName, Area, trans, NotAttach) end
---@param Niagara UNiagaraSystem
---@param Socket_Name FName
---@param Effect_Name FString
---@param Area_Type EBtlEventAreaType
---@param trans FTransform
---@param NotAttach boolean
ABP_BtlEventAssistant_C['BCD Effect At Weapon Socket Transfrom'] = function(self, Niagara, Socket_Name, Effect_Name, Area_Type, trans, NotAttach) end
---@param Niagara UNiagaraSystem
---@param Area_Type EBtlEventAreaType
---@param EffectName FString
---@param life_Seconds float
---@param trans FTransform
ABP_BtlEventAssistant_C['BCD Effect At Chara Transform'] = function(self, Niagara, Area_Type, EffectName, life_Seconds, trans) end
---@param Niagara UNiagaraSystem
---@param Socket_Name FName
---@param Effect_Name FString
---@param Area_Type EBtlEventAreaType
---@param trans FTransform
---@param NotAttach boolean
---@param ReferenceRotate boolean
---@param Index int32
ABP_BtlEventAssistant_C['BCD Play Effect At Persona Socket'] = function(self, Niagara, Socket_Name, Effect_Name, Area_Type, trans, NotAttach, ReferenceRotate, Index) end
---@param EffectName FString
ABP_BtlEventAssistant_C['BCD Effect Detach'] = function(self, EffectName) end
ABP_BtlEventAssistant_C['BCD Hide Others'] = function(self, ) end
---@param Area EBtlEventAreaType
---@param Visible boolean
---@param Index int32
ABP_BtlEventAssistant_C['BCD Set Persona Visible'] = function(self, Area, Visible, Index) end
---@param Area EBtlEventAreaType
---@param Transform FTransform
---@param WorldTransform boolean
---@param Index int32
ABP_BtlEventAssistant_C['BCD Persona Set Location'] = function(self, Area, Transform, WorldTransform, Index) end
---@param Area EBtlEventAreaType
---@param Type EBtlPersonaAnimationType
---@param UseOriginalBlend boolean
---@param Index int32
ABP_BtlEventAssistant_C['BCD Play Persona Animation'] = function(self, Area, Type, UseOriginalBlend, Index) end
---@param Time float
---@param Type EBtlShakeType
ABP_BtlEventAssistant_C['BCD Shake Start'] = function(self, Time, Type) end
---@param Area EBtlEventAreaType
---@param Type EBtlPersonaSceneAnimationType
---@param UseOriginalBlend boolean
---@param Index int32
ABP_BtlEventAssistant_C['BCD Play Persona Scene Animation'] = function(self, Area, Type, UseOriginalBlend, Index) end
---@param ID int32
ABP_BtlEventAssistant_C['BCD Play SE'] = function(self, ID) end
ABP_BtlEventAssistant_C['BCD Play Allout SE'] = function(self, ) end
---@param Visible boolean
ABP_BtlEventAssistant_C['BCD Set BG Visible'] = function(self, Visible) end
ABP_BtlEventAssistant_C['BCD Result Start'] = function(self, ) end
---@param Visible boolean
ABP_BtlEventAssistant_C['BCD Set Visible Other Scene Chara'] = function(self, Visible) end
---@param Visible boolean
---@param WithDeadChara boolean
ABP_BtlEventAssistant_C['BCD All Player Visible'] = function(self, Visible, WithDeadChara) end
---@param Area EBtlEventAreaType
ABP_BtlEventAssistant_C['BCD Adjust Chara Root To'] = function(self, Area) end
ABP_BtlEventAssistant_C['BCD Relocation Player Only'] = function(self, ) end
---@param Visible boolean
ABP_BtlEventAssistant_C['BCD Set Targets Visible'] = function(self, Visible) end
---@param NewRotation FRotator
ABP_BtlEventAssistant_C['BCD All Player Rotate'] = function(self, NewRotation) end
function ABP_BtlEventAssistant_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlEventAssistant_C:ReceiveTick(DeltaSeconds) end
---@param LevelSequence TSoftObjectPtr<ULevelSequence>
ABP_BtlEventAssistant_C['On Load Seq Async'] = function(self, LevelSequence) end
ABP_BtlEventAssistant_C['On Play Event'] = function(self, ) end
---@param Invoke ABP_BtlCharacterBase_C
---@param Target ABP_BtlCharacterBase_C
ABP_BtlEventAssistant_C['On Play Event With Main Chara'] = function(self, Invoke, Target) end
ABP_BtlEventAssistant_C['On Has Finished Event'] = function(self, ) end
---@param Performer ABP_BtlPerformer_C
ABP_BtlEventAssistant_C['BCD Character Animation'] = function(self, Performer) end
ABP_BtlEventAssistant_C['On Prepare Play Video'] = function(self, ) end
ABP_BtlEventAssistant_C['On Has Finished Called From Controller'] = function(self, ) end
---@param EntryPoint int32
function ABP_BtlEventAssistant_C:ExecuteUbergraph_BP_BtlEventAssistant(EntryPoint) end
ABP_BtlEventAssistant_C['On Request Summon Enemies For Serial Encount__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On Request Result Start__DelegateSignature'] = function(self, ) end
function ABP_BtlEventAssistant_C:HasFinisedShiftLoad__DelegateSignature() end
ABP_BtlEventAssistant_C['On Request Shuffle Time Start__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On End Open MediaPlayer__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On End Prepare Play Video__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On End FadeOut__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On End FadeIn__DelegateSignature'] = function(self, ) end
ABP_BtlEventAssistant_C['On End Event__DelegateSignature'] = function(self, ) end
function ABP_BtlEventAssistant_C:HasLoadedEvent__DelegateSignature() end


