net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[33]
try net1 ...
try net0 ...
	net0 is updated! 33=>13
Done!
1)PostRouting...[19]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 13/13
net1 is routed! 19/19
========================RESULT========================
net0 [13]
	3,0,13 
	3,1,12 
	3,2,11 
	3,3,10 
	3,4,9 
	3,5,8 
	3,6,7 
	3,7,6 
	3,8,5 
	3,9,4 
	3,10,3 
	2,10,2 
	1,10,1 
	0,10,0 
net1 [19]
	5,3,19 
	5,4,18 
	5,5,17 
	5,6,16 
	5,7,15 
	5,8,14 
	5,9,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net0 is routed! 13/13
net1 is routed! 19/19
* operation time = 19, total length = 32 cell usage = 30, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[34]
try net1 ...
try net0 ...
	net0 is updated! 34=>18
Done!
1)PostRouting...[18]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 18/18
net1 is routed! 15/15
========================RESULT========================
net0 [18]
	20,8,18 
	20,7,17 
	20,6,16 
	20,5,15 
	19,5,14 
	18,5,13 
	17,5,12 
	16,5,11 
	15,5,10 
	14,5,9 
	13,5,8 
	12,5,7 
	11,5,6 
	10,5,5 
	9,5,4 
	8,5,3 
	8,4,2 
	8,3,1 
	8,2,0 
net1 [15]
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	13,11,9 
	13,12,8 
	13,13,7 
	13,14,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net0 is routed! 18/18
net1 is routed! 15/15
* operation time = 18, total length = 33 cell usage = 31, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..0
net0 is completely routable!..0
net3 is completely routable!..4
Routing...
Done!
0)PostRouting...[42]
try net2 ...
try net1 ...
	net1 is updated! 17=>3
try net0 ...
	dependency on net1 at 0
	net0 is updated! 29=>11
try net3 ...
	net3 is updated! 42=>12
Done!
1)PostRouting...[13]
try net2 ...
try net0 ...
	dependency on net1 at 0
try net3 ...
try net1 ...
Done!

ORDER
2 -> 0 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 3/3
net2 is routed! 13/13
net3 is routed! 10/12
========================RESULT========================
net0 [11]
	9,8,11 
	8,8,10 
	7,8,9 
	6,8,8 
	5,8,7 
	4,8,6 
	4,7,5 
	4,6,4 
	4,5,3 
	4,4,2 
	4,3,1 
	4,2,0 
net1 [3]
	13,7,3 
	12,7,2 
	11,7,1 
	10,7,0 
net2 [13]
	20,10,13 
	20,9,12 
	20,8,11 
	20,7,10 
	20,6,9 
	20,5,8 
	19,5,7 
	18,5,6 
	17,5,5 
	16,5,4 
	15,5,3 
	14,5,2 
	13,5,1 
	12,5,0 
net3 [10]
	7,10,12 
	8,10,11 
	8,11,10 
	8,12,9 
	8,13,8 
	8,14,7 
	8,15,6 
	8,16,5 
	8,17,4 
	8,18,3 
	8,19,2 
	8,20,1 
	7,20,0 
net0 is routed! 11/11
net1 is routed! 3/3
net2 is routed! 13/13
net3 is routed! 10/12
* operation time = 13, total length = 39 cell usage = 35, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[10]
try net1 ...
	dependency on net1 at 0
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 7/10
net1 is routed! 2/2
========================RESULT========================
net0 [7]
	11,15,10 
	11,16,9 
	11,17,8 
	11,18,7 
	11,19,6 
	11,20,5 
	12,20,4 
@	13,20,3 @	13,20,2 @	13,20,1 	13,20,0 
net1 [2]
	13,13,2 
	13,12,1 
	12,12,0 
net0 is routed! 7/10
net1 is routed! 2/2
* operation time = 10, total length = 12 cell usage = 7, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[27]
try net1 ...
try net0 ...
	net0 is updated! 27=>6
Done!
1)PostRouting...[20]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 20/20
========================RESULT========================
net0 [6]
	14,2,6 
	13,2,5 
	12,2,4 
	11,2,3 
	10,2,2 
	9,2,1 
	8,2,0 
net1 [20]
	20,10,20 
	20,9,19 
	20,8,18 
	20,7,17 
	20,6,16 
	20,5,15 
	20,4,14 
	20,3,13 
	20,2,12 
	20,1,11 
	20,0,10 
	19,0,9 
	18,0,8 
	17,0,7 
	16,0,6 
	15,0,5 
	14,0,4 
	13,0,3 
	12,0,2 
	11,0,1 
	10,0,0 
net0 is routed! 6/6
net1 is routed! 20/20
* operation time = 20, total length = 26 cell usage = 24, mode = 1
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
	13,8,12 
	14,8,11 
	15,8,10 
@	15,7,9 @	15,7,8 @	15,7,7 @	15,7,6 @	15,7,5 @	15,7,4 @	15,7,3 @	15,7,2 @	15,7,1 	15,7,0 
net1 is routed! 8/8
========================RESULT========================
net0 [3]
	13,8,12 
	14,8,11 
	15,8,10 
@	15,7,9 @	15,7,8 @	15,7,7 @	15,7,6 @	15,7,5 @	15,7,4 @	15,7,3 @	15,7,2 @	15,7,1 	15,7,0 
net1 [8]
	20,10,8 
	20,9,7 
	20,8,6 
	20,7,5 
	20,6,4 
	20,5,3 
	19,5,2 
	18,5,1 
	17,5,0 
net0 is routed! 3/12
net1 is routed! 8/8
* operation time = 12, total length = 20 cell usage = 9, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[30]
try net1 ...
try net0 ...
	net0 is updated! 30=>14
Done!
1)PostRouting...[15]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 14/14
net1 is routed! 11/15
========================RESULT========================
net0 [14]
	16,15,14 
	16,16,13 
	16,17,12 
	16,18,11 
	16,19,10 
	16,20,9 
	15,20,8 
	14,20,7 
	13,20,6 
	12,20,5 
	11,20,4 
	10,20,3 
	9,20,2 
	8,20,1 
	7,20,0 
net1 [11]
	18,13,15 
	17,13,14 
	16,13,13 
	15,13,12 
	14,13,11 
	13,13,10 
	13,14,9 
	13,15,8 
	12,15,7 
	11,15,6 
	10,15,5 
	9,15,4 
	8,15,3 
	8,14,2 
	8,13,1 
	8,12,0 
net0 is routed! 14/14
net1 is routed! 11/15
* operation time = 15, total length = 29 cell usage = 27, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
net3 is completely routable!..0
net2 is completely routable!..4
Routing...
Done!
0)PostRouting...[49]
try net1 ...
try net0 ...
	net0 is updated! 24=>4
try net3 ...
	net3 is updated! 31=>6
try net2 ...
	dependency on net1 at 0
	net2 is updated! 49=>17
Done!
1)PostRouting...[19]
try net1 ...
try net2 ...
	dependency on net1 at 0
try net3 ...
try net0 ...
Done!

ORDER
1 -> 2 -> 3 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 19/19
net2 is routed! 17/17
net3 is routed! 6/6
========================RESULT========================
net0 [4]
	8,7,4 
	7,7,3 
	6,7,2 
	5,7,1 
	4,7,0 
net1 [19]
	20,10,19 
	20,9,18 
	20,8,17 
	20,7,16 
	20,6,15 
	20,5,14 
	19,5,13 
	18,5,12 
	17,5,11 
	16,5,10 
	15,5,9 
	14,5,8 
	13,5,7 
	12,5,6 
	11,5,5 
	10,5,4 
	9,5,3 
	8,5,2 
	7,5,1 
	6,5,0 
net2 [17]
	5,5,17 
	5,6,16 
	5,7,15 
	5,8,14 
	5,9,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net3 [6]
	3,3,6 
	2,3,5 
	1,3,4 
	0,3,3 
	0,4,2 
	0,5,1 
	0,6,0 
net0 is routed! 4/4
net1 is routed! 19/19
net2 is routed! 17/17
net3 is routed! 6/6
* operation time = 19, total length = 46 cell usage = 41, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[16]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 5/16
net0 [5]
	4,11,16 
	5,11,15 
	6,11,14 
	6,12,13 
	7,12,12 
@	8,12,11 @	8,12,10 @	8,12,9 @	8,12,8 @	8,12,7 @	8,12,6 @	8,12,5 @	8,12,4 @	8,12,3 @	8,12,2 @	8,12,1 	8,12,0 
net1 is routed! 10/10
========================RESULT========================
net0 [5]
	4,11,16 
	5,11,15 
	6,11,14 
	6,12,13 
	7,12,12 
@	8,12,11 @	8,12,10 @	8,12,9 @	8,12,8 @	8,12,7 @	8,12,6 @	8,12,5 @	8,12,4 @	8,12,3 @	8,12,2 @	8,12,1 	8,12,0 
net1 [10]
	20,10,10 
	19,10,9 
	18,10,8 
	17,10,7 
	16,10,6 
	15,10,5 
	14,10,4 
	13,10,3 
	12,10,2 
	11,10,1 
	10,10,0 
net0 is routed! 5/16
net1 is routed! 10/10
* operation time = 16, total length = 26 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[17]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 15/17
========================RESULT========================
net0 [15]
	5,18,17 
	5,17,16 
	5,16,15 
	5,15,14 
	5,14,13 
	5,13,12 
	4,13,11 
	4,12,10 
	4,11,9 
	4,10,8 
	4,9,7 
	5,9,6 
	6,9,5 
	7,9,4 
	8,9,3 
	8,8,2 
	8,7,1 
	9,7,0 
net0 is routed! 15/17
* operation time = 17, total length = 17 cell usage = 16, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[38]
try net1 ...
try net0 ...
	net0 is updated! 38=>24
Done!
1)PostRouting...[24]
try net1 ...
try net0 ...
Done!
2)PostRouting...[24]
try net1 ...
try net0 ...
ripup net1 ...
	dependency on net0 at 17
