net5 is completely routable!..0
net1 is completely routable!..0
net10 is completely routable!..0
net12 is completely routable!..0
net14 is completely routable!..3
net8 is completely routable!..3
net7 is completely routable!..3
net15 is completely routable!..3
net9 is completely routable!..3
net0 is completely routable!..3
net2 is completely routable!..4
net4 is completely routable!..4
net11 is completely routable!..4
net6 is completely routable!..4
net3 may be unroutable!
net13 may be unroutable!
runtime = 0.13 sec
Routing...
net3..failed!
net13..failed!
Done!
runtime = 0.19 sec
0)PostRouting...[1000000]
try net3 ...
	dependency on net6 at 245
	net3 is routed! -1=>246
try net13 ...
	dependency on net8 at 75
	net13 is routed! -1=>77
try net5 ...
	net5 is updated! 13=>9
try net1 ...
	net1 is updated! 26=>10
try net10 ...
	dependency on net5 at 0
	net10 is updated! 38=>14
try net12 ...
	net12 is updated! 59=>16
try net14 ...
	net14 is updated! 71=>28
try net8 ...
	net8 is updated! 87=>14
try net7 ...
	dependency on net13 at 67
	net7 is updated! 104=>69
try net15 ...
	dependency on net13 at 65
	net15 is updated! 120=>67
try net9 ...
	dependency on net13 at 74
	net9 is updated! 160=>77
try net0 ...
	dependency on net15 at 65
	net0 is updated! 185=>66
try net2 ...
	dependency on net0 at 15
	net2 is updated! 194=>27
try net4 ...
	dependency on net7 at 67
	net4 is updated! 209=>70
try net11 ...
	dependency on net3 at 169
	net11 is updated! 231=>173
try net6 ...
	dependency on net11 at 67
	net6 is updated! 253=>68
Done!
1)PostRouting...[246]
try net3 ...
	dependency on net11 at 144
	net3 is updated! 246=>145
try net11 ...
	dependency on net7 at 0
	net11 is updated! 173=>86
try net9 ...
	dependency on net13 at 74
try net7 ...
	dependency on net13 at 67
try net4 ...
	dependency on net7 at 67
try net15 ...
	dependency on net13 at 65
try net6 ...
	dependency on net11 at 66
	net6 is updated! 68=>67
try net0 ...
	dependency on net15 at 65
try net13 ...
	dependency on net9 at 72
	net13 is updated! 77=>74
try net12 ...
try net2 ...
	dependency on net0 at 15
try net1 ...
try net5 ...
try net10 ...
	dependency on net8 at 11
	net10 is updated! 14=>13
try net14 ...
	dependency on net9 at 18
try net8 ...
Done!
2)PostRouting...[145]
try net3 ...
	dependency on net11 at 77
	net3 is updated! 145=>78
try net11 ...
	dependency on net7 at 0
	net11 is updated! 86=>84
try net9 ...
	dependency on net13 at 68
	net9 is updated! 77=>69
try net7 ...
	dependency on net9 at 56
	net7 is updated! 69=>58
try net4 ...
	dependency on net7 at 51
	net4 is updated! 70=>59
try net15 ...
	dependency on net7 at 58
	net15 is updated! 67=>60
try net6 ...
	dependency on net11 at 65
try net0 ...
	dependency on net4 at 54
	net0 is updated! 66=>55
try net13 ...
	dependency on net0 at 31
	net13 is updated! 74=>33
try net12 ...
try net2 ...
	dependency on net0 at 14
try net1 ...
try net5 ...
try net10 ...
	dependency on net8 at 11
try net14 ...
try net8 ...
Done!
3)PostRouting...[84]
try net11 ...
	net11 is updated! 84=>37 and 16=>27
try net9 ...
	dependency on net7 at 32
try net3 ...
	dependency on net11 at 28
try net7 ...
	dependency on net9 at 56
	net7 is updated! 58=>58 and 52=>59
try net6 ...
	dependency on net15 at 34
