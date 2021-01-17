clear
close
clc

s = poly(0,'s');

Z = [2*s+2+(1/(s+1)) , -1/(s+1) , (-s-1); -1/(s+1) , s+3+(1/(s+1)) , -2; -s-1 , -2 , 6+s+(1/(s+1))];// Defining the matrix
Vvec = [0;0;1]; // Defining the vector

I = (Z\Vvec); // Solving the matrix equation

disp(I(1,1),"The transfer function I1(s)/V(s) is")
disp(I(2,1),"The transfer function I2(s)/V(s) is")
disp(I(3,1),"The transfer function I3(s)/V(s) is")
