clear;
close;
clc;

s = poly(0,'s');
g1 = s^4 + 2*s^3 - 10*s^2- 17.5*s - 6;
g2 = 25*s^4 + 100*s^2 + 64;
G = g1*g2;
disp(G);
disp(routh_t(G))
