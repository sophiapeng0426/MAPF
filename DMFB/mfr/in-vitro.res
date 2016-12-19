net0 is completely routable!..0
net1 is completely routable!..0
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[51]
try net0 ...
try net1 ...
	net1 is updated! 33=>17
try net2 ...
	net2 is updated! 51=>19
Done!
1)PostRouting...[19]
try net1 ...
try net0 ...
try net2 ...
Done!

ORDER
1 -> 0 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 15/15
net1 is routed! 17/17
net2 is routed! 15/19
========================RESULT========================
net0 [15]
	5,6,15 
	5,7,14 
	5,8,13 
	5,9,12 
	5,10,11 
	5,11,10 
	6,11,9 
	7,11,8 
	8,11,7 
	9,11,6 
	10,11,5 
	11,11,4 
	12,11,3 
	13,11,2 
	14,11,1 
	15,11,0 
--- continued
	6,11,9 
@	5,11,8 @	5,11,7 @	5,11,6 	5,11,5 
	4,11,4 
	3,11,3 
	2,11,2 
	1,11,1 
	0,11,0 
net1 [17]
	12,6,17 
	12,7,16 
	12,8,15 
	12,9,14 
	12,10,13 
	12,11,12 
	12,12,11 
	12,13,10 
	11,13,9 
	10,13,8 
	9,13,7 
	8,13,6 
	7,13,5 
	6,13,4 
	5,13,3 
	4,13,2 
	4,14,1 
	4,15,0 
net2 [15]
	11,0,19 
	12,0,18 
	13,0,17 
	13,1,16 
	13,2,15 
	13,3,14 
	13,4,13 
	13,5,12 
	13,6,11 
	13,7,10 
	13,8,9 
	13,9,8 
	13,10,7 
	13,11,6 
	13,12,5 
	13,13,4 
	13,14,3 
	13,15,2 
	12,15,1 
	11,15,0 
net0 is routed! 15/15
net1 is routed! 17/17
net2 is routed! 15/19
* operation time = 19, total length = 51 cell usage = 46, mode = 1
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
	8,0,9 
	8,1,8 
	8,2,7 
	8,3,6 
	8,4,5 
	8,5,4 
	8,6,3 
	8,7,2 
	9,7,1 
	10,7,0 
net0 is routed! 9/9
* operation time = 9, total length = 9 cell usage = 8, mode = 1
======================================================
net0 is completely routable!..-1
Routing...
Done!
0)PostRouting...[10]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 10/10
========================RESULT========================
net0 [10]
	8,0,10 
	7,0,9 
	6,0,8 
	5,0,7 
	5,1,6 
	5,2,5 
	5,3,4 
	5,4,3 
	5,5,2 
	5,6,1 
	5,7,0 
net0 is routed! 10/10
* operation time = 10, total length = 10 cell usage = 9, mode = 1
======================================================
net2 is completely routable!..0
net0 is completely routable!..0
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[39]
try net2 ...
try net0 ...
	net0 is updated! 31=>18
try net1 ...
	dependency on net0 at 0
	net1 is updated! 39=>13
Done!
1)PostRouting...[18]
try net0 ...
try net2 ...
try net1 ...
	dependency on net0 at 0
Done!

ORDER
0 -> 2 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 18/18
net1 is routed! 7/13
net2 is routed! 12/12
========================RESULT========================
net0 [18]
	5,12,18 
	5,11,17 
	5,10,16 
	5,9,15 
	5,8,14 
	6,8,13 
	7,8,12 
	8,8,11 
	9,8,10 
	10,8,9 
	11,8,8 
	12,8,7 
	13,8,6 
	14,8,5 
	15,8,4 
	15,7,3 
	15,6,2 
	15,5,1 
	15,4,0 
--- continued
	7,8,12 
	6,8,11 
	5,8,10 
	4,8,9 
	3,8,8 
	2,8,7 
	1,8,6 
@	0,8,5 	0,8,4 
	0,7,3 
	0,6,2 
	0,5,1 
	0,4,0 
net1 [7]
	1,5,13 
	1,6,12 
	1,7,11 
	1,8,10 
	1,9,9 
	1,10,8 
	1,11,7 
	1,12,6 
	0,12,5 
	1,12,4 
@	0,12,3 @	0,12,2 	0,12,1 
	0,11,0 
net2 [12]
	2,12,12 
	2,13,11 
	2,14,10 
	2,15,9 
	3,15,8 
	4,15,7 
	5,15,6 
	6,15,5 
	7,15,4 
	8,15,3 
	9,15,2 
	10,15,1 
	11,15,0 
