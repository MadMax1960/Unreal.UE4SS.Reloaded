---@meta

---@class ABP_UIConfiguration_C : AUIConfigurationDraw
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AppCalculater UAppCalculaterComponent
---@field DefaultSceneRoot USceneComponent
---@field BGMaterial TSoftObjectPtr<UMaterialInterface>
---@field BGMaterialInstDy UMaterialInstanceDynamic
---@field BaseSprAssetObject UObject
---@field BaseSprAssetObjectAstrea UObject
---@field BasePlgAssetObject UObject
---@field ['白'] FColor
---@field ['黒'] FColor
---@field ['灰色'] FColor
---@field ['光反射素材1'] FColor
---@field ['光反射素材2'] FColor
---@field EqualizerSettings TArray<FFEqualizerSettings>
---@field ['リスト詳細起点[A]'] FVector2D
---@field ['リスト起点[B]'] FVector2D
---@field ['[001]リスト詳細テキスト座標'] FVector2D
---@field ['[002]info座標'] FVector2D
---@field ['[003]項目名座標'] FVector2D
---@field ['操作項目起点[C]'] FVector2D
---@field ['ONテキスト座標'] FVector2D
---@field ['OFFテキスト座標'] FVector2D
---@field ['ONカーソル座標'] FVector2D
---@field ['OFFカーソル座標'] FVector2D
---@field ['ONOFFカーソル座標'] FVector2D
---@field ['操作項目下地座標'] FVector2D
---@field ['ゲージ先端Min座標'] FVector2D
---@field ['ゲージ先端Max座標'] FVector2D
---@field ['ゲージ座標'] FVector2D
---@field ['ゲージ下地座標'] FVector2D
---@field ['矢印左座標'] FVector2D
---@field ['矢印右座標'] FVector2D
---@field ['項目内システムフォント座標'] FVector2D
---@field ['デザインフォント座標'] FVector2D
---@field ['スクロールバー座標'] FVector2D
---@field ['スクロールバー下地座標'] FVector2D
---@field ['カーソル座標'] FVector2D
---@field ['カーソル下地座標'] FVector2D
---@field ['リスト間隔'] float
---@field ['スクショ起点[D]'] FVector2D
---@field ['スクショ座標'] FVector2D
---@field ['スクショ下地座標'] FVector2D
---@field ['スクショ下地ずらし座標'] FVector2D
---@field ['背景タイトルロゴ起点[E]'] FVector2D
---@field ['[021]白板座標'] FVector2D
---@field ['CONFIG座標'] FVector2D
---@field ['青下地座標'] FVector2D
---@field ['画面ヘルプ起点[F]'] FVector2D
---@field ['コンフィグヘルプ文字座標'] FVector2D
---@field ['装飾文字座標'] FVector2D
---@field ['装飾ライン座標'] FVector2D
---@field ['リスト起点[G]'] FVector2D
---@field ['カーソル下地赤'] FColor
---@field BrightnessPreview TSoftObjectPtr<UMaterialInterface>
---@field BrightnessPreviewInstDy UMaterialInstanceDynamic
---@field ['BGM座標'] FVector2D
---@field ['SET座標'] FVector2D
---@field ['曲名座標'] FVector2D
---@field ['曲名表示座標'] FVector2D
---@field ['曲名表示ずらし座標'] FVector2D
---@field ['バージョンアイコン'] FVector2D
---@field ['カーソル座標_B'] FVector2D
---@field ['カーソルずらし座標_B'] FVector2D
---@field ['PLAYLIST座標'] FVector2D
---@field ['設定曲起点[H]'] FVector2D
---@field ['装飾オフセット値'] FVector2D
---@field ['白板座標_B'] FVector2D
---@field ['視聴中アイコン座標'] FVector2D
---@field ['視聴中アイコンずらし座標'] FVector2D
---@field ['設定中アイコン座標'] FVector2D
---@field ['三角下地座標'] FVector2D
---@field ['青下地座標_B'] FVector2D
---@field ConfEqualizer01 TSoftObjectPtr<UMaterialInterface>
---@field ConfEqualizer01InstDy UMaterialInstanceDynamic
---@field ConfEqualizer02 TSoftObjectPtr<UMaterialInterface>
---@field ConfEqualizer02InstDy UMaterialInstanceDynamic
---@field ConfEqualizer03 TSoftObjectPtr<UMaterialInterface>
---@field ConfEqualizer03InstDy UMaterialInstanceDynamic
---@field ['イコライザー1座標'] FVector2D
---@field ['イコライザー2座標'] FVector2D
---@field ['イコライザー3座標'] FVector2D
---@field BGMonoMaterial TSoftObjectPtr<UMaterialInterface>
---@field BGMonoMaterialDy UMaterialInstanceDynamic
---@field Angle float
---@field LinearCurves UCurveFloat
---@field ['コンフィグIN全体フレーム'] int32
---@field ConfAnimFrame float
---@field IsInAnimFinished boolean
---@field ['[インアニメ]タイトルロゴ/白板'] FConfigAnimParams
---@field ['[インアニメ]下地青板'] FConfigAnimParams
---@field ['[インアニメ]詳細/スクロールバー'] FConfigAnimParams
---@field ['[インアニメ]コンフィグリスト'] TArray<FConfigAnimParams>
---@field ['[インアニメ]カーソルリストずらし'] FConfigAnimParams
---@field ['タイトルロゴ/白板オフセット'] FVector2D
---@field DecelerateCurves UCurveFloat
---@field ['下地青板オフセット'] FVector2D
---@field ['詳細/スクロールバーオフセット'] FVector2D
---@field ['詳細/スクロールバーフェード'] float
---@field ['リストオフセット'] TArray<FVector2D>
---@field ['リストフェード'] TArray<float>
---@field ['カーソルずらしオフセット'] FVector2D
---@field ['カーソルずらしフェード'] float
---@field ['[アニメ]カーソルずらし移動'] FConfigAnimParams
---@field IsInGrowFinished boolean
---@field ['[アニメ]光彩フェード'] FConfigAnimParams
---@field ['[アニメ]光彩移動'] FConfigAnimParams
---@field ['[アニメ]光彩明滅'] FConfigAnimParams
---@field ['光彩移動範囲'] FVector2D
---@field GrowInAnimFrame float
---@field ['光彩フェード'] float
---@field ['光彩移動オフセット'] FVector2D
---@field GrowMoveAnimFrame float
---@field BoundCurves UCurveFloat
---@field GrowFlickeringAnimFrame float
---@field ['[アニメ]フラグ切り替え'] FConfigAnimParams
---@field ['[アニメ]右矢印'] FConfigAnimParams
---@field ['[アニメ]左矢印'] FConfigAnimParams
---@field CursorMoveAnimFrame float
---@field ['カーソル下地ずらし座標'] FVector2D
---@field FlagChangeAnimFrame float
---@field ['フラグカーソル座標'] FVector2D
---@field LArrowInAnimFrame float
---@field RArrowInAnimFrame float
---@field ['左矢印オフセット'] FVector2D
---@field ['右矢印オフセット'] FVector2D
---@field ['[アニメ]明るさ調整座標 イン'] FConfigAnimParams
---@field ['[アニメ]明るさ調整フェード/回転'] FConfigAnimParams
---@field ['[アニメ]明るさ調整座標 アウト'] FConfigAnimParams
---@field BrightnessInAnimFrame float
---@field ['明るさ調整座標オフセット'] FVector2D
---@field ['明るさ調整角度オフセット'] float
---@field ['明るさ調整フェード'] float
---@field BrightnessOutAnimFrame float
---@field DeltaTime float
---@field ['BGMIN全体フレーム'] int32
---@field BgmAnimFrame float
---@field IsBgmInAnimFinished boolean
---@field ['[C2B]コンフィグ用リスト/詳細/スクロールバー'] FConfigAnimParams
---@field ['[C2B]BGM用タイトルロゴ/白板'] FConfigAnimParams
---@field ['ロゴフェード'] float
---@field ['ConfIN全体フレーム'] int32
---@field ConfInAnimFrame float
---@field IsConfInAnimFinished boolean
---@field ['[B2C]コンフィグ用リスト/詳細/スクロールバー'] FConfigAnimParams
---@field ['[C2B]BGM用下地青板'] FConfigAnimParams
---@field ['[C2B]BGM用主人公影'] FConfigAnimParams
---@field ['主人公影オフセット'] FVector2D
---@field ['[C2B]BGM用光彩'] FConfigAnimParams
---@field ['[C2B]BGM用スクロールバー'] FConfigAnimParams
---@field ['[C2B]BGM用リスト'] TArray<FConfigAnimParams>
---@field ['[BGM]リストオフセット'] TArray<FVector2D>
---@field ['[BGM]リストフェード'] TArray<float>
---@field ['スクロールバーオフセット'] FVector2D
---@field ['スクロールバーフェード'] float
---@field ['[039]スクロールバー座標'] FVector2D
---@field ['[C2B]BGM用設定曲'] FConfigAnimParams
---@field ['設定曲オフセット'] FVector2D
---@field ['設定曲フェード'] float
---@field ['[C2B]BGM用カーソルずらし'] FConfigAnimParams
---@field ['SET全体フレーム'] int32
---@field ['[インアニメ]SET'] FConfigAnimParams
---@field ['[アウトアニメ]SET'] FConfigAnimParams
---@field IsSetAnimFinished boolean
---@field SetAnimFrame float
---@field ['SET IN オフセット'] FVector2D
---@field ['SET IN フェード'] float
---@field ['SET OUT フェード'] float
---@field AnimSetIndex int32
---@field IsPlayingAnimFinished boolean
---@field ['[インアニメ]視聴中'] FConfigAnimParams
---@field ['[アウトアニメ]視聴中'] FConfigAnimParams
---@field ['[アニメ]視聴'] FConfigAnimParams
---@field PlayingInAnimFrame float
---@field ['音符 OUT フェード'] float
---@field ['音符 IN フェード'] float
---@field ['音符オフセット'] FVector2D
---@field AnimPlayingIndex int32
---@field ['音符 角度'] float
---@field ['音符 スケール'] float
---@field PlayingAnimFrame float
---@field ['[インアニメ]イコライザー'] FConfigAnimParams
---@field ['[アウトアニメ]イコライザー'] FConfigAnimParams
---@field ['[アニメ]イコライザー'] FConfigAnimParams
---@field EqualizerAnimFrame float
---@field IsEqualizerInAnimFinished boolean
---@field IsEqualizerOutAnimFinished boolean
---@field IsEqualizerChangeAnimFinished boolean
---@field ['イコライザー フェード'] float
---@field ['イコライザー Speed'] float
---@field ['イコライザー Color'] float
---@field ['[B2C]コンフィグ用タイトルロゴ/白板'] FConfigAnimParams
---@field ['[B2C]コンフィグ用下地青板'] FConfigAnimParams
---@field ['[B2C]コンフィグ用主人公影'] FConfigAnimParams
---@field ['[B2C]コンフィグ用光彩'] FConfigAnimParams
---@field ['[B2C]コンフィグ用カーソルずらし'] FConfigAnimParams
---@field ['[B2C]BGM用スクロールバー'] FConfigAnimParams
---@field ['[B2C]BGM用リスト'] FConfigAnimParams
---@field ['[B2C]BGM用設定曲'] FConfigAnimParams
---@field ['コンフィグOUT全体フレーム'] int32
---@field ConfOutAnimFrame float
---@field IsOutAnimFinished boolean
---@field ['光彩/コンフィグ 座標'] FVector2D
---@field ['光彩/BGM 座標'] FVector2D
---@field CampCharaRT int32
---@field BgRenderTextre UTextureRenderTarget2D
---@field BrightnessPow float
---@field ['グラデA座標'] FVector2D
---@field ['グラデB座標'] FVector2D
---@field UimAsset TSoftObjectPtr<UObject>
---@field UimFrame float
---@field RenderMat TSoftObjectPtr<UMaterialInterface>
---@field RenderMatDy UMaterialInstanceDynamic
---@field ['Calculater List'] FAppCalculaterComponentWork
---@field ['In Color B'] uint8
---@field ['In Color G'] uint8
---@field ['In Color R'] uint8
---@field ['Offset光彩座標'] FVector2D
---@field ['光彩スケール'] float
---@field ['光彩座標'] FVector2D
---@field ['Offset光彩スケール'] float
---@field ['光彩Timer'] float
---@field ['In BGMMove Frame'] int32
---@field ['光彩テストスケール'] float
---@field ['In Move FrameScale'] int32
---@field BGMAlphaWork FAppCalculaterComponentWork
---@field ['光彩AlphaFrame'] int32
---@field ['Next Wait Alpha Frame'] int32
---@field ['Next Alpha Move Frame'] int32
---@field AlphaMoveFrame int32
---@field ['Dst Alpha Value'] float
---@field ['画面ヘルプオフセット'] FVector2D
---@field ['画面ヘルプアルファ'] FColor
---@field ['[インアニメ]画面ヘルプずらし'] FConfigAnimParams
---@field ['Animated Value'] float
---@field ['InHelpWait Frame'] int32
---@field ConfAnimHelpFrame float
---@field ['画面ヘルプアルファ_0'] FColor
---@field IsHelpDraw boolean
---@field ['Plus光彩Ｐｏｓ'] FVector2D
---@field ConfigMovePlusPos FVector2D
---@field BGMMovePlusPos FVector2D
---@field InBGMPlusOffsetFrame int32
---@field InBGMOffsetFrame int32
---@field InConfigOffsetFrame int32
---@field IsDrawInSet boolean
---@field OffsetIndex int32
---@field ['New Local Var 4'] float
---@field IsChangeAnimFinished boolean
---@field ['[インアニメ]コンフィグ詳細/スクロールバー'] FConfigAnimParams
---@field BrightnessPreviewAstrea TSoftObjectPtr<UMaterialInterface>
---@field BrightnessPreviewInstDyAstrea UMaterialInstanceDynamic
---@field BaseSprAssetObjectEx UObject
local ABP_UIConfiguration_C = {}

