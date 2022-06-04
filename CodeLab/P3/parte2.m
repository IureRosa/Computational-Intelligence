clc
clear all
close all

% combinações possiveis para o vetor de entrada
x = [0 0;0 1;1 0;1 1];

%% NAND
w = [-1 -1];        %pesos para a porta NAND
b = 1;              %bias para a porta NAND
% w = [-1 -0.5];    %pesos para a porta NAND no segundo caso 
% b = 1.1;          %bias para a porta NAND no segundo caso 
Y = RNA(x,w,b);     %usando a função RNA que é o neurônio 
disp(Y)

%% OR
w = [1 1];          %pesos para a porta NAND
b = -1;             %bias para a porta NAND
% w = [1 2];        %pesos para a porta NAND no segundo caso 
% b = -0.6;         %bias para a porta NAND no segundo caso 
Y = RNA(x,w,b);     %usando a função RNA que é o neurônio 
disp(Y)

%% XOR
% não é possivel
