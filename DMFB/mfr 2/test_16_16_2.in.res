net13 is completely routable!..0
net15 is completely routable!..0
net6 is completely routable!..0
net5 is completely routable!..3
net12 is completely routable!..3
net2 is completely routable!..4
net0 is completely routable!..0
net3 is completely routable!..3
net1 is completely routable!..4
net9 is completely routable!..4
net8 is completely routable!..4
net11 is completely routable!..4
net7 is completely routable!..4
net14 is completely routable!..4
net4 may be unroutable!
net10 may be unroutable!
runtime = 0.10 sec
Routing...
net4..failed!
net10..failed!
Done!
runtime = 0.12 sec
0)PostRouting...[1000000]
try net4 ...
	net4 is routed! -1=>25
try net10 ...
	net10 is routed! -1=>22
try net13 ...
try net15 ...
	dependency on net4 at 14
	net15 is updated! 28=>16
try net6 ...
	dependency on net15 at 13
	net6 is updated! 42=>19
try net5 ...
	dependency on net10 at 8
	net5 is updated! 65=>9
try net12 ...
	net12 is updated! 88=>28
try net2 ...
	dependency on net4 at 24
	net2 is updated! 116=>25
try net0 ...
	net0 is updated! 132=>21
try net3 ...
	net3 is updated! 153=>23
try net1 ...
	dependency on net10 at 22
	net1 is updated! 178=>33
try net9 ...
	dependency on net10 at 13
	net9 is updated! 197=>26
try net8 ...
	dependency on net9 at 0
	net8 is updated! 215=>18
try net11 ...
	dependency on net1 at 22
	net11 is updated! 231=>25
try net7 ...
	dependency on net12 at 26
	net7 is updated! 252=>41
try net14 ...
	dependency on net2 at 0
	net14 is updated! 289=>55
Done!
1)PostRouting...[55]
try net14 ...
	dependency on net2 at 0
	net14 is updated! 55=>55 and 19=>44
try net4 ...
	net4 is updated! 25=>25 and 19=>21
try net10 ...
	net10 is updated! 22=>22 and 18=>21
try net3 ...
	net3 is updated! 23=>23 and 18=>21
try net8 ...
	dependency on net9 at 0
try net1 ...
	dependency on net10 at 22
try net7 ...
	dependency on net12 at 26
	net7 is updated! 41=>41 and 32=>37
try net0 ...
	dependency on net1 at 19
	net0 is updated! 21=>21 and 16=>21
try net6 ...
	dependency on net12 at 16
try net5 ...
	net5 is updated! 9=>8 and 5=>7
try net2 ...
	dependency on net4 at 24
	net2 is updated! 25=>25 and 15=>23
try net11 ...
	dependency on net1 at 22
try net15 ...
	dependency on net4 at 15
try net12 ...
	net12 is updated! 28=>28 and 25=>26
try net9 ...
	dependency on net7 at 23
	net9 is updated! 26=>24 and 18=>19
try net13 ...
	dependency on net11 at 16
Done!
2)PostRouting...[55]
try net14 ...
	dependency on net2 at 0
try net4 ...
try net10 ...
try net3 ...
	net3 is updated! 23=>23 and 19=>20
try net8 ...
	dependency on net9 at 0
try net1 ...
	dependency on net10 at 22
try net7 ...
	dependency on net12 at 26
try net0 ...
	dependency on net1 at 19
try net5 ...
try net6 ...
	dependency on net12 at 16
try net2 ...
	dependency on net4 at 24
try net11 ...
	dependency on net1 at 22
try net15 ...
	dependency on net4 at 15
try net12 ...
try net9 ...
	dependency on net7 at 23
try net13 ...
	dependency on net11 at 16
Done!
3)PostRouting...[55]
try net14 ...
	dependency on net2 at 0
try net4 ...
try net10 ...
try net3 ...
try net8 ...
	dependency on net9 at 0
try net1 ...
	dependency on net10 at 22
try net7 ...
	dependency on net12 at 26
try net0 ...
	dependency on net1 at 19
try net5 ...
try net6 ...
	dependency on net12 at 16
try net2 ...
	dependency on net4 at 24
try net11 ...
	dependency on net1 at 22
try net15 ...
	dependency on net4 at 15
try net12 ...
try net9 ...
	dependency on net7 at 23
try net13 ...
	dependency on net11 at 16
Done!

