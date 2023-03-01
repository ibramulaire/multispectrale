pkg load image
%I=imread('images/Demosaic_4.bmp');
%I=imread('images/Demosaic_3.bmp');
%I=imread('images/Demosaic_2.bmp');
%I=imread('images/Demosaic_1.bmp');
I=imread('images/Demosaic5.tif');



bayr=bayer(I);

interboucle=methode_interpolationboucle(bayr);
MSE(I,interboucle)
DELTAE(I,interboucle)

interconv=methode_interpolationconv(bayr);
MSE(I,interconv)
DELTAE(I,interconv)

interconvteinte=methode_interpolationteinteconv(bayr);
MSE(I,interconvteinte)
DELTAE(I,interconvteinte)

intercontoure=methode_interpolationContoure(bayr);
MSE(I,intercontoure)
DELTAE(I,intercontoure)