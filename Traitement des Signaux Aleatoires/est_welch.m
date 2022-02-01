function [gamma3, f3] = est_welch(x,N,Nom_fenetre,M,NOVERLAP,nfft)
    
    X = x(1:N);
    [Gth,Gbiais,f] = sptheo(M,'welch',Nom_fenetre);
    eval(['WIN = ',Nom_fenetre,'(M);']);
    [gamma3,f3]=pwelch(x,WIN,NOVERLAP,nfft,1,'twosided');

    figure(1);
    plot(f3,10*log10(gamma3),'r',f,Gth,'b',f,Gbiais,'g','LineWidth',2);
    axis([0, max(f),-50,10]);
    title(['Estimateur de welch: DSPM estimee sur FFT =',num2str(nfft), ' points ; Signal de ',num2str(N), ' echantillons segmentes en tranches de',num2str(M), ' echantillons ; fenetre de type ',Nom_fenetre, ' ; recouvrement de ',num2str(NOVERLAP)]);
    xlabel('frequence reduite');
    ylabel('amplitude en dB');
    legend('Valeur Estime','DSPM theorique','Biais');
    
end

    