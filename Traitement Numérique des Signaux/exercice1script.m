[k1,s1]=exercice1(2,1/34,0,0,26);
[k2,s2]=exercice1(-4,1/13,-pi/2,-13,13);
[k3,s3]=exercice1(1,6/32,pi/4,-10,10);
[k4,s4]=exercice1(1,1/(2*sqrt(23)),-pi/2,0,50);

figure;
subplot(4,1,1);
stem(k1,s1);
subplot(4,1,2);
stem(k2,s2);
subplot(4,1,3);
stem(k3,s3);
subplot(4,1,4);
stem(k4,s4);