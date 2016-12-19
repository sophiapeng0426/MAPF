net7 is completely routable!..3
net12 is completely routable!..3
net10 is completely routable!..0
net11 is completely routable!..4
net8 is completely routable!..4
net13 is completely routable!..4
net1 is completely routable!..4
net0 is completely routable!..4
net9 is completely routable!..4
net2 may be unroutable!
net3 may be unroutable!
net4 may be unroutable!
net5 may be unroutable!
net6 may be unroutable!
net14 may be unroutable!
net15 may be unroutable!
runtime = 0.11 sec
Routing...
net2..succeed!
net5..succeed!
net3..succeed!
	dependency on net5 at 181
net4..failed!
	dependency on net5 at 167
net6..failed!
	dependency on net5 at 176
net14..failed!
	dependency on net5 at 184
net15..succeed!
	dependency on net5 at 181
net4..failed!
	dependency on net5 at 167
net6..failed!
	dependency on net5 at 176
net14..failed!
Done!
runtime = 0.26 sec
0)PostRouting...[1000000]
try net4 ...
	dependency on net5 at 181
	net4 is routed! -1=>184
try net6 ...
	dependency on net5 at 167
ripup net5 ...
	dependency on net2 at 163
	dependency on net0 at 119
try net14 ...
	dependency on net0 at 110
	net14 is routed! -1=>174
try net7 ...
	dependency on net4 at 12
try net12 ...
	dependency on net14 at 32
	net12 is updated! 34=>33
try net10 ...
	dependency on net12 at 26
	net10 is updated! 49=>27
try net11 ...
	dependency on net12 at 32
	net11 is updated! 62=>35
try net8 ...
	dependency on net10 at 21
	net8 is updated! 74=>32
try net13 ...
	dependency on net11 at 35
	net13 is updated! 90=>38
try net1 ...
	net1 is updated! 106=>21
try net0 ...
	dependency on net5 at 102
	net0 is updated! 122=>104
try net9 ...
	dependency on net14 at 48
	net9 is updated! 139=>49
try net2 ...
	dependency on net14 at 90
	net2 is updated! 163=>91
try net5 ...
	dependency on net4 at 105
	net5 is updated! 122=>106
try net3 ...
	dependency on net15 at 172
	net3 is updated! 179=>173
try net15 ...
	dependency on net4 at 102
	net15 is updated! 193=>103
Done!
1)PostRouting...[1000000]
try net3 ...
	dependency on net9 at 12
	net3 is updated! 173=>97
try net4 ...
	dependency on net15 at 60
	net4 is updated! 184=>63
try net14 ...
	dependency on net15 at 55
	net14 is updated! 174=>57
try net5 ...
	dependency on net15 at 64
	net5 is updated! 106=>69
try net2 ...
	dependency on net14 at 47
	net2 is updated! 91=>48
try net15 ...
	dependency on net4 at 47
	net15 is updated! 103=>48
try net0 ...
	dependency on net15 at 47
	net0 is updated! 104=>49
try net6 ...
	dependency on net14 at 51
ripup net14 ...
	dependency on net2 at 43
	dependency on net0 at 0
try net11 ...
	dependency on net12 at 32
try net9 ...
	dependency on net11 at 0
	net9 is updated! 49=>25
try net13 ...
	dependency on net11 at 35
try net8 ...
	dependency on net10 at 21
try net7 ...
try net12 ...
	net12 is updated! 33=>15
try net10 ...
	dependency on net5 at 12
	net10 is updated! 27=>19
try net1 ...
Done!
2)PostRouting...[1000000]
try net3 ...
	dependency on net15 at 35
	net3 is updated! 97=>43
try net5 ...
	dependency on net4 at 48
	net5 is updated! 69=>49
try net4 ...
	dependency on net0 at 21
	net4 is updated! 63=>49
try net2 ...
	dependency on net14 at 40
	net2 is updated! 48=>41
try net6 ...
	dependency on net14 at 47
ripup net14 ...
	dependency on net13 at 35
	dependency on net0 at 0
try net14 ...
	dependency on net0 at 0
try net15 ...
	dependency on net4 at 43
	net15 is updated! 48=>46
try net0 ...
	dependency on net15 at 45
	net0 is updated! 49=>47
try net11 ...
	dependency on net5 at 9
	net11 is updated! 35=>11
try net13 ...
	net13 is updated! 38=>16
try net8 ...
	dependency on net10 at 17
	net8 is updated! 32=>24
