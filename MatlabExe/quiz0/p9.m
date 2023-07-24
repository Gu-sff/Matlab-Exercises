clear all
clc

f = @(x) 1 + (x.^2).*log(2+x);
x = [0.3 0.6 0.9 1.2 1.5];

y = f(x);
z = linspace(0.3,1.5);
c = polyfit(x,y,4);

p = polyval(c,3);


norm(f(3)-p,inf)
