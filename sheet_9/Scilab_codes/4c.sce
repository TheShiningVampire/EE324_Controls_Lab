clear
close 
clc

s = poly(0,'s');
G = (1)/(s^3+ 3*s^2 + 2*s);
Gs = syslin('c',G);
clf();
bode(Gs); 
bode_asymp(Gs);
