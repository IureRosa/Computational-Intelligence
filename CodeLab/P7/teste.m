clc
close all
clear all

x = -4:0.01:4;
y = x.^2;

fis = readfis('mamdani_x2.fis');
options = evalfisOptions;
options.NumSamplePoints = 50;
out = evalfis(x,fis,options)';

figure
plot(x,out,x,y)

corrcoef(out,y)

%%


x = 0:0.01:2*pi;
x(1) = eps;

y = sin(x)./x;

fis = readfis('mamdani_sinx.fis');
options = evalfisOptions;
options.NumSamplePoints = 50;
out = evalfis(x,fis,options)';

figure
plot(x,out,x,y)

corrcoef(out,y)
