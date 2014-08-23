// FabScan NEMA 17 Base motor mount
// CEB

baseHeight = 50;


 main();

module main() {
    difference() {
	union() {
	  neck(baseHeight);
	  base();
	  handle();
	}
	  translate([20,-45,7.25])   rotate ([0,90,0])   cylinder(h=115, r=4.5, center=true,$fn=100);  
	  translate([20,45,7.25])    rotate ([0,90,0])   cylinder(h=115, r=4.5, center=true,$fn=100);
	  translate([35,39,5])  rotate ([0,90,0])   cylinder(h=100, r=3, center=true,$fn=100); 
	  translate([-5,39,4])  rotate ([33,0,0]) cube([83,6,4]);
	  translate([15,35,7])  rotate ([80,0,-45])  # cylinder(h=15, r=2.5, center=true,$fn=100); 
    
	}
	
 }

  module handle (baseWidth = 75) {
      translate([25,-baseWidth/2, 0]) cube([50,baseWidth,4]); // channel male	
    //  translate([25,-baseWidth/2, 0])  cube([50,3,15]); // channel male
   //   translate([25,baseWidth/2 - 3, 0])  cube([50,3,15]); // channel male		  
	  translate([22.5,-44,5])  partialTube();
	  translate([22.5,44,5])  rotate ([0,0,0])partialTube();
	 
 }
 
 module partialTube(TubeLength = 110) {
     
	 difference() {
       translate([-2.5,0,0])    rotate ([0,90,0])  cylinder(h=TubeLength, r=10, center=true,$fn=100); 
	   translate([-70,-10,-20])  cube([140,20,15]);
	
	 } 
 }
 
 
 
 
 module base() {
      difference() {
         translate([0,0,  15])  cylinder(h=30, r2=33.75, r1=50,   center=true,$fn=100); //neck
	     translate([0,0,7.5 + (baseHeight/2)]) cylinder(r=34, h=baseHeight + 5,center=true,$fn=100); //neck
		 translate([0,0,2.5]) cylinder(r=25, h= 6,center=true,$fn=100); //neck
	
	  } 	 
 }
 
 
 module neck( neckHeight = 50) {
   
      difference() {
         union() {
           difference() {    
               translate([0,0,  (neckHeight/2)])  cylinder(r=39, h=neckHeight,center=true,$fn=100); //neck
		       translate([0,0,  (neckHeight/2)])  cylinder(r=33.75, h=neckHeight + 5,center=true,$fn=100); //neck
           }	
           translate([-2.35,-34, 0]) cube([4.7,4.75,neckHeight]); // channel male	
           translate([-2.35,29.5,0]) cube([4.7,4.75,neckHeight]); // channel male	
         }
		 
		 translate([0,35, neckHeight -5])    rotate([90,0,0]) cylinder(r=1.81, h=25,center=true,$fn=100); //mount screws
		 translate([0,-30, neckHeight -5])   rotate([90,0,0]) cylinder(r=1.81, h=25,center=true,$fn=100); //mount screws
		 translate([0,37.5, neckHeight -5])  rotate([90,0,0]) cylinder(r=2.81, h=4,center=true,$fn=100); //mount screws
		 translate([0,-37.5, neckHeight -5]) rotate([90,0,0]) cylinder(r=2.81, h=4,center=true,$fn=100); //mount screws
		
		 translate([0,35, neckHeight -15])    rotate([90,0,0]) cylinder(r=1.81, h=25,center=true,$fn=100); //mount screws
		 translate([0,-30, neckHeight -15])   rotate([90,0,0]) cylinder(r=1.81, h=25,center=true,$fn=100); //mount screws
		 translate([0,37.5, neckHeight -15])    rotate([90,0,0]) # cylinder(r=2.81, h=4,center=true,$fn=100); //mount screws
		 translate([0,-37.5, neckHeight -15]) rotate([90,0,0]) # cylinder(r=2.81, h=4,center=true,$fn=100); //mount screws
		
		 
		 
		 
		 
		 
		 /*
		 translate([-3,-33,-neckHeight])  cube([6,5,neckHeight]); // plate	
		 translate([-3,28,-neckHeight])  cube([6,5,neckHeight]); // plate
		*/ 
		/*
		 for ( i = [1:floor((neckHeight / 10))]) {
		     translate([0,25, 3 - (10 * i)])    rotate([90,0,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
			 translate([0,-30, 3 - (10 * i)])   rotate([90,0,0]) cylinder(r=1.81, h=20,center=true,$fn=100); //mount screws
		 }
		 */

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
