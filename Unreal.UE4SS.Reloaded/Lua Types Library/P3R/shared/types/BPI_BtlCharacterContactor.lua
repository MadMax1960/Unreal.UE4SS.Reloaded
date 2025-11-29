---@meta

---@class IBPI_BtlCharacterContactor_C : IInterface
local IBPI_BtlCharacterContactor_C = {}

---@param IsValid boolean
function IBPI_BtlCharacterContactor_C:CheckSkeletalMeshValid(IsValid) end
---@param ShowActors TArray<AActor>
function IBPI_BtlCharacterContactor_C:EncountHeroGetShowActor(ShowActors) end
---@param StartAnimationTime float
function IBPI_BtlCharacterContactor_C:EncountHeroRunStart(StartAnimationTime) end
function IBPI_BtlCharacterContactor_C:EncountHeroRunStop() end
---@param NyxCoreMode boolean
function IBPI_BtlCharacterContactor_C:CheckNyxCoreMode(NyxCoreMode) end


