function Ieg  =Seuillage(I,val,val2)

[x,y]=size(I);

Isup=I>val;
Iinf=I<val2;
Ieg=Isup==Iinf;
figure;
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(Ieg);
subplot(1, 3, 3);
imshowpair(Ieg,I);