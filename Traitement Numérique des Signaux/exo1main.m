

i=complex(0,1);


%% question1
M=40;
[k,s,S]=exo1(M);

%% question2
N=2048;
deltaf=1/N;
f=-1.5:deltaf:1.5-1/N;
X=1./(1-0.91*exp(-2*i*pi*f));

%% question3

fr=0:deltaf:1-deltaf;  %fréquence réduite

figure(2)
subplot(2,2,1)
plot(fr,real(S),f,real(X))
title('Partie réelle S(f) et X(f)')
xlabel('Fréquence réduite');
legend('partie reelle de S','partie reelle de X') ;

subplot(2,2,2)
plot(fr,imag(S),f,imag(X))
title('Partie imaginaire S(f) et X(f)')
xlabel('Fréquence réduite');
legend('partie imaginaire de S','partie imaginaire de X') ;


subplot(2,2,3)
plot(fr,abs(S),f,abs(X))
title('Module S(f) et X(f)')
xlabel('Fréquence réduite');
legend('module de S','module de X') ;

subplot(2,2,4)
plot(fr,angle(S),f,angle(X))
title('Phase S(f) et X(f)')
xlabel('Fréquence réduite');
legend('phase de S','phase de X') ;

%% question 4
S1= fftshift(S);

fr0=-0.5:deltaf:0.5-deltaf; %fréquence réduite centré sur 0

figure(3)
subplot(2,2,1)
plot(fr0,real(S1),f,real(X))
title('Partie réelle S(f) et X(f)')
xlabel('Fréquence réduite centré sur 0');
legend('partie reelle de S','partie reelle de X') ;

subplot(2,2,2)
plot(fr0,imag(S1),f,imag(X))
title('Partie imaginaire S(f) et X(f)')
xlabel('Fréquence réduite centré sur 0');
legend('partie imaginaire de S','partie imaginaire de X') ;

subplot(2,2,3)
plot(fr0,abs(S1),f,abs(X))
title('Module S(f) et X(f)')
xlabel('Fréquence réduite centré sur 0');
legend('module de S','module de X') ;

subplot(2,2,4)
plot(fr0,angle(S1),f,angle(X))
title('Phase S(f) et X(f)')
xlabel('Fréquence réduite centré sur 0');
legend('phase de S','phase de X') ;


%% question 5
%on refait avec M=40

%on est plus précis