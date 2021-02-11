clear
close 
clc

s = poly(0,'s');
G = s^6 + s^5 - 6*s^4 + s^2 + s - 6;
disp(routh_t(G));

