function Ieti = etirement(I)


Max = (max(max(I)));
Min = (min(min(I)));
figure
subplot(3, 2, 1);
imshow(I);


title(strcat(['Image de base avec min=',num2str(Min),' et max=',num2str(Max)]));

subplot(3,2,3);
imhist(I);
title(strcat('Histogramme de base'));

I = double(I);
Max=double(Max);
Min=double(Min);

Ieti=255*double((I-Min)/(Max-Min));
Ieti = uint8(Ieti);
subplot(3, 2, 2);
imshow(Ieti);
Maxe = (max(max(Ieti)));
Mine = (min(min(Ieti)));
title(strcat(['Image de étiré avec min=',num2str(Mine),' et max=',num2str(Maxe)]));


subplot(3, 2, 4);
imhist(Ieti);

title(strcat('Histogramme étiré '));

subplot(3,2,5);
x = double(0 : 255) ;

a=255/(Max-Min);
b=-255*Min/(Max-Min);
y=uint8((255*double((x-Min)/(Max-Min))));
plot(x,y);
title(strcat(['LUT-a=',num2str(a),' b=',num2str(b)]) )
end
