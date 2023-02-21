function II= ouverture(I,els,afficher)

II=Erosion(I,els,false);
II=Dilatation(II,els,false);

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