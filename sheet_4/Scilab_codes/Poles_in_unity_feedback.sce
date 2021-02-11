clear
close 
clc

s = poly(0,'s');
G = 10/(s*(s+2)*(s+4));
K = 0:0.1:100;
poles1 = zeros(length(K) , 3);
for i = 1:length(K)
    G_cl = G*K(i)/(1+G*K(i));
    poles(i,:) = roots(G_cl.den); 
end

for i = 2:length(K)
    if (abs(real(poles(i,2)))<1e-3)
        disp(K(i), "The value of k is ")
        break;
    end
    
end
