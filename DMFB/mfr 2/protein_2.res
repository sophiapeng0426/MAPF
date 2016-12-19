net0 is completely routable!..0
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[21]
try net0 ...
try net1 ...
	net1 is updated! 21=>13
Done!
1)PostRouting...[13]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 13/13
========================RESULT========================
net0 [7]
	4,3,7 
	3,3,6 
	2,3,5 
	2,4,4 
	2,5,3 
	1,5,2 
	0,5,1 
	0,6,0 
net1 [13]
	0,3,13 
	0,4,12 
	0,5,11 
	0,6,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	0,11,5 
	0,12,4 
	1,12,3 
	2,12,2 
	3,12,1 
	4,12,0 
net0 is routed! 7/7
net1 is routed! 13/13
* operation time = 13, total length = 20 cell usage = 16, mode = 1
======================================================
net1 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[9]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 5/9
net1 is routed! 3/3
========================RESULT========================
net0 [5]
	4,7,9 
	4,8,8 
	4,9,7 
	4,10,6 
	5,10,5 
@	6,10,4 @	6,10,3 @	6,10,2 @	6,10,1 	6,10,0 
net1 [3]
	2,11,3 
	1,11,2 
	0,11,1 
	0,10,0 
net0 is routed! 5/9
net1 is routed! 3/3
* operation time = 9, total length = 12 cell usage = 6, mode = 1
======================================================
net1 is completely routable!..4
net0 is completely routable!..4
net2 is completely routable!..4
Routing...
Done!
0)PostRouting...[13]
try net1 ...
try net0 ...
try net2 ...
Done!

ORDER
1 -> 0 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 4/8
net1 is routed! 3/3
net2 is routed! 4/13
net2 [4]
	5,5,13 
	6,5,12 
	6,6,11 
	6,7,10 
@	7,7,9 @	7,7,8 @	7,7,7 @	7,7,6 @	7,7,5 @	7,7,4 @	7,7,3 @	7,7,2 @	7,7,1 	7,7,0 
========================RESULT========================
net0 [4]
	7,10,8 
	7,11,7 
	7,12,6 
	8,12,5 
@	9,12,4 @	9,12,3 @	9,12,2 @	9,12,1 	9,12,0 
net1 [3]
	10,5,3 
	11,5,2 
	12,5,1 
	12,4,0 
net2 [4]
	5,5,13 
	6,5,12 
	6,6,11 
	6,7,10 
@	7,7,9 @	7,7,8 @	7,7,7 @	7,7,6 @	7,7,5 @	7,7,4 @	7,7,3 @	7,7,2 @	7,7,1 	7,7,0 
net0 is routed! 4/8
net1 is routed! 3/3
net2 is routed! 4/13
* operation time = 13, total length = 24 cell usage = 8, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[24]
try net1 ...
try net0 ...
	net0 is updated! 24=>8
Done!
1)PostRouting...[15]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 8/8
net1 is routed! 15/15
========================RESULT========================
net0 [8]
	0,2,8 
	0,3,7 
	0,4,6 
	0,5,5 
	0,6,4 
	0,7,3 
	1,7,2 
	2,7,1 
	3,7,0 
net1 [15]
	12,6,15 
	12,5,14 
	12,4,13 
	12,3,12 
	12,2,11 
	12,1,10 
	12,0,9 
	11,0,8 
	10,0,7 
	9,0,6 
	8,0,5 
	7,0,4 
	6,0,3 
	5,0,2 
	4,0,1 
	3,0,0 
net0 is routed! 8/8
net1 is routed! 15/15
* operation time = 15, total length = 23 cell usage = 21, mode = 1
======================================================
net0 is completely routable!..3
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[17]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 3/3
net1 is routed! 13/17
========================RESULT========================
net0 [3]
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net1 [13]
	12,6,17 
	12,5,16 
	12,4,15 
	12,3,14 
	12,2,13 
	12,1,12 
	12,0,11 
	11,0,10 
	10,0,9 
	9,0,8 
	8,0,7 
	7,0,6 
	6,0,5 
@	5,0,4 @	5,0,3 @	5,0,2 @	5,0,1 	5,0,0 
net0 is routed! 3/3
net1 is routed! 13/17
* operation time = 17, total length = 20 cell usage = 14, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net1 ...
try net0 ...
	dependency on net0 at 0
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/12
net0 [2]
	5,6,12 
	4,6,11 
@	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 @	4,7,5 @	4,7,4 @	4,7,3 @	4,7,2 @	4,7,1 	4,7,0 
net1 is routed! 9/9
========================RESULT========================
net0 [2]
	5,6,12 
	4,6,11 
@	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 @	4,7,5 @	4,7,4 @	4,7,3 @	4,7,2 @	4,7,1 	4,7,0 
net1 [9]
	12,6,9 
	12,7,8 
	12,8,7 
	12,9,6 
	11,9,5 
	10,9,4 
	9,9,3 
	8,9,2 
	7,9,1 
	7,10,0 
net0 is routed! 2/12
net1 is routed! 9/9
* operation time = 12, total length = 21 cell usage = 9, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[21]
try net0 ...
try net1 ...
	net1 is updated! 21=>7
Done!
1)PostRouting...[13]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 5/13
net0 [5]
	4,7,13 
	3,7,12 
	2,7,11 
	1,7,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	0,11,5 
	1,11,4 
	2,11,3 
	3,11,2 
	4,11,1 
	4,12,0 
net1 is routed! 7/7
========================RESULT========================
net0 [5]
	4,7,13 
	3,7,12 
	2,7,11 
	1,7,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	0,11,5 
	1,11,4 
	2,11,3 
	3,11,2 
	4,11,1 
	4,12,0 
net1 [7]
	4,0,7 
	5,0,6 
	6,0,5 
	7,0,4 
	8,0,3 
	9,0,2 
	9,1,1 
	9,2,0 
net0 is routed! 5/13
net1 is routed! 7/7
* operation time = 13, total length = 20 cell usage = 18, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[14]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/14
net0 [6]
	7,12,14 
	7,11,13 
	6,11,12 
	5,11,11 
	4,11,10 
	3,11,9 
@	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net1 is routed! 7/7
========================RESULT========================
net0 [6]
	7,12,14 
	7,11,13 
	6,11,12 
	5,11,11 
	4,11,10 
	3,11,9 
@	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net1 [7]
	9,10,7 
	8,10,6 
	7,10,5 
	6,10,4 
	6,11,3 
	5,11,2 
	4,11,1 
	4,12,0 
net0 is routed! 6/14
net1 is routed! 7/7
* operation time = 14, total length = 21 cell usage = 8, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/12
net0 [2]
	4,5,12 
	4,6,11 
@	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 @	4,7,5 @	4,7,4 @	4,7,3 @	4,7,2 @	4,7,1 	4,7,0 
net1 is routed! 9/9
========================RESULT========================
net0 [2]
	4,5,12 
	4,6,11 
@	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 @	4,7,5 @	4,7,4 @	4,7,3 @	4,7,2 @	4,7,1 	4,7,0 
net1 [9]
	12,6,9 
	12,5,8 
	12,4,7 
	12,3,6 
	12,2,5 
	11,2,4 
	10,2,3 
	9,2,2 
	8,2,1 
	7,2,0 
net0 is routed! 2/12
net1 is routed! 9/9
* operation time = 12, total length = 21 cell usage = 9, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[2]
try net0 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 2/2
========================RESULT========================
net0 [2]
	10,8,2 
	9,8,1 
	9,9,0 
net0 is routed! 2/2
* operation time = 2, total length = 2 cell usage = 1, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 12/12
========================RESULT========================
net0 [12]
	12,9,12 
	12,8,11 
	12,7,10 
	12,6,9 
	12,5,8 
	12,4,7 
	12,3,6 
	12,2,5 
	11,2,4 
	10,2,3 
	9,2,2 
	8,2,1 
	7,2,0 
net0 is routed! 12/12
* operation time = 12, total length = 12 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..0
net2 is completely routable!..3
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[22]
try net0 ...
try net2 ...
	net2 is updated! 13=>4
try net1 ...
	net1 is updated! 22=>8
Done!
1)PostRouting...[8]
try net0 ...
try net1 ...
try net2 ...
Done!

ORDER
0 -> 1 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 8/8
net1 is routed! 8/8
net2 is routed! 4/4
========================RESULT========================
net0 [8]
	5,5,8 
	5,6,7 
	5,7,6 
	4,7,5 
	4,8,4 
	4,9,3 
	4,10,2 
	4,11,1 
	4,12,0 