try net4 ...
	dependency on net7 at 51
try net15 ...
	dependency on net7 at 58
	net15 is updated! 60=>60 and 46=>60
try net13 ...
	dependency on net0 at 31
	net13 is updated! 33=>33 and 27=>34
try net0 ...
	dependency on net4 at 54
try net12 ...
	net12 is updated! 16=>16 and 12=>14
try net2 ...
	dependency on net0 at 14
	net2 is updated! 27=>27 and 11=>16
try net1 ...
	net1 is updated! 10=>10 and 10=>11
try net5 ...
try net10 ...
	dependency on net8 at 11
try net14 ...
try net8 ...
Done!
4)PostRouting...[78]
try net9 ...
	dependency on net13 at 29
try net3 ...
	dependency on net11 at 28
try net7 ...
	dependency on net9 at 56
try net6 ...
	dependency on net4 at 29
	dependency on net15 at 29
try net4 ...
	dependency on net7 at 51
	net4 is updated! 59=>52 and 32=>49
try net15 ...
	dependency on net7 at 58
	net15 is updated! 60=>60 and 59=>60
try net13 ...
	dependency on net0 at 31
	net13 is updated! 33=>33 and 29=>32
try net0 ...
	dependency on net15 at 35
try net12 ...
try net2 ...
	dependency on net0 at 14
try net1 ...
try net11 ...
try net5 ...
try net10 ...
	dependency on net8 at 11
try net14 ...
	dependency on net4 at 15
try net8 ...
Done!
5)PostRouting...[78]
try net9 ...
	dependency on net13 at 27
try net3 ...
	dependency on net11 at 28
try net7 ...
	dependency on net9 at 56
try net6 ...
	dependency on net15 at 28
try net15 ...
	dependency on net7 at 58
try net4 ...
	dependency on net7 at 51
try net13 ...
	dependency on net0 at 31
try net0 ...
	dependency on net15 at 35
try net12 ...
try net2 ...
	dependency on net0 at 14
try net1 ...
try net11 ...
try net5 ...
try net10 ...
	dependency on net8 at 11
try net14 ...
	dependency on net4 at 15
try net8 ...
Done!

ORDER
9 -> 3 -> 7 -> 6 -> 15 -> 4 -> 13 -> 0 -> 12 -> 2 -> 1 -> 11 -> 5 -> 10 -> 14 -> 8 -> 
runtimef = 0.75 sec
net0 is routed! 20/55
net0 [20]
	7,12,55 
@	6,12,54 @	6,12,53 @	6,12,52 @	6,12,51 @	6,12,50 @	6,12,49 @	6,12,48 @	6,12,47 @	6,12,46 	6,12,45 
	6,11,44 
	6,10,43 
	5,10,42 
	4,10,41 
	3,10,40 
	2,10,39 
	1,10,38 
	0,10,37 
	0,9,36 
	0,8,35 
	0,7,34 
	0,6,33 
	0,5,32 
	0,4,31 
	0,3,30 
@	0,2,29 	0,2,28 
	1,2,27 
	0,2,26 
	1,2,25 
	2,2,24 
@	3,2,23 @	3,2,22 @	3,2,21 	3,2,20 
	3,1,19 
@	3,0,18 	3,0,17 
	4,0,16 
	5,0,15 
	6,0,14 
@	7,0,13 @	7,0,12 @	7,0,11 @	7,0,10 @	7,0,9 	7,0,8 
	8,0,7 
	9,0,6 
	10,0,5 
	11,0,4 
	12,0,3 
	13,0,2 
	14,0,1 
	15,0,0 
net1 is routed! 10/10
net2 is routed! 8/27
net2 [8]
	8,0,27 
	7,0,26 
	6,0,25 
	5,0,24 
	4,0,23 
	3,0,22 
	2,0,21 
@	1,0,20 @	1,0,19 	1,0,18 
@	0,0,17 	0,0,16 
	0,1,15 
	0,2,14 
	1,2,13 
	1,1,12 
	1,0,11 
	2,0,10 
