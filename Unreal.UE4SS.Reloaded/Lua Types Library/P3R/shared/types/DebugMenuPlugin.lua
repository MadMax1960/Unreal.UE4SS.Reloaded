---@meta

---@class ADebugMenuBPI_Actor : AActor
---@field _DebugMenuBase UDebugMenuBase
local ADebugMenuBPI_Actor = {}



---@class FDebugMenuEventData
local FDebugMenuEventData = {}


---@class FDebugMenuItem
local FDebugMenuItem = {}


---@class UDebugMenuBPI : UObject
---@field _World UWorld
---@field _DebugMenuBase UDebugMenuBase
---@field _Actor ADebugMenuBPI_Actor
local UDebugMenuBPI = {}

---@return boolean
function UDebugMenuBPI:Exit() end
---@param Event FCreateMenuEvent
---@param InMenuItem FDebugMenuItem
---@param MenuName FString
---@param OutMenuItem FDebugMenuItem
---@return boolean
function UDebugMenuBPI:CreateMenu(Event, InMenuItem, MenuName, OutMenuItem) end
---@param CaptionName FString
---@param OutMenuItem FDebugMenuItem
---@return boolean
function UDebugMenuBPI:CreateCaption(CaptionName, OutMenuItem) end
---@param Event FCreateBoolEvent
---@param InMenuItem FDebugMenuItem
---@param MenuName FString
---@param Default boolean
---@param OutMenuItem FDebugMenuItem
---@return boolean
function UDebugMenuBPI:CreateBool(Event, InMenuItem, MenuName, Default, OutMenuItem) end
---@param WorldContextObject UObject
---@param InClass UClass
---@param X float
---@param Y float
---@return boolean
function UDebugMenuBPI:Create(WorldContextObject, InClass, X, Y) end


---@class UDebugMenuBase : UObject
local UDebugMenuBase = {}


