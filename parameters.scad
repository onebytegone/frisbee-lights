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
LedDiameter = 6;

WireDiameter = 1.5;


/*------------------------
 * FIXED MODEL SIZES
 *----------------------*/

ArmThickness = 1.5;
ArmWidth = 3.2;

LedSupportWallThickness = 1.5;
LedSupportWallLength = 4;
LedClipThickness = 2.75;
LedClipTopWall = 1.5;
LedClipCorner = 3;

MountingArmWidth = 8;
MountingArmLength = 10;
MountingArmThickness = 0.6;
MountingArmCorner = 2;

WireChannelLip = 0.8;
WireChannelDepth = 2;

GroundChannelHeight = 1.8;
GroundChannelWidth = 3;

BatteryHolderWallThickess = 2;
BatteryHolderFace = 0.85;
BatteryHolderLowerFaceMin = 0.55;

Overlap = 0.1;


/*------------------------
 * CALCULATED
 *----------------------*/

LedClipWidth = LedSupportWallThickness * 2 + LedDiameter;
LedClipHeight = ArmThickness + WireChannelDiameter + LedClipTopWall;
WireChannelCutout = WireChannelDiameter - WireChannelLip * 2;

BatteryCutoutThickness = BatteryThickness + BatteryThicknessBuffer;
BatteryHolderWidth = BatteryHolderWallThickess * 2 + BatteryDiameter;

TotalArmSpan = WireChannelDepth * 2 + BatteryHolderWidth;

BatteryHolderBaseThickness = GroundChannelHeight + BatteryHolderLowerFaceMin;
BatteryHolderThickness = BatteryHolderBaseThickness + BatteryHolderFace + BatteryCutoutThickness;

LightenHoleDiameter = BatteryDiameter/3;
LightenHoleOffset = BatteryDiameter/4;

MountingArmTotalLength = MountingArmLength + BatteryHolderWidth/2 - BatteryGripSize;
