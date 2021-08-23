s = poly(0,'s');
G = 1/((s+3)*(s+4)*(s+12));
//z = 3;
for z = 0:0.01:3
K = G*(s+z)/s
evans(K);
end
