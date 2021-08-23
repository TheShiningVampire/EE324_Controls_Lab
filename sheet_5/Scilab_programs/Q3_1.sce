clear 
close
clc

s = poly(0,'s');

G = 1/(s*(s^2 + 3*s + 5));
t = 0:0.005:100;

k = 1:0.1:16;
t_rise1 = zeros(length(k));
t_rise2 = zeros(length(k));
t_rise = zeros(length(k));

for j = 1:1:length(k)    
    t_sys = k(j)*G/(1 + k(j)*G);    
    T = syslin('c',t_sys); //For defining the continuos time LTI system
    T_stp = csim('step' , t , T);
    T_stp_stdy = T_stp(length(t));
    
    //Finding rise time
    for i = 1:length(t)
        if (T_stp(i)> 0.1*T_stp_stdy)
           t_rise1(j) = t(i);
           break;
        end     
    end
    
    for i = 1:length(t)
        if (T_stp(i)> 0.9*T_stp_stdy)
           t_rise2(j) = t(i);
           break;
        end     
    end
    t_rise(j) = t_rise2(j) - t_rise1(j);    
end
plot(k, t_rise)
