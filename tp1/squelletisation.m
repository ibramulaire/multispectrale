function II= squelletisation(I,els,afficher)
[m, n] = size(I);

temp=ones(m+2,n+2);

for rows=1:m
    for cols=1:n
        
        temp(rows+1,cols+1) = I(rows,cols);
    end
end
I=temp;
[m, n] = size(I);

if(afficher==true) 
figure

imshow(I);
title(strcat('Image de base '));
end

[m, n] = size(I);
blanc=ones (m,n);
II=zeros (m,n);
eroder=Erosion(I,els,false);
ouvert=ouverture(eroder,els,false);
if(blanc==eroder)
z=0;
else
    z=1;
end

while(z)
  
II=II+imabsdiff(eroder,ouvert);
eroder=Erosion(eroder,els,false);
ouvert=ouverture(eroder,els,false);
%ouvert=Erosion(Erosion(eroder,els,false),els,false);
if(blanc==eroder)
z=0;
else
    z=1;
end


end
if(afficher==true)
figure

imshow(II);
title(strcat('Image squellete uniquement '));
figure

imshowpair(temp,II);
title(strcat('Image de base superposer avec le squellete  '));  

end
end