Done!
3)PostRouting...[18]
try net0 ...
try net1 ...
	dependency on net0 at 17
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 18/18
net1 is routed! 13/18
========================RESULT========================
net0 [18]
	14,3,18 
	13,3,17 
	13,4,16 
	13,5,15 
	13,6,14 
	13,7,13 
	13,8,12 
	13,9,11 
	13,10,10 
	13,11,9 
	13,12,8 
	13,13,7 
	13,14,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net1 [13]
	12,5,18 
	12,6,17 
	12,7,16 
	12,8,15 
	12,9,14 
	12,10,13 
	12,11,12 
	11,11,11 
	10,11,10 
	9,11,9 
@	8,11,8 	8,11,7 
	8,10,6 
	8,9,5 
	7,9,4 
	6,9,3 
	5,9,2 
	4,9,1 
	4,10,0 
net0 is routed! 18/18
net1 is routed! 13/18
* operation time = 18, total length = 36 cell usage = 33, mode = 1
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
net0 is routed! 5/15
net0 [5]
	2,0,15 
	1,0,14 
	0,0,13 
	0,1,12 
	0,2,11 
@	0,3,10 @	0,3,9 @	0,3,8 @	0,3,7 @	0,3,6 @	0,3,5 @	0,3,4 @	0,3,3 @	0,3,2 @	0,3,1 	0,3,0 
net1 is routed! 9/9
========================RESULT========================
net0 [5]
	2,0,15 
	1,0,14 
	0,0,13 
	0,1,12 
	0,2,11 
@	0,3,10 @	0,3,9 @	0,3,8 @	0,3,7 @	0,3,6 @	0,3,5 @	0,3,4 @	0,3,3 @	0,3,2 @	0,3,1 	0,3,0 
net1 [9]
	6,0,9 
	5,0,8 
	4,0,7 
	4,1,6 
	4,2,5 
	3,2,4 
	2,2,3 
	2,3,2 
	2,4,1 
	2,5,0 
net0 is routed! 5/15
net1 is routed! 9/9
* operation time = 15, total length = 24 cell usage = 12, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[22]
try net1 ...
try net0 ...
	net0 is updated! 22=>16
Done!
1)PostRouting...[16]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 16/16
net1 is routed! 5/5
========================RESULT========================
net0 [16]
	0,15,16 
	1,15,15 
	2,15,14 
	3,15,13 
	4,15,12 
	5,15,11 
	6,15,10 
	7,15,9 
	8,15,8 
	9,15,7 
	10,15,6 
	11,15,5 
	12,15,4 
	13,15,3 
	13,14,2 
	13,13,1 
	13,12,0 
net1 [5]
	20,10,5 
	19,10,4 
	18,10,3 
	17,10,2 
	16,10,1 
	15,10,0 
net0 is routed! 16/16
net1 is routed! 5/5
* operation time = 16, total length = 21 cell usage = 19, mode = 1
======================================================
net0 is completely routable!..0
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
	15,18,13 
	15,17,12 
	15,16,11 
	15,15,10 
	15,14,9 
	15,13,8 
	15,12,7 
	15,11,6 
	15,10,5 
	15,9,4 
	15,8,3 
	15,7,2 
	16,7,1 
	17,7,0 
net0 is routed! 13/13
* operation time = 13, total length = 13 cell usage = 12, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[24]
try net1 ...
try net0 ...
	net0 is updated! 24=>3
Done!
1)PostRouting...[20]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
net1 is routed! 20/20
========================RESULT========================
net0 [3]
	5,2,3 
	5,1,2 
	5,0,1 
	6,0,0 
net1 [20]
	20,10,20 
	20,9,19 
	20,8,18 
	20,7,17 
	20,6,16 
	20,5,15 
	19,5,14 
	18,5,13 
	17,5,12 
	16,5,11 
	15,5,10 
	14,5,9 
	13,5,8 
	12,5,7 
	11,5,6 
	10,5,5 
	9,5,4 
	9,4,3 
	9,3,2 
	9,2,1 
	8,2,0 
net0 is routed! 3/3
net1 is routed! 20/20
* operation time = 20, total length = 23 cell usage = 21, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..0
Routing...
Done!
0)PostRouting...[26]
try net0 ...
try net1 ...
	net1 is updated! 26=>14
Done!
1)PostRouting...[14]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 12/14
========================RESULT========================
net0 [11]
	13,8,11 
	13,7,10 
	13,6,9 
	13,5,8 
	14,5,7 
	14,4,6 
	14,3,5 
	14,2,4 
	15,2,3 
	16,2,2 
	17,2,1 
	18,2,0 
net1 [12]
	11,10,14 
	10,10,13 
	10,11,12 
	10,12,11 
	10,13,10 
	10,14,9 
	10,15,8 
	10,16,7 
	10,17,6 
	10,18,5 
	10,19,4 
	10,20,3 
	11,20,2 
	12,20,1 
	13,20,0 
net0 is routed! 11/11
net1 is routed! 12/14
* operation time = 14, total length = 25 cell usage = 23, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[24]
try net1 ...
try net0 ...
	net0 is updated! 24=>6
Done!
1)PostRouting...[17]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 17/17
========================RESULT========================
net0 [6]
	4,17,6 
	5,17,5 
	6,17,4 
	7,17,3 
	8,17,2 
	9,17,1 
	10,17,0 
net1 [17]
	20,10,17 
	19,10,16 
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	12,10,9 
	11,10,8 
	10,10,7 
	9,10,6 
	8,10,5 
	8,11,4 
	8,12,3 
	8,13,2 
	8,14,1 
	8,15,0 
net0 is routed! 6/6
net1 is routed! 17/17
* operation time = 17, total length = 23 cell usage = 21, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..0
net0 is completely routable!..0
net3 is completely routable!..0
Routing...
Done!
0)PostRouting...[56]
try net2 ...
try net1 ...
	net1 is updated! 26=>6
try net0 ...
	net0 is updated! 36=>9
try net3 ...
	net3 is updated! 56=>19
Done!
1)PostRouting...[19]
try net2 ...
try net3 ...
try net0 ...
try net1 ...
Done!

ORDER
2 -> 3 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 9/9
net1 is routed! 6/6
net2 is routed! 19/19
net3 is routed! 19/19
========================RESULT========================
net0 [9]
	14,8,9 
	14,9,8 
	14,10,7 
	14,11,6 
	13,11,5 
	12,11,4 
	11,11,3 
	10,11,2 
	9,11,1 
	8,11,0 
net1 [6]
	15,2,6 
	14,2,5 
	13,2,4 
	12,2,3 
	11,2,2 
	10,2,1 
	9,2,0 
net2 [19]
	20,10,19 
	20,9,18 
	20,8,17 
	20,7,16 
	20,6,15 
	20,5,14 
	20,4,13 
	20,3,12 
	20,2,11 
	20,1,10 
	20,0,9 
	19,0,8 
	18,0,7 
	17,0,6 
	16,0,5 
	15,0,4 
	14,0,3 
	13,0,2 
	12,0,1 
	11,0,0 
net3 [19]
	16,10,19 
	15,10,18 
	15,11,17 
	15,12,16 
	15,13,15 
	15,14,14 
	15,15,13 
	15,16,12 
	15,17,11 
	15,18,10 
	15,19,9 
	15,20,8 
	14,20,7 
	13,20,6 
	12,20,5 
	11,20,4 
	10,20,3 
	9,20,2 
	8,20,1 
	7,20,0 
net0 is routed! 9/9
net1 is routed! 6/6
net2 is routed! 19/19
net3 is routed! 19/19
* operation time = 19, total length = 53 cell usage = 49, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[15]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 7/15
net0 [7]
	9,13,15 
	9,12,14 
	9,11,13 
	9,10,12 
	8,10,11 
	8,9,10 
	8,8,9 
@	8,7,8 @	8,7,7 @	8,7,6 @	8,7,5 @	8,7,4 @	8,7,3 @	8,7,2 @	8,7,1 	8,7,0 
net1 is routed! 5/7
========================RESULT========================
net0 [7]
	9,13,15 
	9,12,14 
	9,11,13 
	9,10,12 
	8,10,11 
	8,9,10 
	8,8,9 
@	8,7,8 @	8,7,7 @	8,7,6 @	8,7,5 @	8,7,4 @	8,7,3 @	8,7,2 @	8,7,1 	8,7,0 
net1 [5]
	7,15,7 
	8,15,6 
	8,16,5 
	8,17,4 
	8,18,3 
	8,19,2 
	7,19,1 
	7,20,0 
net0 is routed! 7/15
net1 is routed! 5/7
* operation time = 15, total length = 22 cell usage = 12, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..2
Routing...
Done!
0)PostRouting...[16]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/16
net0 [2]
	8,17,16 
	9,17,15 
@	10,17,14 @	10,17,13 @	10,17,12 @	10,17,11 @	10,17,10 @	10,17,9 @	10,17,8 @	10,17,7 @	10,17,6 @	10,17,5 @	10,17,4 @	10,17,3 @	10,17,2 @	10,17,1 	10,17,0 
net1 is routed! 13/13
========================RESULT========================
net0 [2]
	8,17,16 
	9,17,15 
@	10,17,14 @	10,17,13 @	10,17,12 @	10,17,11 @	10,17,10 @	10,17,9 @	10,17,8 @	10,17,7 @	10,17,6 @	10,17,5 @	10,17,4 @	10,17,3 @	10,17,2 @	10,17,1 	10,17,0 
net1 [13]
	20,10,13 
	19,10,12 
	18,10,11 
	17,10,10 
	16,10,9 
	15,10,8 
	14,10,7 
	13,10,6 
	12,10,5 
	12,11,4 
	12,12,3 
	12,13,2 
	12,14,1 
	12,15,0 