net1 [8]
	5,0,8 
	4,0,7 
	3,0,6 
	2,0,5 
	1,0,4 
	0,0,3 
	0,1,2 
	0,2,1 
	0,3,0 
net2 [4]
	2,11,4 
	2,10,3 
	2,9,2 
	2,8,1 
	2,7,0 
net0 is routed! 8/8
net1 is routed! 8/8
net2 is routed! 4/4
* operation time = 8, total length = 20 cell usage = 17, mode = 1
======================================================
net1 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[41]
try net1 ...
try net0 ...
	dependency on net1 at 22
	net0 is updated! 41=>24
Done!
1)PostRouting...[25]
try net1 ...
	dependency on net0 at 15
	net1 is updated! 25=>16
try net0 ...
	net0 is updated! 24=>7
Done!
2)PostRouting...[16]
try net0 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 7/16
net1 [7]
	4,5,16 
	4,6,15 
@	4,7,14 @	4,7,13 @	4,7,12 @	4,7,11 @	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 	4,7,5 
	4,8,4 
	4,9,3 
	4,10,2 
	4,11,1 
	4,12,0 
========================RESULT========================
net0 [7]
	4,0,7 
	4,1,6 
	4,2,5 
	4,3,4 
	4,4,3 
	4,5,2 
	4,6,1 
	4,7,0 
net1 [7]
	4,5,16 
	4,6,15 
@	4,7,14 @	4,7,13 @	4,7,12 @	4,7,11 @	4,7,10 @	4,7,9 @	4,7,8 @	4,7,7 @	4,7,6 	4,7,5 
	4,8,4 
	4,9,3 
	4,10,2 
	4,11,1 
	4,12,0 
net0 is routed! 7/7
net1 is routed! 7/16
* operation time = 16, total length = 23 cell usage = 9, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[15]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/15
net0 [3]
	3,8,15 
	3,9,14 
	3,10,13 
@	4,10,12 @	4,10,11 @	4,10,10 @	4,10,9 @	4,10,8 @	4,10,7 @	4,10,6 @	4,10,5 @	4,10,4 @	4,10,3 @	4,10,2 @	4,10,1 	4,10,0 
net1 is routed! 11/11
========================RESULT========================
net0 [3]
	3,8,15 
	3,9,14 
	3,10,13 
@	4,10,12 @	4,10,11 @	4,10,10 @	4,10,9 @	4,10,8 @	4,10,7 @	4,10,6 @	4,10,5 @	4,10,4 @	4,10,3 @	4,10,2 @	4,10,1 	4,10,0 
net1 [11]
	12,6,11 
	12,7,10 
	12,8,9 
	12,9,8 
	12,10,7 
	12,11,6 
	12,12,5 
	11,12,4 
	10,12,3 
	9,12,2 
	8,12,1 
	7,12,0 
net0 is routed! 3/15
net1 is routed! 11/11
* operation time = 15, total length = 26 cell usage = 12, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 7/12
========================RESULT========================
net0 [4]
	7,4,4 
	7,3,3 
	7,2,2 
	7,1,1 
	7,0,0 
net1 [7]
	7,7,12 
	7,8,11 
	7,9,10 
	7,10,9 
	7,11,8 
	7,12,7 
	8,12,6 
@	9,12,5 @	9,12,4 @	9,12,3 @	9,12,2 @	9,12,1 	9,12,0 
net0 is routed! 4/4
net1 is routed! 7/12
* operation time = 12, total length = 16 cell usage = 9, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[44]
try net1 ...
try net0 ...
	dependency on net1 at 0
	net0 is updated! 44=>7
Done!
1)PostRouting...[36]
try net1 ...
	net1 is updated! 36=>8
try net0 ...
Done!
2)PostRouting...[8]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 8/8
========================RESULT========================
net0 [7]
	7,11,7 
	8,11,6 
	9,11,5 
	10,11,4 
	11,11,3 
	12,11,2 
	12,10,1 
	12,9,0 
net1 [8]
	12,6,8 
	12,7,7 
	12,8,6 
	12,9,5 
	11,9,4 
	10,9,3 
	9,9,2 
	8,9,1 
	7,9,0 
net0 is routed! 7/7
net1 is routed! 8/8
* operation time = 8, total length = 15 cell usage = 12, mode = 1
======================================================
net0 is completely routable!..-1
net2 is completely routable!..-1
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[26]
try net0 ...
try net2 ...
	net2 is updated! 21=>13
try net1 ...
	net1 is updated! 26=>4
Done!
1)PostRouting...[13]
try net2 ...
try net0 ...
try net1 ...
Done!

ORDER
2 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 8/10
net1 is routed! 4/4
net2 is routed! 10/13
========================RESULT========================
net0 [8]
	12,6,10 
	12,5,9 
	12,4,8 
	12,3,7 
	12,2,6 
	11,2,5 
	10,2,4 
	9,2,3 
	8,2,2 
	8,3,1 
	7,3,0 
net1 [4]
	6,5,4 
	7,5,3 
	8,5,2 
	8,6,1 
	8,7,0 
net2 [10]
	12,6,13 
	12,5,12 
	12,4,11 
	12,3,10 
	12,2,9 
	12,1,8 
@	12,0,7 @	12,0,6 @	12,0,5 	12,0,4 
	11,0,3 
	10,0,2 
	9,0,1 
	8,0,0 
net0 is routed! 8/10
net1 is routed! 4/4
net2 is routed! 10/13
* operation time = 13, total length = 27 cell usage = 16, mode = 1
======================================================
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[15]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 11/15
net1 is routed! 3/3
========================RESULT========================
net0 [11]
	0,7,15 
	0,6,14 
	0,5,13 
	0,4,12 
	0,3,11 
	0,2,10 
	0,1,9 
	0,0,8 
	1,0,7 
	2,0,6 
	3,0,5 
@	4,0,4 @	4,0,3 @	4,0,2 @	4,0,1 	4,0,0 
net1 [3]
	3,10,3 
	3,11,2 
	3,12,1 
	4,12,0 
net0 is routed! 11/15
net1 is routed! 3/3
* operation time = 15, total length = 18 cell usage = 12, mode = 1
======================================================
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[28]
try net1 ...
try net0 ...
	net0 is updated! 28=>7
Done!
1)PostRouting...[18]
try net0 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 12/18
========================RESULT========================
net0 [7]
	5,0,7 
	6,0,6 
	7,0,5 
	8,0,4 
	8,1,3 
	8,2,2 
	8,3,1 
	8,4,0 
net1 [12]
	7,2,18 
	8,2,17 
	9,2,16 
	10,2,15 
	10,3,14 
	10,4,13 
	11,4,12 
	12,4,11 
	12,5,10 
	12,6,9 
	12,7,8 
	12,8,7 
	11,8,6 
	10,8,5 
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net0 is routed! 7/7
net1 is routed! 12/18
* operation time = 18, total length = 25 cell usage = 22, mode = 1
======================================================
net1 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net1 ...
try net0 ...
	dependency on net1 at 0
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 4/12
net0 [4]
	5,9,12 
	5,10,11 
	4,10,10 
	4,11,9 
@	4,12,8 @	4,12,7 @	4,12,6 @	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net1 is routed! 7/7
========================RESULT========================
net0 [4]
	5,9,12 
	5,10,11 
	4,10,10 
	4,11,9 
@	4,12,8 @	4,12,7 @	4,12,6 @	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net1 [7]
	7,5,7 
	6,5,6 
	6,6,5 
	6,7,4 
	5,7,3 
	5,8,2 
	5,9,1 
	5,10,0 
net0 is routed! 4/12
net1 is routed! 7/7
* operation time = 12, total length = 19 cell usage = 7, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..-1
net2 is completely routable!..4
Routing...
Done!
0)PostRouting...[40]
try net0 ...
try net1 ...
	net1 is updated! 34=>15
try net2 ...
	net2 is updated! 40=>5
Done!
1)PostRouting...[16]
try net1 ...
try net2 ...
try net0 ...
Done!

ORDER
1 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 10/16
net1 is routed! 13/15
net2 is routed! 5/5
========================RESULT========================
net0 [10]
	9,2,16 
	9,3,15 
	9,4,14 
	10,4,13 
	11,4,12 
	12,4,11 
	12,5,10 
	12,6,9 
	12,7,8 
	12,8,7 
	11,8,6 
	10,8,5 
	10,9,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net1 [13]
	12,6,15 
	12,7,14 
	12,8,13 
	12,9,12 
	12,10,11 
	12,11,10 
	11,11,9 
	10,11,8 
	9,11,7 
	8,11,6 
	7,11,5 
	6,11,4 
	5,11,3 
	4,11,2 
	3,11,1 
	3,10,0 
