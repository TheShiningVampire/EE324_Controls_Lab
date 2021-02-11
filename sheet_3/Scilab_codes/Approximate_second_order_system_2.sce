clear
close 
clc

s = poly(0,'s');
g = (s+0.01)/(s^3 + (101/50)*s^2 + (126/25)*s + 0.1);
g_app = 1/(s^2 + 2*s + 5)
G = syslin('c', g);
G_app = syslin('c', g_app);
t = 0:0.05:8;

gs = csim('step',t,G);
gs_app = csim('step',t,G_app);
plot2d(t,gs)
plot2d(t , gs_app,style = 2)

h = legend(['Original third order system' , 'Approximate second ordr system'], 'fontsize',4)

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the system', 'fontsize',4)