ORDER
14 -> 4 -> 10 -> 3 -> 8 -> 1 -> 7 -> 0 -> 5 -> 6 -> 2 -> 11 -> 15 -> 12 -> 9 -> 13 -> 
runtimef = 0.41 sec
net0 is routed! 15/21
net1 is routed! 12/33
net1 [12]
	1,11,33 
	2,11,32 
	3,11,31 
	4,11,30 
	5,11,29 
	6,11,28 
	6,10,27 
	6,9,26 
	6,8,25 
	6,7,24 
	6,6,23 
	5,6,22 
@	4,6,21 @	4,6,20 	4,6,19 
	4,5,18 
	4,4,17 
	4,3,16 
	4,2,15 
	4,1,14 
	4,0,13 
	4,1,12 
@	4,2,11 	4,2,10 
	4,1,9 
@	4,0,8 	4,0,7 
	3,0,6 
	2,0,5 
@	1,0,4 @	1,0,3 @	1,0,2 	1,0,1 
	0,0,0 
net2 is routed! 11/25
net2 [11]
	14,12,25 
@	13,12,24 @	13,12,23 @	13,12,22 @	13,12,21 	13,12,20 
	14,12,19 
@	15,12,18 @	15,12,17 @	15,12,16 	15,12,15 
	14,12,14 
@	15,12,13 	15,12,12 
	15,11,11 
	15,10,10 
	15,9,9 
	15,8,8 
	15,7,7 
	15,6,6 
@	15,5,5 	15,5,4 
	15,4,3 
	15,3,2 
@	15,2,1 	15,2,0 
net3 is routed! 20/23
net4 is routed! 23/25
net5 is routed! 8/8
net6 is routed! 13/19
net7 is routed! 16/41
net7 [16]
	7,1,41 
	7,2,40 
	6,2,39 
	6,3,38 
	6,4,37 
	6,5,36 
	6,6,35 
	6,7,34 
	6,8,33 
	6,9,32 
	6,10,31 
	7,10,30 
@	8,10,29 @	8,10,28 @	8,10,27 @	8,10,26 @	8,10,25 @	8,10,24 	8,10,23 
	8,11,22 
	8,12,21 
	8,11,20 
@	8,10,19 @	8,10,18 	8,10,17 
	8,11,16 
	8,12,15 
@	8,13,14 @	8,13,13 @	8,13,12 @	8,13,11 @	8,13,10 	8,13,9 
@	8,14,8 @	8,14,7 	8,14,6 
@	8,15,5 	8,15,4 
	7,15,3 
@	6,15,2 	6,15,1 
	5,15,0 
net8 is routed! 15/18
net9 is routed! 12/24
net10 is routed! 20/22
net11 is routed! 15/25
net12 is routed! 16/28
net13 is routed! 9/17
net14 is routed! 16/55
net14 [16]
	14,2,55 
	14,1,54 
	14,0,53 
	13,0,52 
	12,0,51 
	11,0,50 
	10,0,49 
	9,0,48 
	9,1,47 
	9,2,46 
	9,3,45 
	9,4,44 
	8,4,43 
	7,4,42 
	6,4,41 
	6,5,40 
	6,6,39 
	6,7,38 
	6,8,37 
	6,9,36 
	6,10,35 
	7,10,34 
	8,10,33 
	9,10,32 
	10,10,31 
@	10,9,30 @	10,9,29 @	10,9,28 @	10,9,27 @	10,9,26 @	10,9,25 @	10,9,24 @	10,9,23 @	10,9,22 @	10,9,21 @	10,9,20 	10,9,19 
	10,10,18 
@	10,11,17 @	10,11,16 	10,11,15 
@	10,12,14 	10,12,13 
	11,12,12 
	12,12,11 
	13,12,10 
	14,12,9 
	15,12,8 
	15,13,7 
@	15,14,6 	15,14,5 
	14,14,4 
	13,14,3 
	12,14,2 
	11,14,1 
	11,15,0 
net15 is routed! 10/16
========================RESULT========================
net0 [15]
	4,4,21 
	4,3,20 
	4,2,19 
	5,2,18 
@	6,2,17 	6,2,16 
	7,2,15 
	8,2,14 
	8,1,13 
@	8,0,12 @	8,0,11 @	8,0,10 @	8,0,9 	8,0,8 
	9,0,7 
	10,0,6 
	11,0,5 
@	12,0,4 	12,0,3 
	13,0,2 
	14,0,1 
	15,0,0 
