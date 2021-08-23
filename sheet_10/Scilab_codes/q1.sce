clear;
close;
clc;

s = poly(0, 's');
T = [1 0 2; 4 -1 0; 0 2 1];
disp(det(T));

A = [-1 2 0; 4 3 -2; 0 5 1];
B = [8; 3; 5];
C = [-1 0 4];
D = [3]; 
// part a 
I = eye(A);
Gs = D + C*inv(s*I - A)*B;
disp(Gs);

A_t = inv(T)*A*T;
B_t = inv(T)*B;
C_t = C*T;

Gt = D + C_t*inv(s*I - A_t)*B_t;
disp(Gt);

//part b
root = roots(Gs.den);
disp(root,'roots are-');
[vecs, vals] = spec(A);
disp(vals,'eigenvalues of A are');

//part c
G1 = 1/(s^2 + 3*s + 2);
G2 = (s^2 -s + 3)/(s^2 + 3*s + 2);
sys1 = syslin('c', G1);
sys2 = syslin('c', G2);

ss1 = tf2ss(G1);
ss2 = tf2ss(G2);
disp(ss1(5));
disp(ss2(5));




