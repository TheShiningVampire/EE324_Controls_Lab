clear
close
clc

s = poly(0,'s');

G = (1)/((s+3)*(s+4)*(s+12));
Glin = syslin('c',G);
evans(Glin,5000);

// Finding theta from the damping ratio

zeta = 0.35;
theta = acos(zeta);
x = -20:0.1:20;
y = -tan(theta)*x;
plot(x, y);
