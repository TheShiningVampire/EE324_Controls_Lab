clear
close
clc

s = poly(0,'s');
G = syslin('c', 1/((s)*(s+4)*(s+10)) );

nyquist(G,0.0001 , 1e6)
