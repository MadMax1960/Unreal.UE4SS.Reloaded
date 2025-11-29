---@meta

---@class FAdaptorPolygon
---@field PolygonGroupID FPolygonGroupID
---@field TriangulatedPolygonTriangleIndices TArray<FAdaptorTriangleID>
local FAdaptorPolygon = {}



---@class FAdaptorPolygon2Group
---@field RenderingSectionIndex uint32
---@field MaterialIndex int32
---@field MaxTriangles int32
local FAdaptorPolygon2Group = {}



---@class FAdaptorTriangleID : FElementID
local FAdaptorTriangleID = {}


---@class FAttributesForEdge
---@field EdgeID FEdgeID
---@field EdgeAttributes FMeshElementAttributeList
local FAttributesForEdge = {}



---@class FAttributesForVertex
---@field VertexID FVertexID
---@field VertexAttributes FMeshElementAttributeList
local FAttributesForVertex = {}



---@class FAttributesForVertexInstance
---@field VertexInstanceID FVertexInstanceID
---@field VertexInstanceAttributes FMeshElementAttributeList
local FAttributesForVertexInstance = {}



---@class FChangeVertexInstancesForPolygon
---@field PolygonID FPolygonID
---@field PerimeterVertexIndicesAndInstanceIDs TArray<FVertexIndexAndInstanceID>
---@field VertexIndicesAndInstanceIDsForEachHole TArray<FVertexInstancesForPolygonHole>
local FChangeVertexInstancesForPolygon = {}



---@class FEdgeToCreate
---@field VertexID0 FVertexID
---@field VertexID1 FVertexID
---@field EdgeAttributes FMeshElementAttributeList
---@field OriginalEdgeID FEdgeID
local FEdgeToCreate = {}



---@class FMeshElementAttributeData
---@field AttributeName FName
---@field AttributeIndex int32
---@field AttributeValue FMeshElementAttributeValue
local FMeshElementAttributeData = {}



---@class FMeshElementAttributeList
---@field Attributes TArray<FMeshElementAttributeData>
local FMeshElementAttributeList = {}



---@class FMeshElementAttributeValue
local FMeshElementAttributeValue = {}


---@class FPolygonGroupForPolygon
---@field PolygonID FPolygonID
---@field PolygonGroupID FPolygonGroupID
local FPolygonGroupForPolygon = {}



---@class FPolygonGroupToCreate
---@field PolygonGroupAttributes FMeshElementAttributeList
---@field OriginalPolygonGroupID FPolygonGroupID
local FPolygonGroupToCreate = {}



---@class FPolygonToCreate
---@field PolygonGroupID FPolygonGroupID
---@field PerimeterVertices TArray<FVertexAndAttributes>
---@field OriginalPolygonID FPolygonID
---@field PolygonEdgeHardness EPolygonEdgeHardness
local FPolygonToCreate = {}



---@class FPolygonToSplit
---@field PolygonID FPolygonID
---@field VertexPairsToSplitAt TArray<FVertexPair>
local FPolygonToSplit = {}



---@class FRenderingPolygon
---@field PolygonGroupID FPolygonGroupID
---@field TriangulatedPolygonTriangleIndices TArray<FTriangleID>
local FRenderingPolygon = {}



---@class FRenderingPolygonGroup
---@field RenderingSectionIndex uint32
---@field MaterialIndex int32
---@field MaxTriangles int32
local FRenderingPolygonGroup = {}



---@class FSubdividedQuad
---@field QuadVertex0 FSubdividedQuadVertex
---@field QuadVertex1 FSubdividedQuadVertex
---@field QuadVertex2 FSubdividedQuadVertex
---@field QuadVertex3 FSubdividedQuadVertex
local FSubdividedQuad = {}



---@class FSubdividedQuadVertex
---@field VertexPositionIndex int32
---@field TextureCoordinate0 FVector2D
---@field TextureCoordinate1 FVector2D
---@field VertexColor FColor
---@field VertexNormal FVector
---@field VertexTangent FVector
---@field VertexBinormalSign float
local FSubdividedQuadVertex = {}



