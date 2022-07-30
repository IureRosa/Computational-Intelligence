clc 
clear all
close all

%% 1 degrau

load('p8_1d.mat')

R = degrau.Data;
T = degrau.Time;


figure
plot(T,R(:,1)); hold on
plot(T,R(:,2))
plot(T,R(:,3))

title('Resposta')

xlabel('Tempo (s)')
ylabel('Saída (u)')
legend('Degrau','PID','Fuzzy','Location','southeast')

%% rampa

load('p8_1r.mat')

R = rampa.Data;
T = rampa.Time;


figure
plot(T,R(:,1)); hold on
plot(T,R(:,2))
plot(T,R(:,3))

title('Resposta')

xlabel('Tempo (s)')
ylabel('Saída (u)')
legend('Degrau','PID','Fuzzy','Location','southeast')


%% 2

load('p8_2.mat')

R = insta.Data;
T = insta.Time;


figure
plot(T,R(:,1)); hold on
plot(T,R(:,2))

title('Resposta')

xlabel('Tempo (s)')
ylabel('Saída (u)')
legend('Degrau','Resposta','Location','southeast')
