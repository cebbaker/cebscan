// FabScan Tung
// CEB

//baseLength = 50;
//baseWidth = 108;

tungWidth  = 50;
tungLength = 160;

main();


module main() {

   translate([-20,0,0]) rotate([0,0,0]) ToplaserHolder(); 
  // translate([-20,0,-21.40]) rotate([0,0,0]) laserHolder(); 
} 
module ToplaserHolder() {
difference() {
union() 
    {
      translate([-23,0,0])  cube([46,110,6]);    //bottom
	  translate([0,0,3])   cylinder(h=6, r=23, center=true,$fn=100); 
	
    }
	translate([-16,77,9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
    translate([-16,102, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
    translate([16, 77, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
    translate([16,102, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
	translate([0,-4,11])    rotate([0,00,0])   cylinder(h=22, r=1.81, center=true,$fn=100); 
	
	translate([-16, 77, 4])    rotate([0,00,0]) cylinder(h=4.25, r=3, center=true,$fn=100); 
	translate([-16, 102, 4])    rotate([0,00,0]) cylinder(h=4.25, r=3, center=true,$fn=100); 
	translate([16, 77, 4])    rotate([0,00,0]) cylinder(h=4.25, r=3, center=true,$fn=100); 
	translate([16, 102, 4])    rotate([0,00,0]) cylinder(h=4.25, r=3, center=true,$fn=100); 
	translate([0, -4, 4])    rotate([0,00,0]) cylinder(h=4.25, r=3, center=true,$fn=100); 
    
	
	
}	
	}

module laserHolder() {
	difference() {
	union() {
    translate([-20,0,0])  cube([40,110,3]);    //bottom
    translate([-20,70,3])  cube([40,40,3]);    //bottom
    translate([-23,0,0])  cube([3,110,21.4]); //side
	translate([20,0,0])  cube([3,110,21.4]);  //side
	translate([-20,0,0])  cube([40,15,21.4]);  //side
    translate([0,-4,10.7])    rotate([0,00,0])   cylinder(h=21.4, r=5, center=true,$fn=100); 
	translate([-15,15,3]) cube([30,7,15.4]); 
	
	difference() {
	  union () {
	    translate([0,0,10.7])   cylinder(h=21.4, r=23, center=true,$fn=100); 
	  }
	  translate([0,0,14.7])   cylinder(h=21.4, r=20, center=true,$fn=100);
	  translate([-20,0,3])  cube([40,50,21.4]);  //side
	  translate([1,7.5, 11])    rotate([0,90,0])   cylinder(h=55, r=6.6, center=true,$fn=100); 
	  
	}
	}
	

	translate([-16,77,9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
      translate([-16,102, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
      translate([16, 77, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
      translate([16,102, 9])    rotate([0,00,0])   cylinder(h=25, r=1.81, center=true,$fn=100); 
	  
	   translate([1,7.5, 11])    rotate([0,90,0])   cylinder(h=55, r=6.6, center=true,$fn=100); 
	   translate([17.5,12.5, 10.5])    rotate([90,0,0])   cylinder(h=7, r=2.5, center=true,$fn=100); 
	   translate([-17.5,12.5, 10.5])    rotate([90,0,0])   cylinder(h=7, r=2.5, center=true,$fn=100); 
	   translate([0,-4,11])    rotate([0,00,0])   cylinder(h=22, r=1.5, center=true,$fn=100); 
	   translate([3,16,6.5]) rotate([0,0,90]) shaftHolder();
	   translate([13,16,6.5]) rotate([0,0,90]) shaftHolder();
	   translate([-7,16,6.5]) rotate([0,0,90]) shaftHolder();
	   translate([0,-4, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
	   translate([-16,102, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
	   translate([-16,77, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
	   translate([16,77, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
	   translate([16,102, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
	   
	   
	   
	} 

   
	
}



module shaftHolder() {
          cube([3.1,6.1,15]);
		  translate([1,3,4.5]) rotate ([0,90,0]) cylinder(r=1.81, h=20,center=true,$fn=100);  
		 
}




module gst() {
  difference() {
  union() {
  tungCylinder();
  translate([-0,-45,0])  maleConnect();
  }
   translate([0,-1,-10])  rotate([0,0,45]) moon();
   translate([-11,-15,9])    rotate([90,0,0])   cylinder(h=120, r=3, center=true,$fn=100);
   translate([11,-15,9])    rotate([90,0,0])   cylinder(h=120, r=3, center=true,$fn=100);  
 
 

  
   
   }
}


module tungCylinder() {
difference() {
   translate([0,0,7.7])   cylinder(h=15.4, r=25, center=true,$fn=100); 
   translate([0,0,8.20])   cylinder(h=20, r=7.9, center=true,$fn=100);
   translate([-18,20,8.20]) rotate([0,0,45]) bite();
   translate([-20,19,-1])  cube([40,15,26]);
  
   }
 }
 
 module bite() {
 difference() {
   translate([0,0,0]) rotate([90,0,0]) polyhedron ( points = [[0, -10, 25], [0, 10, 25], [0, 10, 0], [0, -10, 0], [25, -10, 25], [25, 10, 25]], 
  triangles = [[0,3,2], [0,2,1], [3,0,4], [1,2,5], [0,5,4], [0,1,5],  [5,2,4], [4,2,3], ]);
  translate([-0,-25,0])   cylinder(h=30, r=10, center=true,$fn=100); 

 }
}
 
 module moon() {
    difference() {
    translate([0,0,15])   cylinder(h=30, r=20.5, center=true,$fn=100); 
	translate([0,0,15])   cylinder(h=32, r=15.5, center=true,$fn=100); 
	translate([-22,0,-1])  cube([44,45,35]);
	translate([0,-22,-1])  cube([44,45,35]);
    }
	
 }
 
 module maleConnect() {
      difference() { 
       translate([-20,-20,0]) cube([40,50,15.4]);
	   translate([-16,-15,9])    rotate([0,00,0])   cylinder(h=20, r=1.81, center=true,$fn=100); 
	   translate([-16,10,9])    rotate([0,00,0])   cylinder(h=20, r=1.81, center=true,$fn=100); 
	   translate([16,-15,9])   rotate([0,00,0])   cylinder(h=20, r=1.81, center=true,$fn=100); 
	   translate([16,10,9])    rotate([0,00,0])   cylinder(h=20, r=1.81, center=true,$fn=100); 
	
	   }
 }
 
 

/*
rotate ([0,180,0]) top();


module top() {
 difference() {
 union() {
 translate([-55,-(baseWidth - 15)/2, -4]) cube([baseLength,baseWidth -15,7]);
 translate([-30,baseWidth / 2 -10, -.5])   cylinder(h=7, r=25, center=true,$fn=100); 
 translate([-30,-baseWidth / 2 +10, -.5])   cylinder(h=7, r=25, center=true,$fn=100); 
 translate([-30,-baseWidth / 2 +15, -7.5])   cylinder(h=7, r=25, center=true,$fn=100); 
 translate([-30,baseWidth / 2 -15, -7.5])   cylinder(h=7, r=25, center=true,$fn=100);
 translate([-55,-83/2, -11])  cube([2,83,7]);
 translate([-7,-83/2, -11])  cube([2,83,7]);
 translate([-51,-26,-7.5])    rotate([0,00,0])   cylinder(h=7, r=3.5, center=true,$fn=100); 
 translate([-51,26,-7.5])    rotate([0,00,0])   cylinder(h=7, r=3.5, center=true,$fn=100); 
 translate([-9,-26,-7.5])   rotate([0,00,0])   cylinder(h=7, r=3.5, center=true,$fn=100); 
 translate([-9,26,-7.5])    rotate([0,00,0])   cylinder(h=7, r=3.5, center=true,$fn=100);
translate([-30,0,-7.5])   cylinder(h=7, r=9, center=true,$fn=100); 
}

     translate([-30,baseWidth / 2 -10, 0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
     translate([-30,-baseWidth / 2 +10,0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
	 translate([-30,baseWidth / 2 -10, -2.25])   cylinder(h=3.5, r=8, center=true,$fn=100);
	 translate([-30,-baseWidth / 2  +10, -2.25])   cylinder(h=3.5, r=8, center=true,$fn=100); 
	 
	translate([-30,0,0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100); 
	translate([-30,0,-6])   cylinder(h=12, r=7.75, center=true,$fn=6);
	translate([-45,0,0])   cylinder(h=80 + 2, r=4.5, center=true,$fn=100);
    translate([-30,baseWidth / 2 -10, -11.5])  cylinder(h=15, r=25, center=true,$fn=100);
    translate([-30,-baseWidth / 2 + 10, -11.5])  cylinder(h=15, r=25, center=true,$fn=100); 

    translate([-30,-17,-11])    rotate([90,90,0])   cylinder(h=10, r=7, center=true,$fn=100); 
    translate([-30,+17,-11])    rotate([90,90,0])   cylinder(h=10, r=7, center=true,$fn=100); 
	
	translate([-51,-26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
    translate([-51,26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
    translate([-9,-26,-2.5])   rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
    translate([-9,26,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
	
	translate([-51,-26, 1.5])    rotate([0,00,0])  cylinder(h=3.5, r=3.25, center=true,$fn=6); 
    translate([-51,26,1.5])    rotate([0,00,0])   cylinder(h=3.5, r=3.25, center=true,$fn=6); 
    translate([-9,-26,1.5])   rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
    translate([-9,26,1.5])    rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
	
	
	//translate([-48,-45,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
    translate([-30, 62,-2.5])  #  rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
    translate([-30, -62,-2.5])  # rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
   // translate([-12,45,-2.5])    rotate([0,00,0])   cylinder(h=17, r=1.81, center=true,$fn=100); 
	
	//translate([-48,-45,1.5])    rotate([0,00,0])   cylinder(h=3.5, r=3.25, center=true,$fn=6); 
    translate([-30, 62,1.5])    rotate([0,00,0])   cylinder(h=3.5, r=3.25, center=true,$fn=6); 
    translate([-30,-62,1.5])   rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
   // translate([-12,45,1.5])    rotate([0,00,0])    cylinder(h=3.5, r=3.25, center=true,$fn=6); 
	
	
	
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
 
 */
 
 
 
