clear
close 
clc

s = poly(0,'s');
g = (s+0.01)/(s^3 + (101/50)*s^2 + (126/25)*s + 0.1);

G = syslin('c', g);
t = 0:0.05:8;

gs = csim('step',t,G);

plot2d(t,gs)

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with third order transfer function', 'fontsize',4)
