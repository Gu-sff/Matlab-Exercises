clear all
clc
% avoid cancellation error using tylor 
n = 1:16;
x = 10.^(-n);
f2 = (exp(x)-1)./x

f2_new = 0;
for i = 1:16
    f2_new = f2_new + (x.^(i-1))/factorial(i);
end

rel_err = abs(f2-f2_new)./abs(f2_new);

figure(1)
loglog(x,rel_err,'r-*')
