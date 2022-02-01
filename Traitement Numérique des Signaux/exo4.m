%% Question 1 
[t,x,K]=exercice2(8,271,25,5,1147,38,-10.12*10^-3,10.12*10^-3,5000);

figure(1);
stem(t,x);

%% Question 2
N=512;
zero=zeros(1,N-K);
y=[x(floor(K/2)+1:K),zero,x(1:floor(K/2))];
k=-length(y)/(2*5000):1/5000:length(y)/(2*5000)-1/5000;

figure(2);
stem(k,y)

%% Question 3
Y= fft(y,N);

%% Question 4 
nu=0:(5000/N):(5000-5000/N);

figure (3)

subplot(4,1,1)
plot(nu,real(Y))

subplot(4,1,2)
plot(nu,imag(Y))

subplot(4,1,3)
plot(nu,abs(Y))


subplot(4,1,4)
plot(nu,angle(Y))
