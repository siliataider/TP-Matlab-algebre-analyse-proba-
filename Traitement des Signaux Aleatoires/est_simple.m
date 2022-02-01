function [gamma1, f1, N]=est_simple(x, nd, nf, nfft);

f1 = [0:1/nfft:(1-1/nfft)];

N = nf - nd;
gamma1 = (abs(fft(x,nfft)).^2)/N;

[Gth,Gbiais,f] = sptheo(N,'simple');

figure(2);
hold on;
grid;
plot(f1,10*log10(gamma1),'r',f,Gth,'g',f,Gbiais,'b','LineWidth',2);
axis([0 0.5 -50 10]);
title(['Estimateur simple: affichage de de la mesure, de la DSPM et du biais sur un signal de ',num2str(N),' points']);
legend('DSPM estimee','DSPM theorique','Modelisation');


end