try net12 ...
	dependency on net13 at 14
try net7 ...
try net9 ...
	dependency on net11 at 0
	net9 is updated! 25=>24
try net1 ...
	dependency on net0 at 19
	net1 is updated! 21=>20
try net10 ...
	dependency on net5 at 12
Done!
3)PostRouting...[1000000]
try net6 ...
try net3 ...
	dependency on net15 at 35
	net3 is updated! 43=>42
try net2 ...
	dependency on net14 at 0
	net2 is updated! 41=>12
try net5 ...
	dependency on net4 at 47
	net5 is updated! 49=>48
try net4 ...
	dependency on net1 at 15
	net4 is updated! 49=>47
try net15 ...
	dependency on net4 at 41
	net15 is updated! 46=>44
try net0 ...
	dependency on net15 at 43
	net0 is updated! 47=>45
try net12 ...
	dependency on net13 at 14
try net13 ...
try net7 ...
try net14 ...
	dependency on net0 at 0
try net9 ...
	dependency on net11 at 0
try net1 ...
	dependency on net0 at 17
	net1 is updated! 20=>18
try net11 ...
	dependency on net5 at 9
try net8 ...
	dependency on net10 at 17
try net10 ...
	dependency on net5 at 12
Done!
4)PostRouting...[1000000]
try net6 ...
try net3 ...
	dependency on net15 at 33
	net3 is updated! 42=>40
try net5 ...
	dependency on net4 at 45
	net5 is updated! 48=>46
try net4 ...
	dependency on net1 at 15
try net15 ...
	dependency on net4 at 41
try net0 ...
	dependency on net15 at 43
try net12 ...
	dependency on net13 at 14
try net13 ...
try net7 ...
try net14 ...
	dependency on net0 at 0
try net9 ...
	dependency on net11 at 0
try net1 ...
	dependency on net0 at 17
try net11 ...
	dependency on net5 at 9
try net2 ...
	dependency on net14 at 0
try net8 ...
	dependency on net10 at 17
try net10 ...
	dependency on net5 at 12
Done!
5)PostRouting...[1000000]
try net6 ...
try net3 ...
	dependency on net15 at 33
try net4 ...
	dependency on net1 at 15
try net5 ...
	dependency on net4 at 45
try net15 ...
	dependency on net4 at 41
try net0 ...
	dependency on net15 at 43
try net12 ...
	dependency on net13 at 14
try net13 ...
try net7 ...
try net14 ...
	dependency on net0 at 0
try net9 ...
	dependency on net11 at 0
try net1 ...
	dependency on net0 at 17
try net11 ...
	dependency on net5 at 9
try net2 ...
	dependency on net14 at 0
try net8 ...
	dependency on net10 at 17
try net10 ...
	dependency on net5 at 12
Done!

ORDER
6 -> 3 -> 4 -> 5 -> 15 -> 0 -> 12 -> 13 -> 7 -> 14 -> 9 -> 1 -> 11 -> 2 -> 8 -> 10 -> 
runtimef = 0.72 sec
net0 is routed! 15/45
net0 [15]
	4,11,45 
	5,11,44 
	6,11,43 
	6,10,42 
@	6,9,41 @	6,9,40 @	6,9,39 @	6,9,38 @	6,9,37 @	6,9,36 @	6,9,35 @	6,9,34 @	6,9,33 @	6,9,32 @	6,9,31 @	6,9,30 @	6,9,29 @	6,9,28 @	6,9,27 @	6,9,26 @	6,9,25 @	6,9,24 @	6,9,23 	6,9,22 
@	6,8,21 @	6,8,20 @	6,8,19 @	6,8,18 	6,8,17 
	6,7,16 
	6,6,15 
	6,7,14 
	6,6,13 
@	6,5,12 	6,5,11 
	5,5,10 
	4,5,9 
	3,5,8 
	2,5,7 
	1,5,6 
	0,5,5 
	0,4,4 
	0,3,3 
	0,2,2 
	0,1,1 
	0,0,0 
net1 is routed! 13/18
net2 is routed! 8/12
net3 is routed! 8/40
net3 [8]
	10,14,40 
	10,15,39 
	9,15,38 
	8,15,37 
	7,15,36 
