clear
close 
clc

s = poly(0,'s');
g = 85/(s^3 + 7*s^2 + 27*s + 85);
g_app = 17/(s^2 + 2*s + 17)
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

title('Step response of system with third order transfer function', 'fontsize',4)
