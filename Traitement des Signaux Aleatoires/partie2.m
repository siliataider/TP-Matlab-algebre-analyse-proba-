clear all; close all; clc;

K = 200;

[s,Fs] = audioread('ProtestMonoBruit.wav');
t = 0:1/Fs:(length(s)-1)/Fs;

% Limitation du signal entre 60s et 70s
s_lim = s(60*Fs : 70*Fs);
t_lim = t(60*Fs : 70*Fs);

figure(2);
plot(t_lim,s_lim,'g','LineWidth',1);
grid;
title('Affichage du signal entre [60s 70s]');
xlabel('temps (s)');
ylabel('Amplitude');
ylim([-1.5 1.5]);
xlim([60 70]);

% Estimatiobn de la fonction d autocorrelation
% R vecteur des correlations
% lags vecteur des retards
[R,lags] = xcorr(s_lim,K,'biased');
y = (ones(1,length(lags)))*0.000383475803020668; 

figure(3); 
hold on; 
stem(lags, R, 'or', 'LineWidth', 0.5);
plot(lags, y, 'm', 'Linewidth', 2);
grid;
title('Fonction d autocorrelation estimee');
xlabel('Vecteur des retards [-K K]');
ylabel('Amplitude');

figure(4); 
hold on;
plot(lags ,R , 'LineWidth', 2);
plot(lags, y, 'm', 'Linewidth', 2);
grid;
title('Fonction d autocorrelation estimee');
xlabel('Vecteur des retards [-K K]');
ylabel('Amplitude');






