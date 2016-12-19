net12 is completely routable!..0
net14 is completely routable!..3
net6 is completely routable!..3
net4 is completely routable!..3
net7 is completely routable!..3
net9 is completely routable!..3
net8 is completely routable!..3
net11 is completely routable!..4
net3 is completely routable!..3
net0 may be unroutable!
net1 may be unroutable!
net2 may be unroutable!
net5 may be unroutable!
net10 may be unroutable!
net13 may be unroutable!
net15 may be unroutable!
runtime = 0.11 sec
Routing...
net2..succeed!
	dependency on net2 at 214
net13..succeed!
net0..succeed!
	dependency on net0 at 197
net5..failed!
	dependency on net2 at 220
net1..failed!
	dependency on net0 at 183
net10..succeed!
	dependency on net13 at 217
net15..failed!
	dependency on net10 at 199
net5..failed!
	dependency on net2 at 220
net1..failed!
	dependency on net13 at 217
net15..failed!
Done!
runtime = 0.13 sec
0)PostRouting...[1000000]
try net1 ...
	dependency on net2 at 220
ripup net2 ...
	dependency on net11 at 128
	dependency on net1 at 167
try net5 ...
	dependency on net10 at 199
	net5 is routed! -1=>200
try net15 ...
	dependency on net13 at 217
	net15 is routed! -1=>220
try net12 ...
try net14 ...
	dependency on net5 at 18
	net14 is updated! 24=>20
try net6 ...
	dependency on net14 at 12
	net6 is updated! 40=>22
try net4 ...
	dependency on net5 at 13
	net4 is updated! 54=>23
try net7 ...
	dependency on net4 at 16
	net7 is updated! 78=>22
try net9 ...
	dependency on net5 at 64
	net9 is updated! 94=>65
try net8 ...
	dependency on net6 at 21
	net8 is updated! 124=>46
try net11 ...
	net11 is updated! 143=>14
try net3 ...
	dependency on net15 at 103
	net3 is updated! 160=>104
try net2 ...
	dependency on net1 at 167
try net13 ...
	dependency on net15 at 74
	net13 is updated! 217=>75
try net0 ...
	dependency on net5 at 193
	net0 is updated! 199=>197
try net10 ...
	dependency on net15 at 209
	net10 is updated! 212=>211
Done!
1)PostRouting...[220]
try net15 ...
	dependency on net13 at 18
	net15 is updated! 220=>24
try net10 ...
	dependency on net0 at 150
	net10 is updated! 211=>169
try net0 ...
	dependency on net5 at 193
	net0 is updated! 197=>194
try net5 ...
	dependency on net0 at 188
	net5 is updated! 200=>189
try net1 ...
	dependency on net3 at 102
	net1 is updated! 180=>104
try net2 ...
	dependency on net1 at 60
	net2 is updated! 169=>61
try net3 ...
	dependency on net1 at 102
	net3 is updated! 104=>103
try net13 ...
	dependency on net0 at 72
	net13 is updated! 75=>73
try net9 ...
	dependency on net2 at 27
	net9 is updated! 65=>28
try net8 ...
	dependency on net6 at 21
try net11 ...
try net12 ...
try net7 ...
	dependency on net4 at 16
try net4 ...
	dependency on net5 at 0
try net14 ...
	dependency on net3 at 17
	net14 is updated! 20=>18
try net6 ...
	dependency on net3 at 21
Done!
2)PostRouting...[194]
try net0 ...
	dependency on net5 at 65
	net0 is updated! 194=>66
try net5 ...
	dependency on net10 at 66
	net5 is updated! 189=>67
try net10 ...
	net10 is updated! 169=>77
try net3 ...
	dependency on net1 at 102
try net1 ...
	dependency on net5 at 25
	net1 is updated! 104=>51
try net13 ...
	dependency on net8 at 26
	net13 is updated! 73=>28
try net8 ...
	dependency on net6 at 21
try net2 ...
	dependency on net8 at 46
	net2 is updated! 61=>47
try net11 ...
try net12 ...
	dependency on net1 at 11
try net7 ...
	dependency on net4 at 16
try net4 ...
	dependency on net5 at 0
try net15 ...
	dependency on net13 at 18
