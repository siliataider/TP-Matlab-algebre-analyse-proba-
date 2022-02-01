clear all;
clc;

%analyse du signal initial 

[signal3,nue]=audioread('signal3.wav'); %lecture du signal
%soundsc(signal3,nue); %ecoute du signal

dynamique_affichage = 70;

figure(1);
sgram(signal3,nue,dynamique_affichage,1) %tracé du spectrogramme avec la fonction fourniE "sgram"

%on realise un filtre passe bas de frequence de coupure fc=2.8Khz pour eliminer les hautes frequences
%correspondant au bruit

%[0,2900] message
%[2900;6500] bruit

%synthese de filtres RIF


M=50;
fc = 2900; %frequence en hertz
wn=2*fc/nue; %frequence reduite
fenetre = rectwin(M+1);
filtre_rectangulaire=fir1(M,wn,fenetre);
[H_rect,w_rect]=freqz(filtre_rectangulaire,1,1024,nue);

figure(2);
%Diagramme pôle-zéro
subplot(2,2,1)
zplane(roots(filtre_rectangulaire))
xlabel('Partie réelle');
ylabel('Partie imaginaire')
title('Diagramme pôle-zéros du filtre')
 
%Réponse impulsionnelle 
subplot(2,2,2)
k=0:1:M;
stem(k/nue,filtre_rectangulaire);
xlabel('Temps (en ms)')
ylabel('h(t)')
title('Réponse impulsionnelle du filtre')
 
%Module du gain complexe 
subplot(2,2,3)
plot(w_rect,20*log10(abs(H_rect)))
xlabel('Fréquence (en Hz)')
ylabel('Amplitude (dB)')
title('Module du gain complexe')
 
%Phase du gain complexe
subplot(2,2,4)
plot(w_rect,unwrap(angle(H_rect)))
xlabel('Fréquence (en Hz)')
ylabel('Phase (rad)')
title('Phase du gain complexe')

%on remarque que la phase est linéaire dans la bande passante
%jusqu'à 1600hz

%synthese avec filtre blackman

fenetre_blackman=blackman(M+1);
filtre_blackman=fir1(M,wn,fenetre_blackman);
[H_b,w_b]=freqz(filtre_blackman,1,1024,nue); %gain
 
figure(3);
 
subplot(2,2,1);
zplane(roots(filtre_blackman));
xlabel('Partie réelle');
ylabel('Partie imaginaire');
title('Diagramme pôle-zéro');
 
%Réponse impulsionnelle
subplot(2,2,2);
k=0:1:M;
stem(k/nue,filtre_blackman);
xlabel('Temps (en ms)');
ylabel('h(t)');
title('Réponse impulsionnelle du filtre');

%Module du gain complexe 
subplot(2,2,3);
plot(w_b,20*log10(abs(H_b)));
xlabel('Fréquence (en Hz)');
ylabel('Amplitude (dB)');
title('Module du gain complexe');
 
%Phase du gain complexe
subplot(2,2,4);
plot(w_b,unwrap(angle(H_b)));
xlabel('Fréquence (en Hz)');
ylabel('Phase (rad)');
title('Phase du gain complexe');

figure(4);
plot(w_rect,(abs(H_rect)),w_b,(abs(H_b)));
grid
title('Hr(f)');
xlabel('f');

%filtre rectangulaire
%fa= 3500
%fp= 2100
%delta a = 0.02
%-delta a = 0

%filtre de blackman
%fa= 3100
%fp= 2750
%delta a = 0.09
%-delta a = 0.05

A=1;

filtre_rect=filter(filtre_rectangulaire,A,signal3);
soundsc(filtre_rect,nue);
figure(5);
sgram(filtre_rect,nue,dynamique_affichage,5)


filtre_b=filter(filtre_blackman,A,signal3);
%soundsc(filtre_b,nue);
figure(6);
sgram(filtre_b,nue,dynamique_affichage,6);














