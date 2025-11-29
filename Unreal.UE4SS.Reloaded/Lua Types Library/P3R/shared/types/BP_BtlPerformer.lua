---@meta

---@class ABP_BtlPerformer_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cylinder UStaticMeshComponent
---@field Arrow UArrowComponent
---@field DefaultSceneRoot USceneComponent
---@field Performer ABP_BtlCharacterBase_C
---@field ['Event Assistant'] ABP_BtlEventAssistant_C
---@field BindTransform boolean
---@field TimeDilation float
local ABP_BtlPerformer_C = {}

---@param Result boolean
function ABP_BtlPerformer_C:IsEnemyTeammates(Result) end
---@param DeltaTime float
function ABP_BtlPerformer_C:UpdateEachTick(DeltaTime) end
function ABP_BtlPerformer_C:Clear() end
---@param rato float
---@param UseCommonCylinder boolean
---@param Output FTransform
function ABP_BtlPerformer_C:GetCylinderHight(rato, UseCommonCylinder, Output) end
---@param SocketName FName
---@param OwnerTransform FTransform
---@param UseCommonCylinder boolean
---@param Output FTransform
function ABP_BtlPerformer_C:GetSocketTransform(SocketName, OwnerTransform, UseCommonCylinder, Output) end
function ABP_BtlPerformer_C:SyncLocation() end
---@param Camera FTransform
---@param Target FTransform
---@param Rotator FRotator
function ABP_BtlPerformer_C:CalcLookAtRotate(Camera, Target, Rotator) end
---@param Radius_Ratio float
---@param Height_Ratio float
---@param Rotate_Degree float
---@param UseCommonCylinder boolean
---@param Return_Value FVector
function ABP_BtlPerformer_C:CalcCylinderLocation(Radius_Ratio, Height_Ratio, Rotate_Degree, UseCommonCylinder, Return_Value) end
function ABP_BtlPerformer_C:FinalizePerformer() end
---@param Transform FTransform
function ABP_BtlPerformer_C:GetPerformerTransform(Transform) end
---@param Character ABP_BtlCharacterBase_C
function ABP_BtlPerformer_C:SetCharacter(Character) end
---@param Character ABP_BtlCharacterBase_C
function ABP_BtlPerformer_C:GetCharacter(Character) end
---@param Character ABP_BtlCharacterBase_C
function ABP_BtlPerformer_C:SetupPerformer(Character) end
ABP_BtlPerformer_C['BCD Play Dead Voice'] = function(self, ) end
ABP_BtlPerformer_C['BCD Hide Hermit Charge Visible'] = function(self, ) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD NyxAvatar Play Feater Anim'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Fortune Fadein Flower Loop'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Fortune Fadeout Flower Loop'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Fortune Fadein'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Fortune Fadeout'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Strength Flower Fadeout'] = function(self, AnimTime) end
ABP_BtlPerformer_C['BCD NyxCore Request Hero Attack Sequence'] = function(self, ) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD HangedMan FadeIn Floating Effect'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD HangedMan FadeOut Floating Effect'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD Jin FadeOut Drug Loop Effect'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD NyxAvatar Fadeout Feather Effect'] = function(self, AnimTime) end
---@param AnimTime float
ABP_BtlPerformer_C['BCD NyxAvatar Fadeout Weapon Effect'] = function(self, AnimTime) end
---@param DamagePercent int32
ABP_BtlPerformer_C['BCD Affect Divided Damage'] = function(self, DamagePercent) end
ABP_BtlPerformer_C['BCD Affect All Damage'] = function(self, ) end
---@param HpRatio float
ABP_BtlPerformer_C['BCD Affect Recovery'] = function(self, HpRatio) end
---@param Interp_Time float
---@param Radius float
---@param Height_Ratio float
---@param Rotate_Degree float
---@param TargetType EBtlEventAreaType
---@param SocketName FName
ABP_BtlPerformer_C['BCD Camera cylinder'] = function(self, Interp_Time, Radius, Height_Ratio, Rotate_Degree, TargetType, SocketName) end
---@param DeltaSeconds float
function ABP_BtlPerformer_C:ReceiveTick(DeltaSeconds) end
---@param AnimId EBtlAnimationType
---@param NotPlayFaceAnim boolean
ABP_BtlPerformer_C['BCD Chara Animation'] = function(self, AnimId, NotPlayFaceAnim) end
---@param AnimId EBtlSceneAnimationType
---@param AnimID_Next EBtlSceneAnimationType
---@param IgnoreElizabeth boolean
ABP_BtlPerformer_C['BCD Chara Scene Animation'] = function(self, AnimId, AnimID_Next, IgnoreElizabeth) end
---@param trans FTransform
ABP_BtlPerformer_C['BCD Chara Set Pos'] = function(self, trans) end
---@param Bind boolean
ABP_BtlPerformer_C['BCD Bind To Mannequin'] = function(self, Bind) end
---@param Visible boolean
---@param ExceptPersona boolean
---@param KeepAnimation boolean
ABP_BtlPerformer_C['BCD Chara Set Visible'] = function(self, Visible, ExceptPersona, KeepAnimation) end
---@param Anim_ID EBtlAnimationType
---@param Blend float
---@param NotPlayFaceAnim boolean
ABP_BtlPerformer_C['BCD Chara Animation With Blend'] = function(self, Anim_ID, Blend, NotPlayFaceAnim) end
---@param Visible boolean
ABP_BtlPerformer_C['BCD Chara Weapon Visible'] = function(self, Visible) end
---@param Visible boolean
ABP_BtlPerformer_C['BCD Chara Gun Visible'] = function(self, Visible) end
---@param Anim_Sequence UAnimSequenceBase
ABP_BtlPerformer_C['BCD Chara Weapon Anim'] = function(self, Anim_Sequence) end
---@param Anim_ID EBtlAnimationType
---@param Anim_ID_Next EBtlAnimationType
ABP_BtlPerformer_C['BCD Chara Animation With Next'] = function(self, Anim_ID, Anim_ID_Next) end
ABP_BtlPerformer_C['BCD Set HomePosition'] = function(self, ) end
---@param Type EBtlSceneAnimationType
---@param BlendTime float
---@param IgnoreElizabeth boolean
---@param WithForceUpdate boolean
ABP_BtlPerformer_C['BCD Chara Scene Animation Blend'] = function(self, Type, BlendTime, IgnoreElizabeth, WithForceUpdate) end
---@param Type EAppCharFaceAnimID
---@param BlendIn float
---@param BlendOut float
---@param ForceNoBlink boolean
ABP_BtlPerformer_C['BCD Chara Face Anim'] = function(self, Type, BlendIn, BlendOut, ForceNoBlink) end
---@param Socket_Name FName
ABP_BtlPerformer_C['BCD Assign Attach Point '] = function(self, Socket_Name) end
---@param disable boolean
ABP_BtlPerformer_C['BCD Disable Face Anim Update With Body'] = function(self, disable) end
ABP_BtlPerformer_C['BCD Collect All Chara Point Lights'] = function(self, ) end
ABP_BtlPerformer_C['BCD Restore All Chara Point Lights'] = function(self, ) end
---@param Anim_ID EBtlAnimationType
---@param Blend float
---@param NotPlayFaceAnim boolean
ABP_BtlPerformer_C['BCD Elizabeth Animation With Blend'] = function(self, Anim_ID, Blend, NotPlayFaceAnim) end
---@param AnimId EBtlAnimationType
---@param NotPlayFaceAnim boolean
ABP_BtlPerformer_C['BCD Elizabeth Animation'] = function(self, AnimId, NotPlayFaceAnim) end
---@param EntryPoint int32
function ABP_BtlPerformer_C:ExecuteUbergraph_BP_BtlPerformer(EntryPoint) end


