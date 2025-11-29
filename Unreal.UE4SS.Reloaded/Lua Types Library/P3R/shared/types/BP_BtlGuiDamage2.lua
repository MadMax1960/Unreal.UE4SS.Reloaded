---@meta

---@class ABP_BtlGuiDamage2_C : ABP_BtlGuiBaseActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BtlGuiResources UBtlGuiResources
---@field BtlGuiDraw UBtlGuiDrawComponent
---@field AllAddTimeline_Color_2E67B61C41FE8C64368FEBB0B169BDB9 FLinearColor
---@field AllAddTimeline_Slide_2E67B61C41FE8C64368FEBB0B169BDB9 float
---@field AllAddTimeline_Alpha_2E67B61C41FE8C64368FEBB0B169BDB9 float
---@field AllAddTimeline__Direction_2E67B61C41FE8C64368FEBB0B169BDB9 ETimelineDirection::Type
---@field AllAddTimeline UTimelineComponent
---@field CriticalTimeline_param1_6DD4B9614DB3A225600EBEADFD1FC032 float
---@field CriticalTimeline__Direction_6DD4B9614DB3A225600EBEADFD1FC032 ETimelineDirection::Type
---@field CriticalTimeline UTimelineComponent
---@field BlockTimeline_ShakeRate_F039E0AD4A47CA05A39CD48B04FB2DFC float
---@field BlockTimeline__Direction_F039E0AD4A47CA05A39CD48B04FB2DFC ETimelineDirection::Type
---@field BlockTimeline UTimelineComponent
---@field MissTimeline_MissPos_D6A7DB784878763C9084208482FC6C01 float
---@field MissTimeline_MissAlpha_D6A7DB784878763C9084208482FC6C01 float
---@field MissTimeline__Direction_D6A7DB784878763C9084208482FC6C01 ETimelineDirection::Type
---@field MissTimeline UTimelineComponent
---@field ResistTimeline___Track_0_1ED1856F45E693F3E011BC87084421AC float
---@field ResistTimeline__Direction_1ED1856F45E693F3E011BC87084421AC ETimelineDirection::Type
---@field ResistTimeline UTimelineComponent
---@field WeakTimeline_param1_2D89FECD4644D67F453CD592F982E50D float
---@field WeakTimeline__Direction_2D89FECD4644D67F453CD592F982E50D ETimelineDirection::Type
---@field WeakTimeline UTimelineComponent
---@field rootTimeline___Track_0_02EAFDA642C79101A916D89D5D19B443 float
---@field rootTimeline__Direction_02EAFDA642C79101A916D89D5D19B443 ETimelineDirection::Type
---@field rootTimeline UTimelineComponent
---@field Chara ABP_BtlCharacterBase_C
---@field DamageNumList TArray<int32>
---@field Damage int32
---@field Type int32
---@field Pos FVector2D
---@field Width float
---@field Height float
---@field Scale float
---@field ['Item Color'] FColor
---@field ['shadow Color'] FColor
---@field ['Our ItemList'] TArray<UBtlGuiDrawObjectSprite>
---@field ['Shadow ItemList'] TArray<UBtlGuiDrawObjectSprite>
---@field ['Array Index'] int32
---@field OnEndDamageAnim FBP_BtlGuiDamage2_COnEndDamageAnim
---@field IsLockY boolean
---@field ['Array Element'] int32
---@field sprOffset int32
---@field shadowSprOffset int32
---@field shadorPosOffset FVector2D
---@field isOne boolean
---@field CenterPosWork FVector2D
---@field shadorPosList TArray<FVector2D>
---@field PosList TArray<FVector2D>
---@field VectorOffset FVector2D
---@field timerList TArray<float>
---@field workTime float
---@field Curve UCurveFloat
---@field Alpha float
---@field typeWork int32
---@field TextItemList TArray<UBtlGuiDrawObjectCore>
---@field textAlpha float
---@field TextPosList TArray<FVector2D>
---@field textParam1 float
---@field textParam2 float
---@field textParam3 float
---@field WeakTimeRate TArray<float>
---@field WeakLineTimeRate TArray<float>
---@field BoolParam boolean
---@field CursorPosWork FVector2D
---@field TextPosList2 TArray<FVector2D>
---@field TextPosList3 TArray<FVector2D>
---@field WorldToScreenFlag boolean
---@field IsEnemy boolean
---@field PosWork FVector2D
---@field ColorWork FColor
---@field FripFlopFlag boolean
---@field DebugTextItemList TArray<UBtlGuiDrawObjectCore>
---@field DebugTextType int32
---@field DebugTextPos FVector2D
local ABP_BtlGuiDamage2_C = {}

---@param Type int32
function ABP_BtlGuiDamage2_C:UpdateDebugText(Type) end
---@param Type int32
function ABP_BtlGuiDamage2_C:CreateDebugText(Type) end
---@param OutAnim boolean
function ABP_BtlGuiDamage2_C:SetCriticalLineTime(OutAnim) end
---@param OutAnim boolean
function ABP_BtlGuiDamage2_C:SetCriticalTime(OutAnim) end
---@param OutAnim boolean
function ABP_BtlGuiDamage2_C:SetWeakLineTime(OutAnim) end
---@param OutAnim boolean
function ABP_BtlGuiDamage2_C:SetWeakTime(OutAnim) end
---@param UseTempParam boolean
---@param Damage int32
---@param Type int32
---@param halfWidth float
---@param Scale float
---@param FlipFlopFlag boolean
function ABP_BtlGuiDamage2_C:GetNumberHalfWidth(UseTempParam, Damage, Type, halfWidth, Scale, FlipFlopFlag) end
---@param Index int32
---@param addPos FVector2D
---@param Alpha float
ABP_BtlGuiDamage2_C['Update Add PositionAlpha'] = function(self, Index, addPos, Alpha) end
---@param Index int32
---@param Visible boolean
function ABP_BtlGuiDamage2_C:UpdateVisible(Index, Visible) end
function ABP_BtlGuiDamage2_C:rootTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:rootTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:WeakTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:WeakTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:WeakTimeline__OutAnim__EventFunc() end
function ABP_BtlGuiDamage2_C:ResistTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:ResistTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:MissTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:MissTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:BlockTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:BlockTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:CriticalTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:CriticalTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:CriticalTimeline__OutAnim__EventFunc() end
function ABP_BtlGuiDamage2_C:AllAddTimeline__FinishedFunc() end
function ABP_BtlGuiDamage2_C:AllAddTimeline__UpdateFunc() end
function ABP_BtlGuiDamage2_C:TimelineEnd() end
function ABP_BtlGuiDamage2_C:StartAllTimeline() end
---@param Chara ABP_BtlCharacterBase_C
---@param Damage int32
---@param Type int32
---@param Pos FVector2D
---@param FripFlop boolean
function ABP_BtlGuiDamage2_C:Start(Chara, Damage, Type, Pos, FripFlop) end
---@param DeltaTime float
function ABP_BtlGuiDamage2_C:GuiActorUpdate(DeltaTime) end
function ABP_BtlGuiDamage2_C:GuiActorBeginDestroy() end
function ABP_BtlGuiDamage2_C:Remove() end
---@param EntryPoint int32
function ABP_BtlGuiDamage2_C:ExecuteUbergraph_BP_BtlGuiDamage2(EntryPoint) end
---@param NewParam ABP_BtlCharacterBase_C
function ABP_BtlGuiDamage2_C:OnEndDamageAnim__DelegateSignature(NewParam) end


