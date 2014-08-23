// FabScan zAxis top of bottom
// CEB


 rotate ([0,180,0]) translate([0,0,35])   top();
bottom();

module top() {
  difference() {
  union() {
    translate([0,0,5])   cylinder(h=10, r=9, center=true,$fn=100);
	translate([0,0,10]) sphere(9);
    }
	translate([0,0, 3.5])   cylinder(h=7, r=7.75, center=true,$fn=6);
	translate([0,0,15])   cylinder(h=35, r=3.95, center=true,$fn=100);
	translate([-10,-10,17]) cube([20,20,20]);
  }	
}

module bottom() {
 difference() {
  union() {
    translate([0,0,10])   cylinder(h=20, r=9, center=true,$fn=100);
	
	
    }
	
	translate([0,0, 16.75])   cylinder(h=7, r=7.75, center=true,$fn=6);
	translate([0,0,15])   cylinder(h=35, r=2.8, center=true,$fn=100);
	translate([3.625,-6, -.5]) rotate([0,0,90])   cube([3.1,7.25,11]);
	translate([0,-15,4.5]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
  }	
}