net2 [5]
	7,0,5 
	6,0,4 
	5,0,3 
	4,0,2 
	3,0,1 
	2,0,0 
net0 is routed! 10/16
net1 is routed! 13/15
net2 is routed! 5/5
* operation time = 16, total length = 36 cell usage = 29, mode = 1
======================================================
net0 is completely routable!..-1
net1 is completely routable!..4
net2 is completely routable!..4
Routing...
Done!
0)PostRouting...[10]
try net0 ...
try net1 ...
	dependency on net1 at 0
try net2 ...
Done!

ORDER
0 -> 1 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 2/7
net1 [2]
	5,11,7 
	4,11,6 
@	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net2 is routed! 2/10
net2 [2]
	7,9,10 
	7,10,9 
@	7,11,8 @	7,11,7 @	7,11,6 @	7,11,5 @	7,11,4 @	7,11,3 @	7,11,2 @	7,11,1 	7,11,0 
========================RESULT========================
net0 [4]
	12,6,4 
	12,7,3 
	12,8,2 
	11,8,1 
	10,8,0 
net1 [2]
	5,11,7 
	4,11,6 
@	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net2 [2]
	7,9,10 
	7,10,9 
@	7,11,8 @	7,11,7 @	7,11,6 @	7,11,5 @	7,11,4 @	7,11,3 @	7,11,2 @	7,11,1 	7,11,0 
net0 is routed! 4/4
net1 is routed! 2/7
net2 is routed! 2/10
* operation time = 10, total length = 21 cell usage = 5, mode = 1
======================================================
net1 is completely routable!..4
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[13]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 8/13
net1 is routed! 4/4
========================RESULT========================
net0 [8]
	2,0,13 
	2,1,12 
	2,2,11 
	2,3,10 
	2,4,9 
	2,5,8 
	3,5,7 
	4,5,6 
@	5,5,5 @	5,5,4 @	5,5,3 @	5,5,2 @	5,5,1 	5,5,0 
net1 [4]
	0,7,4 
	0,6,3 
	0,5,2 
	0,4,1 
	0,3,0 
net0 is routed! 8/13
net1 is routed! 4/4
* operation time = 13, total length = 17 cell usage = 10, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[17]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/17
net0 [3]
	0,2,17 
	1,2,16 
	2,2,15 
@	2,3,14 @	2,3,13 @	2,3,12 @	2,3,11 @	2,3,10 @	2,3,9 @	2,3,8 @	2,3,7 @	2,3,6 @	2,3,5 @	2,3,4 @	2,3,3 @	2,3,2 @	2,3,1 	2,3,0 
net1 is routed! 13/13
========================RESULT========================
net0 [3]
	0,2,17 
	1,2,16 
	2,2,15 
@	2,3,14 @	2,3,13 @	2,3,12 @	2,3,11 @	2,3,10 @	2,3,9 @	2,3,8 @	2,3,7 @	2,3,6 @	2,3,5 @	2,3,4 @	2,3,3 @	2,3,2 @	2,3,1 	2,3,0 
net1 [13]
	12,6,13 
	12,5,12 
	12,4,11 
	12,3,10 
	12,2,9 
	12,1,8 
	12,0,7 
	11,0,6 
	10,0,5 
	9,0,4 
	8,0,3 
	7,0,2 
	6,0,1 
	5,0,0 
net0 is routed! 3/17
net1 is routed! 13/13
* operation time = 17, total length = 30 cell usage = 14, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..3
net0 is completely routable!..4
net3 is completely routable!..4
Routing...
Done!
0)PostRouting...[30]
try net2 ...
try net1 ...
	net1 is updated! 10=>3
try net0 ...
	net0 is updated! 15=>4
try net3 ...
	net3 is updated! 30=>14
Done!
1)PostRouting...[14]
try net3 ...
try net2 ...
try net0 ...
try net1 ...
Done!

ORDER
3 -> 2 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 3/3
net2 is routed! 6/6
net3 is routed! 14/14
========================RESULT========================
net0 [4]
	10,9,4 
	10,10,3 
	10,11,2 
	10,12,1 
	9,12,0 
net1 [3]
	6,5,3 
	6,4,2 
	6,3,1 
	5,3,0 
net2 [6]
	12,6,6 
	12,5,5 
	12,4,4 
	12,3,3 
	11,3,2 
	10,3,1 
	9,3,0 
net3 [14]
	7,12,14 
	7,11,13 
	6,11,12 
	5,11,11 
	4,11,10 
	3,11,9 
	2,11,8 
	1,11,7 
	0,11,6 
	0,10,5 
	0,9,4 
	0,8,3 
	0,7,2 
	0,6,1 
	0,5,0 
net0 is routed! 4/4
net1 is routed! 3/3
net2 is routed! 6/6
net3 is routed! 14/14
* operation time = 14, total length = 27 cell usage = 23, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/18
net0 [3]
	3,9,18 
	3,10,17 
	3,11,16 
@	2,11,15 @	2,11,14 @	2,11,13 @	2,11,12 @	2,11,11 @	2,11,10 @	2,11,9 @	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net1 is routed! 12/14
========================RESULT========================
net0 [3]
	3,9,18 
	3,10,17 
	3,11,16 
@	2,11,15 @	2,11,14 @	2,11,13 @	2,11,12 @	2,11,11 @	2,11,10 @	2,11,9 @	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net1 [12]
	12,6,14 
	12,7,13 
	12,8,12 
	11,8,11 
	10,8,10 
	10,9,9 
	10,10,8 
	10,11,7 
	10,12,6 
	9,12,5 
	8,12,4 
	7,12,3 
	6,12,2 
	5,12,1 
	5,11,0 
net0 is routed! 3/18
net1 is routed! 12/14
* operation time = 18, total length = 32 cell usage = 15, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[22]
try net0 ...
try net1 ...
	net1 is updated! 22=>8
Done!
1)PostRouting...[13]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/13
net1 is routed! 8/8
========================RESULT========================
net0 [11]
	8,2,13 
	8,3,12 
	8,4,11 
	9,4,10 
	10,4,9 
	10,5,8 
	10,6,7 
	10,7,6 
	10,8,5 
	10,9,4 
	10,10,3 
	10,11,2 
	10,12,1 
	9,12,0 
net1 [8]
	6,0,8 
	7,0,7 
	8,0,6 
	8,1,5 
	8,2,4 
	8,3,3 
	8,4,2 
	8,5,1 
	8,6,0 
net0 is routed! 11/13
net1 is routed! 8/8
* operation time = 13, total length = 21 cell usage = 16, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[10]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 7/10
========================RESULT========================
net0 [2]
	2,12,2 
	3,12,1 
	4,12,0 
net1 [7]
	0,10,10 
	0,9,9 
	0,8,8 
	0,7,7 
	0,6,6 
	0,5,5 
	1,5,4 
@	2,5,3 @	2,5,2 @	2,5,1 	2,5,0 
net0 is routed! 2/2
net1 is routed! 7/10
* operation time = 10, total length = 12 cell usage = 7, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[7]
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/7
net0 [1]
	7,11,7 
@	7,12,6 @	7,12,5 @	7,12,4 @	7,12,3 @	7,12,2 @	7,12,1 	7,12,0 
net1 is routed! 5/5
========================RESULT========================
net0 [1]
	7,11,7 
@	7,12,6 @	7,12,5 @	7,12,4 @	7,12,3 @	7,12,2 @	7,12,1 	7,12,0 
net1 [5]
	12,6,5 
	11,6,4 
	10,6,3 
	10,7,2 
	10,8,1 
	10,9,0 
net0 is routed! 1/7
net1 is routed! 5/5
* operation time = 7, total length = 12 cell usage = 4, mode = 1
======================================================
net3 is completely routable!..-1
net0 is completely routable!..0
net2 is completely routable!..3
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[37]
try net3 ...
try net0 ...
	net0 is updated! 18=>5
try net2 ...
	net2 is updated! 26=>7
try net1 ...
	net1 is updated! 37=>10
Done!
1)PostRouting...[12]
try net3 ...
try net1 ...
try net2 ...
try net0 ...
Done!

ORDER
3 -> 1 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 5/5
net1 is routed! 10/10
net2 is routed! 7/7
net3 is routed! 12/12
========================RESULT========================
net0 [5]
	8,3,5 
	8,2,4 
	7,2,3 
	6,2,2 
	5,2,1 
	4,2,0 
net1 [10]
	6,5,10 
	7,5,9 
	8,5,8 
	9,5,7 
	9,6,6 
	9,7,5 
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net2 [7]
	0,2,7 
	1,2,6 
	2,2,5 
	3,2,4 
	3,3,3 
	3,4,2 
	3,5,1 
	4,5,0 