@	3,0,9 @	3,0,8 @	3,0,7 @	3,0,6 	3,0,5 
	2,0,4 
	1,0,3 
@	0,0,2 @	0,0,1 	0,0,0 
net3 is routed! 20/78
net3 [20]
	14,8,78 
	14,9,77 
	14,10,76 
	14,11,75 
	14,12,74 
	14,13,73 
	14,14,72 
	14,15,71 
@	14,14,70 	14,14,69 
	15,14,68 
@	14,14,67 @	14,14,66 @	14,14,65 @	14,14,64 @	14,14,63 @	14,14,62 @	14,14,61 @	14,14,60 @	14,14,59 @	14,14,58 @	14,14,57 @	14,14,56 @	14,14,55 @	14,14,54 @	14,14,53 @	14,14,52 @	14,14,51 @	14,14,50 @	14,14,49 @	14,14,48 @	14,14,47 @	14,14,46 @	14,14,45 @	14,14,44 @	14,14,43 @	14,14,42 @	14,14,41 @	14,14,40 @	14,14,39 @	14,14,38 @	14,14,37 @	14,14,36 @	14,14,35 @	14,14,34 	14,14,33 
@	14,15,32 @	14,15,31 @	14,15,30 @	14,15,29 @	14,15,28 @	14,15,27 @	14,15,26 @	14,15,25 @	14,15,24 @	14,15,23 @	14,15,22 	14,15,21 
@	13,15,20 @	13,15,19 	13,15,18 
	13,14,17 
	13,13,16 
	13,12,15 
	12,12,14 
	11,12,13 
	10,12,12 
	9,12,11 
	8,12,10 
	7,12,9 
	6,12,8 
	5,12,7 
	4,12,6 
	3,12,5 
	2,12,4 
	1,12,3 
	1,13,2 
	1,14,1 
	1,15,0 
net4 is routed! 14/52
net4 [14]
	9,7,52 
@	8,7,51 	8,7,50 
	7,7,49 
	6,7,48 
@	5,7,47 	5,7,46 
	5,6,45 
@	5,5,44 @	5,5,43 @	5,5,42 @	5,5,41 @	5,5,40 @	5,5,39 @	5,5,38 @	5,5,37 @	5,5,36 @	5,5,35 @	5,5,34 @	5,5,33 @	5,5,32 @	5,5,31 @	5,5,30 @	5,5,29 @	5,5,28 @	5,5,27 	5,5,26 
	5,6,25 
	5,7,24 
	5,8,23 
	5,9,22 
@	5,10,21 	5,10,20 
	6,10,19 
@	6,11,18 	6,11,17 
@	6,12,16 	6,12,15 
@	5,12,14 	5,12,13 
	4,12,12 
	3,12,11 
	2,12,10 
@	1,12,9 	1,12,8 
	1,13,7 
	1,14,6 
@	1,15,5 	1,15,4 
	2,15,3 
	3,15,2 
	4,15,1 
	3,15,0 
net5 is routed! 9/9
net6 is routed! 17/67
net6 [17]
	10,14,67 
	11,14,66 
@	12,14,65 @	12,14,64 	12,14,63 
@	12,13,62 	12,13,61 
	11,13,60 
	10,13,59 
@	11,13,58 @	11,13,57 @	11,13,56 @	11,13,55 @	11,13,54 	11,13,53 
	10,13,52 
@	11,13,51 @	11,13,50 @	11,13,49 @	11,13,48 	11,13,47 
	10,13,46 
	11,13,45 
	10,13,44 
	11,13,43 
	10,13,42 
	11,13,41 
	10,13,40 
@	11,13,39 @	11,13,38 @	11,13,37 @	11,13,36 @	11,13,35 	11,13,34 
	10,13,33 
@	11,13,32 	11,13,31 
	12,13,30 
	13,13,29 
@	14,13,28 	14,13,27 
@	15,13,26 	15,13,25 
	15,12,24 
