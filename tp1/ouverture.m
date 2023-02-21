function II= ouverture(I,els,afficher)


if(afficher==true) 
figure

title(strcat('Image de base '));
imshow(I);
end
II=Erosion(I,els,false);
II=Dilatation(II,els,false);

if(afficher==true)
figure

imshow(II);
title(strcat('Image ouvert '));
end

end