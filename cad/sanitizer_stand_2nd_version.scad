difference(){
    hull(){
        translate([15,0,0])
        cylinder(h=180, r=30, center=false);
        translate([-15,0,0])
        cylinder(h=180, r=30, center=false);
    }
    translate([-30,-10,5])
    cube([60,50,140]);
    translate([-30,20,160])
    cube([60,10,40]);
    translate([-30, -40, 100])
    cube([60,60,60]);
    translate([-30,-30,5])
    cube([60,18,150]);
    rotate([90,90,90])
    translate([-135,-10,-90])
    cylinder(h=300, r=5, center = false);
}

