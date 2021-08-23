clear
close 
clc

s = poly(0,'s');
G = (1)/((s+3)*(s+4)*(s+12));
Glin = syslin('c',G);
clf();
evans(Glin,5000);
