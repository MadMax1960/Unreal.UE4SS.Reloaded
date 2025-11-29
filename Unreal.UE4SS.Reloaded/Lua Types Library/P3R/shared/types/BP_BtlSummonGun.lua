---@meta

---@class ABP_BtlSummonGun_C : AAppActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field childActor UChildActorComponent
---@field Scene USceneComponent
---@field ChildActor1 UChildActorComponent
---@field SummonGun AAppPropsCore
---@field TheurgiaGun AAppPropsCore
---@field TheurgiaMode boolean
---@field ['Force to Turn End'] boolean
local ABP_BtlSummonGun_C = {}

ABP_BtlSummonGun_C['Finalize Theurgia Mode'] = function(self, ) end
---@param ShowActors TArray<AAppPropsCore>
function ABP_BtlSummonGun_C:GetShowActors(ShowActors) end
---@param Gun AAppPropsCore
---@param Visible boolean
function ABP_BtlSummonGun_C:SetGunVisible(Gun, Visible) end
---@param Enable boolean
---@param ForceToTurnEnd boolean
function ABP_BtlSummonGun_C:SetTheurgiaMode(Enable, ForceToTurnEnd) end
---@param Visible boolean
function ABP_BtlSummonGun_C:SetVisible(Visible) end
function ABP_BtlSummonGun_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_BtlSummonGun_C:ExecuteUbergraph_BP_BtlSummonGun(EntryPoint) end


