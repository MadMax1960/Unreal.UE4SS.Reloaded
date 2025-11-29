---@meta

---@class UPakFile : UObject
local UPakFile = {}

---@return boolean
function UPakFile:syncReadFile() end


---@class UPakFileManagerControl : UObject
local UPakFileManagerControl = {}

---@param Filename FString
---@return UPakFile
function UPakFileManagerControl:requestReadFile(Filename) end


---@class UPakFiledManagerGameInstanceSubSystem : UGameInstanceSubsystem
---@field FileManagerControl UPakFileManagerControl
local UPakFiledManagerGameInstanceSubSystem = {}

---@return UPakFileManagerControl
function UPakFiledManagerGameInstanceSubSystem:GetFileManagerControl() end


