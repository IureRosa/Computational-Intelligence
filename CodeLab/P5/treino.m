clc
clear all
close all

xn = 3;
yn = 3;
n = 5e-8;

fileID = fopen('entradamodelagemalunos.txt');
Xp = textscan(fileID,'%f');
Xp = cell2mat(Xp);
fclose(fileID);

fileID = fopen('saidamodelagemalunos.txt');
Ys = textscan(fileID,'%f');
Ys = cell2mat(Ys);
fclose(fileID);

X = tratamento(Xp,xn,Ys,yn);

W = (2*rand(1,length(X(1,:))+1)-1);
Nintera = 100000;
intera = 0;
tolerancia = 0.2;
erro = 2*tolerancia;
erromin = inf;

while (tolerancia<erro) && (intera<Nintera)
  Y = ADALINE(X,W(2:end),W(1));
  e = Ys-Y;
  erro = sqrt(mean((e.^2)));
  if erro < erromin
    erromin = erro;
    wmin = W;
  end
  dW = n*e'*[-ones(length(X(:,1)),1) X];
  W = W + dW;
  intera = intera + 1;
  disp(erro)
end


erromin
disp(wmin)

Ysp = teste(Xp,xn,Ys(1),yn,W);

figure
plot(Ysp); hold on; plot(Ys); legend('Estimado','Esperado')

fileID = fopen('entradamodelagemteste.txt');
Xt = textscan(fileID,'%f');
Xt = cell2mat(Xt);
fclose(fileID);

Yt = teste(Xt,xn,Ys(end),yn,W);

save('exemplosubmissaoadaline_90688.txt','Yt','-ascii')

figure
plot(Yt) 

%W = [-0.3280 0.2684 0.0362 -0.0210 0.0165 -0.6325 1.6006];%0.2974 3 3