net0 is routed! 2/16
net1 is routed! 13/13
* operation time = 16, total length = 29 cell usage = 13, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
net3 is completely routable!..0
net2 is completely routable!..4
Routing...
Done!
0)PostRouting...[44]
try net1 ...
try net0 ...
	net0 is updated! 18=>2
try net3 ...
	net3 is updated! 24=>5
try net2 ...
	net2 is updated! 44=>19
Done!
1)PostRouting...[19]
try net1 ...
try net2 ...
try net3 ...
try net0 ...
Done!

ORDER
1 -> 2 -> 3 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 15/15
net2 is routed! 15/19
net3 is routed! 5/5
========================RESULT========================
net0 [2]
	10,7,2 
	9,7,1 
	8,7,0 
net1 [15]
	20,10,15 
	20,9,14 
	20,8,13 
	20,7,12 
	20,6,11 
	20,5,10 
	19,5,9 
	18,5,8 
	17,5,7 
	16,5,6 
	15,5,5 
	14,5,4 
	13,5,3 
	12,5,2 
	11,5,1 
	10,5,0 
net2 [15]
	7,5,19 
	7,6,18 
	7,7,17 
	7,8,16 
	7,9,15 
	7,10,14 
	8,10,13 
	9,10,12 
	9,11,11 
	9,12,10 
	9,13,9 
	9,14,8 
	9,15,7 
	8,15,6 
	8,16,5 
	8,17,4 
	8,18,3 
	8,19,2 
	8,20,1 
	7,20,0 
net3 [5]
	5,3,5 
	5,2,4 
	6,2,3 
	7,2,2 
	8,2,1 
	9,2,0 
net0 is routed! 2/2
net1 is routed! 15/15
net2 is routed! 15/19
net3 is routed! 5/5
* operation time = 19, total length = 41 cell usage = 37, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[21]
try net1 ...
try net0 ...
	net0 is updated! 21=>16
Done!
1)PostRouting...[16]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 16/16
net1 is routed! 4/4
========================RESULT========================
net0 [16]
	4,2,16 
	5,2,15 
	5,3,14 
	5,4,13 
	5,5,12 
	6,5,11 
	7,5,10 
	8,5,9 
	9,5,8 
	10,5,7 
	11,5,6 
	12,5,5 
	13,5,4 
	14,5,3 
	15,5,2 
	16,5,1 
	17,5,0 
net1 [4]
	20,10,4 
	20,9,3 
	20,8,2 
	20,7,1 
	19,7,0 
net0 is routed! 16/16
net1 is routed! 4/4
* operation time = 16, total length = 20 cell usage = 18, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
net3 is completely routable!..0
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[47]
try net1 ...
try net0 ...
	dependency on net0 at 0
	net0 is updated! 6=>2
try net3 ...
	net3 is updated! 27=>20
try net2 ...
	dependency on net1 at 0
	net2 is updated! 47=>19
Done!
1)PostRouting...[20]
try net3 ...
try net2 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
	dependency on net0 at 0
Done!

ORDER
3 -> 2 -> 1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 2/2
net1 is routed! 3/3
net2 is routed! 19/19
net3 is routed! 20/20
========================RESULT========================
net0 [2]
	3,5,2 
	3,4,1 
	2,4,0 
net1 [3]
	8,5,3 
	7,5,2 
	6,5,1 
	6,4,0 
net2 [19]
	5,3,19 
	5,4,18 
	5,5,17 
	5,6,16 
	5,7,15 
	5,8,14 
	5,9,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net3 [20]
	10,3,20 
	10,4,19 
	10,5,18 
	10,6,17 
	10,7,16 
	10,8,15 
	10,9,14 
	10,10,13 
	10,11,12 
	10,12,11 
	10,13,10 
	10,14,9 
	10,15,8 
	10,16,7 
	10,17,6 
	10,18,5 
	10,19,4 
	10,20,3 
	11,20,2 
	12,20,1 
	13,20,0 
net0 is routed! 2/2
net1 is routed! 3/3
net2 is routed! 19/19
net3 is routed! 20/20
* operation time = 20, total length = 44 cell usage = 40, mode = 1
======================================================
net4 is completely routable!..-1
net2 is completely routable!..0
net5 is completely routable!..0
net3 is completely routable!..3
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[95]
try net4 ...
try net2 ...
	net2 is updated! 27=>12
try net5 ...
	net5 is updated! 44=>16
try net3 ...
	net3 is updated! 49=>11
try net1 ...
	net1 is updated! 70=>19
try net0 ...
	net0 is updated! 95=>20
Done!
1)PostRouting...[20]
try net0 ...
try net5 ...
try net4 ...
try net1 ...
try net2 ...
try net3 ...
Done!

ORDER
0 -> 5 -> 4 -> 1 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 20/20
net1 is routed! 16/19
net2 is routed! 12/12
net3 is routed! 4/11
net3 [4]
	0,12,11 
	1,12,10 
	2,12,9 
	3,12,8 
	4,12,7 
	5,12,6 
	4,12,5 
	5,12,4 
	6,12,3 
	5,12,2 
@	4,12,1 	4,12,0 
net4 is routed! 14/14
net5 is routed! 16/16
========================RESULT========================
net0 [20]
	0,7,20 
	0,8,19 
	1,8,18 
	2,8,17 
	3,8,16 
	4,8,15 
	5,8,14 
	6,8,13 
	7,8,12 
	7,9,11 
	7,10,10 
	7,11,9 
	7,12,8 
	7,13,7 
	7,14,6 
	7,15,5 
	7,16,4 
	7,17,3 
	7,18,2 
	7,19,1 
	7,20,0 
net1 [16]
	12,5,19 
	13,5,18 
	14,5,17 
	14,6,16 
	14,7,15 
	14,8,14 
	14,9,13 
	14,10,12 
	14,11,11 
	14,12,10 
	14,13,9 
	14,14,8 
	14,15,7 
	14,16,6 
	14,17,5 
	14,18,4 
	14,19,3 
@	14,20,2 	14,20,1 
	13,20,0 
net2 [12]
	2,5,12 
	2,6,11 
	2,7,10 
	2,8,9 
	2,9,8 
	2,10,7 
	2,11,6 
	2,12,5 
	2,13,4 
	2,14,3 
	2,15,2 
	3,15,1 
	4,15,0 
net3 [4]
	0,12,11 
	1,12,10 
	2,12,9 
	3,12,8 
	4,12,7 
	5,12,6 
	4,12,5 
	5,12,4 
	6,12,3 
	5,12,2 
@	4,12,1 	4,12,0 
net4 [14]
	20,10,14 
	19,10,13 
	18,10,12 
	17,10,11 
	16,10,10 
	15,10,9 
	14,10,8 
	13,10,7 
	12,10,6 
	11,10,5 
	10,10,4 
	9,10,3 
	8,10,2 
	7,10,1 
	6,10,0 
net5 [16]
	10,3,16 
	10,4,15 
	10,5,14 
	10,6,13 
	10,7,12 
	10,8,11 
	10,9,10 
	10,10,9 
	10,11,8 
	10,12,7 
	10,13,6 
	10,14,5 
	10,15,4 
	9,15,3 
	8,15,2 
	8,16,1 
	8,17,0 
net0 is routed! 20/20
net1 is routed! 16/19
net2 is routed! 12/12
net3 is routed! 4/11
net4 is routed! 14/14
net5 is routed! 16/16
* operation time = 20, total length = 92 cell usage = 75, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[25]
try net1 ...
try net0 ...
	net0 is updated! 25=>6
Done!
1)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 18/18
========================RESULT========================
net0 [6]
	4,2,6 
	5,2,5 
	6,2,4 
	7,2,3 
	8,2,2 
	8,1,1 
	8,0,0 
net1 [18]
	20,10,18 
	20,9,17 
	20,8,16 
	20,7,15 
	20,6,14 
	20,5,13 
	19,5,12 
	18,5,11 
	17,5,10 
	16,5,9 
	15,5,8 
	14,5,7 
	13,5,6 
	12,5,5 
	11,5,4 
	10,5,3 
	10,4,2 
	10,3,1 
	10,2,0 
net0 is routed! 6/6
net1 is routed! 18/18
* operation time = 18, total length = 24 cell usage = 22, mode = 1
======================================================
net2 is completely routable!..0
net3 is completely routable!..0
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[69]
try net2 ...
try net3 ...
	net3 is updated! 33=>17
try net1 ...
	net1 is updated! 53=>19
try net0 ...
	net0 is updated! 69=>15
Done!
1)PostRouting...[19]
try net1 ...
try net3 ...
try net2 ...
try net0 ...
Done!

ORDER
1 -> 3 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 15/15
net1 is routed! 19/19
net2 is routed! 15/15
net3 is routed! 17/17
========================RESULT========================
net0 [15]
	5,7,15 
	6,7,14 
	7,7,13 
	7,8,12 
	7,9,11 
	7,10,10 
	7,11,9 
	7,12,8 
	7,13,7 
	7,14,6 
	7,15,5 
	7,16,4 
	7,17,3 
	7,18,2 
	7,19,1 
	7,20,0 
net1 [19]
	17,5,19 
	16,5,18 
	16,6,17 
	16,7,16 
	16,8,15 
	16,9,14 
	16,10,13 
	16,11,12 
	16,12,11 
	16,13,10 
	16,14,9 
	16,15,8 
	16,16,7 
	16,17,6 
	16,18,5 
	16,19,4 
	16,20,3 
	15,20,2 
	14,20,1 
	13,20,0 
net2 [15]
	7,5,15 
	8,5,14 
	9,5,13 
	10,5,12 
	11,5,11 
	12,5,10 
	13,5,9 
	14,5,8 
	15,5,7 
	15,4,6 
	15,3,5 
	16,3,4 
	17,3,3 
	17,2,2 
	18,2,1 
	19,2,0 