net3 [12]
	12,6,12 
	12,5,11 
	12,4,10 
	12,3,9 
	12,2,8 
	12,1,7 
	12,0,6 
	11,0,5 
	10,0,4 
	9,0,3 
	8,0,2 
	7,0,1 
	6,0,0 
net0 is routed! 5/5
net1 is routed! 10/10
net2 is routed! 7/7
net3 is routed! 12/12
* operation time = 12, total length = 34 cell usage = 30, mode = 1
======================================================
net0 is completely routable!..0
net3 is completely routable!..4
net2 is completely routable!..4
net1 is completely routable!..3
net4 is completely routable!..-1
Routing...
Done!
0)PostRouting...[50]
try net0 ...
	dependency on net4 at 50
try net3 ...
	dependency on net3 at 1
	net3 is updated! 6=>2
try net2 ...
	net2 is updated! 18=>11
try net1 ...
	net1 is updated! 32=>13
try net4 ...
	net4 is updated! 50=>18
Done!
1)PostRouting...[18]
try net4 ...
try net2 ...
try net1 ...
try net0 ...
try net3 ...
	dependency on net3 at 1
Done!

ORDER
4 -> 2 -> 1 -> 0 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 11/13
net2 is routed! 11/11
net3 is routed! 1/2
net4 is routed! 17/18
========================RESULT========================
net0 [4]
	10,5,4 
	10,6,3 
	10,7,2 
	9,7,1 
	8,7,0 
net1 [11]
	8,5,13 
	8,6,12 
	8,7,11 
	9,7,10 
	9,8,9 
	9,9,8 
	9,10,7 
	9,11,6 
	9,12,5 
	8,12,4 
	7,12,3 
	6,12,2 
	5,12,1 
	4,12,0 
net2 [11]
	5,5,11 
	6,5,10 
	7,5,9 
	8,5,8 
	8,6,7 
	8,7,6 
	9,7,5 
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net3 [1]
@	3,0,2 	3,0,1 
	2,0,0 
net4 [17]
	12,6,18 
	12,7,17 
	12,8,16 
	12,9,15 
	12,10,14 
	12,11,13 
	12,12,12 
	11,12,11 
	10,12,10 
	9,12,9 
	8,12,8 
@	7,12,7 	7,12,6 
	6,12,5 
	5,12,4 
	4,12,3 
	3,12,2 
	2,12,1 
	1,12,0 
net0 is routed! 4/4
net1 is routed! 11/13
net2 is routed! 11/11
net3 is routed! 1/2
net4 is routed! 17/18
* operation time = 18, total length = 48 cell usage = 24, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[12]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/12
net0 [3]
	8,5,12 
	7,5,11 
	6,5,10 
@	5,5,9 @	5,5,8 @	5,5,7 @	5,5,6 @	5,5,5 @	5,5,4 @	5,5,3 @	5,5,2 @	5,5,1 	5,5,0 
net1 is routed! 8/8
========================RESULT========================
net0 [3]
	8,5,12 
	7,5,11 
	6,5,10 
@	5,5,9 @	5,5,8 @	5,5,7 @	5,5,6 @	5,5,5 @	5,5,4 @	5,5,3 @	5,5,2 @	5,5,1 	5,5,0 
net1 [8]
	12,6,8 
	12,5,7 
	12,4,6 
	12,3,5 
	12,2,4 
	11,2,3 
	10,2,2 
	9,2,1 
	8,2,0 
net0 is routed! 3/12
net1 is routed! 8/8
* operation time = 12, total length = 20 cell usage = 9, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[32]
try net0 ...
	dependency on net0 at 1
try net1 ...
	net1 is updated! 32=>20
Done!
1)PostRouting...[20]
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/1
net1 is routed! 12/20
========================RESULT========================
net0 [1]
	7,7,1 
	6,7,0 
net1 [12]
	5,4,20 
	5,3,19 
	6,3,18 
	7,3,17 
	8,3,16 
	9,3,15 
	10,3,14 
	11,3,13 
	12,3,12 
	12,4,11 
	12,5,10 
	12,6,9 
	12,7,8 
	12,8,7 
	12,9,6 
	12,10,5 
	12,11,4 
	12,12,3 
	11,12,2 
	10,12,1 
	9,12,0 
net0 is routed! 1/1
net1 is routed! 12/20
* operation time = 20, total length = 21 cell usage = 19, mode = 1
======================================================
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[25]
try net1 ...
try net0 ...
	net0 is updated! 25=>10
Done!
1)PostRouting...[10]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 8/10
========================RESULT========================
net0 [10]
	5,0,10 
	5,1,9 
	5,2,8 
	5,3,7 
	5,4,6 
	5,5,5 
	5,6,4 
	5,7,3 
	5,8,2 
	5,9,1 
	4,9,0 
net1 [8]
	5,5,10 
	5,6,9 
	5,7,8 
	6,7,7 
	6,8,6 
	6,9,5 
	6,10,4 
	6,11,3 
	5,11,2 
	4,11,1 
	4,12,0 
net0 is routed! 10/10
net1 is routed! 8/10
* operation time = 10, total length = 20 cell usage = 15, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..-1
net2 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[22]
try net3 ...
try net1 ...
	net1 is updated! 13=>10
try net2 ...
	net2 is updated! 17=>3
try net0 ...
	net0 is updated! 22=>4
Done!
1)PostRouting...[10]
try net1 ...
try net0 ...
try net2 ...
try net3 ...
Done!

ORDER
1 -> 0 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 10/10
net2 is routed! 3/3
net3 is routed! 2/2
========================RESULT========================
net0 [4]
	0,2,4 
	1,2,3 
	2,2,2 
	2,1,1 
	2,0,0 
net1 [10]
	12,6,10 
	12,5,9 
	12,4,8 
	12,3,7 
	11,3,6 
	10,3,5 
	9,3,4 
	8,3,3 
	7,3,2 
	6,3,1 
	5,3,0 
net2 [3]
	10,9,3 
	9,9,2 
	9,10,1 
	9,11,0 
net3 [2]
	12,6,2 
	12,7,1 
	12,8,0 
net0 is routed! 4/4
net1 is routed! 10/10
net2 is routed! 3/3
net3 is routed! 2/2
* operation time = 10, total length = 19 cell usage = 14, mode = 1
======================================================
net0 is completely routable!..3
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[17]
try net0 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 9/17
========================RESULT========================
net0 [7]
	7,0,7 
	7,1,6 
	7,2,5 
	7,3,4 
	7,4,3 
	7,5,2 
	7,6,1 
	7,7,0 
net1 [9]
	7,5,17 
	7,6,16 
	7,7,15 
	7,8,14 
	7,9,13 
	7,10,12 
	7,11,11 
	7,12,10 
	8,12,9 
@	9,12,8 @	9,12,7 @	9,12,6 @	9,12,5 @	9,12,4 @	9,12,3 @	9,12,2 @	9,12,1 	9,12,0 
net0 is routed! 7/7
net1 is routed! 9/17
* operation time = 17, total length = 24 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..3
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[7]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 4/7
========================RESULT========================
net0 [2]
	5,9,2 
	5,10,1 
	5,11,0 
net1 [4]
	10,9,7 
	10,10,6 
	10,11,5 
	9,11,4 
@	9,12,3 @	9,12,2 @	9,12,1 	9,12,0 
net0 is routed! 2/2
net1 is routed! 4/7
* operation time = 7, total length = 9 cell usage = 4, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[9]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/9
net0 [2]
	4,0,9 
	5,0,8 
@	6,0,7 @	6,0,6 @	6,0,5 @	6,0,4 @	6,0,3 @	6,0,2 @	6,0,1 	6,0,0 
net1 is routed! 6/6
========================RESULT========================
net0 [2]
	4,0,9 
	5,0,8 
@	6,0,7 @	6,0,6 @	6,0,5 @	6,0,4 @	6,0,3 @	6,0,2 @	6,0,1 	6,0,0 
net1 [6]
	12,6,6 
	12,5,5 
	12,4,4 
	12,3,3 
	11,3,2 
	10,3,1 
	9,3,0 
net0 is routed! 2/9
net1 is routed! 6/6
* operation time = 9, total length = 15 cell usage = 6, mode = 1
======================================================
net3 is completely routable!..-1
net0 is completely routable!..0
net2 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[53]
try net3 ...
	net3 is updated! 16=>12
try net0 ...
	net0 is updated! 34=>17
try net2 ...
	dependency on net0 at 12
	net2 is updated! 39=>13