try net9 ...
	dependency on net2 at 27
try net14 ...
	dependency on net3 at 17
try net6 ...
	dependency on net3 at 21
Done!
3)PostRouting...[103]
try net3 ...
	dependency on net1 at 50
	net3 is updated! 103=>51
try net10 ...
try net0 ...
	dependency on net2 at 46
	net0 is updated! 66=>47
try net5 ...
	dependency on net10 at 64
	net5 is updated! 67=>65
try net8 ...
	dependency on net6 at 21
try net1 ...
	dependency on net5 at 25
	net1 is updated! 51=>44
try net11 ...
try net12 ...
	dependency on net1 at 11
try net13 ...
	dependency on net8 at 26
try net7 ...
	dependency on net4 at 16
try net2 ...
	dependency on net8 at 46
try net4 ...
	dependency on net5 at 0
try net15 ...
	dependency on net13 at 18
try net9 ...
	dependency on net2 at 27
try net14 ...
	dependency on net3 at 17
try net6 ...
	dependency on net3 at 20
Done!
4)PostRouting...[77]
try net10 ...
try net8 ...
	dependency on net6 at 21
	net8 is updated! 46=>46 and 37=>39
try net3 ...
	dependency on net1 at 43
try net5 ...
	dependency on net10 at 64
	net5 is updated! 65=>65 and 59=>65
try net11 ...
try net0 ...
	dependency on net2 at 46
	net0 is updated! 47=>47 and 41=>46
try net12 ...
	dependency on net1 at 11
try net1 ...
	dependency on net5 at 22
try net13 ...
	dependency on net8 at 26
try net7 ...
	dependency on net4 at 16
	net7 is updated! 22=>22 and 21=>23
try net2 ...
	dependency on net8 at 46
try net4 ...
	dependency on net5 at 15
	net4 is updated! 23=>23 and 18=>22
try net15 ...
	dependency on net13 at 18
	net15 is updated! 24=>24 and 24=>25
try net9 ...
	dependency on net2 at 27
	net9 is updated! 28=>28 and 20=>25
try net14 ...
	dependency on net3 at 17
	net14 is updated! 18=>18 and 13=>18
try net6 ...
	dependency on net3 at 20
Done!
5)PostRouting...[77]
try net10 ...
	dependency on net0 at 0
try net8 ...
	dependency on net6 at 21
try net3 ...
	dependency on net1 at 43
try net5 ...
	dependency on net10 at 64
try net11 ...
try net0 ...
	dependency on net2 at 46
try net12 ...
	dependency on net1 at 11
try net1 ...
	dependency on net5 at 22
try net13 ...
	dependency on net8 at 26
try net7 ...
try net2 ...
	dependency on net8 at 46
try net4 ...
	dependency on net5 at 15
	net4 is updated! 23=>23 and 19=>23
try net15 ...
	dependency on net13 at 18
try net9 ...
	dependency on net2 at 27
try net14 ...
	dependency on net3 at 17
try net6 ...
	dependency on net3 at 20
Done!
6)PostRouting...[77]
try net10 ...
	dependency on net0 at 0
try net8 ...
	dependency on net6 at 21
try net3 ...
	dependency on net1 at 43
try net5 ...
	dependency on net10 at 64
try net11 ...
try net0 ...
	dependency on net2 at 46
try net12 ...
	dependency on net1 at 11
try net1 ...
	dependency on net5 at 22
try net13 ...
	dependency on net8 at 26
try net7 ...
try net2 ...
	dependency on net8 at 46
try net4 ...
	dependency on net5 at 15
try net15 ...
	dependency on net13 at 18
try net9 ...
	dependency on net2 at 27
try net14 ...
	dependency on net3 at 17
try net6 ...
	dependency on net3 at 20
Done!

ORDER
10 -> 8 -> 3 -> 5 -> 11 -> 0 -> 12 -> 1 -> 13 -> 7 -> 2 -> 4 -> 15 -> 9 -> 14 -> 6 -> 
runtimef = 0.84 sec
net0 is routed! 19/47
net0 [19]
	10,14,47 
	11,14,46 
@	11,15,45 @	11,15,44 	11,15,43 
	10,15,42 
	11,15,41 
	10,15,40 
	11,15,39 
	10,15,38 
