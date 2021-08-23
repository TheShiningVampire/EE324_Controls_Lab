clear
close 
clc

s = poly(0,'s');

G = (s-5)*(s-6)*(s-7)*(s-8)/((s+6)*((s+5)^2+4)*((s+5)^2+1));
Glin = syslin('c',G);
clf();
evans(Glin,100);
