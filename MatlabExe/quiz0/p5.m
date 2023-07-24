clear all
clc

f = @(x) exp(-x.^2) .*(sin(5*x));

z = linspace(-1,1);

plot(f(z),'b')