---@class FSubdividedWireEdge
---@field EdgeVertex0PositionIndex int32
---@field EdgeVertex1PositionIndex int32
local FSubdividedWireEdge = {}



---@class FSubdivisionLimitData
---@field VertexPositions TArray<FVector>
---@field Sections TArray<FSubdivisionLimitSection>
---@field SubdividedWireEdges TArray<FSubdividedWireEdge>
local FSubdivisionLimitData = {}



---@class FSubdivisionLimitSection
---@field SubdividedQuads TArray<FSubdividedQuad>
local FSubdivisionLimitSection = {}



---@class FVertexAndAttributes
---@field VertexInstanceID FVertexInstanceID
---@field VertexID FVertexID
---@field PolygonVertexAttributes FMeshElementAttributeList
local FVertexAndAttributes = {}



---@class FVertexAttributesForPolygon
---@field PolygonID FPolygonID
---@field PerimeterVertexAttributeLists TArray<FMeshElementAttributeList>
---@field VertexAttributeListsForEachHole TArray<FVertexAttributesForPolygonHole>
local FVertexAttributesForPolygon = {}



---@class FVertexAttributesForPolygonHole
---@field VertexAttributeList TArray<FMeshElementAttributeList>
local FVertexAttributesForPolygonHole = {}



---@class FVertexIndexAndInstanceID
---@field ContourIndex int32
---@field VertexInstanceID FVertexInstanceID
local FVertexIndexAndInstanceID = {}



---@class FVertexInstanceToCreate
---@field VertexID FVertexID
---@field VertexInstanceAttributes FMeshElementAttributeList
---@field OriginalVertexInstanceID FVertexInstanceID
local FVertexInstanceToCreate = {}



---@class FVertexInstancesForPolygonHole
---@field VertexIndicesAndInstanceIDs TArray<FVertexIndexAndInstanceID>
local FVertexInstancesForPolygonHole = {}



---@class FVertexPair
---@field VertexID0 FVertexID
---@field VertexID1 FVertexID
local FVertexPair = {}



---@class FVertexToCreate
---@field VertexAttributes FMeshElementAttributeList
---@field OriginalVertexID FVertexID
local FVertexToCreate = {}



---@class FVertexToMove
---@field VertexID FVertexID
---@field NewVertexPosition FVector
local FVertexToMove = {}



---@class UEditableGeometryCollectionAdapter : UEditableMeshAdapter
---@field GeometryCollection UGeometryCollection
---@field OriginalGeometryCollection UGeometryCollection
---@field GeometryCollectionLODIndex int32
local UEditableGeometryCollectionAdapter = {}



---@class UEditableMesh : UObject
---@field Adapters TArray<UEditableMeshAdapter>
---@field TextureCoordinateCount int32
---@field PendingCompactCounter int32
---@field SubdivisionCount int32
local UEditableMesh = {}

