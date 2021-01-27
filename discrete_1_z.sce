clear 
close
clc

z = poly(0,'z');
g = 1/z;
G = tf2ss(g);
t = -1:1:4;

u = ones(t);
u(1) = 0  
gs1 = dsimul(G , u);

plot2d3('gnn',t,gs1)

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G(z)', 'fontsize',4)
