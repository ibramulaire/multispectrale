function Ieg  =Seuillage(I,val,val2)

[x,y]=size(I)

Isup=I>val;
Iinf=I<val2;
Ieg=Isup==Iinf
figure
imshow(Ieg);