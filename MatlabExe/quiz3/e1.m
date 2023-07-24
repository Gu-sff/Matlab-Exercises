clear all
clc

x = linspace(1,2,6);
A = vander(x)
norm(A,2)
