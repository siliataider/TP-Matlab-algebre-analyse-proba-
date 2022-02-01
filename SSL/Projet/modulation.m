close all;
clear variables; 
Fe = 96000;
T = 5;
fp = 21000;
Fc = 3000;


nomDuFichier = 'signal014.wav';

if nomDuFichier ~= 'signal013.wav'
    %Enregistrement
    [nomfic,z,t] = RecordModulation(Fe,T);

else
    z = audioread('signal013.wav');
    N=length(z);
    t=(0:N-1)/Fe;
    
end    
%Spectre avant filtrage
[Z,f] = TransFourier(z,t);
dseZ = abs(Z);
figure(1);

subplot(2,1,1)
plot(t,z)
title('Signal enregistré')

subplot(2,1,2)
plot(f,dseZ)
title('Spectre du signal enregistré');

%Filtrage
[s]=PasseBas(z,Fe,Fc);

%Spectre après filtrage
[S,f] = TransFourier(s,t);

%Densité spectrale d'énergie
dseS = abs(S);
figure(2);

subplot(2,1,1)
plot(t,s)
title('Signal filtré')

subplot(2,1,2)
plot(f,dseS)
title('Spectre du signal filtré');

%Modulation
smod = s'.*cos(2*pi*fp.*t);

%Spectre après modulation
[Smod,f] = TransFourier(smod,t);
dseSmod = abs(Smod);
figure(3);

subplot(2,1,1)
plot(t,smod)
title('Signal modulé')

subplot(2,1,2)
plot(f,dseSmod)
title('Spectre du signal modulé');

save('signal_module.mat','smod');

sound(smod,Fe);
