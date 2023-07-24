close all
clear all
clc
disp('***********************************************')
disp('*****************exercise_2_3*****************')
disp('***********************************************')

a = -5;
b = 5;
f = @(x) 1./(1+x.^2); 
xplot = linspace(a,b);
f_xplot = f(xplot);
for n = 6:4:14
    x = linspace(a,b,n);
    y = f(x);
    s = spline(x,y,xplot);
    plot(x,y,'ko',xplot,f_xplot,'r',xplot,s,'b','linewidth',3)
    err = norm(s-f_xplot,inf)
    pause
end    

disp('********************************************** END **********************************************')