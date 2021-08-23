clear 
clc

s = poly(0,'s');
k = 4.441;

G = 1/(s^2 + 3*s + 2);


for p = 0.0001
    T = k* ((s+20*p)/(s+p))*G/(1+ k* ((s+20*p)/(s+p))*G);
    T1 = syslin('c', T);
    t = 0:0.05:20;
    ts1 = csim('step' , t , T1);
    plot2d(t,ts1, style = 10*k);
end
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function T(s)', 'fontsize',4)
