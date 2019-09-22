%% CLEAR SCREEN
clear; 
clc;

%% TAKIING INPUT X AND Y VALUE
X_val = [-1,1,2]';
Y_val =[1,1,3]';
%scatter(X_val,Y_val)
%% solving for least square fitting
% b=c + dt 
% putting yval in b and xval in t
C=ones(3,1);
% appending coloum of 1's in A matrix
A = [C X_val];
whos A
X = pinv((A'*A))*(A')*(Y_val)

%% finding error and line of least square
disp("Eqation of Least Square Line is b= " + X(1,1) +" + "+  X(2,1)+"t" )
error_vector= A*X - Y_val
total_error =norm(error_vector) .^2

