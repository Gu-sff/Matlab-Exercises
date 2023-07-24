disp('***********************************************')
disp('*****************exercise_3_5*****************')
disp('***********************************************')

clear all
format short e
% defines a counter i, which is incremented by one
% at each step, to store in K2(i), err1(i) and err2(i)
% the number of conditioning and errors calculated at each step

i = 1;
for n = 1000:1000:5000   % other values of n that can be used are n = 100:100:500%
    A = rand(n);
    K2(i) = cond(A);
    b = sum(A,2);
    tic  % calculates the computation time of the solution of Ax = b using PA=LU method
    [L,U,P] = lu(A);
    y = L\(P*b);
    x = U\y;
    err1(i) = norm(ones(n,1)-x)/norm(ones(n,1));  %computes the relative error associated with the solution in norm 2
    t1 = toc;
    tic  % calculates the computation time of the solution of Ax = b using A=QR method
    [Q,R] = qr(A);
    x = R\(Q'*b);
    err2(i) = norm(ones(n,1)-x)/norm(ones(n,1));   %computes the relative error associated with the solution in norm 2
    t2 = toc;
    rapporto(i) = t2/t1; % computes the ratio of the calculation time of the two procedures
    i = i+1;
end
[K2' err1' err2' rapporto']  % prints the table of computed values

% for large n the calculation times t1 of the first procedure are less than
% those t2 of the second procedure. Therefore, ratio(i) > 1 for all i
disp('**********************************************END EXERCISE**********************************************')
pause