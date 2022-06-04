clc
clear all
close all

fileID = fopen('entradasclassalunos.txt');
X = textscan(fileID,'%f %f %f %f %f %f %f %f %f');
X = cell2mat(X);
fclose(fileID);

for ii = 1:length(X(1,:))
    for jj = 1:length(X(:,1))
        if isnan(X(jj,ii))
            X(jj,ii) = 0;
        end
    end
end

fileID = fopen('saidaclassalunos.txt');
Ys = textscan(fileID,'%f');
Ys = cell2mat(Ys);
fclose(fileID);

n = 1;

W = rand(1,length(X(1,:))+1);
Nintera = 100000;
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


fileID = fopen('entradasclassteste.txt');
Xt = textscan(fileID,'%f %f %f %f %f %f %f %f %f');
Xt = cell2mat(Xt);
fclose(fileID);

Yt = RNA(Xt,W(2:end),W(1));

save('submissaoperceptron.txt','Yt','-ascii')




