clear
close 
clc

s = poly(0,'s');
G = (10)/(s*(s/5 + 1 ) *(s/20 + 1) );
Gs = syslin('c',G);
C = (s+3)/(s+1);
GsCs = syslin('c' , G*C);  
nyquist([Gs ; GsCs], 0.1 , 1e3 ,["G(s)" ; "G(s)C(s)"]  );
gm=g_margin(Gs);
phm = p_margin(Gs);
disp(gm,"Gain Margin of G(s)");
disp(phm ,"Phase Margin of G(s)");
gm2 = g_margin(GsCs);
phm2 = p_margin(GsCs);
disp(gm2,"Gain Margin of G(s)C(s)");
disp(phm2 ,"Phase Margin of G(s)C(s)");

