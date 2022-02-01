clear variables;
clc;

i = complex(0,1);

nue= 20000;
nu1=2625;
nu2=7280;
nu3=10000;

f1=nu1/nue;
f2=nu2/nue;
f3=nu3/nue;

z1=exp(2*i*pi*f1);
z2=conj(z1);
z3=exp(2*pi*i*f2);
z4=conj(z3);
z5=exp(2*pi*i*f3);

zeros=[z1,z2,z3,z4,z5]

P = poly(zeros);

G = 1/sum(P);

%B = P/((1-z1).*(1-z2)*(-z3).*(1-z4).*(1-z5));

A=1;
N= 512;
k=0:1:5;
f=0:1/N,1-1/N;

[H,F]=freqz(P);

subplot(2,2,1)
zplane(zeros')

subplot(2,2,2)
stem(k,P)

subplot(2,2,3)
plot(F,20*log10(abs(H)))


subplot(2,2,4)
plot(F,unwrap(angle(H)))












