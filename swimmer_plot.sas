data swimmer;
  input item stage $4-12 low high highcap $25-40 status $40-60 start end durable;
  startline=start; endline=end;
  if status ne ' ' then do;
    if end eq . then endline=high-0.3;
    if start eq . then startline=low+0.3;
  end;
  if stage eq ' ' then durable=.;
  ymin=-1;
  datalines;
1  Stage 1  0  18.5     FilledArrow     Complete response      6.5  13.5  -0.25
2  Stage 2  0  17.0                     Complete response     10.5  17.0  -0.25
3  Stage 3  0  14.0     FilledArrow     Partial response       2.5   3.5  -0.25
3           0  14.0     FilledArrow     Partial response       6.0     .  -0.25
4  Stage 4  0  13.5     FilledArrow     Partial response       7.0  11.0     .
4           0  13.5     FilledArrow     Partial response      11.5     .     .
5  Stage 1  0  12.5     FilledArrow     Complete response      3.5   4.5  -0.25
5           0  12.5     FilledArrow     Complete response      6.5   8.5  -0.25
5           0  12.5     FilledArrow     Partial response      10.5     .  -0.25
6  Stage 2  0  12.6     FilledArrow     Partial response       2.5   7.0     .
6           0  12.6     FilledArrow     Partial response       9.5     .     .
7  Stage 3  0  11.5                     Complete response      4.5  11.5  -0.25
8  Stage 1  0   9.5                     Complete response      1.0   9.5  -0.25
9  Stage 4  0   8.3                     Partial response       6.0     .     .
10 Stage 2  0   4.2     FilledArrow     Complete response      1.2     .     .
;
run;
