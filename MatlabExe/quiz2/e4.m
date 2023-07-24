clear all
clc
format short
f = @(x) exp(2.*x) - exp(3.*x);
n = 6;
z = linspace(-2,1,14);
x = linspace(-2,1,14);
y = f(x);
c = polyfit(x,y,n)
p = polyval(c,z)
p = polyval(c,0)