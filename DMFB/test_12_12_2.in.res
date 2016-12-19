net6 is completely routable!..0
net4 is completely routable!..3
net5 is completely routable!..4
net7 is completely routable!..4
net1 is completely routable!..3
net2 is completely routable!..4
net8 is completely routable!..4
net9 is completely routable!..4
net0 may be unroutable!
net3 may be unroutable!
net10 may be unroutable!
net11 may be unroutable!
runtime = 0.03 sec
Routing...
net3..succeed!
	dependency on net3 at 144
net0..failed!
net10..failed!
net11..failed!
	dependency on net3 at 144
net0..failed!
net10..failed!
net11..failed!
Done!
runtime = 0.04 sec
0)PostRouting...[1000000]
try net0 ...
	dependency on net3 at 144
	net0 is routed! -1=>145
try net10 ...
	dependency on net9 at 109
	net10 is routed! -1=>149
try net11 ...
	dependency on net9 at 124
ripup net9 ...
	dependency on net8 at 101
	dependency on net8 at 105
try net6 ...
try net4 ...
	dependency on net0 at 8
	net4 is updated! 16=>10
try net5 ...
	dependency on net4 at 0
	net5 is updated! 36=>25
try net7 ...
	dependency on net9 at 52
try net1 ...
	dependency on net10 at 72
try net2 ...
	net2 is updated! 87=>9
try net8 ...
	dependency on net5 at 18
	net8 is updated! 107=>23
try net9 ...
	dependency on net1 at 67
	net9 is updated! 107=>68
try net3 ...
	dependency on net0 at 0
	dependency on net2 at 0
	net3 is updated! 149=>28
Done!
1)PostRouting...[1000000]
try net0 ...
	dependency on net10 at 136
	net0 is updated! 145=>137
try net10 ...
	dependency on net9 at 0
	dependency on net3 at 0
	net10 is updated! 149=>18
try net9 ...
	dependency on net1 at 67
try net1 ...
	dependency on net7 at 53
	net1 is updated! 73=>56
try net7 ...
	net7 is updated! 53=>41
try net11 ...
	dependency on net9 at 65
ripup net9 ...
	dependency on net1 at 44
	dependency on net1 at 50
try net3 ...
	dependency on net2 at 0
	dependency on net0 at 0
try net5 ...
	dependency on net8 at 10
	net5 is updated! 25=>16
try net6 ...
try net8 ...
	net8 is updated! 23=>17
try net2 ...
try net4 ...
	dependency on net0 at 8
Done!
2)PostRouting...[1000000]
try net0 ...
	dependency on net3 at 23
	net0 is updated! 137=>24
try net9 ...
	dependency on net1 at 50
try net11 ...
	dependency on net9 at 48
ripup net9 ...
	dependency on net1 at 44
	dependency on net1 at 50
try net1 ...
	dependency on net7 at 41
	net1 is updated! 56=>42
try net7 ...
	net7 is updated! 41=>31
try net3 ...
	dependency on net2 at 0
	dependency on net0 at 0
try net10 ...
	dependency on net9 at 0
	dependency on net3 at 0
	net10 is updated! 18=>17
try net6 ...
try net2 ...
try net4 ...
	dependency on net0 at 8
try net5 ...
	dependency on net1 at 13
try net8 ...
Done!
3)PostRouting...[1000000]
try net9 ...
	dependency on net7 at 24
	net9 is updated! 51=>25
try net11 ...
	dependency on net9 at 22
ripup net9 ...
	dependency on net7 at 18
	dependency on net7 at 24
try net1 ...
	dependency on net7 at 31
	net1 is updated! 42=>32
try net7 ...
try net3 ...
	dependency on net0 at 0
	dependency on net2 at 0
try net0 ...
	dependency on net3 at 23
try net10 ...
	dependency on net9 at 0
	dependency on net3 at 0
try net6 ...
try net2 ...
try net4 ...
	dependency on net0 at 8
try net5 ...
	dependency on net1 at 13
try net8 ...
Done!
4)PostRouting...[1000000]
try net11 ...
	dependency on net9 at 22
ripup net9 ...
	dependency on net7 at 18
	dependency on net7 at 24
try net7 ...
try net3 ...
	dependency on net0 at 0
	dependency on net2 at 0
