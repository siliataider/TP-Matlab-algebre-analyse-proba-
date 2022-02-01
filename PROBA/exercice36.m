close all;

clear variables;

% loi uniforme
N=50000;
X=rand(1,N); %loi uniforme 
Y=rand(1,N); %loi uniforme 

Z=min(X,Y);

n=70;
[h,xout]=hist(Z,n);

figure(1)
subplot(2,1,1)

bar(xout,h/(N*((xout(end)-xout(1))/n)));
xlabel('Z pour X,Y suivent loi uniforme');

%theorique
v=0:0.01:1;
fx=1;
Fx=v;

fy=1;
Fy=v;

fz=fx*(1-Fy)+fy*(1-Fx);
hold on;
plot(v,fz,'linewidth', 3,'color', [1,0,0]);
legend('empirique','théorique');

%loi exponentielle
subplot(2,1,2)
X2=-log(1-rand(1,N)); %loi exp
Y2=-log(1-rand(1,N)); %loi exp

Z2=min(X2,Y2);
[h2,xout2]=hist(Z2,n);

bar(xout2,h2/(N*((xout2(end)-xout2(1))/n)));
xlabel('Z pour X,Y suivent loi exp');

%theorique

v2=0:0.01:3;
fx2=exp(-v2);
Fx2=1-exp(-v2);

fy2=exp(-v2);
Fy2=1-exp(-v2);

fz2=fx2.*(1-Fy2)+fy2.*(1-Fx2);
hold on;
plot(v2,fz2,'linewidth', 3,'color', [1,0,0]);
legend('empirique','théorique');

