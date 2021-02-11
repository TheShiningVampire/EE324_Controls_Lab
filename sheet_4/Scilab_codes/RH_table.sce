clear
close 
clc

s = poly(0,'s');
G = 10/(s*(s+2)*(s+4));
K = 4.8;
G_cl = K*G/(1+K*G);
disp(routh_t(G_cl.den))
