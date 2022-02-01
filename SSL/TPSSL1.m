clear
clc


N=2000;
D=5;
t= linspace(-D,D,N+1)


T=2;
p = (t>=-T/2 & t<T/2);
plot(t,p,'linewidth',2)

%load('TansFourier.m')

[P,f] = TransFourier(p,t);