clear
close 
clc

s = poly(0,'s');

G = 1/((s+6)*((s+5)^2+4)*((s+5)^2+1));
Glin = syslin('c',G);
clf();
bode(Glin,'rad');
