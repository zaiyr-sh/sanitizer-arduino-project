union(){
    translate([0,0,0])
    cube([30, 30, 5]);

    translate([-20,0,70])
    rotate([0,75,0])
    cube([70, 30, 5]);
    
    translate([0,55,4])
    rotate([90,90,0])
    cylinder(h=80, r=3, center = false);

}