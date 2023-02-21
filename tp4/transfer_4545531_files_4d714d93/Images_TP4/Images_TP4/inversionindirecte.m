function res = interpolation(I)

[l, c, can] = size(I)

D=zeros(7,24);
ll=(l/24)
cc=(c/24)

facteur=(l/24)*(c/24)
   line=0;
for rows=1:ll:l-ll
    line=line+1;
    for cols=1:cc:c-cc
        for cann=1:can
            v=double(0.0);
           
            for parl=1:1:ll
                
                for parc=1:1:cc
                    
                
                 v=v+double(I((rows+parl+5),(cols+parc+3),cann));
                end
                
            end
            D(cann,line)=v/facteur;
        end
        
   
       
    end
        
end
  res= D

end