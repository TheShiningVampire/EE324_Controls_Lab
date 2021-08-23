clear
close 
clc

s = poly(0,'s');
G = (s+1)/(s^2*(s+3.6));
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
