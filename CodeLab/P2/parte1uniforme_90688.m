clc
close all
clear all

N = 1000; %numero de pontos

Vx = 10;   %variancia de x
Mx = 10;    %media de x
Vy = 20;    %variancia de y
My = 20;    %media de y

ax = (2*Mx-sqrt(12*Vx))/2;  %obten��o do coeficiente de menor valor da ditribui��o de x
bx = (2*Mx+sqrt(12*Vx))/2;   %obten��o do coeficiente de maior valor da ditribui��o de x
ay = (2*My-sqrt(12*Vy))/2;   %obten��o do coeficiente de menor valor da ditribui��o de y
by = (2*My+sqrt(12*Vy))/2;   %obten��o do coeficiente de maior valor da ditribui��o de y

x = ax+(bx-ax)*rand(1,N);    %distribui��o linear de x
y = ay+(by-ay)*rand(1,N);    %distribui��o linear de y

plot(x,y,'.')

xlabel('x')
ylabel('y')
title('Distribui��o uniforme')

dxy = DXY(x,y);
disp(dxy)

