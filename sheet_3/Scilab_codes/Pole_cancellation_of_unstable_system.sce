clear
close 
clc

s = poly(0,'s');
g = (s-3)/(s^2 -s-6);

G_modified = syslin('c', g);
t = 0:0.05:5;

gs = csim('step' , t , G_modified);

plot2d(t,gs)
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G_modified(s)', 'fontsize',4)
