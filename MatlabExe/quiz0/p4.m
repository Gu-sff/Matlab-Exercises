clear all
clc

f = @(x) x.*(exp(x));
z = linspace(0,1,100);
n = 3;
n9 = 9;
ti  = -cos(((1:n+1)-1)*pi/n);
ti9  = -cos(((1:n9+1)-1)*pi/n9);
x = 1/2 *ti + 1/2;
x9 = 1/2 *ti9 + 1/2;
y = f(x);
y9 = f(x9)
c = polyfit(x,y,n);
c9 = polyfit(x9,y9,n9);
p3 = polyval(c,z);
p9 = polyval(c9,z);

ratio = norm(p9- f(z),inf)/norm(p3-f(z),inf)

