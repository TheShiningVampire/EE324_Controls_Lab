clear;
close;
clc;

s = poly(0,'s');
G = (s^6 + 2*s^5 + s^4 + 2*s^2 + 4*s+ 1);
disp(G);
disp(routh_t(G))
