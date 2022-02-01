clear all; close all; clc;

[s,Fs]= audioread('ProtestMonoBruit.wav') ;
%sound(s,Fs) ;
t=0:1/Fs:(length(s)-1)/Fs;

% figure(1); 
% grid;
% plot(t,s,'r','LineWidth',2);
% title('Affichage du signal ProtestMonoBruit.wav');
% xlabel('temps (s)');
% ylabel('Amplitude');
% ylim([-1.5 1.5]);
% xlim([0 80]);

