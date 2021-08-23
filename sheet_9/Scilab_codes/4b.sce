clear
close 
clc

s = poly(0,'s');
G = (1)/(s^3+ 3*s^2 + 2*s );
Gs = syslin('c',G); 
nyquist([Gs], 0.0187,1e3, ,["G(s)"]  );
//show_margins(Gs , 'nyquist'  );
//disp(g_margin(Gs))
show_margins(Gs,  'nyquist')
