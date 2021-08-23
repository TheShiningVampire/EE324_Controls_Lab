clear
close
clc

s = poly(0,'s');

G = 1/(s^2 + 3*s + 2);
Glin = syslin('c',G);
evans(Glin,100);

// Finding theta from the damping ratio

zeta = 0.591;
theta = acos(zeta);
x = -10:0.1:0;
y = -tan(theta)*x;
plot(x, y);
