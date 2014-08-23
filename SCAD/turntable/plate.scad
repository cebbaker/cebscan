// FabScan plate 1 of 4 to print
// CEB




main();

module main() {
   difference() {
   fullPlate();
  translate([-100,0,-5])  cube([200,200,30]);
   translate([0,-110,-5])  cube([200,200,30]);
   }
}


module fullPlate() {

  difference() { 
	union() {
		translate([0,0,9]) cylinder(r=15, h=20,center=true,$fn=100);
		cylinder(r=100, h=3,center=true,$fn=100);
		difference() {
			translate([0,0,6]) cylinder(r=100, h=10,center=true,$fn=100);
			translate([0,0,6]) cylinder(r=96, h=11,center=true,$fn=100);
		}
		difference() {
			translate([0,0,6]) cylinder(r=34, h=10,center=true,$fn=100);
			translate([0,0,6]) cylinder(r=30, h=11,center=true,$fn=100);
		}
		difference() {
			translate([0,0,6]) cylinder(r=64, h=10,center=true,$fn=100);
			translate([0,0,6]) cylinder(r=60, h=11,center=true,$fn=100);
		}
		
		translate([0,-2,1]) cube([98,4,10]);
		translate([-98,-2,1]) cube([98,4,10]);
		translate([-2, -98,1]) cube([4,98,10]);
		translate([-2,0,1]) cube([4,98,10]);
	}
  
   translate([0,0,12]) cylinder(r=2.75,h=15,center=true,$fn=100); // stepper hole
   
   // Shaft holder
   translate([7,3,10])  rotate ([0,0,45])  shaftHolder();
   translate([9, -5,10])  rotate ([0,0,135])  shaftHolder();
   translate([-5,-9,10])  rotate ([0,0,45])  shaftHolder();
   translate([-3,7,10])  rotate ([0,0,135])  shaftHolder();
   
   // security bolts
   
    translate([-4,75,1])  rotate ([0,0,0])  platePoints();
    translate([-4,-83,1]) rotate ([0,0,0])  platePoints(); 
    translate([-4,45,1])  rotate ([0,0,0])  platePoints();
    translate([-4,-53,1]) rotate ([0,0,0])  platePoints(); 
	translate([-4,18,1])  rotate ([0,0,0])  platePoints();
    translate([-4,-26,1]) rotate ([0,0,0])  platePoints();
	
	translate([83,-4,1])  rotate ([0,0,90])  platePoints();
    translate([-75,-4,1])  rotate ([0,0,90])  platePoints(); 
    translate([56,-4,1])  rotate ([0,0,90])  platePoints();
    translate([-45,-4,1])  rotate ([0,0,90])  platePoints(); 
	translate([26,-4,1])  rotate ([0,0,90])  platePoints();
    translate([-18,-4,1])  rotate ([0,0,90])  platePoints();
  }
  
}

module shaftHolder() {
          cube([3.1,6.1,9]);
		  translate([3,3,4.5]) rotate ([0,90,0]) cylinder(r=1.81, h=20,center=true,$fn=100);  
		 
}


module platePoints() {
     translate([3.5,4,4.5]) rotate ([0,90,0]) cylinder(r=1.81, h=20,center=true,$fn=100);  
  		 
}


