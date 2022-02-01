function y=LoiUniforme(n)
y=randi(n)
end 

function x=LoiBernouilli(p)
test=rand
if test>p
    x=1
else
    x=0
end    
end

function nbSucces=LoiBinomiale(n,p)
nbsucces=0
for k=i:n
    succes=LoiBernouilli(p)
    if succes==1
        nbsucces=nbsucces+1
    end
end
end

function n=LoiGeometrique(p)

