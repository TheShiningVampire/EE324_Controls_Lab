clear 
close
clc

s = poly(0,'s');

a = 67:67:6700; // Roll no. 18D070067
b = 22; // V is the first letter in my name. V comes at position 22 in English alphabets

t = 0:0.00005:0.5;
t_rise1 = zeros(a);
t_rise2 = zeros(a);

index = 1:1:100
for j = index    
    g = a(j)/(s+b);    
    G = syslin('c',g); //For defining the continuos time LTI system
    G_stp = csim('step' , t , G);
    G_stp_stdy = G_stp(length(t));
    
    //Finding rise time
    for i = 1:length(t)
        if (abs(G_stp(i)- 0.1*G_stp_stdy) < 0.001)
           t_rise1(j) = t(i);
        end     
    end
    
    for i = 1:length(t)
        if (abs(G_stp(i)- 0.9*G_stp_stdy) < 0.001)
           t_rise2(j) = t(i);
        end     
    end
    t_rise(j) = t_rise2(j) - t_rise1(j);    
end
plot(a, t_rise)


