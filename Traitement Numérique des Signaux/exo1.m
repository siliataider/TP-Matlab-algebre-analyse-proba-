
%question 1:
function [k,s,S]=exo1(M)
k= 0:1:M-1;
s=(0.91).^k;

figure(1)
stem(k,s);
xlabel('séquence s[k]')
ylabel ('Amplitude')
%TFD 2048 Points
n= 0:1:2047;
S=fft(s,2048);


% figure(2)
% stem(n,S);



