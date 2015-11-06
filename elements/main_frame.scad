include <../parameters.scad>;
include <../thirdparty/CornerCutout.scad>;

module main_frame() {
   arm();
   rotate([0,0,90]) arm();
   translate([0,0,ArmThickness]) rotate([0,0,45]) batteryHolder();
}

module arm() {
   translate([-ArmWidth/2, -TotalArmSpan/2]) cube([ArmWidth, TotalArmSpan, ArmThickness]);
   translate([0, -TotalArmSpan/2]) ledClip();
   translate([0, TotalArmSpan/2 - LedClipThickness]) ledClip();
}

module ledClip() {
   difference() {
      translate([-LedClipWidth/2, 0]) cube([LedClipWidth,  LedClipThickness, LedClipHeight]);
      translate([LedClipWidth/2, 0, LedClipHeight]) rotate([-90,0]) CornerCutout(CORNER_SE, LedClipThickness, LedClipCorner);
      translate([-LedClipWidth/2, 0, LedClipHeight]) rotate([-90,0]) CornerCutout(CORNER_SW, LedClipThickness, LedClipCorner);
      translate([0, -Overlap, ArmThickness + LedDiameter/2]) rotate([-90, 0]) cylinder(h = LedClipThickness + Overlap * 2, r = LedDiameter/2);
   }
}

module batteryHolder() {
   difference() {
      batteryHolderShape(BatteryHolderWidth, BatteryGripSize, BatteryHolderThickness);
      translate([0,0,BatteryHolderFace]) batteryHolderShape(BatteryDiameter, 0, BatteryCutoutThickness, BatteryHolderWallThickess + Overlap);
      translate([BatteryHolderHoleDistance/2, 0, -Overlap]) cylinder(BatteryHolderFace + Overlap * 2, WireDiameter/2, WireDiameter/2);
      translate([-BatteryHolderHoleDistance/2, 0, -Overlap]) cylinder(BatteryHolderFace + Overlap * 2, WireDiameter/2, WireDiameter/2);
      translate([0,0,BatteryHolderThickness - BatteryHolderFace - Overlap]) rotate([0,0,180]) batteryHolderShape(BatteryHolderWidth/3, 0, BatteryHolderFace + Overlap * 2);
      translate([-BatteryDiameter/6, -BatteryHolderWidth/2 - Overlap, BatteryHolderFace]) cube([BatteryDiameter/3, BatteryHolderWidth + Overlap * 2, BatteryCutoutThickness]);
   }

   translate([0,0,BatteryHolderThickness - BatteryHolderFace]) rotate([0,0,180]) difference() {
      batteryHolderShape(BatteryHolderWidth/4, 0, BatteryHolderFace, BatteryHolderWidth/5);
      translate([0, 0, -Overlap]) cylinder(BatteryHolderFace + Overlap * 2, WireDiameter/2, WireDiameter/2);
   }
}

module batteryHolderShape(size = 10, grip = 0, thickness = 3, extra = 0) {
   difference() {
      union() {
         translate([-size/2, -size/2 - extra, 0]) cube([size, size/2 + extra, thickness]);
         cylinder(thickness, size/2, size/2);
      }
      translate([-size/2 - Overlap, -size/2 - Overlap, -Overlap]) cube([size + Overlap * 2, grip + Overlap, thickness + Overlap * 2]);
   }

}