@	11,15,37 @	11,15,36 	11,15,35 
	10,15,34 
	11,15,33 
@	10,15,32 	10,15,31 
	9,15,30 
	8,15,29 
	7,15,28 
	8,15,27 
@	9,15,26 	9,15,25 
	9,14,24 
	9,13,23 
	10,13,22 
	11,13,21 
	12,13,20 
	13,13,19 
	14,13,18 
	15,13,17 
	15,12,16 
	15,11,15 
	15,10,14 
	15,9,13 
	15,8,12 
	15,7,11 
	15,6,10 
	15,5,9 
	15,4,8 
	15,3,7 
@	15,2,6 	15,2,5 
	14,2,4 
	14,1,3 
@	14,0,2 	14,0,1 
	15,0,0 
net1 is routed! 19/44
net1 [19]
	0,6,44 
	0,7,43 
	1,7,42 
	2,7,41 
	3,7,40 
	4,7,39 
	5,7,38 
	6,7,37 
	7,7,36 
	7,6,35 
@	7,5,34 	7,5,33 
	8,5,32 
@	9,5,31 	9,5,30 
	9,6,29 
	9,7,28 
	10,7,27 
	11,7,26 
	12,7,25 
	13,7,24 
	13,6,23 
@	13,5,22 @	13,5,21 @	13,5,20 @	13,5,19 @	13,5,18 @	13,5,17 @	13,5,16 	13,5,15 
	14,5,14 
	15,5,13 
	14,5,12 
	13,5,11 
	12,5,10 
@	13,5,9 	13,5,8 
	13,6,7 
	14,6,6 
	15,6,5 
	15,5,4 
	15,4,3 
@	15,3,2 	15,3,1 
	15,2,0 
net2 is routed! 21/47
net2 [21]
	7,14,47 
	8,14,46 
	9,14,45 
	9,13,44 
	10,13,43 
	11,13,42 
	12,13,41 
	13,13,40 
	14,13,39 
	15,13,38 
	14,13,37 
	13,13,36 
@	12,13,35 	12,13,34 
	13,13,33 
	14,13,32 
@	15,13,31 @	15,13,30 	15,13,29 
	15,12,28 
	15,11,27 
	15,10,26 
	15,9,25 
	15,8,24 
@	15,7,23 	15,7,22 
	14,7,21 
	13,7,20 
	12,7,19 
	11,7,18 
	10,7,17 
	9,7,16 
	8,7,15 
	7,7,14 
	6,7,13 
	5,7,12 
	4,7,11 
	3,7,10 
	2,7,9 
	2,6,8 
	2,5,7 
	2,4,6 
	2,3,5 
	2,2,4 
	2,1,3 
	2,0,2 
	1,0,1 
	0,0,0 
net3 is routed! 16/51
net3 [16]
	2,8,51 
	2,9,50 
	3,9,49 
	2,9,48 
@	3,9,47 @	3,9,46 	3,9,45 
	2,9,44 
@	3,9,43 @	3,9,42 @	3,9,41 	3,9,40 
	2,9,39 
	3,9,38 
	2,9,37 
@	3,9,36 @	3,9,35 @	3,9,34 	3,9,33 
@	4,9,32 @	4,9,31 @	4,9,30 	4,9,29 
	3,9,28 
	2,9,27 
	3,9,26 
	2,9,25 
	3,9,24 
@	4,9,23 	4,9,22 
@	4,8,21 	4,8,20 
	5,8,19 
	6,8,18 
	6,7,17 
	6,6,16 
@	6,5,15 	6,5,14 
	5,5,13 
@	4,5,12 	4,5,11 
	5,5,10 
	6,5,9 
	7,5,8 
	8,5,7 
	9,5,6 
	10,5,5 
	11,5,4 
	12,5,3 
	13,5,2 
	14,5,1 
	15,5,0 
net4 is routed! 13/23
net5 is routed! 23/65
net5 [23]
	13,12,65 
	13,13,64 
@	14,13,63 @	14,13,62 @	14,13,61 @	14,13,60 	14,13,59 
@	13,13,58 @	13,13,57 @	13,13,56 @	13,13,55 @	13,13,54 @	13,13,53 @	13,13,52 @	13,13,51 @	13,13,50 @	13,13,49 @	13,13,48 	13,13,47 
	14,13,46 