net3 [17]
	15,3,17 
	15,4,16 
	15,5,15 
	15,6,14 
	15,7,13 
	15,8,12 
	15,9,11 
	15,10,10 
	15,11,9 
	15,12,8 
	15,13,7 
	15,14,6 
	15,15,5 
	15,16,4 
	15,17,3 
	14,17,2 
	13,17,1 
	12,17,0 
net0 is routed! 15/15
net1 is routed! 19/19
net2 is routed! 15/15
net3 is routed! 17/17
* operation time = 19, total length = 66 cell usage = 59, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..-1
net2 is completely routable!..0
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[43]
try net3 ...
try net1 ...
	net1 is updated! 30=>17
try net2 ...
	net2 is updated! 35=>4
try net0 ...
	net0 is updated! 43=>7
Done!
1)PostRouting...[17]
try net1 ...
try net3 ...
try net0 ...
try net2 ...
Done!

ORDER
1 -> 3 -> 0 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 17/17
net2 is routed! 4/4
net3 is routed! 12/12
========================RESULT========================
net0 [7]
	0,6,7 
	0,7,6 
	0,8,5 
	1,8,4 
	2,8,3 
	3,8,2 
	4,8,1 
	5,8,0 
net1 [17]
	20,10,17 
	19,10,16 
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	12,10,9 
	11,10,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	4,10,1 
	3,10,0 
net2 [4]
	12,2,4 
	12,3,3 
	13,3,2 
	14,3,1 
	15,3,0 
net3 [12]
	20,10,12 
	20,9,11 
	20,8,10 
	20,7,9 
	20,6,8 
	20,5,7 
	19,5,6 
	18,5,5 
	17,5,4 
	16,5,3 
	15,5,2 
	14,5,1 
	13,5,0 
net0 is routed! 7/7
net1 is routed! 17/17
net2 is routed! 4/4
net3 is routed! 12/12
* operation time = 17, total length = 40 cell usage = 35, mode = 1
======================================================
net2 is completely routable!..0
net0 is completely routable!..0
net1 is completely routable!..0
net3 is completely routable!..4
Routing...
Done!
0)PostRouting...[34]
try net2 ...
try net0 ...
	net0 is updated! 16=>10
try net1 ...
	net1 is updated! 28=>11
try net3 ...
	net3 is updated! 34=>5
Done!
1)PostRouting...[11]
try net1 ...
try net0 ...
try net2 ...
try net3 ...
Done!

ORDER
1 -> 0 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 11/11
net2 is routed! 5/5
net3 is routed! 5/5
========================RESULT========================
net0 [10]
	2,15,10 
	2,16,9 
	2,17,8 
	2,18,7 
	2,19,6 
	2,20,5 
	3,20,4 
	4,20,3 
	5,20,2 
	6,20,1 
	7,20,0 
net1 [11]
	12,10,11 
	12,11,10 
	12,12,9 
	12,13,8 
	12,14,7 
	12,15,6 
	12,16,5 
	12,17,4 
	12,18,3 
	12,19,2 
	12,20,1 
	13,20,0 
net2 [5]
	10,8,5 
	11,8,4 
	12,8,3 
	12,7,2 
	13,7,1 
	14,7,0 
net3 [5]
	0,13,5 
	0,12,4 
	1,12,3 
	2,12,2 
	3,12,1 
	4,12,0 
net0 is routed! 10/10
net1 is routed! 11/11
net2 is routed! 5/5
net3 is routed! 5/5
* operation time = 11, total length = 31 cell usage = 27, mode = 1
======================================================
net1 is completely routable!..-1
net3 is completely routable!..-1
net0 is completely routable!..0
net2 is completely routable!..0
Routing...
Done!
0)PostRouting...[34]
try net1 ...
try net3 ...
	net3 is updated! 21=>12
try net0 ...
	net0 is updated! 26=>4
try net2 ...
	net2 is updated! 34=>7
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
net0 is routed! 4/4
net1 is routed! 8/8
net2 is routed! 7/7
net3 is routed! 12/12
========================RESULT========================
net0 [4]
	16,2,4 
	17,2,3 
	18,2,2 
	18,1,1 
	18,0,0 
net1 [8]
	20,10,8 
	20,9,7 
	20,8,6 
	20,7,5 
	20,6,4 
	20,5,3 
	20,4,2 
	20,3,1 
	20,2,0 
net2 [7]
	4,7,7 
	4,8,6 
	5,8,5 
	6,8,4 
	7,8,3 
	8,8,2 
	9,8,1 
	10,8,0 
net3 [12]
	20,10,12 
	19,10,11 
	18,10,10 
	17,10,9 
	16,10,8 
	15,10,7 
	14,10,6 
	13,10,5 
	12,10,4 
	11,10,3 
	10,10,2 
	9,10,1 
	8,10,0 
net0 is routed! 4/4
net1 is routed! 8/8
net2 is routed! 7/7
net3 is routed! 12/12
* operation time = 12, total length = 31 cell usage = 26, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[40]
try net0 ...
try net1 ...
	net1 is updated! 40=>20
Done!
1)PostRouting...[20]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 19/19
net1 is routed! 20/20
========================RESULT========================
net0 [19]
	17,5,19 
	17,6,18 
	17,7,17 
	17,8,16 
	17,9,15 
	16,9,14 
	15,9,13 
	15,10,12 
	14,10,11 
	13,10,10 
	13,11,9 
	13,12,8 
	13,13,7 
	13,14,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net1 [20]
	15,7,20 
	15,6,19 
	15,5,18 
	15,4,17 
	14,4,16 
	13,4,15 
	12,4,14 
	11,4,13 
	10,4,12 
	9,4,11 
	8,4,10 
	7,4,9 
	6,4,8 
	5,4,7 
	4,4,6 
	3,4,5 
	2,4,4 
	1,4,3 
	0,4,2 
	0,3,1 
	0,2,0 
net0 is routed! 19/19
net1 is routed! 20/20
* operation time = 20, total length = 39 cell usage = 37, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..-1
net0 is completely routable!..0
net2 is completely routable!..0
Routing...
Done!
0)PostRouting...[38]
try net3 ...
try net1 ...
	net1 is updated! 26=>17
try net0 ...
	dependency on net1 at 4
	net0 is updated! 30=>5
try net2 ...
	net2 is updated! 38=>7
Done!
1)PostRouting...[17]
try net1 ...
try net3 ...
try net2 ...
try net0 ...
	dependency on net1 at 4
Done!

ORDER
1 -> 3 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/5
net1 is routed! 17/17
net2 is routed! 7/7
net3 is routed! 8/8
========================RESULT========================
net0 [3]
	5,11,5 
	4,11,4 
	3,11,3 
	3,12,2 
	3,11,1 
	3,10,0 
net1 [17]
	20,10,17 
	19,10,16 
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	12,10,9 
	11,10,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	5,11,1 
	5,12,0 
net2 [7]
	8,7,7 
	9,7,6 
	10,7,5 
	11,7,4 
	12,7,3 
	13,7,2 
	13,6,1 
	13,5,0 
net3 [8]
	20,10,8 
	19,10,7 
	18,10,6 
	17,10,5 
	16,10,4 
	15,10,3 
	15,9,2 
	15,8,1 
	15,7,0 
net0 is routed! 3/5
net1 is routed! 17/17
net2 is routed! 7/7
net3 is routed! 8/8
* operation time = 17, total length = 37 cell usage = 25, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[20]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 12/20
net1 is routed! 7/7
========================RESULT========================
net0 [12]
	9,13,20 
	9,12,19 
	9,11,18 
	9,10,17 
	9,9,16 
	8,9,15 
	8,8,14 
	8,7,13 
	8,6,12 
	8,5,11 
	8,4,10 
	8,3,9 
@	8,2,8 @	8,2,7 @	8,2,6 @	8,2,5 @	8,2,4 @	8,2,3 @	8,2,2 @	8,2,1 	8,2,0 
net1 [7]
	11,15,7 
	11,16,6 
	11,17,5 
	11,18,4 
	11,19,3 
	11,20,2 
	12,20,1 
	13,20,0 
net0 is routed! 12/20
net1 is routed! 7/7
* operation time = 20, total length = 27 cell usage = 17, mode = 1
======================================================
net3 is completely routable!..-1
net2 is completely routable!..0
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[29]
try net3 ...
try net2 ...
	net2 is updated! 6=>3
try net1 ...
	net1 is updated! 18=>11
try net0 ...
	net0 is updated! 29=>10
Done!
1)PostRouting...[11]
try net1 ...
try net0 ...
try net2 ...
try net3 ...
Done!

ORDER
1 -> 0 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 11/11
net2 is routed! 3/3
net3 is routed! 2/2
========================RESULT========================
net0 [10]
	0,12,10 
	0,11,9 
	0,10,8 
	0,9,7 
	0,8,6 
	0,7,5 
	0,6,4 
	1,6,3 
	2,6,2 
	3,6,1 
	4,6,0 
net1 [11]
	2,14,11 
	3,14,10 
	4,14,9 
	5,14,8 
	6,14,7 
	7,14,6 
	7,15,5 
	7,16,4 
	7,17,3 
	7,18,2 
	7,19,1 
	7,20,0 
net2 [3]
	18,7,3 
	18,8,2 
	19,8,1 
	20,8,0 
net3 [2]
	20,10,2 
	19,10,1 
	18,10,0 
net0 is routed! 10/10
net1 is routed! 11/11
net2 is routed! 3/3
net3 is routed! 2/2
* operation time = 11, total length = 26 cell usage = 22, mode = 1
======================================================
net0 is completely routable!..0
net3 is completely routable!..0
net1 is completely routable!..0
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[29]
try net0 ...
try net3 ...
	dependency on net0 at 0
	net3 is updated! 16=>10
try net1 ...
	net1 is updated! 27=>8
try net2 ...
	dependency on net3 at 7
	net2 is updated! 29=>8
Done!
1)PostRouting...[10]
try net1 ...
try net2 ...
	dependency on net3 at 7
