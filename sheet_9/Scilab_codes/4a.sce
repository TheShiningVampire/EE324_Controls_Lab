clear
close 
clc

s = poly(0,'s');
G = (1)/(s^3+ 3*s^2 + 2*s);
Glin = syslin('c',G);
clf();
evans(Glin);
