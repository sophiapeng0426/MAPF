net1 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[23]
try net1 ...
try net0 ...
	net0 is updated! 23=>16
Done!
1)PostRouting...[16]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 12/16
net1 is routed! 10/10
========================RESULT========================
net0 [12]
	4,6,16 
	5,6,15 
	6,6,14 
	7,6,13 
	8,6,12 
	9,6,11 
	10,6,10 
	11,6,9 
	11,7,8 
	11,8,7 
	11,9,6 
	11,10,5 
	11,11,4 
	11,12,3 
	11,13,2 
	10,13,1 
	9,13,0 
net1 [10]
	4,10,10 
	5,10,9 
	6,10,8 
	6,9,7 
	7,9,6 
	8,9,5 
	9,9,4 
	10,9,3 
	11,9,2 
	12,9,1 
	13,9,0 
net0 is routed! 12/16
net1 is routed! 10/10
* operation time = 16, total length = 26 cell usage = 23, mode = 1
======================================================
net0 is completely routable!..3
Routing...
Done!
0)PostRouting...[4]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 4/4
========================RESULT========================
net0 [4]
	11,0,4 
	11,1,3 
	11,2,2 
	11,3,1 
	11,4,0 
net0 is routed! 4/4
* operation time = 4, total length = 4 cell usage = 3, mode = 1
======================================================
net0 is completely routable!..-1
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
	6,0,12 
	6,1,11 
	6,2,10 
	6,3,9 
	6,4,8 
	6,5,7 
	5,5,6 
	4,5,5 
	3,5,4 
	2,5,3 
	2,6,2 
	2,7,1 
	2,8,0 
net0 is routed! 12/12
* operation time = 12, total length = 12 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..0
net1 is completely routable!..3
Routing...
Done!
0)PostRouting...[5]
try net0 ...
	dependency on net0 at 1
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 1/1
net1 is routed! 3/5
========================RESULT========================
net0 [1]
	4,10,1 
	4,11,0 
net1 [3]
	0,6,5 
	0,5,4 
	0,4,3 
@	0,3,2 @	0,3,1 	0,3,0 
net0 is routed! 1/1
net1 is routed! 3/5
* operation time = 5, total length = 6 cell usage = 2, mode = 1
======================================================
net1 is completely routable!..-1
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
net0 is routed! 9/15
net1 is routed! 5/5
========================RESULT========================
net0 [9]
	11,4,15 
	10,4,14 
	9,4,13 
	8,4,12 
	7,4,11 
	6,4,10 
	5,4,9 
	4,4,8 
	4,5,7 
@	4,6,6 @	4,6,5 @	4,6,4 @	4,6,3 @	4,6,2 @	4,6,1 	4,6,0 
net1 [5]
	6,0,5 
	7,0,4 
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net0 is routed! 9/15
net1 is routed! 5/5
* operation time = 15, total length = 20 cell usage = 12, mode = 1
======================================================
net0 is completely routable!..-1
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
	6,0,12 
	5,0,11 
	4,0,10 
	3,0,9 
	2,0,8 
	2,1,7 
	2,2,6 
	2,3,5 
	2,4,4 
	2,5,3 
	2,6,2 
	2,7,1 
	2,8,0 
net0 is routed! 12/12
* operation time = 12, total length = 12 cell usage = 11, mode = 1
======================================================
net0 is completely routable!..-1
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
	6,0,5 
	7,0,4 
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net0 is routed! 5/5
* operation time = 5, total length = 5 cell usage = 4, mode = 1
======================================================
net1 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[18]
try net1 ...
try net0 ...
Done!

ORDER
1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 6/18
net0 [6]
	2,13,18 
	2,12,17 
	2,11,16 
	2,10,15 
	2,9,14 
	1,9,13 
