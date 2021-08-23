clear 
clc

s = poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));

for k = 1:50:1000
    T = k*G/(1+k*G);
    t = 0:0.1:20;
    T1 = syslin('c',T);
    ts =  csim('step' ,t, T1);
    plot(t , ts);
end
