clear
close 
clc

s = poly(0,'s');
G = (1)/(s*(s^2 + 4*s + 8));
Glin = syslin('c',G);
clf();
evans(Glin,5000);
