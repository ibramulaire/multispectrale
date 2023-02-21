function II= Dilatation(I,els,afficher)
[m, n] = size(I);

if(afficher==true) 
figure
imshow(I);
title(strcat('Image de base '));
end
II=I;

[vois,on,cpt]=element1(els);

for l=2:m-1
    for c=2:n-1      
      if(I(l,c)==0) 
          if(on)
              for r=1:cpt-1
                    [x,y]=corres(vois(r,1),vois(r,2),l,c);
                    II(x,y)=0;
              end
          end
      end
         
    end
end

if(afficher==true)
figure
imshow(II);
title(strcat('Image dilater '));
end



end