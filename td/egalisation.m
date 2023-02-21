function Ieg  =egalisation(I)
[m, n, can] = size(I)  % m=nb lignes, n=nb colonnes, 
if(can > 1)
    I =double( rgb2gray(I));    % si l’image est en couleur, la transformer en NG
end

Max = (max(max(I)));
Min = (min(min(I)));
figure
subplot(3, 2, 1);

imshow(I);


title(strcat(['Image de base avec min=',num2str(Min),' et max=',num2str(Max)]));
subplot(3,2,3);
imhist(I);
title(strcat('Histogramme de base'));

matC=histcum(I)
Ieg=double(255*matC(I+1));
Ieg = uint8(Ieg);

subplot(3, 2, 2);
imshow(Ieg) 
Maxe = (max(max(Ieg)));
Mine = (min(min(Ieg)));
title(strcat(['Image égaliser avec min=',num2str(Mine),' et max=',num2str(Maxe)]));
subplot(3, 2, 4);
imhist(Ieg);
title(strcat('histogramme égaliser'));

subplot(3,2,5);

x = double(0 : 255) ;
y=uint8(double(255*matC(x+1)));

plot(x,y);
title(strcat('Look up table '));


matC=histcum(Ieg);
subplot(3,2,6);

x = double(0 : 255) ;
y=double(matC(x+1));

plot(x,y);
title(strcat('fonction de repartition'))

end
