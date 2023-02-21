function II= fermeture(I,els,afficher)



II=Dilatation(I,els,false);
II=Erosion(II,els,false);


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