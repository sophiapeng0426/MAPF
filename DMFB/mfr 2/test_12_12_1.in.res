net6 is completely routable!..0
net4 is completely routable!..3
net9 is completely routable!..3
net5 is completely routable!..4
net2 is completely routable!..4
net1 is completely routable!..4
net10 is completely routable!..4
net0 may be unroutable!
net3 may be unroutable!
net7 may be unroutable!
net8 may be unroutable!
net11 may be unroutable!
runtime = 0.04 sec
Routing...
net3..succeed!
	dependency on net3 at 104
net0..succeed!
net7..failed!
net8..succeed!
net11..succeed!
	dependency on net11 at 105
net7..failed!
Done!
runtime = 0.05 sec
0)PostRouting...[1000000]
try net7 ...
	dependency on net11 at 105
ripup net11 ...
	dependency on net8 at 97
	dependency on net1 at 56
try net6 ...
try net4 ...
	dependency on net11 at 8
	net4 is updated! 18=>11
try net9 ...
	dependency on net11 at 28
try net5 ...
	dependency on net4 at 7
	net5 is updated! 37=>10
try net2 ...
	dependency on net9 at 28
try net1 ...
	dependency on net11 at 26
	net1 is updated! 60=>28
try net10 ...
	net10 is updated! 74=>59
try net3 ...
	dependency on net7 at 98
	net3 is updated! 115=>100
try net0 ...
	dependency on net3 at 87
	net0 is updated! 110=>88
try net8 ...
	dependency on net10 at 59
	net8 is updated! 98=>61
try net11 ...
	dependency on net0 at 18
	net11 is updated! 57=>19
Done!
1)PostRouting...[100]
try net3 ...
	dependency on net7 at 98
	net3 is updated! 100=>100 and 20=>95
try net7 ...
	dependency on net8 at 60
	net7 is updated! 98=>96 and 96=>97
try net0 ...
	dependency on net9 at 24
try net10 ...
try net2 ...
	dependency on net0 at 46
try net8 ...
	dependency on net10 at 59
	net8 is updated! 61=>61 and 29=>58
try net9 ...
	dependency on net0 at 21
try net6 ...
try net1 ...
try net11 ...
	dependency on net0 at 18
	net11 is updated! 19=>19 and 14=>15
try net4 ...
	net4 is updated! 11=>11 and 7=>9
try net5 ...
Done!
2)PostRouting...[100]
try net3 ...
	dependency on net7 at 96
try net7 ...
	dependency on net8 at 60
try net0 ...
	dependency on net9 at 24
try net10 ...
try net2 ...
	dependency on net0 at 46
try net8 ...
	dependency on net10 at 59
try net9 ...
	dependency on net0 at 21
try net6 ...
try net1 ...
try net11 ...
	dependency on net0 at 18
try net4 ...
try net5 ...
Done!

ORDER
3 -> 7 -> 0 -> 10 -> 2 -> 8 -> 9 -> 6 -> 1 -> 11 -> 4 -> 5 -> 
runtimef = 0.18 sec
net0 is routed! 14/88
net0 [14]
	9,5,88 
@	8,5,87 @	8,5,86 @	8,5,85 @	8,5,84 @	8,5,83 @	8,5,82 @	8,5,81 @	8,5,80 @	8,5,79 	8,5,78 
	9,5,77 
	8,5,76 
	9,5,75 
@	8,5,74 @	8,5,73 @	8,5,72 	8,5,71 
	9,5,70 
	8,5,69 
	9,5,68 
@	8,5,67 @	8,5,66 	8,5,65 
	9,5,64 
@	8,5,63 @	8,5,62 	8,5,61 
	9,5,60 
@	8,5,59 @	8,5,58 @	8,5,57 @	8,5,56 @	8,5,55 	8,5,54 
	9,5,53 
	8,5,52 
	9,5,51 
@	8,5,50 @	8,5,49 	8,5,48 
	9,5,47 
	8,5,46 
	7,5,45 
	7,4,44 
	7,5,43 
	7,4,42 
	7,3,41 
	6,3,40 
	5,3,39 
	6,3,38 
	5,3,37 
	6,3,36 
@	5,3,35 @	5,3,34 @	5,3,33 @	5,3,32 @	5,3,31 	5,3,30 
@	5,2,29 @	5,2,28 	5,2,27 
	6,2,26 