@	6,15,35 @	6,15,34 @	6,15,33 @	6,15,32 @	6,15,31 @	6,15,30 	6,15,29 
@	7,15,28 @	7,15,27 @	7,15,26 @	7,15,25 @	7,15,24 	7,15,23 
@	6,15,22 @	6,15,21 @	6,15,20 @	6,15,19 @	6,15,18 @	6,15,17 @	6,15,16 @	6,15,15 @	6,15,14 @	6,15,13 @	6,15,12 @	6,15,11 @	6,15,10 	6,15,9 
	5,15,8 
@	4,15,7 @	4,15,6 @	4,15,5 @	4,15,4 	4,15,3 
@	3,15,2 @	3,15,1 	3,15,0 
net4 is routed! 15/47
net4 [15]
	0,5,47 
	0,6,46 
	0,7,45 
	0,8,44 
	0,9,43 
	0,10,42 
	0,11,41 
	1,11,40 
	2,11,39 
	3,11,38 
	4,11,37 
	5,11,36 
	6,11,35 
	7,11,34 
	8,11,33 
	8,12,32 
	8,13,31 
	8,14,30 
@	9,14,29 @	9,14,28 @	9,14,27 @	9,14,26 @	9,14,25 @	9,14,24 @	9,14,23 	9,14,22 
@	8,14,21 @	8,14,20 	8,14,19 
	8,15,18 
@	8,14,17 	8,14,16 
	8,15,15 
	8,14,14 
	8,15,13 
	8,14,12 
	8,13,11 
	8,14,10 
@	8,15,9 	8,15,8 
	7,15,7 
@	6,15,6 @	6,15,5 @	6,15,4 @	6,15,3 	6,15,2 
@	5,15,1 	5,15,0 
net5 is routed! 15/46
net5 [15]
	0,9,46 
	0,10,45 
	0,11,44 
	0,12,43 
@	0,13,42 @	0,13,41 @	0,13,40 	0,13,39 
	0,14,38 
	0,15,37 
	0,14,36 
	0,13,35 
	0,12,34 
	0,11,33 
	0,12,32 
	0,11,31 
	1,11,30 
	2,11,29 
	3,11,28 
	4,11,27 
	5,11,26 
	6,11,25 
@	7,11,24 	7,11,23 
@	7,12,22 @	7,12,21 @	7,12,20 @	7,12,19 @	7,12,18 @	7,12,17 	7,12,16 
@	8,12,15 	8,12,14 
	8,11,13 
	8,10,12 
	8,9,11 
	8,8,10 
	8,7,9 
	8,6,8 
	8,5,7 
	8,4,6 
	8,3,5 
	8,2,4 
	8,1,3 
	8,0,2 
	7,0,1 
	6,0,0 
net7 is routed! 12/14
net8 is routed! 11/24
net8 [11]
	11,10,24 
	10,10,23 
	9,10,22 
	8,10,21 
	7,10,20 
@	6,10,19 	6,10,18 
	5,10,17 
	4,10,16 
	3,10,15 
	4,10,14 
@	3,10,13 @	3,10,12 @	3,10,11 	3,10,10 
@	3,11,9 	3,11,8 
@	4,11,7 	4,11,6 
	3,11,5 
	2,11,4 
	1,11,3 
@	0,11,2 	0,11,1 
	0,10,0 
net9 is routed! 16/24
net10 is routed! 10/19
net11 is routed! 8/11
net12 is routed! 13/15
net13 is routed! 13/16
net14 is routed! 12/15
net15 is routed! 14/44
net15 [14]
	2,10,44 
	2,11,43 
	3,11,42 
	4,11,41 
	5,11,40 
	6,11,39 
	7,11,38 
	8,11,37 
	8,12,36 
	8,13,35 
	8,14,34 
	8,15,33 
	9,15,32 
	10,15,31 
@	11,15,30 @	11,15,29 @	11,15,28 @	11,15,27 @	11,15,26 @	11,15,25 @	11,15,24 @	11,15,23 @	11,15,22 	11,15,21 
@	10,15,20 	10,15,19 
	11,15,18 
	12,15,17 
	13,15,16 
	14,15,15 
@	15,15,14 @	15,15,13 	15,15,12 
@	14,15,11 	14,15,10 
@	15,15,9 @	15,15,8 	15,15,7 
	14,15,6 
@	15,15,5 	15,15,4 
	15,14,3 
	15,13,2 
	15,12,1 
	15,11,0 
========================RESULT========================
net0 [15]
	4,11,45 
	5,11,44 
	6,11,43 
	6,10,42 