@	15,13,45 	15,13,44 
	15,12,43 
	15,11,42 
	14,11,41 
	13,11,40 
	12,11,39 
	12,10,38 
	12,9,37 
	12,8,36 
	12,7,35 
	11,7,34 
	10,7,33 
	9,7,32 
	8,7,31 
	7,7,30 
	6,7,29 
@	7,7,28 	7,7,27 
	6,7,26 
	5,7,25 
	4,7,24 
	3,7,23 
	2,7,22 
	1,7,21 
@	0,7,20 @	0,7,19 @	0,7,18 @	0,7,17 	0,7,16 
	0,6,15 
	0,5,14 
@	0,4,13 	0,4,12 
	1,4,11 
	2,4,10 
	2,3,9 
	2,2,8 
	1,2,7 
@	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 	0,2,2 
	1,2,1 
	0,2,0 
net6 is routed! 11/22
net7 is routed! 15/22
net8 is routed! 13/46
net8 [13]
	6,12,46 
	6,13,45 
	6,14,44 
	5,14,43 
	4,14,42 
	3,14,41 
	2,14,40 
	2,13,39 
	1,13,38 
	0,13,37 
	0,12,36 
	0,11,35 
	0,10,34 
	0,9,33 
	1,9,32 
	2,9,31 
	2,8,30 
	2,7,29 
	2,6,28 
	2,5,27 
	2,4,26 
	2,3,25 
	2,2,24 
	1,2,23 
@	0,2,22 @	0,2,21 @	0,2,20 @	0,2,19 	0,2,18 
	1,2,17 
@	2,2,16 @	2,2,15 	2,2,14 
	1,2,13 
@	0,2,12 	0,2,11 
	0,1,10 
@	0,0,9 	0,0,8 
	1,0,7 
	2,0,6 
	3,0,5 
	4,0,4 
	5,0,3 
@	6,0,2 	6,0,1 
	5,0,0 
net9 is routed! 15/28
net10 is routed! 17/77
net10 [17]
	13,0,77 
	14,0,76 
	14,1,75 
	14,2,74 
	14,3,73 
	14,4,72 
	14,5,71 
	14,6,70 
	14,7,69 
	13,7,68 
	12,7,67 
	12,8,66 
	12,9,65 
	12,10,64 
	12,11,63 
	12,12,62 
	12,13,61 
	12,14,60 
@	12,15,59 	12,15,58 
@	13,15,57 @	13,15,56 @	13,15,55 @	13,15,54 @	13,15,53 @	13,15,52 @	13,15,51 @	13,15,50 @	13,15,49 @	13,15,48 @	13,15,47 @	13,15,46 @	13,15,45 @	13,15,44 @	13,15,43 @	13,15,42 @	13,15,41 @	13,15,40 @	13,15,39 @	13,15,38 @	13,15,37 @	13,15,36 @	13,15,35 @	13,15,34 @	13,15,33 @	13,15,32 @	13,15,31 @	13,15,30 @	13,15,29 @	13,15,28 @	13,15,27 @	13,15,26 @	13,15,25 @	13,15,24 @	13,15,23 @	13,15,22 @	13,15,21 @	13,15,20 @	13,15,19 @	13,15,18 	13,15,17 
@	14,15,16 @	14,15,15 	14,15,14 
@	15,15,13 @	15,15,12 @	15,15,11 @	15,15,10 @	15,15,9 @	15,15,8 	15,15,7 
	14,15,6 
@	13,15,5 @	13,15,4 @	13,15,3 	13,15,2 
	14,15,1 
	15,15,0 
net11 is routed! 14/14
net12 is routed! 11/13
net13 is routed! 11/28
net13 [11]
	1,2,28 
	2,2,27 
	2,1,26 
	2,0,25 
	3,0,24 
@	4,0,23 @	4,0,22 @	4,0,21 	4,0,20 
	3,0,19 
	2,0,18 
@	1,0,17 @	1,0,16 @	1,0,15 @	1,0,14 @	1,0,13 	1,0,12 
@	2,0,11 @	2,0,10 	2,0,9 
	3,0,8 
	4,0,7 
	5,0,6 
	6,0,5 
	7,0,4 