@	5,2,25 	5,2,24 
	5,3,23 
	5,4,22 
	4,4,21 
	3,4,20 
@	2,4,19 	2,4,18 
	2,5,17 
@	2,6,16 @	2,6,15 @	2,6,14 @	2,6,13 @	2,6,12 @	2,6,11 @	2,6,10 @	2,6,9 	2,6,8 
	2,5,7 
	2,4,6 
	2,3,5 
	1,3,4 
	0,3,3 
	0,2,2 
	0,1,1 
	0,0,0 
net1 is routed! 11/28
net1 [11]
	2,2,28 
	1,2,27 
@	0,2,26 @	0,2,25 @	0,2,24 	0,2,23 
	1,2,22 
@	2,2,21 @	2,2,20 @	2,2,19 @	2,2,18 @	2,2,17 @	2,2,16 @	2,2,15 @	2,2,14 	2,2,13 
	1,2,12 
@	0,2,11 @	0,2,10 	0,2,9 
	0,3,8 
	0,4,7 
	0,5,6 
	0,6,5 
	0,7,4 
	0,8,3 
	0,9,2 
	0,10,1 
	0,11,0 
net2 is routed! 10/48
net2 [10]
	6,5,48 
	6,6,47 
	6,7,46 
	6,8,45 
	6,9,44 
	6,10,43 
	5,10,42 
	4,10,41 
	3,10,40 
	2,10,39 
@	2,11,38 @	2,11,37 @	2,11,36 @	2,11,35 @	2,11,34 @	2,11,33 @	2,11,32 @	2,11,31 @	2,11,30 @	2,11,29 @	2,11,28 @	2,11,27 @	2,11,26 @	2,11,25 @	2,11,24 @	2,11,23 @	2,11,22 @	2,11,21 @	2,11,20 @	2,11,19 @	2,11,18 @	2,11,17 @	2,11,16 @	2,11,15 @	2,11,14 @	2,11,13 @	2,11,12 @	2,11,11 @	2,11,10 @	2,11,9 @	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net3 is routed! 12/100
net3 [12]
	4,10,100 
	4,11,99 
	5,11,98 
	6,11,97 
	7,11,96 
	8,11,95 
@	9,11,94 @	9,11,93 	9,11,92 
	8,11,91 
	7,11,90 
	6,11,89 
	5,11,88 
	4,11,87 
@	5,11,86 @	5,11,85 @	5,11,84 	5,11,83 
	4,11,82 
	5,11,81 
	4,11,80 
	5,11,79 
	4,11,78 
@	5,11,77 @	5,11,76 @	5,11,75 	5,11,74 
	4,11,73 
@	5,11,72 	5,11,71 
	4,11,70 
	5,11,69 
	4,11,68 
@	5,11,67 @	5,11,66 	5,11,65 
	4,11,64 
@	5,11,63 	5,11,62 
	4,11,61 
	5,11,60 
	6,11,59 
	7,11,58 
	8,11,57 
	9,11,56 
	10,11,55 
@	11,11,54 	11,11,53 
	11,10,52 
@	11,9,51 @	11,9,50 	11,9,49 
	11,8,48 
@	11,7,47 @	11,7,46 @	11,7,45 @	11,7,44 @	11,7,43 @	11,7,42 @	11,7,41 @	11,7,40 @	11,7,39 @	11,7,38 @	11,7,37 @	11,7,36 @	11,7,35 @	11,7,34 @	11,7,33 @	11,7,32 	11,7,31 
	11,6,30 
	11,5,29 
	11,4,28 
	11,3,27 
@	11,2,26 	11,2,25 
	10,2,24 
	9,2,23 
	8,2,22 
	7,2,21 
	6,2,20 
	5,2,19 
	5,1,18 
	5,2,17 
@	5,1,16 @	5,1,15 @	5,1,14 @	5,1,13 @	5,1,12 @	5,1,11 @	5,1,10 @	5,1,9 	5,1,8 
@	5,0,7 	5,0,6 
	4,0,5 
@	3,0,4 @	3,0,3 @	3,0,2 	3,0,1 
	2,0,0 
net4 is routed! 8/11
net5 is routed! 6/10
net6 is routed! 9/9
net7 is routed! 16/96
net7 [16]
	2,10,96 
	3,10,95 
	4,10,94 
	5,10,93 
	6,10,92 
	6,9,91 
	6,8,90 
	6,9,89 
