clear
close 
clc

s = poly(0,'s');
g = 85/(s^3 + 7*s^2 + 27*s + 85);

G = syslin('c', g);
t = 0:0.05:8;

gs = csim('step',t,G);

plot2d(t,gs)

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with third order transfer function', 'fontsize',4)
