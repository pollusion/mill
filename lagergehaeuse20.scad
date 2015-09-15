include <mcad/nuts_and_bolts.scad>

l=42;
d=32;
t=5;

w=d+t*2;
h=d+t*2;

translate(-1,w/2,h/2) rotate(0,90,0) cylinder(l+2,d/2,d/2);
difference() {
    cube([42,w,h]);
    translate(-1,w/2,h/2) rotate(0,90,0) cylinder(l+2,d,d);
}