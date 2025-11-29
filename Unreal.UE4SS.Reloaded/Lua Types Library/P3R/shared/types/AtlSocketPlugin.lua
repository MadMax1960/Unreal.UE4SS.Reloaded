---@meta

---@class UAtlSocketBase : UObject
local UAtlSocketBase = {}


---@class UAtlSocketStringUtils : UObject
local UAtlSocketStringUtils = {}


---@class UAtlTcpListener : UAtlSocketBase
---@field Clients_ TArray<UAtlTcpSocket>
local UAtlTcpListener = {}

---@param Socket UAtlSocketBase
---@param Buffer TArray<uint8>
function UAtlTcpListener:OnReceivedFromClient(Socket, Buffer) end
---@param Socket UAtlSocketBase
function UAtlTcpListener:OnDisconnectedClient(Socket) end


---@class UAtlTcpSocket : UAtlSocketBase
local UAtlTcpSocket = {}


