clear 
close 
clc

b = 22:22:2200;
y = zeros(b)
for i = 1:1:length(b)
    y(i) = log(9)/b(i)
end

plot(b,y)

