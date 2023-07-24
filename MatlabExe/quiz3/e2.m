clear all
clc
format short e
fe = @(x) 3.*(x.^2).*exp(x) +(x.^3).*exp(x) ;
f = @(x) (x.^3).*exp(x);
n = 9;
z = linspace(0,1,100);
x = linspace(0,1,9);
y = f(x);
fa = fe(0);
fb = fe(1);
s = spline(x,[fa y fb],z);

error = norm(f(z)-s,inf)



