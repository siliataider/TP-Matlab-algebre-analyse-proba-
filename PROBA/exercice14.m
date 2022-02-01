close all;
clear variables;

N = 50000;
a = -2;
b = 3;


figure (1);
hold on;

% empirique
X = (b-a)*rand(1,N) + a; %on tire N fois un nombre aléatoire compris entre -2 et 3
n = 70; %le nombre de classes
[h, xout]= hist(X,n);
bar (xout, h/(N*(b-a)/n), 'y');
xlabel ('x (valeurs de X) ');
ylabel ('Densité de probabilité');
title ('Simulation de la loi uniforme sur l intervalle [-2,3]')
ylim([0,1]);

E_emp = mean(X)
sigma_emp = std(X)

% théorique
x = a:0.1:b;
f = (1/(b-a))*ones(1,length(x));
plot (x,f, 'linewidth', 3, 'color', [1,0,0]);
legend ('empirique', 'theorique');

E_th = (a+b)/2
sigma_th = sqrt( ((b-a).^2 -1)/12 )