net0 is routed! 18/18
net1 is routed! 7/13
net2 is routed! 12/12
* operation time = 18, total length = 43 cell usage = 36, mode = 1
======================================================
net2 is completely routable!..-1
net0 is completely routable!..0
net3 is completely routable!..0
net1 is completely routable!..3
net4 is completely routable!..4
Routing...
Done!
0)PostRouting...[63]
try net2 ...
try net0 ...
	net0 is updated! 10=>6
try net3 ...
	net3 is updated! 27=>16
try net1 ...
	net1 is updated! 45=>19
try net4 ...
	net4 is updated! 63=>17
Done!
1)PostRouting...[19]
try net4 ...
try net3 ...
try net1 ...
try net0 ...
try net2 ...
Done!

ORDER
4 -> 3 -> 1 -> 0 -> 2 -> 
runtime = 0.0 sec
net0 is routed! 6/6
net1 is routed! 17/19
net2 is routed! 3/3
net3 is routed! 16/16
net4 is routed! 17/17
========================RESULT========================
net0 [6]
	5,7,6 
	5,6,5 
	6,6,4 
	7,6,3 
	8,6,2 
	9,6,1 
	10,6,0 
net1 [17]
	12,15,19 
	12,14,18 
	12,13,17 
	12,12,16 
	12,11,15 
	12,10,14 
	12,9,13 
	12,8,12 
	12,7,11 
	12,6,10 
@	12,5,9 	12,5,8 
	13,5,7 
	13,4,6 
	13,3,5 
	13,2,4 
	13,1,3 
@	13,0,2 	13,0,1 
	14,0,0 
net2 [3]
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net3 [16]
	8,2,16 
	8,3,15 
	8,4,14 
	8,5,13 
	8,6,12 
	8,7,11 
	9,7,10 
	10,7,9 
	11,7,8 
	12,7,7 
	13,7,6 
	14,7,5 
	15,7,4 
	15,8,3 
	15,9,2 
	15,10,1 
	15,11,0 
--- continued
	8,6,12 
@	8,5,11 	8,5,10 
	8,6,9 
@	7,6,8 	7,6,7 
	7,5,6 
	7,4,5 
	6,4,4 
	5,4,3 
@	4,4,2 	4,4,1 
	4,5,0 
net4 [17]
	0,2,17 
	1,2,16 
	2,2,15 
	3,2,14 
	4,2,13 
	5,2,12 
	6,2,11 
	7,2,10 
	8,2,9 
	9,2,8 
	10,2,7 
	11,2,6 
	11,3,5 
	11,4,4 
	12,4,3 
	13,4,2 
	14,4,1 
	15,4,0 
--- continued
	7,2,10 
	6,2,9 
@	6,3,8 	6,3,7 
	5,3,6 
	4,3,5 
	3,3,4 
	2,3,3 
	1,3,2 
	1,4,1 
	1,5,0 
net0 is routed! 6/6
net1 is routed! 17/19
net2 is routed! 3/3
net3 is routed! 16/16
net4 is routed! 17/17
* operation time = 19, total length = 61 cell usage = 50, mode = 1
======================================================
net0 is completely routable!..0
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
	10,7,5 
	10,8,4 
	10,9,3 
	10,10,2 
	10,11,1 
	10,12,0 
net0 is routed! 5/5
* operation time = 5, total length = 5 cell usage = 4, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[25]
try net1 ...
try net0 ...
	net0 is updated! 25=>12
Done!
1)PostRouting...[12]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 12/12
net1 is routed! 10/12
========================RESULT========================
net0 [12]
	7,15,12 
	8,15,11 
	9,15,10 
	10,15,9 
	11,15,8 
	12,15,7 
	13,15,6 
	14,15,5 
	15,15,4 
	15,14,3 
	15,13,2 
	15,12,1 
	15,11,0 
--- continued
	12,15,7 
	11,15,6 
	11,14,5 
	11,13,4 
	11,12,3 
	11,11,2 
	11,10,1 
	11,9,0 
net1 [10]
	7,6,12 
	8,6,11 
	9,6,10 
	9,5,9 
	10,5,8 
	11,5,7 
	12,5,6 
	13,5,5 
	14,5,4 
	14,6,3 
	14,7,2 
	14,8,1 
	14,9,0 
--- continued
	14,6,3 
	14,5,2 
	14,4,1 
	15,4,0 
net0 is routed! 12/12
net1 is routed! 10/12
* operation time = 12, total length = 24 cell usage = 22, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..-1
net3 is completely routable!..3
net2 is completely routable!..3
Routing...
Done!
0)PostRouting...[54]
try net1 ...
try net0 ...
	net0 is updated! 36=>16
try net3 ...
	net3 is updated! 45=>10
try net2 ...
	net2 is updated! 54=>8
