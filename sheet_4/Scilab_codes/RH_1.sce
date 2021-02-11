clear;
close;
clc;

s = poly(0,'s');
g1 = s^2 + s+1;
g2 = s^4 + s^2 +1'
G = g1*g2;
disp(G);
disp(routh_t(G))
