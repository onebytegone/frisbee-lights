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

WireChannelDiameter = 4;
LedDiameter = 6.2;

WireDiameter = 1.5;


/*------------------------
 * FIXED MODEL SIZES
 *----------------------*/

ArmLength = 30;
ArmThickness = 1.5;
ArmWidth = 3.2;

LedSupportWallThickness = 2;
LedSupportWallLength = 4;
LedClipThickness = 3.7;
LedClipTopWall = 1.5;
LedClipCorner = 3;
WireChannelLip = 0.8;

BatteryHolderWallThickess = 2;
BatteryHolderFace = 0.75;

Overlap = 0.1;


/*------------------------
 * CALCULATED
 *----------------------*/

TotalArmSpan = ArmLength * 2 + ArmWidth;

LedClipWidth = LedSupportWallThickness * 2 + LedDiameter;
LedClipHeight = ArmThickness + WireChannelDiameter + LedClipTopWall;
WireChannelCutout = WireChannelDiameter - WireChannelLip * 2;

BatteryCutoutThickness = BatteryThickness + BatteryThicknessBuffer;
BatteryHolderWidth = BatteryHolderWallThickess * 2 + BatteryDiameter;
BatteryHolderThickness = BatteryHolderFace * 2 + BatteryCutoutThickness;
BatteryHolderHoleDistance = ArmWidth * 2;
