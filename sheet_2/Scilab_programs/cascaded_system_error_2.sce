clear 
close
clc

s = poly(0,'s');
n1 = s+5;
d1 = (s+4);
d2 =(s+2);
 
G1 = syslin('c', n1/(d1*d2));
G2a = syslin('c', n1/(d1));
G2b = syslin('c', 1/(d2));

G3a = syslin('c', 1/(d2));
G3b = syslin('c', n1/d1);
t = 0:0.5:10;

gs1 = csim('step' , t , G1);
gs2a = csim('step' , t , G2a);
gs2 = csim(gs2a , t , G2b);
gs3a = csim('step' , t , G3a);
g3 = csim(gs3a , t , G3b);

plot2d(t,gs1,style = 1)
plot2d(t,gs2,style = 2)
plot2d(t,gs2,style = 3)
h = legend(['First arangement' , 'Second arrangement', 'Third arrangement'])
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the three arrangements for tau = 0.5', 'fontsize',4)
