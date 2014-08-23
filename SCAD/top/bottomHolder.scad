// FabScan BottomHolder
// CEB

baseLength = 50;
baseWidth = 108;

rotate ([0,180,0]) top();


module top() {
 difference() {
 union() {
 translate([-55,-(baseWidth - 15)/2, -4]) cube([baseLength,baseWidth -15,7]);
 translate([-30,baseWidth / 2 -10, -.5])   cylinder(h=7, r=25, center=true,$fn=100); 
 translate([-30,-baseWidth / 2 +10, -.5])   cylinder(h=7, r=25, center=true,$fn=100); 
}

  translate([-30,baseWidth / 2 -10, 0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
  translate([-30,-baseWidth / 2 +10,0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
  translate([-30,0,0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
  translate([-51,-26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-51,26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-9,-26,-2.5])   rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-9,26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-51,-26, 1.5])    rotate([0,00,0])  cylinder(h=3.5, r=3.25, center=true,$fn=6); 
  translate([-51,26,1.5])    rotate([0,00,0])   cylinder(h=3.5, r=3.25, center=true,$fn=6); 
  translate([-9,-26,1.5])   rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
  translate([-9,26,1.5])    rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
  translate([-30, 62,-2.5])   rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-30, -62,-2.5])  rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
  translate([-30, 62,1.5])    rotate([0,00,0])   cylinder(h=3.5, r=3.25, center=true,$fn=6); 
  translate([-30,-62,1.5])   rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
}
}



