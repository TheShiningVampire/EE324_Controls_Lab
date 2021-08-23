clear
close 
clc

s = poly(0,'s');
G1 = 100/((s+100)*(s^2+2*s+2));
Glin1 = syslin('c',G1);

G2 = 1/((s^2+2*s+2));
Glin2 = syslin('c',G2);

clf();
evans(Glin1,100);
evans(Glin2,100)


// Post-tuning graphical elements
ch = gca().children;
curves = ch(2).children;
curves.thickness = 2;
asymptotes = ch(ch.type=="Segs");
asymptotes.segs_color = color("grey70");
