clear
close 
clc

s = poly(0,'s');
g = 1/(s^2 +3*s+ 1); // xi = 1.5
G = syslin('c', g);
t = 0:0.0001:15;

gs = csim('step',t,G);
plot2d(t,gs)

xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the system', 'fontsize',4)


//Percentage Overshoot
g_steady = gs($);
g_max = max(gs);
per_OS = (g_max-g_steady)/g_steady *100;
disp(per_OS, 'The percentage peak overshoot is ');

//Peak time
// Infinite for overdamped ssytem
disp('The peak time is infinite')

//Settling time
times = find(abs(gs - .98*g_max)<0.001)
disp(t(times($)),"The settling time is ");

//Delay time
for i = 1:length(t)
        if (abs(gs(i)- 0.5*g_steady) < 0.001)
           t_delay = t(i);
           break;
        end     
    end
//delay_t = t(find(gs == 0.5*g_max))
disp(t_delay,'The delay time is ')
