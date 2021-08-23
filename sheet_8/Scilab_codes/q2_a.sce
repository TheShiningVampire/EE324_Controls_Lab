clear 
clc

s = poly(0,'s');

K1 = [0.5 1 5];
K2 = K1/5;
t = 0:0.001:50;

for i = 1:length(K1)
    G = (s+K1(i) )/(s + K2(i));

    Gs = syslin('c',G);
    ts =  csim('step' ,t, Gs);
    plot2d(t , ts, style = i+1);
end
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

legend("K2 = 0.5" , "K2 = 1" , "K2 = 5")
title('Step response of system', 'fontsize',4)
