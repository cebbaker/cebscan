// FabScan mainBase
// CEB

baseLength = 105;
baseWidth = 108;

//main();

rotate ([0,180,0]) top();


module top() {
 difference() {
 union() {
 translate([-baseLength/2 - 3.5,-(baseWidth + 4)/2, 75]) cube([baseLength + 22,baseWidth +4,3]);
 translate([-baseLength/2 - 3.5,-(baseWidth + 8)/2, 63])  cube([baseLength + 22,2,15]);
 translate([-baseLength/2 - 3.5,+(baseWidth + 4)/2, 63])  cube([baseLength + 22,2,15]);
 translate([-baseLength/2 - 5.5,-(baseWidth )/2  - 4, 63])  cube([2,baseWidth + 8,15]);
 translate([+baseLength/2 + 18.5,-(baseWidth )/2  - 4, 63])  cube([2,baseWidth + 8,15]);
}

    translate([-baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
	 translate([-baseLength/2 + 7.5,-baseWidth /2 + 1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);   
	 translate([baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
	 translate([baseLength/2 + 7.5,-baseWidth /2 + 1.5, 70]) rotate([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100); 
     translate([-30,baseWidth / 2 -10, 60])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
     translate([-30,-baseWidth / 2 +10,60])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
	 translate([-30,0,60])   cylinder(h=80 + 2, r=11, center=true,$fn=100); 
	 translate([-5,0,60])   cylinder(h=80 + 2, r=5, center=true,$fn=100); 
}
}




module main() {
    difference() {
	union() {
	  handle();
	  rampsMount();
	  wall();
	  translate([-51,-22.5,4]) motorbase();
	  translate([-30,baseWidth / 2 -10,10])  directorFeed();
	  translate([-30,-baseWidth / 2 +10,10])  directorFeed();
	
	
	}
	  translate([0,-45,7.25])   rotate ([0,90,0])   cylinder(h=baseLength + 8, r=4.5, center=true,$fn=100);  
	  translate([0,45,7.25])    rotate ([0,90,0])   cylinder(h=baseLength + 8, r=4.5, center=true,$fn=100);
	  translate([0,39,5])  rotate ([0,90,0])   cylinder(h=baseLength + 8, r=3, center=true,$fn=100); 
	  translate([-baseLength /2 -4,39,4])  rotate ([33,0,0]) cube([baseLength + 8,6,4]);
	  translate([-50,35,7])  rotate ([80,0,45])   cylinder(h=15, r=2.5, center=true,$fn=100); 
	  translate([-30,baseWidth / 2 -10,10])  translate([11,-3,20])   shaftHolder();
	  translate([-30,-baseWidth / 2 +10,10])  translate([11,-3,20])  shaftHolder();
	  translate([-30,baseWidth / 2 -10,10])  translate([11,-3,35])   shaftHolder();
	  translate([-30,-baseWidth / 2 +10,10])  translate([11,-3,35])    shaftHolder();
	
	  
	  
	  
	  
	  // mount holes
	 translate([-baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
	 translate([-baseLength/2 + 7.5,-baseWidth /2 + 1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);   
	 translate([baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
	 translate([baseLength/2 + 7.5,-baseWidth /2 + 1.5, 70]) rotate([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  
	}
	
 }
 
 module screwmounts(swidth = 15) {
    difference() {
	union() {
	difference() {
	   union() {
          translate ([0,0,0]) rotate([0,90,0]) cylinder(h=swidth, r=10, center=true,$fn=100);
	   } 
	    translate ([-10.5,0,-10.5]) cube ([21,11,21]);
        translate ([-10.5,-10.5,0]) cube ([21,21,21]); 		
    }
      translate ([-swidth/2,-10,0]) cube ([swidth,10,5]);
	 } 
      translate([5,-6, -5]) rotate([0,0,90])   cube([3.1,10,11]);
	  translate([0,-5,0]) rotate ([90,0,0])  cylinder(r=1.81, h=30,center=true,$fn=100);  

   }	  
 }
 

  module handle () {
      translate([-baseLength/2,-75/2, 0]) cube([baseLength,75,4]); // channel male	
      translate([0,-44,5])  partialTube(baseLength);
	  translate([0,44,5])  rotate ([0,0,0])partialTube(baseLength);
	  difference(){
	  translate([baseLength/2,-baseWidth/2, 0]) cube([15,108,4]); // channel male
      translate([baseLength/2 + 5,45,6.25])     rotate([30,0,0])   rotate ([0,90,0])   cylinder(h=17, r=7, center=true,$fn=6);  	  
      translate([baseLength/2 + 5,-45,6.25])     rotate([30,0,0])   rotate ([0,90,0])   cylinder(h=17, r=7, center=true,$fn=6);  	  
   	 }	  
	  
	 
 }
 
 module directorFeed(TubeLength= 65) {
     difference() {
         translate([8,-5,0])   cube([10,10,TubeLength]);
	     translate([11,-3,20])  shaftHolder();
         translate([11,-3,35])  shaftHolder(); 	 
	 }
	 
     difference() {
        translate([0,0,TubeLength / 2]) rotate ([0,0,0])  cylinder(h=TubeLength, r=10, center=true,$fn=100); 
		translate([0, 0, TubeLength / 2])   rotate ([0,0,0])   cylinder(h=TubeLength + 2, r=4.5, center=true,$fn=100); 
	}	
 }
 
 module shaftHolder() {
           translate([0,-2,0])  cube([3.1,10,9]);
		   translate([3,3,4.5]) rotate ([0,90,0]) cylinder(r=1.81, h=20,center=true,$fn=100);  
		 
}
 
 
 
 
 
 module motorbase() {
       difference() {
	     translate([-2,-2,0])  cube([47,47,5]);
	     translate([0,0,0])   cube([43,43,6]);
		 translate([42,15,0])   cube([5,15,6]); 
       }	 
 }
 
 
 module sleave() {
   translate([0,0,0])   cube([2,7,55]);
   translate([4.5,0,0]) cube([2,7,55]);
   translate([0,-2,0])  cube([6.5,2,55]);   
   translate([0,0,0])   cube([6.5,7,10]); // channel male
 }
 
 
 module wall() {
    difference() {
	translate([-baseLength/2,baseWidth /2 -1.5, 0])cube([baseLength + 15,3,75]); // channel male
	translate([-baseLength/2 + 55,baseWidth /2 -2, 12]) cube([65,5,40]); // channel male
	}
	translate([baseLength/2 + 16,baseWidth /2 -5.5, 0]) sleave();
	translate([-baseLength/2 + 47,baseWidth /2 + 6, 0]) rotate([0,0,-90]) sleave();
  	translate([-baseLength/2,-baseWidth /2 -1.5, 0]) cube([baseLength + 15,3,75]); // channel male	
	
	
	translate([-baseLength/2 -3,-baseWidth /2 -1.5, 0])cube([3,baseWidth + 3,75]); // channel male
	difference() {
	  translate([baseLength/2 + 15,-baseWidth /2 -1.5, 0]) cube([3,baseWidth + 3,75]); // channel male
	  translate([baseLength/2 + 18,43, 35]) rotate([90,0,90])  cylinder(r=3.5, h=10,center=true,$fn=100); //mount screws
	}
	
	translate([-baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate([0,0,0])   screwmounts(20);
	translate([-baseLength/2 + 7.5,-baseWidth /2 + 1.5, 70]) rotate([0,0,180])   screwmounts(20);
	translate([baseLength/2 + 7.5,baseWidth /2 -1.5, 70]) rotate([0,0,0])   screwmounts(15);
	translate([baseLength/2 + 7.5,-baseWidth /2 + 1, 70]) rotate([0,0,180])   screwmounts(15);
	
 }
 
 module rampsMount() {
  difference() {
     union() {
        translate([baseLength/2 + 3,27,0])  cube([12,9,17]); // channel male	 
        translate([baseLength/2 -43,-50,13])  cube([12,12,4]); // channel male
     }  
     translate([baseLength/2 + 10,34, 15]) rotate([0,0,90]) cylinder(r=1.5, h=10,center=true,$fn=100); //mount screws
	 translate([baseLength/2 - 37,-45.5, 15]) rotate([0,0,90]) cylinder(r=1.5, h=10,center=true,$fn=100); //mount screws
	
   }
   translate([baseLength/2 - 49,25.5, 0]) cube([2,10,35]);
 }
 
 
 module partialTube(TubeLength) {
     
	 difference() {
       translate([0,0,0])    rotate ([0,90,0])  cylinder(h=TubeLength, r=10, center=true,$fn=100); 
	   translate([-baseLength /2 -1 ,-10,-20])  cube([baseLength + 5 ,20,15]);
	
	 } 
 }
 
 
 
 
 
