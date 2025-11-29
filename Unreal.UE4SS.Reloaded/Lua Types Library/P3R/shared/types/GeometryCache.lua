---@meta

---@class AGeometryCacheActor : AActor
---@field GeometryCacheComponent UGeometryCacheComponent
local AGeometryCacheActor = {}

---@return UGeometryCacheComponent
function AGeometryCacheActor:GetGeometryCacheComponent() end


---@class FGeometryCacheMeshBatchInfo
local FGeometryCacheMeshBatchInfo = {}


---@class FGeometryCacheMeshData
local FGeometryCacheMeshData = {}


---@class FGeometryCacheVertexInfo
local FGeometryCacheVertexInfo = {}


---@class FTrackRenderData
local FTrackRenderData = {}


---@class UDEPRECATED_GeometryCacheTrack_FlipbookAnimation : UGeometryCacheTrack
---@field NumMeshSamples uint32
local UDEPRECATED_GeometryCacheTrack_FlipbookAnimation = {}

---@param MeshData FGeometryCacheMeshData
---@param SampleTime float
function UDEPRECATED_GeometryCacheTrack_FlipbookAnimation:AddMeshSample(MeshData, SampleTime) end


---@class UDEPRECATED_GeometryCacheTrack_TransformAnimation : UGeometryCacheTrack
local UDEPRECATED_GeometryCacheTrack_TransformAnimation = {}

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformAnimation:SetMesh(NewMeshData) end


---@class UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation : UGeometryCacheTrack
local UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation = {}

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation:SetMesh(NewMeshData) end


---@class UGeometryCache : UObject
---@field Materials TArray<UMaterialInterface>
---@field Tracks TArray<UGeometryCacheTrack>
---@field StartFrame int32
---@field EndFrame int32
---@field hash uint64
local UGeometryCache = {}



---@class UGeometryCacheCodecBase : UObject
---@field TopologyRanges TArray<int32>
local UGeometryCacheCodecBase = {}



---@class UGeometryCacheCodecRaw : UGeometryCacheCodecBase
---@field DummyProperty int32
local UGeometryCacheCodecRaw = {}



---@class UGeometryCacheCodecV1 : UGeometryCacheCodecBase
local UGeometryCacheCodecV1 = {}


---@class UGeometryCacheComponent : UMeshComponent
---@field GeometryCache UGeometryCache
---@field bRunning boolean
---@field bLooping boolean
---@field bExtrapolateFrames boolean
---@field StartTimeOffset float
---@field PlaybackSpeed float
---@field MotionVectorScale float
---@field NumTracks int32
---@field ElapsedTime float
---@field Duration float
---@field bManualTick boolean
local UGeometryCacheComponent = {}

---@param Time float
---@param bInIsRunning boolean
---@param bInBackwards boolean
---@param bInIsLooping boolean
function UGeometryCacheComponent:TickAtThisTime(Time, bInIsRunning, bInBackwards, bInIsLooping) end
function UGeometryCacheComponent:Stop() end
---@param NewStartTimeOffset float
function UGeometryCacheComponent:SetStartTimeOffset(NewStartTimeOffset) end
---@param NewPlaybackSpeed float
function UGeometryCacheComponent:SetPlaybackSpeed(NewPlaybackSpeed) end
---@param NewMotionVectorScale float
function UGeometryCacheComponent:SetMotionVectorScale(NewMotionVectorScale) end
---@param bNewLooping boolean
function UGeometryCacheComponent:SetLooping(bNewLooping) end
---@param NewGeomCache UGeometryCache
---@return boolean
function UGeometryCacheComponent:SetGeometryCache(NewGeomCache) end
---@param bNewExtrapolating boolean
function UGeometryCacheComponent:SetExtrapolateFrames(bNewExtrapolating) end
function UGeometryCacheComponent:PlayReversedFromEnd() end
function UGeometryCacheComponent:PlayReversed() end
function UGeometryCacheComponent:PlayFromStart() end
function UGeometryCacheComponent:Play() end
function UGeometryCacheComponent:Pause() end
---@return boolean
function UGeometryCacheComponent:IsPlayingReversed() end
---@return boolean
function UGeometryCacheComponent:IsPlaying() end
---@return boolean
function UGeometryCacheComponent:IsLooping() end
---@return boolean
function UGeometryCacheComponent:IsExtrapolatingFrames() end
---@return float
function UGeometryCacheComponent:GetStartTimeOffset() end
---@return float
function UGeometryCacheComponent:GetPlaybackSpeed() end
---@return float
function UGeometryCacheComponent:GetPlaybackDirection() end
---@return int32
function UGeometryCacheComponent:GetNumberOfFrames() end
---@return float
function UGeometryCacheComponent:GetMotionVectorScale() end
---@return float
function UGeometryCacheComponent:GetDuration() end
---@return float
function UGeometryCacheComponent:GetAnimationTime() end


---@class UGeometryCacheTrack : UObject
---@field Duration float
local UGeometryCacheTrack = {}



---@class UGeometryCacheTrackStreamable : UGeometryCacheTrack
---@field Codec UGeometryCacheCodecBase
---@field StartSampleTime float
local UGeometryCacheTrackStreamable = {}



