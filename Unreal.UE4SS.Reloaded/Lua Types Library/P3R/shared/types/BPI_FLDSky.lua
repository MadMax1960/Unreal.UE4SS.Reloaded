---@meta

---@class IBPI_FLDSky_C : IInterface
local IBPI_FLDSky_C = {}

---@param Exposure float
function IBPI_FLDSky_C:SetExposureCompensation(Exposure) end
---@param Exposure float
function IBPI_FLDSky_C:GetExposureCompensation(Exposure) end
function IBPI_FLDSky_C:FLDSkyReset() end
---@param LightComponent ULightComponent
function IBPI_FLDSky_C:GetDirectionalLightMoon(LightComponent) end


