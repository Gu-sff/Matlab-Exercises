clear all
close all
clc
disp('***********************************************')
disp('*****************exercise_3_1*****************')
disp('***********************************************')

n = 100;
for i = 1:n  % double cycle to define A
    for j = 1:n
        A(i,j) = max([i j]);
    end
end
Kinf = cond(A,inf)
b = sum(A,2);
[L,U] = ellu(A); % computes the L and U factors without executing swaps
y = L\b;  
x_nopiv = U\y; % solves the system Ax=b without applying pivoting
err_nopiv = norm(ones(n,1)-x_nopiv,inf)/norm(ones(n,1),inf) % computes the relative error associated with the solution calculated without pivoting
[L,U,P] = lu(A); % computess L and U factors by pivoting, that means performing swapping on the rows
y = L\(P*b);
x_piv = U\y;
err_piv = norm(ones(n,1)-x_piv,inf)/norm(ones(n,1),inf) % computes the relative error associated with the solution obtained with pivoting 

% the solution obtained by the method of the elimination of
% Gauss with pivoting (i.e. obtained by factoring PA=LU)
% is more accurate than without pivoting (elleu)