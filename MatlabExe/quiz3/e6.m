clear all
clc 
format short e
f = @(x)  1./((x.^3) +1);
x = linspace(2,3,9);

y = f(x);
c = polyfit(x,y,8)
