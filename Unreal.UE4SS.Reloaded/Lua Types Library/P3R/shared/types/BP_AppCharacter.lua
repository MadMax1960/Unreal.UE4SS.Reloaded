---@meta

---@class ABP_AppCharacter_C : ABP_MainCharaBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FootstepsAtom UAppCharFootstepsAtom
---@field CharacterSimpleLipsAnimApp UCharacterSimpleLipsAnimAppComponent
---@field CharacterLipsyncApp UCharacterLipsyncAppComponent
---@field AppCharacterComp UAppCharacterComp
local ABP_AppCharacter_C = {}

function ABP_AppCharacter_C:UnlinkPhysics() end
function ABP_AppCharacter_C:ResetIK() end
function ABP_AppCharacter_C:ReceiveBeginPlay() end
function ABP_AppCharacter_C:ResetIkDelegate_Event() end
function ABP_AppCharacter_C:UnlincPhysics_Event() end
---@param EntryPoint int32
function ABP_AppCharacter_C:ExecuteUbergraph_BP_AppCharacter(EntryPoint) end


