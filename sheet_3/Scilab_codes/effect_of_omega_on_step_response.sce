clear
close 
clc

s = poly(0,'s');
w = 1:2:9; // Natural frequencies
for i = w
    g = i^2/(s^2 +2*(0.5)*i*s+ i^2); // xi = 0.5
    G = syslin('c', g); 
    t = 0:0.0001:8;
    gs = csim('step',t,G);
    plot2d(t,gs, style = i)
    
    
disp(i ,'The natural frequency is ')    
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

//Rise time
ten_percent_indx_g = find((abs(gs - 0.1*g_steady)<0.001))($)
ninety_percent_indx_g = find(abs(gs - 0.9*g_steady)<0.001)(1)

rise_time_g = t(ninety_percent_indx_g) - t(ten_percent_indx_g);

//Delay time
for i = 1:length(t)
        if (abs(gs(i)- 0.5*g_steady) < 0.001)
           t_delay = t(i);
           break;
        end     
    end
//delay_t = t(find(gs == 0.5*g_max))
disp(t_delay,'The delay time is ')

    
    
end

h = legend(['omega_n = 1','omega_n = 3','omega_n = 5','omega_n = 7','omega_n = 9'])
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the system', 'fontsize',4)

