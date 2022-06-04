clc
close all
clear all

N = 1000;   %numero de pontos

Vx = 1;       %variancia de x
Mx = 10;      %media de x
Vy = 2;       %variancia de y
My = 20;      %media de y

%usando a fun��o randn para criar um distribui��o gaussiana, em seguida
%aplicando a mudan�a de variancia e da media 
x = Mx+randn(1,N)*sqrt(Vx);    
y = My+randn(1,N)*sqrt(Vy);

plot(x,y,'.')

xlabel('x')
ylabel('y')
title('Distribui��o normal')

dxy = DXY(x,y);
disp(dxy)