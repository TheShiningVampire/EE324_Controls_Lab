clear
close 
clc

s = poly(0,'s');
T = 10/(s^3 + 4*s^2 + 5*s + 10);
G = T/(1-T);
Glin = syslin('c',G);
clf();
evans(Glin,100);
sgrid();

// Post-tuning graphical elements
ch = gca().children;
curves = ch(2).children;
curves.thickness = 2;
asymptotes = ch(ch.type=="Segs");
asymptotes.segs_color = color("grey70");