@	8,0,3 	8,0,2 
	9,0,1 
	10,0,0 
net14 is routed! 10/18
net15 is routed! 13/24
========================RESULT========================
net0 [19]
	10,14,47 
	11,14,46 
@	11,15,45 @	11,15,44 	11,15,43 
	10,15,42 
	11,15,41 
	10,15,40 
	11,15,39 
	10,15,38 
@	11,15,37 @	11,15,36 	11,15,35 
	10,15,34 
	11,15,33 
@	10,15,32 	10,15,31 
	9,15,30 
	8,15,29 
	7,15,28 
	8,15,27 
@	9,15,26 	9,15,25 
	9,14,24 
	9,13,23 
	10,13,22 
	11,13,21 
	12,13,20 
	13,13,19 
	14,13,18 
	15,13,17 
	15,12,16 
	15,11,15 
	15,10,14 
	15,9,13 
	15,8,12 
	15,7,11 
	15,6,10 
	15,5,9 
	15,4,8 
	15,3,7 
@	15,2,6 	15,2,5 
	14,2,4 
	14,1,3 
@	14,0,2 	14,0,1 
	15,0,0 
net1 [19]
	0,6,44 
	0,7,43 
	1,7,42 
	2,7,41 
	3,7,40 
	4,7,39 
	5,7,38 
	6,7,37 
	7,7,36 
	7,6,35 
@	7,5,34 	7,5,33 
	8,5,32 
@	9,5,31 	9,5,30 
	9,6,29 
	9,7,28 
	10,7,27 
	11,7,26 
	12,7,25 
	13,7,24 
	13,6,23 
@	13,5,22 @	13,5,21 @	13,5,20 @	13,5,19 @	13,5,18 @	13,5,17 @	13,5,16 	13,5,15 
	14,5,14 
	15,5,13 
	14,5,12 
	13,5,11 
	12,5,10 
@	13,5,9 	13,5,8 
	13,6,7 
	14,6,6 
	15,6,5 
	15,5,4 
	15,4,3 
@	15,3,2 	15,3,1 
	15,2,0 
net2 [21]
	7,14,47 
	8,14,46 
	9,14,45 
	9,13,44 
	10,13,43 
	11,13,42 
	12,13,41 
	13,13,40 
	14,13,39 
	15,13,38 
	14,13,37 
	13,13,36 
@	12,13,35 	12,13,34 
	13,13,33 
	14,13,32 
@	15,13,31 @	15,13,30 	15,13,29 
	15,12,28 
	15,11,27 
	15,10,26 
	15,9,25 
	15,8,24 
@	15,7,23 	15,7,22 
	14,7,21 
	13,7,20 
	12,7,19 
	11,7,18 
	10,7,17 
	9,7,16 
	8,7,15 
	7,7,14 
	6,7,13 
	5,7,12 
	4,7,11 
	3,7,10 
	2,7,9 
	2,6,8 
	2,5,7 
	2,4,6 
	2,3,5 
	2,2,4 
	2,1,3 
	2,0,2 
	1,0,1 
	0,0,0 
net3 [16]
	2,8,51 
	2,9,50 
	3,9,49 
	2,9,48 
@	3,9,47 @	3,9,46 	3,9,45 
	2,9,44 
@	3,9,43 @	3,9,42 @	3,9,41 	3,9,40 
	2,9,39 
	3,9,38 
	2,9,37 
@	3,9,36 @	3,9,35 @	3,9,34 	3,9,33 
@	4,9,32 @	4,9,31 @	4,9,30 	4,9,29 
	3,9,28 
	2,9,27 
	3,9,26 
	2,9,25 
	3,9,24 
@	4,9,23 	4,9,22 
@	4,8,21 	4,8,20 
	5,8,19 
	6,8,18 
	6,7,17 
	6,6,16 
@	6,5,15 	6,5,14 
	5,5,13 
@	4,5,12 	4,5,11 
	5,5,10 
	6,5,9 
	7,5,8 
	8,5,7 
	9,5,6 
	10,5,5 
	11,5,4 
	12,5,3 
	13,5,2 
	14,5,1 
	15,5,0 
