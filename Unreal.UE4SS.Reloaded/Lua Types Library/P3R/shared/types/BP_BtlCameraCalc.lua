---@meta

---@class UBP_BtlCameraCalc_C : UAppActorComponent
---@field TargetManager UBP_BtlTargetManager_C
---@field CommonCameraParam UDataTable
---@field CameraStart FTransform
---@field CameraGoal FTransform
---@field MinCylinderRadius float
---@field LatestCamData FBtlCalcCameraData
---@field CriticalCameraParam UDataTable
---@field LatestAddParam FFBtlCamCalcAddParam
---@field BtlCore UBtlCoreComponent
---@field CommonCameraParam_Astrea UDataTable
---@field CriticalCameraParam_Astrea UDataTable
local UBP_BtlCameraCalc_C = {}

---@param SearchCamera FName
---@param BtlCore UBtlCoreComponent
---@param Found boolean
function UBP_BtlCameraCalc_C:SearchBossCamera(SearchCamera, BtlCore, Found) end
---@param DirectToOrigin boolean
---@param CylinderCenter FVector
---@param CylinderRotate float
---@param DirectToLookedAtChara boolean
---@param Rotate float
UBP_BtlCameraCalc_C['Calc Direct'] = function(self, DirectToOrigin, CylinderCenter, CylinderRotate, DirectToLookedAtChara, Rotate) end
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
function UBP_BtlCameraCalc_C:GetFieldCylinder(Bottom_Center, Radius, Height) end
---@param Curve UCurveFloat
function UBP_BtlCameraCalc_C:GetCamAnimCurve(Curve) end
---@param Z__Yaw_ float
function UBP_BtlCameraCalc_C:GetTargetsRotate(Z__Yaw_) end
---@param need boolean
function UBP_BtlCameraCalc_C:CheckNeedToReflesh(need) end
---@param Chara TArray<ABP_BtlCharacterBase_C>
---@param Type EBtlCalcCameraLookAtType
---@param HeightRatio float
---@param UseCommonCylinder boolean
---@param Location FVector
function UBP_BtlCameraCalc_C:CalcLookAtPos(Chara, Type, HeightRatio, UseCommonCylinder, Location) end
---@param RowName FName
---@param UseLastCamData boolean
---@param BtlCore UBtlCoreComponent
---@param AddParam FFBtlCamCalcAddParam
---@param AnimTime float
function UBP_BtlCameraCalc_C:CalcCamData(RowName, UseLastCamData, BtlCore, AddParam, AnimTime) end
---@param Param FBtlCalcCameraPosParam
---@param Alpha float
function UBP_BtlCameraCalc_C:GetLookAtRatio(Param, Alpha) end
---@param CameraStart FTransform
---@param CameraGoal FTransform
function UBP_BtlCameraCalc_C:GetCalculatedTrans(CameraStart, CameraGoal) end
---@param Location FVector
---@param Lookat FVector
---@param Roll float
---@param Pan float
---@param Pan_V float
---@param SlideX float
function UBP_BtlCameraCalc_C:SetGoalCameraPosition(Location, Lookat, Roll, Pan, Pan_V, SlideX) end
---@param Location FVector
---@param Lookat FVector
---@param Roll float
---@param Pan float
---@param Pan_V float
---@param SlideX float
function UBP_BtlCameraCalc_C:SetStartCameraPosition(Location, Lookat, Roll, Pan, Pan_V, SlideX) end
---@param Location FVector
---@param Lookat FVector
---@param Roll float
---@param Pan float
---@param Pan_V float
---@param SlideX float
---@param trans FTransform
function UBP_BtlCameraCalc_C:MakeCameraTrans(Location, Lookat, Roll, Pan, Pan_V, SlideX, trans) end
---@param Alpha float
---@param Param FBtlCalcCameraPosParam
---@param AddParam FFBtlCamCalcAddParam
---@param LookAtLocation FVector
function UBP_BtlCameraCalc_C:LookAtLine(Alpha, Param, AddParam, LookAtLocation) end
---@param UseCommonCylinder boolean
---@param ExceptPersonaCylinder boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
function UBP_BtlCameraCalc_C:GetAllCylinder(UseCommonCylinder, ExceptPersonaCylinder, Bottom_Center, Radius, Height) end
---@param Z__Yaw_ float
function UBP_BtlCameraCalc_C:GetEnchanterRotate(Z__Yaw_) end
---@param CylinderType EBtlCalcCameraCylinderType
---@param TargetType EBtlCalcCameraCylinderType
function UBP_BtlCameraCalc_C:CalcCylinderRotation(CylinderType, TargetType) end
---@param BottomCenter FVector
---@param Radius float
---@param Height float
---@param CylinderRotate float
---@param degree float
---@param RadiusRatio float
---@param RadiusAdd float
---@param RadiusAddHeightRatio float
---@param HeightRatio float
---@param HeightBlendToDefault float
---@param HeightAddRadiusRatio float
---@param HeightDefault float
---@param Location FVector
function UBP_BtlCameraCalc_C:CalcCylinderLocation(BottomCenter, Radius, Height, CylinderRotate, degree, RadiusRatio, RadiusAdd, RadiusAddHeightRatio, HeightRatio, HeightBlendToDefault, HeightAddRadiusRatio, HeightDefault, Location) end
---@param CalcParam FBtlCalcCameraPosParam
---@param AddParam FFBtlCamCalcAddParam
---@param Location FVector
function UBP_BtlCameraCalc_C:CalcCylinderCamPos(CalcParam, AddParam, Location) end
---@param UseCommonCylinder boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
function UBP_BtlCameraCalc_C:GetTargetsCylinder(UseCommonCylinder, Bottom_Center, Radius, Height) end
---@param UseCommonCylinder boolean
---@param ExceptPersona boolean
---@param Bottom_Center FVector
---@param Radius float
---@param Height float
function UBP_BtlCameraCalc_C:GetEnchanterCylinder(UseCommonCylinder, ExceptPersona, Bottom_Center, Radius, Height) end


