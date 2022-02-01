clear all; close all; clc;

K = 200;
M = 20;

[s,Fs] = audioread('ProtestMonoBruit.wav');
t = 0:1/Fs:(length(s)-1)/Fs;

s_lim = s(60*Fs : 70*Fs);
t_lim = t(60*Fs : 70*Fs);

[R,lags] = xcorr(s_lim,K,'biased');

% Calcul de gamma empirique
gamma = R(K:M+K);
vecteur_retards = lags(K:M+K);
% Creation de la matrice de toeplitz
G = toeplitz(gamma); 

% Calcul de la matrice inverse
G_inv = pinv(G);

% Creation d un vecteur colonne 
b = [1; zeros(M, 1)];

% Calcul du module AR(M)
AR_M = G_inv * b;

% Calcule de sigma
sigma = 1/AR_M(1);

% Calcul du vecteur des coeffs h
h = -AR_M(2:end)/(sigma.^2);

% Affichage des coeffs h
figure(5);
stem(h, 'r', 'LineWidth', 2);
grid;
title('Affichage des coefficients du modele AR(M) pour M = 20');
xlabel('Vecteurs de M = 20 points');
ylabel('Coeffs');


