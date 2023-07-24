clear all
clc

f = @(x) exp(-x.^2).*cos(5.*x);
x = linspace(-1,1,10);
plot(x,f(x))