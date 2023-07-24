clear all
clc

m = magic(432);

A = m + 10*eye(n);
b = sum(A,2);
x = A\b;
nr = norm(b - A.*X,inf)