try net0 ...
try net3 ...
	dependency on net0 at 0
Done!

ORDER
1 -> 2 -> 0 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 7/9
net1 is routed! 8/8
net2 is routed! 1/8
net2 [1]
	0,2,8 
@	0,1,7 @	0,1,6 @	0,1,5 @	0,1,4 @	0,1,3 @	0,1,2 @	0,1,1 	0,1,0 
net3 is routed! 6/10
========================RESULT========================
net0 [7]
	4,7,9 
	4,6,8 
	3,6,7 
	3,5,6 
	3,4,5 
	3,3,4 
	3,2,3 
	4,2,2 
	4,1,1 
	5,1,0 
net1 [8]
	4,11,8 
	4,10,7 
	4,9,6 
	4,8,5 
	4,7,4 
	4,6,3 
	4,5,2 
	4,4,1 
	5,4,0 
net2 [1]
	0,2,8 
@	0,1,7 @	0,1,6 @	0,1,5 @	0,1,4 @	0,1,3 @	0,1,2 @	0,1,1 	0,1,0 
net3 [6]
	4,2,10 
	3,2,9 
	3,3,8 
	2,3,7 
@	1,3,6 	1,3,5 
	0,3,4 
	1,3,3 
@	0,3,2 	0,3,1 
	0,4,0 
net0 is routed! 7/9
net1 is routed! 8/8
net2 is routed! 1/8
net3 is routed! 6/10
* operation time = 10, total length = 35 cell usage = 15, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[21]
try net1 ...
try net0 ...
	net0 is updated! 21=>12
Done!
1)PostRouting...[12]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 12/12
net1 is routed! 8/8
========================RESULT========================
net0 [12]
	14,13,12 
	14,12,11 
	14,11,10 
	14,10,9 
	14,9,8 
	13,9,7 
	12,9,6 
	11,9,5 
	10,9,4 
	9,9,3 
	8,9,2 
	8,8,1 
	8,7,0 
net1 [8]
	16,15,8 
	15,15,7 
	14,15,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net0 is routed! 12/12
net1 is routed! 8/8
* operation time = 12, total length = 20 cell usage = 18, mode = 1
======================================================
net3 is completely routable!..-1
net1 is completely routable!..0
net0 is completely routable!..0
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[41]
try net3 ...
try net1 ...
	net1 is updated! 13=>4
try net0 ...
	net0 is updated! 37=>19
try net2 ...
	net2 is updated! 41=>3
Done!
1)PostRouting...[19]
try net0 ...
try net3 ...
try net1 ...
try net2 ...
Done!

ORDER
0 -> 3 -> 1 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 19/19
net1 is routed! 4/4
net2 is routed! 3/3
net3 is routed! 8/8
========================RESULT========================
net0 [19]
	3,5,19 
	4,5,18 
	5,5,17 
	5,6,16 
	5,7,15 
	5,8,14 
	5,9,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net1 [4]
	5,3,4 
	5,2,3 
	6,2,2 
	7,2,1 
	8,2,0 
net2 [3]
	10,11,3 
	10,10,2 
	11,10,1 
	12,10,0 
net3 [8]
	20,10,8 
	19,10,7 
	18,10,6 
	17,10,5 
	16,10,4 
	15,10,3 
	14,10,2 
	14,11,1 
	14,12,0 
net0 is routed! 19/19
net1 is routed! 4/4
net2 is routed! 3/3
net3 is routed! 8/8
* operation time = 19, total length = 34 cell usage = 30, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[15]
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/15
net0 [1]
	12,20,15 
@	13,20,14 @	13,20,13 @	13,20,12 @	13,20,11 @	13,20,10 @	13,20,9 @	13,20,8 @	13,20,7 @	13,20,6 @	13,20,5 @	13,20,4 @	13,20,3 @	13,20,2 @	13,20,1 	13,20,0 
net1 is routed! 13/13
========================RESULT========================
net0 [1]
	12,20,15 
@	13,20,14 @	13,20,13 @	13,20,12 @	13,20,11 @	13,20,10 @	13,20,9 @	13,20,8 @	13,20,7 @	13,20,6 @	13,20,5 @	13,20,4 @	13,20,3 @	13,20,2 @	13,20,1 	13,20,0 
net1 [13]
	10,18,13 
	10,17,12 
	10,16,11 
	10,15,10 
	10,14,9 
	10,13,8 
	10,12,7 
	10,11,6 
	10,10,5 
	10,9,4 
	10,8,3 
	10,7,2 
	11,7,1 
	12,7,0 
net0 is routed! 1/15
net1 is routed! 13/13
* operation time = 15, total length = 28 cell usage = 12, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[28]
try net1 ...
try net0 ...
	net0 is updated! 28=>11
Done!
1)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/11
net1 is routed! 16/18
========================RESULT========================
net0 [9]
	10,7,11 
	10,8,10 
	9,8,9 
	8,8,8 
	7,8,7 
	6,8,6 
	5,8,5 
	4,8,4 
@	3,8,3 @	3,8,2 	3,8,1 
	3,9,0 
net1 [16]
	20,10,18 
	19,10,17 
	18,10,16 
	18,9,15 
	17,9,14 
	16,9,13 
	15,9,12 
	14,9,11 
	13,9,10 
	12,9,9 
	11,9,8 
	10,9,7 
	9,9,6 
	8,9,5 
	7,9,4 
	6,9,3 
	5,9,2 
	5,10,1 
	5,11,0 
net0 is routed! 9/11
net1 is routed! 16/18
* operation time = 18, total length = 29 cell usage = 25, mode = 1
======================================================
net3 is completely routable!..-1
net0 is completely routable!..0
net2 is completely routable!..3
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[34]
try net3 ...
try net0 ...
	net0 is updated! 10=>6
try net2 ...
	dependency on net3 at 0
	net2 is updated! 14=>3
try net1 ...
	net1 is updated! 34=>17
Done!
1)PostRouting...[17]
try net1 ...
try net0 ...
try net3 ...
try net2 ...
	dependency on net3 at 0
Done!

ORDER
1 -> 0 -> 3 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 17/17
net2 is routed! 3/3
net3 is routed! 3/3
========================RESULT========================
net0 [6]
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net1 [17]
	7,14,17 
	8,14,16 
	9,14,15 
	10,14,14 
	10,13,13 
	10,12,12 
	10,11,11 
	10,10,10 
	10,9,9 
	10,8,8 
	10,7,7 
	10,6,6 
	10,5,5 
	10,4,4 
	10,3,3 
	10,2,2 
	11,2,1 
	12,2,0 
net2 [3]
	18,12,3 
	18,11,2 
	18,10,1 
	17,10,0 
net3 [3]
	20,10,3 
	20,11,2 
	20,12,1 
	19,12,0 
net0 is routed! 6/6
net1 is routed! 17/17
net2 is routed! 3/3
net3 is routed! 3/3
* operation time = 17, total length = 29 cell usage = 25, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..0
net3 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[58]
try net2 ...
try net1 ...
	net1 is updated! 23=>6
try net3 ...
	net3 is updated! 37=>13
try net0 ...
	net0 is updated! 58=>20
Done!
1)PostRouting...[20]
try net0 ...
try net2 ...
try net3 ...
try net1 ...
Done!

ORDER
0 -> 2 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 20/20
net1 is routed! 6/6
net2 is routed! 16/16
net3 is routed! 13/13
========================RESULT========================
net0 [20]
	0,7,20 
	0,8,19 
	0,9,18 
	0,10,17 
	0,11,16 
	0,12,15 
	0,13,14 
	0,14,13 
	0,15,12 
	0,16,11 
	0,17,10 
	0,18,9 
	0,19,8 
	0,20,7 
	1,20,6 
	2,20,5 
	3,20,4 
	4,20,3 
	5,20,2 
	6,20,1 
	7,20,0 
net1 [6]
	4,12,6 
	4,11,5 
	4,10,4 
	4,9,3 
	4,8,2 
	5,8,1 
	6,8,0 
net2 [16]
	20,10,16 
	19,10,15 
	18,10,14 
	18,9,13 
	17,9,12 
	16,9,11 
	15,9,10 
	14,9,9 
	13,9,8 
	12,9,7 
	11,9,6 
	10,9,5 
	10,8,4 
	10,7,3 
	10,6,2 
	9,6,1 
	8,6,0 
net3 [13]
	2,5,13 
	3,5,12 
	4,5,11 
	5,5,10 
	6,5,9 
	7,5,8 
	8,5,7 
	8,6,6 
	8,7,5 
	8,8,4 
	8,9,3 
	8,10,2 
	8,11,1 
	9,11,0 
net0 is routed! 20/20
net1 is routed! 6/6
net2 is routed! 16/16
net3 is routed! 13/13
* operation time = 20, total length = 55 cell usage = 50, mode = 1
======================================================
net3 is completely routable!..-1
net2 is completely routable!..3
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[36]
try net3 ...
try net2 ...
	net2 is updated! 18=>5
try net1 ...
	dependency on net1 at 0
	net1 is updated! 21=>2
try net0 ...
	net0 is updated! 36=>14
Done!
1)PostRouting...[14]
try net0 ...
try net3 ...
try net2 ...
try net1 ...
	dependency on net1 at 0
Done!

ORDER
0 -> 3 -> 2 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 14/14
net1 is routed! 2/2
net2 is routed! 5/5
net3 is routed! 12/12
========================RESULT========================
net0 [14]
	10,17,14 
	10,16,13 
	10,15,12 
	10,14,11 
	10,13,10 
	10,12,9 
	10,11,8 
	10,10,7 
	10,9,6 
	11,9,5 
	12,9,4 
	13,9,3 
	14,9,2 
	14,8,1 
	14,7,0 
net1 [2]
	12,19,2 
	12,20,1 
	13,20,0 
net2 [5]
	19,16,5 
	18,16,4 
	17,16,3 
	16,16,2 
	15,16,1 
	15,17,0 
