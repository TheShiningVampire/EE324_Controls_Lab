clear 
close
clc
clf()

s = poly(0,'s');
a = -1:0.1:1;
t = 0:0.01:1.8;

for i = -1:0.1:1
    g = (s+5+i)/(s^2+11*s+30)
    G = syslin('c', g);    
    gs = csim('step' , t , G); 
    if (i==0)
        plot2d(t,gs, style =2 , leg = 'G(s) = (s+5)/(s^2 + 11s + 30')
    else           
        plot2d(t,gs)
    end        
end

g1 = 1/(s+6);
G1 = syslin('c', g1);
gs1 = csim('step' , t , G1);

plot(t,gs1 ,'x')

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the systems', 'fontsize',4)
