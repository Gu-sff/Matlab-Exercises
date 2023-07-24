clear all
close all
clc

a = -5;
b = 5;
f = @(x) 1./(1+x.^2);
z = linspace (a,b);

for n= [5 9 13]

    x = linspace(a,b,n+1);
    y = f(x);
    c = polyfit(x,y,n);
    p = polyval(c,z)
    plot(x,y,'ro',z,f(z),'b',z,p,'r')
    pause
end


disp('***********************************************')
disp('*****************exercise_2_1*****************')
disp('***********************************************')

% interval limits
a = -5;
b = 5;

%function definition
f = @(x) 1./(1+x.^2); 
xplot = linspace(a,b);
f_xplot = f(xplot); %evaluate f
for n = 5:4:13
   x=linspace(a,b,n+1); %equally-spaced nodes
   %t = -cos((2*(1:n+1)-1)*pi/(2*(n+1))); x = (b-a)/2*t+(b+a)/2; % Chebyshev  (uncomment to use these nodes)
  
   y = f(x);  %evaluate f at nodes
   c = polyfit(x,y,n);  %polynomail inteprolation
   p = polyval(c,xplot);  %evaluate polynomial 
   plot(xplot,p,'b',xplot,f_xplot,'r',x,y,'ko','linewidth',3) %plotting
   pause
end

disp('********************************************** END **********************************************')





   