net1 [12]
	1,11,33 
	2,11,32 
	3,11,31 
	4,11,30 
	5,11,29 
	6,11,28 
	6,10,27 
	6,9,26 
	6,8,25 
	6,7,24 
	6,6,23 
	5,6,22 
@	4,6,21 @	4,6,20 	4,6,19 
	4,5,18 
	4,4,17 
	4,3,16 
	4,2,15 
	4,1,14 
	4,0,13 
	4,1,12 
@	4,2,11 	4,2,10 
	4,1,9 
@	4,0,8 	4,0,7 
	3,0,6 
	2,0,5 
@	1,0,4 @	1,0,3 @	1,0,2 	1,0,1 
	0,0,0 
net2 [11]
	14,12,25 
@	13,12,24 @	13,12,23 @	13,12,22 @	13,12,21 	13,12,20 
	14,12,19 
@	15,12,18 @	15,12,17 @	15,12,16 	15,12,15 
	14,12,14 
@	15,12,13 	15,12,12 
	15,11,11 
	15,10,10 
	15,9,9 
	15,8,8 
	15,7,7 
	15,6,6 
@	15,5,5 	15,5,4 
	15,4,3 
	15,3,2 
@	15,2,1 	15,2,0 
net3 [20]
	12,4,23 
	11,4,22 
	10,4,21 
	9,4,20 
	8,4,19 
	7,4,18 
	6,4,17 
	6,5,16 
	6,6,15 
	6,7,14 
	6,8,13 
	6,9,12 
	6,10,11 
	6,11,10 
	5,11,9 
	5,12,8 
	4,12,7 
	3,12,6 
@	3,13,5 @	3,13,4 @	3,13,3 	3,13,2 
	3,14,1 
	3,15,0 
net4 [23]
	14,14,25 
	15,14,24 
	15,13,23 
	15,12,22 
	15,11,21 
	15,10,20 
	15,9,19 
	15,8,18 
	15,7,17 
	14,7,16 
	13,7,15 
	12,7,14 
	12,6,13 
	11,6,12 
	10,6,11 
	9,6,10 
	8,6,9 
	7,6,8 
	6,6,7 
	5,6,6 
	5,5,5 
	5,4,4 
	5,3,3 
	5,2,2 
	5,1,1 
	5,0,0 
net5 [8]
	12,9,8 
	12,8,7 
	12,7,6 
	13,7,5 
	14,7,4 
	15,7,3 
	15,6,2 
	15,5,1 
	15,4,0 
net6 [13]
	8,8,19 
	8,7,18 
	8,6,17 
	8,5,16 
@	8,4,15 @	8,4,14 	8,4,13 
	8,3,12 
@	8,2,11 	8,2,10 
	7,2,9 
	6,2,8 
	5,2,7 
	4,2,6 
	3,2,5 
	2,2,4 
	1,2,3 
@	0,2,2 	0,2,1 
	0,3,0 
net7 [16]
	7,1,41 
	7,2,40 
	6,2,39 
	6,3,38 
	6,4,37 
	6,5,36 
	6,6,35 
	6,7,34 
	6,8,33 
	6,9,32 
	6,10,31 
	7,10,30 
@	8,10,29 @	8,10,28 @	8,10,27 @	8,10,26 @	8,10,25 @	8,10,24 	8,10,23 
	8,11,22 
	8,12,21 
	8,11,20 
@	8,10,19 @	8,10,18 	8,10,17 
	8,11,16 
	8,12,15 
@	8,13,14 @	8,13,13 @	8,13,12 @	8,13,11 @	8,13,10 	8,13,9 
@	8,14,8 @	8,14,7 	8,14,6 
@	8,15,5 	8,15,4 
	7,15,3 
@	6,15,2 	6,15,1 
	5,15,0 
net8 [15]
	1,8,18 
	0,8,17 
	0,7,16 
	0,6,15 
	0,5,14 
	0,4,13 
	1,4,12 
	2,4,11 
	3,4,10 
	4,4,9 
	5,4,8 
	6,4,7 
	7,4,6 
@	8,4,5 	8,4,4 
	8,3,3 
	8,2,2 
	8,1,1 
	8,0,0 
net9 [12]
	9,12,24 
	9,13,23 
	9,14,22 
	8,14,21 
@	8,15,20 	8,15,19 
	7,15,18 
	6,15,17 
	5,15,16 
	4,15,15 
