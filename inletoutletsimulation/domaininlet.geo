	// base corner points
	Point(1) = {0,0,0};

	Point(2) = {0,12,0};
	Point(3) = {12,12,0};
	Point(4) = {12,8,0};
	Point(5) = {12,4,0};
	Point(6) = {12,0,0};
	Point(7) = {8,0,0};
	Point(8) = {4,0,0};
	
	// base lines
	Line(1) = {1, 2};
	Line(2) = {2, 3};
	Line(3) = {3, 4};
	Line(4) = {4, 5};
	Line(5) = {5, 6};
	Line(6) = {6, 7};
	Line(7) = {7, 8};
	Line(8) = {8, 1};
	


	
	//To add surface
	Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8};
	
	Plane Surface(1) = {1};
	
	/*// extra work for creating structured mesh

	   Transfinite Line{1, 2} = 101;
	   Transfinite Line{2, } = 101;
	   Transfinite Line{1, 2, 3, 4} = 101;
	   Transfinite Surface{6};
	     Recombine Surface{6};*/






	// extrude base surface in z direction for create 


	// dummy 3d geometry for OpenFoam
	Extrude {0, 0, 1} {
	   Surface{1}; Layers{1}; Recombine;
	}

	/*Physical Surface("intlet") = {58};
	Physical Surface("topWall") = {30, 34, 38};
	Physical Surface("lowerWall") = {54, 50, 46};
	Physical Surface("outlet") = {42};
	Physical Surface("frontAndBack") = {70, 66, 74, 62}
        
        Physical Volume(7) = {1};
       // Physical Surface("frontAndBack") += {1, 75};*/