@	15,11,23 @	15,11,22 @	15,11,21 	15,11,20 
@	15,10,19 	15,10,18 
@	14,10,17 @	14,10,16 @	14,10,15 @	14,10,14 @	14,10,13 @	14,10,12 @	14,10,11 	14,10,10 
@	15,10,9 	15,10,8 
	15,9,7 
	15,8,6 
	15,7,5 
	15,6,4 
	15,5,3 
	15,4,2 
	15,3,1 
	15,2,0 
net7 is routed! 12/58
net7 [12]
	5,8,58 
	5,9,57 
	6,9,56 
	7,9,55 
	8,9,54 
	9,9,53 
@	10,9,52 	10,9,51 
	10,8,50 
@	10,7,49 	10,7,48 
	9,7,47 
	8,7,46 
@	7,7,45 	7,7,44 
	6,7,43 
	5,7,42 
	6,7,41 
	5,7,40 
@	6,7,39 @	6,7,38 	6,7,37 
@	5,7,36 	5,7,35 
	5,8,34 
	5,9,33 
	5,10,32 
	4,10,31 
	3,10,30 
	2,10,29 
	1,10,28 
@	0,10,27 	0,10,26 
	0,9,25 
	0,8,24 
	0,7,23 
	0,6,22 
	0,5,21 
	0,4,20 
	0,3,19 
	0,2,18 
	1,2,17 
	2,2,16 
	3,2,15 
	3,1,14 
@	3,0,13 	3,0,12 
	4,0,11 
@	5,0,10 @	5,0,9 @	5,0,8 @	5,0,7 @	5,0,6 	5,0,5 
	6,0,4 
	7,0,3 
@	8,0,2 	8,0,1 
	9,0,0 
net8 is routed! 11/14
net9 is routed! 15/69
net9 [15]
	3,5,69 
@	4,5,68 @	4,5,67 @	4,5,66 @	4,5,65 @	4,5,64 @	4,5,63 	4,5,62 
	5,5,61 
	4,5,60 
@	5,5,59 @	5,5,58 	5,5,57 
	5,6,56 
	5,7,55 
	5,8,54 
@	5,9,53 	5,9,52 
	6,9,51 
	7,9,50 
	8,9,49 
	9,9,48 
	10,9,47 
	9,9,46 
@	10,9,45 @	10,9,44 @	10,9,43 	10,9,42 
@	10,8,41 	10,8,40 
	9,8,39 
	8,8,38 
	8,9,37 
	8,8,36 
@	8,7,35 	8,7,34 
	7,7,33 
	6,7,32 
	6,8,31 
@	6,9,30 	6,9,29 
	5,9,28 
	6,9,27 
	7,9,26 
	8,9,25 
	7,9,24 
@	8,9,23 	8,9,22 
	8,10,21 
	8,11,20 
	8,12,19 
@	8,13,18 @	8,13,17 	8,13,16 
	9,13,15 
	8,13,14 
@	7,13,13 	7,13,12 
@	7,14,11 @	7,14,10 @	7,14,9 @	7,14,8 @	7,14,7 @	7,14,6 	7,14,5 
	7,15,4 
	7,14,3 
@	7,15,2 	7,15,1 
	8,15,0 
net10 is routed! 11/13
net11 is routed! 15/37
net11 [15]
	11,0,37 
	12,0,36 
	13,0,35 
	14,0,34 
	14,1,33 
	14,2,32 
	14,3,31 
	14,4,30 
	14,5,29 
	14,6,28 
	14,7,27 
	14,8,26 
	13,8,25 
	12,8,24 
	11,8,23 
	10,8,22 
	10,9,21 
	10,10,20 
	10,11,19 
	10,12,18 
	10,13,17 
	11,13,16 
@	11,14,15 @	11,14,14 @	11,14,13 @	11,14,12 @	11,14,11 @	11,14,10 @	11,14,9 @	11,14,8 @	11,14,7 @	11,14,6 @	11,14,5 @	11,14,4 @	11,14,3 @	11,14,2 	11,14,1 
	11,15,0 
