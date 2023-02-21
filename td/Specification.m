function   Specification(I,I2,p)
[m, n, can] = size(I)  % m=nb lignes, n=nb colonnes, 
[m1, n2, can2] = size(I2)  % m=nb lignes, n=nb colonnes, 

if(can > 1)
    I =double( rgb2gray(I));    % si l’image est en couleur, la transformer en NG
end

if(can2 > 1)
    I2 =double( rgb2gray(I2));    % si l’image est en couleur, la transformer en NG
end

figure


imshow(I);
title(strcat('Image de base I1'));

subplot(4, 2, 2);

imshow(I2);
title(strcat('Image de base I2'));

subplot(4,2,3);
imhist(I);
title(strcat('Histogramme de I1'));
subplot(4,2,4);
imhist(I2);
title(strcat('Histogramme de I2'));

matc=histcum(I);
matc2=histcum(I2);

subplot(4,2,5);

x = double(0 : 255) ;
y=double(matc(x+1));

plot(x,y);
title(strcat('histogramme cumuler I1'))

subplot(4,2,6);

x = double(0 : 255) ;
y=double(matc2(x+1));

plot(x,y);
title(strcat('histogramme cumuler I2'))


tab=double(ones(1,256));
for i=1:256
  tab(i)=ytox(matc2,matc,i,p);
end

for j=1:m
    for k=1:n
        I(j,k)=tab(I(j,k)+1);
    end
end
figure
imshow(I);
figure
imhist(I);
title(strcat('histogramme du resultat'));