@	6,9,41 @	6,9,40 @	6,9,39 @	6,9,38 @	6,9,37 @	6,9,36 @	6,9,35 @	6,9,34 @	6,9,33 @	6,9,32 @	6,9,31 @	6,9,30 @	6,9,29 @	6,9,28 @	6,9,27 @	6,9,26 @	6,9,25 @	6,9,24 @	6,9,23 	6,9,22 
@	6,8,21 @	6,8,20 @	6,8,19 @	6,8,18 	6,8,17 
	6,7,16 
	6,6,15 
	6,7,14 
	6,6,13 
@	6,5,12 	6,5,11 
	5,5,10 
	4,5,9 
	3,5,8 
	2,5,7 
	1,5,6 
	0,5,5 
	0,4,4 
	0,3,3 
	0,2,2 
	0,1,1 
	0,0,0 
net1 [13]
	5,6,18 
	4,6,17 
	3,6,16 
	2,6,15 
	1,6,14 
@	0,6,13 @	0,6,12 	0,6,11 
	0,7,10 
	0,8,9 
	0,9,8 
	0,10,7 
	0,11,6 
	0,12,5 
	0,13,4 
	0,14,3 
@	0,15,2 	0,15,1 
	1,15,0 
net2 [8]
	11,1,12 
	11,2,11 
	10,2,10 
	9,2,9 
	8,2,8 
	7,2,7 
	7,1,6 
	7,0,5 
@	6,0,4 	6,0,3 
	5,0,2 
@	4,0,1 	4,0,0 
net3 [8]
	10,14,40 
	10,15,39 
	9,15,38 
	8,15,37 
	7,15,36 
@	6,15,35 @	6,15,34 @	6,15,33 @	6,15,32 @	6,15,31 @	6,15,30 	6,15,29 
@	7,15,28 @	7,15,27 @	7,15,26 @	7,15,25 @	7,15,24 	7,15,23 
@	6,15,22 @	6,15,21 @	6,15,20 @	6,15,19 @	6,15,18 @	6,15,17 @	6,15,16 @	6,15,15 @	6,15,14 @	6,15,13 @	6,15,12 @	6,15,11 @	6,15,10 	6,15,9 
	5,15,8 
@	4,15,7 @	4,15,6 @	4,15,5 @	4,15,4 	4,15,3 
@	3,15,2 @	3,15,1 	3,15,0 
net4 [15]
	0,5,47 
	0,6,46 
	0,7,45 
	0,8,44 
	0,9,43 
	0,10,42 
	0,11,41 
	1,11,40 
	2,11,39 
	3,11,38 
	4,11,37 
	5,11,36 
	6,11,35 
	7,11,34 
	8,11,33 
	8,12,32 
	8,13,31 
	8,14,30 
@	9,14,29 @	9,14,28 @	9,14,27 @	9,14,26 @	9,14,25 @	9,14,24 @	9,14,23 	9,14,22 
@	8,14,21 @	8,14,20 	8,14,19 
	8,15,18 
@	8,14,17 	8,14,16 
	8,15,15 
	8,14,14 
	8,15,13 
	8,14,12 
	8,13,11 
	8,14,10 
@	8,15,9 	8,15,8 
	7,15,7 
@	6,15,6 @	6,15,5 @	6,15,4 @	6,15,3 	6,15,2 
@	5,15,1 	5,15,0 
net5 [15]
	0,9,46 
	0,10,45 
	0,11,44 
	0,12,43 
@	0,13,42 @	0,13,41 @	0,13,40 	0,13,39 
	0,14,38 
	0,15,37 
	0,14,36 
	0,13,35 
	0,12,34 
	0,11,33 
	0,12,32 
	0,11,31 
	1,11,30 
	2,11,29 
	3,11,28 
	4,11,27 
	5,11,26 
	6,11,25 
@	7,11,24 	7,11,23 
@	7,12,22 @	7,12,21 @	7,12,20 @	7,12,19 @	7,12,18 @	7,12,17 	7,12,16 
@	8,12,15 	8,12,14 
	8,11,13 
	8,10,12 
	8,9,11 
	8,8,10 
	8,7,9 
	8,6,8 
	8,5,7 
	8,4,6 
	8,3,5 
	8,2,4 
	8,1,3 
	8,0,2 
	7,0,1 
	6,0,0 
