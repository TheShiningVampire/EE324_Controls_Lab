clear
close 
clc

s = poly(0,'s');
G1 = (s^2+1/s);
G_block = G1/(1+G1);
G2 = G_block/s;
G = G2/(1+(G2*s));
disp(G,' The transfer function of the complex system is ')
