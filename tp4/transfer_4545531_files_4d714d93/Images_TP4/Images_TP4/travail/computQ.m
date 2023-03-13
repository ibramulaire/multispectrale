function res = computeQ(I,R)

[l, c, can] = size(I)

D=zeros(24,7);
ll=(l/24)
cc=(c/24)

debux=ll/2
debuy=cc/2

nbcenterligne=3
nbcentercolonne=4

facteur=nbcenterligne*nbcentercolonne*4;
   line=0;
for rows=1:ll:l
    line=line+1
    for cols=1:cc:c
        for cann=1:can
            v=double(0.0);
           
            for parl=debux-nbcenterligne:1:debux+nbcenterligne
                
                for parc=debuy-nbcentercolonne:1:debuy+nbcentercolonne
                    
                
                 v=v+double(I((rows+parl-1),(cols+parc-1),cann));
                end
                
            end
            D(line,cann)=v/facteur;
        end
        
   
       
    end
        
end


  res=(inv(D.'*D) *D.')*R;

end