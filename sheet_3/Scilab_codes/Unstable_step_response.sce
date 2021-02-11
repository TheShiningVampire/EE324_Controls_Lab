clear
close 
clc

s = poly(0,'s');
g1 = 1/(s^2 -s-6);

G1 = syslin('c', g1);
t = 0:0.05:5;

gs1 = csim('step' , t , G1);

plot2d(t,gs1)
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G1(s)', 'fontsize',4)

[n,d] = simp(1, s^2 - s - 6);
poles = roots(d);
disp(poles,"The poles of the system are as follows")
