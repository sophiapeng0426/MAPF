net9 is completely routable!..3
net5 is completely routable!..4
net4 is completely routable!..4
net0 may be unroutable!
net1 may be unroutable!
net2 may be unroutable!
net3 may be unroutable!
net6 may be unroutable!
net7 may be unroutable!
net8 may be unroutable!
net10 may be unroutable!
net11 may be unroutable!
runtime = 0.03 sec
Routing...
net8..succeed!
net1..succeed!
net3..succeed!
	dependency on net1 at 89
net0..failed!
	dependency on net3 at 91
net2..succeed!
	dependency on net2 at 55
net6..failed!
	dependency on net3 at 93
net7..failed!
	dependency on net1 at 80
net10..failed!
net11..failed!
	dependency on net1 at 89
net0..failed!
	dependency on net2 at 55
net6..failed!
	dependency on net3 at 93
net7..failed!
	dependency on net1 at 80
net10..failed!
net11..failed!
Done!
runtime = 0.06 sec
0)PostRouting...[1000000]
try net0 ...
	dependency on net1 at 89
ripup net1 ...
	dependency on net3 at 83
	dependency on net3 at 88
try net6 ...
	dependency on net2 at 55
	net6 is routed! -1=>56
try net7 ...
	dependency on net3 at 93
ripup net3 ...
	dependency on net2 at 83
	dependency on net7 at 65
try net10 ...
	dependency on net7 at 0
	net10 is routed! -1=>23
try net11 ...
	dependency on net2 at 58
ripup net2 ...
	dependency on net7 at 29
	dependency on net8 at 67
try net9 ...
	dependency on net10 at 11
try net5 ...
	dependency on net7 at 12
	net5 is updated! 20=>15
try net4 ...
	dependency on net10 at 22
	net4 is updated! 32=>24
try net8 ...
	dependency on net2 at 21
	net8 is updated! 78=>35
try net1 ...
	dependency on net8 at 28
	net1 is routed! -1=>29
try net3 ...
	dependency on net7 at 65
ripup net7 ...
	dependency on net4 at 0
	dependency on net1 at 21
try net2 ...
	dependency on net1 at 28
	net2 is updated! 68=>30
Done!
1)PostRouting...[1000000]
try net0 ...
	dependency on net8 at 33
	net0 is updated! 86=>34
try net6 ...
	dependency on net10 at 16
	net6 is updated! 56=>17
try net11 ...
	dependency on net7 at 16
ripup net7 ...
	dependency on net11 at 36
try net3 ...
	dependency on net11 at 46
ripup net11 ...
	dependency on net7 at 20
	dependency on net7 at 16
try net2 ...
	dependency on net1 at 28
try net10 ...
	dependency on net7 at 0
try net1 ...
	dependency on net8 at 28
try net8 ...
	dependency on net0 at 18
try net9 ...
	dependency on net10 at 11
try net4 ...
	dependency on net10 at 22
try net7 ...
	dependency on net11 at 36
try net5 ...
	dependency on net0 at 14
Done!
2)PostRouting...[1000000]
try net3 ...
	dependency on net11 at 46
ripup net11 ...
	dependency on net7 at 20
	dependency on net7 at 16
try net11 ...
	dependency on net7 at 16
try net6 ...
	dependency on net10 at 16
try net7 ...
	dependency on net11 at 36
try net2 ...
	dependency on net1 at 28
try net10 ...
	dependency on net7 at 0
try net1 ...
	dependency on net8 at 28
try net8 ...
	dependency on net0 at 18
try net9 ...
	dependency on net10 at 11
try net4 ...
	dependency on net10 at 22
try net5 ...
	dependency on net0 at 14
try net0 ...
	dependency on net8 at 33
Done!

ORDER
3 -> 11 -> 6 -> 7 -> 2 -> 10 -> 1 -> 8 -> 9 -> 4 -> 5 -> 0 -> 
runtimef = 0.24 sec
net0 is routed! 18/34
net1 is routed! 12/29
net1 [12]
	9,3,29 
	9,4,28 
	9,5,27 