@	0,9,12 @	0,9,11 @	0,9,10 @	0,9,9 @	0,9,8 @	0,9,7 @	0,9,6 @	0,9,5 @	0,9,4 @	0,9,3 @	0,9,2 @	0,9,1 	0,9,0 
--- continued
	2,9,14 
@	2,10,13 @	2,10,12 @	2,10,11 @	2,10,10 @	2,10,9 	2,10,8 
	1,10,7 
@	0,10,6 	0,10,5 
	1,10,4 
@	2,10,3 	2,10,2 
	3,10,1 
	4,10,0 
net1 is routed! 11/11
========================RESULT========================
net0 [6]
	2,13,18 
	2,12,17 
	2,11,16 
	2,10,15 
	2,9,14 
	1,9,13 
@	0,9,12 @	0,9,11 @	0,9,10 @	0,9,9 @	0,9,8 @	0,9,7 @	0,9,6 @	0,9,5 @	0,9,4 @	0,9,3 @	0,9,2 @	0,9,1 	0,9,0 
--- continued
	2,9,14 
@	2,10,13 @	2,10,12 @	2,10,11 @	2,10,10 @	2,10,9 	2,10,8 
	1,10,7 
@	0,10,6 	0,10,5 
	1,10,4 
@	2,10,3 	2,10,2 
	3,10,1 
	4,10,0 
net1 [11]
	4,2,11 
	4,3,10 
	4,4,9 
	5,4,8 
	6,4,7 
	7,4,6 
	8,4,5 
	9,4,4 
	10,4,3 
	11,4,2 
	12,4,1 
	13,4,0 
net0 is routed! 6/18
net1 is routed! 11/11
* operation time = 18, total length = 29 cell usage = 15, mode = 1
======================================================
net2 is completely routable!..0
net3 is completely routable!..0
net1 is completely routable!..0
net4 is completely routable!..0
net0 is completely routable!..4
Routing...
Done!
0)PostRouting...[62]
try net2 ...
try net3 ...
	net3 is updated! 20=>12
try net1 ...
	net1 is updated! 33=>12
try net4 ...
	net4 is updated! 49=>15
try net0 ...
	net0 is updated! 62=>17
Done!
1)PostRouting...[23]
try net4 ...
try net3 ...
try net1 ...
try net2 ...
try net0 ...
Done!
2)PostRouting...[23]
try net4 ...
ripup net0 ...
ripup net1 ...
ripup net2 ...
ripup net3 ...
	dependency on net1 at 12
try net3 ...
try net1 ...
try net2 ...
	dependency on net1 at 12
try net0 ...
Done!
3)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
4)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
5)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
6)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
7)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
8)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
9)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
10)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
11)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
12)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
13)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
14)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
15)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
16)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
17)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
18)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
19)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
20)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
21)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
22)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
23)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
24)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
25)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
26)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
27)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
28)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
29)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
30)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
31)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
32)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
33)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
34)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
35)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
36)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
37)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
38)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
39)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
40)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
41)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
42)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
43)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
44)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
45)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
46)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
47)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
48)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
49)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
50)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
51)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
52)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
53)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
54)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
55)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
56)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
57)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
58)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
59)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
60)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
61)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
62)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
63)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
64)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
65)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
66)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
67)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
68)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
69)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
70)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
71)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
72)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
73)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
74)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
75)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
76)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
77)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
78)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
79)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
80)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
81)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
82)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
83)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
84)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
85)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
86)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
87)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
88)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
89)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
90)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
91)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
92)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
93)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
94)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
95)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
96)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
97)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
98)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!
99)PostRouting...[1000000]
try net3 ...
try net4 ...
	dependency on net1 at 0
try net1 ...
try net0 ...
try net2 ...
	dependency on net1 at 12
Done!

