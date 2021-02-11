clear
close 
clc

s = poly(0,'s');
G = s^5 - 2*s^4 + 3*s^3- 6*s^2 + 2*s - 4;
disp(routh_t(G));