@	3,15,14 	3,15,13 
	3,14,12 
	3,13,11 
	3,12,10 
	3,11,9 
	2,11,8 
	1,11,7 
@	0,11,6 @	0,11,5 	0,11,4 
	0,10,3 
	0,9,2 
	0,8,1 
	0,9,0 
net10 [20]
	0,13,22 
	0,12,21 
	0,11,20 
	1,11,19 
	2,11,18 
	3,11,17 
	4,11,16 
	5,11,15 
	6,11,14 
	7,11,13 
	8,11,12 
	9,11,11 
	10,11,10 
	10,12,9 
	11,12,8 
	12,12,7 
	13,12,6 
	14,12,5 
	15,12,4 
	15,11,3 
	15,10,2 
	15,9,1 
	15,8,0 
net11 [15]
	3,6,25 
	2,6,24 
	1,6,23 
	0,6,22 
	0,5,21 
	0,4,20 
	0,3,19 
	0,2,18 
	1,2,17 
	2,2,16 
	2,3,15 
	2,4,14 
	3,4,13 
	4,4,12 
	5,4,11 
	6,4,10 
	7,4,9 
	8,4,8 
	9,4,7 
	10,4,6 
	10,3,5 
	10,2,4 
	10,1,3 
	10,0,2 
	11,0,1 
	12,0,0 
net12 [16]
	11,2,28 
	10,2,27 
	9,2,26 
	8,2,25 
	7,2,24 
	6,2,23 
	6,3,22 
	6,4,21 
	6,5,20 
	6,6,19 
	6,7,18 
	6,8,17 
	6,9,16 
	7,9,15 
	8,9,14 
	9,9,13 
@	10,9,12 @	10,9,11 @	10,9,10 	10,9,9 
@	10,10,8 	10,10,7 
	9,10,6 
	8,10,5 
	8,11,4 
	8,12,3 
	8,13,2 
	8,14,1 
	8,15,0 
net13 [9]
	2,4,17 
	2,5,16 
	2,6,15 
	3,6,14 
	4,6,13 
	5,6,12 
	6,6,11 
	6,7,10 
	6,8,9 
	6,9,8 
	6,10,7 
	6,11,6 
	5,11,5 
	4,11,4 
	3,11,3 
	2,11,2 
	1,11,1 
	0,11,0 
net14 [16]
	14,2,55 
	14,1,54 
	14,0,53 
	13,0,52 
	12,0,51 
	11,0,50 
	10,0,49 
	9,0,48 
	9,1,47 
	9,2,46 
	9,3,45 
	9,4,44 
	8,4,43 
	7,4,42 
	6,4,41 
	6,5,40 
	6,6,39 
	6,7,38 
	6,8,37 
	6,9,36 
	6,10,35 
	7,10,34 
	8,10,33 
	9,10,32 
	10,10,31 
@	10,9,30 @	10,9,29 @	10,9,28 @	10,9,27 @	10,9,26 @	10,9,25 @	10,9,24 @	10,9,23 @	10,9,22 @	10,9,21 @	10,9,20 	10,9,19 
	10,10,18 
@	10,11,17 @	10,11,16 	10,11,15 
@	10,12,14 	10,12,13 
	11,12,12 
	12,12,11 
	13,12,10 
	14,12,9 
	15,12,8 
	15,13,7 
@	15,14,6 	15,14,5 
	14,14,4 
	13,14,3 
	12,14,2 
	11,14,1 
	11,15,0 
net15 [10]
	11,6,16 
	10,6,15 
	9,6,14 
	8,6,13 
	8,7,12 
	8,8,11 
	8,9,10 
	8,10,9 
	8,11,8 
	8,12,7 
	9,12,6 
	10,12,5 
	11,12,4 
	12,12,3 
	13,12,2 
	14,12,1 
	15,12,0 
net0 is routed! 15/21
net1 is routed! 12/33
net2 is routed! 11/25
net3 is routed! 20/23
net4 is routed! 23/25
net5 is routed! 8/8
net6 is routed! 13/19
net7 is routed! 16/41
net8 is routed! 15/18
net9 is routed! 12/24
net10 is routed! 20/22
net11 is routed! 15/25
net12 is routed! 16/28
net13 is routed! 9/17
net14 is routed! 16/55
net15 is routed! 10/16
* operation time = 55, total length = 400 cell usage = 119, mode = 1
======================================================