net4 [13]
	0,4,23 
	1,4,22 
	2,4,21 
	2,5,20 
	2,6,19 
	2,7,18 
	2,8,17 
@	2,9,16 	2,9,15 
	1,9,14 
@	0,9,13 	0,9,12 
	0,10,11 
@	0,11,10 	0,11,9 
@	0,12,8 @	0,12,7 	0,12,6 
	0,13,5 
	1,13,4 
@	2,13,3 	2,13,2 
	2,14,1 
	2,15,0 
net5 [23]
	13,12,65 
	13,13,64 
@	14,13,63 @	14,13,62 @	14,13,61 @	14,13,60 	14,13,59 
@	13,13,58 @	13,13,57 @	13,13,56 @	13,13,55 @	13,13,54 @	13,13,53 @	13,13,52 @	13,13,51 @	13,13,50 @	13,13,49 @	13,13,48 	13,13,47 
	14,13,46 
@	15,13,45 	15,13,44 
	15,12,43 
	15,11,42 
	14,11,41 
	13,11,40 
	12,11,39 
	12,10,38 
	12,9,37 
	12,8,36 
	12,7,35 
	11,7,34 
	10,7,33 
	9,7,32 
	8,7,31 
	7,7,30 
	6,7,29 
@	7,7,28 	7,7,27 
	6,7,26 
	5,7,25 
	4,7,24 
	3,7,23 
	2,7,22 
	1,7,21 
@	0,7,20 @	0,7,19 @	0,7,18 @	0,7,17 	0,7,16 
	0,6,15 
	0,5,14 
@	0,4,13 	0,4,12 
	1,4,11 
	2,4,10 
	2,3,9 
	2,2,8 
	1,2,7 
@	0,2,6 @	0,2,5 @	0,2,4 @	0,2,3 	0,2,2 
	1,2,1 
	0,2,0 
net6 [11]
	6,9,22 
	6,10,21 
	6,11,20 
	6,12,19 
	6,13,18 
	7,13,17 
	8,13,16 
	9,13,15 
	10,13,14 
	11,13,13 
	12,13,12 
	13,13,11 
	13,12,10 
	13,11,9 
@	14,11,8 @	14,11,7 @	14,11,6 @	14,11,5 	14,11,4 
@	13,11,3 	13,11,2 
	14,11,1 
	15,11,0 
net7 [15]
	2,11,22 
	2,12,21 
	2,13,20 
	2,14,19 
	3,14,18 
	4,14,17 
	5,14,16 
	6,14,15 
	7,14,14 
	8,14,13 
	9,14,12 
	10,14,11 
	11,14,10 
	11,13,9 
	12,13,8 
	13,13,7 
@	14,13,6 @	14,13,5 @	14,13,4 	14,13,3 
	13,13,2 
	14,13,1 
	15,13,0 
net8 [13]
	6,12,46 
	6,13,45 
	6,14,44 
	5,14,43 
	4,14,42 
	3,14,41 
	2,14,40 
	2,13,39 
	1,13,38 
	0,13,37 
	0,12,36 
	0,11,35 
	0,10,34 
	0,9,33 
	1,9,32 
	2,9,31 
	2,8,30 
	2,7,29 
	2,6,28 
	2,5,27 
	2,4,26 
	2,3,25 
	2,2,24 
	1,2,23 
@	0,2,22 @	0,2,21 @	0,2,20 @	0,2,19 	0,2,18 
	1,2,17 
@	2,2,16 @	2,2,15 	2,2,14 
	1,2,13 
@	0,2,12 	0,2,11 
	0,1,10 
@	0,0,9 	0,0,8 
	1,0,7 
	2,0,6 
	3,0,5 
	4,0,4 
	5,0,3 
@	6,0,2 	6,0,1 
	5,0,0 
net9 [15]
	14,9,28 
	13,9,27 
@	12,9,26 @	12,9,25 @	12,9,24 @	12,9,23 @	12,9,22 @	12,9,21 	12,9,20 
	12,10,19 
	12,11,18 
	12,12,17 
	12,13,16 
	12,14,15 
@	12,15,14 	12,15,13 
@	13,15,12 @	13,15,11 @	13,15,10 @	13,15,9 	13,15,8 
	12,15,7 
	11,15,6 
	10,15,5 
	9,15,4 
	8,15,3 
	7,15,2 
	6,15,1 
	5,15,0 
