/*****************************************/

options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
infile ft15f001;
input trt_group time subject results @@;
parmcards4;
1 2 100 20 1 4 100 30 1 6 100 35 1 8 100 50
1 2 200 40 1 4 200 25 1 6 200 40 1 8 200 30
1 2 300 25 1 4 300 40 1 6 300 45 1 8 300 55
2 2 400 15 2 4 400 35 2 6 400 50 2 8 400 45
2 2 500 35 2 4 500 35 2 6 500 20 2 8 500 35
;;;;
run;quit;

options orientation=portrait;
ods graphics on / height=9in width=7in;
ods pdf file="d:/pdf/spaghetti_sas.pdf";
proc sgplot data=sd1.have;
title "Study Results by Treatment Group";
series x=time y=results/ group=subject
grouplc=trt_group name="grouping";
keylegend "grouping" / type=linecolor;
run;quit;
ods pdf close;