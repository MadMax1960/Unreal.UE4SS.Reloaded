---@meta

---@class APaperCharacter : ACharacter
---@field Sprite UPaperFlipbookComponent
local APaperCharacter = {}



---@class APaperFlipbookActor : AActor
---@field RenderComponent UPaperFlipbookComponent
local APaperFlipbookActor = {}



---@class APaperGroupedSpriteActor : AActor
---@field RenderComponent UPaperGroupedSpriteComponent
local APaperGroupedSpriteActor = {}



---@class APaperSpriteActor : AActor
---@field RenderComponent UPaperSpriteComponent
local APaperSpriteActor = {}



---@class APaperTerrainActor : AActor
---@field DummyRoot USceneComponent
---@field SplineComponent UPaperTerrainSplineComponent
---@field RenderComponent UPaperTerrainComponent
local APaperTerrainActor = {}



---@class APaperTileMapActor : AActor
---@field RenderComponent UPaperTileMapComponent
local APaperTileMapActor = {}



---@class FIntMargin
---@field Left int32
---@field Top int32
---@field Right int32
---@field Bottom int32
local FIntMargin = {}



---@class FPaperFlipbookKeyFrame
---@field Sprite UPaperSprite
---@field FrameRun int32
local FPaperFlipbookKeyFrame = {}



---@class FPaperSpriteAtlasSlot
---@field SpriteRef TSoftObjectPtr<UPaperSprite>
---@field AtlasIndex int32
---@field X int32
---@field Y int32
---@field Width int32
---@field Height int32
local FPaperSpriteAtlasSlot = {}



---@class FPaperSpriteSocket
---@field LocalTransform FTransform
---@field SocketName FName
local FPaperSpriteSocket = {}



---@class FPaperTerrainMaterialRule
---@field StartCap UPaperSprite
---@field Body TArray<UPaperSprite>
---@field EndCap UPaperSprite
---@field MinimumAngle float
---@field MaximumAngle float
---@field bEnableCollision boolean
---@field CollisionOffset float
---@field DrawOrder int32
local FPaperTerrainMaterialRule = {}



---@class FPaperTileInfo
---@field TileSet UPaperTileSet
---@field PackedTileIndex int32
local FPaperTileInfo = {}



---@class FPaperTileMetadata
---@field UserDataName FName
---@field CollisionData FSpriteGeometryCollection
---@field TerrainMembership uint8
local FPaperTileMetadata = {}



---@class FPaperTileSetTerrain
---@field TerrainName FString
---@field CenterTileIndex int32
local FPaperTileSetTerrain = {}



---@class FSpriteAssetInitParameters
local FSpriteAssetInitParameters = {}


---@class FSpriteDrawCallRecord
---@field Destination FVector
---@field BaseTexture UTexture
---@field Color FColor
local FSpriteDrawCallRecord = {}



---@class FSpriteGeometryCollection
---@field Shapes TArray<FSpriteGeometryShape>
---@field GeometryType ESpritePolygonMode::Type
---@field PixelsPerSubdivisionX int32
---@field PixelsPerSubdivisionY int32
---@field bAvoidVertexMerging boolean
---@field AlphaThreshold float
---@field DetailAmount float
---@field SimplifyEpsilon float
local FSpriteGeometryCollection = {}



---@class FSpriteGeometryShape
---@field ShapeType ESpriteShapeType
---@field Vertices TArray<FVector2D>
---@field BoxSize FVector2D
---@field BoxPosition FVector2D
---@field Rotation float
---@field bNegativeWinding boolean
local FSpriteGeometryShape = {}



---@class FSpriteInstanceData
---@field Transform FMatrix
---@field SourceSprite UPaperSprite
---@field VertexColor FColor
---@field MaterialIndex int32
local FSpriteInstanceData = {}



