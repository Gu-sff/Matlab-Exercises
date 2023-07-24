clear all
clc

f = @(x) x.^3 - 3.*x + 1;
z = linspace(0,1);
n = 7;
x = linspace(0,1,n+1);
y = f(x);
c = polyfit(x,y,n)

p = polyval(c,z);
