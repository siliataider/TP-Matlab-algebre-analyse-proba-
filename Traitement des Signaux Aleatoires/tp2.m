clear all;
close all;
clc;

% 1 = estimateur simple
% 2 = estimateur moyenne
% 3 = estimateur de welch

% seed = 6

question = 1;

switch question
    
    case 1
    
        x = genbrfil();

        nd = 1;
        nf = 5000;
        nfft = 4096;

        [gamma1, f1, N]=est_simple(x, nd, nf, nfft);


    case 2
    
        x = genbrfil();

        N = 4096;
        M = 500;
        nfft = 16383;

        [gamma2, f2]=est_moyenne(x, N, M, nfft);
        
        
     case 3
    
        x = genbrfil();
        N = 10000;
        M = 500;
        nfft = 16384;
        NOVERLAP = 5000;
        
        [gamma3, f3] = est_welch(x,N,'blackman',M,NOVERLAP,nfft);

end





