---@meta

---@class ABP_BtlResources_C : ABtlGuiResourcesActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field BataTable TSoftObjectPtr<UDataTable>
---@field LoadDataTableObject UObject
---@field ResourcesList TMap<FName, UObject>
---@field isCompleted boolean
---@field loadIndex int32
---@field TableLength int32
---@field NameList TMap<TSoftObjectPtr<UObject>, FName>
---@field GuiCore ABP_BtlGuiCore_C
---@field UseTick boolean
---@field LayoutData TMap<FName, TSoftObjectPtr<UDataTable>>
local ABP_BtlResources_C = {}

---@param Name FName
---@return UObject
function ABP_BtlResources_C:GetResources(Name) end
---@param Loaded UObject
function ABP_BtlResources_C:OnLoaded_273DF4C1444957F20AC0F98FF3B04DC0(Loaded) end
---@param Loaded UObject
function ABP_BtlResources_C:OnLoaded_6DFADC06409FB0418EC1A895E4E1917B(Loaded) end
function ABP_BtlResources_C:ReceiveBeginPlay() end
---@param Name FName
---@param Object TSoftObjectPtr<UObject>
function ABP_BtlResources_C:StartAsyncLoad(Name, Object) end
function ABP_BtlResources_C:LoadCompleted() end
---@param DeltaSeconds float
function ABP_BtlResources_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_BtlResources_C:ExecuteUbergraph_BP_BtlResources(EntryPoint) end


