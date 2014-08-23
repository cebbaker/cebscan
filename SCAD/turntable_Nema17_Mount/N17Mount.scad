// FabScan NEMA 17 motor mount
// CEB




rotate ([0,180,0]) main();

module main() {
    motorMount();
	neck();
	
 }

 module motorMount() {
       difference() {
	     // translate([-21.5,-21.5,0]) cube([43,43,5]); // plate
		  translate([0,0,2.5])  cylinder(r=30.5, h=5,center=true,$fn=100); //mount screws
	      translate([15.5,15.5,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
          translate([-15.5,15.5,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
          translate([15.5,-15.5,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
          translate([-15.5,-15.5,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
		#  translate([0,0,0]) cylinder(r=15.5, h=20,center=true,$fn=100); //mount screws
        }
 }
 
 module neck( neckHeight = 70) {
   
      difference() {
         union() {
           difference() {    
               translate([0,0,5 - (neckHeight/2)])  cylinder(r=33, h=neckHeight,center=true,$fn=100); //neck
		       translate([0,0,4 - (neckHeight/2)])  cylinder(r=30.5, h=neckHeight + 5,center=true,$fn=100); //neck
           }	
           translate([-5,-31,5 - neckHeight]) cube([10,5,neckHeight]); // channel male	
           translate([-5,26,5 - neckHeight]) cube([10,5,neckHeight]); // channel male	
           translate([-31,-5,5 - neckHeight]) cube([5,10,neckHeight]); // channel male		
           translate([26,-5,5 - neckHeight]) cube([5,10,neckHeight]); // channel male			   
	     }
		 translate([-3,-33,-neckHeight])  cube([6,5,neckHeight]); // plate	
		 translate([-3,28,-neckHeight])  cube([6,5,neckHeight]); // plate
		 
		 for ( i = [1:floor((neckHeight / 10))]) {
		     translate([0,25, 3 - (10 * i)])    rotate([90,0,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
			 translate([0,-30, 3 - (10 * i)])   rotate([90,0,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
		 }

	  }
 }
 
 
 
 
/*
module mount() {

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

*/
