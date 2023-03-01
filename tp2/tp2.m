pkg load image
%I=imread('images/Demosaic_4.bmp');
%I=imread('images/Demosaic_3.bmp');
%I=imread('images/Demosaic_2.bmp');
%I=imread('images/Demosaic_1.bmp');
I=imread('images/Demosaic5.tif');

bayr=bayer(I);
interboucle=methode_interpolationboucle(bayr);
interconv=methode_interpolationconv(bayr);
interconvteinte=methode_interpolationteinteconv(bayr);

intercontoure=methode_interpolationContoure(bayr);