ORDER
3 -> 4 -> 1 -> 0 -> 2 -> 
runtime = 0.2 sec
net0 is routed! 10/12
net1 is routed! 12/12
net2 is routed! 7/13
net4 is routed! 15/15
========================RESULT========================
net0 [10]
	1,6,12 
	0,6,11 
	0,7,10 
	0,8,9 
	0,9,8 
	0,10,7 
	0,11,6 
	0,12,5 
	0,13,4 
	1,13,3 
	2,13,2 
	3,13,1 
	4,13,0 
net1 [12]
	4,6,12 
	5,6,11 
	6,6,10 
	7,6,9 
	8,6,8 
	9,6,7 
	9,7,6 
	9,8,5 
	9,9,4 
	9,10,3 
	9,11,2 
	9,12,1 
	9,13,0 
net2 [7]
	6,5,13 
@	6,4,12 @	6,4,11 	6,4,10 
	7,4,9 
	8,4,8 
	7,4,7 
	6,4,6 
	5,4,5 
	4,4,4 
	3,4,3 
	2,4,2 
	1,4,1 
	0,4,0 
net3 [12]
net4 [15]
	10,11,15 
	10,10,14 
	10,9,13 
	10,8,12 
	10,7,11 
	10,6,10 
	10,5,9 
	10,4,8 
	10,3,7 
	10,2,6 
	9,2,5 
	8,2,4 
	7,2,3 
	6,2,2 
	5,2,1 
	4,2,0 
--- continued
@	10,8,12 	10,8,11 
	9,8,10 
	8,8,9 
	7,8,8 
	6,8,7 
	5,8,6 
	4,8,5 
	3,8,4 
	2,8,3 
	1,8,2 
	0,8,1 
	0,9,0 
net0 is routed! 10/12
net1 is routed! 12/12
net2 is routed! 7/13
net3 is NOT routed!
net4 is routed! 15/15
* operation time = 15, total length = 52 cell usage = 42, mode = 1
======================================================
net2 is completely routable!..0
net0 is completely routable!..4
net1 is completely routable!..4
Routing...
Done!
0)PostRouting...[21]
try net2 ...
try net0 ...
	net0 is updated! 16=>3
try net1 ...
	dependency on net2 at 7
	net1 is updated! 21=>10
Done!
1)PostRouting...[12]
try net2 ...
try net1 ...
	dependency on net2 at 7
try net0 ...
Done!

ORDER
2 -> 1 -> 0 -> 
runtime = 0.0 sec
net0 is routed! 3/3
net1 is routed! 4/10
net1 [4]
	7,8,10 
	6,8,9 
	5,8,8 
	5,7,7 
	5,6,6 
@	5,5,5 	5,5,4 
	6,5,3 
@	7,5,2 	7,5,1 
	6,5,0 
net2 is routed! 12/12
========================RESULT========================
net0 [3]
	7,0,3 
	6,0,2 
	5,0,1 
	5,1,0 
net1 [4]
	7,8,10 
	6,8,9 
	5,8,8 
	5,7,7 
	5,6,6 
@	5,5,5 	5,5,4 
	6,5,3 
@	7,5,2 	7,5,1 
	6,5,0 
net2 [12]
	11,4,12 
	10,4,11 
	9,4,10 
	8,4,9 
	8,5,8 
	8,6,7 
	8,7,6 
	7,7,5 
	6,7,4 
	5,7,3 
	5,8,2 
	5,9,1 
	5,10,0 
net0 is routed! 3/3
net1 is routed! 4/10
net2 is routed! 12/12
* operation time = 12, total length = 25 cell usage = 17, mode = 1
======================================================
net2 is completely routable!..-1
net1 is completely routable!..0
net3 is completely routable!..0
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[28]
try net2 ...
try net1 ...
	net1 is updated! 11=>3
try net3 ...
	net3 is updated! 19=>7
try net0 ...
	net0 is updated! 28=>8
Done!
1)PostRouting...[8]
try net0 ...
try net2 ...
try net3 ...
try net1 ...
Done!

