clear all
clc

format long e

i = 1;
ord = 5:5:15;

for n = ord 
    A = hilb(n);
    B = sum(A,2);
    k(i) = cond(A,inf);
    x = A\B;
    u = ones(n,1);
    err(i)= norm(u - x ,inf)/norm(u,inf);
    i = i + 1;
end

[ord' err' k']
