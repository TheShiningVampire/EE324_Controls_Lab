clear
close 
clc

s = poly(0,'s');
G = 10/(s*(s+2)*(s+4));
K = 2;
G_cl = K*G/(1+K*G);
disp(G_cl,' The transfer function of the closed loop system is ')