---@param SprData USprAsset
function ABP_UIConfiguration_C:GetSprDataEx(SprData) end
---@param defaultSprId int32
---@param CalcSprId int32
---@param IsChangeSprId boolean
function ABP_UIConfiguration_C:GetDifficultSprId(defaultSprId, CalcSprId, IsChangeSprId) end
---@param SprData USprAsset
function ABP_UIConfiguration_C:GetSprDataAstrea(SprData) end
---@param DeltaTime float
---@return boolean
function ABP_UIConfiguration_C:StateDraw_UpdateOnlyCursor(DeltaTime) end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
function ABP_UIConfiguration_C:ListSelectDraw(DrawConfigParam, ListIndex) end
function ABP_UIConfiguration_C:ConfigChangeAnimTask() end
---@return boolean
function ABP_UIConfiguration_C:Start_MenuChangeAnim() end
---@param A int32
---@param A2 int32
---@param OutParam boolean
function ABP_UIConfiguration_C:IsAbsBGMIconMove(A, A2, OutParam) end
---@param NewParam int32
---@param NewParam1 int32
---@return float
function ABP_UIConfiguration_C:SetOffsetBGMSetIcon(NewParam, NewParam1) end
---@param B FVector2D
---@param A int32
---@param X float
---@param Y float
ABP_UIConfiguration_C['Get Bgm List Pos_SetIcon'] = function(self, B, A, X, Y) end
function ABP_UIConfiguration_C:SetBGMScaleLocation() end
---@return boolean
function ABP_UIConfiguration_C:StateBGMDraw_In() end
---@param NewParam FColor
function ABP_UIConfiguration_C:DrawConfigLogo(NewParam) end
---@param NewParam FColor
function ABP_UIConfiguration_C:DrawBGMLogo(NewParam) end
---@param NewParam boolean
function ABP_UIConfiguration_C:IsPlayBGMNow(NewParam) end
function ABP_UIConfiguration_C:IsDrawEaualizer() end
function ABP_UIConfiguration_C:DrawPlayList() end
ABP_UIConfiguration_C['Draw Glow'] = function(self, ) end
---@param InColor FColor
---@param OutColor FColor
function ABP_UIConfiguration_C:ColorPow(InColor, OutColor) end
ABP_UIConfiguration_C['Wipe Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Playing Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Set Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Bgm to Conf Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Conf to Bgm Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Brightness Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Value Change Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Get Cursor Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Grow Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['Draw Scroll Bar BGM'] = function(self, ) end
ABP_UIConfiguration_C['Equalizer Anim Task'] = function(self, ) end
ABP_UIConfiguration_C['In Anim Task'] = function(self, ) end
---@param BasePos FVector2D
---@param inW float
---@param inH float
---@param X float
---@param Y float
---@param W float
---@param H float
function ABP_UIConfiguration_C:GetEqualizerPosParam(BasePos, inW, inH, X, Y, W, H) end
---@param Anim_Time float
---@param Anim_Param_Data FConfigAnimParams
---@param Curve UCurveFloat
---@param IsNotUseEndParam boolean
---@param AnimatedPos FVector2D
---@param AnimatedColor FColor
---@param AnimatedAngle float
---@param AnimatedValue float
function ABP_UIConfiguration_C:GetAnimatedParam(Anim_Time, Anim_Param_Data, Curve, IsNotUseEndParam, AnimatedPos, AnimatedColor, AnimatedAngle, AnimatedValue) end
ABP_UIConfiguration_C['Draw Equalizer'] = function(self, ) end
ABP_UIConfiguration_C['Draw Hero Cap'] = function(self, ) end
---@param B FVector2D
---@param A int32
---@param X float
---@param Y float
ABP_UIConfiguration_C['Get Bgm List Pos'] = function(self, B, A, X, Y) end
---@param BgmId int32
---@param IconType int32
---@param SpeedType float
---@param ColorType float
---@param IsTextureEx boolean
ABP_UIConfiguration_C['Get Bgm Settings'] = function(self, BgmId, IconType, SpeedType, ColorType, IsTextureEx) end
ABP_UIConfiguration_C['Draw Cursor_BGM'] = function(self, ) end
ABP_UIConfiguration_C['Draw Brightness Preview'] = function(self, ) end
function ABP_UIConfiguration_C:DrawScrollBar() end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
ABP_UIConfiguration_C['BGM Select Draw'] = function(self, DrawConfigParam, ListIndex) end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
ABP_UIConfiguration_C['Diff Select Draw'] = function(self, DrawConfigParam, ListIndex) end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
ABP_UIConfiguration_C['Lang Select Draw'] = function(self, DrawConfigParam, ListIndex) end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
ABP_UIConfiguration_C['Flag Select Draw'] = function(self, DrawConfigParam, ListIndex) end
---@param DrawConfigParam FDrawConfigParam
---@param ListIndex int32
ABP_UIConfiguration_C['Value Select Draw'] = function(self, DrawConfigParam, ListIndex) end
---@param BasePos FVector2D
---@param ListIndex int32
---@param outPos FVector2D
ABP_UIConfiguration_C['Get List Pos'] = function(self, BasePos, ListIndex, outPos) end
ABP_UIConfiguration_C['Draw Cursor'] = function(self, ) end
---@param inPlayingIndex int32
---@return boolean
function ABP_UIConfiguration_C:On_PlayingIndexChanged(inPlayingIndex) end
---@param inMenueID int32
---@param inFlag boolean
---@param inValue int32
---@return boolean
function ABP_UIConfiguration_C:On_ValueChanged(inMenueID, inFlag, inValue) end
---@param inSetIndex int32
---@return boolean
function ABP_UIConfiguration_C:On_BgmSetIndexChanged(inSetIndex) end
---@param inCursorIndex int32
---@param inListTopIndex int32
---@return boolean
function ABP_UIConfiguration_C:On_CursorIndexChanged_BGM(inCursorIndex, inListTopIndex) end
---@param inCursorIndex int32
---@param inListTopIndex int32
---@return boolean
function ABP_UIConfiguration_C:On_CursorIndexChanged(inCursorIndex, inListTopIndex) end
---@return boolean
function ABP_UIConfiguration_C:Start_CloseAnim() end
---@return boolean
function ABP_UIConfiguration_C:Start_ToConfAnim() end
---@return boolean
function ABP_UIConfiguration_C:Start_ToBGMAnim() end
---@return boolean
function ABP_UIConfiguration_C:Start_InAnim() end
---@param inMenueID int32
---@param InListIndex int32
---@return boolean
function ABP_UIConfiguration_C:StateDraw_ListItem(inMenueID, InListIndex) end
---@param outSprData UPlgAsset
function ABP_UIConfiguration_C:GetPlgData(outSprData) end
---@param SprData USprAsset
function ABP_UIConfiguration_C:GetSprData(SprData) end
---@param InColor FColor
---@param B float
---@param OutColor FColor
function ABP_UIConfiguration_C:GetAlphaRateColor(InColor, B, OutColor) end
---@return boolean
function ABP_UIConfiguration_C:StateDraw_BGMSelect() end
---@return boolean
function ABP_UIConfiguration_C:StateDraw_Close() end
---@return boolean
function ABP_UIConfiguration_C:StateDraw_IN() end
---@return boolean
function ABP_UIConfiguration_C:StateDraw_Main() end
---@return boolean
function ABP_UIConfiguration_C:StateDraw_BG() end
---@param DeltaTime float
---@return boolean
function ABP_UIConfiguration_C:StateDraw_Update(DeltaTime) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_C6F299164BCA72934F0F218FF612AEDE(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_6A26AE0D4DA7295D0598C8B5D7E7AE29(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_B2842006413FBBBAA8AF718E759679B3(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_4B6D24F74DB86C733E9F23827D16783C(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_3E7A6270477F0CD7076FFF81AAEEA339(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_694C5D9D446006DF320831B0397F4D17(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_3ECDA16B4C5006283D90FE9611CA505F(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_489A017D4C77D04BA5A71DBB57B9E315(Loaded) end
---@param Loaded UObject
function ABP_UIConfiguration_C:OnLoaded_1714D7E14A13D709135C79896AF74639(Loaded) end
function ABP_UIConfiguration_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_UIConfiguration_C:ExecuteUbergraph_BP_UIConfiguration(EntryPoint) end


