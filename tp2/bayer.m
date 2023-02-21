function Image_CFA = bayer(input_RGB)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here




    R = double(input_RGB(:,:,1));
    G = double(input_RGB(:,:,2));
    B = double(input_RGB(:,:,3));
    [nbl nbcol]=size(R);

  

    
    figure
subplot(2, 3, 1);
imshow(input_RGB);
subplot(2, 3, 2);
imshow(R);
subplot(2, 3, 3);
imshow(G);
subplot(2, 3, 4);
imshow(B);
    i=true;
    j=true;
    
    for l=1:nbl
        if(i==true)

            for c=1:nbcol  
                if(j==true)
                    Image_CFA(l,c)= R(l,c);
                    j=false;

                else
                     Image_CFA(l,c)= G(l,c);
                     j=true;

                end
            end
            i=false;

        else

            for c=1:nbcol  
                if(j==true)
                    Image_CFA(l,c)= G(l,c);
                    j=false;
                else
                     Image_CFA(l,c)= B(l,c);
                     j=true;
                end

            end
            i=true;




        end
    end
    
   subplot(2, 3, 5);
imshow(Image_CFA); 
end

