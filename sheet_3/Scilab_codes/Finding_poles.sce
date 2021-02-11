clear;
close;
clc;


s = poly(0,'s');

g = 9/(s^2 + 2*s + 9);
poles = roots(g.den)

disp(poles , 'Poles of the system are ')
