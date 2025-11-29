---@meta

---@class ABP_BtlUIColorModel_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChildActorGun UChildActorComponent
---@field DefaultSceneRoot USceneComponent
---@field AppCharacter ABP_AppCharacter_C
---@field AppKoromaru ABP_AppKoromaru_C
---@field IsKoromaru boolean
---@field WeaponType EAppCharWeaponType
---@field CharacterReference ABP_BtlCharacterBase_C
---@field LoadCompleted boolean
---@field MaterialList TArray<UMaterialInstanceDynamic>
---@field PosOffset FVector
---@field isCharacterVisible boolean
---@field UseGun boolean
local ABP_BtlUIColorModel_C = {}

---@param IsTheurgiaGun boolean
function ABP_BtlUIColorModel_C:SetTheurgiaGun(IsTheurgiaGun) end
---@param ColorA FLinearColor
---@param ColorB FLinearColor
function ABP_BtlUIColorModel_C:SetColorModelGun(ColorA, ColorB) end
---@param Visible boolean
function ABP_BtlUIColorModel_C:SetCharacterVisible(Visible) end
---@param ColorA FLinearColor
---@param ColorB FLinearColor
function ABP_BtlUIColorModel_C:SetColorModel(ColorA, ColorB) end
---@param List TArray<AActor>
function ABP_BtlUIColorModel_C:GetShowActorList(List) end
---@param COMPLETE boolean
function ABP_BtlUIColorModel_C:CheckSetupCompleted(COMPLETE) end
---@param WeaponVisible boolean
---@param GunVisible boolean
function ABP_BtlUIColorModel_C:SetEquipVisibility(WeaponVisible, GunVisible) end
---@param Visible boolean
function ABP_BtlUIColorModel_C:SetGunVisible(Visible) end
---@param Visible boolean
function ABP_BtlUIColorModel_C:SetWeaponVisible(Visible) end
function ABP_BtlUIColorModel_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_BtlUIColorModel_C:ReceiveTick(DeltaSeconds) end
function ABP_BtlUIColorModel_C:ReceiveDestroyed() end
---@param EntryPoint int32
function ABP_BtlUIColorModel_C:ExecuteUbergraph_BP_BtlUIColorModel(EntryPoint) end


