function Output_RGB= methode_interpolationconv(Image_CFA)
  figure
subplot(2, 3, 1);
imshow(Image_CFA);
      
    MG=1/4*[0 1 0;1 4 1;0 1 0];
    MRB=1/4*[1 2 1; 2 4 2;1 2 1];
     
    [IR IG IB]=extractRGB(Image_CFA);

    R=imfilter(IR,MRB,'symmetric','same','conv');
    G=imfilter(IG,MG,'symmetric','same','conv');
    B=imfilter(IB,MRB,'symmetric','same','conv');
    
    R=uint8(R);
    G=uint8(G);
    B=uint8(B);
    Output_RGB(:,:,1)=R;
    Output_RGB(:,:,2)=G;
    Output_RGB(:,:,3)=B;
    
       subplot(2, 3, 2);
imshow(R);
subplot(2, 3, 3);
imshow(G);
subplot(2, 3, 4);
imshow(B);
   subplot(2, 3, 5);
imshow(Output_RGB); 
end

