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
figure;
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(II);
subplot(1, 3, 3);
imshowpair(I,II);

end
end