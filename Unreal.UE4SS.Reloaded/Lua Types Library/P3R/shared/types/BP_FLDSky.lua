---@meta

---@class ABP_FLDSky_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field S_FLD_MoonGlow UStaticMeshComponent
---@field DirectionalLightMoon UDirectionalLightComponent
---@field S_FLD_MoonSphere UStaticMeshComponent
---@field PostProcess UPostProcessComponent
---@field DirectionalLightNight UDirectionalLightComponent
---@field S_FLD_CloudSphere UStaticMeshComponent
---@field Arrow1 UArrowComponent
---@field DirectionalLightSun UDirectionalLightComponent
---@field MoonRoot USceneComponent
---@field SM_SkySphereCustom UStaticMeshComponent
---@field Base USceneComponent
---@field Arrow UArrowComponent
---@field ['Sky material'] UMaterialInstanceDynamic
---@field ['Refresh material'] boolean
---@field ['Directional light actor'] ADirectionalLight
---@field ['Colors determined by sun position'] boolean
---@field ['太陽高度'] float
---@field ['太陽輝度'] float
---@field ['月高度'] float
---@field ['月齢/日'] int32
---@field ['カレンダー同期'] boolean
---@field ['月発光範囲'] float
---@field ['発光パワー'] float
---@field ['月サイズ'] float
---@field ['Horizon Falloff'] float
---@field ['月発光範囲カラー'] FLinearColor
---@field ['Zenith Color'] FLinearColor
---@field ['Horizon color'] FLinearColor
---@field ['Cloud Color'] FLinearColor
---@field ['Overall Color'] FLinearColor
---@field ['雲スクロール速度'] float
---@field ['雲透明度(通常)'] float
---@field ['星輝度'] float
---@field ['Horizon color curve'] UCurveLinearColor
---@field ['Zenith color curve'] UCurveLinearColor
---@field ['Cloud color curve'] UCurveLinearColor
---@field ['太陽の大きさ'] float
---@field ['雲の濃さ1'] float
---@field ['Star color'] UCurveLinearColor
---@field ['月影透明度'] float
---@field ['Moon Alpha'] UCurveFloat
---@field LightIntensity float
---@field ['Light Moon Curve'] UCurveLinearColor
---@field LightColor FLinearColor
---@field ['Light Sun  Curve'] UCurveLinearColor
---@field ['フィルター全体濃度'] float
---@field ['フィルターカラー1'] FLinearColor
---@field ['フィルター1濃度'] float
---@field ['フィルターカラー2'] FLinearColor
---@field ['フィルター2濃度'] float
---@field ['フィルターカラー3'] FLinearColor
---@field ['フィルター3濃度'] float
---@field ['Fog Auto'] boolean
---@field ['レイヤーフォグ位置'] float
---@field ['フォグ開始位置'] float
---@field ['フォグ1カラー'] FLinearColor
---@field ['フォグ1範囲'] float
---@field ['フォグ2カラー'] FLinearColor
---@field ['フォグ2範囲'] float
---@field ['フォグ3カラー'] FLinearColor
---@field ['フォグ3範囲'] float
---@field ['遠景フォグカラー'] FLinearColor
---@field ['遠景フォグ距離'] float
---@field ['Fog Far Curve'] UCurveLinearColor
---@field ['Light Night  Curve'] UCurveLinearColor
---@field ['Fog 1 Curve'] UCurveLinearColor
---@field ['Fog 2 Curve'] UCurveLinearColor
---@field ['Fog 3 Curve'] UCurveLinearColor
---@field Day boolean
---@field Night boolean
---@field ShadowTime boolean
---@field ['雲のコントラスト'] float
---@field ['雲のマスクコントラスト'] float
---@field ['雲のU 座標'] float
---@field ['マスクスケール'] float
---@field ['雲のマスク速度'] float
---@field ['雲透明度(影時間)'] float
---@field MoonMaskColor UCurveLinearColor
---@field MoonGlowAlpha UCurveFloat
---@field CloudOpacity UCurveFloat
---@field MoonIntensity UCurveFloat
---@field ['雲の濃さ2'] float
---@field EdgeColor UCurveLinearColor
---@field EmissiveColor UCurveLinearColor
---@field EmissivePowerNoon UCurveFloat
---@field EmissivePowerEvening UCurveFloat
---@field EmissivePowerNight UCurveFloat
---@field EmissivePowerShadow UCurveFloat
---@field ['窓発光 屋外用'] boolean
---@field ['窓発光カラー'] FLinearColor
---@field ['窓発光パワー'] float
---@field ['自動明度'] boolean
---@field ['光の強さ'] float
local ABP_FLDSky_C = {}

---@param Exposure float
function ABP_FLDSky_C:GetExposureCompensation(Exposure) end
---@param LightComponent ULightComponent
function ABP_FLDSky_C:GetDirectionalLightMoon(LightComponent) end
function ABP_FLDSky_C:UpdateNowMoonAge() end
function ABP_FLDSky_C:Reset() end
function ABP_FLDSky_C:MoonCloud() end
ABP_FLDSky_C['FLD EN P'] = function(self, ) end
function ABP_FLDSky_C:RefreshMaterial() end
function ABP_FLDSky_C:UpdateSunDirection() end
function ABP_FLDSky_C:UserConstructionScript() end
function ABP_FLDSky_C:ReceiveBeginPlay() end
function ABP_FLDSky_C:FLDSkyReset() end
---@param Exposure float
function ABP_FLDSky_C:SetExposureCompensation(Exposure) end
---@param EntryPoint int32
function ABP_FLDSky_C:ExecuteUbergraph_BP_FLDSky(EntryPoint) end


