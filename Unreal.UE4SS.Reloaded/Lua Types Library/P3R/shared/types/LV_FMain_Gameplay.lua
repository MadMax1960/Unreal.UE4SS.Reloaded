---@meta

---@class ALV_FMain_Gameplay_C : ALevelScriptActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerClass TSubclassOf<ACharacterBaseCore>
---@field CameraClass TSubclassOf<AFldCameraBase>
---@field DungeonPlayerClass TSubclassOf<ACharacterBaseCore>
---@field DungeonCameraClass TSubclassOf<AFldCameraBase>
---@field DngEntranceCameraClassAstrea TSubclassOf<AFldCameraBase>
---@field FollowerClass TSubclassOf<ACharacterBaseCore>
---@field FollowerKoromaruClass TSubclassOf<ACharacterBaseCore>
---@field TransCameraClass TSubclassOf<AFldCamera>
---@field DungeonPlayerClassAstrea TSubclassOf<ACharacterBaseCore>
---@field DngFinalFloorCameraClassAstrea TSubclassOf<AFldCameraBase>
local ALV_FMain_Gameplay_C = {}

---@param Return boolean
function ALV_FMain_Gameplay_C:CheckEventDebugShortcut(Return) end
---@param Return boolean
function ALV_FMain_Gameplay_C:CheckDebugShortcut(Return) end
function ALV_FMain_Gameplay_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ALV_FMain_Gameplay_C:ExecuteUbergraph_LV_FMain_Gameplay(EntryPoint) end


