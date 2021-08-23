clear
close 
clc

s = poly(0,'s');
C = 100/(s+30);
D = ((2/0.01966) -s)/( (2/0.01966) +s );
CsDs = syslin('c',C*D);
clf();
bode(CsDs ,"rad"); 
show_margins(CsDs, 'bode')
