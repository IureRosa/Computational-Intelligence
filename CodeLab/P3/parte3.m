clc
clear all
close all

X1 = [18 19 25 40 21 22]';           % idade
X2 = [1 1 0 1 1 0]';                 % sexo M=1 F=0 
X3 = [0 1 0 1 0 1]';                 % casa S=1 N=0 
X4 = [1 1 0 0 0 1]';                 % carro S=1 N=0 
X5 = [0 1 1 1 0 1]';                 % casado S=1 N=0 
X6 = [0 1 2 4 0 2]';                 % filhos
X7 = [1200 700 800 800 1100 500]';   % renda
Ys = [0 1 1 0 1 0]';                 % esperado

x = [X1 X2 X3 X4 X5 X6 X7];

for ii = 1:10^9 % realizando uma variação limitada
    W = (rand(size(x(1,:)))-0.5)*10;% definindo um vetor aleatorio com os pesos
    Y = RNA(x,W,0);  %usando a função RNA que é o neurônio usando bias 0
    if all(Ys==Y)  %Confere se todas as respostas estão corretas 
        disp(W)    %faz um print na janela de comando dos pesos
        break      %finaliza o for
    end
end
%% pesos encontrados para o bias 0
%W = [ 0.3695  1.3858 -4.3264  0.4562 4.6624 -2.9365 -0.0073];
%W = [-0.4777 -2.0954  4.5414 -4.3321 3.2964  0.4440  0.0122];
%W = [ 0.1970 -2.4562  3.5642 -4.2704 3.6946 -4.8056  0.0015];
%W = [-0.0295 -0.0192 -1.7612 -1.3601 3.8660 -0.5663  0.0007];
%W = [ 0.1603  1.612  -1.7092 -1.2800 2.4966 -1.9955 -0.0027];
%W = [-0.2412 -1.0327  3.8743 -4.0593 4.7738 -1.6456  0.0057];

%% teste com dados de 3 individuos
X1 = [18 25 22]';              % idade
X2 = [1 1 0]';                 % sexo M=1 F=0 
X3 = [0 1 0]';                 % casa S=1 N=0 
X4 = [0 0 1]';                 % carro S=1 N=0 
X5 = [0 1 1]';                 % casado S=1 N=0 
X6 = [0 1 0]';                 % filhos
X7 = [800 600 500]';          % renda
x = [X1 X2 X3 X4 X5 X6 X7];

W = [ 0.3695  1.3858 -4.3264  0.4562 4.6624 -2.9365 -0.0073]; %peso(1)
Y = RNA(x,W,0)  % resposta dos 3 casos para o peso (1)
W = [-0.2412 -1.0327  3.8743 -4.0593 4.7738 -1.6456  0.0057]; %peso(2)
Y = RNA(x,W,0)   % resposta dos 3 casos para o peso (2)





