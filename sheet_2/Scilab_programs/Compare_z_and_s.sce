clear 
close
clc

s = poly(0,'s');

g1 = (s-1)/(s+1);
G1 = syslin('c',g1);
t = 0:1:10;
gs1 = csim('step' , t , G1);

plot2d(t, gs1, style = 2)

z = poly(0,'z');
g2 = (z-1)/(z+1);
G2 = tf2ss(g2);

u = ones(t);  
gs2 = dsimul(G2 , u);
plot2d3('gnn',t,gs2)

h = legend(['Continuous time', 'Discrete time' ])

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G(z)', 'fontsize',4)