---@class UMaterialExpressionSpriteTextureSampler : UMaterialExpressionTextureSampleParameter2D
---@field bSampleAdditionalTextures boolean
---@field AdditionalSlotIndex int32
---@field SlotDisplayName FText
local UMaterialExpressionSpriteTextureSampler = {}



---@class UPaperFlipbook : UObject
---@field FramesPerSecond float
---@field KeyFrames TArray<FPaperFlipbookKeyFrame>
---@field DefaultMaterial UMaterialInterface
---@field CollisionSource EFlipbookCollisionMode::Type
local UPaperFlipbook = {}

---@param Index int32
---@return boolean
function UPaperFlipbook:IsValidKeyFrameIndex(Index) end
---@return float
function UPaperFlipbook:GetTotalDuration() end
---@param Time float
---@param bClampToEnds boolean
---@return UPaperSprite
function UPaperFlipbook:GetSpriteAtTime(Time, bClampToEnds) end
---@param FrameIndex int32
---@return UPaperSprite
function UPaperFlipbook:GetSpriteAtFrame(FrameIndex) end
---@return int32
function UPaperFlipbook:GetNumKeyFrames() end
---@return int32
function UPaperFlipbook:GetNumFrames() end
---@param Time float
---@param bClampToEnds boolean
---@return int32
function UPaperFlipbook:GetKeyFrameIndexAtTime(Time, bClampToEnds) end


---@class UPaperFlipbookComponent : UMeshComponent
---@field SourceFlipbook UPaperFlipbook
---@field Material UMaterialInterface
---@field PlayRate float
---@field bLooping boolean
---@field bReversePlayback boolean
---@field bPlaying boolean
---@field AccumulatedTime float
---@field CachedFrameIndex int32
---@field SpriteColor FLinearColor
---@field CachedBodySetup UBodySetup
---@field OnFinishedPlaying FPaperFlipbookComponentOnFinishedPlaying
local UPaperFlipbookComponent = {}

function UPaperFlipbookComponent:Stop() end
---@param NewColor FLinearColor
function UPaperFlipbookComponent:SetSpriteColor(NewColor) end
---@param NewRate float
function UPaperFlipbookComponent:SetPlayRate(NewRate) end
---@param NewFramePosition int32
---@param bFireEvents boolean
function UPaperFlipbookComponent:SetPlaybackPositionInFrames(NewFramePosition, bFireEvents) end
---@param NewPosition float
---@param bFireEvents boolean
function UPaperFlipbookComponent:SetPlaybackPosition(NewPosition, bFireEvents) end
---@param NewTime float
function UPaperFlipbookComponent:SetNewTime(NewTime) end
---@param bNewLooping boolean
function UPaperFlipbookComponent:SetLooping(bNewLooping) end
---@param NewFlipbook UPaperFlipbook
---@return boolean
function UPaperFlipbookComponent:SetFlipbook(NewFlipbook) end
function UPaperFlipbookComponent:ReverseFromEnd() end
function UPaperFlipbookComponent:Reverse() end
function UPaperFlipbookComponent:PlayFromStart() end
function UPaperFlipbookComponent:Play() end
---@param OldFlipbook UPaperFlipbook
function UPaperFlipbookComponent:OnRep_SourceFlipbook(OldFlipbook) end
---@return boolean
function UPaperFlipbookComponent:IsReversing() end
---@return boolean
function UPaperFlipbookComponent:IsPlaying() end
---@return boolean
function UPaperFlipbookComponent:IsLooping() end
---@return FLinearColor
function UPaperFlipbookComponent:GetSpriteColor() end
---@return float
function UPaperFlipbookComponent:GetPlayRate() end
---@return int32
function UPaperFlipbookComponent:GetPlaybackPositionInFrames() end
---@return float
function UPaperFlipbookComponent:GetPlaybackPosition() end
---@return int32
function UPaperFlipbookComponent:GetFlipbookLengthInFrames() end
---@return float
function UPaperFlipbookComponent:GetFlipbookLength() end
---@return float
function UPaperFlipbookComponent:GetFlipbookFramerate() end
---@return UPaperFlipbook
function UPaperFlipbookComponent:GetFlipbook() end


