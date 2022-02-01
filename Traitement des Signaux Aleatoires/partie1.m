clear all; close all; clc;

% Lire et ecouter le signal
[s,Fs]= audioread('ProtestMonoBruit.wav') ;
%sound(s,Fs) ; 
t=0:1/Fs:(length(s)-1)/Fs;

% Afficher le signal
figure(1); 
plot(t,s,'r','LineWidth',2);
grid;
title('Affichage du signal ProtestMonoBruit.wav');
xlabel('temps (s)');
ylabel('Amplitude');
ylim([-1.5 1.5]); 
xlim([0 80]);