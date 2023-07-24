clear all
clc

x = pi/4;
k = 1:50;
h = 2.^(-k);
r = (sin(x+h)-sin(x))./h;
rel_err = abs(r-cos(x))/abs(cos(x));

figure(1)
loglog(h,rel_err,'r-*')

r2 = (2*cos(x+h/2))./h;
rel_err2 = abs(r2 - cos(x))/abs(cos(x));

figure(2)
loglog(h,rel_err2,'b-*')