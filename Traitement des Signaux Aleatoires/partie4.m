clear all; close all; clc;

K = 200;
M = 20;

[s,Fs] = audioread('ProtestMonoBruit.wav');
t = 0:1/Fs:(length(s)-1)/Fs;
s_lim = s(60*Fs : 70*Fs);
t_lim = t(60*Fs : 70*Fs);
[R,lags] = xcorr(s_lim,K,'biased');
gamma = R(K:M+K);
vecteur_retards = lags(K:M+K);
G = toeplitz(gamma);
G_inv = pinv(G);
b = [1; zeros(M, 1)];
AR_M = G_inv * b;
sigma = 1/AR_M(1);
h = -AR_M(2:end)/(sigma.^2);

% Prediction lineaire
s_chap = conv(s_lim, h, 'valid');