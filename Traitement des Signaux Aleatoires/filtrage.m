clear all;
close all;
clc;

%filtrage passe bas avec BPF.m
Pb = 5;
T = 100;
sigma_B = sqrt(5);
Fs = 500;
Band = 160;
moy_B = 0;
Dnu = 16;
F0 = 100; % = no0
order = 6;


Bp = struct('sigma',sigma_B,'Fs',Fs,'B',Band,'T',T);
[B,Bp] = CGN(Bp);

Fp = struct('Fs',Fs,'F0',F0,'Dnu',Dnu,'order',order,'class','BP filter');
[Y,Fp] = BPF(B,Fp);

% mesure des parametres du signal filtre
moy_Y = mean(Y.data)
sigma_Y = std(Y.data)


