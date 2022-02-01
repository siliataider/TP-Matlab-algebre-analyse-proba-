function [gamma2, f2] = est_moyenne(x, N, M, nfft);

X = x(1:N);

[gamma2,f2] = pwelch(X,rectwin(M),0,nfft,1,'twosided');

[Gth,Gbiais,f] = sptheo(M,'moyenne','rectwin');

figure(2);
hold on;
grid;
plot(f2,10*log10(gamma2),'r',f,Gth,'g',f,Gbiais,'b','LineWidth',2);
axis([0 0.5 -50 10]);
title(['Estimateur moyenne: DSPM estimee sur ', num2str(nfft), ' points et un signal de ', num2str(N), ' echantillons segmentes en tranches de taille ', num2str(M)]);
xlabel('frequence reduite');
ylabel('amplitude en dB');
legend('DSPM estimee','DSPM theorique','Biais');


end

