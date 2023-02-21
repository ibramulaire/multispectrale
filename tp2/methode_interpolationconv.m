function Output_RGB= methode_interpolationconv(Image_CFA)

masqueplus=[0 1/4 0; 1/4 0 1/4;0 1/4 0];
masquecroix=[1/4 0 1/4;0 0 0; 1/4 0 1/4];
 
G=imfilter(Image_CFA,masqueplus,'conv');


R1=imfilter(Image_CFA,masqueplus,'conv');
R2=imfilter(Image_CFA,masqueplus,'conv');
end

