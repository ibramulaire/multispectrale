function Valeur = MSE(input_RGB,output_RGB)
  
  input=double(rgb2gray(input_RGB));
  output=double(rgb2gray(output_RGB));
  [nbl nbcol]=size(input);
  Valeur=0;
  
    for rows=1:nbl
        for cols=1:nbcol
          Valeur=Valeur+((input(rows,cols)-output(rows,cols))*(input(rows,cols)-output(rows,cols)));
            
        end
    end
   Valeur=(Valeur)/(nbl*nbcol);   
   
  end