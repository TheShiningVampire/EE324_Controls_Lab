clear
close 
clc

s = poly(0,'s');
G =(s+50)*(s+60)*(s+70)*(s+80)/((s+6)*((s+5)^2+4)*((s+5)^2+1));
Glin = syslin('c',G);
clf();
bode(Glin,'rad');
