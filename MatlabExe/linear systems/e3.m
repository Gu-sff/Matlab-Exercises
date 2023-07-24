disp('***********************************************')
disp('*****************exercise_3_3*****************')
disp('***********************************************')

p = 30;
n = 100;
A = rand(n); % generates a matrix of pseudo-random numbers
b = sum(A,2);
x = zeros(n,p); % defines a matrix x of dimensions n by p, in whose i-th column the solution vector of the i-th system will be stored
tic % activates the timer to calculate the calculation time for solving linear systems using PA=LU
[L,U,P] = lu(A); % compute the PA = LU factorization once and for all!
tn = P*b;% generates the right-hand side term of the first linear system
for i = 1:p
    y = L\tn;  % solves two triangular systems at each step
    x(:,i) = U\y;  
    tn = P*x(:,i); % generates the right-hand side term of the next linear system
end
toc % stops the timer

tic % activates the timer to calculate the calculation time for solving linear systems using the built-in MATLAB command \
x(:,1) = A\b;
for i = 2:p
    x(:,i) = A\x(:,i-1);
end
toc

% for large n the calculation times of the first procedure are less than
% those of the second procedure

