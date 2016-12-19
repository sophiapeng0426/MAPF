net4 is completely routable!..0
net5 is completely routable!..3
net13 is completely routable!..3
net12 is completely routable!..3
net9 is completely routable!..3
net8 is completely routable!..3
net11 is completely routable!..3
net10 is completely routable!..4
net7 is completely routable!..4
net3 is completely routable!..4
net14 is completely routable!..3
net2 is completely routable!..4
net0 is completely routable!..4
net15 is completely routable!..4
net6 is completely routable!..4
net1 may be unroutable!
runtime = 0.12 sec
Routing...
net1..failed!
Done!
runtime = 0.12 sec
0)PostRouting...[1000000]
try net1 ...
	dependency on net6 at 253
	net1 is routed! -1=>254
try net4 ...
try net5 ...
	dependency on net1 at 0
	net5 is updated! 21=>8
try net13 ...
	net13 is updated! 34=>12
try net12 ...
	dependency on net4 at 8
	net12 is updated! 45=>11
try net9 ...
	net9 is updated! 58=>13
try net8 ...
	net8 is updated! 79=>26
try net11 ...
	dependency on net8 at 24
	net11 is updated! 99=>27
try net10 ...
	dependency on net5 at 0
	dependency on net9 at 0
	net10 is updated! 114=>20
try net7 ...
	dependency on net11 at 17
	net7 is updated! 129=>29
try net3 ...
	dependency on net11 at 0
	net3 is updated! 148=>28
try net14 ...
	dependency on net7 at 29
	net14 is updated! 181=>31
try net2 ...
	dependency on net11 at 27
	net2 is updated! 203=>28
try net0 ...
	dependency on net3 at 0
	net0 is updated! 227=>41
try net15 ...
	dependency on net1 at 224
	net15 is updated! 248=>225
try net6 ...
	dependency on net15 at 0
	net6 is updated! 271=>27
Done!
1)PostRouting...[254]
try net1 ...
	dependency on net3 at 27
	net1 is updated! 254=>28
try net15 ...
	dependency on net0 at 34
	net15 is updated! 225=>35
try net6 ...
	dependency on net15 at 0
try net13 ...
try net9 ...
try net0 ...
	dependency on net1 at 19
try net4 ...
try net5 ...
	dependency on net1 at 0
try net12 ...
	dependency on net4 at 8
try net14 ...
	dependency on net7 at 29
try net8 ...
	dependency on net6 at 23
	net8 is updated! 26=>25
try net3 ...
	dependency on net11 at 0
try net2 ...
	dependency on net11 at 27
try net11 ...
	dependency on net8 at 23
	net11 is updated! 27=>26
try net7 ...
	dependency on net1 at 27
try net10 ...
	dependency on net9 at 0
	dependency on net5 at 0
Done!
2)PostRouting...[41]
try net6 ...
	dependency on net15 at 0
	net6 is updated! 27=>27 and 20=>22
try net1 ...
	dependency on net3 at 27
	net1 is updated! 28=>28 and 13=>15
try net13 ...
	net13 is updated! 12=>12 and 3=>5
try net9 ...
	net9 is updated! 13=>13 and 9=>10
try net0 ...
	dependency on net1 at 19
	net0 is updated! 41=>41 and 22=>33
try net4 ...
try net5 ...
	dependency on net1 at 0
try net12 ...
	dependency on net4 at 8
	net12 is updated! 11=>11 and 10=>11
try net14 ...
	dependency on net7 at 29
	net14 is updated! 31=>31 and 21=>24
try net3 ...
	dependency on net11 at 0
	net3 is updated! 28=>26 and 24=>27
try net2 ...
	dependency on net11 at 26
try net11 ...
	dependency on net8 at 23
try net8 ...
	dependency on net6 at 23
try net7 ...
	dependency on net1 at 27
	net7 is updated! 29=>28 and 25=>26
try net10 ...
	dependency on net5 at 0
	net10 is updated! 20=>20 and 20=>21
try net15 ...
	dependency on net0 at 34
	net15 is updated! 35=>35 and 11=>28
Done!
3)PostRouting...[41]
try net6 ...
	dependency on net15 at 0
try net1 ...
	dependency on net3 at 25
try net13 ...
try net9 ...
try net0 ...
	dependency on net1 at 19
	net0 is updated! 41=>41 and 28=>32
try net4 ...
try net5 ...
	dependency on net1 at 0
try net3 ...
	dependency on net11 at 0
try net12 ...
	dependency on net4 at 8
try net14 ...
	dependency on net7 at 28
try net2 ...
	dependency on net11 at 26
