clear 
clc

s = poly(0,'s');
G = (s+0.9)/((s^2 + 3*s + 2)* (s+0.045));
k= 4.441;
T = k*G/(1+ k*G);
T1 = syslin('c', T);
t = 0:0.05:50;
ts1 = csim('step' , t , T1);
plot2d(t,ts1,style = 11*k);

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)
title('Step response of the closed loop system ', 'fontsize',4)
