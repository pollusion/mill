include<mcad/stepper.scad>

SideSize = 56.4;
DistanceBetweenMountingHoles = 47.14;
hd = DistanceBetweenMountingHoles/2;
AxleDiameter = 6.36;
FrontAxleLength = 18.80;
RoundExtrusionHeight = 1.52;

blen=14.3;
brad=30;
hublen=19.5;
stublen=30-hublen;
tnes=10;
side=SideSize+2*tnes;
mid=side/2;



*difference () {
    cube([side,side,FrontAxleLength-RoundExtrusionHeight+5+40]);
    translate([mid,mid,-50]) cylinder(h=200,d=AxleDiameter+0.3);
    translate([mid-hd,mid-hd,-50]) cylinder(h=200,d=5.3);
    translate([mid-hd,mid+hd,-50]) cylinder(h=200,d=5.3);
    translate([mid+hd,mid-hd,-50]) cylinder(h=200,d=5.3);
    translate([mid+hd,mid+hd,-50]) cylinder(h=200,d=5.3);
}


*translate([mid,mid,FrontAxleLength-RoundExtrusionHeight+2]) motor(Nema23);