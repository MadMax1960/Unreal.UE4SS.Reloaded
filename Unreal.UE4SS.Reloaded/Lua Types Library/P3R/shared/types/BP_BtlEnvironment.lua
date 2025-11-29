---@meta

---@class UBP_BtlEnvironment_C : UBtlEnvironmentBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BGLevelName TArray<FName>
---@field SkyLights TArray<ASkyLight>
---@field SpotLights TArray<ASpotLight>
---@field SavedIntensity float
---@field IsDarkAnim boolean
---@field DarkElapsedTime float
---@field DarkAnimRatio float
---@field DarkAnimTime float
---@field DarkIntensityRatio float
---@field OriginalIntensity float
---@field DT_SkillEnv UDataTable
---@field BaseSkillEnv FBtlSkillEnvParam
---@field GoalSkillEnv FBtlSkillEnvParam
---@field FldSky AActor
---@field BGBlack float
---@field CharaLight ABP_CharaDirLight_C
---@field HideBGWhenDarkest boolean
---@field DisableEnvUpdate boolean
---@field SaveAtmosphereFogVisible boolean
---@field SaveExponentialHeightFogVisible boolean
---@field SaveExposureCompensation float
---@field SaveLightIntensity TMap<ULightComponent, float>
---@field SaveSkyLightIntensity TMap<USkyLightComponent, float>
---@field CutinDirectionalLighrMoon boolean
local UBP_BtlEnvironment_C = {}

function UBP_BtlEnvironment_C:ResetCutinEnviroment() end
function UBP_BtlEnvironment_C:SetCutinEnviroment() end
function UBP_BtlEnvironment_C:ResetAlloutEnvionment() end
function UBP_BtlEnvironment_C:SetAlloutEnvironment() end
function UBP_BtlEnvironment_C:RestoreFogPower() end
function UBP_BtlEnvironment_C:SetFogInvisible() end
---@param Niagara ANiagaraActor
---@param Visible boolean
UBP_BtlEnvironment_C['Set Visible Field Effect'] = function(self, Niagara, Visible) end
function UBP_BtlEnvironment_C:ResumeEnvironmentUpdate() end
---@return TArray<ANiagaraActor>
function UBP_BtlEnvironment_C:GetLoversFogEffects() end
---@return TArray<ANiagaraActor>
function UBP_BtlEnvironment_C:GetNyxAvatarFeatherEffects() end
---@return TArray<ANiagaraActor>
function UBP_BtlEnvironment_C:GetMonorailRushEffects() end
function UBP_BtlEnvironment_C:StopEnvironmentUpdate() end
---@param Center FVector
function UBP_BtlEnvironment_C:SetFogCenter(Center) end
---@return TArray<AFldAnimObj>
function UBP_BtlEnvironment_C:GetMonorailWallObj() end
---@return TArray<AFldAnimObj>
function UBP_BtlEnvironment_C:GetMonorailStrapObj() end
---@return AFldAnimObj
function UBP_BtlEnvironment_C:GetMonorailBGObj() end
function UBP_BtlEnvironment_C:ResetEnvironment() end
---@param ElapsedTime float
---@param IsEnd boolean
function UBP_BtlEnvironment_C:CalcBGBlack(ElapsedTime, IsEnd) end
---@param power float
function UBP_BtlEnvironment_C:SetBGBlack(power) end
function UBP_BtlEnvironment_C:RestoreDefaultSkillEnv() end
function UBP_BtlEnvironment_C:RequestPreSkillEnv() end
---@param ElapsedTime float
---@param IsEnd boolean
function UBP_BtlEnvironment_C:CalcDarkFog(ElapsedTime, IsEnd) end
UBP_BtlEnvironment_C['Save Current Skill Env'] = function(self, ) end
function UBP_BtlEnvironment_C:InitEnv() end
---@param power float
---@param FogDistance float
---@param GradationRange float
function UBP_BtlEnvironment_C:SetDarkFog(power, FogDistance, GradationRange) end
---@param AnimRatio float
function UBP_BtlEnvironment_C:CalcDarkLightIntensity(AnimRatio) end
---@param Intensity float
function UBP_BtlEnvironment_C:SetLightIntensity(Intensity) end
function UBP_BtlEnvironment_C:Initialize() end
function UBP_BtlEnvironment_C:SaveCurrentMainLightParam() end
---@param Light ULightComponent
function UBP_BtlEnvironment_C:GetMainLight(Light) end
---@param Visible boolean
function UBP_BtlEnvironment_C:SetBGVisible(Visible) end
function UBP_BtlEnvironment_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function UBP_BtlEnvironment_C:ReceiveTick(DeltaSeconds) end
---@param Anim_Time float
---@param SkillEnv FBtlSkillEnvParam
---@param KeepCurrentLight boolean
---@param KeepCurrentFog boolean
---@param KeepCurrentBG boolean
---@param HideBGWithDarkParam boolean
UBP_BtlEnvironment_C['Request Dark Env'] = function(self, Anim_Time, SkillEnv, KeepCurrentLight, KeepCurrentFog, KeepCurrentBG, HideBGWithDarkParam) end
function UBP_BtlEnvironment_C:RequestLoversFogEffect() end
function UBP_BtlEnvironment_C:DeleteLoversFogEffect() end
function UBP_BtlEnvironment_C:InvisibleHangedmanBGObj() end
---@param EntryPoint int32
function UBP_BtlEnvironment_C:ExecuteUbergraph_BP_BtlEnvironment(EntryPoint) end