---@param VertexIDs TArray<FVertexID>
---@param OutNewVertexID FVertexID
function UEditableMesh:WeldVertices(VertexIDs, OutNewVertexID) end
---@param VertexID FVertexID
---@param bOutWasVertexRemoved boolean
---@param OutNewEdgeID FEdgeID
function UEditableMesh:TryToRemoveVertex(VertexID, bOutWasVertexRemoved, OutNewEdgeID) end
---@param EdgeID FEdgeID
---@param bOutWasEdgeRemoved boolean
---@param OutNewPolygonID FPolygonID
function UEditableMesh:TryToRemovePolygonEdge(EdgeID, bOutWasEdgeRemoved, OutNewPolygonID) end
---@param PolygonIDs TArray<FPolygonID>
---@param OutNewTrianglePolygons TArray<FPolygonID>
function UEditableMesh:TriangulatePolygons(PolygonIDs, OutNewTrianglePolygons) end
---@param PolygonIDs TArray<FPolygonID>
---@param TriangleTessellationMode ETriangleTessellationMode
---@param OutNewPolygonIDs TArray<FPolygonID>
function UEditableMesh:TessellatePolygons(PolygonIDs, TriangleTessellationMode, OutNewPolygonIDs) end
---@param MeshModificationType EMeshModificationType
---@param MeshTopologyChange EMeshTopologyChange
function UEditableMesh:StartModification(MeshModificationType, MeshTopologyChange) end
---@param PolygonsToSplit TArray<FPolygonToSplit>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:SplitPolygons(PolygonsToSplit, OutNewEdgeIDs) end
---@param InPlane FPlane
---@param PolygonIDs1 TArray<FPolygonID>
---@param PolygonIDs2 TArray<FPolygonID>
---@param BoundaryIDs TArray<FEdgeID>
function UEditableMesh:SplitPolygonalMesh(InPlane, PolygonIDs1, PolygonIDs2, BoundaryIDs) end
---@param EdgeID FEdgeID
---@param Splits TArray<float>
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:SplitEdge(EdgeID, Splits, OutNewVertexIDs) end
---@param VertexIDs TArray<FVertexID>
---@param VerticesNewCornerSharpness TArray<float>
function UEditableMesh:SetVerticesCornerSharpness(VertexIDs, VerticesNewCornerSharpness) end
---@param AttributesForVertices TArray<FAttributesForVertex>
function UEditableMesh:SetVerticesAttributes(AttributesForVertices) end
---@param AttributesForVertexInstances TArray<FAttributesForVertexInstance>
function UEditableMesh:SetVertexInstancesAttributes(AttributesForVertexInstances) end
---@param NumTexCoords int32
function UEditableMesh:SetTextureCoordinateCount(NumTexCoords) end
---@param NewSubdivisionCount int32
function UEditableMesh:SetSubdivisionCount(NewSubdivisionCount) end
---@param VertexAttributesForPolygons TArray<FVertexAttributesForPolygon>
function UEditableMesh:SetPolygonsVertexAttributes(VertexAttributesForPolygons) end
---@param EdgeIDs TArray<FEdgeID>
---@param MaxDotProductForSoftEdge float
function UEditableMesh:SetEdgesHardnessAutomatically(EdgeIDs, MaxDotProductForSoftEdge) end
---@param EdgeIDs TArray<FEdgeID>
---@param EdgesNewIsHard TArray<boolean>
function UEditableMesh:SetEdgesHardness(EdgeIDs, EdgesNewIsHard) end
---@param EdgeIDs TArray<FEdgeID>
---@param EdgesNewCreaseSharpness TArray<float>
function UEditableMesh:SetEdgesCreaseSharpness(EdgeIDs, EdgesNewCreaseSharpness) end
---@param AttributesForEdges TArray<FAttributesForEdge>
function UEditableMesh:SetEdgesAttributes(AttributesForEdges) end
---@param bInAllowUndo boolean
function UEditableMesh:SetAllowUndo(bInAllowUndo) end
---@param bInAllowSpatialDatabase boolean
function UEditableMesh:SetAllowSpatialDatabase(bInAllowSpatialDatabase) end
---@param bInAllowCompact boolean
function UEditableMesh:SetAllowCompact(bInAllowCompact) end
---@param InPlane FPlane
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingPlane(InPlane, OutPolygons) end
---@param LineSegmentStart FVector
---@param LineSegmentEnd FVector
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingLineSegment(LineSegmentStart, LineSegmentEnd, OutPolygons) end
---@param Planes TArray<FPlane>
---@param OutPolygons TArray<FPolygonID>
function UEditableMesh:SearchSpatialDatabaseForPolygonsInVolume(Planes, OutPolygons) end
---@return UEditableMesh
function UEditableMesh:RevertInstance() end
function UEditableMesh:Revert() end
function UEditableMesh:RebuildRenderMesh() end
---@param OutNewPolygonIDs TArray<FPolygonID>
function UEditableMesh:QuadrangulateMesh(OutNewPolygonIDs) end
function UEditableMesh:PropagateInstanceChanges() end
---@param VerticesToMove TArray<FVertexToMove>
function UEditableMesh:MoveVertices(VerticesToMove) end
---@param VertexIndex int32
---@return FVertexID
function UEditableMesh:MakeVertexID(VertexIndex) end
---@param PolygonIndex int32
---@return FPolygonID
function UEditableMesh:MakePolygonID(PolygonIndex) end
---@param PolygonGroupIndex int32
---@return FPolygonGroupID
function UEditableMesh:MakePolygonGroupID(PolygonGroupIndex) end
---@param EdgeIndex int32
---@return FEdgeID
function UEditableMesh:MakeEdgeID(EdgeIndex) end
---@param VertexID FVertexID
---@return boolean
function UEditableMesh:IsValidVertex(VertexID) end
---@param PolygonGroupID FPolygonGroupID
---@return boolean
function UEditableMesh:IsValidPolygonGroup(PolygonGroupID) end
---@param PolygonID FPolygonID
---@return boolean
function UEditableMesh:IsValidPolygon(PolygonID) end
---@param EdgeID FEdgeID
---@return boolean
function UEditableMesh:IsValidEdge(EdgeID) end
---@return boolean
function UEditableMesh:IsUndoAllowed() end
---@return boolean
function UEditableMesh:IsSpatialDatabaseAllowed() end
---@return boolean
function UEditableMesh:IsPreviewingSubdivisions() end
---@param VertexID FVertexID
---@return boolean
function UEditableMesh:IsOrphanedVertex(VertexID) end
---@return boolean
function UEditableMesh:IsCompactAllowed() end
---@return boolean
function UEditableMesh:IsCommittedAsInstance() end
---@return boolean
function UEditableMesh:IsCommitted() end
---@return boolean
function UEditableMesh:IsBeingModified() end
---@return FVertexID
function UEditableMesh:InvalidVertexID() end
---@return FPolygonID
function UEditableMesh:InvalidPolygonID() end
---@return FPolygonGroupID
function UEditableMesh:InvalidPolygonGroupID() end
---@return FEdgeID
function UEditableMesh:InvalidEdgeID() end
---@param PolygonIDs TArray<FPolygonID>
---@param InsetFixedDistance float
---@param InsetProgressTowardCenter float
---@param Mode EInsetPolygonsMode
---@param OutNewCenterPolygonIDs TArray<FPolygonID>
---@param OutNewSidePolygonIDs TArray<FPolygonID>
function UEditableMesh:InsetPolygons(PolygonIDs, InsetFixedDistance, InsetProgressTowardCenter, Mode, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end
---@param EdgeID FEdgeID
---@param Splits TArray<float>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:InsertEdgeLoop(EdgeID, Splits, OutNewEdgeIDs) end
function UEditableMesh:InitializeAdapters() end
---@param VertexID FVertexID
---@param NextVertexID FVertexID
---@param bOutEdgeWindingIsReversed boolean
---@return FEdgeID
function UEditableMesh:GetVertexPairEdge(VertexID, NextVertexID, bOutEdgeWindingIsReversed) end
---@param VertexInstanceID FVertexInstanceID
---@return FVertexID
function UEditableMesh:GetVertexInstanceVertex(VertexInstanceID) end
---@return int32
function UEditableMesh:GetVertexInstanceCount() end
---@param VertexInstanceID FVertexInstanceID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetVertexInstanceConnectedPolygons(VertexInstanceID, OutConnectedPolygonIDs) end
---@param VertexInstanceID FVertexInstanceID
---@return int32
function UEditableMesh:GetVertexInstanceConnectedPolygonCount(VertexInstanceID) end
---@param VertexInstanceID FVertexInstanceID
---@param ConnectedPolygonNumber int32
---@return FPolygonID
function UEditableMesh:GetVertexInstanceConnectedPolygon(VertexInstanceID, ConnectedPolygonNumber) end
---@return int32
function UEditableMesh:GetVertexCount() end
---@param VertexID FVertexID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetVertexConnectedPolygons(VertexID, OutConnectedPolygonIDs) end
---@param VertexID FVertexID
---@param OutConnectedEdgeIDs TArray<FEdgeID>
function UEditableMesh:GetVertexConnectedEdges(VertexID, OutConnectedEdgeIDs) end
---@param VertexID FVertexID
---@return int32
function UEditableMesh:GetVertexConnectedEdgeCount(VertexID) end
---@param VertexID FVertexID
---@param ConnectedEdgeNumber int32
---@return FEdgeID
function UEditableMesh:GetVertexConnectedEdge(VertexID, ConnectedEdgeNumber) end
---@param VertexID FVertexID
---@param OutAdjacentVertexIDs TArray<FVertexID>
function UEditableMesh:GetVertexAdjacentVertices(VertexID, OutAdjacentVertexIDs) end
---@return int32
function UEditableMesh:GetTextureCoordinateCount() end
---@return FSubdivisionLimitData
function UEditableMesh:GetSubdivisionLimitData() end
---@return int32
function UEditableMesh:GetSubdivisionCount() end
---@param PolygonID FPolygonID
---@return int32
function UEditableMesh:GetPolygonTriangulatedTriangleCount(PolygonID) end
---@param PolygonID FPolygonID
---@param PolygonTriangleNumber int32
---@return FTriangleID
function UEditableMesh:GetPolygonTriangulatedTriangle(PolygonID, PolygonTriangleNumber) end
---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexIDs TArray<FVertexID>
function UEditableMesh:GetPolygonPerimeterVertices(PolygonID, OutPolygonPerimeterVertexIDs) end
---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexInstanceIDs TArray<FVertexInstanceID>
function UEditableMesh:GetPolygonPerimeterVertexInstances(PolygonID, OutPolygonPerimeterVertexInstanceIDs) end
---@param PolygonID FPolygonID
---@param PolygonVertexNumber int32
---@return FVertexInstanceID
function UEditableMesh:GetPolygonPerimeterVertexInstance(PolygonID, PolygonVertexNumber) end
---@param PolygonID FPolygonID
---@return int32
function UEditableMesh:GetPolygonPerimeterVertexCount(PolygonID) end
---@param PolygonID FPolygonID
---@param PolygonVertexNumber int32
---@return FVertexID
function UEditableMesh:GetPolygonPerimeterVertex(PolygonID, PolygonVertexNumber) end
---@param PolygonID FPolygonID
---@param OutPolygonPerimeterEdgeIDs TArray<FEdgeID>
function UEditableMesh:GetPolygonPerimeterEdges(PolygonID, OutPolygonPerimeterEdgeIDs) end
---@param PolygonID FPolygonID
---@return int32
function UEditableMesh:GetPolygonPerimeterEdgeCount(PolygonID) end
---@param PolygonID FPolygonID
---@param PerimeterEdgeNumber int32
---@param bOutEdgeWindingIsReversedForPolygon boolean
---@return FEdgeID
function UEditableMesh:GetPolygonPerimeterEdge(PolygonID, PerimeterEdgeNumber, bOutEdgeWindingIsReversedForPolygon) end
---@param PolygonGroupID FPolygonGroupID
---@param PolygonNumber int32
---@return FPolygonID
function UEditableMesh:GetPolygonInGroup(PolygonGroupID, PolygonNumber) end
---@return int32
function UEditableMesh:GetPolygonGroupCount() end
---@param PolygonGroupID FPolygonGroupID
---@return int32
function UEditableMesh:GetPolygonCountInGroup(PolygonGroupID) end
---@return int32
function UEditableMesh:GetPolygonCount() end
---@param PolygonID FPolygonID
---@param OutAdjacentPolygons TArray<FPolygonID>
function UEditableMesh:GetPolygonAdjacentPolygons(PolygonID, OutAdjacentPolygons) end
---@param PolygonID FPolygonID
---@return FPolygonGroupID
function UEditableMesh:GetGroupForPolygon(PolygonID) end
---@return FPolygonGroupID
function UEditableMesh:GetFirstValidPolygonGroup() end
---@param EdgeID FEdgeID
---@param OutEdgeVertexID0 FVertexID
---@param OutEdgeVertexID1 FVertexID
function UEditableMesh:GetEdgeVertices(EdgeID, OutEdgeVertexID0, OutEdgeVertexID1) end
---@param EdgeID FEdgeID
---@param EdgeVertexNumber int32
---@return FVertexID
function UEditableMesh:GetEdgeVertex(EdgeID, EdgeVertexNumber) end
---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
---@return FEdgeID
function UEditableMesh:GetEdgeThatConnectsVertices(VertexID0, VertexID1) end
---@param EdgeID FEdgeID
---@param EdgeLoopIDs TArray<FEdgeID>
function UEditableMesh:GetEdgeLoopElements(EdgeID, EdgeLoopIDs) end
---@return int32
function UEditableMesh:GetEdgeCount() end
---@param EdgeID FEdgeID
---@param OutConnectedPolygonIDs TArray<FPolygonID>
function UEditableMesh:GetEdgeConnectedPolygons(EdgeID, OutConnectedPolygonIDs) end
---@param EdgeID FEdgeID
---@return int32
function UEditableMesh:GetEdgeConnectedPolygonCount(EdgeID) end
---@param EdgeID FEdgeID
---@param ConnectedPolygonNumber int32
---@return FPolygonID
function UEditableMesh:GetEdgeConnectedPolygon(EdgeID, ConnectedPolygonNumber) end
---@param PolygonIDs TArray<FPolygonID>
function UEditableMesh:GeneratePolygonTangentsAndNormals(PolygonIDs) end
---@param PolygonIDs TArray<FPolygonID>
function UEditableMesh:FlipPolygons(PolygonIDs) end
---@param PolygonID FPolygonID
---@param VertexID FVertexID
---@return int32
function UEditableMesh:FindPolygonPerimeterVertexNumberForVertex(PolygonID, VertexID) end
---@param PolygonID FPolygonID
---@param EdgeVertexID0 FVertexID
---@param EdgeVertexID1 FVertexID
---@return int32
function UEditableMesh:FindPolygonPerimeterEdgeNumberForVertices(PolygonID, EdgeVertexID0, EdgeVertexID1) end
---@param EdgeID FEdgeID
---@param OutEdgeLoopEdgeIDs TArray<FEdgeID>
---@param OutFlippedEdgeIDs TArray<FEdgeID>
---@param OutReversedEdgeIDPathToTake TArray<FEdgeID>
---@param OutPolygonIDsToSplit TArray<FPolygonID>
function UEditableMesh:FindPolygonLoop(EdgeID, OutEdgeLoopEdgeIDs, OutFlippedEdgeIDs, OutReversedEdgeIDPathToTake, OutPolygonIDsToSplit) end
---@param Polygons TArray<FPolygonID>
---@param ExtrudeDistance float
---@param bKeepNeighborsTogether boolean
---@param OutNewExtrudedFrontPolygons TArray<FPolygonID>
function UEditableMesh:ExtrudePolygons(Polygons, ExtrudeDistance, bKeepNeighborsTogether, OutNewExtrudedFrontPolygons) end
---@param VertexIDs TArray<FVertexID>
---@param bOnlyExtendClosestEdge boolean
---@param ReferencePosition FVector
---@param OutNewExtendedVertexIDs TArray<FVertexID>
function UEditableMesh:ExtendVertices(VertexIDs, bOnlyExtendClosestEdge, ReferencePosition, OutNewExtendedVertexIDs) end
---@param EdgeIDs TArray<FEdgeID>
---@param bWeldNeighbors boolean
---@param OutNewExtendedEdgeIDs TArray<FEdgeID>
function UEditableMesh:ExtendEdges(EdgeIDs, bWeldNeighbors, OutNewExtendedEdgeIDs) end
---@param bFromUndo boolean
function UEditableMesh:EndModification(bFromUndo) end
---@param VertexInstanceIDsToDelete TArray<FVertexInstanceID>
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteVertexInstances(VertexInstanceIDsToDelete, bDeleteOrphanedVertices) end
---@param VertexID FVertexID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteVertexAndConnectedEdgesAndPolygons(VertexID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end
---@param PolygonIDsToDelete TArray<FPolygonID>
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeletePolygons(PolygonIDsToDelete, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end
---@param PolygonGroupIDs TArray<FPolygonGroupID>
function UEditableMesh:DeletePolygonGroups(PolygonGroupIDs) end
---@param VertexIDsToDelete TArray<FVertexID>
function UEditableMesh:DeleteOrphanVertices(VertexIDsToDelete) end
---@param EdgeIDsToDelete TArray<FEdgeID>
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteEdges(EdgeIDsToDelete, bDeleteOrphanedVertices) end
---@param EdgeID FEdgeID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteEdgeAndConnectedPolygons(EdgeID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end
---@param VerticesToCreate TArray<FVertexToCreate>
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:CreateVertices(VerticesToCreate, OutNewVertexIDs) end
---@param VertexInstancesToCreate TArray<FVertexInstanceToCreate>
---@param OutNewVertexInstanceIDs TArray<FVertexInstanceID>
function UEditableMesh:CreateVertexInstances(VertexInstancesToCreate, OutNewVertexInstanceIDs) end
---@param PolygonsToCreate TArray<FPolygonToCreate>
---@param OutNewPolygonIDs TArray<FPolygonID>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreatePolygons(PolygonsToCreate, OutNewPolygonIDs, OutNewEdgeIDs) end
---@param PolygonGroupsToCreate TArray<FPolygonGroupToCreate>
---@param OutNewPolygonGroupIDs TArray<FPolygonGroupID>
function UEditableMesh:CreatePolygonGroups(PolygonGroupsToCreate, OutNewPolygonGroupIDs) end
---@param PolygonID FPolygonID
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreateMissingPolygonPerimeterEdges(PolygonID, OutNewEdgeIDs) end
---@param NumVerticesToCreate int32
---@param OutNewVertexIDs TArray<FVertexID>
function UEditableMesh:CreateEmptyVertexRange(NumVerticesToCreate, OutNewVertexIDs) end
---@param EdgesToCreate TArray<FEdgeToCreate>
---@param OutNewEdgeIDs TArray<FEdgeID>
function UEditableMesh:CreateEdges(EdgesToCreate, OutNewEdgeIDs) end
---@param PolygonIDs TArray<FPolygonID>
---@param OutSharedEdgeIDs TArray<FEdgeID>
function UEditableMesh:ComputePolygonsSharedEdges(PolygonIDs, OutSharedEdgeIDs) end
---@param PolygonID FPolygonID
---@return FPlane
function UEditableMesh:ComputePolygonPlane(PolygonID) end
---@param PolygonID FPolygonID
---@return FVector
function UEditableMesh:ComputePolygonNormal(PolygonID) end
---@param PolygonID FPolygonID
---@return FVector
function UEditableMesh:ComputePolygonCenter(PolygonID) end
---@return FBoxSphereBounds
function UEditableMesh:ComputeBoundingBoxAndSphere() end
---@return FBox
function UEditableMesh:ComputeBoundingBox() end
---@param ComponentToInstanceTo UPrimitiveComponent
---@return UEditableMesh
function UEditableMesh:CommitInstance(ComponentToInstanceTo) end
function UEditableMesh:Commit() end
---@param VertexInstancesForPolygons TArray<FChangeVertexInstancesForPolygon>
function UEditableMesh:ChangePolygonsVertexInstances(VertexInstancesForPolygons) end
---@param PolygonIDs TArray<FPolygonID>
---@param BevelFixedDistance float
---@param BevelProgressTowardCenter float
---@param OutNewCenterPolygonIDs TArray<FPolygonID>
---@param OutNewSidePolygonIDs TArray<FPolygonID>
function UEditableMesh:BevelPolygons(PolygonIDs, BevelFixedDistance, BevelProgressTowardCenter, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end
---@param PolygonGroupForPolygons TArray<FPolygonGroupForPolygon>
---@param bDeleteOrphanedPolygonGroups boolean
function UEditableMesh:AssignPolygonsToPolygonGroups(PolygonGroupForPolygons, bDeleteOrphanedPolygonGroups) end
---@return boolean
function UEditableMesh:AnyChangesToUndo() end


---@class UEditableMeshAdapter : UObject
local UEditableMeshAdapter = {}


---@class UEditableMeshFactory : UObject
local UEditableMeshFactory = {}

---@param PrimitiveComponent UPrimitiveComponent
---@param LODIndex int32
---@return UEditableMesh
function UEditableMeshFactory:MakeEditableMesh(PrimitiveComponent, LODIndex) end


---@class UEditableStaticMeshAdapter : UEditableMeshAdapter
---@field StaticMesh UStaticMesh
---@field OriginalStaticMesh UStaticMesh
---@field StaticMeshLODIndex int32
local UEditableStaticMeshAdapter = {}



