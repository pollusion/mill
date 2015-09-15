include <MCAD/nuts_and_bolts.scad>

L=24;
B=70;
H1=24;
P=52;
B1=36;
h1=25;
bore=9;

bd=30;
bl=14.3;
sd=10;

difference () {
%union() {
cube([B,L,H1]);
translate([(B-B1)/2,0,h1-B1/2]) cube([B1,L,B1]);
}
    translate([B/2,L/2-bl+7,h1]) rotate([-90,0,0]) cylinder(h=bl, r=bd/2);
}
