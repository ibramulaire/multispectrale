I=imread('Images/Fleur.tif');
figure
subplot(2, 2, 1);
imshow(I);

R = double(I(:,:,1));
G = double(I(:,:,2));
B = double(I(:,:,3));
Im=(R+G+B)/3;
subplot(2, 2, 2);
imshow(uint8(Im));
IL=(0.299*R+0.587*G+0.114*B);

subplot(2, 2, 3);
imshow(uint8(IL));
Inative=rgb2gray(I);
subplot(2, 2, 4);
imshow(Inative);

%question 2

IH=imread('Images/house.tif');
IHhsv=rgb2hsv(IH);
figure
subplot(3, 2, 1);
imshow(IH);
subplot(3, 2, 2);
imshow(IHhsv);
subplot(3, 2, 3);
imshow(IHhsv(:,:,1));
subplot(3, 2, 4);
imshow(IHhsv(:,:,2));
subplot(3, 2, 5);
imshow(IHhsv(:,:,3));



%seuillage

Is=imread('Images/house.tif');
[x y z]=size(Is);
figure
subplot(2, 4, 1);
imshow(Is);
Rs = Is(:,:,1);
subplot(2, 4, 2);
imshow(Rs)
Gs = Is(:,:,2);
subplot(2, 4, 3);
imshow(Gs)
Bs= Is(:,:,3);
subplot(2, 4, 4);
imshow(Bs);
subplot(2, 4, 5);
imhist(Is);
subplot(2, 4, 6);
imhist(Rs);
subplot(2, 4, 7);
imhist(Gs);
subplot(2, 4, 8);
imhist(Bs);
FR=Seuillage(Rs,140,190);
FG=Seuillage(Gs,50,120);
FB=Seuillage(Bs,50,120);
Iseuille=immultiply(immultiply(FR,FG),FB)
figure
imshow(Iseuille);
RFacade=uint8( immultiply(Rs,Iseuille));
GFacade=uint8( immultiply(Gs,Iseuille));
BFacade=uint8(immultiply(Bs,Iseuille));
IFacade=uint8(ones(x,y,z));
IFacade(:,:,1)= RFacade;
IFacade(:,:,2)= GFacade;
IFacade(:,:,3)= BFacade;
figure
imshow(IFacade);
%facade bleu



figure
imshow(IFacadeB);


%espace hsv
I=imread('Images/house.tif');
[x y z]=size(I);

Is=rgb2hsv(I);
figure
subplot(2, 4, 1);
imshow(Is);
Rs = Is(:,:,1);
subplot(2, 4, 2);
imshow(Rs)
Gs = Is(:,:,2);
subplot(2, 4, 3);
imshow(Gs)
Bs= Is(:,:,3);
subplot(2, 4, 4);
imshow(Bs);
subplot(2, 4, 5);
imhist(Is);
subplot(2, 4, 6);
imhist(Rs);
subplot(2, 4, 7);
imhist(Gs);
subplot(2, 4, 8);
imhist(Bs);

FG=Seuillage(Gs,0.33,120);
ouverture(fermeture(Seuillage(Gs,0.323,120),[0,1,0;1,1,1;0,1,0],true),[0,1,0;1,1,1;0,1,0],true)
Iseuille=ouverture(fermeture(Seuillage(Gs,0.323,120),[0,1,0;1,1,1;0,1,0],true),[0,1,0;1,1,1;0,1,0],true)
figure
imshow(Iseuille);
RFacade=uint8( immultiply(Rs,Iseuille));
GFacade=uint8( immultiply(Gs,Iseuille));
BFacade=uint8(immultiply(Bs,Iseuille));
IFacade=uint8(ones(x,y,z));
IFacade(:,:,1)= RFacade;
IFacade(:,:,2)= GFacade;
IFacade(:,:,3)= BFacade;
figure
imshow(IFacade);