try net1 ...
	net1 is updated! 53=>13
Done!
1)PostRouting...[17]
try net1 ...
try net3 ...
try net2 ...
	dependency on net0 at 12
try net0 ...
Done!

ORDER
1 -> 3 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/17
net1 is routed! 13/13
net2 is routed! 4/13
net2 [4]
	4,4,13 
	3,4,12 
	2,4,11 
	2,5,10 
	2,6,9 
	2,5,8 
	2,6,7 
	2,5,6 
@	2,6,5 @	2,6,4 	2,6,3 
@	3,6,2 	3,6,1 
	2,6,0 
net3 is routed! 10/12
========================RESULT========================
net0 [9]
	9,3,17 
	8,3,16 
	8,4,15 
	8,5,14 
	7,5,13 
	6,5,12 
	5,5,11 
	5,6,10 
	5,7,9 
	5,8,8 
	5,9,7 
	5,10,6 
	5,11,5 
	5,12,4 
	6,12,3 
	7,12,2 
	8,12,1 
	9,12,0 
net1 [13]
	6,0,13 
	5,0,12 
	4,0,11 
	3,0,10 
	2,0,9 
	1,0,8 
	0,0,7 
	0,1,6 
	0,2,5 
	0,3,4 
	0,4,3 
	0,5,2 
	0,6,1 
	0,7,0 
net2 [4]
	4,4,13 
	3,4,12 
	2,4,11 
	2,5,10 
	2,6,9 
	2,5,8 
	2,6,7 
	2,5,6 
@	2,6,5 @	2,6,4 	2,6,3 
@	3,6,2 	3,6,1 
	2,6,0 
net3 [10]
	12,6,12 
	12,7,11 
	12,8,10 
	12,9,9 
	12,10,8 
	11,10,7 
	10,10,6 
	9,10,5 
	8,10,4 
	7,10,3 
	6,10,2 
	5,10,1 
	5,9,0 
net0 is routed! 9/17
net1 is routed! 13/13
net2 is routed! 4/13
net3 is routed! 10/12
* operation time = 17, total length = 55 cell usage = 41, mode = 1
======================================================
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[12]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/12
net1 is routed! 5/5
========================RESULT========================
net0 [6]
	4,7,12 
	3,7,11 
	2,7,10 
	1,7,9 
	0,7,8 
	0,8,7 
@	0,9,6 @	0,9,5 @	0,9,4 @	0,9,3 @	0,9,2 @	0,9,1 	0,9,0 
net1 [5]
	4,12,5 
	5,12,4 
	6,12,3 
	7,12,2 
	8,12,1 
	9,12,0 
net0 is routed! 6/12
net1 is routed! 5/5
* operation time = 12, total length = 17 cell usage = 9, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..-1
net0 is completely routable!..0
net5 is completely routable!..3
net2 is completely routable!..4
net4 may be unroutable!
Routing...
	dependency on net5 at 67
net4..succeed!
Done!
0)PostRouting...[78]
try net3 ...
try net1 ...
	net1 is updated! 16=>10
try net0 ...
	net0 is updated! 34=>17
try net5 ...
	net5 is updated! 71=>56
try net2 ...
	dependency on net5 at 34
	net2 is updated! 78=>35
try net4 ...
	dependency on net5 at 52
	net4 is updated! 69=>54
Done!
1)PostRouting...[56]
try net4 ...
	dependency on net5 at 52
try net5 ...
	dependency on net4 at 0
	net5 is updated! 56=>37
try net2 ...
	dependency on net0 at 16
	net2 is updated! 35=>18
try net1 ...
try net3 ...
try net0 ...
Done!
2)PostRouting...[54]
try net4 ...
	dependency on net5 at 33
	net4 is updated! 54=>35
try net5 ...
	dependency on net4 at 30
	net5 is updated! 37=>32
try net1 ...
try net2 ...
	dependency on net0 at 16
try net3 ...
try net0 ...
Done!
3)PostRouting...[35]
try net4 ...
	dependency on net5 at 26
	net4 is updated! 35=>27
try net5 ...
	dependency on net4 at 0
	net5 is updated! 32=>17
try net1 ...
try net2 ...
	dependency on net0 at 16
try net3 ...
try net0 ...
Done!
4)PostRouting...[27]
try net4 ...
	net4 is updated! 27=>8
try net1 ...
try net2 ...
	dependency on net0 at 16
try net5 ...
	dependency on net4 at 0
try net3 ...
try net0 ...
Done!
5)PostRouting...[18]
try net1 ...
try net4 ...
try net2 ...
	dependency on net0 at 16
try net5 ...
	dependency on net4 at 0
try net3 ...
try net0 ...
	net0 is updated! 17=>17 and -1=>5
Done!
6)PostRouting...[18]
try net1 ...
try net4 ...
try net2 ...
	dependency on net0 at 16
try net5 ...
	dependency on net4 at 0
try net3 ...
try net0 ...
Done!

ORDER
1 -> 4 -> 2 -> 5 -> 3 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/17
net1 is routed! 10/10
net2 is routed! 6/18
net2 [6]
	3,6,18 
	4,6,17 
@	4,5,16 	4,5,15 
@	5,5,14 @	5,5,13 	5,5,12 
	4,5,11 
@	5,5,10 @	5,5,9 	5,5,8 
	6,5,7 
	7,5,6 
	8,5,5 
	9,5,4 
	10,5,3 
	9,5,2 
@	8,5,1 	8,5,0 
net3 is routed! 5/5
net4 is routed! 8/8
net5 is routed! 12/17
========================RESULT========================
net0 [9]
	5,8,17 
	4,8,16 
	4,7,15 
	3,7,14 
	3,6,13 
	2,6,12 
	1,6,11 
	0,6,10 
	0,5,9 
	0,4,8 
	0,3,7 
	0,2,6 
	0,1,5 
	0,0,4 
	1,0,3 
	2,0,2 
	3,0,1 
	4,0,0 
--- continued
	4,7,15 
	5,7,14 
	6,7,13 
	7,7,12 
	7,8,11 
	7,9,10 
	7,10,9 
	7,11,8 
	6,11,7 
@	5,11,6 	5,11,5 
	4,11,4 
	3,11,3 
	2,11,2 
	1,11,1 
	0,11,0 
net1 [10]
	12,6,10 
	12,7,9 
	12,8,8 
	12,9,7 
	12,10,6 
	11,10,5 
	10,10,4 
	9,10,3 
	8,10,2 
	7,10,1 
	7,11,0 
net2 [6]
	3,6,18 
	4,6,17 
@	4,5,16 	4,5,15 
@	5,5,14 @	5,5,13 	5,5,12 
	4,5,11 
@	5,5,10 @	5,5,9 	5,5,8 
	6,5,7 
	7,5,6 
	8,5,5 
	9,5,4 
	10,5,3 
	9,5,2 
@	8,5,1 	8,5,0 
net3 [5]
	12,6,5 
	12,7,4 
	12,8,3 
	12,9,2 
	11,9,1 
	10,9,0 
net4 [8]
	9,0,8 
	10,0,7 
	11,0,6 
	12,0,5 
	12,1,4 
	12,2,3 
	12,3,2 
	12,4,1 
	12,5,0 
net5 [12]
	12,3,17 
	11,3,16 
	10,3,15 
	10,4,14 
	10,5,13 
	9,5,12 
	8,5,11 
	7,5,10 
	7,6,9 
	7,7,8 
	7,8,7 
	7,9,6 
	7,10,5 
	7,11,4 
	7,12,3 
	8,12,2 
@	9,12,1 	9,12,0 
net0 is routed! 9/17
net1 is routed! 10/10
net2 is routed! 6/18
net3 is routed! 5/5
net4 is routed! 8/8
net5 is routed! 12/17
* operation time = 18, total length = 75 cell usage = 46, mode = 1
======================================================
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[3]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
========================RESULT========================
net0 [3]
	2,8,3 
	2,9,2 
	2,10,1 
	2,11,0 
net0 is routed! 3/3
* operation time = 3, total length = 3 cell usage = 2, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[8]
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/8
net0 [1]
	6,0,8 
@	7,0,7 @	7,0,6 @	7,0,5 @	7,0,4 @	7,0,3 @	7,0,2 @	7,0,1 	7,0,0 
net1 is routed! 6/6
========================RESULT========================
net0 [1]
	6,0,8 
@	7,0,7 @	7,0,6 @	7,0,5 @	7,0,4 @	7,0,3 @	7,0,2 @	7,0,1 	7,0,0 
net1 [6]
	12,6,6 
	12,5,5 
	11,5,4 
	10,5,3 
	9,5,2 
	8,5,1 
	7,5,0 
