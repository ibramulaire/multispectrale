function II= Erosion(I,els,afficher)
[m, n] = size(I);


II=I;

[vois,on,cpt]=element1(els);

for l=2:m-1
    for c=2:n-1      
         match=true;
         if(I(l,c)==0) 
            if(on)
                for r=1:cpt-1
                    [x,y]=corres(vois(r,1),vois(r,2),l,c);
                    if(I(x,y)~=0)
                        match=false;
                        break
                    end

                end
            end
            if(match==false)
                II(l,c)=1;
            end
         end
    end
end
if(afficher==true)
figure;
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(II);
subplot(1, 3, 3);
imshowpair(I,II);

end
end