ORDER
0 -> 2 -> 3 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 8/8
net1 is routed! 3/3
net2 is routed! 7/7
net3 is routed! 7/7
========================RESULT========================
net0 [8]
	10,9,8 
	10,8,7 
	10,7,6 
	10,6,5 
	10,5,4 
	10,4,3 
	9,4,2 
	8,4,1 
	7,4,0 
--- continued
	10,4,3 
	11,4,2 
	12,4,1 
	13,4,0 
net1 [3]
	2,4,3 
	1,4,2 
	1,5,1 
	1,6,0 
net2 [7]
	6,0,7 
	5,0,6 
	4,0,5 
	3,0,4 
	2,0,3 
	1,0,2 
	0,0,1 
	0,1,0 
net3 [7]
	4,10,7 
	4,11,6 
	4,12,5 
	4,13,4 
	5,13,3 
	6,13,2 
	7,13,1 
	8,13,0 
net0 is routed! 8/8
net1 is routed! 3/3
net2 is routed! 7/7
net3 is routed! 7/7
* operation time = 8, total length = 25 cell usage = 21, mode = 1
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
net0 is routed! 7/20
net0 [7]
	1,6,20 
	1,5,19 
	1,4,18 
	1,3,17 
	1,2,16 
	1,1,15 
	1,0,14 
@	2,0,13 @	2,0,12 @	2,0,11 @	2,0,10 @	2,0,9 @	2,0,8 @	2,0,7 @	2,0,6 @	2,0,5 @	2,0,4 @	2,0,3 @	2,0,2 @	2,0,1 	2,0,0 
net1 is routed! 12/12
========================RESULT========================
net0 [7]
	1,6,20 
	1,5,19 
	1,4,18 
	1,3,17 
	1,2,16 
	1,1,15 
	1,0,14 
@	2,0,13 @	2,0,12 @	2,0,11 @	2,0,10 @	2,0,9 @	2,0,8 @	2,0,7 @	2,0,6 @	2,0,5 @	2,0,4 @	2,0,3 @	2,0,2 @	2,0,1 	2,0,0 
net1 [12]
	4,6,12 
	4,7,11 
	4,8,10 
	4,9,9 
	4,10,8 
	4,11,7 
	4,12,6 
	4,13,5 
	5,13,4 
	6,13,3 
	7,13,2 
	8,13,1 
	9,13,0 
net0 is routed! 7/20
net1 is routed! 12/12
* operation time = 20, total length = 32 cell usage = 17, mode = 1
======================================================
net0 is completely routable!..0
Routing...
Done!
0)PostRouting...[4]
try net0 ...
Done!

ORDER
0 -> 
runtime = 0.0 sec
net0 is routed! 4/4
========================RESULT========================
net0 [4]
	9,6,4 
	10,6,3 
	11,6,2 
	11,7,1 
	12,7,0 
net0 is routed! 4/4
* operation time = 4, total length = 4 cell usage = 3, mode = 1
======================================================
net1 is completely routable!..-1
net0 is completely routable!..-1
net2 is completely routable!..0
net3 is completely routable!..0
net5 is completely routable!..3
net4 is completely routable!..4
Routing...
Done!
0)PostRouting...[46]
try net1 ...
try net0 ...
	net0 is updated! 24=>16
try net2 ...
	dependency on net0 at 5
	net2 is updated! 30=>6
try net3 ...
	net3 is updated! 38=>7
try net5 ...
	dependency on net0 at 13
	net5 is updated! 42=>14
try net4 ...
	dependency on net0 at 7
	net4 is updated! 46=>8
Done!
1)PostRouting...[16]
try net0 ...
try net5 ...
	dependency on net0 at 13
try net3 ...
try net1 ...
try net2 ...
	dependency on net0 at 5
try net4 ...
	dependency on net0 at 7
Done!