---@class UPaperGroupedSpriteComponent : UMeshComponent
---@field InstanceMaterials TArray<UMaterialInterface>
---@field PerInstanceSpriteData TArray<FSpriteInstanceData>
local UPaperGroupedSpriteComponent = {}

---@param InstanceIndex int32
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UPaperGroupedSpriteComponent:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end
---@param InstanceIndex int32
---@param NewInstanceColor FLinearColor
---@param bMarkRenderStateDirty boolean
---@return boolean
function UPaperGroupedSpriteComponent:UpdateInstanceColor(InstanceIndex, NewInstanceColor, bMarkRenderStateDirty) end
---@param WorldSpaceSortAxis FVector
function UPaperGroupedSpriteComponent:SortInstancesAlongAxis(WorldSpaceSortAxis) end
---@param InstanceIndex int32
---@return boolean
function UPaperGroupedSpriteComponent:RemoveInstance(InstanceIndex) end
---@param InstanceIndex int32
---@param OutInstanceTransform FTransform
---@param bWorldSpace boolean
---@return boolean
function UPaperGroupedSpriteComponent:GetInstanceTransform(InstanceIndex, OutInstanceTransform, bWorldSpace) end
---@return int32
function UPaperGroupedSpriteComponent:GetInstanceCount() end
function UPaperGroupedSpriteComponent:ClearInstances() end
---@param Transform FTransform
---@param Sprite UPaperSprite
---@param bWorldSpace boolean
---@param Color FLinearColor
---@return int32
function UPaperGroupedSpriteComponent:AddInstance(Transform, Sprite, bWorldSpace, Color) end


---@class UPaperRuntimeSettings : UObject
---@field bEnableSpriteAtlasGroups boolean
---@field bEnableTerrainSplineEditing boolean
---@field bResizeSpriteDataToMatchTextures boolean
local UPaperRuntimeSettings = {}



---@class UPaperSprite : UObject
---@field AdditionalSourceTextures TArray<UTexture>
---@field BakedSourceUV FVector2D
---@field BakedSourceDimension FVector2D
---@field BakedSourceTexture UTexture2D
---@field DefaultMaterial UMaterialInterface
---@field AlternateMaterial UMaterialInterface
---@field Sockets TArray<FPaperSpriteSocket>
---@field SpriteCollisionDomain ESpriteCollisionMode::Type
---@field PixelsPerUnrealUnit float
---@field BodySetup UBodySetup
---@field AlternateMaterialSplitIndex int32
---@field BakedRenderData TArray<FVector4>
local UPaperSprite = {}



---@class UPaperSpriteAtlas : UObject
local UPaperSpriteAtlas = {}


---@class UPaperSpriteBlueprintLibrary : UBlueprintFunctionLibrary
local UPaperSpriteBlueprintLibrary = {}

---@param Sprite UPaperSprite
---@param Width int32
---@param Height int32
---@return FSlateBrush
function UPaperSpriteBlueprintLibrary:MakeBrushFromSprite(Sprite, Width, Height) end


---@class UPaperSpriteComponent : UMeshComponent
---@field SourceSprite UPaperSprite
---@field MaterialOverride UMaterialInterface
---@field SpriteColor FLinearColor
local UPaperSpriteComponent = {}

---@param NewColor FLinearColor
function UPaperSpriteComponent:SetSpriteColor(NewColor) end
---@param NewSprite UPaperSprite
---@return boolean
function UPaperSpriteComponent:SetSprite(NewSprite) end
---@return UPaperSprite
function UPaperSpriteComponent:GetSprite() end


