clear
close 
clc

s = poly(0,'s');
G = s^5 + 3*s^4 + 5*s^3 + 4*s^2 + s +3;
disp(routh_t(G));