net3 [12]
	20,10,12 
	19,10,11 
	18,10,10 
	17,10,9 
	16,10,8 
	15,10,7 
	14,10,6 
	14,11,5 
	14,12,4 
	14,13,3 
	13,13,2 
	13,14,1 
	13,15,0 
net0 is routed! 14/14
net1 is routed! 2/2
net2 is routed! 5/5
net3 is routed! 12/12
* operation time = 14, total length = 33 cell usage = 29, mode = 1
======================================================
net3 is completely routable!..-1
net2 is completely routable!..0
net1 is completely routable!..3
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[64]
try net3 ...
	net3 is updated! 19=>17
try net2 ...
	net2 is updated! 26=>6
try net1 ...
	net1 is updated! 40=>13
try net0 ...
	net0 is updated! 64=>19
Done!
1)PostRouting...[19]
try net0 ...
try net3 ...
try net1 ...
try net2 ...
Done!

ORDER
0 -> 3 -> 1 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 19/19
net1 is routed! 13/13
net2 is routed! 6/6
net3 is routed! 17/17
========================RESULT========================
net0 [19]
	3,15,19 
	3,14,18 
	3,13,17 
	4,13,16 
	5,13,15 
	6,13,14 
	7,13,13 
	7,12,12 
	7,11,11 
	7,10,10 
	7,9,9 
	7,8,8 
	7,7,7 
	7,6,6 
	7,5,5 
	7,4,4 
	7,3,3 
	7,2,2 
	7,1,1 
	7,0,0 
--- continued
	3,13,17 
@	3,12,16 @	3,12,15 @	3,12,14 @	3,12,13 @	3,12,12 @	3,12,11 @	3,12,10 @	3,12,9 @	3,12,8 @	3,12,7 @	3,12,6 @	3,12,5 @	3,12,4 	3,12,3 
	2,12,2 
	1,12,1 
	0,12,0 
net1 [13]
	10,8,13 
	10,9,12 
	11,9,11 
	12,9,10 
	13,9,9 
	14,9,8 
	14,10,7 
	14,11,6 
	14,12,5 
	14,13,4 
	14,14,3 
	15,14,2 
	15,15,1 
	15,16,0 
--- continued
	10,9,12 
	10,8,11 
	10,7,10 
	10,6,9 
	10,5,8 
	10,4,7 
	10,3,6 
	10,2,5 
	10,1,4 
	10,0,3 
	11,0,2 
	12,0,1 
	13,0,0 
net2 [6]
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	6,19,2 
	7,19,1 
	8,19,0 
net3 [17]
	20,10,17 
	19,10,16 
	19,11,15 
	19,12,14 
	19,13,13 
	19,14,12 
	18,14,11 
	17,14,10 
	16,14,9 
	15,14,8 
	14,14,7 
	13,14,6 
	12,14,5 
	11,14,4 
	10,14,3 
	10,15,2 
	10,16,1 
	10,17,0 
net0 is routed! 19/19
net1 is routed! 13/13
net2 is routed! 6/6
net3 is routed! 17/17
* operation time = 19, total length = 55 cell usage = 49, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[26]
try net1 ...
try net0 ...
	net0 is updated! 26=>6
Done!
1)PostRouting...[19]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 17/19
========================RESULT========================
net0 [6]
	0,7,6 
	0,8,5 
	1,8,4 
	2,8,3 
	3,8,2 
	4,8,1 
	5,8,0 
net1 [17]
	20,10,19 
	19,10,18 
	18,10,17 
	18,9,16 
	17,9,15 
	16,9,14 
	15,9,13 
	14,9,12 
	13,9,11 
	12,9,10 
	11,9,9 
	10,9,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	4,10,1 
	3,10,0 
net0 is routed! 6/6
net1 is routed! 17/19
* operation time = 19, total length = 25 cell usage = 23, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..0
net3 is completely routable!..0
net2 is completely routable!..0
Routing...
Done!
0)PostRouting...[49]
try net1 ...
try net0 ...
	dependency on net0 at 1
	net0 is updated! 13=>2
try net3 ...
	net3 is updated! 29=>15
try net2 ...
	net2 is updated! 49=>19
Done!
1)PostRouting...[19]
try net2 ...
try net3 ...
try net1 ...
try net0 ...
	dependency on net0 at 1
Done!

ORDER
2 -> 3 -> 1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 1/2
net1 is routed! 11/11
net2 is routed! 19/19
net3 is routed! 15/15
========================RESULT========================
net0 [1]
@	14,16,2 	14,16,1 
	15,16,0 
net1 [11]
	20,10,11 
	19,10,10 
	18,10,9 
	17,10,8 
	16,10,7 
	15,10,6 
	14,10,5 
	14,11,4 
	14,12,3 
	14,13,2 
	13,13,1 
	13,14,0 
net2 [19]
	5,17,19 
	5,16,18 
	5,15,17 
	5,14,16 
	5,13,15 
	5,12,14 
	5,11,13 
	5,10,12 
	5,9,11 
	5,8,10 
	5,7,9 
	5,6,8 
	5,5,7 
	5,4,6 
	5,3,5 
	5,2,4 
	5,1,3 
	5,0,2 
	6,0,1 
	7,0,0 
--- continued
	5,9,11 
	5,10,10 
	5,11,9 
	5,12,8 
	5,13,7 
	5,14,6 
	5,15,5 
	5,16,4 
	6,16,3 
	7,16,2 
	8,16,1 
	9,16,0 
net3 [15]
	10,12,15 
	10,11,14 
	10,10,13 
	10,9,12 
	10,8,11 
	10,7,10 
	10,6,9 
	10,5,8 
	10,4,7 
	10,3,6 
	10,2,5 
	10,1,4 
	10,0,3 
	11,0,2 
	12,0,1 
	13,0,0 
--- continued
	10,8,11 
	10,9,10 
	10,10,9 
	9,10,8 
	8,10,7 
	7,10,6 
	6,10,5 
	5,10,4 
	4,10,3 
	4,9,2 
	4,8,1 
	4,7,0 
net0 is routed! 1/2
net1 is routed! 11/11
net2 is routed! 19/19
net3 is routed! 15/15
* operation time = 19, total length = 47 cell usage = 42, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..0
net2 is completely routable!..0
net3 is completely routable!..3
Routing...
Done!
0)PostRouting...[57]
try net0 ...
try net1 ...
	net1 is updated! 16=>12
try net2 ...
	net2 is updated! 37=>20
try net3 ...
	dependency on net0 at 0
	net3 is updated! 57=>19
Done!
1)PostRouting...[20]
try net2 ...
try net3 ...
	dependency on net0 at 0
try net0 ...
try net1 ...
Done!

ORDER
2 -> 3 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 7/7
net1 is routed! 8/12
net2 is routed! 20/20
net3 is routed! 19/19
========================RESULT========================
net0 [7]
	8,5,7 
	7,5,6 
	6,5,5 
	6,4,4 
	6,3,3 
	6,2,2 
	5,2,1 
	4,2,0 
net1 [8]
	3,5,12 
	3,4,11 
	3,3,10 
	3,2,9 
	3,1,8 
	3,0,7 
	4,0,6 
	5,0,5 
	6,0,4 
	7,0,3 
	8,0,2 
	8,1,1 
	8,2,0 
net2 [20]
	10,3,20 
	10,4,19 
	10,5,18 
	10,6,17 
	10,7,16 
	10,8,15 
	10,9,14 
	10,10,13 
	10,11,12 
	10,12,11 
	10,13,10 
	10,14,9 
	10,15,8 
	10,16,7 
	10,17,6 
	10,18,5 
	10,19,4 
	10,20,3 
	11,20,2 
	12,20,1 
	13,20,0 
net3 [19]
	5,3,19 
	5,4,18 
	5,5,17 
	5,6,16 
	5,7,15 
	5,8,14 
	5,9,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	5,16,6 
	5,17,5 
	5,18,4 
	5,19,3 
	5,20,2 
	6,20,1 
	7,20,0 
net0 is routed! 7/7
net1 is routed! 8/12
net2 is routed! 20/20
net3 is routed! 19/19
* operation time = 20, total length = 58 cell usage = 54, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[25]
try net1 ...
try net0 ...
	net0 is updated! 25=>6
Done!
1)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 18/18
========================RESULT========================
net0 [6]
	0,7,6 
	1,7,5 
	2,7,4 
	3,7,3 
	4,7,2 
	5,7,1 
	5,8,0 
net1 [18]
	14,17,18 
	14,16,17 
	14,15,16 
	14,14,15 
	14,13,14 
	13,13,13 
	12,13,12 
	11,13,11 
	10,13,10 
	10,12,9 
	10,11,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	4,10,1 
	3,10,0 
net0 is routed! 6/6
net1 is routed! 18/18
* operation time = 18, total length = 24 cell usage = 22, mode = 1
======================================================
net2 is completely routable!..0
net3 is completely routable!..3
net0 is completely routable!..4
net1 is completely routable!..0
Routing...
Done!
0)PostRouting...[47]
try net2 ...
try net3 ...
	net3 is updated! 31=>17
try net0 ...
	net0 is updated! 43=>11
try net1 ...
	dependency on net0 at 0
	net1 is updated! 47=>3
Done!
1)PostRouting...[17]
try net0 ...
try net2 ...
try net3 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 2 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 3/3
net2 is routed! 11/13
net3 is routed! 13/17
========================RESULT========================
net0 [11]
	4,8,11 
	4,7,10 
	5,7,9 
	6,7,8 
	7,7,7 
	8,7,6 
	9,7,5 
	10,7,4 
	11,7,3 
	12,7,2 
	13,7,1 
	14,7,0 
net1 [3]
	14,8,3 
	14,9,2 
	14,10,1 
	14,11,0 