@	6,8,88 @	6,8,87 @	6,8,86 @	6,8,85 @	6,8,84 @	6,8,83 @	6,8,82 @	6,8,81 @	6,8,80 @	6,8,79 @	6,8,78 @	6,8,77 @	6,8,76 @	6,8,75 @	6,8,74 @	6,8,73 @	6,8,72 @	6,8,71 @	6,8,70 @	6,8,69 @	6,8,68 @	6,8,67 @	6,8,66 @	6,8,65 @	6,8,64 @	6,8,63 @	6,8,62 @	6,8,61 @	6,8,60 @	6,8,59 @	6,8,58 @	6,8,57 @	6,8,56 @	6,8,55 @	6,8,54 @	6,8,53 @	6,8,52 @	6,8,51 @	6,8,50 	6,8,49 
	6,9,48 
	6,10,47 
	6,11,46 
	7,11,45 
@	8,11,44 @	8,11,43 	8,11,42 
	7,11,41 
	6,11,40 
	5,11,39 
@	4,11,38 	4,11,37 
	5,11,36 
@	6,11,35 	6,11,34 
	6,10,33 
	6,9,32 
@	6,8,31 @	6,8,30 @	6,8,29 @	6,8,28 @	6,8,27 @	6,8,26 @	6,8,25 @	6,8,24 @	6,8,23 @	6,8,22 @	6,8,21 	6,8,20 
	6,7,19 
	6,6,18 
	6,5,17 
	6,4,16 
@	6,3,15 	6,3,14 
@	7,3,13 	7,3,12 
@	7,2,11 @	7,2,10 @	7,2,9 @	7,2,8 @	7,2,7 	7,2,6 
	8,2,5 
	9,2,4 
	10,2,3 
@	11,2,2 	11,2,1 
	11,3,0 
net8 is routed! 19/61
net8 [19]
	0,10,61 
	0,11,60 
	1,11,59 
	2,11,58 
	3,11,57 
	4,11,56 
	5,11,55 
	6,11,54 
	7,11,53 
	8,11,52 
	9,11,51 
	10,11,50 
@	11,11,49 	11,11,48 
	11,10,47 
@	11,9,46 @	11,9,45 @	11,9,44 @	11,9,43 @	11,9,42 @	11,9,41 @	11,9,40 @	11,9,39 @	11,9,38 @	11,9,37 @	11,9,36 @	11,9,35 @	11,9,34 @	11,9,33 @	11,9,32 @	11,9,31 @	11,9,30 @	11,9,29 	11,9,28 
	11,8,27 
	11,7,26 
	11,6,25 
	11,5,24 
	11,4,23 
	11,3,22 
	11,2,21 
	10,2,20 
	9,2,19 
	8,2,18 
	7,2,17 
	7,1,16 
@	7,0,15 @	7,0,14 @	7,0,13 @	7,0,12 @	7,0,11 @	7,0,10 @	7,0,9 @	7,0,8 @	7,0,7 @	7,0,6 @	7,0,5 @	7,0,4 	7,0,3 
	8,0,2 
@	9,0,1 	9,0,0 
net9 is routed! 11/30
net9 [11]
	2,4,30 
	3,4,29 
	4,4,28 
	5,4,27 
	6,4,26 
	6,5,25 
	7,5,24 
	8,5,23 
	9,5,22 
	10,5,21 
	11,5,20 
@	11,6,19 @	11,6,18 @	11,6,17 @	11,6,16 @	11,6,15 @	11,6,14 @	11,6,13 @	11,6,12 @	11,6,11 @	11,6,10 @	11,6,9 @	11,6,8 @	11,6,7 @	11,6,6 @	11,6,5 @	11,6,4 @	11,6,3 @	11,6,2 @	11,6,1 	11,6,0 
net10 is routed! 13/59
net10 [13]
	0,8,59 
	0,9,58 
	0,10,57 
	0,11,56 
	1,11,55 
	2,11,54 
	3,11,53 
	4,11,52 
	5,11,51 
	6,11,50 
	7,11,49 
	8,11,48 
@	9,11,47 	9,11,46 
@	10,11,45 @	10,11,44 @	10,11,43 @	10,11,42 	10,11,41 
@	9,11,40 	9,11,39 
	8,11,38 
