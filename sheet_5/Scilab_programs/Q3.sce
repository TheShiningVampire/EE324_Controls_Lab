clear
close 
clc

s = poly(0,'s');
G = 1/(s*(s^2+3*s+5));
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
