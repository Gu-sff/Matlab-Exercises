clear all
clc

f = @(x) exp(-x.^2).*sin(x);
x = linspace(0,1,10);
plot(x,f(x))