net0 is routed! 1/8
net1 is routed! 6/6
* operation time = 8, total length = 14 cell usage = 5, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..3
net2 is completely routable!..4
net3 is completely routable!..4
Routing...
Done!
0)PostRouting...[17]
try net1 ...
try net0 ...
	dependency on net0 at 1
try net2 ...
try net3 ...
Done!

ORDER
1 -> 0 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 1/6
net0 [1]
	3,12,6 
@	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net1 is routed! 4/4
net2 is routed! 2/9
net2 [2]
	12,5,9 
	12,6,8 
@	12,7,7 @	12,7,6 @	12,7,5 @	12,7,4 @	12,7,3 @	12,7,2 @	12,7,1 	12,7,0 
net3 is routed! 7/17
net3 [7]
	0,9,17 
	0,8,16 
	0,7,15 
	0,6,14 
	0,5,13 
	0,4,12 
	0,3,11 
@	0,2,10 @	0,2,9 @	0,2,8 @	0,2,7 @	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 @	0,2,2 @	0,2,1 	0,2,0 
========================RESULT========================
net0 [1]
	3,12,6 
@	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net1 [4]
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net2 [2]
	12,5,9 
	12,6,8 
@	12,7,7 @	12,7,6 @	12,7,5 @	12,7,4 @	12,7,3 @	12,7,2 @	12,7,1 	12,7,0 
net3 [7]
	0,9,17 
	0,8,16 
	0,7,15 
	0,6,14 
	0,5,13 
	0,4,12 
	0,3,11 
@	0,2,10 @	0,2,9 @	0,2,8 @	0,2,7 @	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 @	0,2,2 @	0,2,1 	0,2,0 
net0 is routed! 1/6
net1 is routed! 4/4
net2 is routed! 2/9
net3 is routed! 7/17
* operation time = 17, total length = 36 cell usage = 10, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[14]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 7/14
========================RESULT========================
net0 [6]
	0,4,6 
	0,3,5 
	0,2,4 
	0,1,3 
	0,0,2 
	1,0,1 
	2,0,0 
net1 [7]
	4,5,14 
	4,6,13 
	4,7,12 
	4,8,11 
	4,9,10 
	4,10,9 
	4,11,8 
@	4,12,7 @	4,12,6 @	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net0 is routed! 6/6
net1 is routed! 7/14
* operation time = 14, total length = 20 cell usage = 11, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..-1
net2 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[21]
try net3 ...
try net1 ...
	net1 is updated! 9=>4
try net2 ...
	net2 is updated! 15=>5
try net0 ...
	net0 is updated! 21=>5
Done!
1)PostRouting...[5]
try net2 ...
try net0 ...
try net3 ...
try net1 ...
Done!

ORDER
2 -> 0 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 5/5
net1 is routed! 4/4
net2 is routed! 5/5
net3 is routed! 4/4
error at (12,6,4) for net 3!
========================RESULT========================
net0 [5]
	6,4,5 
	7,4,4 
	7,5,3 
	7,6,2 
	7,7,1 
	7,8,0 
net1 [4]
	12,6,4 
	12,7,3 
	12,8,2 
	11,8,1 
	10,8,0 
net2 [5]
	9,0,5 
	9,1,4 
	9,2,3 
	9,3,2 
	9,4,1 
	9,5,0 
net3 [4]
	12,6,4 
	12,5,3 
	12,4,2 
	12,3,1 
	12,2,0 
net0 is routed! 5/5
net1 is routed! 4/4
net2 is routed! 5/5
net3 is routed! 4/4
* operation time = 5, total length = 18 cell usage = 13, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 13/18
net1 is routed! 4/4
========================RESULT========================
net0 [13]
	12,5,18 
	12,4,17 
	12,3,16 
	12,2,15 
	12,1,14 
	12,0,13 
	11,0,12 
	10,0,11 
	9,0,10 
	8,0,9 
	7,0,8 
	6,0,7 
	5,0,6 
@	4,0,5 @	4,0,4 @	4,0,3 @	4,0,2 @	4,0,1 	4,0,0 
net1 [4]
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net0 is routed! 13/18
net1 is routed! 4/4
* operation time = 18, total length = 22 cell usage = 15, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[13]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/13
net0 [2]
	2,10,13 
	2,11,12 
@	2,12,11 @	2,12,10 @	2,12,9 @	2,12,8 @	2,12,7 @	2,12,6 @	2,12,5 @	2,12,4 @	2,12,3 @	2,12,2 @	2,12,1 	2,12,0 
net1 is routed! 10/10
========================RESULT========================
net0 [2]
	2,10,13 
	2,11,12 
@	2,12,11 @	2,12,10 @	2,12,9 @	2,12,8 @	2,12,7 @	2,12,6 @	2,12,5 @	2,12,4 @	2,12,3 @	2,12,2 @	2,12,1 	2,12,0 
net1 [10]
	12,6,10 
	12,7,9 
	12,8,8 
	11,8,7 
	10,8,6 
	9,8,5 
	8,8,4 
	7,8,3 
	6,8,2 
	5,8,1 
	5,9,0 
net0 is routed! 2/13
net1 is routed! 10/10
* operation time = 13, total length = 23 cell usage = 10, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..4
net0 is completely routable!..4
net3 is completely routable!..4
Routing...
Done!
0)PostRouting...[33]
try net2 ...
try net1 ...
	dependency on net1 at 0
	net1 is updated! 4=>2
try net0 ...
	net0 is updated! 19=>14
try net3 ...
	net3 is updated! 33=>19
Done!
1)PostRouting...[19]
try net3 ...
	net3 is updated! 19=>19 and -1=>13
try net1 ...
	dependency on net1 at 0
try net0 ...
try net2 ...
Done!
2)PostRouting...[19]
try net3 ...
try net1 ...
	dependency on net1 at 0
try net0 ...
try net2 ...
Done!

ORDER
3 -> 1 -> 0 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 8/14
net1 is routed! 2/2
net2 is routed! 1/1
net3 is routed! 13/19
========================RESULT========================
net0 [8]
	4,8,14 
	5,8,13 
	6,8,12 
	7,8,11 
	7,7,10 
	7,6,9 
	7,5,8 
	7,4,7 
	6,4,6 
	5,4,5 
	4,4,4 
	4,3,3 
	4,2,2 
	4,1,1 
	4,0,0 
--- continued
	4,2,2 
	3,2,1 
	2,2,0 
net1 [2]
	10,7,2 
	9,7,1 
	9,8,0 
net2 [1]
	12,6,1 
	12,5,0 
net3 [13]
	10,5,19 
	9,5,18 
	8,5,17 
	8,6,16 
	8,7,15 
	8,8,14 
	8,9,13 
@	8,10,12 	8,10,11 
	7,10,10 
	7,9,9 
@	7,8,8 	7,8,7 
	6,8,6 
	5,8,5 
	4,8,4 
	3,8,3 
	2,8,2 
	2,9,1 
	2,10,0 
--- continued
	8,5,17 
@	9,5,16 	9,5,15 
	8,5,14 
	7,5,13 
	7,4,12 
	6,4,11 
	5,4,10 
	4,4,9 
	4,3,8 
	4,2,7 
	4,1,6 
	4,0,5 
	5,0,4 
	6,0,3 
	7,0,2 
	8,0,1 
	9,0,0 
net0 is routed! 8/14
net1 is routed! 2/2
net2 is routed! 1/1
net3 is routed! 13/19
* operation time = 19, total length = 36 cell usage = 26, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[7]
try net0 ...
	dependency on net0 at 0
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 4/7
========================RESULT========================
net0 [2]
	3,11,2 
	3,12,1 
	4,12,0 
net1 [4]
	0,8,7 
	0,7,6 
	0,6,5 
	0,5,4 
@	0,4,3 @	0,4,2 @	0,4,1 	0,4,0 
net0 is routed! 2/2
net1 is routed! 4/7
* operation time = 7, total length = 9 cell usage = 4, mode = 1
======================================================
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[19]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 11/19
========================RESULT========================
net0 [11]
	3,2,19 
	2,2,18 
	1,2,17 
	0,2,16 
	0,3,15 
	0,4,14 
	0,5,13 
	0,6,12 
	0,7,11 
	0,8,10 
	0,9,9 
	0,10,8 
	0,11,7 
	1,11,6 
	2,11,5 
	3,11,4 
	4,11,3 
	5,11,2 
	6,11,1 
	6,10,0 
net0 is routed! 11/19
* operation time = 19, total length = 19 cell usage = 18, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[3]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
========================RESULT========================
net0 [3]
	8,6,3 
	8,7,2 
	8,8,1 
	7,8,0 