try net0 ...
	dependency on net3 at 23
try net10 ...
	dependency on net9 at 0
	dependency on net3 at 0
try net1 ...
	dependency on net7 at 31
try net6 ...
try net9 ...
	dependency on net7 at 24
try net2 ...
try net4 ...
	dependency on net0 at 8
try net5 ...
	dependency on net1 at 13
try net8 ...
Done!

ORDER
11 -> 7 -> 3 -> 0 -> 10 -> 1 -> 6 -> 9 -> 2 -> 4 -> 5 -> 8 -> 
runtimef = 0.18 sec
net0 is routed! 8/24
net0 [8]
	10,7,24 
	10,8,23 
	10,9,22 
@	10,10,21 @	10,10,20 	10,10,19 
	11,10,18 
	10,10,17 
	9,10,16 
	8,10,15 
	7,10,14 
	7,9,13 
	7,8,12 
	7,7,11 
	7,6,10 
	7,5,9 
	7,4,8 
	7,3,7 
	7,2,6 
	7,1,5 
	7,0,4 
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net1 is routed! 13/32
net1 [13]
	4,9,32 
	4,10,31 
@	4,11,30 	4,11,29 
	5,11,28 
	6,11,27 
@	7,11,26 	7,11,25 
	7,10,24 
	7,9,23 
	7,8,22 
	7,7,21 
	7,6,20 
	7,5,19 
	7,4,18 
	6,4,17 
	5,4,16 
	5,3,15 
	5,2,14 
	4,2,13 
	3,2,12 
	2,2,11 
@	2,1,10 @	2,1,9 	2,1,8 
	1,1,7 
	2,1,6 
	1,1,5 
@	0,1,4 @	0,1,3 @	0,1,2 	0,1,1 
	0,0,0 
net2 is routed! 7/9
net3 is routed! 20/28
net4 is routed! 7/10
net5 is routed! 9/16
net6 is routed! 8/8
net7 is routed! 10/31
net7 [10]
	2,8,31 
	3,8,30 
	4,8,29 
	5,8,28 
	6,8,27 
	7,8,26 
	7,7,25 
	7,6,24 
	7,5,23 
	7,4,22 
	6,4,21 
	5,4,20 
	4,4,19 
	4,3,18 
	4,2,17 
	4,1,16 
@	4,0,15 	4,0,14 
@	3,0,13 	3,0,12 
@	4,0,11 @	4,0,10 @	4,0,9 @	4,0,8 @	4,0,7 @	4,0,6 	4,0,5 
@	3,0,4 	3,0,3 
@	4,0,2 @	4,0,1 	4,0,0 
net8 is routed! 9/17
net9 is routed! 10/25
net9 [10]
	6,4,25 
	5,4,24 
	4,4,23 
	4,3,22 
	4,2,21 
	4,1,20 
	4,0,19 
	3,0,18 
@	2,0,17 	2,0,16 
	1,0,15 
@	0,0,14 	0,0,13 
	0,1,12 
	0,2,11 
	0,3,10 
	0,4,9 
@	0,5,8 @	0,5,7 @	0,5,6 @	0,5,5 @	0,5,4 	0,5,3 
	0,6,2 
	0,7,1 
	0,8,0 
net10 is routed! 13/17
========================RESULT========================
net0 [8]
	10,7,24 
	10,8,23 
	10,9,22 
@	10,10,21 @	10,10,20 	10,10,19 
	11,10,18 
	10,10,17 
	9,10,16 
	8,10,15 
	7,10,14 
	7,9,13 
	7,8,12 
	7,7,11 
	7,6,10 
	7,5,9 
	7,4,8 
	7,3,7 
	7,2,6 
	7,1,5 
	7,0,4 
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net1 [13]
	4,9,32 
	4,10,31 
@	4,11,30 	4,11,29 
	5,11,28 
	6,11,27 
@	7,11,26 	7,11,25 
	7,10,24 
	7,9,23 
	7,8,22 
	7,7,21 
	7,6,20 
	7,5,19 
	7,4,18 
	6,4,17 
	5,4,16 
	5,3,15 
	5,2,14 
	4,2,13 
	3,2,12 
	2,2,11 
