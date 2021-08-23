clear;
clc;

s = poly(0 , 's');
g = 1/(s^2 + 2*s + 9);
G = syslin('c' , g);
t = 0:0.1:10;
Gs = csim('step', t, G);

gz = g*(s+1);
Gz = syslin('c',gz);
Gzs = csim('step' , t , Gz);

maxg = 0;
maxgz = 0;

for i = 1:length(t)
    maxg = max(maxg , Gs(i));
    maxgz = max(maxgz , Gzs(i));
end

disp(t(find(Gs == maxg)),'The peak time of system is ');

disp(t(find(Gzs == maxgz)),'The peak time of added zero system is ');

plot(t , Gs , 'red');
plot(t, Gzs , 'green');
legend("Original" , "Added Zero");