net10 [17]
	13,0,77 
	14,0,76 
	14,1,75 
	14,2,74 
	14,3,73 
	14,4,72 
	14,5,71 
	14,6,70 
	14,7,69 
	13,7,68 
	12,7,67 
	12,8,66 
	12,9,65 
	12,10,64 
	12,11,63 
	12,12,62 
	12,13,61 
	12,14,60 
@	12,15,59 	12,15,58 
@	13,15,57 @	13,15,56 @	13,15,55 @	13,15,54 @	13,15,53 @	13,15,52 @	13,15,51 @	13,15,50 @	13,15,49 @	13,15,48 @	13,15,47 @	13,15,46 @	13,15,45 @	13,15,44 @	13,15,43 @	13,15,42 @	13,15,41 @	13,15,40 @	13,15,39 @	13,15,38 @	13,15,37 @	13,15,36 @	13,15,35 @	13,15,34 @	13,15,33 @	13,15,32 @	13,15,31 @	13,15,30 @	13,15,29 @	13,15,28 @	13,15,27 @	13,15,26 @	13,15,25 @	13,15,24 @	13,15,23 @	13,15,22 @	13,15,21 @	13,15,20 @	13,15,19 @	13,15,18 	13,15,17 
@	14,15,16 @	14,15,15 	14,15,14 
@	15,15,13 @	15,15,12 @	15,15,11 @	15,15,10 @	15,15,9 @	15,15,8 	15,15,7 
	14,15,6 
@	13,15,5 @	13,15,4 @	13,15,3 	13,15,2 
	14,15,1 
	15,15,0 
net11 [14]
	9,2,14 
	9,3,13 
	9,4,12 
	9,5,11 
	9,6,10 
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
net12 [11]
	11,5,13 
	11,6,12 
	11,7,11 
	12,7,10 
	12,8,9 
	12,9,8 
	12,10,7 
	12,11,6 
	12,12,5 
	12,13,4 
	11,13,3 
	10,13,2 
	10,14,1 
	10,15,0 
net13 [11]
	1,2,28 
	2,2,27 
	2,1,26 
	2,0,25 
	3,0,24 
@	4,0,23 @	4,0,22 @	4,0,21 	4,0,20 
	3,0,19 
	2,0,18 
@	1,0,17 @	1,0,16 @	1,0,15 @	1,0,14 @	1,0,13 	1,0,12 
@	2,0,11 @	2,0,10 	2,0,9 
	3,0,8 
	4,0,7 
	5,0,6 
	6,0,5 
	7,0,4 
@	8,0,3 	8,0,2 
	9,0,1 
	10,0,0 
net14 [10]
	5,5,18 
	4,5,17 
	4,6,16 
	4,7,15 
	4,8,14 
@	4,9,13 @	4,9,12 @	4,9,11 @	4,9,10 @	4,9,9 @	4,9,8 @	4,9,7 @	4,9,6 	4,9,5 
	3,9,4 
	2,9,3 
	1,9,2 
	0,9,1 
	0,10,0 
net15 [13]
	0,0,24 
	1,0,23 
	2,0,22 
	2,1,21 
	2,2,20 
	2,3,19 
@	2,4,18 @	2,4,17 	2,4,16 
	2,5,15 
	2,6,14 
	2,7,13 
	2,8,12 
@	2,9,11 	2,9,10 
	1,9,9 
	0,9,8 
	0,10,7 
@	0,9,6 	0,9,5 
	0,10,4 
	0,11,3 
@	0,12,2 	0,12,1 
	0,13,0 
net0 is routed! 19/47
net1 is routed! 19/44
net2 is routed! 21/47
net3 is routed! 16/51
net4 is routed! 13/23
net5 is routed! 23/65
net6 is routed! 11/22
net7 is routed! 15/22
net8 is routed! 13/46
net9 is routed! 15/28
net10 is routed! 17/77
net11 is routed! 14/14
net12 is routed! 11/13
net13 is routed! 11/28
net14 is routed! 10/18
net15 is routed! 13/24
* operation time = 77, total length = 569 cell usage = 110, mode = 1
======================================================