@	8,5,26 @	8,5,25 @	8,5,24 	8,5,23 
	9,5,22 
	9,6,21 
	9,7,20 
	9,8,19 
	9,7,18 
	9,6,17 
	9,5,16 
	9,4,15 
	9,3,14 
	9,2,13 
	9,1,12 
@	9,0,11 	9,0,10 
	8,0,9 
	7,0,8 
	6,0,7 
	5,0,6 
	4,0,5 
	3,0,4 
	2,0,3 
	1,0,2 
@	0,0,1 	0,0,0 
net2 is routed! 11/30
net2 [11]
	9,6,30 
	10,6,29 
@	11,6,28 @	11,6,27 @	11,6,26 @	11,6,25 	11,6,24 
@	11,7,23 @	11,7,22 @	11,7,21 @	11,7,20 @	11,7,19 @	11,7,18 	11,7,17 
	11,8,16 
	11,9,15 
	11,10,14 
@	11,11,13 	11,11,12 
	10,11,11 
	9,11,10 
	8,11,9 
	7,11,8 
	6,11,7 
	5,11,6 
	5,10,5 
	5,9,4 
	4,9,3 
	3,9,2 
	3,10,1 
	3,11,0 
net4 is routed! 11/24
net4 [11]
	0,6,24 
	0,7,23 
	0,8,22 
	1,8,21 
	2,8,20 
	3,8,19 
	3,9,18 
	3,10,17 
@	3,11,16 	3,11,15 
	2,11,14 
	1,11,13 
@	0,11,12 @	0,11,11 @	0,11,10 	0,11,9 
	1,11,8 
@	2,11,7 @	2,11,6 	2,11,5 
	3,11,4 
	4,11,3 
@	5,11,2 	5,11,1 
	6,11,0 
net5 is routed! 7/15
net5 [7]
	5,5,15 
	6,5,14 
	7,5,13 
	8,5,12 
	9,5,11 
	9,6,10 
	9,7,9 
	10,7,8 
	11,7,7 
	10,7,6 
@	11,7,5 @	11,7,4 	11,7,3 
	11,6,2 
	11,5,1 
	11,4,0 
net6 is routed! 14/17
net7 is routed! 14/37
net7 [14]
	10,8,37 
@	9,8,36 @	9,8,35 @	9,8,34 @	9,8,33 	9,8,32 
	10,8,31 
	11,8,30 
	10,8,29 
@	11,8,28 	11,8,27 
	11,9,26 
	11,10,25 
@	11,11,24 	11,11,23 
	10,11,22 
	9,11,21 
	8,11,20 
	7,11,19 
	6,11,18 
	5,11,17 
	5,10,16 
	5,9,15 
	5,8,14 
@	5,7,13 	5,7,12 
	5,6,11 
	5,5,10 
	5,4,9 
@	5,3,8 	5,3,7 
	4,3,6 
	3,3,5 
	2,3,4 
	1,3,3 
@	0,3,2 	0,3,1 
	0,4,0 
net8 is routed! 16/35
net8 [16]
	3,0,35 
	4,0,34 
	5,0,33 
	6,0,32 
	7,0,31 
	8,0,30 
	9,0,29 
	9,1,28 
@	9,2,27 @	9,2,26 @	9,2,25 @	9,2,24 @	9,2,23 @	9,2,22 @	9,2,21 	9,2,20 
@	10,2,19 	10,2,18 
@	11,2,17 	11,2,16 
	11,3,15 
	11,4,14 
	11,5,13 
	11,6,12 
	11,7,11 
	11,8,10 
@	11,9,9 @	11,9,8 @	11,9,7 	11,9,6 
	11,10,5 
@	11,11,4 	11,11,3 
	10,11,2 
	9,11,1 
	8,11,0 
