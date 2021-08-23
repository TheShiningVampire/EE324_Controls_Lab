clear
close 
clc

s = poly(0,'s');
G = s^2/(s^2 - 1);
Glin = syslin('c',G);
clf();
evans(Glin,100);
sgrid();
