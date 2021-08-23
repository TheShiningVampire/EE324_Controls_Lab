clear
close
clc

s = poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
G = G*((s+0.01)/s);
Glin = syslin('c',G);
evans(Glin,1500);

// Plotting the constant omega_n = 8 circle
y = -8:0.1:8;
x = -sqrt(8^2 - y^2);

plot(x,y,'r');
