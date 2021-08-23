clear
close 
clc

s = poly(0,'s');
G = (s+1)/((s+5)*(s+10)*(s+100)) ; 
Gs = syslin('c' ,G);
bode(Gs,'rad');