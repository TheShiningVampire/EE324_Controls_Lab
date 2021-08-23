clear 
clc

s = poly(0,'s');

G = 1/(s^2 + 3*s + 2);
k = 4.441;
T = k*G/(1 + k*G);
t = 0:0.1:10;
T1 = syslin('c',T);
ts =  csim('step' ,t, T1);
plot(t , ts);

Gc = (s+7.923)/(s^2 + 3*s +2);
kc = 3;
Tc = kc*Gc/(1+kc*Gc);
T2 = syslin('c',Tc);
ts2 =  csim('step' ,t, T2);
plot(t , ts2,'r');
legend('Original system','Compensated system for half the settling time')
