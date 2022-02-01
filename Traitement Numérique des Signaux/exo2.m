

function [k,s,S] = exo2(f0,N)

%% Question 1 

%Generation de s[k]
k=0:1:34;
s=cos(2*pi*f0*k);

%Affichage de s[k]
figure(1)
stem(k,s)
title('Affichage de s[k] = cos(2*pi*f0*k) ')
xlabel('indices k')
ylabel('Amplitude')

%Calcul TFD N-points
S=fft(s,N);

%Affichage
Deltaf=1/N;
f=0:Deltaf:1-Deltaf;

figure(2)

subplot(2,2,1)
stem(f,real(S),'.')
title('Partie réelle de S(f)')
xlabel('Fréquence réduite')
ylabel('Amplitude')

subplot(2,2,2)
stem(f,imag(S),'.')
title('Partie imaginaire de S(f)')
xlabel('Fréquence réduite')
ylabel('Amplitude')

subplot(2,2,3)
stem(f,abs(S),'.')
title('Module de S(f)')
xlabel('Fréquence réduite')
ylabel('Amplitude')

subplot(2,2,4)
stem(f,angle(S),'.')
title('Phase de S(f)')
xlabel('Fréquence réduite')
ylabel('Amplitude')