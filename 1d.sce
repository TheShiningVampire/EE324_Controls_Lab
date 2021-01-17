clear 
clc

s = poly(0,'s');
n1 = 10;
d1 = s^2 + 2*s + 10;
g1 = n1/d1;

G1 = syslin('c', g1);
t = 0:0.05:20;

gs1 = csim('step' , t , G1);

plot2d(t,gs1)
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G1(s)', 'fontsize',4)
