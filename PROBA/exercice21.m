x = 0:0.01:1;
y = sqrt(1-x.^2);
plot(x,y); hold on;
axis equal;

n=1000;
cpt=0;

for k=1:n
    p = rand(2,1);
    if norm(p)<=1
        plot(p(1),p(2),'*g')
        cpt = cpt + 1;
    else
        plot(p(1),p(2),'*r')
    end
end    