net12 is routed! 16/16
net13 is routed! 26/33
net14 is routed! 11/28
net14 [11]
	4,12,28 
	5,12,27 
	6,12,26 
	7,12,25 
	8,12,24 
	9,12,23 
	10,12,22 
	11,12,21 
	12,12,20 
	13,12,19 
	14,12,18 
@	15,12,17 @	15,12,16 @	15,12,15 @	15,12,14 	15,12,13 
	14,12,12 
@	15,12,11 @	15,12,10 @	15,12,9 	15,12,8 
	14,12,7 
	15,12,6 
	14,12,5 
@	15,12,4 @	15,12,3 @	15,12,2 @	15,12,1 	15,12,0 
net15 is routed! 15/60
net15 [15]
	5,10,60 
	4,10,59 
@	3,10,58 @	3,10,57 	3,10,56 
	4,10,55 
@	3,10,54 @	3,10,53 @	3,10,52 	3,10,51 
	4,10,50 
	5,10,49 
	6,10,48 
@	6,9,47 	6,9,46 
	7,9,45 
@	8,9,44 @	8,9,43 	8,9,42 
	7,9,41 
@	6,9,40 	6,9,39 
	5,9,38 
@	6,9,37 	6,9,36 
	6,10,35 
	6,11,34 
@	6,12,33 @	6,12,32 	6,12,31 
	7,12,30 
	7,13,29 
	8,13,28 
	9,13,27 
	10,13,26 
	11,13,25 
	12,13,24 
	13,13,23 
	14,13,22 
@	15,13,21 	15,13,20 
@	15,14,19 @	15,14,18 @	15,14,17 @	15,14,16 @	15,14,15 @	15,14,14 @	15,14,13 @	15,14,12 @	15,14,11 @	15,14,10 @	15,14,9 @	15,14,8 	15,14,7 
	14,14,6 
	15,14,5 
	14,14,4 
@	15,14,3 @	15,14,2 	15,14,1 
	15,15,0 
========================RESULT========================
net0 [20]
	7,12,55 
@	6,12,54 @	6,12,53 @	6,12,52 @	6,12,51 @	6,12,50 @	6,12,49 @	6,12,48 @	6,12,47 @	6,12,46 	6,12,45 
	6,11,44 
	6,10,43 
	5,10,42 
	4,10,41 
	3,10,40 
	2,10,39 
	1,10,38 
	0,10,37 
	0,9,36 
	0,8,35 
	0,7,34 
	0,6,33 
	0,5,32 
	0,4,31 
	0,3,30 
@	0,2,29 	0,2,28 
	1,2,27 
	0,2,26 
	1,2,25 
	2,2,24 
@	3,2,23 @	3,2,22 @	3,2,21 	3,2,20 
	3,1,19 
@	3,0,18 	3,0,17 
	4,0,16 
	5,0,15 
	6,0,14 
@	7,0,13 @	7,0,12 @	7,0,11 @	7,0,10 @	7,0,9 	7,0,8 
	8,0,7 
	9,0,6 
	10,0,5 
	11,0,4 
	12,0,3 
	13,0,2 
	14,0,1 
	15,0,0 
net1 [10]
	7,5,10 
	6,5,9 
	6,4,8 
	6,3,7 
	6,2,6 
	5,2,5 
	4,2,4 
	3,2,3 
	3,1,2 
	3,0,1 
	2,0,0 
net2 [8]
	8,0,27 
	7,0,26 
	6,0,25 
	5,0,24 
	4,0,23 
	3,0,22 
	2,0,21 
@	1,0,20 @	1,0,19 	1,0,18 
@	0,0,17 	0,0,16 
	0,1,15 
	0,2,14 
	1,2,13 
	1,1,12 
	1,0,11 
	2,0,10 
@	3,0,9 @	3,0,8 @	3,0,7 @	3,0,6 	3,0,5 
	2,0,4 
	1,0,3 