try net11 ...
	dependency on net8 at 23
try net8 ...
	dependency on net6 at 23
try net7 ...
	dependency on net1 at 27
	net7 is updated! 28=>28 and 10=>26
try net10 ...
	dependency on net5 at 0
try net15 ...
	dependency on net0 at 34
	net15 is updated! 35=>35 and 29=>30
Done!
4)PostRouting...[41]
try net6 ...
	dependency on net15 at 0
try net1 ...
	dependency on net3 at 25
try net13 ...
	net13 is updated! 12=>12 and 6=>8
try net9 ...
try net0 ...
	dependency on net1 at 19
try net4 ...
try net5 ...
	dependency on net1 at 0
try net3 ...
	dependency on net11 at 0
try net12 ...
	dependency on net4 at 8
try net14 ...
	dependency on net7 at 28
try net2 ...
	dependency on net11 at 26
try net11 ...
	dependency on net8 at 23
try net8 ...
	dependency on net6 at 23
try net7 ...
	dependency on net1 at 27
	net7 is updated! 28=>28 and 22=>24
try net10 ...
	dependency on net5 at 0
try net15 ...
	dependency on net0 at 34
Done!
5)PostRouting...[41]
try net6 ...
	dependency on net15 at 0
try net1 ...
	dependency on net3 at 25
try net13 ...
try net9 ...
try net0 ...
	dependency on net1 at 19
try net4 ...
try net5 ...
	dependency on net1 at 0
try net3 ...
	dependency on net11 at 0
try net12 ...
	dependency on net4 at 8
try net14 ...
	dependency on net7 at 28
try net2 ...
	dependency on net11 at 26
try net11 ...
	dependency on net8 at 23
try net8 ...
	dependency on net6 at 23
try net7 ...
	dependency on net1 at 27
try net10 ...
	dependency on net5 at 0
try net15 ...
	dependency on net0 at 34
Done!

ORDER
6 -> 1 -> 13 -> 9 -> 0 -> 4 -> 5 -> 3 -> 12 -> 14 -> 2 -> 11 -> 8 -> 7 -> 10 -> 15 -> 
runtimef = 0.58 sec
net0 is routed! 17/41
net0 [17]
	0,2,41 
	0,3,40 
	0,4,39 
	0,5,38 
	1,5,37 
	2,5,36 
	3,5,35 
	4,5,34 
	5,5,33 
	6,5,32 
@	7,5,31 @	7,5,30 @	7,5,29 	7,5,28 
	8,5,27 
	9,5,26 
@	10,5,25 	10,5,24 
	10,4,23 
	10,3,22 
	10,2,21 
	10,1,20 
@	10,0,19 	10,0,18 
	9,0,17 
	8,0,16 
	7,0,15 
@	8,0,14 @	8,0,13 	8,0,12 
	9,0,11 
@	10,0,10 @	10,0,9 	10,0,8 
	11,0,7 
	12,0,6 
	13,0,5 
@	14,0,4 @	14,0,3 @	14,0,2 	14,0,1 
	15,0,0 
net1 is routed! 9/28
net1 [9]
	9,0,28 
	8,0,27 
	7,0,26 
	6,0,25 
	6,1,24 
	6,2,23 
	5,2,22 
	4,2,21 
	3,2,20 
	2,2,19 
	1,2,18 
	0,2,17 
	0,1,16 
@	0,0,15 @	0,0,14 @	0,0,13 @	0,0,12 @	0,0,11 @	0,0,10 @	0,0,9 @	0,0,8 @	0,0,7 	0,0,6 
	1,0,5 
@	2,0,4 @	2,0,3 	2,0,2 
	1,0,1 
	0,0,0 
net2 is routed! 13/28
net2 [13]
	7,9,28 
	6,9,27 
	6,8,26 
	6,7,25 
	6,6,24 
	6,5,23 
	5,5,22 
	4,5,21 
	3,5,20 
	2,5,19 
	1,5,18 
@	0,5,17 	0,5,16 
	0,6,15 
	0,7,14 
	0,8,13 
	0,9,12 
	0,10,11 
	0,11,10 
	0,12,9 
	0,13,8 
	0,14,7 
@	0,15,6 @	0,15,5 @	0,15,4 @	0,15,3 @	0,15,2 @	0,15,1 	0,15,0 
net3 is routed! 16/26
net4 is routed! 10/12
net5 is routed! 8/8
net6 is routed! 20/27
net7 is routed! 14/28
net8 is routed! 12/25
net8 [12]
	10,12,25 
	10,11,24 
	10,10,23 
	9,10,22 
	8,10,21 
	7,10,20 
	6,10,19 
	6,9,18 
