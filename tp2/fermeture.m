function II= fermeture(I,els,afficher)


if(afficher==true) 
figure

imshow(I);
title(strcat('Image de base '));
end

II=Dilatation(I,els,false)
II=Erosion(II,els,false)
if(afficher==true)
figure

imshow(II);
title(strcat('Image  fermer '))

end


end