@	0,0,2 @	0,0,1 	0,0,0 
net3 [20]
	14,8,78 
	14,9,77 
	14,10,76 
	14,11,75 
	14,12,74 
	14,13,73 
	14,14,72 
	14,15,71 
@	14,14,70 	14,14,69 
	15,14,68 
@	14,14,67 @	14,14,66 @	14,14,65 @	14,14,64 @	14,14,63 @	14,14,62 @	14,14,61 @	14,14,60 @	14,14,59 @	14,14,58 @	14,14,57 @	14,14,56 @	14,14,55 @	14,14,54 @	14,14,53 @	14,14,52 @	14,14,51 @	14,14,50 @	14,14,49 @	14,14,48 @	14,14,47 @	14,14,46 @	14,14,45 @	14,14,44 @	14,14,43 @	14,14,42 @	14,14,41 @	14,14,40 @	14,14,39 @	14,14,38 @	14,14,37 @	14,14,36 @	14,14,35 @	14,14,34 	14,14,33 
@	14,15,32 @	14,15,31 @	14,15,30 @	14,15,29 @	14,15,28 @	14,15,27 @	14,15,26 @	14,15,25 @	14,15,24 @	14,15,23 @	14,15,22 	14,15,21 
@	13,15,20 @	13,15,19 	13,15,18 
	13,14,17 
	13,13,16 
	13,12,15 
	12,12,14 
	11,12,13 
	10,12,12 
	9,12,11 
	8,12,10 
	7,12,9 
	6,12,8 
	5,12,7 
	4,12,6 
	3,12,5 
	2,12,4 
	1,12,3 
	1,13,2 
	1,14,1 
	1,15,0 
net4 [14]
	9,7,52 
@	8,7,51 	8,7,50 
	7,7,49 
	6,7,48 
@	5,7,47 	5,7,46 
	5,6,45 
@	5,5,44 @	5,5,43 @	5,5,42 @	5,5,41 @	5,5,40 @	5,5,39 @	5,5,38 @	5,5,37 @	5,5,36 @	5,5,35 @	5,5,34 @	5,5,33 @	5,5,32 @	5,5,31 @	5,5,30 @	5,5,29 @	5,5,28 @	5,5,27 	5,5,26 
	5,6,25 
	5,7,24 
	5,8,23 
	5,9,22 
@	5,10,21 	5,10,20 
	6,10,19 
@	6,11,18 	6,11,17 
@	6,12,16 	6,12,15 
@	5,12,14 	5,12,13 
	4,12,12 
	3,12,11 
	2,12,10 
@	1,12,9 	1,12,8 
	1,13,7 
	1,14,6 
@	1,15,5 	1,15,4 
	2,15,3 
	3,15,2 
	4,15,1 
	3,15,0 
net5 [9]
	10,5,9 
	9,5,8 
	8,5,7 
	7,5,6 
	6,5,5 
	6,4,4 
	6,3,3 
	6,2,2 
	6,1,1 
	6,0,0 
net6 [17]
	10,14,67 
	11,14,66 
@	12,14,65 @	12,14,64 	12,14,63 
@	12,13,62 	12,13,61 
	11,13,60 
	10,13,59 
@	11,13,58 @	11,13,57 @	11,13,56 @	11,13,55 @	11,13,54 	11,13,53 
	10,13,52 
@	11,13,51 @	11,13,50 @	11,13,49 @	11,13,48 	11,13,47 
	10,13,46 
	11,13,45 
	10,13,44 
	11,13,43 
	10,13,42 
	11,13,41 
	10,13,40 
@	11,13,39 @	11,13,38 @	11,13,37 @	11,13,36 @	11,13,35 	11,13,34 
	10,13,33 
@	11,13,32 	11,13,31 
	12,13,30 
	13,13,29 
@	14,13,28 	14,13,27 
@	15,13,26 	15,13,25 
	15,12,24 