@	6,8,17 	6,8,16 
	6,7,15 
	6,6,14 
	6,5,13 
@	6,4,12 	6,4,11 
	6,3,10 
	6,2,9 
	6,1,8 
@	6,0,7 	6,0,6 
	7,0,5 
	8,0,4 
	9,0,3 
@	10,0,2 @	10,0,1 	10,0,0 
net9 is routed! 12/13
net10 is routed! 10/20
net11 is routed! 15/26
net12 is routed! 8/11
net13 is routed! 12/12
net14 is routed! 18/31
net15 is routed! 18/35
========================RESULT========================
net0 [17]
	0,2,41 
	0,3,40 
	0,4,39 
	0,5,38 
	1,5,37 
	2,5,36 
	3,5,35 
	4,5,34 
	5,5,33 
	6,5,32 
@	7,5,31 @	7,5,30 @	7,5,29 	7,5,28 
	8,5,27 
	9,5,26 
@	10,5,25 	10,5,24 
	10,4,23 
	10,3,22 
	10,2,21 
	10,1,20 
@	10,0,19 	10,0,18 
	9,0,17 
	8,0,16 
	7,0,15 
@	8,0,14 @	8,0,13 	8,0,12 
	9,0,11 
@	10,0,10 @	10,0,9 	10,0,8 
	11,0,7 
	12,0,6 
	13,0,5 
@	14,0,4 @	14,0,3 @	14,0,2 	14,0,1 
	15,0,0 
net1 [9]
	9,0,28 
	8,0,27 
	7,0,26 
	6,0,25 
	6,1,24 
	6,2,23 
	5,2,22 
	4,2,21 
	3,2,20 
	2,2,19 
	1,2,18 
	0,2,17 
	0,1,16 
@	0,0,15 @	0,0,14 @	0,0,13 @	0,0,12 @	0,0,11 @	0,0,10 @	0,0,9 @	0,0,8 @	0,0,7 	0,0,6 
	1,0,5 
@	2,0,4 @	2,0,3 	2,0,2 
	1,0,1 
	0,0,0 
net2 [13]
	7,9,28 
	6,9,27 
	6,8,26 
	6,7,25 
	6,6,24 
	6,5,23 
	5,5,22 
	4,5,21 
	3,5,20 
	2,5,19 
	1,5,18 
@	0,5,17 	0,5,16 
	0,6,15 
	0,7,14 
	0,8,13 
	0,9,12 
	0,10,11 
	0,11,10 
	0,12,9 
	0,13,8 
	0,14,7 
@	0,15,6 @	0,15,5 @	0,15,4 @	0,15,3 @	0,15,2 @	0,15,1 	0,15,0 
net3 [16]
	12,0,26 
	11,0,25 
	10,0,24 
	9,0,23 
	8,0,22 
	7,0,21 
	6,0,20 
	6,1,19 
	6,2,18 
	5,2,17 
	4,2,16 
	3,2,15 
	2,2,14 
	1,2,13 
	2,2,12 
	1,2,11 
@	0,2,10 @	0,2,9 @	0,2,8 @	0,2,7 @	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 	0,2,2 
	0,3,1 
	0,4,0 
net4 [10]
	4,7,12 
	4,8,11 
	5,8,10 
	5,9,9 
	5,10,8 
	5,11,7 
	5,12,6 
	5,13,5 
	4,13,4 
	3,13,3 
	2,13,2 
	2,14,1 
	2,15,0 
net5 [8]
	2,0,8 
	2,1,7 
	2,2,6 
	2,3,5 
	2,4,4 
	2,5,3 
	2,6,2 
	1,6,1 
	0,6,0 
net6 [20]
	14,14,27 
	14,13,26 
	14,12,25 
	13,12,24 
	12,12,23 
	11,12,22 
	10,12,21 
	10,11,20 
	10,10,19 
	9,10,18 
	8,10,17 
	7,10,16 
	6,10,15 
	6,9,14 
	6,8,13 
	6,7,12 
@	6,6,11 @	6,6,10 @	6,6,9 	6,6,8 
	6,5,7 
	6,4,6 
	6,3,5 
	6,2,4 
	6,1,3 
	6,0,2 
	7,0,1 
	8,0,0 
net7 [14]
	6,1,28 
	6,2,27 
	6,3,26 
	7,3,25 
	8,3,24 
	8,4,23 
@	8,5,22 	8,5,21 
	7,5,20 
