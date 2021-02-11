clear 
close
clc
clf()

s = poly(0,'s');
a = -1:0.1:1;
t = 0:0.01:1;

for i = -1:0.1:1
    g = (s-3+i)/(s^2-s-6)
    G = syslin('c', g);    
    gs = csim('step' , t , G); 
    if (i==0)
        plot2d(t,gs, style =2)
    else           
        plot2d(t,gs)
    end        
end

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the perturbed systems', 'fontsize',4)
