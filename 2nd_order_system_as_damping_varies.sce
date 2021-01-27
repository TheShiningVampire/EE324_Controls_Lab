clear 
close
clc

s = poly(0,'s');
rho = 0:0.25:2;

for i=1:1:length(rho)        
    n1 = 1;
    d1 = s^2 + 2*rho(i)*s + 1;
    g = n1/d1;
    G = syslin('c', g);
    t = 0:0.005:25;
    gs1 = csim('step' , t , G);    
    plot2d(t,gs1,style=i)
end
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)
h = legend(['Damping coefficient = 0','Damping coefficient = 0.25','Damping coefficient = 0.5','Damping coefficient = 0.75','Damping coefficient = 1','Damping coefficient = 1.25','Damping coefficient = 1.5','Damping coefficient = 1.75','Damping coefficient = 2'], pos = 5 )

title('Step response of system with transfer function G(s)', 'fontsize',4)

