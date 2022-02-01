clear variables

n = 5000;
N=8;
x=[];
y=[];
vectx=[];
  
for k=1:n
    a=randi(N);
    b=randi(N);
    
    while(a==b)
        b=randi(N)
    end    
    if a<b
        x(k)=a;
        y(k)=b;
    else a>b
        x(k)=b;
        y(k)=a;
%     else
%         x=x;
%         y=y;
    end    
end

for k=1:7
    vectx(k)=((2*(N-k))/(N*(N-1)));
end

esp_emp=mean(x)
esp_theo=(N+1)/3

var=(N.^2-N-2)/18

hold on;
[h, xout]=hist(x,1:N-1);
bar(xout,h/n);
%title('Loi de X')

bar(xout,vectx,0.4,'y');

%figure(2);
%[h, xout]=hist(y,1:8);
%bar(xout,h/n);
%title('Loi de Y')
% [h, xout]=hist(x,1:7);
% bar(xout,h);





