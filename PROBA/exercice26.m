close all;
clear variables;

N=50000; % nbr experiences
n=70; % nbr classes

% loi de X
X=1+rand(1,N); %loi uniforme sur 1-2

% loi de Y 
Y=1+rand(1,N); %loi uniforme sur 1-2

figure(1)
subplot(2,2,1)

[h,xout]=hist(X,n);
bar(xout,h/(N*((xout(end)-xout(1))/n)));
xlabel('loi uniforme sur [1,2]');

% loi de S
S=X+Y;

[h,xout]=hist(S,n);

hold on;
subplot(2,2,2)

bar(xout,h/(N*((xout(end)-xout(1))/n)));

ES_emp=mean(S)
VS_emp=std(S)

% loi théorique de S
s1=2:0.01:3;
s2=3:0.01:4;

S_th1=s1-2;
S_th2=4-s2;

hold on;
plot(s1,S_th1,'b',s2,S_th2,'b', 'linewidth', 3, 'color', [1,0,0])
legend('empirique','théorique');
xlabel('S=X+Y');

% loi de P

P=X.*Y;

[h,xout]=hist(P,n);

hold on;
subplot(2,2,3)

bar(xout,h/(N*((xout(end)-xout(1))/n)));

EP_emp=mean(P)
VP_emp=std(P)


%loi théorique de P
p1=1:0.01:2;
p2=2:0.01:4;

P_th1=log(p1);
P_th2=2*log(2)-log(p2);

hold on;
plot(p1,P_th1,'b',p2,P_th2,'b', 'linewidth', 3,'color', [1,0,0] )
legend('empirique','théorique');
xlabel('P=X.Y');

%loi de Q

Q=X./Y;

[h,xout]=hist(Q,n);

hold on;
subplot(2,2,4)

bar(xout,h/(N*((xout(end)-xout(1))/n)));

EQ_emp=mean(Q)
VQ_emp=std(Q)

%loi théorique de Q

q1=1/2:0.01:1;
q2=1:0.01:2;

Q_th1=2-1./(2.*(q1).^2);
Q_th2=2./(q2.^2)-1/2;

hold on;
plot(q1,Q_th1,'b',q2,Q_th2,'b', 'linewidth', 3, 'color', [1,0,0])
legend('empirique','théorique');
xlabel('Q=X/Y');