close all;
clear variables;


N=50000;
X=-log(1-rand(1,N)); 
Y=(-log(1-rand(1,N)))/2; 

U=X+2*Y;

n=50;% nbr classes

[h,xout]=hist(U,n);

bar(xout,h/(N*((xout(end)-xout(1))/n)));


% esperance
E_emp=mean(U)

% ecart type
V_emp=(std(U))^2

% loi théorique
x=0:0.1:16;
f=x.*exp(-x);
E=2;
V=2;
hold on;
plot(x,f,'r', 'linewidth', 3)
legend('empirique','théorique');