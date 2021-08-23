clear
close 
clc

s = poly(0,'s');
G = (10*s + 2000)/(s^3 + 202*s^2 + 490*s + 18001);
Gs = syslin('c',G);
clf();
bode(Gs); 
show_margins(Gs , 'bode')
[gm,fpcf]=g_margin(Gs);
[phm,fgcf] = p_margin(Gs);
disp(gm,"Gain Margin \n");
disp(phm ,"Phase Margin \n");
disp(fgcf ,"Gain Cross-over Frequency \n")
disp(fpcf ,"Phase Cross-over Frequency \n")
