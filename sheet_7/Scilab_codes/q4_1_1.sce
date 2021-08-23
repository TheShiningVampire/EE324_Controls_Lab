clear 
close 
clc

omega = 10;
t = 70:0.01:80;

sin_omega_t = sin(omega*t);
plot(t , sin_omega_t);


s = poly(0,'s')
G = 60/(s^3 + 6*s^2 +11*s+ 6);
G1 = syslin('c',G);
gsin =  csim(sin_omega_t ,t, G1);
plot(t , gsin , 'r');

t_max_out = 0;
t_max_in = 0;
max_resp = -20;
max_in = -20;

//for i = 1:1:length(t)
//    if (sin_omega_t(i) > max_in)
//        max_in = sin_omega_t(i);
//        t_max_in = t(i);
//    else
//        break;
//    end
//    
//end

//for i = 1:1:length(t)
//    if (gsin(i) > max_resp )
//        max_resp = gsin(i);
//        t_max_out = t(i)
//    else
//        break;
//    end   
//end


t_max_out_indx = find(gsin == max(gsin))
t_max_out = t(t_max_out_indx);

t_max_in_indx = find(sin_omega_t == max(sin_omega_t))
t_max_in = t(t_max_in_indx);

phase = omega * (t_max_out - t_max_in);
disp(gsin(t_max_out_indx),"The ratio of amplitudes of output to input is ");
disp(phase,"The phase difference between input and output is ");
