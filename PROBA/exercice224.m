% question 2

clear variables; 
close all;

figure(1);
hold on;

N=100000;% nombre d’expériences
n = 70; % nbr classes

Y1=0.5*rand(1,N);
Y2=0.5*rand(1,N)+0.5;

% x1=(Y1.^2)/8; 
% x2=-(-Y2.^2+8*Y2)/8;

X1 = sqrt(8*Y1);
X2 = -sqrt(8-8*Y2)+4;

X= [X1,X2]; % concaténation des VA X1 et X2

[h,xout]=hist(X,n); % calcul de l’histogramme de X
bar(xout,h/(N*(8-0)/n), 'r');% affichage de l’histogramme de X
xlabel('x')

mu_emp=mean(X)% moyenne empirique
sigma_emp=std(X)% écart type empirique

% loi theorique 
x1=0:0.01:2;
f1=x1/4;
plot(x1,f1,'linewidth', 3, 'color', [0,1,0]);

x2=2:0.01:4;
f2=(4-x2)/4;
plot(x2,f2,'linewidth', 3, 'color', [0,1,0]);

legend('densite theorique', 'simulation');

mu_th= 2.0000
sigma_th= 0.816497