Done!
1)PostRouting...[16]
try net2 ...
try net3 ...
try net0 ...
try net1 ...
Done!

ORDER
2 -> 3 -> 0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 10/16
net1 is routed! 9/15
net2 is routed! 8/8
net3 is routed! 8/10
========================RESULT========================
net0 [10]
	8,0,16 
	7,0,15 
	6,0,14 
	5,0,13 
	4,0,12 
	3,0,11 
	2,0,10 
	2,1,9 
	2,2,8 
	2,3,7 
	2,4,6 
	2,5,5 
	2,6,4 
	2,7,3 
	3,7,2 
	4,7,1 
	5,7,0 
net1 [9]
	8,0,15 
	9,0,14 
	10,0,13 
	11,0,12 
	12,0,11 
	13,0,10 
	13,1,9 
	13,2,8 
	13,3,7 
	13,4,6 
	12,4,5 
	11,4,4 
	10,4,3 
	10,5,2 
	10,6,1 
	10,7,0 
net2 [8]
	1,7,8 
	2,7,7 
	3,7,6 
	4,7,5 
	4,6,4 
	4,5,3 
	4,4,2 
	4,3,1 
	4,2,0 
net3 [8]
	14,7,10 
	15,7,9 
	15,6,8 
	15,5,7 
	15,4,6 
	15,3,5 
	15,2,4 
	14,2,3 
	13,2,2 
	12,2,1 
	11,2,0 
net0 is routed! 10/16
net1 is routed! 9/15
net2 is routed! 8/8
net3 is routed! 8/10
* operation time = 16, total length = 49 cell usage = 40, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[19]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 10/19
net1 is routed! 8/8
========================RESULT========================
net0 [10]
	4,2,19 
	4,3,18 
	4,4,17 
	4,5,16 
	5,5,15 
	5,6,14 
	5,7,13 
	5,8,12 
	5,9,11 
	6,9,10 
@	7,9,9 @	7,9,8 @	7,9,7 @	7,9,6 @	7,9,5 @	7,9,4 @	7,9,3 @	7,9,2 @	7,9,1 	7,9,0 
net1 [8]
	11,2,8 
	10,2,7 
	9,2,6 
	8,2,5 
	7,2,4 
	7,3,3 
	7,4,2 
	7,5,1 
	7,6,0 
net0 is routed! 10/19
net1 is routed! 8/8
* operation time = 19, total length = 27 cell usage = 16, mode = 1
======================================================
net0 is completely routable!..-1
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[16]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 9/9
net1 is routed! 6/16
net1 [6]
	14,7,16 
	14,6,15 
	14,5,14 
	14,4,13 
	14,3,12 
	14,2,11 
@	15,2,10 @	15,2,9 @	15,2,8 @	15,2,7 @	15,2,6 @	15,2,5 @	15,2,4 @	15,2,3 @	15,2,2 @	15,2,1 	15,2,0 
========================RESULT========================
net0 [9]
	8,0,9 
	8,1,8 
	8,2,7 
	8,3,6 
	8,4,5 
	8,5,4 
	8,6,3 
	8,7,2 
	9,7,1 
	10,7,0 
net1 [6]
	14,7,16 
	14,6,15 
	14,5,14 
	14,4,13 
	14,3,12 
	14,2,11 
@	15,2,10 @	15,2,9 @	15,2,8 @	15,2,7 @	15,2,6 @	15,2,5 @	15,2,4 @	15,2,3 @	15,2,2 @	15,2,1 	15,2,0 
net0 is routed! 9/9
net1 is routed! 6/16
* operation time = 16, total length = 25 cell usage = 13, mode = 1
======================================================
net0 is completely routable!..-1
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[17]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 10/10
net1 is routed! 6/17
net1 [6]
	1,7,17 
	1,6,16 
	1,5,15 
	1,4,14 
	1,3,13 
	1,2,12 
@	0,2,11 @	0,2,10 @	0,2,9 @	0,2,8 @	0,2,7 @	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 @	0,2,2 @	0,2,1 	0,2,0 
========================RESULT========================
net0 [10]
	8,0,10 
	7,0,9 
	6,0,8 
	5,0,7 
	5,1,6 
	5,2,5 
	5,3,4 
	5,4,3 
	5,5,2 
	5,6,1 
	5,7,0 
net1 [6]
	1,7,17 
	1,6,16 
	1,5,15 
	1,4,14 
	1,3,13 
	1,2,12 
@	0,2,11 @	0,2,10 @	0,2,9 @	0,2,8 @	0,2,7 @	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 @	0,2,2 @	0,2,1 	0,2,0 
net0 is routed! 10/10
net1 is routed! 6/17
* operation time = 17, total length = 27 cell usage = 14, mode = 1
======================================================
