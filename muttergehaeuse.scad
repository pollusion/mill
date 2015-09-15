include <mcad/nuts_and_bolts.scad>

w = 54;
h = 42;
l = 28;

difference() {
    cube(size=[w,l,h], center=false);
    
    translate([-1,-1,h-4]) cube(size=[12+1,l+2,4+1]);
    translate([5,l/2,-1]) boltHole(size=6, length=h+2, tolerance=0.1);
    
    translate([w-12,-1,h-4]) cube(size=[12+1,l+2,4+1]);
    translate([w-5,l/2,-1]) boltHole(size=6, length=h+2, tolerance=0.1);
    
    translate([w/2,30,21]) rotate([90,0,0]) cylinder(h=32, r=18);
    
    translate([(w-36)/2+1, l/4-1, 21]) rotate([0,-90,0]) scale([1,1,1.5]) nutHole(size=5, tolerance=0.1);
    translate([(w-36)/2+1, l/4-1, 21]) rotate([0,-90,0])  boltHole(size=5, length=30, tolerance=0.1);
    translate([(w-36)/2+1, l*.75+1, 21]) rotate([0,-90,0]) scale([1,1,1.5]) nutHole(size=5, tolerance=0.1);
    translate([(w-36)/2+1, l*.75+1, 21]) rotate([0,-90,0])  boltHole(size=5, length=30, tolerance=0.1);
}