@	9,11,37 @	9,11,36 @	9,11,35 @	9,11,34 	9,11,33 
	8,11,32 
	7,11,31 
	6,11,30 
	5,11,29 
@	4,11,28 @	4,11,27 @	4,11,26 @	4,11,25 @	4,11,24 @	4,11,23 @	4,11,22 @	4,11,21 @	4,11,20 @	4,11,19 @	4,11,18 @	4,11,17 @	4,11,16 @	4,11,15 @	4,11,14 @	4,11,13 @	4,11,12 	4,11,11 
	5,11,10 
@	6,11,9 @	6,11,8 @	6,11,7 @	6,11,6 	6,11,5 
	7,11,4 
@	8,11,3 	8,11,2 
	9,11,1 
	10,11,0 
net11 is routed! 13/19
========================RESULT========================
net0 [14]
	9,5,88 
@	8,5,87 @	8,5,86 @	8,5,85 @	8,5,84 @	8,5,83 @	8,5,82 @	8,5,81 @	8,5,80 @	8,5,79 	8,5,78 
	9,5,77 
	8,5,76 
	9,5,75 
@	8,5,74 @	8,5,73 @	8,5,72 	8,5,71 
	9,5,70 
	8,5,69 
	9,5,68 
@	8,5,67 @	8,5,66 	8,5,65 
	9,5,64 
@	8,5,63 @	8,5,62 	8,5,61 
	9,5,60 
@	8,5,59 @	8,5,58 @	8,5,57 @	8,5,56 @	8,5,55 	8,5,54 
	9,5,53 
	8,5,52 
	9,5,51 
@	8,5,50 @	8,5,49 	8,5,48 
	9,5,47 
	8,5,46 
	7,5,45 
	7,4,44 
	7,5,43 
	7,4,42 
	7,3,41 
	6,3,40 
	5,3,39 
	6,3,38 
	5,3,37 
	6,3,36 
@	5,3,35 @	5,3,34 @	5,3,33 @	5,3,32 @	5,3,31 	5,3,30 
@	5,2,29 @	5,2,28 	5,2,27 
	6,2,26 
@	5,2,25 	5,2,24 
	5,3,23 
	5,4,22 
	4,4,21 
	3,4,20 
@	2,4,19 	2,4,18 
	2,5,17 
@	2,6,16 @	2,6,15 @	2,6,14 @	2,6,13 @	2,6,12 @	2,6,11 @	2,6,10 @	2,6,9 	2,6,8 
	2,5,7 
	2,4,6 
	2,3,5 
	1,3,4 
	0,3,3 
	0,2,2 
	0,1,1 
	0,0,0 
net1 [11]
	2,2,28 
	1,2,27 
@	0,2,26 @	0,2,25 @	0,2,24 	0,2,23 
	1,2,22 
@	2,2,21 @	2,2,20 @	2,2,19 @	2,2,18 @	2,2,17 @	2,2,16 @	2,2,15 @	2,2,14 	2,2,13 
	1,2,12 
@	0,2,11 @	0,2,10 	0,2,9 
	0,3,8 
	0,4,7 
	0,5,6 
	0,6,5 
	0,7,4 
	0,8,3 
	0,9,2 
	0,10,1 
	0,11,0 
net2 [10]
	6,5,48 
	6,6,47 
	6,7,46 
	6,8,45 
	6,9,44 
	6,10,43 
	5,10,42 
	4,10,41 
	3,10,40 
	2,10,39 
@	2,11,38 @	2,11,37 @	2,11,36 @	2,11,35 @	2,11,34 @	2,11,33 @	2,11,32 @	2,11,31 @	2,11,30 @	2,11,29 @	2,11,28 @	2,11,27 @	2,11,26 @	2,11,25 @	2,11,24 @	2,11,23 @	2,11,22 @	2,11,21 @	2,11,20 @	2,11,19 @	2,11,18 @	2,11,17 @	2,11,16 @	2,11,15 @	2,11,14 @	2,11,13 @	2,11,12 @	2,11,11 @	2,11,10 @	2,11,9 @	2,11,8 @	2,11,7 @	2,11,6 @	2,11,5 @	2,11,4 @	2,11,3 @	2,11,2 @	2,11,1 	2,11,0 
net3 [12]
	4,10,100 
	4,11,99 
	5,11,98 
	6,11,97 
	7,11,96 
	8,11,95 