@	15,11,23 @	15,11,22 @	15,11,21 	15,11,20 
@	15,10,19 	15,10,18 
@	14,10,17 @	14,10,16 @	14,10,15 @	14,10,14 @	14,10,13 @	14,10,12 @	14,10,11 	14,10,10 
@	15,10,9 	15,10,8 
	15,9,7 
	15,8,6 
	15,7,5 
	15,6,4 
	15,5,3 
	15,4,2 
	15,3,1 
	15,2,0 
net7 [12]
	5,8,58 
	5,9,57 
	6,9,56 
	7,9,55 
	8,9,54 
	9,9,53 
@	10,9,52 	10,9,51 
	10,8,50 
@	10,7,49 	10,7,48 
	9,7,47 
	8,7,46 
@	7,7,45 	7,7,44 
	6,7,43 
	5,7,42 
	6,7,41 
	5,7,40 
@	6,7,39 @	6,7,38 	6,7,37 
@	5,7,36 	5,7,35 
	5,8,34 
	5,9,33 
	5,10,32 
	4,10,31 
	3,10,30 
	2,10,29 
	1,10,28 
@	0,10,27 	0,10,26 
	0,9,25 
	0,8,24 
	0,7,23 
	0,6,22 
	0,5,21 
	0,4,20 
	0,3,19 
	0,2,18 
	1,2,17 
	2,2,16 
	3,2,15 
	3,1,14 
@	3,0,13 	3,0,12 
	4,0,11 
@	5,0,10 @	5,0,9 @	5,0,8 @	5,0,7 @	5,0,6 	5,0,5 
	6,0,4 
	7,0,3 
@	8,0,2 	8,0,1 
	9,0,0 
net8 [11]
	10,2,14 
	9,2,13 
	8,2,12 
	7,2,11 
	6,2,10 
	5,2,9 
	4,2,8 
	3,2,7 
	2,2,6 
	1,2,5 
@	0,2,4 @	0,2,3 @	0,2,2 	0,2,1 
	0,3,0 
net9 [15]
	3,5,69 
@	4,5,68 @	4,5,67 @	4,5,66 @	4,5,65 @	4,5,64 @	4,5,63 	4,5,62 
	5,5,61 
	4,5,60 
@	5,5,59 @	5,5,58 	5,5,57 
	5,6,56 
	5,7,55 
	5,8,54 
@	5,9,53 	5,9,52 
	6,9,51 
	7,9,50 
	8,9,49 
	9,9,48 
	10,9,47 
	9,9,46 
@	10,9,45 @	10,9,44 @	10,9,43 	10,9,42 
@	10,8,41 	10,8,40 
	9,8,39 
	8,8,38 
	8,9,37 
	8,8,36 
@	8,7,35 	8,7,34 
	7,7,33 
	6,7,32 
	6,8,31 
@	6,9,30 	6,9,29 
	5,9,28 
	6,9,27 
	7,9,26 
	8,9,25 
	7,9,24 
@	8,9,23 	8,9,22 
	8,10,21 
	8,11,20 
	8,12,19 
@	8,13,18 @	8,13,17 	8,13,16 
	9,13,15 
	8,13,14 
@	7,13,13 	7,13,12 
@	7,14,11 @	7,14,10 @	7,14,9 @	7,14,8 @	7,14,7 @	7,14,6 	7,14,5 
	7,15,4 
	7,14,3 
@	7,15,2 	7,15,1 
	8,15,0 
net10 [11]
	5,2,13 
	4,2,12 
	3,2,11 
	2,2,10 
	1,2,9 
	0,2,8 
	0,3,7 
@	0,4,6 @	0,4,5 	0,4,4 
	0,5,3 
	0,6,2 
	0,7,1 
	0,8,0 
net11 [15]
	11,0,37 
	12,0,36 
	13,0,35 
	14,0,34 
	14,1,33 
	14,2,32 
	14,3,31 
	14,4,30 
	14,5,29 
	14,6,28 
	14,7,27 
	14,8,26 
	13,8,25 
	12,8,24 
	11,8,23 
	10,8,22 
	10,9,21 
	10,10,20 
	10,11,19 
	10,12,18 
	10,13,17 
	11,13,16 
