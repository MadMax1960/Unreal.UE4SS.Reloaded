---@meta

---@class FAPCommandInstance
---@field Command UAPCommandBase
local FAPCommandInstance = {}



---@class FAPCommandLog
---@field Time float
local FAPCommandLog = {}



---@class FAPCommandParam
---@field command_name FString
---@field filter_name FString
---@field TypeInfo_ UStruct
local FAPCommandParam = {}



---@class FAPCommandReserve
---@field Command UAPCommandBase
local FAPCommandReserve = {}



---@class FAPEchoParam : FAPCommandParam
---@field Message FString
---@field DisplayTime float
local FAPEchoParam = {}



---@class FAPEndRecordParam : FAPCommandParam
local FAPEndRecordParam = {}


---@class FAPNopParam : FAPCommandParam
local FAPNopParam = {}


---@class FAPScreenShotParam : FAPCommandParam
---@field Filename FString
local FAPScreenShotParam = {}



---@class FAPSlowMotionParam : FAPCommandParam
---@field Speed float
local FAPSlowMotionParam = {}



---@class FAPStartRecordParam : FAPCommandParam
local FAPStartRecordParam = {}


---@class FAPWaitForNextCommandParam : FAPCommandParam
---@field time_limit float
local FAPWaitForNextCommandParam = {}



---@class UAPCmdEcho : UAPCommandBase
local UAPCmdEcho = {}


---@class UAPCmdEndRecord : UAPCommandBase
---@field APSubsystem_ TWeakObjectPtr<UAutoPlayGameInstanceSubsystem>
local UAPCmdEndRecord = {}



---@class UAPCmdNop : UAPCommandBase
local UAPCmdNop = {}


---@class UAPCmdRecordRequest : UObject
local UAPCmdRecordRequest = {}


---@class UAPCmdScreenShot : UAPCommandBase
local UAPCmdScreenShot = {}


---@class UAPCmdSlowMotion : UAPCommandBase
local UAPCmdSlowMotion = {}


---@class UAPCmdStartRecord : UAPCommandBase
---@field APSubsystem_ TWeakObjectPtr<UAutoPlayGameInstanceSubsystem>
local UAPCmdStartRecord = {}



---@class UAPCmdWaitForNextCommand : UAPCommandBase
---@field APSubsystem_ TWeakObjectPtr<UAutoPlayGameInstanceSubsystem>
local UAPCmdWaitForNextCommand = {}



---@class UAPCommandBase : UObject
local UAPCommandBase = {}


---@class UAutoPlayCommandLogger : UObject
local UAutoPlayCommandLogger = {}


---@class UAutoPlayCommandManager : UObject
---@field CommandQueue_ TArray<FAPCommandReserve>
local UAutoPlayCommandManager = {}



---@class UAutoPlayCommandServer : UObject
---@field Server_ UAtlTcpListener
---@field CommandManager_ UAutoPlayCommandManager
---@field CommandLogger_ UAutoPlayCommandLogger
---@field CurrentCommand_ UAPCommandBase
local UAutoPlayCommandServer = {}

---@param Socket UAtlSocketBase
---@param str FString
function UAutoPlayCommandServer:OnReceivedAsString(Socket, str) end
---@param Socket UAtlSocketBase
function UAutoPlayCommandServer:OnDisconnected(Socket) end
---@param Socket UAtlSocketBase
function UAutoPlayCommandServer:OnConnected(Socket) end


---@class UAutoPlayCommandWorker : UObject
---@field CommandQueue_ TArray<FAPCommandInstance>
---@field CurrentCommand_ FAPCommandInstance
local UAutoPlayCommandWorker = {}



---@class UAutoPlayEventObject : UObject
local UAutoPlayEventObject = {}


---@class UAutoPlayGameInstanceSubsystem : UGameInstanceSubsystem
---@field EventObjects_ TMap<uint32, UAutoPlayEventObject>
---@field FontObject_ UFont
---@field CommandServer_ UAutoPlayCommandServer
---@field CommandLogger_ UAutoPlayCommandLogger
---@field CommandManager_ UAutoPlayCommandManager
---@field CommandWorker_ UAutoPlayCommandWorker
---@field OnTickControlDelegate_ FAutoPlayGameInstanceSubsystemOnTickControlDelegate_
---@field PadImage_ UTexture
---@field PadPress_ UTexture
local UAutoPlayGameInstanceSubsystem = {}