net2 [11]
	6,10,13 
	5,10,12 
	5,11,11 
	5,12,10 
	5,13,9 
	5,14,8 
	5,15,7 
	6,15,6 
	6,16,5 
	6,17,4 
	6,18,3 
	6,19,2 
	6,20,1 
	7,20,0 
net3 [13]
	16,10,17 
	17,10,16 
	18,10,15 
	18,11,14 
	18,12,13 
	18,13,12 
	18,14,11 
	18,15,10 
	18,16,9 
	18,17,8 
	18,18,7 
	18,19,6 
	18,20,5 
	17,20,4 
	16,20,3 
	15,20,2 
	14,20,1 
	13,20,0 
net0 is routed! 11/11
net1 is routed! 3/3
net2 is routed! 11/13
net3 is routed! 13/17
* operation time = 17, total length = 44 cell usage = 40, mode = 1
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
net0 is routed! 19/19
========================RESULT========================
net0 [19]
	6,3,19 
	5,3,18 
	4,3,17 
	3,3,16 
	2,3,15 
	1,3,14 
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
	0,13,3 
	0,14,2 
	0,15,1 
	0,16,0 
--- continued
	5,3,18 
@	6,3,17 @	6,3,16 @	6,3,15 @	6,3,14 @	6,3,13 @	6,3,12 @	6,3,11 @	6,3,10 @	6,3,9 @	6,3,8 	6,3,7 
	5,3,6 
	5,2,5 
	5,1,4 
@	5,0,3 	5,0,2 
	6,0,1 
	7,0,0 
net0 is routed! 19/19
* operation time = 19, total length = 19 cell usage = 18, mode = 1
======================================================
net0 is completely routable!..3
net1 is completely routable!..0
Routing...
Done!
0)PostRouting...[16]
try net0 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 9/16
========================RESULT========================
net0 [6]
	0,11,6 
	0,12,5 
	1,12,4 
	2,12,3 
	3,12,2 
	4,12,1 
	5,12,0 
net1 [9]
	4,12,16 
	3,12,15 
	2,12,14 
	2,13,13 
	1,13,12 
	0,13,11 
	0,14,10 
	0,15,9 
	0,16,8 
@	0,17,7 @	0,17,6 @	0,17,5 @	0,17,4 @	0,17,3 @	0,17,2 @	0,17,1 	0,17,0 
net0 is routed! 6/6
net1 is routed! 9/16
* operation time = 16, total length = 22 cell usage = 10, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[28]
try net1 ...
try net0 ...
	net0 is updated! 28=>17
Done!
1)PostRouting...[17]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 17/17
net1 is routed! 10/10
========================RESULT========================
net0 [17]
	11,5,17 
	12,5,16 
	13,5,15 
	13,6,14 
	13,7,13 
	13,8,12 
	13,9,11 
	13,10,10 
	13,11,9 
	13,12,8 
	13,13,7 
	13,14,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net1 [10]
	9,7,10 
	9,8,9 
	9,9,8 
	9,10,7 
	9,11,6 
	9,12,5 
	10,12,4 
	11,12,3 
	12,12,2 
	13,12,1 
	14,12,0 
net0 is routed! 17/17
net1 is routed! 10/10
* operation time = 17, total length = 27 cell usage = 24, mode = 1
======================================================
net4 is completely routable!..-1
net2 is completely routable!..-1
net3 is completely routable!..0
net1 is completely routable!..3
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[49]
try net4 ...
try net2 ...
	net2 is updated! 18=>13
try net3 ...
	net3 is updated! 27=>8
try net1 ...
	net1 is updated! 34=>6
try net0 ...
	net0 is updated! 49=>14
Done!
1)PostRouting...[14]
try net0 ...
try net2 ...
try net3 ...
try net1 ...
try net4 ...
Done!

ORDER
0 -> 2 -> 3 -> 1 -> 4 -> 
runtime = 0.0 sec
net0 is routed! 14/14
net1 is routed! 6/6
net2 is routed! 13/13
net3 is routed! 8/8
net4 is routed! 4/4
========================RESULT========================
net0 [14]
	0,16,14 
	0,15,13 
	0,14,12 
	0,13,11 
	0,12,10 
	0,11,9 
	0,10,8 
	0,9,7 
	0,8,6 
	0,7,5 
	0,6,4 
	0,5,3 
	0,4,2 
	0,3,1 
	1,3,0 
net1 [6]
	4,7,6 
	5,7,5 
	6,7,4 
	7,7,3 
	7,8,2 
	7,9,1 
	7,10,0 
net2 [13]
	20,10,13 
	19,10,12 
	18,10,11 
	17,10,10 
	16,10,9 
	15,10,8 
	14,10,7 
	13,10,6 
	12,10,5 
	11,10,4 
	10,10,3 
	9,10,2 
	9,9,1 
	9,8,0 
net3 [8]
	18,12,8 
	18,11,7 
	18,10,6 
	18,9,5 
	18,8,4 
	18,7,3 
	18,6,2 
	18,5,1 
	17,5,0 
net4 [4]
	20,10,4 
	20,9,3 
	20,8,2 
	20,7,1 
	19,7,0 
net0 is routed! 14/14
net1 is routed! 6/6
net2 is routed! 13/13
net3 is routed! 8/8
net4 is routed! 4/4
* operation time = 14, total length = 45 cell usage = 38, mode = 1
======================================================
net3 is completely routable!..-1
net2 is completely routable!..0
net0 is completely routable!..0
net1 is completely routable!..0
Routing...
Done!
0)PostRouting...[44]
try net3 ...
try net2 ...
	dependency on net1 at 7
	net2 is updated! 13=>8
try net0 ...
	net0 is updated! 24=>10
try net1 ...
	net1 is updated! 44=>20
Done!
1)PostRouting...[20]
try net1 ...
try net0 ...
try net3 ...
try net2 ...
	dependency on net3 at 0
Done!

ORDER
1 -> 0 -> 3 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 19/20
net2 is routed! 4/8
net3 is routed! 8/8
========================RESULT========================
net0 [10]
	4,7,10 
	4,6,9 
	4,5,8 
	4,4,7 
	4,3,6 
	4,2,5 
	4,1,4 
	4,0,3 
	5,0,2 
	6,0,1 
	7,0,0 
--- continued
	4,4,7 
	4,5,6 
	4,6,5 
	4,7,4 
	5,7,3 
	6,7,2 
	7,7,1 
	8,7,0 
net1 [19]
	11,17,20 
	11,16,19 
	11,15,18 
	11,14,17 
	11,13,16 
	11,12,15 
	11,11,14 
	11,10,13 
	11,9,12 
	11,8,11 
	11,7,10 
	11,6,9 
	11,5,8 
	11,4,7 
	11,3,6 
	11,2,5 
	11,1,4 
@	11,0,3 	11,0,2 
	12,0,1 
	13,0,0 
--- continued
	11,7,10 
	11,8,9 
@	11,9,8 	11,9,7 
	12,9,6 
	13,9,5 
@	14,9,4 	14,9,3 
	14,10,2 
	14,11,1 
	14,12,0 
net2 [4]
	13,7,8 
	12,7,7 
@	11,7,6 	11,7,5 
	11,8,4 
	11,9,3 
@	11,10,2 	11,10,1 
	12,10,0 
net3 [8]
	20,10,8 
	20,9,7 
	20,8,6 
	19,8,5 
	18,8,4 
	17,8,3 
	16,8,2 
	15,8,1 
	14,8,0 
net0 is routed! 10/10
net1 is routed! 19/20
net2 is routed! 4/8
net3 is routed! 8/8
* operation time = 20, total length = 46 cell usage = 35, mode = 1
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
net0 is routed! 12/12
========================RESULT========================
net0 [12]
	13,12,12 
	13,11,11 
	13,10,10 
	13,9,9 
	13,8,8 
	13,7,7 
	13,6,6 
	13,5,5 
	13,4,4 
	13,3,3 
	13,2,2 
	13,1,1 
	13,0,0 
--- continued
	13,6,6 
@	13,7,5 	13,7,4 
	12,7,3 
	11,7,2 
	10,7,1 
	9,7,0 
net0 is routed! 12/12
* operation time = 12, total length = 12 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..-1
net1 is completely routable!..-1
Routing...
Done!
0)PostRouting...[29]
try net0 ...
try net1 ...
	net1 is updated! 29=>19
Done!
1)PostRouting...[19]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/9
net1 is routed! 19/19
========================RESULT========================
net0 [9]
	20,10,9 
	19,10,8 
	18,10,7 
	18,11,6 
	18,12,5 
	18,13,4 
	18,14,3 
	18,15,2 
	18,16,1 
	18,17,0 
net1 [19]
	20,10,19 
	19,10,18 
	18,10,17 
	17,10,16 
	16,10,15 
	15,10,14 
	14,10,13 
	13,10,12 
	12,10,11 
	11,10,10 
	10,10,9 
	9,10,8 
	8,10,7 
	7,10,6 
	6,10,5 
	5,10,4 
	4,10,3 
	4,9,2 
	4,8,1 
	4,7,0 
net0 is routed! 9/9
net1 is routed! 19/19
* operation time = 19, total length = 28 cell usage = 23, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 9/18
net1 is routed! 8/8
========================RESULT========================
net0 [9]
	0,7,18 
	1,7,17 
	2,7,16 
	3,7,15 
	4,7,14 
	5,7,13 
	6,7,12 
	7,7,11 
	8,7,10 
@	9,7,9 @	9,7,8 @	9,7,7 @	9,7,6 @	9,7,5 @	9,7,4 @	9,7,3 @	9,7,2 @	9,7,1 	9,7,0 
net1 [8]
	14,17,8 
	13,17,7 
	12,17,6 
	11,17,5 
	10,17,4 
	9,17,3 
	8,17,2 
	7,17,1 
	6,17,0 
net0 is routed! 9/18
net1 is routed! 8/8
* operation time = 18, total length = 26 cell usage = 15, mode = 1
======================================================
net3 is completely routable!..0
net2 is completely routable!..0
net1 is completely routable!..0
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[53]
try net3 ...
try net2 ...
	net2 is updated! 22=>11
