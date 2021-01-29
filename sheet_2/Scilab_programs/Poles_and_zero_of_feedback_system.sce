clear
close
clc

s = poly(0,'s');
n1 = 10;
d1 = s^2 + 2*s + 10;
g1 = n1/d1;

n2 = 5;
d2 = s+5;
g2 = n2/d2;

g_feedback = g1/(1+ (g1*g2));
G = syslin('c', g_feedback);

z = roots(G.num);
p = roots(G.den);

disp(z, 'The zeros of the system are : ');
disp(p, 'The poles of the system are : ');

plzr(G);  // Pole-zero plot of the system
