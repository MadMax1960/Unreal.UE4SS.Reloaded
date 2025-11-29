---@meta

---@class FMonitorHandle
local FMonitorHandle = {}


---@class FMonitorResolution
---@field Width int32
---@field Height int32
---@field RefreshRateNumerator int32
---@field RefreshRateDenominator int32
local FMonitorResolution = {}



---@class UMonitorBlueprintLibrary : UBlueprintFunctionLibrary
local UMonitorBlueprintLibrary = {}

---@param A FMonitorHandle
---@param B FMonitorHandle
---@return boolean
function UMonitorBlueprintLibrary:NotEqual_MonitorHandleMonitorHandle(A, B) end
---@param MonitorHandle FMonitorHandle
---@return boolean
function UMonitorBlueprintLibrary:IsValid(MonitorHandle) end
---@param MonitorHandle FMonitorHandle
---@return boolean
function UMonitorBlueprintLibrary:IsSupportedFullscreen(MonitorHandle) end
---@param MonitorHandle FMonitorHandle
---@param OutResolutions TArray<FMonitorResolution>
---@return boolean
function UMonitorBlueprintLibrary:GetSupportedFullscreenResolutionsUniqueOnly(MonitorHandle, OutResolutions) end
---@param MonitorHandle FMonitorHandle
---@param OutResolutions TArray<FMonitorResolution>
---@return boolean
function UMonitorBlueprintLibrary:GetSupportedFullscreenResolutions(MonitorHandle, OutResolutions) end
---@param Resolution FMonitorResolution
---@return float
function UMonitorBlueprintLibrary:GetRefreshRate(Resolution) end
---@return FMonitorHandle
function UMonitorBlueprintLibrary:GetPrimaryMonitor() end
---@param MonitorHandle FMonitorHandle
---@param Width int32
---@param Height int32
function UMonitorBlueprintLibrary:GetMonitorSize(MonitorHandle, Width, Height) end
---@param MonitorHandle FMonitorHandle
---@return FIntPoint
function UMonitorBlueprintLibrary:GetMonitorPosition(MonitorHandle) end
---@param MonitorHandle FMonitorHandle
---@return FString
function UMonitorBlueprintLibrary:GetMonitorName(MonitorHandle) end
---@return FMonitorHandle
function UMonitorBlueprintLibrary:GetCurrentMonitor() end
---@param MonitorHandle FMonitorHandle
---@param DesiredSize FIntPoint
---@return FMonitorResolution
function UMonitorBlueprintLibrary:GetClosestEnclosingResolution(MonitorHandle, DesiredSize) end
---@return TArray<FMonitorHandle>
function UMonitorBlueprintLibrary:GetAvailableMonitors() end
---@param Left FMonitorResolution
---@param Right FMonitorResolution
---@return boolean
function UMonitorBlueprintLibrary:EqualEqual_MonitorResolutionMonitorResolution(Left, Right) end
---@param A FMonitorHandle
---@param B FMonitorHandle
---@return boolean
function UMonitorBlueprintLibrary:EqualEqual_MonitorHandleMonitorHandle(A, B) end
---@param Resolution FMonitorResolution
---@param ScreenMode EWindowMode::Type
---@param Monitor FMonitorHandle
---@param bCheckForCommandLineOverrides boolean
---@param Duration float
function UMonitorBlueprintLibrary:ApplyMonitorSettings(Resolution, ScreenMode, Monitor, bCheckForCommandLineOverrides, Duration) end


