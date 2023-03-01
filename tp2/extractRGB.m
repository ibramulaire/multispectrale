function [R,G,B]= extractRGB(Image_CFA)
  [nbl nbcol]=size(Image_CFA);
  
  extG=zeros(nbl,nbcol);
  extR=zeros(nbl,nbcol);
  extB=zeros(nbl,nbcol);
  for rows=1:nbl
      for cols=1:nbcol
          
         if(mod(rows,2)==0)
         
              if(mod(cols,2)==0)
              extG(rows,cols)=0;
              extR(rows,cols)=0;
              extB(rows,cols)=1;
              else
              extG(rows,cols)=1;
              extR(rows,cols)=0;
              extB(rows,cols)=0;
              
              end
         else
               if(mod(cols,2)==0)
                   extG(rows,cols)=1; 
                   extR(rows,cols)=0;
                   extB(rows,cols)=0;    
               else
                   extG(rows,cols)=0;  
                   extR(rows,cols)=1;
                   extB(rows,cols)=0;    
               end
         end
       
      end
  end
    R= immultiply(double(Image_CFA),extR);
    G= immultiply(double(Image_CFA),extG);
    B= immultiply(double(Image_CFA),extB);
  
end
