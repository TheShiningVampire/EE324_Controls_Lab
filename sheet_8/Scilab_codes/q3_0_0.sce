clear
close 
clc

s = poly(0,'s');

G = 1/((s+1)*((s)^2+4)*((s)^2+1));
Glin = syslin('c',G);
clf();
evans(Glin,100);
