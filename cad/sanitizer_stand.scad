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
    cylinder(h=190, r=10);
    translate([-45,-30,5])
    cube([90,18,150]);
}