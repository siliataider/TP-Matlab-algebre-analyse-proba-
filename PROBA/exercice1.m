N = 10000;
ecart_theo = 3;
mu_theo = 4;

U1 = rand(1,N);
U2 = rand(1,N);

% TD
X = sqrt(-2*log(U1)).*cos(2*pi*U2);
Y = sqrt(-2*log(U1)).*sin(2*pi*U2);

figure(1); 
plot(X,Y, '*r');
grid;

a = min(X);
b = max(X);

c = min(Y);
d = max(Y);

n=50;

% simulation Box Muller X
figure(2);
hold on;
[hx, xout] = hist(X, n);
bar(xout, hx/(N*(b-a)/n));
grid;

% densité théorique X
%f= (1/(ecart_theo.sqrt(2*pi)))*exp(-(X-mu_theo).^2/(2*ecart-theo.^2));
%plot(xout, f);

% simulation Box Muller X
figure(3);
[hy, yout] = hist(Y, n);
bar(yout, hy/(N*(c-d)/n));
grid;






