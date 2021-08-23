clear
close
clc

s = poly(0,'s');

G = (s+ 0.2)/((s^2 + 3*s + 2)*(s+0.01 ));
Glin = syslin('c',G);
evans(Glin,100);

// Finding theta from the damping ratio

zeta = 0.591;
theta = acos(zeta);
x = -2:0.1:0;
y = -tan(theta)*x;
plot(x, y);