net6 [16]
net7 [12]
	5,13,14 
	5,12,13 
	5,11,12 
	6,11,11 
	6,10,10 
	6,9,9 
	6,8,8 
	6,7,7 
	6,6,6 
	5,6,5 
	4,6,4 
	3,6,3 
	2,6,2 
	1,6,1 
	0,6,0 
net8 [11]
	11,10,24 
	10,10,23 
	9,10,22 
	8,10,21 
	7,10,20 
@	6,10,19 	6,10,18 
	5,10,17 
	4,10,16 
	3,10,15 
	4,10,14 
@	3,10,13 @	3,10,12 @	3,10,11 	3,10,10 
@	3,11,9 	3,11,8 
@	4,11,7 	4,11,6 
	3,11,5 
	2,11,4 
	1,11,3 
@	0,11,2 	0,11,1 
	0,10,0 
net9 [16]
	14,4,24 
	14,5,23 
	14,6,22 
	14,7,21 
	14,8,20 
	14,9,19 
	14,10,18 
	14,11,17 
	14,12,16 
	14,13,15 
	13,13,14 
	13,14,13 
	12,14,12 
	11,14,11 
	10,14,10 
	11,14,9 
@	10,14,8 	10,14,7 
	9,14,6 
@	8,14,5 	8,14,4 
@	8,15,3 	8,15,2 
@	9,15,1 	9,15,0 
net10 [10]
	8,8,19 
	8,9,18 
	9,9,17 
	10,9,16 
	11,9,15 
	12,9,14 
	13,9,13 
	13,10,12 
	13,11,11 
	13,12,10 
	13,13,9 
	13,14,8 
@	12,14,7 @	12,14,6 	12,14,5 
@	12,15,4 	12,15,3 
@	11,15,2 @	11,15,1 	11,15,0 
net11 [8]
	8,5,11 
	8,4,10 
	9,4,9 
@	10,4,8 @	10,4,7 @	10,4,6 	10,4,5 
	11,4,4 
	12,4,3 
	13,4,2 
	14,4,1 
	15,4,0 
net12 [13]
	11,4,15 
	12,4,14 
	13,4,13 
	14,4,12 
	14,5,11 
	14,6,10 
	14,7,9 
	14,8,8 
	14,9,7 
	14,10,6 
	14,11,5 
	14,12,4 
	13,12,3 
	13,13,2 
	13,14,1 
	13,15,0 
net13 [13]
	7,3,16 
	8,3,15 
	9,3,14 
	10,3,13 
@	10,4,12 	10,4,11 
	11,4,10 
@	12,4,9 	12,4,8 
	13,4,7 
	14,4,6 
@	15,4,5 	15,4,4 
	15,5,3 
	15,6,2 
	15,7,1 
	15,8,0 
net14 [12]
	1,0,15 
	2,0,14 
	3,0,13 
	4,0,12 
	5,0,11 
	6,0,10 
	7,0,9 
	8,0,8 
@	9,0,7 @	9,0,6 	9,0,5 
@	10,0,4 	10,0,3 
	11,0,2 
	12,0,1 
	13,0,0 
net15 [14]
	2,10,44 
	2,11,43 
	3,11,42 
	4,11,41 
	5,11,40 
	6,11,39 
	7,11,38 
	8,11,37 
	8,12,36 
	8,13,35 
	8,14,34 
	8,15,33 
	9,15,32 
	10,15,31 
@	11,15,30 @	11,15,29 @	11,15,28 @	11,15,27 @	11,15,26 @	11,15,25 @	11,15,24 @	11,15,23 @	11,15,22 	11,15,21 
@	10,15,20 	10,15,19 
	11,15,18 
	12,15,17 
	13,15,16 
	14,15,15 
@	15,15,14 @	15,15,13 	15,15,12 
@	14,15,11 	14,15,10 
@	15,15,9 @	15,15,8 	15,15,7 
	14,15,6 
@	15,15,5 	15,15,4 
	15,14,3 
	15,13,2 
	15,12,1 
	15,11,0 
net0 is routed! 15/45
net1 is routed! 13/18
net2 is routed! 8/12
net3 is routed! 8/40
net4 is routed! 15/47
net5 is routed! 15/46
net6 is NOT routed!
net7 is routed! 12/14
net8 is routed! 11/24
net9 is routed! 16/24
net10 is routed! 10/19
net11 is routed! 8/11
net12 is routed! 13/15
net13 is routed! 13/16
net14 is routed! 12/15
net15 is routed! 14/44
* operation time = 47, total length = 390 cell usage = 106, mode = 1
======================================================