@	8,5,19 @	8,5,18 @	8,5,17 @	8,5,16 @	8,5,15 @	8,5,14 @	8,5,13 @	8,5,12 @	8,5,11 @	8,5,10 	8,5,9 
	9,5,8 
	10,5,7 
	11,5,6 
	12,5,5 
	13,5,4 
@	13,6,3 	13,6,2 
	14,6,1 
	15,6,0 
net8 [12]
	10,12,25 
	10,11,24 
	10,10,23 
	9,10,22 
	8,10,21 
	7,10,20 
	6,10,19 
	6,9,18 
@	6,8,17 	6,8,16 
	6,7,15 
	6,6,14 
	6,5,13 
@	6,4,12 	6,4,11 
	6,3,10 
	6,2,9 
	6,1,8 
@	6,0,7 	6,0,6 
	7,0,5 
	8,0,4 
	9,0,3 
@	10,0,2 @	10,0,1 	10,0,0 
net9 [12]
	4,0,13 
	4,1,12 
	4,2,11 
	3,2,10 
	2,2,9 
	2,3,8 
	2,4,7 
	2,5,6 
	2,6,5 
	2,7,4 
	2,8,3 
	1,8,2 
@	0,8,1 	0,8,0 
net10 [10]
	2,7,20 
	2,8,19 
	1,8,18 
	0,8,17 
	0,9,16 
	0,10,15 
	0,11,14 
	0,12,13 
	0,13,12 
	1,13,11 
	2,13,10 
	2,14,9 
@	2,15,8 @	2,15,7 @	2,15,6 @	2,15,5 	2,15,4 
	3,15,3 
@	4,15,2 @	4,15,1 	4,15,0 
net11 [15]
	8,11,26 
	8,10,25 
	7,10,24 
	6,10,23 
	6,9,22 
@	6,8,21 	6,8,20 
	6,7,19 
	6,6,18 
	6,5,17 
	6,4,16 
	6,3,15 
	6,2,14 
	6,1,13 
@	6,0,12 	6,0,11 
	7,0,10 
@	8,0,9 @	8,0,8 	8,0,7 
	9,0,6 
	10,0,5 
	11,0,4 
@	12,0,3 @	12,0,2 @	12,0,1 	12,0,0 
net12 [8]
	6,12,11 
	5,12,10 
	5,13,9 
	4,13,8 
	3,13,7 
	2,13,6 
	1,13,5 
@	0,13,4 	0,13,3 
	0,12,2 
	0,11,1 
	0,10,0 
net13 [12]
	13,9,12 
	13,10,11 
	13,11,10 
	13,12,9 
	12,12,8 
	11,12,7 
	10,12,6 
	9,12,5 
	8,12,4 
	7,12,3 
	7,13,2 
	7,14,1 
	7,15,0 
net14 [18]
	5,3,31 
	5,4,30 
	5,5,29 
	4,5,28 
	3,5,27 
	2,5,26 
	1,5,25 
	0,5,24 
	0,6,23 
	0,7,22 
	0,8,21 
	0,9,20 
	0,10,19 
	0,11,18 
	0,12,17 
	0,13,16 
	1,13,15 
	2,13,14 
	2,14,13 
	2,15,12 
	3,15,11 
	4,15,10 
	5,15,9 
	6,15,8 
@	7,15,7 @	7,15,6 @	7,15,5 	7,15,4 
	8,15,3 
	9,15,2 
	10,15,1 
	11,15,0 
net15 [18]
	6,5,35 
	7,5,34 
	8,5,33 
@	9,5,32 @	9,5,31 @	9,5,30 	9,5,29 
	10,5,28 
	11,5,27 
@	12,5,26 @	12,5,25 @	12,5,24 @	12,5,23 	12,5,22 
	11,5,21 
@	10,5,20 	10,5,19 
@	11,5,18 	11,5,17 
	10,5,16 
@	11,5,15 	11,5,14 
	12,5,13 
	13,5,12 
	13,6,11 
	13,7,10 
	13,8,9 
	13,9,8 
	13,10,7 
	13,11,6 
	13,12,5 
	14,12,4 
	14,13,3 
@	14,14,2 	14,14,1 
	15,14,0 
net0 is routed! 17/41
net1 is routed! 9/28
net2 is routed! 13/28
net3 is routed! 16/26
net4 is routed! 10/12
net5 is routed! 8/8
net6 is routed! 20/27
net7 is routed! 14/28
net8 is routed! 12/25
net9 is routed! 12/13
net10 is routed! 10/20
net11 is routed! 15/26
net12 is routed! 8/11
net13 is routed! 12/12
net14 is routed! 18/31
net15 is routed! 18/35
* operation time = 41, total length = 371 cell usage = 94, mode = 1
======================================================
