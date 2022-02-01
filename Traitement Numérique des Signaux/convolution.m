function [x,h,yc] = convolution(N, num)

kx = 0:1:10;
kh = 0:1:11;
ky = 0:1:N-1;

x = 6-abs(kx-5);
h = abs(kh-8)-1;

h(1:5)=0;

X=fft(x,N);
H=fft(h,N);

Yc=X.*H;

yc=ifft(Yc);

figure(num);

subplot(3,1,1)
stem(kx,x,'g')
title('Sequence x')

subplot(3,1,2)
stem(kh,h)
title('sequence h')

subplot(3,1,3)
stem(ky,yc,'r')
title('sequence yc')


% for i=0:4
%     h(i)=0;
% end

end 