try net1 ...
	net1 is updated! 37=>14
try net0 ...
	net0 is updated! 53=>15
Done!
1)PostRouting...[15]
try net0 ...
try net1 ...
try net2 ...
try net3 ...
Done!

ORDER
0 -> 1 -> 2 -> 3 -> 
runtime = 0.0 sec
net0 is routed! 15/15
net1 is routed! 14/14
net2 is routed! 11/11
net3 is routed! 8/8
========================RESULT========================
net0 [15]
	8,10,15 
	9,10,14 
	10,10,13 
	11,10,12 
	12,10,11 
	13,10,10 
	13,11,9 
	13,12,8 
	13,13,7 
	13,14,6 
	13,15,5 
	13,16,4 
	13,17,3 
	13,18,2 
	13,19,1 
	13,20,0 
net1 [14]
	3,10,14 
	3,11,13 
	3,12,12 
	3,13,11 
	3,14,10 
	3,15,9 
	3,16,8 
	3,17,7 
	3,18,6 
	3,19,5 
	3,20,4 
	4,20,3 
	5,20,2 
	6,20,1 
	7,20,0 
net2 [11]
	10,8,11 
	10,7,10 
	9,7,9 
	8,7,8 
	7,7,7 
	6,7,6 
	5,7,5 
	4,7,4 
	3,7,3 
	2,7,2 
	1,7,1 
	0,7,0 
net3 [8]
	5,8,8 
	4,8,7 
	3,8,6 
	2,8,5 
	2,9,4 
	1,9,3 
	0,9,2 
	0,10,1 
	0,11,0 
net0 is routed! 15/15
net1 is routed! 14/14
net2 is routed! 11/11
net3 is routed! 8/8
* operation time = 15, total length = 48 cell usage = 44, mode = 1
======================================================
net1 is completely routable!..-1
net2 is completely routable!..-1
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[37]
try net1 ...
try net2 ...
	net2 is updated! 32=>17
try net0 ...
	dependency on net2 at 0
	net0 is updated! 37=>4
Done!
1)PostRouting...[17]
try net2 ...
try net1 ...
try net0 ...
	dependency on net2 at 0
Done!

ORDER
2 -> 1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 14/14
net2 is routed! 17/17
========================RESULT========================
net0 [4]
	4,12,4 
	4,13,3 
	4,14,2 
	4,15,1 
	4,16,0 
net1 [14]
	20,10,14 
	19,10,13 
	18,10,12 
	17,10,11 
	16,10,10 
	15,10,9 
	14,10,8 
	13,10,7 
	12,10,6 
	11,10,5 
	10,10,4 
	9,10,3 
	8,10,2 
	8,11,1 
	8,12,0 
net2 [17]
	20,10,17 
	19,10,16 
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	12,10,9 
	11,10,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	4,10,1 
	4,11,0 
net0 is routed! 4/4
net1 is routed! 14/14
net2 is routed! 17/17
* operation time = 17, total length = 35 cell usage = 19, mode = 1
======================================================
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[11]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 9/11
========================RESULT========================
net0 [9]
	0,11,11 
	1,11,10 
	2,11,9 
	2,10,8 
	3,10,7 
	4,10,6 
	5,10,5 
	6,10,4 
	7,10,3 
	8,10,2 
	8,11,1 
	8,12,0 
net0 is routed! 9/11
* operation time = 11, total length = 11 cell usage = 10, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[29]
try net1 ...
try net0 ...
	net0 is updated! 29=>19
Done!
1)PostRouting...[19]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 19/19
net1 is routed! 9/9
========================RESULT========================
net0 [19]
	20,10,19 
	20,9,18 
	20,8,17 
	20,7,16 
	19,7,15 
	18,7,14 
	17,7,13 
	16,7,12 
	15,7,11 
	14,7,10 
	13,7,9 
	12,7,8 
	11,7,7 
	10,7,6 
	9,7,5 
	8,7,4 
	7,7,3 
	6,7,2 
	5,7,1 
	4,7,0 
net1 [9]
	20,10,9 
	19,10,8 
	18,10,7 
	18,11,6 
	18,12,5 
	18,13,4 
	18,14,3 
	18,15,2 
	18,16,1 
	18,17,0 
net0 is routed! 19/19
net1 is routed! 9/9
* operation time = 19, total length = 28 cell usage = 25, mode = 1
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
	20,10,14 
	19,10,13 
	18,10,12 
	17,10,11 
	16,10,10 
	15,10,9 
	14,10,8 
	13,10,7 
	12,10,6 
	11,10,5 
	10,10,4 
	9,10,3 
	8,10,2 
	8,11,1 
	8,12,0 
net0 is routed! 14/14
* operation time = 14, total length = 14 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[17]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 17/17
========================RESULT========================
net0 [17]
	20,10,17 
	19,10,16 
	18,10,15 
	17,10,14 
	16,10,13 
	15,10,12 
	14,10,11 
	13,10,10 
	12,10,9 
	11,10,8 
	10,10,7 
	9,10,6 
	8,10,5 
	7,10,4 
	6,10,3 
	5,10,2 
	4,10,1 
	4,11,0 
net0 is routed! 17/17
* operation time = 17, total length = 17 cell usage = 16, mode = 1
======================================================
net1 is completely routable!..0
net2 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[16]
try net1 ...
try net2 ...
try net0 ...
	dependency on net1 at 0
Done!

ORDER
1 -> 2 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 4/16
net0 [4]
	4,2,16 
	4,1,15 
	4,0,14 
	3,0,13 
@	2,0,12 @	2,0,11 @	2,0,10 @	2,0,9 @	2,0,8 @	2,0,7 @	2,0,6 @	2,0,5 @	2,0,4 @	2,0,3 @	2,0,2 @	2,0,1 	2,0,0 
net1 is routed! 3/3
net2 is routed! 7/11
========================RESULT========================
net0 [4]
	4,2,16 
	4,1,15 
	4,0,14 
	3,0,13 
@	2,0,12 @	2,0,11 @	2,0,10 @	2,0,9 @	2,0,8 @	2,0,7 @	2,0,6 @	2,0,5 @	2,0,4 @	2,0,3 @	2,0,2 @	2,0,1 	2,0,0 
net1 [3]
	8,2,3 
	7,2,2 
	6,2,1 
	5,2,0 
net2 [7]
	12,2,11 
	12,1,10 
	12,0,9 
	11,0,8 
	10,0,7 
	9,0,6 
	8,0,5 
@	7,0,4 @	7,0,3 @	7,0,2 @	7,0,1 	7,0,0 
net0 is routed! 4/16
net1 is routed! 3/3
net2 is routed! 7/11
* operation time = 16, total length = 30 cell usage = 11, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[20]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 10/20
net1 is routed! 9/9
========================RESULT========================
net0 [10]
	13,10,20 
	13,11,19 
	13,12,18 
	13,13,17 
	13,14,16 
	13,15,15 
	13,16,14 
	13,17,13 
	13,18,12 
	13,19,11 
@	13,20,10 @	13,20,9 @	13,20,8 @	13,20,7 @	13,20,6 @	13,20,5 @	13,20,4 @	13,20,3 @	13,20,2 @	13,20,1 	13,20,0 
net1 [9]
	15,8,9 
	15,7,8 
	15,6,7 
	15,5,6 
	15,4,5 
	14,4,4 
	13,4,3 
	12,4,2 
	12,3,1 
	12,2,0 
net0 is routed! 10/20
net1 is routed! 9/9
* operation time = 20, total length = 29 cell usage = 17, mode = 1
======================================================
net0 is completely routable!..0
net4 is completely routable!..0
net3 is completely routable!..0
net2 is completely routable!..3
net5 is completely routable!..3
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[48]
try net0 ...
try net4 ...
	net4 is updated! 11=>6
try net3 ...
	net3 is updated! 20=>8
try net2 ...
	net2 is updated! 24=>3
try net5 ...
	net5 is updated! 44=>19
try net1 ...
	dependency on net2 at 0
	net1 is updated! 48=>3
Done!
1)PostRouting...[19]
try net5 ...
try net3 ...
try net4 ...
try net0 ...
try net2 ...
try net1 ...
	dependency on net2 at 0
Done!

ORDER
5 -> 3 -> 4 -> 0 -> 2 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 4/4
net1 is routed! 3/3
net2 is routed! 3/3
net3 is routed! 8/8
net4 is routed! 6/6
net5 is routed! 17/19
========================RESULT========================
net0 [4]
	13,3,4 
	14,3,3 
	15,3,2 
	15,2,1 
	16,2,0 
net1 [3]
	0,6,3 
	0,5,2 
	1,5,1 
	2,5,0 
net2 [3]
	0,10,3 
	0,9,2 
	0,8,1 
	0,7,0 
net3 [8]
	8,12,8 
	8,11,7 
	8,10,6 
	8,9,5 
	8,8,4 
	8,7,3 
	8,6,2 
	8,5,1 
	7,5,0 
net4 [6]
	4,12,6 
	4,11,5 
	4,10,4 
	4,9,3 
	4,8,2 
	4,7,1 
	5,7,0 
net5 [17]
	11,5,19 
	10,5,18 
	10,6,17 
	10,7,16 
	10,8,15 
	10,9,14 
	10,10,13 
	10,11,12 
	10,12,11 
	10,13,10 
	10,14,9 
	10,15,8 
	10,16,7 
	10,17,6 
	10,18,5 
	10,19,4 
	10,20,3 
	11,20,2 
	12,20,1 
	13,20,0 
net0 is routed! 4/4
net1 is routed! 3/3
net2 is routed! 3/3
net3 is routed! 8/8
net4 is routed! 6/6
net5 is routed! 17/19
* operation time = 19, total length = 43 cell usage = 37, mode = 1
======================================================
