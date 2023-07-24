
clear all
close all
clc

disp('***********************************************')
disp('*****************exercise_3_7_Quiz************')
disp('***********************************************')

A=[3 1 2 4; -1 0 7 9; 0 1 2 4; 2 4 1 1];
% Using the elleu function which implements pivoting without exchanges:
[Lns,Uns]=ellu(A);
%Or do the computations by hand!

% Use the MATLAB built-in function lu which instead uses partial pivoting
[Lpiv,Upiv,P]=lu(A);
% Multipliers are in the matrices L

Lns(3,2)*Lpiv(3,2)