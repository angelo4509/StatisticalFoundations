data Motivation;
input Poem Group $;
datalines;
12.0 Intrinsic
12.0 Intrinsic
12.9 Intrinsic
13.6 Intrinsic
16.6 Intrinsic
17.2 Intrinsic
17.5 Intrinsic
18.2 Intrinsic
19.1 Intrinsic
19.3 Intrinsic
19.8 Intrinsic
20.3 Intrinsic
20.5 Intrinsic
20.6 Intrinsic
21.3 Intrinsic
21.6 Intrinsic
22.1 Intrinsic
22.2 Intrinsic
22.6 Intrinsic
23.1 Intrinsic
24.0 Intrinsic
24.3 Intrinsic
26.7 Intrinsic
29.7 Intrinsic
5.0 Extrinsic
5.4 Extrinsic
6.1 Extrinsic
10.9 Extrinsic
11.8 Extrinsic
12.0 Extrinsic
12.3 Extrinsic
14.8 Extrinsic
15.0 Extrinsic
16.8 Extrinsic
17.2 Extrinsic
17.2 Extrinsic
17.4 Extrinsic
17.5 Extrinsic
18.5 Extrinsic
18.7 Extrinsic
18.7 Extrinsic
19.2 Extrinsic
19.5 Extrinsic
20.7 Extrinsic
21.2 Extrinsic
22.1 Extrinsic
24.0 Extrinsic
end;

proc print data = Motivation 
run;

proc univariate data = Motivation;
histogram Poem;
run;

proc boxplot data = Motivation;
plot Poem*Group;
run;


proc ttest data = Motivation alpha = 0.05 sides = 2;
var Poem;
run;
