---@meta

---@class UACBLoadObject : UActorComponent
---@field Loader UAsyncCueSheetManager
local UACBLoadObject = {}

function UACBLoadObject:OnLoadFailed() end
function UACBLoadObject:OnLoadCompleted() end


---@class UAcbFileControlBlock : UObject
---@field CueSheet USoundAtomCueSheet
---@field Loader UACBLoadObject
local UAcbFileControlBlock = {}



---@class UAsyncCueSheetManager : UObject
---@field OnLoadCompleted FAsyncCueSheetManagerOnLoadCompleted
---@field OnLoadFailed FAsyncCueSheetManagerOnLoadFailed
---@field CueSheet USoundAtomCueSheet
local UAsyncCueSheetManager = {}

function UAsyncCueSheetManager:OnLoadFailed__DelegateSignature() end
function UAsyncCueSheetManager:OnLoadCompleted__DelegateSignature() end
---@param PathForCueSheet FSoftObjectPath
function UAsyncCueSheetManager:LoadAsync(PathForCueSheet) end
---@return USoundAtomCueSheet
function UAsyncCueSheetManager:GetAtomCueSheet() end


---@class ULiveLipSync : UObject
---@field LipsAnalyzer ULipsAtomAnalyzer
local ULiveLipSync = {}

---@return FCriLipsMorphTargetBlendAmountAsJapanese
function ULiveLipSync:getLipsyncLiveJapanese() end
---@return FCriLipsMouthInfo
function ULiveLipSync:getLipsyncLiveInfo() end
---@param majNum int32
---@param minNum int32
---@return boolean
function ULiveLipSync:detachSoundManager(majNum, minNum) end
---@param majNum int32
---@param minNum int32
---@return boolean
function ULiveLipSync:attachSoundManager(majNum, minNum) end


---@class UPlayAdxControl : UObject
---@field mPlayerControlBlock UPlayerControlBlock
---@field mAcbFileControlBlock UAcbFileControlBlock
local UPlayAdxControl = {}

---@param PlayerMajorID int32
---@param PlayerMinorID int32
function UPlayAdxControl:stopSound_IMD(PlayerMajorID, PlayerMinorID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
function UPlayAdxControl:stopSound(PlayerMajorID, PlayerMinorID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param Type EPlayerType
---@param bankID int32
function UPlayAdxControl:setPlayerAcbBank(PlayerMajorID, PlayerMinorID, Type, bankID) end
function UPlayAdxControl:resetLoudness() end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param CueId int32
---@param isForceChange boolean
function UPlayAdxControl:requestSound(PlayerMajorID, PlayerMinorID, CueId, isForceChange) end
---@param Filename FString
---@return int32
function UPlayAdxControl:requestLoadAcb(Filename) end
---@param bankID int32
function UPlayAdxControl:requestFreeAcb(bankID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
function UPlayAdxControl:releasePlayerBank(PlayerMajorID, PlayerMinorID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param flag boolean
function UPlayAdxControl:pauseSound(PlayerMajorID, PlayerMinorID, flag) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@return boolean
function UPlayAdxControl:IsLoop(PlayerMajorID, PlayerMinorID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@return float
function UPlayAdxControl:GetTime(PlayerMajorID, PlayerMinorID) end
---@return float
function UPlayAdxControl:getShortLoudness() end
---@param Name FString
---@return int32
function UPlayAdxControl:getNumCuePlayingCountByName(Name) end
---@return float
function UPlayAdxControl:getMomentaryLoudness() end
---@param majorNum int32
---@param minorNum int32
---@return FCriLipsMorphTargetBlendAmountAsJapanese
function UPlayAdxControl:getLipsyncLiveJapanese(majorNum, minorNum) end
---@param majorNum int32
---@param minorNum int32
---@return FCriLipsMouthInfo
function UPlayAdxControl:getLipsyncLiveInfo(majorNum, minorNum) end
---@param bankID int32
---@param CueId int32
---@return int64
function UPlayAdxControl:getLengthSoundBank(bankID, CueId) end
---@param majorNum int32
---@param minorNum int32
---@param CueId int32
---@return int64
function UPlayAdxControl:getLengthPlayerBank(majorNum, minorNum, CueId) end
---@return float
function UPlayAdxControl:getIntegratedLoudness() end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param fadeOutTime int32
function UPlayAdxControl:fadeOutSndMng(PlayerMajorID, PlayerMinorID, fadeOutTime) end
---@param fadeOutTime int32
---@param fadeOutVolume float
---@return boolean
function UPlayAdxControl:fadeOutBGMCategorySoundManager(fadeOutTime, fadeOutVolume) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param fadeInTime int32
function UPlayAdxControl:fadeInSndMng(PlayerMajorID, PlayerMinorID, fadeInTime) end
---@param fadeInTime int32
---@param fadeInVolume float
---@return boolean
function UPlayAdxControl:fadeInBGMCategorySoundmanager(fadeInTime, fadeInVolume) end
---@param majorNum int32
---@param minorNum int32
---@return boolean
function UPlayAdxControl:detachLipsyncLive(majorNum, minorNum) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@param isMulti boolean
---@return int32
function UPlayAdxControl:createPlayerBank(PlayerMajorID, PlayerMinorID, isMulti) end
---@param bankID int32
---@return boolean
function UPlayAdxControl:checkReadEnd(bankID) end
---@param Filename FString
---@return int32
function UPlayAdxControl:checkReadAcb(Filename) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@return boolean
function UPlayAdxControl:checkPlaying(PlayerMajorID, PlayerMinorID) end
---@param PlayerMajorID int32
---@param PlayerMinorID int32
---@return boolean
function UPlayAdxControl:checkPauseSound(PlayerMajorID, PlayerMinorID) end
---@param majorNum int32
---@param minorNum int32
---@return boolean
function UPlayAdxControl:attachLipsyncLive(majorNum, minorNum) end


---@class UPlayerControlBlock : UObject
---@field Player UAtomComponent
---@field LipsAnalyzer ULipsAtomAnalyzer
local UPlayerControlBlock = {}



---@class USoundManagerGameInstanceSubSystem : UGameInstanceSubsystem
---@field PlayAdxControl UPlayAdxControl
local USoundManagerGameInstanceSubSystem = {}

---@return UPlayAdxControl
function USoundManagerGameInstanceSubSystem:GetPlayAdxControl() end


---@class USoundManagerReadyAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FSoundManagerReadyAsyncFunctionCompleted
local USoundManagerReadyAsyncFunction = {}

---@param WorldContextObject UObject
---@param Control UPlayAdxControl
---@param bankID int32
---@return USoundManagerReadyAsyncFunction
function USoundManagerReadyAsyncFunction:SoundManagerReadyAsyncFunction(WorldContextObject, Control, bankID) end


