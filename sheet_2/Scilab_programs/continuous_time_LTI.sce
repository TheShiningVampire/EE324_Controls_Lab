clear 
close
clc

s = poly(0,'s');

a = 67; // Roll no. 18D070067
b = 22; // V is the first letter in my name. V comes at position 22 in English alphabets

g = a/(s+b);

G = syslin('c',g); //For defining the continuos time LTI system
t = 0:0.00005:0.5;

G_stp = csim('step' , t , G);
G_stp_stdy = G_stp(length(t))

// Finding the tau
for i = 1:length(t)
    if (abs(G_stp(i)- 0.63*G_stp_stdy) < 0.001)
       tau = t(i);
    end     
end
disp(tau, "The time constant of the system is ")

//Finding 2% settling time
for i = 1:length(t)
    if (abs(G_stp(i)- 0.98*G_stp_stdy) < 0.001)
       t_set = t(i);
    end     
end
disp(t_set, "The 2% settling time of the system is ")

//Finding rise time
for i = 1:length(t)
    if (abs(G_stp(i)- 0.1*G_stp_stdy) < 0.001)
       t_rise1 = t(i);
    end     
end

for i = 1:length(t)
    if (abs(G_stp(i)- 0.9*G_stp_stdy) < 0.001)
       t_rise2 = t(i);
    end     
end

disp(t_rise2 - t_rise1, "The rise time of the system is ")

index = 0:0.01:G_stp_stdy;

plot2d(t,G_stp, color('black'));
plot2d(t,G_stp_stdy*ones(t),color('red'))
plot(t,0.1*G_stp_stdy*ones(t),'c-.')
plot(t,0.63*G_stp_stdy*ones(t),'b-.')
plot(t,0.9*G_stp_stdy*ones(t),'r-.')
plot(t,0.98*G_stp_stdy*ones(t),'g-.')
plot(tau,0.63*G_stp_stdy,'d')
plot(t_set,0.98*G_stp_stdy,'x')
h = legend(['Step response' ,'steady state value','10% of the steady state value','63% of the steady state value','90% of the steady state value', '98% of the steady state value', 'tau','settling time'],pos = 4)
plot(t_rise1*ones(index),index , 'c-.')
plot(tau*ones(index),index , 'b-.')
plot(t_rise2*ones(index),index , 'r-.')
plot(t_set*ones(index),index , 'g-.')
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of system with transfer function G(s)', 'fontsize',4)