@	9,11,94 @	9,11,93 	9,11,92 
	8,11,91 
	7,11,90 
	6,11,89 
	5,11,88 
	4,11,87 
@	5,11,86 @	5,11,85 @	5,11,84 	5,11,83 
	4,11,82 
	5,11,81 
	4,11,80 
	5,11,79 
	4,11,78 
@	5,11,77 @	5,11,76 @	5,11,75 	5,11,74 
	4,11,73 
@	5,11,72 	5,11,71 
	4,11,70 
	5,11,69 
	4,11,68 
@	5,11,67 @	5,11,66 	5,11,65 
	4,11,64 
@	5,11,63 	5,11,62 
	4,11,61 
	5,11,60 
	6,11,59 
	7,11,58 
	8,11,57 
	9,11,56 
	10,11,55 
@	11,11,54 	11,11,53 
	11,10,52 
@	11,9,51 @	11,9,50 	11,9,49 
	11,8,48 
@	11,7,47 @	11,7,46 @	11,7,45 @	11,7,44 @	11,7,43 @	11,7,42 @	11,7,41 @	11,7,40 @	11,7,39 @	11,7,38 @	11,7,37 @	11,7,36 @	11,7,35 @	11,7,34 @	11,7,33 @	11,7,32 	11,7,31 
	11,6,30 
	11,5,29 
	11,4,28 
	11,3,27 
@	11,2,26 	11,2,25 
	10,2,24 
	9,2,23 
	8,2,22 
	7,2,21 
	6,2,20 
	5,2,19 
	5,1,18 
	5,2,17 
@	5,1,16 @	5,1,15 @	5,1,14 @	5,1,13 @	5,1,12 @	5,1,11 @	5,1,10 @	5,1,9 	5,1,8 
@	5,0,7 	5,0,6 
	4,0,5 
@	3,0,4 @	3,0,3 @	3,0,2 	3,0,1 
	2,0,0 
net4 [8]
	8,7,11 
	7,7,10 
	7,8,9 
	7,9,8 
@	6,9,7 @	6,9,6 	6,9,5 
	5,9,4 
@	4,9,3 	4,9,2 
	4,10,1 
	4,11,0 
net5 [6]
	4,8,10 
	4,9,9 
	4,10,8 
@	4,11,7 @	4,11,6 @	4,11,5 	4,11,4 
	5,11,3 
@	6,11,2 	6,11,1 
	7,11,0 
net6 [9]
	4,6,9 
	4,5,8 
	4,4,7 
	5,4,6 
	5,3,5 
	5,2,4 
	5,1,3 
	5,0,2 
	6,0,1 
	7,0,0 
net7 [16]
	2,10,96 
	3,10,95 
	4,10,94 
	5,10,93 
	6,10,92 
	6,9,91 
	6,8,90 
	6,9,89 
@	6,8,88 @	6,8,87 @	6,8,86 @	6,8,85 @	6,8,84 @	6,8,83 @	6,8,82 @	6,8,81 @	6,8,80 @	6,8,79 @	6,8,78 @	6,8,77 @	6,8,76 @	6,8,75 @	6,8,74 @	6,8,73 @	6,8,72 @	6,8,71 @	6,8,70 @	6,8,69 @	6,8,68 @	6,8,67 @	6,8,66 @	6,8,65 @	6,8,64 @	6,8,63 @	6,8,62 @	6,8,61 @	6,8,60 @	6,8,59 @	6,8,58 @	6,8,57 @	6,8,56 @	6,8,55 @	6,8,54 @	6,8,53 @	6,8,52 @	6,8,51 @	6,8,50 	6,8,49 
	6,9,48 
	6,10,47 
	6,11,46 
	7,11,45 
@	8,11,44 @	8,11,43 	8,11,42 
	7,11,41 
	6,11,40 
	5,11,39 
@	4,11,38 	4,11,37 
	5,11,36 
@	6,11,35 	6,11,34 
	6,10,33 
	6,9,32 
@	6,8,31 @	6,8,30 @	6,8,29 @	6,8,28 @	6,8,27 @	6,8,26 @	6,8,25 @	6,8,24 @	6,8,23 @	6,8,22 @	6,8,21 	6,8,20 
	6,7,19 
	6,6,18 
	6,5,17 
	6,4,16 
