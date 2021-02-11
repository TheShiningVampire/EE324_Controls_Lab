clear;
close;
clc;


s = poly(0,'s');

g = 9/(s^2 + 2*s + 9);

// Adding zeros to the system

g1 = g * (s+10)
G = syslin('c', g);
G1 = syslin('c', g1);
t = 0:0.0001:5;
gs = csim('step' , t , G);
gs1 = csim('step' , t , G1);

// Finding rise time 
g_steady = gs($);
g1_steady = gs1($);

ten_percent_indx_g = find(abs(gs - 0.1*g_steady)<0.0001)
ninety_percent_indx_g = find(abs(gs - 0.9*g_steady)<5e-6)

rise_time_g = t(ninety_percent_indx_g) - t(ten_percent_indx_g);
disp(rise_time_g,' Rise time of the original sytem is ')

ten_percent_indx_g1 = find(abs(gs1 - 0.1*g1_steady)<0.0009)
ninety_percent_indx_g1 = find(abs(gs1 - 0.9*g1_steady)<5e-5)

rise_time_g1 = t(ninety_percent_indx_g1) - t(ten_percent_indx_g1);
disp(rise_time_g1,' Rise time of the sytem with added zero is ')

// Finding percentage overshoot
max_g = max(gs);
max_g1 = max(gs1);

os_g = (max_g - g_steady)/g_steady *100;
os_g1 = (max_g1 - g1_steady)/g1_steady *100;

disp(os_g , 'Percentage overshoot of the original sytem is ');
disp(os_g1, 'Percentage overshoot of the sytem with added zero is ');


plot2d(t , gs, style =1)
plot2d(t, gs1,style =2)

h = legend(['Original system' , 'System with added zero'])
xlabel('Time','fontsize',4)
ylabel('Amplitude','fontsize',4)

title('Step response of the two systems', 'fontsize',4)
