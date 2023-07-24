disp('***********************************************')
disp('*****************exercise_3_4*****************')
disp('***********************************************')

n = 100;
B = diag(10*ones(n,1))+diag(5*ones(n-1,1),1)+diag(-5*ones(n-1,1),-1); 
determinante = det(B)
A = B'*B;  % since B is nonsingular, A is certainly symmetric and positive definite
Kinf = cond(A,inf)
R = chol(A); % computes the Choleski factor R such that A = R'*R
R1 = inv(R);
inversa_c = R1*R1'; % computes the inverse of A using Choleski factorization
inversa = inv(A);   % computes the inverse of A using the inv MATLAB command 
err_inv = norm(inversa-inversa_c,inf)/norm(inversa,inf)
b = sum(A,2); 
y = R'\b;  % solves the system Ax=b with Choleski factorization
x = R\y;
err_sol = norm(ones(n,1)-x,inf)/norm(ones(n,1),inf) %computes the relative error associated with the solution calculated in infinite norm
disp('**********************************************END EXERCISE**********************************************')
pause
