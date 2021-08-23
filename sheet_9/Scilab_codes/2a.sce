clear
close 
clc

s = poly(0,'s');
G = (s^2 + 314.16^2)/(s^2 + (314.16/100)*s + 314.16^2);
Gs = syslin('c',G);
clf();
bode(Gs); 