@	6,3,15 	6,3,14 
@	7,3,13 	7,3,12 
@	7,2,11 @	7,2,10 @	7,2,9 @	7,2,8 @	7,2,7 	7,2,6 
	8,2,5 
	9,2,4 
	10,2,3 
@	11,2,2 	11,2,1 
	11,3,0 
net8 [19]
	0,10,61 
	0,11,60 
	1,11,59 
	2,11,58 
	3,11,57 
	4,11,56 
	5,11,55 
	6,11,54 
	7,11,53 
	8,11,52 
	9,11,51 
	10,11,50 
@	11,11,49 	11,11,48 
	11,10,47 
@	11,9,46 @	11,9,45 @	11,9,44 @	11,9,43 @	11,9,42 @	11,9,41 @	11,9,40 @	11,9,39 @	11,9,38 @	11,9,37 @	11,9,36 @	11,9,35 @	11,9,34 @	11,9,33 @	11,9,32 @	11,9,31 @	11,9,30 @	11,9,29 	11,9,28 
	11,8,27 
	11,7,26 
	11,6,25 
	11,5,24 
	11,4,23 
	11,3,22 
	11,2,21 
	10,2,20 
	9,2,19 
	8,2,18 
	7,2,17 
	7,1,16 
@	7,0,15 @	7,0,14 @	7,0,13 @	7,0,12 @	7,0,11 @	7,0,10 @	7,0,9 @	7,0,8 @	7,0,7 @	7,0,6 @	7,0,5 @	7,0,4 	7,0,3 
	8,0,2 
@	9,0,1 	9,0,0 
net9 [11]
	2,4,30 
	3,4,29 
	4,4,28 
	5,4,27 
	6,4,26 
	6,5,25 
	7,5,24 
	8,5,23 
	9,5,22 
	10,5,21 
	11,5,20 
@	11,6,19 @	11,6,18 @	11,6,17 @	11,6,16 @	11,6,15 @	11,6,14 @	11,6,13 @	11,6,12 @	11,6,11 @	11,6,10 @	11,6,9 @	11,6,8 @	11,6,7 @	11,6,6 @	11,6,5 @	11,6,4 @	11,6,3 @	11,6,2 @	11,6,1 	11,6,0 
net10 [13]
	0,8,59 
	0,9,58 
	0,10,57 
	0,11,56 
	1,11,55 
	2,11,54 
	3,11,53 
	4,11,52 
	5,11,51 
	6,11,50 
	7,11,49 
	8,11,48 
@	9,11,47 	9,11,46 
@	10,11,45 @	10,11,44 @	10,11,43 @	10,11,42 	10,11,41 
@	9,11,40 	9,11,39 
	8,11,38 
@	9,11,37 @	9,11,36 @	9,11,35 @	9,11,34 	9,11,33 
	8,11,32 
	7,11,31 
	6,11,30 
	5,11,29 
@	4,11,28 @	4,11,27 @	4,11,26 @	4,11,25 @	4,11,24 @	4,11,23 @	4,11,22 @	4,11,21 @	4,11,20 @	4,11,19 @	4,11,18 @	4,11,17 @	4,11,16 @	4,11,15 @	4,11,14 @	4,11,13 @	4,11,12 	4,11,11 
	5,11,10 
@	6,11,9 @	6,11,8 @	6,11,7 @	6,11,6 	6,11,5 
	7,11,4 
@	8,11,3 	8,11,2 
	9,11,1 
	10,11,0 
net11 [13]
	1,6,19 
	0,6,18 
	0,5,17 
	0,4,16 
	1,4,15 
	2,4,14 
	3,4,13 
	4,4,12 
	5,4,11 
	6,4,10 
	6,5,9 
	6,6,8 
	6,7,7 
	7,7,6 
	8,7,5 
	9,7,4 
	9,8,3 
	10,8,2 
	11,8,1 
	11,9,0 
net0 is routed! 14/88
net1 is routed! 11/28
net2 is routed! 10/48
net3 is routed! 12/100
net4 is routed! 8/11
net5 is routed! 6/10
net6 is routed! 9/9
net7 is routed! 16/96
net8 is routed! 19/61
net9 is routed! 11/30
net10 is routed! 13/59
net11 is routed! 13/19
* operation time = 100, total length = 559 cell usage = 67, mode = 1
======================================================