net0 is routed! 3/3
* operation time = 3, total length = 3 cell usage = 2, mode = 1
======================================================
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[12]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 10/12
========================RESULT========================
net0 [10]
	10,9,12 
	10,8,11 
	10,7,10 
	10,6,9 
	10,5,8 
	10,4,7 
	11,4,6 
	11,3,5 
	11,2,4 
	11,1,3 
	11,0,2 
	10,0,1 
	9,0,0 
--- continued
	10,5,8 
@	10,6,7 @	10,6,6 @	10,6,5 @	10,6,4 @	10,6,3 	10,6,2 
	11,6,1 
	12,6,0 
net0 is routed! 10/12
* operation time = 12, total length = 12 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[14]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 14/14
========================RESULT========================
net0 [14]
	12,6,14 
	11,6,13 
	10,6,12 
	10,7,11 
	10,8,10 
	10,9,9 
	10,10,8 
	10,11,7 
	9,11,6 
	8,11,5 
	7,11,4 
	6,11,3 
	5,11,2 
	4,11,1 
	3,11,0 
net0 is routed! 14/14
* operation time = 14, total length = 14 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[16]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 4/16
net0 [4]
	4,4,16 
	3,4,15 
	2,4,14 
	1,4,13 
	0,4,12 
	0,5,11 
	0,6,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	1,10,5 
	2,10,4 
	3,10,3 
	4,10,2 
	4,9,1 
	4,8,0 
========================RESULT========================
net0 [4]
	4,4,16 
	3,4,15 
	2,4,14 
	1,4,13 
	0,4,12 
	0,5,11 
	0,6,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	1,10,5 
	2,10,4 
	3,10,3 
	4,10,2 
	4,9,1 
	4,8,0 
net0 is routed! 4/16
* operation time = 16, total length = 16 cell usage = 15, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[28]
try net1 ...
try net0 ...
	net0 is updated! 28=>11
Done!
1)PostRouting...[11]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 8/8
========================RESULT========================
net0 [11]
	8,0,11 
	7,0,10 
	7,1,9 
	7,2,8 
	7,3,7 
	7,4,6 
	7,5,5 
	7,6,4 
	7,7,3 
	6,7,2 
	5,7,1 
	4,7,0 
net1 [8]
	8,5,8 
	8,6,7 
	8,7,6 
	8,8,5 
	8,9,4 
	8,10,3 
	8,11,2 
	8,12,1 
	9,12,0 
net0 is routed! 11/11
net1 is routed! 8/8
* operation time = 11, total length = 19 cell usage = 17, mode = 1
======================================================
net0 is completely routable!..-1
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[25]
try net0 ...
try net1 ...
	net1 is updated! 25=>12
Done!
1)PostRouting...[12]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 12/12
net1 is routed! 12/12
========================RESULT========================
net0 [12]
	12,6,12 
	11,6,11 
	10,6,10 
	9,6,9 
	8,6,8 
	7,6,7 
	7,7,6 
	7,8,5 
	6,8,4 
	5,8,3 
	4,8,2 
	3,8,1 
	2,8,0 
net1 [12]
	3,11,12 
	3,10,11 
	3,9,10 
	3,8,9 
	3,7,8 
	3,6,7 
	3,5,6 
	3,4,5 
	3,3,4 
	3,2,3 
	3,1,2 
	3,0,1 
	4,0,0 
--- continued
	3,7,8 
@	3,8,7 	3,8,6 
	4,8,5 
	3,8,4 
	2,8,3 
	1,8,2 
@	0,8,1 	0,8,0 
net0 is routed! 12/12
net1 is routed! 12/12
* operation time = 12, total length = 24 cell usage = 21, mode = 1
======================================================
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[3]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
========================RESULT========================
net0 [3]
	0,6,3 
	0,7,2 
	0,8,1 
	0,9,0 
net0 is routed! 3/3
* operation time = 3, total length = 3 cell usage = 2, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[8]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 5/8
net1 is routed! 2/2
========================RESULT========================
net0 [5]
	6,9,8 
	5,9,7 
	4,9,6 
	4,10,5 
	4,11,4 
@	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net1 [2]
	9,6,2 
	8,6,1 
	7,6,0 
net0 is routed! 5/8
net1 is routed! 2/2
* operation time = 8, total length = 10 cell usage = 5, mode = 1
======================================================
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[18]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 13/18
========================RESULT========================
net0 [4]
	3,0,4 
	4,0,3 
	5,0,2 
	6,0,1 
	7,0,0 
net1 [13]
	0,3,18 
	0,4,17 
	0,5,16 
	0,6,15 
	0,7,14 
	0,8,13 
	0,9,12 
	0,10,11 
	0,11,10 
	0,12,9 
	1,12,8 
	2,12,7 
	3,12,6 
@	4,12,5 @	4,12,4 @	4,12,3 @	4,12,2 @	4,12,1 	4,12,0 
net0 is routed! 4/4
net1 is routed! 13/18
* operation time = 18, total length = 22 cell usage = 15, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[6]
try net1 ...
try net0 ...
	dependency on net0 at 0
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/6
net0 [2]
	7,8,6 
	6,8,5 
@	6,9,4 @	6,9,3 @	6,9,2 @	6,9,1 	6,9,0 
net1 is routed! 3/3
========================RESULT========================
net0 [2]
	7,8,6 
	6,8,5 
@	6,9,4 @	6,9,3 @	6,9,2 @	6,9,1 	6,9,0 
net1 [3]
	12,6,3 
	11,6,2 
	10,6,1 
	9,6,0 
net0 is routed! 2/6
net1 is routed! 3/3
* operation time = 6, total length = 9 cell usage = 3, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[13]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 10/13
========================RESULT========================
net0 [2]
	4,10,2 
	4,11,1 
	4,12,0 
net1 [10]
	7,8,13 
	8,8,12 
	9,8,11 
	9,7,10 
	9,6,9 
	10,6,8 
	10,5,7 
	10,4,6 
	10,3,5 
	10,2,4 
@	11,2,3 @	11,2,2 @	11,2,1 	11,2,0 
net0 is routed! 2/2
net1 is routed! 10/13
* operation time = 13, total length = 15 cell usage = 10, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[26]
try net1 ...
try net0 ...
	net0 is updated! 26=>10
Done!
1)PostRouting...[15]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 15/15
========================RESULT========================
net0 [10]
	7,0,10 
	6,0,9 
	5,0,8 
	4,0,7 
	3,0,6 
	2,0,5 
	1,0,4 
	0,0,3 
	0,1,2 
	0,2,1 
	0,3,0 
net1 [15]
	12,6,15 
	12,5,14 
	12,4,13 
	12,3,12 
	12,2,11 
	12,1,10 
	12,0,9 
	11,0,8 
	10,0,7 
	9,0,6 
	8,0,5 
	7,0,4 
	6,0,3 
	5,0,2 
	4,0,1 
	3,0,0 
net0 is routed! 10/10
net1 is routed! 15/15
* operation time = 15, total length = 25 cell usage = 18, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[14]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 12/14
========================RESULT========================
net0 [12]
	8,11,14 
	8,10,13 
	8,9,12 
	8,8,11 
	8,7,10 
	8,6,9 
	9,6,8 
	10,6,7 
	10,5,6 
	10,4,5 
	10,3,4 
	10,2,3 
	9,2,2 
	9,1,1 
	9,0,0 
--- continued
	10,6,7 
@	9,6,6 @	9,6,5 @	9,6,4 @	9,6,3 @	9,6,2 @	9,6,1 	9,6,0 
net0 is routed! 12/14
* operation time = 14, total length = 14 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[3]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
========================RESULT========================
net0 [3]
	9,6,3 
	9,7,2 
	9,8,1 
	10,8,0 
net0 is routed! 3/3
* operation time = 3, total length = 3 cell usage = 2, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[13]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 13/13
========================RESULT========================
net0 [13]
	12,6,13 
	12,5,12 
	12,4,11 
	12,3,10 
	12,2,9 
	12,1,8 
	12,0,7 
	11,0,6 
	10,0,5 
	9,0,4 
	8,0,3 
	7,0,2 
	6,0,1 
	5,0,0 
net0 is routed! 13/13
* operation time = 13, total length = 13 cell usage = 12, mode = 1
======================================================
net3 is completely routable!..3
net1 is completely routable!..4
net0 is completely routable!..4
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[27]
try net3 ...
try net1 ...
	net1 is updated! 7=>2
try net0 ...
	net0 is updated! 16=>8
try net2 ...
	net2 is updated! 27=>10
