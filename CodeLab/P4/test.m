clc
clear all
close all

X = [0 0; 0 1; 1 0; 1 1];
Ys = [0 0 0 1]';

n = 1;

W = rand(1,length(X(1,:))+1);
Nintera = 10000;
tolerancia = 1e-3;
intera = 0;

Y = RNA(X,W(2:end),W(1));
e = Ys-Y;
erro = sqrt(mean(e.^2));
dW = n*e'*[-ones(length(X(:,1)),1) X];
W = W + dW;

erromin = 1;
wmin = [];

while (tolerancia<erro) && (intera<Nintera)
    Y = RNA(X,W(2:end),W(1));
    e = Ys-Y;
    erro = mean(e.^2);
    if erro < erromin
        erromin = erro;
        wmin = W;
    end
    dW = n*e'*[-ones(length(X(:,1)),1) X];
    W = W + dW;
    intera = intera + 1;
end


erromin
disp(wmin)


