function Output_RGB= methode_interpolationboucle(Image_CFA)

  [nbl nbcol]=size(Image_CFA);
    
    figure
subplot(2, 3, 1);
imshow(Image_CFA);
bord=zeros(nbl+2,nbcol+2);
for rows=1:nbl
    for cols=1:nbcol
        
        bord(rows+1,cols+1) =Image_CFA(rows,cols);
    end
end

Image_CFA=bord;

    i=true;
    j=true;
    
    for l=2:nbl+1
        if(i==true)

            for c=2:nbcol+1  
                if(j==true)
                    R(l-1,c-1)= Image_CFA(l,c);
                    G(l-1,c-1)=(Image_CFA(l,c-1)+Image_CFA(l,c+1)+Image_CFA(l-1,c)+Image_CFA(l+1,c))/4;
                    B(l-1,c-1)=(Image_CFA(l-1,c-1)+Image_CFA(l-1,c+1)+Image_CFA(l+1,c-1)+Image_CFA(l+1,c+1))/4;
                    
                    j=false;
               

                else
                  
                    B(l-1,c-1)=(Image_CFA(l-1,c)+Image_CFA(l+1,c))/2;
                    G(l-1,c-1)= Image_CFA(l,c);
                    R(l-1,c-1)=(Image_CFA(l,c-1)+Image_CFA(l,c+1))/2;
                   
                    j=true;     

                end
            end
            i=false;

        else

            for c=2:nbcol+1 
                if(j==true)
                   
                    
                      R(l-1,c-1)=(Image_CFA(l-1,c)+Image_CFA(l+1,c))/2;
                      G(l-1,c-1)= Image_CFA(l,c);
                      B(l-1,c-1)=(Image_CFA(l,c-1)+Image_CFA(l,c+1))/2;
                    j=false;
                else
                
                     R(l-1,c-1)=(Image_CFA(l-1,c-1)+Image_CFA(l-1,c+1)+Image_CFA(l+1,c-1)+Image_CFA(l+1,c+1))/4;
                     G(l-1,c-1)=(Image_CFA(l,c-1)+Image_CFA(l,c+1)+Image_CFA(l-1,c)+Image_CFA(l+1,c))/4;
                     B(l-1,c-1)=Image_CFA(l,c);
                     j=true;
                end

            end
            i=true;

      end
      j=true;
    end
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



