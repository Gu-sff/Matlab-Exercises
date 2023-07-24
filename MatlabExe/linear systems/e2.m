clear all
close all
clc
disp('***********************************************')
disp('*****************exercise_3_2*****************')
disp('***********************************************')

n = 100;  
for i = 1:n  % double cycle to define A
    for j = 1:n
        A(i,j) = i*max([i j]);
    end
end
determinante = det(A) % computes the determinant of the matrix to verify that it is invertible
[L,U,P] = lu(A);
inverse_c = inv(U)*inv(L)*P;  % computes the inverse of A using the factors P,L,U
inverse = inv(A);  % computes the inverse of A using MATLAB's inv command
err = norm(inverse-inverse_c,inf)/norm(inverse,inf) % computes the associated relative error in norm infinity
% the two inverse_c and inverse matrices are numerically equivalent,
% since the relative error (normally infinite) is approximately equal to or lower 
% of machine accuracy

disp('**********************************************END EXERCISE**********************************************')
pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%