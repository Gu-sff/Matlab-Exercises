clear all
clc

f = @(x) sin(x);
z = linspace(0,1,180);
n = 9;
x = linspace(0,1,9);
y = f(x);
s = spline(x,y,z);

error = max(abs(f(z)-s))
