/**
 * Created 2015-11-06 by Ethan Smith
 */


/*------------------------
 * HARDWARE
 *----------------------*/

BatteryThickness = 3.2;
BatteryThicknessBuffer = 1;
BatteryDiameter = 21;
BatteryGripSize = 6;

LedDiameter = 4;

WireDiameter = 1.5;


/*------------------------
 * FIXED MODEL SIZES
 *----------------------*/

ArmLength = 30;
ArmThickness = 1.5;
ArmWidth = 3.2;

LedClipThickness = 4;
LedClipWall = 1.5;
LedClipCorner = 3;

BatteryHolderWallThickess = 2;
BatteryHolderFace = 0.75;

Overlap = 0.1;


/*------------------------
 * CALCULATED
 *----------------------*/

TotalArmSpan = ArmLength * 2 + ArmWidth;

LedClipWidth = LedClipWall * 2 + LedDiameter;
LedClipHeight = ArmThickness + LedDiameter + LedClipWall;

BatteryCutoutThickness = BatteryThickness + BatteryThicknessBuffer;
BatteryHolderWidth = BatteryHolderWallThickess * 2 + BatteryDiameter;
BatteryHolderThickness = BatteryHolderFace * 2 + BatteryCutoutThickness;
BatteryHolderHoleDistance = ArmWidth * 2;