ORDER
0 -> 5 -> 3 -> 1 -> 2 -> 4 -> 
runtime = 0.0 sec
net0 is routed! 16/16
net1 is routed! 5/5
net2 is routed! 5/6
net3 is routed! 7/7
net4 is routed! 3/8
net4 [3]
	2,8,8 
	1,8,7 
	0,8,6 
	1,8,5 
	0,8,4 
	0,7,3 
@	0,6,2 	0,6,1 
	1,6,0 
net5 is routed! 3/14
net5 [3]
	4,2,14 
	4,3,13 
	4,4,12 
	4,5,11 
	4,6,10 
	4,7,9 
	4,8,8 
	5,8,7 
	6,8,6 
	5,8,5 
	5,7,4 
	5,6,3 
	5,5,2 
@	5,4,1 	5,4,0 
========================RESULT========================
net0 [16]
	6,0,16 
	5,0,15 
	4,0,14 
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
net1 [5]
	6,0,5 
	7,0,4 
	8,0,3 
	9,0,2 
	10,0,1 
	11,0,0 
net2 [5]
	4,10,6 
@	5,10,5 	5,10,4 
	5,9,3 
	5,8,2 
	5,7,1 
	5,6,0 
net3 [7]
	8,7,7 
	9,7,6 
	10,7,5 
	11,7,4 
	12,7,3 
	13,7,2 
	13,8,1 
	13,9,0 
--- continued
@	9,7,6 	9,7,5 
	9,6,4 
	9,5,3 
	9,4,2 
	9,3,1 
	9,2,0 
net4 [3]
	2,8,8 
	1,8,7 
	0,8,6 
	1,8,5 
	0,8,4 
	0,7,3 
@	0,6,2 	0,6,1 
	1,6,0 
net5 [3]
	4,2,14 
	4,3,13 
	4,4,12 
	4,5,11 
	4,6,10 
	4,7,9 
	4,8,8 
	5,8,7 
	6,8,6 
	5,8,5 
	5,7,4 
	5,6,3 
	5,5,2 
@	5,4,1 	5,4,0 
net0 is routed! 16/16
net1 is routed! 5/5
net2 is routed! 5/6
net3 is routed! 7/7
net4 is routed! 3/8
net5 is routed! 3/14
* operation time = 16, total length = 56 cell usage = 40, mode = 1
======================================================
net0 is completely routable!..3
net1 is completely routable!..0
Routing...
Done!
0)PostRouting...[28]
try net0 ...
try net1 ...
	net1 is updated! 28=>16
Done!
1)PostRouting...[16]
try net0 ...
try net1 ...
Done!

ORDER
0 -> 1 -> 
runtime = 0.0 sec
net0 is routed! 11/11
net1 is routed! 12/16
========================RESULT========================
net0 [11]
	6,13,11 
	6,12,10 
	6,11,9 
	6,10,8 
	6,9,7 
	7,9,6 
	8,9,5 
	9,9,4 
	10,9,3 
	11,9,2 
	12,9,1 
	13,9,0 
--- continued
	7,9,6 
	6,9,5 
	5,9,4 
	4,9,3 
	4,8,2 
	3,8,1 
	2,8,0 
net1 [12]
	2,5,16 
	3,5,15 
	4,5,14 
	5,5,13 
	6,5,12 
	6,6,11 
	6,7,10 
	7,7,9 
	8,7,8 
	9,7,7 
	10,7,6 
	11,7,5 
	12,7,4 
	13,7,3 
	13,6,2 
	13,5,1 
	13,4,0 
--- continued
	4,5,14 
@	4,4,13 @	4,4,12 @	4,4,11 @	4,4,10 @	4,4,9 @	4,4,8 @	4,4,7 @	4,4,6 @	4,4,5 @	4,4,4 @	4,4,3 	4,4,2 
	4,3,1 
	4,2,0 
net0 is routed! 11/11
net1 is routed! 12/16
* operation time = 16, total length = 27 cell usage = 25, mode = 1
======================================================