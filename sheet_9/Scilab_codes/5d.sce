clear
close 
clc

s = poly(0,'s');
K = 81.008;
G = K*(10*s + 2000) * (s+0.1)/(s^3 + 202*s^2 + 490*s + 18001);
Gs = syslin('c',G);
clf();
bode(Gs , "rad"); 
show_margins(Gs , 'bode')
[gm,fpcf]=g_margin(Gs);
[phm,fgcf] = p_margin(Gs);
disp(gm,"Gain Margin ");
disp(phm ,"Phase Margin ");
disp(fgcf ,"Gain Cross-over Frequency ")
disp(fpcf ,"Phase Cross-over Frequency ")