---@class UPaperTerrainComponent : UPrimitiveComponent
---@field TerrainMaterial UPaperTerrainMaterial
---@field bClosedSpline boolean
---@field bFilledSpline boolean
---@field AssociatedSpline UPaperTerrainSplineComponent
---@field RandomSeed int32
---@field SegmentOverlapAmount float
---@field TerrainColor FLinearColor
---@field ReparamStepsPerSegment int32
---@field SpriteCollisionDomain ESpriteCollisionMode::Type
---@field CollisionThickness float
---@field CachedBodySetup UBodySetup
local UPaperTerrainComponent = {}

---@param NewColor FLinearColor
function UPaperTerrainComponent:SetTerrainColor(NewColor) end


---@class UPaperTerrainMaterial : UDataAsset
---@field Rules TArray<FPaperTerrainMaterialRule>
---@field InteriorFill UPaperSprite
local UPaperTerrainMaterial = {}



---@class UPaperTerrainSplineComponent : USplineComponent
local UPaperTerrainSplineComponent = {}


---@class UPaperTileLayer : UObject
---@field LayerName FText
---@field LayerWidth int32
---@field LayerHeight int32
---@field bHiddenInGame boolean
---@field bLayerCollides boolean
---@field bOverrideCollisionThickness boolean
---@field bOverrideCollisionOffset boolean
---@field CollisionThicknessOverride float
---@field CollisionOffsetOverride float
---@field LayerColor FLinearColor
---@field AllocatedWidth int32
---@field AllocatedHeight int32
---@field AllocatedCells TArray<FPaperTileInfo>
---@field TileSet UPaperTileSet
---@field AllocatedGrid TArray<int32>
local UPaperTileLayer = {}



---@class UPaperTileMap : UObject
---@field MapWidth int32
---@field MapHeight int32
---@field TileWidth int32
---@field TileHeight int32
---@field PixelsPerUnrealUnit float
---@field SeparationPerTileX float
---@field SeparationPerTileY float
---@field SeparationPerLayer float
---@field SelectedTileSet TSoftObjectPtr<UPaperTileSet>
---@field Material UMaterialInterface
---@field TileLayers TArray<UPaperTileLayer>
---@field CollisionThickness float
---@field SpriteCollisionDomain ESpriteCollisionMode::Type
---@field ProjectionMode ETileMapProjectionMode::Type
---@field HexSideLength int32
---@field BodySetup UBodySetup
---@field LayerNameIndex int32
local UPaperTileMap = {}



---@class UPaperTileMapComponent : UMeshComponent
---@field MapWidth int32
---@field MapHeight int32
---@field TileWidth int32
---@field TileHeight int32
---@field DefaultLayerTileSet UPaperTileSet
---@field Material UMaterialInterface
---@field TileLayers TArray<UPaperTileLayer>
---@field TileMapColor FLinearColor
---@field UseSingleLayerIndex int32
---@field bUseSingleLayer boolean
---@field TileMap UPaperTileMap
local UPaperTileMapComponent = {}

