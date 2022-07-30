% anfis genfis1 mam2sug demo non linear system identification

clc
close all
clear all

xn = 1;
yn = 1;

fileID = fopen('entradamodelagemalunos.txt');
Xp1 = textscan(fileID,'%f');
Xp1 = cell2mat(Xp1);
fclose(fileID);

fileID = fopen('entradamodelagemteste.txt');
Xt = textscan(fileID,'%f');
Xt = cell2mat(Xt);
fclose(fileID);

fileID = fopen('saidamodelagemalunos.txt');
Yp = textscan(fileID,'%f');
Yp = cell2mat(Yp);
fclose(fileID);

Xp = tratamento(Xp1,xn,Yp,yn);


 
options = anfisOptions;
options.ErrorGoal = 0.5;

options.EpochNumber = 20;
out_fis = anfis([Xp(1:560,:) Yp(1:560,:)],options);
plot(1:length(Yp),Yp,1:length(Yp),evalfis(Xp,out_fis));
legend('Training Data','anfis Output');

save('fis2.mat', 'out_fis');

