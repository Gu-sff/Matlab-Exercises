clear all
clc

f = @(x) x.^3 - 3.*x + 1;
n = 7;
x = linspace(0,1,8);
y = f(x);
c = polyfit(x,y,n)