---@param NewColor FLinearColor
function UPaperTileMapComponent:SetTileMapColor(NewColor) end
---@param NewTileMap UPaperTileMap
---@return boolean
function UPaperTileMapComponent:SetTileMap(NewTileMap) end
---@param X int32
---@param Y int32
---@param Layer int32
---@param NewValue FPaperTileInfo
function UPaperTileMapComponent:SetTile(X, Y, Layer, NewValue) end
---@param NewColor FLinearColor
---@param Layer int32
function UPaperTileMapComponent:SetLayerColor(NewColor, Layer) end
---@param Layer int32
---@param bHasCollision boolean
---@param bOverrideThickness boolean
---@param CustomThickness float
---@param bOverrideOffset boolean
---@param CustomOffset float
---@param bRebuildCollision boolean
function UPaperTileMapComponent:SetLayerCollision(Layer, bHasCollision, bOverrideThickness, CustomThickness, bOverrideOffset, CustomOffset, bRebuildCollision) end
---@param Thickness float
---@param bRebuildCollision boolean
function UPaperTileMapComponent:SetDefaultCollisionThickness(Thickness, bRebuildCollision) end
---@param NewWidthInTiles int32
---@param NewHeightInTiles int32
function UPaperTileMapComponent:ResizeMap(NewWidthInTiles, NewHeightInTiles) end
function UPaperTileMapComponent:RebuildCollision() end
---@return boolean
function UPaperTileMapComponent:OwnsTileMap() end
function UPaperTileMapComponent:MakeTileMapEditable() end
---@param TileX int32
---@param TileY int32
---@param Points TArray<FVector>
---@param LayerIndex int32
---@param bWorldSpace boolean
function UPaperTileMapComponent:GetTilePolygon(TileX, TileY, Points, LayerIndex, bWorldSpace) end
---@return FLinearColor
function UPaperTileMapComponent:GetTileMapColor() end
---@param TileX int32
---@param TileY int32
---@param LayerIndex int32
---@param bWorldSpace boolean
---@return FVector
function UPaperTileMapComponent:GetTileCornerPosition(TileX, TileY, LayerIndex, bWorldSpace) end
---@param TileX int32
---@param TileY int32
---@param LayerIndex int32
---@param bWorldSpace boolean
---@return FVector
function UPaperTileMapComponent:GetTileCenterPosition(TileX, TileY, LayerIndex, bWorldSpace) end
---@param X int32
---@param Y int32
---@param Layer int32
---@return FPaperTileInfo
function UPaperTileMapComponent:GetTile(X, Y, Layer) end
---@param MapWidth int32
---@param MapHeight int32
---@param NumLayers int32
function UPaperTileMapComponent:GetMapSize(MapWidth, MapHeight, NumLayers) end
---@param Layer int32
---@return FLinearColor
function UPaperTileMapComponent:GetLayerColor(Layer) end
---@param MapWidth int32
---@param MapHeight int32
---@param TileWidth int32
---@param TileHeight int32
---@param PixelsPerUnrealUnit float
---@param bCreateLayer boolean
function UPaperTileMapComponent:CreateNewTileMap(MapWidth, MapHeight, TileWidth, TileHeight, PixelsPerUnrealUnit, bCreateLayer) end
---@return UPaperTileLayer
function UPaperTileMapComponent:AddNewLayer() end


---@class UPaperTileSet : UObject
---@field TileSize FIntPoint
---@field TileSheet UTexture2D
---@field AdditionalSourceTextures TArray<UTexture>
---@field BorderMargin FIntMargin
---@field PerTileSpacing FIntPoint
---@field DrawingOffset FIntPoint
---@field WidthInTiles int32
---@field HeightInTiles int32
---@field AllocatedWidth int32
---@field AllocatedHeight int32
---@field PerTileData TArray<FPaperTileMetadata>
---@field Terrains TArray<FPaperTileSetTerrain>
---@field TileWidth int32
---@field TileHeight int32
---@field Margin int32
---@field Spacing int32
local UPaperTileSet = {}



---@class UTileMapBlueprintLibrary : UBlueprintFunctionLibrary
local UTileMapBlueprintLibrary = {}

---@param TileIndex int32
---@param TileSet UPaperTileSet
---@param bFlipH boolean
---@param bFlipV boolean
---@param bFlipD boolean
---@return FPaperTileInfo
function UTileMapBlueprintLibrary:MakeTile(TileIndex, TileSet, bFlipH, bFlipV, bFlipD) end
---@param Tile FPaperTileInfo
---@return FName
function UTileMapBlueprintLibrary:GetTileUserData(Tile) end
---@param Tile FPaperTileInfo
---@return FTransform
function UTileMapBlueprintLibrary:GetTileTransform(Tile) end
---@param Tile FPaperTileInfo
---@param TileIndex int32
---@param TileSet UPaperTileSet
---@param bFlipH boolean
---@param bFlipV boolean
---@param bFlipD boolean
function UTileMapBlueprintLibrary:BreakTile(Tile, TileIndex, TileSet, bFlipH, bFlipV, bFlipD) end