@	11,14,15 @	11,14,14 @	11,14,13 @	11,14,12 @	11,14,11 @	11,14,10 @	11,14,9 @	11,14,8 @	11,14,7 @	11,14,6 @	11,14,5 @	11,14,4 @	11,14,3 @	11,14,2 	11,14,1 
	11,15,0 
net12 [16]
	12,6,16 
	12,7,15 
	11,7,14 
	10,7,13 
	9,7,12 
	8,7,11 
	7,7,10 
	6,7,9 
	5,7,8 
	5,8,7 
	5,9,6 
	5,10,5 
	4,10,4 
	3,10,3 
	2,10,2 
	1,10,1 
	0,10,0 
net13 [26]
	0,2,33 
	1,2,32 
@	2,2,31 @	2,2,30 	2,2,29 
	3,2,28 
	3,3,27 
	3,4,26 
@	3,5,25 	3,5,24 
	4,5,23 
	5,5,22 
	5,6,21 
	5,7,20 
	6,7,19 
	7,7,18 
@	8,7,17 	8,7,16 
	8,8,15 
	8,9,14 
@	9,9,13 	9,9,12 
@	10,9,11 	10,9,10 
	10,10,9 
	10,11,8 
@	10,12,7 	10,12,6 
	11,12,5 
	12,12,4 
	13,12,3 
	13,13,2 
	13,14,1 
	13,15,0 
net14 [11]
	4,12,28 
	5,12,27 
	6,12,26 
	7,12,25 
	8,12,24 
	9,12,23 
	10,12,22 
	11,12,21 
	12,12,20 
	13,12,19 
	14,12,18 
@	15,12,17 @	15,12,16 @	15,12,15 @	15,12,14 	15,12,13 
	14,12,12 
@	15,12,11 @	15,12,10 @	15,12,9 	15,12,8 
	14,12,7 
	15,12,6 
	14,12,5 
@	15,12,4 @	15,12,3 @	15,12,2 @	15,12,1 	15,12,0 
net15 [15]
	5,10,60 
	4,10,59 
@	3,10,58 @	3,10,57 	3,10,56 
	4,10,55 
@	3,10,54 @	3,10,53 @	3,10,52 	3,10,51 
	4,10,50 
	5,10,49 
	6,10,48 
@	6,9,47 	6,9,46 
	7,9,45 
@	8,9,44 @	8,9,43 	8,9,42 
	7,9,41 
@	6,9,40 	6,9,39 
	5,9,38 
@	6,9,37 	6,9,36 
	6,10,35 
	6,11,34 
@	6,12,33 @	6,12,32 	6,12,31 
	7,12,30 
	7,13,29 
	8,13,28 
	9,13,27 
	10,13,26 
	11,13,25 
	12,13,24 
	13,13,23 
	14,13,22 
@	15,13,21 	15,13,20 
@	15,14,19 @	15,14,18 @	15,14,17 @	15,14,16 @	15,14,15 @	15,14,14 @	15,14,13 @	15,14,12 @	15,14,11 @	15,14,10 @	15,14,9 @	15,14,8 	15,14,7 
	14,14,6 
	15,14,5 
	14,14,4 
@	15,14,3 @	15,14,2 	15,14,1 
	15,15,0 
net0 is routed! 20/55
net1 is routed! 10/10
net2 is routed! 8/27
net3 is routed! 20/78
net4 is routed! 14/52
net5 is routed! 9/9
net6 is routed! 17/67
net7 is routed! 12/58
net8 is routed! 11/14
net9 is routed! 15/69
net10 is routed! 11/13
net11 is routed! 15/37
net12 is routed! 16/16
net13 is routed! 26/33
net14 is routed! 11/28
net15 is routed! 15/60
* operation time = 78, total length = 626 cell usage = 118, mode = 1
======================================================