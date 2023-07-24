clear all
close all
clc

disp('***********************************************')
disp('*****************exercise_3_6*****************')
disp('***********************************************')

format short e
A = [1 2 3 4;-1 0 4 1;3 5 1 0;2 -1 0 1;1 1 -1 1;2 -1 0 3];
b = [1:6]';
[m n] = size(A);
r = rank(A) % computes the rank of matrix A. N.B. the rank is maximum
[Q,R] = qr(A); % computes the QR factorization of A
Rt = R(1:n,1:n); % identifies the R tilde, non-singular matrix consisting of the first n rows and n columns
c = Q'*b;  % computes vector c
c1 = c(1:n); % identifies the vector c1 made up of the first n elements of c
cstar = Rt\c1 % solve the linear system to determine the solution in least squares sense
x = A\b % calculate the same solution with the \ built-in MATLAB command for comparison
err = norm(cstar-x)/norm(x) % computes the relative error associated with the cstar solution

disp('**********************************************END EXERCISE**********************************************')
pause