Done!
1)PostRouting...[10]
try net2 ...
try net0 ...
try net3 ...
try net1 ...
Done!

ORDER
2 -> 0 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 8/8
net1 is routed! 2/2
net2 is routed! 10/10
net3 is routed! 4/4
========================RESULT========================
net0 [8]
	0,2,8 
	0,3,7 
	0,4,6 
	1,4,5 
	2,4,4 
	3,4,3 
	3,5,2 
	3,6,1 
	3,7,0 
net1 [2]
	0,7,2 
	0,6,1 
	0,5,0 
net2 [10]
	0,10,10 
	1,10,9 
	2,10,8 
	3,10,7 
	4,10,6 
	4,9,5 
	4,8,4 
	5,8,3 
	5,7,2 
	5,6,1 
	5,5,0 
net3 [4]
	6,10,4 
	5,10,3 
	4,10,2 
	4,11,1 
	4,12,0 
net0 is routed! 8/8
net1 is routed! 2/2
net2 is routed! 10/10
net3 is routed! 4/4
* operation time = 10, total length = 24 cell usage = 19, mode = 1
======================================================
net2 is completely routable!..-1
net0 is completely routable!..3
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[14]
try net2 ...
try net0 ...
try net1 ...
Done!

ORDER
2 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 3/8
net0 [3]
	8,6,8 
	8,7,7 
	8,8,6 
@	7,8,5 @	7,8,4 @	7,8,3 @	7,8,2 @	7,8,1 	7,8,0 
net1 is routed! 5/14
net1 [5]
	2,3,14 
	2,2,13 
	2,1,12 
	2,0,11 
	3,0,10 
@	4,0,9 @	4,0,8 @	4,0,7 @	4,0,6 @	4,0,5 @	4,0,4 @	4,0,3 @	4,0,2 @	4,0,1 	4,0,0 
--- continued
	4,0,3 
	4,1,2 
	4,2,1 
	5,2,0 
net2 is routed! 4/4
========================RESULT========================
net0 [3]
	8,6,8 
	8,7,7 
	8,8,6 
@	7,8,5 @	7,8,4 @	7,8,3 @	7,8,2 @	7,8,1 	7,8,0 
net1 [5]
	2,3,14 
	2,2,13 
	2,1,12 
	2,0,11 
	3,0,10 
@	4,0,9 @	4,0,8 @	4,0,7 @	4,0,6 @	4,0,5 @	4,0,4 @	4,0,3 @	4,0,2 @	4,0,1 	4,0,0 
--- continued
	4,0,3 
	4,1,2 
	4,2,1 
	5,2,0 
net2 [4]
	12,6,4 
	12,5,3 
	12,4,2 
	11,4,1 
	10,4,0 
net0 is routed! 3/8
net1 is routed! 5/14
net2 is routed! 4/4
* operation time = 14, total length = 26 cell usage = 9, mode = 1
======================================================
net1 is completely routable!..3
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[8]
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/8
net0 [1]
	4,9,8 
@	4,10,7 @	4,10,6 @	4,10,5 @	4,10,4 @	4,10,3 @	4,10,2 @	4,10,1 	4,10,0 
net1 is routed! 6/6
========================RESULT========================
net0 [1]
	4,9,8 
@	4,10,7 @	4,10,6 @	4,10,5 @	4,10,4 @	4,10,3 @	4,10,2 @	4,10,1 	4,10,0 
net1 [6]
	12,6,6 
	11,6,5 
	10,6,4 
	9,6,3 
	8,6,2 
	7,6,1 
	7,7,0 
net0 is routed! 1/8
net1 is routed! 6/6
* operation time = 8, total length = 14 cell usage = 5, mode = 1
======================================================
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[5]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 5/5
========================RESULT========================
net0 [5]
	5,0,5 
	4,0,4 
	3,0,3 
	2,0,2 
	2,1,1 
	2,2,0 
net0 is routed! 5/5
* operation time = 5, total length = 5 cell usage = 4, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[16]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/16
net1 is routed! 6/6
========================RESULT========================
net0 [9]
	0,4,16 
	0,5,15 
	0,6,14 
	0,7,13 
	0,8,12 
	0,9,11 
	1,9,10 
	2,9,9 
	3,9,8 
@	4,9,7 @	4,9,6 @	4,9,5 @	4,9,4 @	4,9,3 @	4,9,2 @	4,9,1 	4,9,0 
--- continued
	0,8,12 
	0,7,11 
	0,6,10 
	0,5,9 
	0,4,8 
	0,3,7 
	0,2,6 
	0,1,5 
	0,0,4 
	1,0,3 
	2,0,2 
	3,0,1 
	4,0,0 
net1 [6]
	12,6,6 
	11,6,5 
	10,6,4 
	9,6,3 
	8,6,2 
	7,6,1 
	6,6,0 
net0 is routed! 9/16
net1 is routed! 6/6
* operation time = 16, total length = 22 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[8]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 8/8
========================RESULT========================
net0 [8]
	12,6,8 
	11,6,7 
	10,6,6 
	9,6,5 
	8,6,4 
	7,6,3 
	6,6,2 
	5,6,1 
	4,6,0 
net0 is routed! 8/8
* operation time = 8, total length = 8 cell usage = 7, mode = 1
======================================================
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[4]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 4/4
========================RESULT========================
net0 [4]
	4,4,4 
	3,4,3 
	2,4,2 
	1,4,1 
	0,4,0 
net0 is routed! 4/4
* operation time = 4, total length = 4 cell usage = 3, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[5]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 5/5
========================RESULT========================
net0 [5]
	12,6,5 
	12,5,4 
	12,4,3 
	12,3,2 
	11,3,1 
	10,3,0 
net0 is routed! 5/5
* operation time = 5, total length = 5 cell usage = 4, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[9]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 9/9
========================RESULT========================
net0 [9]
	12,6,9 
	12,5,8 
	12,4,7 
	12,3,6 
	12,2,5 
	11,2,4 
	10,2,3 
	9,2,2 
	8,2,1 
	7,2,0 
net0 is routed! 9/9
* operation time = 9, total length = 9 cell usage = 8, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[6]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
========================RESULT========================
net0 [6]
	12,6,6 
	12,5,5 
	12,4,4 
	11,4,3 
	10,4,2 
	9,4,1 
	8,4,0 
net0 is routed! 6/6
* operation time = 6, total length = 6 cell usage = 5, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[11]
try net0 ...
try net1 ...
	dependency on net1 at 0
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 8/8
net1 is routed! 2/11
net1 [2]
	3,5,11 
	3,4,10 
@	4,4,9 @	4,4,8 @	4,4,7 @	4,4,6 @	4,4,5 @	4,4,4 @	4,4,3 @	4,4,2 @	4,4,1 	4,4,0 
========================RESULT========================
net0 [8]
	10,5,8 
	10,6,7 
	10,7,6 
	9,7,5 
	9,8,4 
	9,9,3 
	9,10,2 
	9,11,1 
	9,12,0 
net1 [2]
	3,5,11 
	3,4,10 
@	4,4,9 @	4,4,8 @	4,4,7 @	4,4,6 @	4,4,5 @	4,4,4 @	4,4,3 @	4,4,2 @	4,4,1 	4,4,0 
net0 is routed! 8/8
net1 is routed! 2/11
* operation time = 11, total length = 19 cell usage = 8, mode = 1
======================================================
net3 is completely routable!..3
net2 is completely routable!..4
net1 is completely routable!..4
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[24]
try net3 ...
try net2 ...
	dependency on net2 at 0
	net2 is updated! 7=>2
try net1 ...
	net1 is updated! 12=>4
try net0 ...
	net0 is updated! 24=>11
Done!
1)PostRouting...[11]
try net0 ...
try net3 ...
try net1 ...
try net2 ...
	dependency on net2 at 0
Done!

ORDER
0 -> 3 -> 1 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 4/4
net2 is routed! 2/2
net3 is routed! 4/4
========================RESULT========================
net0 [11]
	0,5,11 
	0,6,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
	0,11,5 
	0,12,4 
	1,12,3 
	2,12,2 
	3,12,1 
	4,12,0 
net1 [4]
	0,2,4 
	1,2,3 
	2,2,2 
	2,1,1 
	2,0,0 
net2 [2]
	9,3,2 
	9,2,1 
	10,2,0 
net3 [4]
	4,0,4 
	5,0,3 
	6,0,2 
	7,0,1 
	8,0,0 
net0 is routed! 11/11
net1 is routed! 4/4
net2 is routed! 2/2
net3 is routed! 4/4
* operation time = 11, total length = 21 cell usage = 17, mode = 1
======================================================
