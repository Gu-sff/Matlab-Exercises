clear all
close all
clc

%interpolating data
%to compute and to graphically
% represent the polynomial interpolating the data 
% (0, 1), (1, −1), (2, 1), (1/2, 2).
x = [0 1 2 1/2];
y = [1 -1 1 2];
c = polyfit(x,y,3);% n , n+1 points
z = linspace(2,0); % max(x),min(x)
p = polyval(c,z);
plot(x,y,'ro',z,p,'b')

%interpolating a function
%to compute the coefficients of the
%polynomial of degree 5 and 11 interpolating the function f (x) = x sin x 
% at equispaced points in [0, 2π] (extrema included).
f = @(x) x.*sin(x);
z = linspace(0,2*pi);
for n = [5 11]
x = linspace(0,2*pi,n+1);
y = f(x);
c = polyfit(x,y,n);
p = polyval(c,z);
plot(x,y,'ro',z,f(z),'r',z,p,'b')
pause
end

%Using Chebyshev nodes
f = @(x) 1./(1+x.^2);
a = -5;
b = 5;
z = linspace(a,b,1000);
for n = [9 13]
t = -cos((2*[1:n+1]-1)*pi/(2*(n+1)));
x = (b-a)/2*t+(b+a)/2;
y = f(x);
c = polyfit(x,y,n);
p = polyval(c,z);
plot(z,f(z),'r',z,p,'b',x,y,'go')
hold on
legend('function','polynomial','dat')
end

%Compute and graphically represent the polynomial and the 
%"not-a-knot”cubic spline interpolating the Runge function 
% at 15 Chebyshev nodes defined in
% interval [−5, 5].
f = @(x) 1./(1+x.^2);
a = -5;
b = 5;
z = linspace(a,b,1000);
n = 14;
t = -cos((2*[1:n+1]-1)*pi/(2*(n+1)));
x = (b-a)/2*t+(b+a)/2;
y = f(x);
c = polyfit(x,y,n);
p = polyval(c,z);
s = spline(x,y,z);
plot(z,f(z),'r',z,p,'b--',z,s,'k:',x,y,'go')
legend('function','polynomial','spline','data')