clear all
close all
clc
disp('***********************************************')
disp('*****************exercise_2_2*****************')
disp('***********************************************')

a = 0;
b = pi;
f = @(x) sin(x); 
%a = -2*pi;
%b = 2*pi;
%f = @(x) 1./(1+x.^2); 
xplot = linspace(a,b);
f_xplot = f(xplot);
for n = 5:5:15
  %equally-spaced
   x = linspace(a,b,n+1); %equally-spaced nodes
   y = f(x);  %evaluate f at nodes
   c1 = polyfit(x,y,n); %polynomail inteprolation
   p1 = polyval(c1,xplot);  %evaluate polynomial 
   err1 = norm(p1-f_xplot,inf)  %uniform norm of the interpolation error (using equally-spaced nodes)
   err1_100 = abs(p1-f_xplot); % interpolation error 
   

  % Chebyshev-Lobatto 
   t = -cos(((1:n+1)-1)*pi/n); % Chebyshev-Lobatto nodes in the interval [-1 1]
   x = (b-a)/2*t+(b+a)/2; % Chebyshev-Lobatto nodes in the interval [a b]
   y = f(x);  %evaluate f at nodes
   c2 = polyfit(x,y,n); %polynomail inteprolation
   p2 = polyval(c2,xplot);  %evaluate polynomial 
   err2 = norm(p2-f_xplot,inf)   %uniform norm of the interpolation error (using Chebyshev-Lobatto nodes)
   err2_100 = abs(p2-f_xplot); % interpolation error 

   figure(1)
   plot(xplot,p1,'b',xplot,p2,'r',xplot,f_xplot,'g',x,y,'ko','linewidth',3)
   legend('equally-spaced','Chebyshev-Lobatto','sin(x)',' interp data')
   figure(2)
   plot(xplot,err1_100,'b',xplot,err2_100,'r','linewidth',3)
   legend('equally-spaced','Chebyshev-Lobatto')
   pause
end
disp('********************************************** END **********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
