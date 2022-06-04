clc
close all
clear all

N = 1000;   %numero de pontos

Vx = 1;       %variancia de x
Mx = 10;      %media de x
Vy = 2;       %variancia de y
My = 20;      %media de y

%usando a função randn para criar um distribuição gaussiana, em seguida
%aplicando a mudança de variancia e da media 
x = Mx+randn(1,N)*sqrt(Vx);    
y = My+randn(1,N)*sqrt(Vy);

plot(x,y,'.')

xlabel('x')
ylabel('y')
title('Distribuição normal')

dxy = DXY(x,y);
disp(dxy)