clc
clear all
close all

fileID = fopen('entradaajustealunos.txt');
Xp = textscan(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f');
Xp = cell2mat(Xp);
fclose(fileID);

fileID = fopen('saidaajustealunos.txt');
Yp = textscan(fileID,'%f');
Yp = cell2mat(Yp);
fclose(fileID);

fileID = fopen('entradaajusteteste.txt');
Xt = textscan(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f');
Xt = cell2mat(Xt);
fclose(fileID);

Yt = treinada(Xt')';
save('exemplosubmissaomlp_90688.txt','Yt','-ascii')

Ypt = treinada(Xp')';
plot(Yp); hold on; plot(Ypt)
A = immse(Yp,Ypt);
B = corrcoef(Yp,Ypt);
C = immse(Yp,round(Ypt));
D = corrcoef(Yp,round(Ypt));
disp(A)
disp(C)
disp(B(1,2))
disp(D(1,2))