net9 is routed! 8/12
net10 is routed! 16/23
net11 is routed! 14/46
net11 [14]
	5,8,46 
	5,9,45 
	5,10,44 
	5,11,43 
	6,11,42 
	7,11,41 
	8,11,40 
	9,11,39 
	10,11,38 
	11,11,37 
	11,10,36 
	11,9,35 
	11,8,34 
	11,7,33 
	11,6,32 
	11,5,31 
@	11,4,30 @	11,4,29 @	11,4,28 @	11,4,27 @	11,4,26 @	11,4,25 	11,4,24 
	11,3,23 
	11,2,22 
	11,1,21 
@	11,0,20 	11,0,19 
	10,0,18 
@	9,0,17 @	9,0,16 	9,0,15 
	10,0,14 
@	11,0,13 @	11,0,12 @	11,0,11 @	11,0,10 	11,0,9 
	10,0,8 
@	9,0,7 	9,0,6 
	10,0,5 
@	11,0,4 @	11,0,3 	11,0,2 
	10,0,1 
	11,0,0 
========================RESULT========================
net0 [18]
	7,0,34 
	8,0,33 
	9,0,32 
	10,0,31 
@	11,0,30 @	11,0,29 @	11,0,28 	11,0,27 
	10,0,26 
	9,0,25 
	8,0,24 
	7,0,23 
@	7,1,22 @	7,1,21 	7,1,20 
	6,1,19 
	5,1,18 
@	4,1,17 	4,1,16 
	4,2,15 
	4,3,14 
@	4,4,13 	4,4,12 
	3,4,11 
	2,4,10 
	1,4,9 
@	0,4,8 	0,4,7 
	0,5,6 
	0,6,5 
	0,7,4 
	0,8,3 
	0,9,2 
	0,10,1 
	0,11,0 
net1 [12]
	9,3,29 
	9,4,28 
	9,5,27 
@	8,5,26 @	8,5,25 @	8,5,24 	8,5,23 
	9,5,22 
	9,6,21 
	9,7,20 
	9,8,19 
	9,7,18 
	9,6,17 
	9,5,16 
	9,4,15 
	9,3,14 
	9,2,13 
	9,1,12 
@	9,0,11 	9,0,10 
	8,0,9 
	7,0,8 
	6,0,7 
	5,0,6 
	4,0,5 
	3,0,4 
	2,0,3 
	1,0,2 
@	0,0,1 	0,0,0 
net2 [11]
	9,6,30 
	10,6,29 
@	11,6,28 @	11,6,27 @	11,6,26 @	11,6,25 	11,6,24 
@	11,7,23 @	11,7,22 @	11,7,21 @	11,7,20 @	11,7,19 @	11,7,18 	11,7,17 
	11,8,16 
	11,9,15 
	11,10,14 
@	11,11,13 	11,11,12 
	10,11,11 
	9,11,10 
	8,11,9 
	7,11,8 
	6,11,7 
	5,11,6 
	5,10,5 
	5,9,4 
	4,9,3 
	3,9,2 
	3,10,1 
	3,11,0 
net3 [14]
net4 [11]
	0,6,24 
	0,7,23 
	0,8,22 
	1,8,21 
	2,8,20 
	3,8,19 
	3,9,18 
	3,10,17 
@	3,11,16 	3,11,15 
	2,11,14 
	1,11,13 
@	0,11,12 @	0,11,11 @	0,11,10 	0,11,9 
	1,11,8 
@	2,11,7 @	2,11,6 	2,11,5 
	3,11,4 
	4,11,3 
@	5,11,2 	5,11,1 
	6,11,0 
net5 [7]
	5,5,15 
	6,5,14 
	7,5,13 
	8,5,12 
	9,5,11 
	9,6,10 
	9,7,9 
	10,7,8 
	11,7,7 
	10,7,6 
@	11,7,5 @	11,7,4 	11,7,3 
	11,6,2 
	11,5,1 
	11,4,0 
net6 [14]
	1,10,17 
	0,10,16 
	0,9,15 
