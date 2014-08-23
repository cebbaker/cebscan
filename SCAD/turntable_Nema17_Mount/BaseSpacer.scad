// FabScan Base spacer
// CEB

baseLength = 150;


main();

module main() {
    difference() {
	union() {
	  handle();
	}
	 # translate([0,-45,7.25])   rotate ([0,90,0])   cylinder(h=baseLength + 5, r=4.5, center=true,$fn=100);  
	 # translate([0,45,7.25])    rotate ([0,90,0])   cylinder(h=baseLength + 5, r=4.5, center=true,$fn=100);
	 # translate([0,39,5])  rotate ([0,90,0])   cylinder(h=baseLength + 5, r=3, center=true,$fn=100); 
	 # translate([-baseLength /2 - 1,39,4])  rotate ([33,0,0]) cube([baseLength + 5,6,4]);
	
	
	}
	
 }

  module handle () {
      translate([-baseLength/2,-75/2, 0]) cube([baseLength,75,4]); // channel male	
      translate([0,-44,5])  partialTube(baseLength);
	  translate([0,44,5])  rotate ([0,0,0])partialTube(baseLength);
	 
 }
 
 module partialTube(TubeLength) {
     
	 difference() {
       translate([0,0,0])    rotate ([0,90,0])  cylinder(h=TubeLength, r=10, center=true,$fn=100); 
	   translate([-baseLength /2 -1 ,-10,-20])  cube([baseLength + 5 ,20,15]);
	
	 } 
 }
 
 
 
 
 
