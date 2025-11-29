---@meta

---@class ABP_BtlCalc_C : ABtlCalcBase
---@field DefaultSceneRoot USceneComponent
---@field DifficultyParam UDataTable
---@field LevelDamageRatio UDataTable
---@field LevelDamageRatioBoss UDataTable
---@field LevelExpRatio UDataTable
---@field FullMoonSkillPower UDataTable
---@field NewMoonSkillPower UDataTable
local ABP_BtlCalc_C = {}

---@param BadStatus_Hit_Rate float
function ABP_BtlCalc_C:GetBadStatusRateFromPlayer(BadStatus_Hit_Rate) end
---@param BadStatus_Hit_Rate float
function ABP_BtlCalc_C:GetBadStatusRateFromEnemy(BadStatus_Hit_Rate) end
---@return float
function ABP_BtlCalc_C:DamageRatioByOVERLIMIT() end
---@return float
function ABP_BtlCalc_C:AttackRatioByOVERLIMIT() end
---@return float
function ABP_BtlCalc_C:GetSaleMerchMoneyRate() end
---@param MoonAge int32
---@return float
function ABP_BtlCalc_C:GetNewmoonSkillPowerRatio(MoonAge) end
---@param MoonAge int32
---@return float
function ABP_BtlCalc_C:GetFullmoonSkillPowerRatio(MoonAge) end
---@return float
function ABP_BtlCalc_C:CalcTheurgiaSkillDamage() end
---@return float
function ABP_BtlCalc_C:GetAllOutAttackSwoonRate() end
---@param EncountNumFromLastMajor int32
---@return float
function ABP_BtlCalc_C:GetShuffleTimeMajorPercent(EncountNumFromLastMajor) end
---@return float
function ABP_BtlCalc_C:AttackRatioByUPSET() end
---@return float
function ABP_BtlCalc_C:RecoveryRatioFromUPSET() end
---@return float
function ABP_BtlCalc_C:RecoveryRatioFromPANIC() end
---@return float
function ABP_BtlCalc_C:RecoveryRatioFromFEAR() end
---@return float
function ABP_BtlCalc_C:RecoveryRatioFromCHARM() end
---@return float
function ABP_BtlCalc_C:RecoveryRatioFromANGER() end
---@return float
function ABP_BtlCalc_C:DamageRatioByUPSET() end
---@return float
function ABP_BtlCalc_C:DamageRatioByOVERHEAT() end
---@return float
function ABP_BtlCalc_C:DamageRatioByANGER() end
---@return float
function ABP_BtlCalc_C:AttackRatioByANGER() end
---@return int32
function ABP_BtlCalc_C:GetShuffleTimeOccurPercent() end
---@param LevelDifference int32
---@return float
function ABP_BtlCalc_C:GetLevelExpRatio(LevelDifference) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABP_BtlCalc_C:GetLevelDamageRatio(LevelAttacker, LevelTarget) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABP_BtlCalc_C:GetLevelDamageBossRatio(LevelAttacker, LevelTarget) end
---@param LevelAttacker int32
---@param LevelTarget int32
---@return float
function ABP_BtlCalc_C:GetLevelAccuracyRatio(LevelAttacker, LevelTarget) end
---@param MagicAttacker int32
---@return int32
function ABP_BtlCalc_C:GetMagicBonusDamage(MagicAttacker) end
---@param MagicAttacker int32
---@return int32
function ABP_BtlCalc_C:GetMagicBonusRecovery(MagicAttacker) end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABP_BtlCalc_C:GetSpeedSupportRatio(isPlayer, Point) end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABP_BtlCalc_C:GetDefenseSupportRatio(isPlayer, Point) end
---@param isPlayer boolean
---@param Point int32
---@return int32
function ABP_BtlCalc_C:GetAttackSupportRatio(isPlayer, Point) end
---@param Rate float
ABP_BtlCalc_C['Accuracy Enemy'] = function(self, Rate) end
---@param Rate float
ABP_BtlCalc_C['Accuracy Player'] = function(self, Rate) end
---@param Level float
---@param DefaultLevel float
---@return float
function ABP_BtlCalc_C:CalcExpPersonaLevelUp(Level, DefaultLevel) end
---@param Param FFBtlCalcParam
function ABP_BtlCalc_C:GetDifficultyParam(Param) end
---@return float
function ABP_BtlCalc_C:GetPlayerWeakDamageRate() end
---@return float
function ABP_BtlCalc_C:GetPlayerCriticalDamageRate() end
---@return float
function ABP_BtlCalc_C:GetMoneyRate() end
---@return float
function ABP_BtlCalc_C:GetExpRate() end
---@return float
function ABP_BtlCalc_C:GetEnemyWeakDamageRate() end
---@return float
function ABP_BtlCalc_C:GetEnemyCriticalDamageRate() end
---@return int32
function ABP_BtlCalc_C:GetDownAgilityForEnemy() end
---@return float
function ABP_BtlCalc_C:GetDamageRateToPlayer() end
---@return float
function ABP_BtlCalc_C:GetDamageRateToEnemy() end
---@return float
function ABP_BtlCalc_C:CalcHealRecovery() end
---@return float
function ABP_BtlCalc_C:CalcEscapeRate() end
---@return float
function ABP_BtlCalc_C:CalcBadStatusRecoveryRate() end
---@return float
function ABP_BtlCalc_C:CalcBadStatusHitRate() end
---@return float
function ABP_BtlCalc_C:CalcAllOutAttackDamage() end
---@return float
function ABP_BtlCalc_C:CalcRushDamage() end
---@return float
function ABP_BtlCalc_C:CalcDownRate() end
---@return float
function ABP_BtlCalc_C:CalcCriticalHitRate() end
---@return float
function ABP_BtlCalc_C:CalcAccuracyRate() end
---@return float
function ABP_BtlCalc_C:CalcPhysicalDamage() end
---@return float
function ABP_BtlCalc_C:CalcMagicDamage() end