@	2,1,10 @	2,1,9 	2,1,8 
	1,1,7 
	2,1,6 
	1,1,5 
@	0,1,4 @	0,1,3 @	0,1,2 	0,1,1 
	0,0,0 
net2 [7]
	6,0,9 
	7,0,8 
	8,0,7 
	9,0,6 
	10,0,5 
	11,0,4 
	11,1,3 
@	11,2,2 @	11,2,1 	11,2,0 
net3 [20]
	10,1,28 
	11,1,27 
	11,2,26 
	11,3,25 
	11,4,24 
	11,5,23 
	11,6,22 
	11,7,21 
	11,8,20 
	10,8,19 
	9,8,18 
	8,8,17 
	7,8,16 
	6,8,15 
@	5,8,14 @	5,8,13 	5,8,12 
	4,8,11 
	5,8,10 
	4,8,9 
@	3,8,8 	3,8,7 
	2,8,6 
	1,8,5 
@	0,8,4 	0,8,3 
	0,9,2 
	0,10,1 
	0,11,0 
net4 [7]
	7,2,10 
	6,2,9 
	5,2,8 
	4,2,7 
	5,2,6 
	4,2,5 
	3,2,4 
@	2,2,3 	2,2,2 
	2,1,1 
	2,0,0 
net5 [9]
	2,2,16 
	1,2,15 
	0,2,14 
	0,3,13 
	0,4,12 
	0,5,11 
	0,6,10 
	0,7,9 
	0,8,8 
	0,9,7 
	0,10,6 
@	0,11,5 	0,11,4 
	1,11,3 
@	2,11,2 @	2,11,1 	2,11,0 
net6 [8]
	5,6,8 
	6,6,7 
	7,6,6 
	7,5,5 
	8,5,4 
	9,5,3 
	10,5,2 
	11,5,1 
	11,4,0 
net7 [10]
	2,8,31 
	3,8,30 
	4,8,29 
	5,8,28 
	6,8,27 
	7,8,26 
	7,7,25 
	7,6,24 
	7,5,23 
	7,4,22 
	6,4,21 
	5,4,20 
	4,4,19 
	4,3,18 
	4,2,17 
	4,1,16 
@	4,0,15 	4,0,14 
@	3,0,13 	3,0,12 
@	4,0,11 @	4,0,10 @	4,0,9 @	4,0,8 @	4,0,7 @	4,0,6 	4,0,5 
@	3,0,4 	3,0,3 
@	4,0,2 @	4,0,1 	4,0,0 
net8 [9]
	9,5,17 
	9,4,16 
	8,4,15 
	7,4,14 
	6,4,13 
	5,4,12 
	4,4,11 
	4,3,10 
	3,3,9 
	2,3,8 
	1,3,7 
	0,3,6 
	1,3,5 
@	0,3,4 @	0,3,3 	0,3,2 
	0,4,1 
	0,5,0 
net9 [10]
	6,4,25 
	5,4,24 
	4,4,23 
	4,3,22 
	4,2,21 
	4,1,20 
	4,0,19 
	3,0,18 
@	2,0,17 	2,0,16 
	1,0,15 
@	0,0,14 	0,0,13 
	0,1,12 
	0,2,11 
	0,3,10 
	0,4,9 
@	0,5,8 @	0,5,7 @	0,5,6 @	0,5,5 @	0,5,4 	0,5,3 
	0,6,2 
	0,7,1 
	0,8,0 
net10 [13]
	0,9,17 
	0,10,16 
	0,11,15 
	1,11,14 
	2,11,13 
	3,11,12 
	4,11,11 
	5,11,10 
	6,11,9 
	7,11,8 
	8,11,7 
	9,11,6 
	10,11,5 
	11,11,4 
	11,10,3 
	11,9,2 
	11,8,1 
	11,7,0 
net11 [16]
net0 is routed! 8/24
net1 is routed! 13/32
net2 is routed! 7/9
net3 is routed! 20/28
net4 is routed! 7/10
net5 is routed! 9/16
net6 is routed! 8/8
net7 is routed! 10/31
net8 is routed! 9/17
net9 is routed! 10/25
net10 is routed! 13/17
net11 is NOT routed!
* operation time = 32, total length = 217 cell usage = 70, mode = 1
======================================================
