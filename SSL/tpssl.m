clear
clc


N=2000;
D=5;
t= linspace(-D,D,N+1);


T=2;
p = (t>=-T/2 & t<T/2);

subplot(3,1,1);
plot(t,p,'linewidth',2)

%load('TansFourier.m')

[P,f] = TransFourier(p,t);

subplot(3,1,2);
plot(f,real(P))

subplot(3,1,3);
plot(f,imag(P))