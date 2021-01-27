clear 
close
clc

s = poly(0,'s');
n1 = 1;
d1 = s;
g = n1/d1;

G = syslin('c', g);
t = 0:0.005:5;

gs1 = csim('step' , t , G);

plot2d(t,gs1)
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G(s)', 'fontsize',4)
