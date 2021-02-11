clear
close
clc

s = poly(0,'s');

Z = [30+s , --20-s; -20-s , 40 + s + 1e6/s];// Defining the matrix
Vvec = [1e6/s ; 0]; // Defining the vector

I = (Z\Vvec); // Solving the matrix equation

disp(I(2,1),"The transfer function Vout(s)/Vin(s) is")

