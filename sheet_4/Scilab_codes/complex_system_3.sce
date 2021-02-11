clear
close 
clc

s = poly(0,'s');
g1 = 3*s * (s/(1+s));
g2 = 2*s;
G1 = g1 + g2;
G2 = (s+1)/(1+5*(s+1));
G = G1*G2/(1+G1*G2)
disp(G,' The transfer function of the complex system is ')
