% question 1

close all;
clear variables;

N = 500000;

Y=rand(1,N);
a=1/log(6);
X= 6.^Y-4; %X=F-1(Y)



figure(1);
hold on;

%simulation
n = 70; % nbr classes
[h, xout] = hist(X, n);
bar (xout, h/(N*(2+3)/n));

E_emp= mean(X)
sigma_emp= std(X)


%loi théorique
x=-3:0.1:2;
f = a./(x+4);
plot(x,f, 'linewidth', 3, 'color', [1,0,0]);

xlabel(' x (valeurs de X)');
ylabel('f(x)');

legend('densite simulee', 'sensite theorique');








