clear 
clc

s = poly(0,'s');
G = 1/((s+3)*(s+4)*(s+12));

for k = 0.1:0.1:1
    T = k*G/(1+ k*G);
    T1 = syslin('c', T);
    t = 0:0.05:20;
    ts1 = csim('step' , t , T1);
    plot2d(t,ts1,style = 11*k);
end
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)
title('Step response of the closed loop system for different gain values', 'fontsize',4)
