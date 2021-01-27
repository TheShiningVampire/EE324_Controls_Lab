clear 
close
clc

s = poly(0,'s');

n1 = 1;
d1 = s+1 ;
g1 = n1/d1;

n2 = 1;
d2 = s^3 + 4*s^2 + 8*s + 1;
g2 = n2/d2;

G1= syslin('c', g1);
G2= syslin('c', g2);
t = 0:0.005:25;

gs1 = csim('step' , t , G1);
gs2 = csim('step' , t , G2);

plot2d(t,gs1,style = 1)
plot2d(t,gs2,style = 2)
h = legend(['First Order system', 'Second order system'])
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G1(s) and G2(s)', 'fontsize',4)

