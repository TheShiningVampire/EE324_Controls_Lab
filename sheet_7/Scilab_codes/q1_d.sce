s = poly(0,'s');
G = 1/((s+3)*(s+4)*(s+12));

for z = 0.01:0.3:3
    K = G*(s+z)/s
    evans(K);
end

x = -12:0.01:0

y1 = (1/0.16)*x;
y2 = -(1/0.16)*x;
plot(x,y1,'r');
plot(x,y2,'r');
