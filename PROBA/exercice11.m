clear variables

jeu = 1;

switch jeu
    case jeu == 1
        %jeu A
        
        n = 4;
        six = 0;
        for i = n
            y = LancerDeSixFaces(i);
            if y == 6
                six = six + 1;
            end
            i = i+1;          
        end  
        [h, xout]=hist(y,1:6);
        bar(xout,h);
        p = six/4
        
    case jeu == 2
        %jeu B
        
        n = 24;
        for i = n
            y = LancerDeSixFaces(i)
            for j = n
                y = LancerDeSIxFaces(j)
            end
        end   
        [h, xout]=hist(y,1:6);
        bar(xout,h);
        
end    
    

 

