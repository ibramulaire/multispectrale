I5=imread("Images/5" + ".jpg");
I7=imread("Images/7" + ".jpg");
I9=imread("Images/9" + ".jpg");

R5 = I5(:,:,1);
G5 = I5(:,:,2);
B5 = I5(:,:,3);

R7 = I7(:,:,1);
G7 = I7(:,:,2);
B7 =I7(:,:,3);

R9 = I9(:,:,1);
G9 = I9(:,:,2);
B9 =I9(:,:,3);



figure;
subplot(3, 4, 1);
imshow(R5);
subplot(3, 4, 2)
imshow(G5);
subplot(3, 4, 3);
imshow(B5);
subplot(3, 4, 4);
imshow(I5);

subplot(3, 4, 5);
imshow(R7);
subplot(3, 4, 6)
imshow(G7);
subplot(3, 4, 7);
imshow(B7);
subplot(3, 4, 8)
imshow(I7);

subplot(3, 4, 9);
imshow(R9);
subplot(3, 4, 10)
imshow(G9);
subplot(3, 4, 11);
imshow(B9);
subplot(3, 4, 12);
imshow(I9)


IBNcontraster=egalisation(I);
IBNcontraster=inversion(IBNcontraster);
Is=Seuillage(IBNcontraster,21,255);
figure;
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(IBNcontraster);
subplot(1, 3, 3);
imshow(Is);