@	0,8,14 	0,8,13 
	1,8,12 
	2,8,11 
	3,8,10 
	4,8,9 
	5,8,8 
	5,7,7 
	5,6,6 
	5,5,5 
	5,4,4 
	5,3,3 
	5,2,2 
	5,1,1 
	5,0,0 
net7 [14]
	10,8,37 
@	9,8,36 @	9,8,35 @	9,8,34 @	9,8,33 	9,8,32 
	10,8,31 
	11,8,30 
	10,8,29 
@	11,8,28 	11,8,27 
	11,9,26 
	11,10,25 
@	11,11,24 	11,11,23 
	10,11,22 
	9,11,21 
	8,11,20 
	7,11,19 
	6,11,18 
	5,11,17 
	5,10,16 
	5,9,15 
	5,8,14 
@	5,7,13 	5,7,12 
	5,6,11 
	5,5,10 
	5,4,9 
@	5,3,8 	5,3,7 
	4,3,6 
	3,3,5 
	2,3,4 
	1,3,3 
@	0,3,2 	0,3,1 
	0,4,0 
net8 [16]
	3,0,35 
	4,0,34 
	5,0,33 
	6,0,32 
	7,0,31 
	8,0,30 
	9,0,29 
	9,1,28 
@	9,2,27 @	9,2,26 @	9,2,25 @	9,2,24 @	9,2,23 @	9,2,22 @	9,2,21 	9,2,20 
@	10,2,19 	10,2,18 
@	11,2,17 	11,2,16 
	11,3,15 
	11,4,14 
	11,5,13 
	11,6,12 
	11,7,11 
	11,8,10 
@	11,9,9 @	11,9,8 @	11,9,7 	11,9,6 
	11,10,5 
@	11,11,4 	11,11,3 
	10,11,2 
	9,11,1 
	8,11,0 
net9 [8]
	7,8,12 
	7,7,11 
	7,6,10 
	7,5,9 
	8,5,8 
	9,5,7 
	9,4,6 
	9,3,5 
	9,2,4 
	9,1,3 
	8,1,2 
	7,1,1 
	7,0,0 
net10 [16]
	0,3,23 
	0,4,22 
	0,5,21 
	0,6,20 
	0,7,19 
	0,8,18 
	1,8,17 
	2,8,16 
@	2,9,15 	2,9,14 
	3,9,13 
	4,9,12 
	5,9,11 
	6,9,10 
@	7,9,9 @	7,9,8 @	7,9,7 @	7,9,6 	7,9,5 
	7,8,4 
	8,8,3 
	9,8,2 
	10,8,1 
	11,8,0 
net11 [14]
	5,8,46 
	5,9,45 
	5,10,44 
	5,11,43 
	6,11,42 
	7,11,41 
	8,11,40 
	9,11,39 
	10,11,38 
	11,11,37 
	11,10,36 
	11,9,35 
	11,8,34 
	11,7,33 
	11,6,32 
	11,5,31 
@	11,4,30 @	11,4,29 @	11,4,28 @	11,4,27 @	11,4,26 @	11,4,25 	11,4,24 
	11,3,23 
	11,2,22 
	11,1,21 
@	11,0,20 	11,0,19 
	10,0,18 
@	9,0,17 @	9,0,16 	9,0,15 
	10,0,14 
@	11,0,13 @	11,0,12 @	11,0,11 @	11,0,10 	11,0,9 
	10,0,8 
@	9,0,7 	9,0,6 
	10,0,5 
@	11,0,4 @	11,0,3 	11,0,2 
	10,0,1 
	11,0,0 
net0 is routed! 18/34
net1 is routed! 12/29
net2 is routed! 11/30
net3 is NOT routed!
net4 is routed! 11/24
net5 is routed! 7/15
net6 is routed! 14/17
net7 is routed! 14/37
net8 is routed! 16/35
net9 is routed! 8/12
net10 is routed! 16/23
net11 is routed! 14/46
* operation time = 46, total length = 302 cell usage = 71, mode = 1
======================================================
